uint64_t sub_10001748C()
{
  v1 = type metadata accessor for REMNotificationIdentifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for RDUserNotificationAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000175DC()
{
  v1 = [v0 operationTypeRawValue];
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 101)
      {
        return 3;
      }

      return 4;
    }

    return 2;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 1;
      }

      return 4;
    }

    return 0;
  }
}

uint64_t getEnumTagSinglePayload for RDSavedAlarmTriggers.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_100017700()
{
  v1 = 0xD000000000000020;
  if (*v0)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_10001803C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v66 = a2;
  v5 = v4;
  v67 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v5 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v24 = [objc_opt_self() localInternalAccountID];
    v65 = v23;
    v25 = v24;
    v26 = [v24 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v28 = v27;
    (*(v9 + 8))(v12, v8);
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v5 storeForAccountIdentifier:v29];

    v23 = v65;
    if (v37)
    {
      v38 = [v5 persistentStoreCoordinator];
      v39 = [v38 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_18;
      }

      v48 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v40; v48; i = v40)
      {
        v64 = a4;
        v49 = 0;
        v69 = v40 & 0xC000000000000001;
        v50 = v40 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v69)
          {
            v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v49 >= *(v50 + 16))
            {
              goto LABEL_17;
            }

            v51 = *(v40 + 8 * v49 + 32);
          }

          v52 = v51;
          v53 = (v49 + 1);
          if (__OFADD__(v49, 1))
          {
            break;
          }

          a4 = v48;
          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v40 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v49;
          if (v53 == v48)
          {
            a4 = v64;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        v48 = _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_19:
      i, v41, v42, v43, v44, v45, v46, v47;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v23 = v65;
      [v65 set__unsafe_doesNotWorkUniversally_affectedStores:isa];
    }
  }

  v55 = swift_allocObject();
  v55[2] = &v71;
  v56 = v67;
  v55[3] = v66;
  v55[4] = v56;
  v55[5] = v23;
  v55[6] = &v74;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_100412C00;
  *(v57 + 24) = v55;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v57;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0DE8;
  v58 = _Block_copy(aBlock);
  v59 = v23;

  [v59 performBlockAndWait:v58];
  _Block_release(v58);
  LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

  if (v58)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (v74)
  {
    swift_willThrow();
    swift_errorRetain();

    sub_10003B40C(v71, v72, v73);
  }

  v61 = v73;
  if (!v73)
  {
    goto LABEL_27;
  }

  v63 = v71;
  v62 = v72;
  sub_100029344(v71, v72);

  *a4 = v63;
  a4[1] = v62;
  a4[2] = v61;

  sub_10003B40C(v71, v72, v73);
}

id sub_1000185BC()
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100791320;
  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x80000001007F6050;
  *(v0 + 88) = &type metadata for String;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = 0xD000000000000023;
  *(v0 + 72) = 0x80000001007F2430;
  v1 = rem_currentRuntimeVersion();
  *(v0 + 120) = &type metadata for Int;
  *(v0 + 96) = v1;
  v2 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0, v4, v5, v6, v7, v8, v9, v10;
  v11 = [objc_opt_self() predicateWithFormat:v2 argumentArray:isa];

  return v11;
}

unint64_t sub_100018710(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v9 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000F5104(a5, a6);
      swift_dynamicCast();
      return v13;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    sub_1000F5104(a5, a6);
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(a4 + 32);
    v9 = v10 & ~v11;
    if ((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v12 = ~v11;
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v9 = (v9 + 1) & v12;
        if (((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_16;
    }

LABEL_10:

    __break(1u);
  }

  if ((v9 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v9)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v9 >> 6) + 56) >> v9) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }
}

uint64_t sub_10001895C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v28 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v31 = *(v11 - 8);
  v32 = v11;
  __chkstk_darwin(v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for REMAnalyticsEvent();
  v16 = *(v15 - 8);
  v18 = __chkstk_darwin(v15, v17);
  v20 = (&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v20[2] = 0;
  v20[3] = 0;
  (*(v16 + 104))(v20, enum case for REMAnalyticsEvent.storeControllerReadWrite(_:), v15, v18);
  if ((REMAnalyticsEvent.isUsed.getter() & 1) == 0)
  {
    return (*(v16 + 8))(v20, v15);
  }

  v27 = *&v5[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_queue];
  v21 = swift_allocObject();
  v23 = v28;
  v22 = v29;
  v21[2] = v5;
  v21[3] = v23;
  v21[4] = a2;
  aBlock[4] = v22;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = v30;
  v24 = _Block_copy(aBlock);
  v25 = v5;

  static DispatchQoS.unspecified.getter();
  v34 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v33 + 8))(v10, v7);
  (*(v31 + 8))(v14, v32);
  (*(v16 + 8))(v20, v15);
}

_TtC7remindd19RDXPCStorePerformer *sub_100018CD8(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v6 = a1;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:
    v6, v8, v9, v10, v11, v12, v13, v14;
    return &_swiftEmptyArrayStorage;
  }

  v15 = v7;
  v16 = a2(v7, 0);
  v17 = a3(&v16->clientIdentity[16], v15, v6);
  v6 = v18;
  v17, v19, v18, v20, v21, v22, v23, v24;
  result = v16;
  if (v6 != v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_100018D84(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t *a4)
{
  v7 = sub_100017188(a2, a3);
  v9 = v8;
  v10 = *a4;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  v13 = sub_100005F4C(v7, v9);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v4) = v14;
  if (v12[3] < v18)
  {
    sub_100019274(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_100005F4C(v7, v9);
    if ((v4 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_6:
    *(a1 + v10) = v12;
    if ((v4 & 1) == 0)
    {
      v4 = v13;
      sub_10001986C(v13, v7, v9, 0, v12);

      v13 = v4;
    }

    v20 = v12[7];
    v21 = *(v20 + 8 * v13);
    v17 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v17)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v30 = v13;
    sub_100377BB0();
    v13 = v30;
  }

  *(v20 + 8 * v13) = v22;
  swift_endAccess();
  v9, v23, v24, v25, v26, v27, v28, v29;
  sub_100018EFC();
}

void sub_100018EFC()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = v16 - v8;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v10, v11);
  v12 = OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_postEventWorkItem;
  if (!*&v0[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_postEventWorkItem])
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    aBlock[4] = sub_1006E3C5C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FCDF8;
    v16[1] = _Block_copy(aBlock);
    v16[3] = &_swiftEmptyArrayStorage;
    sub_10000AB38();
    v16[2] = v0;
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000AB90();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v14 = DispatchWorkItem.init(flags:block:)();

    *&v0[v12] = v14;

    static DispatchTime.now()();
    + infix(_:_:)();
    v15 = *(v2 + 8);
    v15(v5, v1);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v15(v9, v1);
  }
}

uint64_t sub_1000191C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019200(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Int sub_100019274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000F5104(&qword_1009431C8, &qword_1007A3BC8);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100019514(void *a1, uint64_t a2)
{
  type metadata accessor for REMAccountStorageCDIngestor();
  swift_initStackObject();
  if (qword_100936098 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100006654(v4, qword_100946390);
  __chkstk_darwin(v5, v6);
  sub_1000F5104(&qword_10094F630, qword_1007A3430);
  sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  sub_10000CB90(&qword_100941B18, &qword_10094F630, qword_1007A3430);
  v7 = Sequence.map<A>(skippingError:_:)();
  if (v2)
  {

    v8 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v8 = v7;
  }

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_16:

    v8, v14, v15, v16, v17, v18, v19, v20;
    return &_swiftEmptyArrayStorage;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_8:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      [objc_allocWithZone(type metadata accessor for REMAccount_Codable()) initWithStore:a2 storage:v12];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v9 != v11);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_10001986C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t storeEnumTagSinglePayload for RDSavedAlarmTriggers.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_100019990(void *a1)
{
  v55 = 0;
  v3 = [a1 remObjectIDWithError:&v55];
  if (v3)
  {
    v4 = v3;
    v5 = v55;
    v54 = [a1 type];
    v6 = [a1 name];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v11 = [a1 listIDsMergeableOrdering];
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      if (qword_100935E80 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100941670);
      v17 = v4;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138543362;
        *(v20 + 4) = v17;
        *v21 = v4;
        v22 = v17;
        sub_1000050A4(v21, &unk_100938E70, &unk_100797230);
      }

      v13 = 0;
      v15 = 0xC000000000000000;
    }

    if (v9)
    {
      v23 = v9;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v24 = objc_allocWithZone(REMAccountStorage);
    v25 = v4;
    v26 = String._bridgeToObjectiveC()();
    v23, v27, v28, v29, v30, v31, v32, v33;
    v1 = [v24 initWithObjectID:v25 type:v54 name:v26 nullableListIDsMergeableOrdering:0];

    isa = Data._bridgeToObjectiveC()().super.isa;
    [v1 setListIDsMergeableOrderingData:isa];

    [v1 setListIDsMergeableOrdering:0];
    v35 = [a1 externalIdentifier];
    [v1 setExternalIdentifier:v35];

    v36 = [a1 externalModificationTag];
    [v1 setExternalModificationTag:v36];

    v37 = [a1 daSyncToken];
    [v1 setDaSyncToken:v37];

    v38 = [a1 daPushKey];
    [v1 setDaPushKey:v38];

    v39 = [a1 daConstraintsDescriptionPath];
    [v1 setDaConstraintsDescriptionPath:v39];

    [v1 setDaAllowsCalendarAddDeleteModify:{objc_msgSend(a1, "daAllowsCalendarAddDeleteModify")}];
    [v1 setDaWasMigrated:{objc_msgSend(a1, "daWasMigrated")}];
    [v1 setDaSupportsSharedCalendars:{objc_msgSend(a1, "daSupportsSharedCalendars")}];
    [v1 setDebugSyncDisabled:{objc_msgSend(a1, "debugSyncDisabled")}];
    [v1 setInactive:{objc_msgSend(a1, "inactive")}];
    [v1 setDidChooseToMigrate:{objc_msgSend(a1, "didChooseToMigrate")}];
    [v1 setDidChooseToMigrateLocally:{objc_msgSend(a1, "didChooseToMigrateLocally")}];
    [v1 setDidFinishMigration:{objc_msgSend(a1, "didFinishMigration")}];
    [v1 setPersistenceCloudSchemaVersion:{objc_msgSend(a1, "persistenceCloudSchemaVersion")}];
    v40 = [a1 personID];
    [v1 setPersonID:v40];

    v41 = [a1 personIDSalt];
    if (v41)
    {
      v42 = v41;
      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v43, v45);
    }

    else
    {
      v46.super.isa = 0;
    }

    [v1 setPersonIDSalt:v46.super.isa];

    [v1 setResolutionTokenMap:0];
    v47 = [a1 resolutionTokenMapData];
    if (v47)
    {
      v48 = v47;
      v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v49, v51);
    }

    else
    {
      v52.super.isa = 0;
    }

    [v1 setResolutionTokenMapData:v52.super.isa];

    [v1 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
    [v1 setEffectiveMinimumSupportedVersion:{objc_msgSend(a1, "effectiveMinimumSupportedVersion")}];

    sub_10001BBA0(v13, v15);
  }

  else
  {
    v10 = v55;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

id sub_10001A06C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_100019990(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_10001A230(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A820(a1);
  v15 = v14;
  v16 = v2[2];
  isa = Notification._bridgeToObjectiveC()().super.isa;
  LODWORD(v16) = [v16 notificationContainsInternalChangesOnly:isa];

  if (v16)
  {
    v15, v18, v19, v20, v21, v22, v23, v24;
    if (qword_100936150 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100946FF0);
    v52 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v52, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v52, v26, "RDStoreControllerNotificationCenter: Store notification is ICCC or change tracking internal changes only. Skipping.", v27, 2u);
    }

    v28 = v52;
  }

  else
  {
    v51 = v9;
    if (qword_100936150 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100946FF0);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    v32 = os_log_type_enabled(v30, v31);
    v52 = v5;
    v50 = v10;
    if (v32)
    {
      v49 = v15;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      if (v2[4])
      {
        v35 = v2[3];
        v36 = v2[4];
      }

      else
      {
        v36 = 0xE300000000000000;
        v35 = 7104878;
      }

      v37 = sub_10000668C(v35, v36, aBlock);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "os_transaction INIT {name: com.apple.remindd.storeControllerNotificationCenter}, label: %s", v33, 0xCu);
      sub_10000607C(v34);

      v15 = v49;
    }

    else
    {
    }

    v45 = os_transaction_create();
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v46 = swift_allocObject();
    v46[2] = v15;
    v46[3] = v2;
    v46[4] = v45;
    aBlock[4] = sub_10001C880;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F1EF8;
    v47 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v53 = &_swiftEmptyArrayStorage;
    sub_10001BC00(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v47);
    swift_unknownObjectRelease();
    (v52[1].isa)(v8, v4);
    (*(v50 + 8))(v13, v51);
  }
}

uint64_t sub_10001A7D8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  swift_unknownObjectRelease();

  return _swift_deallocObject(v8, 40, 7);
}

void sub_10001A820(uint64_t a1)
{
  v82[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82[1] = v1;
  v82[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82[3] = v2;
  v3 = 0;
  v4 = _swiftEmptySetSingleton;
  v82[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82[5] = v5;
  v75 = _swiftEmptySetSingleton;
  while (2)
  {
    v6 = &v82[2 * v3];
    v8 = *v6;
    v7 = v6[1];

    sub_10001AE08(a1, v8, v7);
    v10 = v9;
    v7, v11, v12, v13, v14, v15, v16, v17;
    if ((v10 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
      sub_10000CDE4(&qword_1009472F0, &qword_100943230, NSManagedObjectID_ptr, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v10 = v82[6];
      v18 = v82[7];
      v19 = v82[8];
      v20 = v82[9];
      v21 = v82[10];
    }

    else
    {
      v20 = 0;
      v22 = -1 << *(v10 + 32);
      v18 = v10 + 56;
      v19 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v21 = v24 & *(v10 + 56);
    }

    v74 = v3 + 1;
    v25 = (v19 + 64) >> 6;
    v77 = v10;
    v78 = v25;
    v79 = v18;
    while (1)
    {
      v26 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 < 0)
      {
        v26 = v4;
      }

      v76 = v26;
      v27 = v4 + 56;
      v28 = v20;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          v10 = v77;
          goto LABEL_2;
        }

        sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
        swift_dynamicCast();
        v31 = v81;
        v20 = v28;
        v80 = v21;
        v10 = v77;
        if (!v81)
        {
          goto LABEL_2;
        }

LABEL_21:
        v32 = [v31 entity];
        v33 = v32;
        if ((v4 & 0xC000000000000001) != 0)
        {
          break;
        }

        sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
        v43 = NSObject._rawHashValue(seed:)(*(v4 + 40));
        v44 = -1 << *(v4 + 32);
        v45 = v43 & ~v44;
        if (((*(v27 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
LABEL_32:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v81 = v75;
          v50 = v33;
          sub_10001B588(v50, v45, isUniquelyReferenced_nonNull_native);

          v4 = v75;
          v10 = v77;
          v18 = v79;
          goto LABEL_33;
        }

        v46 = ~v44;
        while (1)
        {
          v47 = *(*(v4 + 48) + 8 * v45);
          v48 = static NSObject.== infix(_:_:)();

          if (v48)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          if (((*(v27 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v28 = v20;
        v21 = v80;
        v10 = v77;
LABEL_30:
        v25 = v78;
        v18 = v79;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }
      }

      v34 = v32;

      v35 = __CocoaSet.member(for:)();

      if (v35)
      {
        v4, v36, v37, v38, v39, v40, v41, v42;

        sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
        swift_dynamicCast();

        v28 = v20;
        v21 = v80;
        goto LABEL_30;
      }

      v51 = __CocoaSet.count.getter();
      if (__OFADD__(v51, 1))
      {
        goto LABEL_52;
      }

      v52 = sub_10037FC30(v76, v51 + 1);
      v81 = v52;
      v53 = *(v52 + 16);
      if (*(v52 + 24) <= v53)
      {
        sub_100381FF4(v53 + 1);
      }

      v54 = *(v52 + 40);
      v55 = v34;
      v56 = NSObject._rawHashValue(seed:)(v54);
      v57 = v52 + 56;
      v58 = -1 << *(v52 + 32);
      v59 = v56 & ~v58;
      v60 = v59 >> 6;
      if (((-1 << v59) & ~*(v52 + 56 + 8 * (v59 >> 6))) == 0)
      {
        v62 = 0;
        v63 = (63 - v58) >> 6;
        v18 = v79;
        while (++v60 != v63 || (v62 & 1) == 0)
        {
          v64 = v60 == v63;
          if (v60 == v63)
          {
            v60 = 0;
          }

          v62 |= v64;
          v65 = *(v57 + 8 * v60);
          if (v65 != -1)
          {
            v61 = __clz(__rbit64(~v65)) + (v60 << 6);
            goto LABEL_47;
          }
        }

        goto LABEL_51;
      }

      v61 = __clz(__rbit64((-1 << v59) & ~*(v52 + 56 + 8 * (v59 >> 6)))) | v59 & 0x7FFFFFFFFFFFFFC0;
      v18 = v79;
LABEL_47:
      *(v57 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
      *(*(v52 + 48) + 8 * v61) = v55;
      ++*(v52 + 16);

      v4, v66, v67, v68, v69, v70, v71, v72;
      v75 = v52;
      v4 = v52;
      v10 = v77;
LABEL_33:
      v25 = v78;
      v21 = v80;
    }

LABEL_13:
    v29 = v28;
    v30 = v21;
    v20 = v28;
    if (v21)
    {
LABEL_17:
      v80 = (v30 - 1) & v30;
      v31 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v30)))));
      if (v31)
      {
        goto LABEL_21;
      }

LABEL_2:
      sub_10001B860(v10);
      v3 = v74;
      if (v74 == 3)
      {
        swift_arrayDestroy();
        return;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v20 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v20 >= v25)
    {
      goto LABEL_2;
    }

    v30 = *(v18 + 8 * v20);
    ++v29;
    if (v30)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_10001AE08(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v5 = Notification.userInfo.getter();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;

  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v14 = sub_10001B0D8(v34), (v7 & 1) == 0))
  {
    v6, v7, v8, v9, v10, v11, v12, v13;
    sub_10001B2CC(v34);
LABEL_8:
    v35 = 0u;
    v36 = 0u;
    goto LABEL_9;
  }

  sub_100005EF0(*(v6 + 56) + 32 * v14, &v35);
  sub_10001B2CC(v34);
  v6, v15, v16, v17, v18, v19, v20, v21;
  if (*(&v36 + 1))
  {
    sub_100005EE0(&v35, v37);
    sub_100005EF0(v37, v34);
    sub_1000F5104(&qword_1009472F8, &qword_1007AA108);
    if (!swift_dynamicCast())
    {
      if (qword_100936150 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_100946FF0);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();
      a3, v25, v26, v27, v28, v29, v30, v31;
      if (os_log_type_enabled(v23, v24))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34[0] = v33;
        *v32 = 136446210;
        *(v32 + 4) = sub_10000668C(a2, a3, v34);
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to cast userInfo[%{public}s] to Set<NSManagedObjectID>", v32, 0xCu);
        sub_10000607C(v33);
      }

      if (&_swiftEmptyArrayStorage >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100393618(&_swiftEmptyArrayStorage);
        }
      }
    }

    sub_10000607C(v37);
    return;
  }

LABEL_9:
  sub_1000050A4(&v35, &qword_100939ED0, &qword_100791B10);
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100393618(&_swiftEmptyArrayStorage);
  }
}

unint64_t sub_10001B0D8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001B11C(a1, v4);
}

unint64_t sub_10001B11C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001B270(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001B2CC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

Swift::Int sub_10001B37C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000F5104(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

void sub_10001B588(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001B868(v6 + 1, &qword_100942FD0, &qword_1007A3A50);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10019B2EC();
      goto LABEL_12;
    }

    sub_10001B37C(v6 + 1, &qword_100942FD0, &qword_1007A3A50);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_10001B868(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000F5104(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_10001BBA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001BC00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10001BC4C(unint64_t a1, unint64_t a2, void (*a3)(uint64_t, id), uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v51 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v7 = *(v51 - 8);
  __chkstk_darwin(v51, v8);
  v10 = (v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11, v12);
  v48 = v44 - v13;
  v57 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
LABEL_3:
    v55 = a2 >> 62;
    if (a2 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v58 = &_swiftEmptyArrayStorage;
    sub_10001C83C(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
LABEL_78:

      __break(1u);
      return;
    }

    v17 = v16;
    v18 = v58;
    v50 = a1;
    if (!v16)
    {
      break;
    }

    v56 = a1 & 0xC000000000000001;
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = a2 & 0xFFFFFFFFFFFFFF8;
    v46 = a2;
    v47 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v20 = a2;
    }

    v44[1] = v20;
    v44[2] = v19;
    v54 = a2 & 0xC000000000000001;
    v45 = v7 + 32;
    v21 = 4;
    v44[0] = v17;
    a2 = v17;
    while (1)
    {
      v22 = v57 ? _CocoaArrayWrapper.endIndex.getter() : *(v49 + 16);
      v23 = v21 - 4;
      if (v21 - 4 == v22)
      {
        break;
      }

      if (v56)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v49 + 16))
        {
          goto LABEL_74;
        }

        v24 = *(a1 + 8 * v21);
      }

      a1 = v24;
      if (v55)
      {
        v26 = _CocoaArrayWrapper.endIndex.getter();
        v25 = v47;
      }

      else
      {
        v25 = v47;
        v26 = *(v47 + 16);
      }

      if (v23 == v26)
      {
        goto LABEL_78;
      }

      if (v54)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v25 + 16))
        {
          goto LABEL_70;
        }

        v27 = *(v46 + 8 * v21);
      }

      v28 = v27;
      v52(a1, v27);
      if (v4)
      {

        return;
      }

      v58 = v18;
      v30 = *v18->clientIdentity;
      v29 = *&v18->clientIdentity[8];
      if (v30 >= v29 >> 1)
      {
        sub_10001C83C((v29 > 1), v30 + 1, 1);
        v18 = v58;
      }

      *v18->clientIdentity = v30 + 1;
      (*(v7 + 32))(v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30, v10, v51);
      ++v21;
      --a2;
      a1 = v50;
      if (!a2)
      {
        a2 = v46;
        v31 = v47;
        v10 = v49;
        v17 = v44[0];
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  v10 = (a1 & 0xFFFFFFFFFFFFFF8);
  v56 = a1 & 0xC000000000000001;
  v31 = a2 & 0xFFFFFFFFFFFFFF8;
  v54 = a2 & 0xC000000000000001;
LABEL_39:
  if ((a1 & 0x8000000000000000) != 0)
  {
    v32 = a1;
  }

  else
  {
    v32 = v10;
  }

  v33 = v31;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v31 = a2;
  }

  v45 = v31;
  v46 = v32;
  v47 = v7 + 32;
  v34 = v17 + 4;
  v49 = v10;
  if (!v57)
  {
LABEL_45:
    v35 = v10[2];
    goto LABEL_47;
  }

  while (1)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
LABEL_47:
    v36 = v34 - 4;
    if (v34 - 4 == v35)
    {
      break;
    }

    if (v56)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= v10[2])
      {
        goto LABEL_72;
      }

      v37 = *(a1 + 8 * v34);
    }

    v10 = v37;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_71;
    }

    if (v55)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      v38 = v33;
      if (v36 == v39)
      {
LABEL_66:

        return;
      }
    }

    else
    {
      v38 = v33;
      if (v36 == *(v33 + 16))
      {
        goto LABEL_66;
      }
    }

    if (v54)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= *(v38 + 16))
      {
        goto LABEL_73;
      }

      v40 = *(a2 + 8 * v34);
    }

    v41 = v40;
    v52(v10, v40);
    if (v4)
    {

      return;
    }

    v58 = v18;
    v43 = *v18->clientIdentity;
    v42 = *&v18->clientIdentity[8];
    if (v43 >= v42 >> 1)
    {
      sub_10001C83C((v42 > 1), v43 + 1, 1);
      v18 = v58;
    }

    *v18->clientIdentity = v43 + 1;
    (*(v7 + 32))(v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v43, v48, v51);
    ++v34;
    v10 = v49;
    a1 = v50;
    if (!v57)
    {
      goto LABEL_45;
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10001C184(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *&a4->clientIdentity[8];
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

  v12 = *a4->clientIdentity;
  if (v11 <= v12)
  {
    v13 = *a4->clientIdentity;
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F5104(a5, a6);
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

  *v17->clientIdentity = v12;
  *&v17->clientIdentity[8] = 2 * ((result - v16) / v15);
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

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_10001C360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = (&v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [objc_opt_self() currentThread];
  v10 = [v9 qualityOfService];

  sub_10043B8AC(a1, v10);
  v12 = v11;
  LOBYTE(v13) = v10 + 1;
  v14 = &qword_100936000;
  if ((v10 + 1) > 0x22)
  {
    goto LABEL_10;
  }

  if (((1 << v13) & 0x40401) != 0)
  {
    v13 = *(a2 + 56);
    if (v13)
    {
LABEL_14:
      v41 = v13;
      v42 = sub_100023058(v12);
      v12, v43, v44, v45, v46, v47, v48, v49;
      sub_100023B4C(v42, 0, 0);

      v42, v50, v51, v52, v53, v54, v55, v56;
      goto LABEL_15;
    }

    __break(1u);
  }

  if (((1 << v13) & 0x404000000) == 0)
  {
LABEL_10:
    if (qword_100936150 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v73 = a2;
  v15 = *(a2 + 56);
  if (!v15)
  {
    __break(1u);
    goto LABEL_27;
  }

  v10 = v15;
  v72 = sub_100023058(v12);
  v12, v16, v17, v18, v19, v20, v21, v22;
  v23 = qword_1009394D0;
  v24 = *&v10[qword_1009394D0];
  *v8 = v24;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  a2 = *(v5 + 104);
  (a2)(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  (v14)(v8, v4);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_100024350();
  v26 = *&v10[v23];
  *v8 = v26;
  (a2)(v8, v12, v4);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (v14)(v8, v4);
  if ((v26 & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
LABEL_11:
    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_100946FF0);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134349056;
      *(v40 + 4) = v10;
    }

    v13 = *(a2 + 56);
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_27:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v28 = v72;

  sub_1003561D4(v29);
  swift_endAccess();
  v28, v30, v31, v32, v33, v34, v35, v36;
  sub_10043DF44();

  a2 = v73;
  v14 = &qword_100936000;
LABEL_15:
  if (v14[42] != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100006654(v57, qword_100946FF0);

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v74[0] = v61;
    *v60 = 136315138;
    if (*(a2 + 32))
    {
      v62 = *(a2 + 24);
      v63 = *(a2 + 32);
    }

    else
    {
      v63 = 0xE300000000000000;
      v62 = 7104878;
    }

    v64 = sub_10000668C(v62, v63, v74);
    v63, v65, v66, v67, v68, v69, v70, v71;
    *(v60 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v58, v59, "os_transaction RELEASE {name: com.apple.remindd.storeControllerNotificationCenter}, label: %s", v60, 0xCu);
    sub_10000607C(v61);
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10001C83C(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C184(a1, a2, a3, *v3, &qword_10093ED70, &qword_10079D4E8, &type metadata accessor for REMAccountsListDataView.Model.Account);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10001C88C(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ED28, &qword_10079D470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = &v10->clientIdentity[16];
  v14 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10001C998(void *a1@<X0>, void *a2@<X1>, void *a3@<X3>, _TtC7remindd19RDXPCStorePerformer *a4@<X4>, objc_class *a5@<X5>, uint64_t a6@<X8>)
{
  v346 = a5;
  v351 = a4;
  v345 = a2;
  v337 = a6;
  v8 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v9 = *(v8 - 8);
  v359 = v8;
  v360 = v9;
  __chkstk_darwin(v8, v10);
  v358 = (&v322 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v338 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v338, v12);
  v14 = &v322 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v15, v16);
  v18 = &v322 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v322 - v21;
  v23 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
  v344 = *(v23 - 8);
  __chkstk_darwin(v23, v24);
  v26 = &v322 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v357;
  sub_10001E540(a1, a3, v351);
  v354 = v27;
  if (v27)
  {
    return;
  }

  v342 = v26;
  v336 = v23;
  v331 = v15;
  v327 = v22;
  v328 = v18;
  v326 = v14;
  v341 = a1;
  v340 = a3;
  v332 = v29;
  v348 = v28;
  if (v28 >> 62)
  {
    goto LABEL_126;
  }

  v36 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v37 = v360;
  v38 = v336;
  v39 = v344;
  v40 = v342;
  v41 = v345;
  if (!v36)
  {
    v28, v29, v30, v31, v32, v33, v34, v35;
    goto LABEL_108;
  }

  v368 = &_swiftEmptyArrayStorage;
  sub_100030FA0(0, v36 & ~(v36 >> 63), 0);
  if (v36 < 0)
  {
    goto LABEL_128;
  }

  v42 = 0;
  v347 = v348 & 0xC000000000000001;
  v330 = v348 & 0xFFFFFFFFFFFFFF8;
  v329 = &v348->clientIdentity[16];
  v339 = (v39 + 104);
  v43 = v368;
  v355 = v37 + 32;
  v356 = (v37 + 104);
  v343 = v39 + 32;
  v335 = enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:);
  v324 = enum case for REMAccountsListDataView.Model.AccountChild.list(_:);
  v349 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
  v353 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
  v325 = v36;
  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_123;
    }

    if (v347)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v42 >= *(v330 + 16))
      {
        goto LABEL_125;
      }

      v45 = *&v329[8 * v42];
    }

    v46 = *(v45 + 16);
    v352 = v44;
    if ((v46 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    v120 = (v46 & 0x7FFFFFFFFFFFFFFFLL);

    *v40 = v120;
    (*v339)(v40, v335, v38);
LABEL_102:
    v368 = v43;
    v253 = *v43->clientIdentity;
    v252 = *&v43->clientIdentity[8];
    if (v253 >= v252 >> 1)
    {
      sub_100030FA0((v252 > 1), v253 + 1, 1);
      v43 = v368;
    }

    *v43->clientIdentity = v253 + 1;
    (*(v39 + 32))(v43 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v253, v40, v38);
    v42 = v352;
    if (v352 == v36)
    {
      v348, v254, v255, v256, v257, v258, v259, v260;
LABEL_108:
      v271 = v41;
      REMAccountsListDataView.Model.Account.init(account:children:)();

      return;
    }
  }

  v47 = [v46 isGroup];
  v46 = *(v45 + 16);
  if (!v47)
  {
    if ((v46 & 0x8000000000000000) == 0)
    {
      v112 = v46;
      if ([v112 isGroup])
      {
        v348, v113, v114, v115, v116, v117, v118, v119;
        v279 = objc_opt_self();
        v280 = String._bridgeToObjectiveC()();
        v281 = [v279 internalErrorWithDebugDescription:v280];

        v354 = v281;
        swift_willThrow();

        return;
      }

      *v40 = v112;
      (*v339)(v40, v324, v38);
      goto LABEL_102;
    }

    goto LABEL_38;
  }

  v334 = v45;
  v333 = v43;
  v48 = [v46 & 0x7FFFFFFFFFFFFFFFLL remObjectID];
  v49 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v341, "type")}];
  v50 = [v49 supportsCustomSmartLists];

  if (v50)
  {
    v51 = v327;
    *v327 = v48;
    *(v51 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    v52 = qword_100936528;
    v53 = v48;
    v54 = v354;
    v55 = v346;
    if (v52 != -1)
    {
      swift_once();
    }

    v56 = qword_100975238;
    v57 = sub_10001F6F4();
    v58 = sub_100405438(0, v56, v55, v57);

    if (qword_100936520 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [(RDXPCStorePerformer *)v58 setSortDescriptors:isa];

    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v60 = NSManagedObjectContext.fetch<A>(_:)();
    if (v54)
    {
      v354 = v54;

      v348, v282, v283, v284, v285, v286, v287, v288;
      v289 = v51;
      goto LABEL_114;
    }

    v363 = v60;
    v61 = v60;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300, &protocol conformance descriptor for [A]);
    v62 = Sequence.elements<A>(ofType:)();

    sub_100025434(v51, _s10PredicatesOMa_1);
    v61, v63, v64, v65, v66, v67, v68, v69;
    v70 = sub_1000271D0(v62, v351);
    v62, v71, v72, v73, v74, v75, v76, v77;
    v78 = v326;
    *v326 = v53;
    *(v78 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    v79 = v53;
    v80 = sub_100717C9C(v78, v340, v346);
    sub_100025434(v78, _s10PredicatesOMa_3);
    v357 = sub_1000303FC(v80, v351);
    v354 = 0;
    v81 = 0;
    v323 = v79;
    v80, v82, v83, v84, v85, v86, v87, v88;
    if (v70 >> 62)
    {
      v96 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v96 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v97 = v341;
    if (v96)
    {
      v367 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v96 < 0)
      {
        goto LABEL_130;
      }

      v98 = 0;
      v350 = (v70 & 0xFFFFFFFFFFFFFF8);
      do
      {
        v107 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_118;
        }

        if ((v70 & 0xC000000000000001) != 0)
        {
          v108 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v98 >= *v350->clientIdentity)
          {
            goto LABEL_122;
          }

          v108 = *&v70->clientIdentity[8 * v98 + 16];
        }

        v109 = v108;
        _s19PolymorphicListItemCMa();
        v110 = swift_allocObject();
        v364 = type metadata accessor for REMList_Codable();
        v365 = sub_100030E90(&qword_100948C18, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
        v366 = sub_100030E90(&qword_100948C20, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
        v363 = v109;
        sub_100030E2C(&v363, &v362);
        v111 = v109;
        sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
        if (swift_dynamicCast())
        {

          sub_10000607C(&v363);
          v99 = v361;
        }

        else
        {
          type metadata accessor for REMSmartList_Codable();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_132;
          }

          sub_10000607C(&v363);
          v99 = v361 | 0x8000000000000000;
        }

        *(v110 + 16) = v99;
        sub_10000607C(&v362);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v98;
      }

      while (v107 != v96);
      v70, v100, v101, v102, v103, v104, v105, v106;
      v179 = v367;
      v81 = v354;
      v97 = v341;
    }

    else
    {
      v70, v89, v90, v91, v92, v93, v94, v95;
      v179 = &_swiftEmptyArrayStorage;
    }

    v180 = v357;
    if (v357 >> 62)
    {
      v205 = v357;
      v181 = _CocoaArrayWrapper.endIndex.getter();
      v180 = v205;
      if (!v181)
      {
        goto LABEL_78;
      }

LABEL_61:
      v350 = v179;
      v182 = v180;
      v367 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v181 < 0)
      {
        goto LABEL_131;
      }

      v183 = 0;
      v184 = v182;
      do
      {
        v192 = v183 + 1;
        if (__OFADD__(v183, 1))
        {
          goto LABEL_119;
        }

        if ((v182 & 0xC000000000000001) != 0)
        {
          v193 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v183 >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_124;
          }

          v193 = *(v184 + 8 * v183 + 32);
        }

        v194 = v193;
        _s19PolymorphicListItemCMa();
        v195 = swift_allocObject();
        v364 = type metadata accessor for REMSmartList_Codable();
        v365 = sub_100030E90(&qword_100948C30, &type metadata accessor for REMSmartList_Codable, &protocol conformance descriptor for REMSmartList_Codable);
        v366 = sub_100030E90(&qword_100948C38, &type metadata accessor for REMSmartList_Codable, &protocol conformance descriptor for REMSmartList_Codable);
        v363 = v194;
        sub_100030E2C(&v363, &v362);
        v196 = v194;
        sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
        type metadata accessor for REMList_Codable();
        if (swift_dynamicCast())
        {

          sub_10000607C(&v363);
          v185 = v361;
        }

        else
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_132;
          }

          sub_10000607C(&v363);
          v185 = v361 | 0x8000000000000000;
        }

        *(v195 + 16) = v185;
        sub_10000607C(&v362);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v183;
        v184 = v357;
      }

      while (v192 != v181);
      v357, v357, v186, v187, v188, v189, v190, v191;
      v197 = v367;
      v81 = v354;
      v97 = v341;
      v179 = v350;
    }

    else
    {
      v181 = *((v357 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v181)
      {
        goto LABEL_61;
      }

LABEL_78:
      v180, v172, v173, v174, v175, v176, v177, v178;
      v197 = &_swiftEmptyArrayStorage;
    }

    v363 = v179;
    sub_1000122B8(v197);
    v206 = v363;
    v363 = v332;
    v207 = v332;
    v208 = [v97 remObjectID];
    v209 = sub_10049A5C4(v206, v208, v340, &v363);
    v140 = v81;
    if (v81)
    {
      v354 = v81;

      v206, v304, v305, v306, v307, v308, v309, v310;

      v348, v311, v312, v313, v314, v315, v316, v317;
      v318 = v363;

      return;
    }

    v171 = v209;

    v206, v210, v211, v212, v213, v214, v215, v216;
LABEL_81:
    if (!(v171 >> 62))
    {
      v217 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v217)
      {
        goto LABEL_83;
      }

      goto LABEL_99;
    }

    if (!_CocoaArrayWrapper.endIndex.getter() || (v217 = _CocoaArrayWrapper.endIndex.getter()) == 0)
    {
LABEL_99:
      v171, v164, v165, v166, v167, v168, v169, v170;
      v219 = &_swiftEmptyArrayStorage;
LABEL_100:
      sub_1004A05A0(v342);
      v354 = v140;
      if (v140)
      {

        v219, v272, v273, v274, v275, v276, v277, v278;

        v348, v297, v298, v299, v300, v301, v302, v303;
        return;
      }

      v219, v245, v246, v247, v248, v249, v250, v251;

      v43 = v333;
      v41 = v345;
      v38 = v336;
      v39 = v344;
      v40 = v342;
      v36 = v325;
      goto LABEL_102;
    }

LABEL_83:
    v363 = &_swiftEmptyArrayStorage;
    sub_100253C88(0, v217 & ~(v217 >> 63), 0);
    if ((v217 & 0x8000000000000000) == 0)
    {
      v354 = v140;
      v218 = 0;
      v219 = v363;
      v357 = v171 & 0xC000000000000001;
      v350 = (v171 & 0xFFFFFFFFFFFFFF8);
      v220 = v171;
      while (1)
      {
        v221 = v218 + 1;
        if (__OFADD__(v218, 1))
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          v36 = _CocoaArrayWrapper.endIndex.getter();
          v28 = v348;
          goto LABEL_4;
        }

        if (v357)
        {
          v222 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 16);
          if ((v222 & 0x8000000000000000) != 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (v218 >= *v350->clientIdentity)
          {
            goto LABEL_120;
          }

          v232 = *(v171 + 8 * v218 + 32);

          v222 = *(v232 + 16);
          if ((v222 & 0x8000000000000000) != 0)
          {
LABEL_92:
            v223 = (v222 & 0x7FFFFFFFFFFFFFFFLL);
            v231 = &v369 + 4;
            goto LABEL_93;
          }
        }

        v223 = v222;
        if ([v223 isGroup])
        {
          v171, v224, v225, v226, v227, v228, v229, v230;
          v348, v261, v262, v263, v264, v265, v266, v267;
          v268 = objc_opt_self();
          v269 = String._bridgeToObjectiveC()();
          v270 = [v268 internalErrorWithDebugDescription:v269];

          v354 = v270;
          swift_willThrow();

          return;
        }

        v231 = &v370 + 4;
LABEL_93:
        v233 = *(v231 - 64);

        v234 = v358;
        *v358 = v223;
        v235 = v359;
        (*v356)(v234, v233, v359);
        v363 = v219;
        v237 = *v219->clientIdentity;
        v236 = *&v219->clientIdentity[8];
        if (v237 >= v236 >> 1)
        {
          sub_100253C88((v236 > 1), v237 + 1, 1);
          v235 = v359;
          v219 = v363;
        }

        *v219->clientIdentity = v237 + 1;
        (*(v360 + 32))(v219 + ((*(v360 + 80) + 32) & ~*(v360 + 80)) + *(v360 + 72) * v237, v234, v235);
        ++v218;
        v171 = v220;
        if (v221 == v217)
        {
          v220, v238, v239, v240, v241, v242, v243, v244;
          v140 = v354;
          goto LABEL_100;
        }
      }
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    if (qword_100936260 != -1)
    {
      swift_once();
    }

    v319 = type metadata accessor for Logger();
    sub_100006654(v319, qword_100948A78);
    v320 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v321 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown or unsupported REM object type for REMAccountsListDataView.ListItem", 75, 2, v320, v321);
    __break(1u);
    return;
  }

  v121 = v328;
  *v328 = v48;
  *(v121 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  v122 = v48;
  v123 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v124 = [objc_allocWithZone(NSFetchRequest) init];
  v125 = [swift_getObjCClassFromMetadata() entity];
  [v124 setEntity:v125];

  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v126 = Array._bridgeToObjectiveC()().super.isa;
  [v124 setAffectedStores:v126];

  [v124 setPredicate:v123];
  v127 = v354;
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v128 = Array._bridgeToObjectiveC()().super.isa;
  [v124 setSortDescriptors:v128];

  v129 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v127)
  {
    v350 = v122;
    v363 = v129;
    v130 = v121;
    v131 = v129;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300, &protocol conformance descriptor for [A]);
    v132 = Sequence.elements<A>(ofType:)();

    sub_100025434(v130, _s10PredicatesOMa_1);
    v131, v133, v134, v135, v136, v137, v138, v139;
    v140 = 0;
    v141 = sub_1000271D0(v132, v351);
    v132, v142, v143, v144, v145, v146, v147, v148;
    if (v141 >> 62)
    {
      v149 = _CocoaArrayWrapper.endIndex.getter();
      if (v149)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v149 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v149)
      {
LABEL_44:
        v354 = 0;
        v367 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v149 < 0)
        {
          goto LABEL_129;
        }

        v150 = 0;
        v357 = v141 & 0xFFFFFFFFFFFFFF8;
        do
        {
          v152 = v150 + 1;
          if (__OFADD__(v150, 1))
          {
            goto LABEL_117;
          }

          if ((v141 & 0xC000000000000001) != 0)
          {
            v153 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v150 >= *(v357 + 16))
            {
              goto LABEL_121;
            }

            v153 = *&v141->clientIdentity[8 * v150 + 16];
          }

          v154 = v153;
          _s19PolymorphicListItemCMa();
          v155 = swift_allocObject();
          v364 = type metadata accessor for REMList_Codable();
          v365 = sub_100030E90(&qword_100948C18, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
          v366 = sub_100030E90(&qword_100948C20, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
          v363 = v154;
          sub_100030E2C(&v363, &v362);
          v156 = v154;
          sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
          if (swift_dynamicCast())
          {

            sub_10000607C(&v363);
            v151 = v361;
          }

          else
          {
            type metadata accessor for REMSmartList_Codable();
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_132;
            }

            sub_10000607C(&v363);
            v151 = v361 | 0x8000000000000000;
          }

          *(v155 + 16) = v151;
          sub_10000607C(&v362);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v150;
        }

        while (v152 != v149);

        v141, v157, v158, v159, v160, v161, v162, v163;
        v171 = v367;
        v140 = v354;
        goto LABEL_81;
      }
    }

    v141, v198, v199, v200, v201, v202, v203, v204;
    v171 = &_swiftEmptyArrayStorage;
    goto LABEL_81;
  }

  v354 = v127;

  v348, v290, v291, v292, v293, v294, v295, v296;
  v289 = v121;
LABEL_114:
  sub_100025434(v289, _s10PredicatesOMa_1);
}

_TtC7remindd19RDXPCStorePerformer *sub_10001E288(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_10001C88C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _s10PredicatesOMa_3(uint64_t a1)
{
  result = qword_100950BB0;
  if (!qword_100950BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001E314(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000060C8(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000060C8(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

void sub_10001E540(void *a1, unint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v4 = v3;
  i = a1;
  v8 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(a1, "type")}];
  v9 = [v8 supportsCustomSmartLists];

  v10 = sub_10001EF58(a2);
  if (v9)
  {
    if (v3)
    {
      return;
    }

    v11 = v10;
    v9 = sub_1000271D0(v10, a3);
    v11, v12, v13, v14, v15, v16, v17, v18;
    sub_10002D468(i, a2, 0);
    v42 = v19;
    v4 = sub_1000303FC(v19, a3);
    v42, v43, v44, v45, v46, v47, v48, v49;
    if (v9 >> 62)
    {
      goto LABEL_44;
    }

    v57 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v115 = v4;
    if (v57)
    {
      goto LABEL_24;
    }

LABEL_45:
    v9, v50, v51, v52, v53, v54, v55, v56;
    v80 = &_swiftEmptyArrayStorage;
LABEL_46:
    if (v4 >> 62)
    {
      goto LABEL_63;
    }

    v57 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
      while (1)
      {
        v111 = v80;
        v122 = &_swiftEmptyArrayStorage;
        v80 = &v122;
        v58 = specialized ContiguousArray.reserveCapacity(_:)();
        if ((v57 & 0x8000000000000000) != 0)
        {
          break;
        }

        v81 = 0;
        v113 = v57;
        v114 = v4 & 0xC000000000000001;
        v112 = v4 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v90 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            break;
          }

          if (v114)
          {
            v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v81 >= *(v112 + 16))
            {
              goto LABEL_62;
            }

            v91 = *(v4 + 8 * v81 + 32);
          }

          v92 = v91;
          _s19PolymorphicListItemCMa();
          v93 = swift_allocObject();
          v119 = type metadata accessor for REMSmartList_Codable();
          v120 = sub_100030E90(&qword_100948C30, &type metadata accessor for REMSmartList_Codable, &protocol conformance descriptor for REMSmartList_Codable);
          v121 = sub_100030E90(&qword_100948C38, &type metadata accessor for REMSmartList_Codable, &protocol conformance descriptor for REMSmartList_Codable);
          v118[0] = v92;
          sub_100030E2C(v118, v117);
          v94 = v92;
          sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
          type metadata accessor for REMList_Codable();
          if (swift_dynamicCast())
          {

            sub_10000607C(v118);
            v82 = v116;
          }

          else
          {
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_76;
            }

            sub_10000607C(v118);
            v82 = v116 | 0x8000000000000000;
          }

          *(v93 + 16) = v82;
          v4 = v115;
          sub_10000607C(v117);
          v80 = &v122;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v81;
          if (v90 == v113)
          {
            v115, v83, v84, v85, v86, v87, v88, v89;
            v95 = v122;
            v80 = v111;
            goto LABEL_65;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v57 = _CocoaArrayWrapper.endIndex.getter();
        if (!v57)
        {
          goto LABEL_64;
        }
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_64:
    v4, v73, v74, v75, v76, v77, v78, v79;
    v95 = &_swiftEmptyArrayStorage;
LABEL_65:
    v118[0] = v80;
    sub_1000122B8(v95);
    v57 = v118[0];
    v58 = [i remObjectID];
    if (v58)
    {
      if (!(v57 >> 62))
      {
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
        {
LABEL_74:

          return;
        }

        goto LABEL_68;
      }

LABEL_73:
      v106 = v58;
      v107 = _CocoaArrayWrapper.endIndex.getter();
      v58 = v106;
      if (v107 <= 1)
      {
        goto LABEL_74;
      }

LABEL_68:
      v96 = v58;
      v97 = sub_100012370(v96, a2);
      if (v97)
      {
        _s19PolymorphicListItemCMa();
        v98 = v97;
        REMOrderedIdentifierMap.reorder<A>(objects:)();
        v57, v99, v100, v101, v102, v103, v104, v105;
      }

      else
      {
      }
    }
  }

  else if (!v3)
  {
    v20 = v10;
    a2 = sub_1000271D0(v10, a3);
    v20, v21, v22, v23, v24, v25, v26, v27;
    if (a2 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v122 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((i & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_44:
        v57 = _CocoaArrayWrapper.endIndex.getter();
        v115 = v4;
        if (!v57)
        {
          goto LABEL_45;
        }

LABEL_24:
        v122 = &_swiftEmptyArrayStorage;
        v58 = specialized ContiguousArray.reserveCapacity(_:)();
        if ((v57 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_72;
        }

        v59 = 0;
        while (1)
        {
          v68 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            break;
          }

          if ((v9 & 0xC000000000000001) != 0)
          {
            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v59 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v69 = *(v9 + 8 * v59 + 32);
          }

          v70 = v69;
          _s19PolymorphicListItemCMa();
          v71 = swift_allocObject();
          v4 = type metadata accessor for REMList_Codable();
          v119 = v4;
          v120 = sub_100030E90(&qword_100948C18, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
          v121 = sub_100030E90(&qword_100948C20, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
          v118[0] = v70;
          sub_100030E2C(v118, v117);
          v72 = v70;
          sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
          if (swift_dynamicCast())
          {

            sub_10000607C(v118);
            v60 = v116;
          }

          else
          {
            type metadata accessor for REMSmartList_Codable();
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_76:
              if (qword_100936260 != -1)
              {
                swift_once();
              }

              v108 = type metadata accessor for Logger();
              sub_100006654(v108, qword_100948A78);
              v109 = sub_1001F67C8(&_swiftEmptyArrayStorage);
              v110 = sub_1001F67C8(&_swiftEmptyArrayStorage);
              sub_10054573C("unknown or unsupported REM object type for REMAccountsListDataView.ListItem", 75, 2, v109, v110);
              __break(1u);
              return;
            }

            sub_10000607C(v118);
            v60 = v116 | 0x8000000000000000;
          }

          *(v71 + 16) = v60;
          sub_10000607C(v117);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v59;
          if (v68 == v57)
          {
            v9, v61, v62, v63, v64, v65, v66, v67;
            v80 = v122;
            v4 = v115;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v35 = 0;
        while (1)
        {
          v37 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if ((a2 & 0xC000000000000001) != 0)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v35 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v38 = *(a2 + 8 * v35 + 32);
          }

          v39 = v38;
          _s19PolymorphicListItemCMa();
          v40 = swift_allocObject();
          v9 = type metadata accessor for REMList_Codable();
          v119 = v9;
          v120 = sub_100030E90(&qword_100948C18, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
          v121 = sub_100030E90(&qword_100948C20, &type metadata accessor for REMList_Codable, &protocol conformance descriptor for REMList_Codable);
          v118[0] = v39;
          sub_100030E2C(v118, v117);
          v41 = v39;
          sub_1000F5104(&qword_100948C28, &qword_1007ACC70);
          if (swift_dynamicCast())
          {

            sub_10000607C(v118);
            v36 = v116;
          }

          else
          {
            type metadata accessor for REMSmartList_Codable();
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_76;
            }

            sub_10000607C(v118);
            v36 = v116 | 0x8000000000000000;
          }

          *(v40 + 16) = v36;
          sub_10000607C(v117);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v4 = *v122->clientIdentity;
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v35;
          if (v37 == i)
          {
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_42:
    a2, v28, v29, v30, v31, v32, v33, v34;
  }
}

uint64_t _s10PredicatesOMa_1(uint64_t a1)
{
  result = qword_10094C470;
  if (!qword_10094C470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Class sub_10001EF58(uint64_t a1)
{
  v3 = v1;
  v94 = a1;
  v4 = _s10PredicatesOMa_1(0);
  *&v6 = __chkstk_darwin(v4, v5).n128_u64[0];
  v8 = (v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99[0] = 0;
  v9 = [v3 remObjectIDWithError:{v99, v6}];
  v10 = v99[0];
  if (!v9)
  {
    v48.super.isa = v99[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v48.super.isa;
  }

  *v8 = v9;
  swift_storeEnumTagMultiPayload();
  v11 = v10;
  v12 = sub_10001F6F4();
  sub_100025374(v8, _s10PredicatesOMa_1);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007953F0;
  *(v13 + 32) = v3;
  v99[0] = v13;
  v90[1] = v3;
  sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  sub_10000CB90(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0);
  sub_1000254F4();
  v14 = Sequence.compactMapToSet<A>(_:)();
  v91 = v2;
  sub_10002595C(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  v22 = sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v23 = [objc_allocWithZone(NSFetchRequest) init];
  v92 = v22;
  v24 = [swift_getObjCClassFromMetadata() entity];
  [v23 setEntity:v24];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v23 setAffectedStores:isa];

  v93 = v12;
  [v23 setPredicate:v12];
  v13, v26, v27, v28, v29, v30, v31, v32;

  if (qword_100936520 != -1)
  {
LABEL_30:
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v33 = Array._bridgeToObjectiveC()().super.isa;
  [v23 setSortDescriptors:v33];

  if (qword_100936528 != -1)
  {
    swift_once();
  }

  v34 = qword_100975238;
  if (qword_100975238 >> 62)
  {
    v87 = qword_100975238;
    v88 = _CocoaArrayWrapper.endIndex.getter();
    v34 = v87;
    v35 = v88;
  }

  else
  {
    v35 = *((qword_100975238 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = &_swiftEmptyArrayStorage;
  if (!v35)
  {
LABEL_20:
    v48.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v36, v49, v50, v51, v52, v53, v54, v55;
    [v23 setRelationshipKeyPathsForPrefetching:v48.super.isa];

    v56 = v91;
    v57 = NSManagedObjectContext.fetch<A>(_:)();
    v37 = v56;
    if (!v56)
    {
      v13 = v23;
      v99[0] = v57;
      v58 = v57;
      sub_1000F5104(&qword_10093F6F0, qword_10079A300);
      sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
      v36 = Sequence.elements<A>(ofType:)();
      v58, v59, v60, v61, v62, v63, v64, v65;
      if (qword_100936098 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }

    return v48.super.isa;
  }

  v37 = v34;
  v100 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, v35 & ~(v35 >> 63), 0);
  if (v35 < 0)
  {
    __break(1u);
LABEL_33:
    swift_once();
LABEL_24:
    v66 = type metadata accessor for Logger();
    v67 = sub_100006654(v66, qword_100946390);
    __chkstk_darwin(v67, v68);
    v99[0] = v36;
    __chkstk_darwin(v69, v70);
    v71 = Sequence.map<A>(skippingError:_:)();
    if (v37)
    {

      v36, v79, v80, v81, v82, v83, v84, v85;

      return &_swiftEmptyArrayStorage;
    }

    else
    {
      v48.super.isa = v71;
      v36, v72, v73, v74, v75, v76, v77, v78;
    }

    return v48.super.isa;
  }

  v90[0] = v23;
  v38 = 0;
  v36 = v100;
  v39 = v37;
  v96 = v37;
  v97 = v37 & 0xC000000000000001;
  v95 = v37 & 0xFFFFFFFFFFFFFF8;
  v23 = v35;
  while (1)
  {
    v13 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v97)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v38 >= *(v95 + 16))
      {
        goto LABEL_29;
      }

      v40 = *(v39 + 8 * v38 + 32);
    }

    v41 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v42)
    {
      break;
    }

    v43 = v41;
    v44 = v42;

    v100 = v36;
    v46 = *v36->clientIdentity;
    v45 = *&v36->clientIdentity[8];
    if (v46 >= v45 >> 1)
    {
      sub_100026EF4((v45 > 1), v46 + 1, 1);
      v36 = v100;
    }

    *v36->clientIdentity = v46 + 1;
    v47 = v36 + 16 * v46;
    *(v47 + 4) = v43;
    *(v47 + 5) = v44;
    ++v38;
    v39 = v96;
    if (v13 == v23)
    {
      v23 = v90[0];
      goto LABEL_20;
    }
  }

  v99[0] = 0;
  v99[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v89._object = 0x80000001007EC120;
  v89._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v89);
  v98 = v40;
  sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10001F6F4()
{
  v416 = type metadata accessor for REMSearchableListType();
  v418 = *(v416 - 8);
  __chkstk_darwin(v416, v1);
  v414 = &v373[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3, v4);
  v415 = &v373[-v5];
  v421 = type metadata accessor for REMStringMatchingStyle();
  v423 = *(v421 - 8);
  __chkstk_darwin(v421, v6);
  v417 = &v373[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8, v9);
  v419 = &v373[-v10];
  v426 = type metadata accessor for REMSearchCriterion();
  v425 = *(v426 - 8);
  __chkstk_darwin(v426, v11);
  v424 = &v373[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13, v14);
  v422 = &v373[-v15];
  __chkstk_darwin(v16, v17);
  v420 = &v373[-v18];
  __chkstk_darwin(v19, v20);
  v427 = &v373[-v21];
  __chkstk_darwin(v22, v23);
  v428 = &v373[-v24];
  v432 = type metadata accessor for UUID();
  v430 = *(v432 - 8);
  __chkstk_darwin(v432, v25);
  v27 = &v373[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v431 = *(v28 - 8);
  __chkstk_darwin(v28 - 8, v29);
  v31 = &v373[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32, v33);
  v35 = &v373[-v34];
  __chkstk_darwin(v36, v37);
  v39 = &v373[-v38];
  __chkstk_darwin(v40, v41);
  v43 = &v373[-v42];
  __chkstk_darwin(v44, v45);
  v429 = &v373[-v46];
  v47 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v47, v48);
  v50 = &v373[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v434 = &_swiftEmptyArrayStorage;
  sub_1000230E4(v0, v50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  LODWORD(v59) = 1;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  LODWORD(v63) = 1;
  LODWORD(v64) = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v140 = *v50;
      KeyPath = swift_getKeyPath();
      v142 = [v140 uuid];
      v143 = v429;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v430 + 56))(v143, 0, 1, v432);
      sub_1000239F0(KeyPath, v143);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v60 = 0;
      v61 = 0;
      v62 = 0;
      LODWORD(v59) = 0;
      LODWORD(v63) = 0;
      goto LABEL_207;
    case 2:
      v112 = *v50;
      v113 = swift_getKeyPath();
      v114 = [v112 uuid];
      v115 = v429;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v430 + 56))(v115, 0, 1, v432);
      sub_1000239F0(v113, v115);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v60 = 0;
      v62 = 0;
      LODWORD(v59) = 0;
      LODWORD(v63) = 0;
      v61 = 1;
      goto LABEL_207;
    case 3:
      v39 = *v50;
      v174 = v50[8];
      v175 = swift_getKeyPath();
      v176 = [v39 uuid];
      v177 = v429;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v430 + 56))(v177, 0, 1, v432);
      sub_1000239F0(v175, v177);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v174)
      {
        goto LABEL_75;
      }

      swift_getKeyPath();
      sub_100024EC8();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity < *&v434->clientIdentity[8] >> 1)
      {
        goto LABEL_74;
      }

      goto LABEL_251;
    case 4:
      v116 = *v50;
      v39 = swift_getKeyPath();
      if (v116 >> 62)
      {
        v124 = _CocoaArrayWrapper.endIndex.getter();
        if (v124)
        {
LABEL_44:
          v428 = v39;
          v433 = &_swiftEmptyArrayStorage;
          sub_100253218(0, v124 & ~(v124 >> 63), 0);
          if (v124 < 0)
          {
            __break(1u);
            goto LABEL_249;
          }

          v125 = 0;
          v126 = v433;
          v127 = (v430 + 56);
          do
          {
            if ((v116 & 0xC000000000000001) != 0)
            {
              v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v128 = *&v116->clientIdentity[8 * v125 + 16];
            }

            v129 = v128;
            v130 = [v128 uuid];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*v127)(v43, 0, 1, v432);
            v433 = v126;
            v132 = *v126->clientIdentity;
            v131 = *&v126->clientIdentity[8];
            if (v132 >= v131 >> 1)
            {
              sub_100253218((v131 > 1), v132 + 1, 1);
              v126 = v433;
            }

            ++v125;
            *v126->clientIdentity = v132 + 1;
            sub_100100FB4(v43, v126 + ((*(v431 + 80) + 32) & ~*(v431 + 80)) + *(v431 + 72) * v132);
          }

          while (v124 != v125);
          v116, v133, v134, v135, v136, v137, v138, v139;
          v39 = v428;
LABEL_203:
          sub_1003EDAA8(v39, v126);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

LABEL_205:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v60 = 0;
          v61 = 0;
          v62 = 0;
          LODWORD(v59) = 0;
          goto LABEL_206;
        }
      }

      else
      {
        v124 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v124)
        {
          goto LABEL_44;
        }
      }

      v116, v117, v118, v119, v120, v121, v122, v123;
      v126 = &_swiftEmptyArrayStorage;
      goto LABEL_203;
    case 5:
      v82 = *v50;
      sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_100791300;
      *(v83 + 56) = sub_1000F5104(&qword_100937028, &qword_100791C10);
      *(v83 + 64) = sub_10000CB48(&unk_10094F0D0, &qword_100937028, &qword_100791C10, &protocol conformance descriptor for [A]);
      *(v83 + 32) = v82;
      NSPredicate.init(format:_:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      goto LABEL_205;
    case 6:
      v84 = *v50;
      v85 = swift_getKeyPath();
      v86 = [v84 uuid];
      v87 = v429;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v430 + 56))(v87, 0, 1, v432);
      sub_1000239F0(v85, v87);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v88 = swift_getKeyPath();
      sub_1005509B8(v88, 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000F5104(&qword_10093C918, &unk_10079A3C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      v90 = swift_getKeyPath();
      v91 = sub_1003918A8(v90, 2);

      *(inited + 32) = v91;
      v92 = swift_getKeyPath();
      v93 = sub_1003918A8(v92, 1);

      *(inited + 40) = v93;
      sub_100025060(inited);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v60 = 0;
      v62 = 0;
      v61 = 1;
      goto LABEL_206;
    case 7:
      v169 = v430;
      v170 = v50;
      v171 = v432;
      (*(v430 + 32))(v27, v170, v432);
      v172 = swift_getKeyPath();
      v173 = v429;
      (*(v169 + 16))(v429, v27, v171);
      (*(v169 + 56))(v173, 0, 1, v171);
      sub_1000239F0(v172, v173);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v171 = v432;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (*(v169 + 8))(v27, v171);
      goto LABEL_189;
    case 8:
      v346 = *v50;
      v347 = swift_getKeyPath();
      v348 = [v346 uuid];
      v349 = v429;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v430 + 56))(v349, 0, 1, v432);
      sub_1000239F0(v347, v349);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v60 = 0;
      v61 = 0;
      LODWORD(v59) = 0;
      LODWORD(v63) = 0;
      LODWORD(v64) = 0;
      v62 = 1;
      goto LABEL_207;
    case 9:
      v98 = *v50;
      v99 = *(v50 + 1);
      v100 = swift_getKeyPath();
      v101 = [v98 uuid];
      v102 = v429;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v430 + 56))(v102, 0, 1, v432);
      sub_1000239F0(v100, v102);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v103 = swift_getKeyPath();
      v104 = sub_100270804(v99);
      v99, v105, v106, v107, v108, v109, v110, v111;
      sub_1003EDAE0(v103, v104);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v60 = 0;
      v61 = 0;
      v62 = 0;
      LODWORD(v64) = 0;
      LODWORD(v63) = 1;
      goto LABEL_207;
    case 10:
      v144 = *v50;
      v152 = swift_getKeyPath();
      if (!(v144 >> 62))
      {
        v153 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v153)
        {
          goto LABEL_58;
        }

LABEL_239:
        v144, v145, v146, v147, v148, v149, v150, v151;
        v155 = &_swiftEmptyArrayStorage;
        goto LABEL_240;
      }

      v153 = _CocoaArrayWrapper.endIndex.getter();
      if (!v153)
      {
        goto LABEL_239;
      }

LABEL_58:
      v428 = v152;
      v433 = &_swiftEmptyArrayStorage;
      sub_100253218(0, v153 & ~(v153 >> 63), 0);
      if (v153 < 0)
      {
LABEL_249:
        __break(1u);
        goto LABEL_250;
      }

      v154 = 0;
      v155 = v433;
      v156 = (v430 + 56);
      do
      {
        if ((v144 & 0xC000000000000001) != 0)
        {
          v157 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v157 = *&v144->clientIdentity[8 * v154 + 16];
        }

        v158 = v157;
        v159 = [v157 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*v156)(v39, 0, 1, v432);
        v433 = v155;
        v161 = *v155->clientIdentity;
        v160 = *&v155->clientIdentity[8];
        if (v161 >= v160 >> 1)
        {
          sub_100253218((v160 > 1), v161 + 1, 1);
          v155 = v433;
        }

        ++v154;
        *v155->clientIdentity = v161 + 1;
        sub_100100FB4(v39, v155 + ((*(v431 + 80) + 32) & ~*(v431 + 80)) + *(v431 + 72) * v161);
      }

      while (v153 != v154);
      v144, v162, v163, v164, v165, v166, v167, v168;
      v152 = v428;
LABEL_240:
      sub_1003EDAA8(v152, v155);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v60 = 0;
      v61 = 0;
      v62 = 0;
      LODWORD(v64) = 0;
      LODWORD(v59) = 1;
      LODWORD(v63) = 1;
LABEL_207:
      v359 = v62;
      v360 = v61;
      v361 = v60;
      sub_100023B44(0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_1000F5104(&qword_10093C918, &unk_10079A3C0);
      v362 = swift_initStackObject();
      *(v362 + 16) = xmmword_100791340;
      swift_getKeyPath();
      v363 = sub_100024EC8();

      *(v362 + 32) = v363;
      swift_getKeyPath();
      v364 = sub_100024EF8();

      *(v362 + 40) = v364;
      sub_100025060(v362);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (!v64)
      {
        if (v63)
        {
          goto LABEL_215;
        }

LABEL_225:
        if (!v59)
        {
          goto LABEL_218;
        }

        goto LABEL_226;
      }

LABEL_212:
      sub_1000F5104(&qword_10093C918, &unk_10079A3C0);
      v365 = swift_initStackObject();
      *(v365 + 16) = xmmword_100791340;
      swift_getKeyPath();
      v366 = sub_100024EF8();

      *(v365 + 32) = v366;
      swift_getKeyPath();
      v367 = sub_100024EF8();

      *(v365 + 40) = v367;
      sub_10000C2B0();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if ((v63 & 1) == 0)
      {
        goto LABEL_225;
      }

LABEL_215:
      swift_getKeyPath();
      sub_100024EF8();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if ((v59 & 1) == 0)
      {
LABEL_218:
        if (v359)
        {
          goto LABEL_219;
        }

LABEL_229:
        if (!v360)
        {
          goto LABEL_222;
        }

LABEL_230:
        swift_getKeyPath();
        sub_100024EF8();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if ((v361 & 1) == 0)
        {
          return sub_10000C2B0();
        }

        goto LABEL_233;
      }

LABEL_226:
      v368 = swift_getKeyPath();
      v369 = [objc_opt_self() localInternalAccountID];
      v370 = [v369 uuid];

      v371 = v429;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v430 + 56))(v371, 0, 1, v432);
      sub_100033A2C(v368, v371);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if ((v359 & 1) == 0)
      {
        goto LABEL_229;
      }

LABEL_219:
      swift_getKeyPath();
      sub_100024EC8();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v360)
      {
        goto LABEL_230;
      }

LABEL_222:
      if (!v361)
      {
        return sub_10000C2B0();
      }

LABEL_233:
      sub_100033C38();
LABEL_234:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return sub_10000C2B0();
    case 11:
      v188 = *v50;
      v39 = swift_getKeyPath();
      if (v188 >> 62)
      {
        v196 = _CocoaArrayWrapper.endIndex.getter();
        if (v196)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v196 = *((v188 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v196)
        {
LABEL_89:
          v428 = v39;
          v433 = &_swiftEmptyArrayStorage;
          sub_100253218(0, v196 & ~(v196 >> 63), 0);
          if (v196 < 0)
          {
LABEL_250:
            __break(1u);
LABEL_251:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_74:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_75:

            v60 = 0;
            v61 = 0;
            v62 = 0;
LABEL_206:
            LODWORD(v63) = 1;
            LODWORD(v64) = 1;
            goto LABEL_207;
          }

          v197 = 0;
          v198 = v433;
          v199 = (v430 + 56);
          do
          {
            if ((v188 & 0xC000000000000001) != 0)
            {
              v200 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v200 = *&v188->clientIdentity[8 * v197 + 16];
            }

            v201 = v200;
            v202 = [v200 uuid];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*v199)(v35, 0, 1, v432);
            v433 = v198;
            v204 = *v198->clientIdentity;
            v203 = *&v198->clientIdentity[8];
            if (v204 >= v203 >> 1)
            {
              sub_100253218((v203 > 1), v204 + 1, 1);
              v198 = v433;
            }

            ++v197;
            *v198->clientIdentity = v204 + 1;
            sub_100100FB4(v35, v198 + ((*(v431 + 80) + 32) & ~*(v431 + 80)) + *(v431 + 72) * v204);
          }

          while (v196 != v197);
          v188, v205, v206, v207, v208, v209, v210, v211;
          v39 = v428;
LABEL_245:
          sub_1003EDAA8(v39, v198);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v361 = 0;
          v360 = 0;
          v359 = 0;
          LODWORD(v59) = 1;
          LOBYTE(v63) = 1;
          goto LABEL_212;
        }
      }

      v188, v189, v190, v191, v192, v193, v194, v195;
      v198 = &_swiftEmptyArrayStorage;
      goto LABEL_245;
    case 12:
      v73 = *v50;
      v74 = *(v50 + 1);
      v75 = *(v50 + 2);
      if (v75)
      {
        v76 = swift_getKeyPath();
        v77 = v75;
        v78 = [v77 uuid];
        v79 = v429;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v430 + 56))(v79, 0, 1, v432);
        sub_1000239F0(v76, v79);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v80 = swift_getKeyPath();
      sub_1003918BC(v80, v73, v74);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_196;
    case 13:
      v178 = *v50;
      v179 = swift_getKeyPath();
      v180 = [v178 uuid];
      v181 = v429;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v430 + 56))(v181, 0, 1, v432);
      sub_1000239F0(v179, v181);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v182 = swift_getKeyPath();
      sub_100033F44(v182, 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v60 = 0;
      v61 = 0;
      v62 = 0;
      LODWORD(v59) = 0;
      LODWORD(v63) = 0;
      LODWORD(v64) = 0;
      goto LABEL_207;
    case 14:
      v68 = *v50;
      v69 = swift_getKeyPath();
      v70 = [v68 uuid];
      v71 = v429;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v430 + 56))(v71, 0, 1, v432);
      sub_1000239F0(v69, v71);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v72 = swift_getKeyPath();
      sub_1003EDACC(v72);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return sub_10000C2B0();
    case 15:
      v183 = *v50;
      v184 = swift_getKeyPath();
      v185 = [v183 uuid];
      v186 = v429;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v430 + 56))(v186, 0, 1, v432);
      sub_1000239F0(v184, v186);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v187 = swift_getKeyPath();
      sub_1003EDACC(v187);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_189;
    case 16:
      v212 = *v50;
      v59 = v426;
      v64 = v427;
      v412 = *(*v50 + 16);
      if (!v412)
      {
        goto LABEL_195;
      }

      v213 = 0;
      v379 = (v418 + 32);
      v378 = (v418 + 16);
      v377 = (v418 + 88);
      v380 = (v418 + 8);
      v400 = (v423 + 8);
      v399 = (v423 + 32);
      v398 = (v423 + 16);
      *(&v214 + 1) = 4;
      v406 = xmmword_100791340;
      *&v214 = 136315138;
      v403 = v214;
      v397 = (v423 + 88);
      v411 = enum case for REMSearchCriterion.itemTypes(_:);
      v408 = enum case for REMSearchCriterion.objectID(_:);
      v405 = enum case for REMSearchCriterion.accountID(_:);
      v404 = enum case for REMSearchCriterion.listID(_:);
      v401 = enum case for REMSearchCriterion.textualField(_:);
      v396 = enum case for REMSearchCriterion.displayName(_:);
      v394 = enum case for REMSearchCriterion.isCompleted(_:);
      v392 = enum case for REMSearchCriterion.completionDate(_:);
      v390 = enum case for REMSearchCriterion.hasLocation(_:);
      v389 = enum case for REMSearchCriterion.location(_:);
      v388 = enum case for REMSearchCriterion.dueDate(_:);
      v387 = enum case for REMSearchCriterion.hasDueDate(_:);
      v386 = enum case for REMSearchCriterion.modifiedDate(_:);
      v385 = enum case for REMSearchCriterion.creationDate(_:);
      v384 = enum case for REMSearchCriterion.isRecurrent(_:);
      v383 = enum case for REMSearchCriterion.isFlagged(_:);
      v382 = enum case for REMSearchCriterion.spotlightItemIdentifier(_:);
      v381 = enum case for REMSearchCriterion.daCalendarItemUniqueIdentifier(_:);
      v376 = enum case for REMSearchCriterion.listType(_:);
      v375 = enum case for REMSearchableListType.grocery(_:);
      v215 = v428;
      v374 = enum case for REMSearchableListType.none(_:);
      v63 = v425;
      v395 = enum case for REMStringMatchingStyle.exact(_:);
      v393 = enum case for REMStringMatchingStyle.prefix(_:);
      v391 = enum case for REMStringMatchingStyle.word(_:);
      v410 = v425 + 88;
      v407 = (v425 + 96);
      v413 = (v425 + 8);
      v216 = (v430 + 56);
      v418 = v425 + 16;
      v409 = v212;
      while (2)
      {
        if (v213 >= *(v212 + 16))
        {
          __break(1u);
          goto LABEL_198;
        }

        v218 = v212 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
        v219 = *(v63 + 72);
        v423 = v213;
        v220 = *(v63 + 16);
        v220(v215, v218 + v219 * v213, v59);
        v220(v64, v215, v59);
        v221 = (*(v63 + 88))(v64, v59);
        if (v221 == v411)
        {
          v217 = *v413;
          (*v413)(v215, v59);
          v217(v64, v59);
          goto LABEL_101;
        }

        if (v221 == v408)
        {
          (*v407)(v64, v59);
          v229 = *v64;
          if (*v64 >> 62)
          {
            v64 = _CocoaArrayWrapper.endIndex.getter();
            if (v64)
            {
LABEL_107:
              v433 = &_swiftEmptyArrayStorage;
              sub_100253218(0, v64 & ~(v64 >> 63), 0);
              if ((v64 & 0x8000000000000000) == 0)
              {
                v230 = 0;
                v231 = v433;
                do
                {
                  if ((v229 & 0xC000000000000001) != 0)
                  {
                    v232 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v232 = *&v229->clientIdentity[8 * v230 + 16];
                  }

                  v233 = v232;
                  v234 = [v232 uuid];
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  (*v216)(v31, 0, 1, v432);
                  v433 = v231;
                  v236 = *v231->clientIdentity;
                  v235 = *&v231->clientIdentity[8];
                  if (v236 >= v235 >> 1)
                  {
                    sub_100253218((v235 > 1), v236 + 1, 1);
                    v231 = v433;
                  }

                  ++v230;
                  *v231->clientIdentity = v236 + 1;
                  sub_100100FB4(v31, v231 + ((*(v431 + 80) + 32) & ~*(v431 + 80)) + *(v431 + 72) * v236);
                }

                while (v64 != v230);
                v229, v237, v238, v239, v240, v241, v242, v243;
                v59 = v426;
                goto LABEL_162;
              }

              __break(1u);
LABEL_200:
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_4:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_5:
              v67 = swift_getKeyPath();
              sub_1003EDACC(v67);
LABEL_192:

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*v434->clientIdentity < *&v434->clientIdentity[8] >> 1)
              {
LABEL_193:
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_194:
                v60 = 0;
                v62 = 0;
                v61 = 1;
                goto LABEL_207;
              }

LABEL_198:
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              goto LABEL_193;
            }
          }

          else
          {
            v64 = *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v64)
            {
              goto LABEL_107;
            }
          }

          v229, v222, v223, v224, v225, v226, v227, v228;
          v231 = &_swiftEmptyArrayStorage;
LABEL_162:
          sub_1000F5104(&unk_100938E80, &unk_1007959D0);
          v324 = swift_allocObject();
          *(v324 + 16) = v406;
          *(v324 + 56) = &type metadata for String;
          *(v324 + 32) = 0x696669746E656469;
          *(v324 + 40) = 0xEA00000000007265;
          *(v324 + 88) = sub_1000F5104(&qword_100946088, &unk_1007A7690);
          *(v324 + 64) = v231;
          v325 = String._bridgeToObjectiveC()();
          isa = Array._bridgeToObjectiveC()().super.isa;
          v324, v327, v328, v329, v330, v331, v332, v333;
          v334 = [objc_opt_self() predicateWithFormat:v325 argumentArray:isa];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v64 = v427;
          if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v215 = v428;
          (*v413)(v428, v59);
LABEL_165:
          v63 = v425;
          goto LABEL_101;
        }

        v244 = v424;
        if (v221 == v405)
        {
          (*v413)(v64, v59);
LABEL_118:
          if (qword_100936518 != -1)
          {
            swift_once();
          }

          v245 = type metadata accessor for Logger();
          sub_100006654(v245, qword_10094C3E8);
          v220(v244, v428, v59);
          v246 = Logger.logObject.getter();
          v247 = static os_log_type_t.fault.getter();
          if (!os_log_type_enabled(v246, v247))
          {

            v284 = *v413;
            (*v413)(v244, v59);
            v285 = v428;
            v284(v428, v59);
            v215 = v285;
            goto LABEL_101;
          }

          v248 = swift_slowAlloc();
          v402 = v248;
          v249 = swift_slowAlloc();
          v433 = v249;
          LODWORD(v248->super.isa) = v403;
          v220(v422, v244, v59);
          v250 = String.init<A>(describing:)();
          v252 = v251;
          v253 = *v413;
          (*v413)(v244, v426);
          v254 = sub_10000668C(v250, v252, &v433);
          v255 = v252;
          v59 = v426;
          v255, v256, v257, v258, v259, v260, v261, v262;
          v263 = v402;
          *(&v402->super.isa + 4) = v254;
          _os_log_impl(&_mh_execute_header, v246, v247, "Dropping unsupported criterion for searching REMCDList. {criterion: %s}", v263, 0xCu);
          sub_10000607C(v249);
          v64 = v427;

          v215 = v428;
          v253(v428, v59);
          goto LABEL_165;
        }

        if (v221 == v404)
        {
          (*v407)(v64, v59);

          v264 = *(sub_1000F5104(&qword_100946020, &unk_1007A73E8) + 48);
          v265 = type metadata accessor for REMSearchCriterion.Inclusion();
          (*(*(v265 - 8) + 8))(v64 + v264, v265);
        }

        else
        {
          if (v221 == v401)
          {
            (*v407)(v64, v59);
            v287 = *v64;
            v286 = *(v64 + 8);
            v288 = v64 + *(sub_1000F5104(&qword_100945098, qword_1007B11A0) + 48);
            v289 = v419;
            v290 = v421;
            (*v399)(v419, v288, v421);
            v291 = v417;
            (*v398)(v417, v289, v290);
            v292 = (*v397)(v291, v290);
            if (v292 != v395)
            {
              v63 = v425;
              if (v292 != v393 && v292 != v391)
              {
LABEL_252:
                _diagnoseUnexpectedEnumCase<A>(type:)();
                __break(1u);
                JUMPOUT(0x100022D90);
              }

              v314 = swift_getKeyPath();
              sub_1003EDB04(v314, v287, v286, 6);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v64 = v427;
              if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              (*v400)(v419, v421);
              v215 = v428;
              (*v413)(v428, v59);
LABEL_101:
              v213 = v423 + 1;
              v212 = v409;
              if (v423 + 1 == v412)
              {
LABEL_195:
                v212, v52, v53, v54, v55, v56, v57, v58;
LABEL_196:
                v60 = 0;
                v62 = 0;
                v61 = 1;
                LODWORD(v59) = 1;
                goto LABEL_206;
              }

              continue;
            }

            sub_1000F5104(&unk_100938E80, &unk_1007959D0);
            v293 = swift_allocObject();
            *(v293 + 16) = v406;
            *(v293 + 56) = &type metadata for String;
            *(v293 + 32) = 1701667182;
            *(v293 + 40) = 0xE400000000000000;
            *(v293 + 88) = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
            *(v293 + 64) = v287;
            *(v293 + 72) = v286;
            v294 = String._bridgeToObjectiveC()();
            v295 = Array._bridgeToObjectiveC()().super.isa;
            v293, v296, v297, v298, v299, v300, v301, v302;
            v303 = [objc_opt_self() predicateWithFormat:v294 argumentArray:v295];

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v63 = v425;
            if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (*v400)(v419, v421);
            v215 = v428;
            (*v413)(v428, v59);
LABEL_136:
            v64 = v427;
            goto LABEL_101;
          }

          if (v221 == v396)
          {
            (*v407)(v64, v59);
            *(v64 + 8), v306, v307, v308, v309, v310, v311, v312;
            v313 = sub_1000F5104(&qword_100945098, qword_1007B11A0);
            (*v400)(v64 + *(v313 + 48), v421);
            goto LABEL_118;
          }

          v266 = v420;
          if (v221 == v394)
          {
            goto LABEL_125;
          }

          if (v221 == v392)
          {
            goto LABEL_147;
          }

          if (v221 == v390)
          {
            goto LABEL_125;
          }

          if (v221 == v389)
          {
            (*v407)(v64, v59);
            *(v64 + 8), v316, v317, v318, v319, v320, v321, v322;
            v323 = sub_1000F5104(&qword_100945098, qword_1007B11A0);
            (*v400)(v64 + *(v323 + 48), v421);
            goto LABEL_125;
          }

          if (v221 == v388)
          {
            goto LABEL_147;
          }

          if (v221 == v387)
          {
            goto LABEL_125;
          }

          if (v221 == v386 || v221 == v385)
          {
LABEL_147:
            (*v407)(v64, v59);
            v315 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
            sub_1000050A4(v64 + *(v315 + 48), &unk_100938850, qword_100795AE0);
            sub_1000050A4(v64, &unk_100938850, qword_100795AE0);
            goto LABEL_125;
          }

          if (v221 == v384 || v221 == v383)
          {
            goto LABEL_125;
          }

          if (v221 != v382 && v221 != v381)
          {
            if (v221 != v376)
            {
              goto LABEL_252;
            }

            v335 = v427;
            (*v407)(v427, v426);
            v336 = v415;
            v337 = v335;
            v338 = v416;
            (*v379)(v415, v337, v416);
            v339 = v414;
            (*v378)(v414, v336, v338);
            v340 = (*v377)(v339, v338);
            if (v340 == v375)
            {
              v341 = swift_getKeyPath();
              sub_1003EDACC(v341);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            else
            {
              if (v340 != v374)
              {
                goto LABEL_252;
              }

              if (qword_100936518 != -1)
              {
                swift_once();
              }

              v342 = type metadata accessor for Logger();
              sub_100006654(v342, qword_10094C3E8);
              v343 = Logger.logObject.getter();
              v344 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v343, v344))
              {
                v345 = swift_slowAlloc();
                *v345 = 0;
                _os_log_impl(&_mh_execute_header, v343, v344, "Dropping unsupported .none list type criterion", v345, 2u);
              }
            }

            (*v380)(v415, v416);
            v215 = v428;
            v59 = v426;
            (*v413)(v428, v426);
LABEL_129:
            v63 = v425;
            goto LABEL_136;
          }

          v59 = v426;
          (*v413)(v427, v426);
          v63 = v425;
        }

        break;
      }

      v266 = v420;
LABEL_125:
      if (qword_100936518 != -1)
      {
        swift_once();
      }

      v267 = type metadata accessor for Logger();
      sub_100006654(v267, qword_10094C3E8);
      v220(v266, v428, v59);
      v268 = Logger.logObject.getter();
      v269 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v268, v269))
      {

        v304 = *v413;
        (*v413)(v266, v59);
        v305 = v428;
        v304(v428, v59);
        v64 = v427;
        v215 = v305;
        goto LABEL_101;
      }

      v270 = swift_slowAlloc();
      v402 = swift_slowAlloc();
      v433 = v402;
      *v270 = v403;
      v220(v422, v266, v59);
      v271 = String.init<A>(describing:)();
      v273 = v272;
      v274 = *v413;
      (*v413)(v266, v426);
      v275 = sub_10000668C(v271, v273, &v433);
      v276 = v273;
      v59 = v426;
      v276, v277, v278, v279, v280, v281, v282, v283;
      *(v270 + 4) = v275;
      _os_log_impl(&_mh_execute_header, v268, v269, "Dropping unsupported criterion for searching REMCDList. {criterion: %s}", v270, 0xCu);
      sub_10000607C(v402);

      v215 = v428;
      v274(v428, v59);
      goto LABEL_129;
    case 17:
    case 30:
      goto LABEL_207;
    case 18:
      v60 = 0;
      v61 = 0;
      v62 = 0;
      LODWORD(v59) = 0;
      goto LABEL_207;
    case 19:
      v62 = 0;
      v60 = 1;
      v61 = 1;
      goto LABEL_207;
    case 20:
    case 21:
    case 29:
    case 32:
    case 35:
      goto LABEL_194;
    case 22:
    case 27:
      goto LABEL_5;
    case 23:
    case 26:
      v65 = swift_getKeyPath();
      sub_1003918A8(v65, 2);
      goto LABEL_192;
    case 24:
    case 33:
      v358 = swift_getKeyPath();
      sub_1003F71F0(v358);
      goto LABEL_192;
    case 25:
      v350 = swift_getKeyPath();
      sub_100033F44(v350, 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v351 = swift_getKeyPath();
      sub_1003F71F0(v351);
      goto LABEL_192;
    case 28:
      sub_1000F5104(&qword_10093C918, &unk_10079A3C0);
      v352 = swift_initStackObject();
      *(v352 + 16) = xmmword_100791340;
      v353 = swift_getKeyPath();
      v354 = sub_1003918A8(v353, 0);

      *(v352 + 32) = v354;
      v355 = swift_getKeyPath();
      v356 = sub_1003918A8(v355, 1);

      *(v352 + 40) = v356;
      sub_100025060(v352);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v357 = swift_getKeyPath();
      sub_1003F71F0(v357);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_189:
      v60 = 0;
      v62 = 0;
      v61 = 1;
      LODWORD(v63) = 1;
      goto LABEL_207;
    case 31:
      sub_100023B44(0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v81 = swift_getKeyPath();
      sub_1003EDB18(v81);

      goto LABEL_234;
    case 34:
      v66 = swift_getKeyPath();
      sub_100033F44(v66, 0);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity < *&v434->clientIdentity[8] >> 1)
      {
        goto LABEL_4;
      }

      goto LABEL_200;
    default:
      v94 = *v50;
      v95 = swift_getKeyPath();
      v96 = [v94 uuid];
      v97 = v429;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v430 + 56))(v97, 0, 1, v432);
      sub_1000239F0(v95, v97);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v434->clientIdentity >= *&v434->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v60 = 0;
      v61 = 0;
      LODWORD(v59) = 0;
      LODWORD(v63) = 0;
      v62 = 1;
      goto LABEL_207;
  }
}

id sub_100022E30@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isGroup];
  *a2 = result;
  return result;
}

id sub_100022FE0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPinnedByCurrentUser];
  *a2 = result;
  return result;
}

uint64_t sub_100023058(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10002345C();
  result = Set.init(minimumCapacity:)();
  v6 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      sub_1000236C4(v5, *(v4 - 1), *v4);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_1000230E4(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesOMa_1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100023148(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 6u:
    case 8u:
    case 0xDu:
    case 0xEu:
    case 0xFu:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_11;
    case 3u:
      v12 = *a2;
      *a1 = *a2;
      a1[8] = a2[8];
      v13 = v12;
      goto LABEL_11;
    case 4u:
    case 5u:
    case 0xAu:
    case 0xBu:
    case 0x10u:
      *a1 = *a2;

      goto LABEL_11;
    case 7u:
      v14 = type metadata accessor for UUID();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      goto LABEL_11;
    case 9u:
      v9 = *a2;
      v10 = *(a2 + 1);
      *a1 = v9;
      *(a1 + 1) = v10;
      v11 = v9;

      goto LABEL_11;
    case 0xCu:
      v6 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v6;
      v7 = *(a2 + 2);
      *(a1 + 2) = v7;

      v8 = v7;
LABEL_11:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v15 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v15);
      break;
  }

  return result;
}

unint64_t sub_10002345C()
{
  result = qword_10093A9E0;
  if (!qword_10093A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A9E0);
  }

  return result;
}

id sub_1000234B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100791340;

  v12 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v13)
  {
    v14 = v12;
    v15 = v13;

    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    *(v11 + 88) = sub_1000F5104(a3, a4);
    v16 = sub_1000103CC((v11 + 64));
    sub_100010364(a2, v16, a3, a4);
    v17 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v11, v19, v20, v21, v22, v23, v24, v25;
    v26 = [objc_opt_self() predicateWithFormat:v17 argumentArray:isa];

    sub_1000050A4(a2, a3, a4);
    return v26;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v28._object = 0x80000001007EC120;
    v28._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v28);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000236C4(void *a1, void *a2, Swift::UInt a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(a3);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    while (1)
    {
      v11 = *(v6 + 48) + 16 * v9;
      v12 = *(v11 + 8);
      v13 = *v11;
      v14 = static NSObject.== infix(_:_:)();

      if ((v14 & 1) != 0 && v12 == a3)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v15 = *(v6 + 48) + 16 * v9;
    v17 = *v15;
    v16 = *(v15 + 8);
    *a1 = v17;
    a1[1] = v16;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v21 = a2;
    sub_100023844(v21, a3, v9, isUniquelyReferenced_nonNull_native);
    *v22 = v24;
    *a1 = v21;
    a1[1] = a3;
    return 1;
  }
}

void sub_100023844(uint64_t a1, Swift::UInt a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a4)
  {
    sub_100382008(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10019B300();
      goto LABEL_14;
    }

    sub_10038C9E0(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(a2);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    while (1)
    {
      v14 = *(v10 + 48) + 16 * a3;
      v15 = *(v14 + 8);
      v16 = *v14;
      v17 = static NSObject.== infix(_:_:)();

      if ((v17 & 1) != 0 && v15 == a2)
      {
        break;
      }

      a3 = (a3 + 1) & v13;
      if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_14:
  v18 = *v23;
  *(*v23 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = a1;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }
}

id sub_100023A14(char a1)
{
  if (a1)
  {
    return 0;
  }

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100791320;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x80000001007A7210;
  *(v2 + 88) = &type metadata for String;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = 0xD000000000000023;
  *(v2 + 72) = 0x80000001007F2430;
  v3 = rem_currentRuntimeVersion();
  *(v2 + 120) = &type metadata for Int;
  *(v2 + 96) = v3;
  v4 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2, v6, v7, v8, v9, v10, v11, v12;
  v13 = [objc_opt_self() predicateWithFormat:v4 argumentArray:isa];

  return v13;
}

uint64_t sub_100023B4C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v74 = a1;
  v75 = a2;
  v6 = type metadata accessor for DispatchTime();
  v72 = *(v6 - 8);
  v73 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v65 - v12;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v14, v15);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v4 + qword_1009394D0);
  v21->super.isa = v22;
  (*(v17 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v16, v19);
  v71 = v22;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v21, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_10;
  }

  if (*(v4 + qword_1009394F8) != 1)
  {
LABEL_7:
    v29 = *(v4 + qword_1009394D8);
    v30 = v74;
    result = v29(v74);
    if (v75)
    {
      return v75(1, v30);
    }

    return result;
  }

  sub_100024350();
  if (*(v4 + qword_100939500))
  {
    result = sub_10043CE78(v74, v75, a3, sub_1003561D4, &unk_1008F1F30, sub_100368310, sub_100442A08);
    v25 = qword_100939518;
    v26 = *(v4 + qword_100939518);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (!v27)
    {
LABEL_20:
      *(v4 + v25) = v28;
      return result;
    }

    __break(1u);
    goto LABEL_7;
  }

  v69 = qword_100939500;
  v23 = *(v4 + qword_1009394F0);
  v21 = *(v4 + qword_1009394F0 + 8);
  v31 = qword_100935AC8;

  if (v31 != -1)
  {
    goto LABEL_26;
  }

LABEL_10:
  v70 = a3;
  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_100939348);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v21, v35, v36, v37, v38, v39, v40, v41;
  if (os_log_type_enabled(v33, v34))
  {
    v42 = swift_slowAlloc();
    LODWORD(v68) = v34;
    v43 = v42;
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v43 = 136315138;
    v44 = 7104878;
    if (v21)
    {
      v44 = v23;
    }

    v66 = v44;
    if (v21)
    {
      v45 = v21;
    }

    else
    {
      v45 = 0xE300000000000000;
    }

    v46 = sub_10000668C(v66, v45, aBlock);
    v66 = v23;
    v47 = v46;
    v45, v48, v49, v50, v51, v52, v53, v54;
    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v33, v68, "os_transaction INIT {name: com.apple.remindd.rddebouncer}, label: %s", v43, 0xCu);
    sub_10000607C(v67);

    v55 = v66;
  }

  else
  {

    v55 = v23;
  }

  v56 = os_transaction_create();
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = swift_allocObject();
  v58[2] = v57;
  v58[3] = v55;
  v58[4] = v21;
  v58[5] = v56;
  aBlock[4] = sub_100442A38;
  aBlock[5] = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F1F98;
  v67 = _Block_copy(aBlock);
  v76 = &_swiftEmptyArrayStorage;
  sub_10001BC00(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  v68 = v56;
  swift_unknownObjectRetain();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v59 = DispatchWorkItem.init(flags:block:)();

  *(v4 + v69) = v59;

  static DispatchTime.now()();
  sub_1000255D0();
  + infix(_:_:)();
  v60 = v73;
  v61 = *(v72 + 8);
  v61(v9, v73);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();
  v61(v13, v60);
  if (*(v4 + qword_1009394E0 + 33) == 1)
  {
    sub_10043CE78(v74, v75, v70, sub_1003561D4, &unk_1008F1F30, sub_100368310, sub_100442A08);

    result = swift_unknownObjectRelease();
    v25 = qword_100939518;
    v62 = *(v4 + qword_100939518);
    v27 = __OFADD__(v62, 1);
    v28 = v62 + 1;
    if (v27)
    {
      __break(1u);
      return result;
    }

    goto LABEL_20;
  }

  v63 = *(v4 + qword_1009394D8);
  v64 = v74;
  v63(v74);
  if (v75)
  {
    v75(1, v64);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000242D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024310()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100024350()
{
  v2 = sub_1000F5104(&unk_1009472D0, &unk_1007AA0F0);
  v108 = *(v2 - 8);
  v109 = v2;
  __chkstk_darwin(v2, v3);
  v5 = &v104 - v4;
  v6 = sub_1000F5104(&qword_100939638, &qword_100795F00);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v104 - v12;
  v110 = type metadata accessor for DispatchTime();
  v14 = *(v110 - 8);
  __chkstk_darwin(v110, v15);
  v17 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v111 = &v104 - v20;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v24 = __chkstk_darwin(v21, v23);
  v26 = (&v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *&v0[qword_1009394D0];
  *v26 = v27;
  (*(v22 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v21, v24);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, v21);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v21 = *&v0[qword_1009394E8];
  if (!v21)
  {
    return;
  }

  static DispatchTime.now()();
  v29 = OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_lastFire;
  swift_beginAccess();
  sub_100010364(v21 + v29, v13, &qword_100939638, &qword_100795F00);
  v26 = v110;
  if ((*(v14 + 48))(v13, 1, v110) == 1)
  {
    sub_1000050A4(v13, &qword_100939638, &qword_100795F00);
    if (qword_100935AC8 == -1)
    {
LABEL_5:
      v31 = type metadata accessor for Logger();
      sub_100006654(v31, qword_100939348);
      v32 = v0;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v114[0] = v36;
        *v35 = 136315138;
        v37 = *&v32[qword_1009394F0 + 8];
        if (v37)
        {
          v38 = *&v32[qword_1009394F0];
          v39 = v37;
        }

        else
        {
          v38 = 7104878;
          v39 = 0xE300000000000000;
        }

        v66 = sub_10000668C(v38, v39, v114);
        v39, v67, v68, v69, v70, v71, v72, v73;
        *(v35 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v33, v34, "RDDebouncer.sampleFire: First fire sampled {label: %s}", v35, 0xCu);
        sub_10000607C(v36);

        v26 = v110;
      }

      else
      {
      }

      (*(v14 + 32))(v9, v111, v26);
      (*(v14 + 56))(v9, 0, 1, v26);
      swift_beginAccess();
      sub_100117A3C(v9, v21 + v29, &qword_100939638, &qword_100795F00);
      swift_endAccess();

      return;
    }

LABEL_43:
    swift_once();
    goto LABEL_5;
  }

  (*(v14 + 32))(v17, v13, v26);
  v40 = *(v21 + 40);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
    goto LABEL_45;
  }

  v13 = v0;
  *(v21 + 40) = v42;
  (*(v14 + 16))(v9, v111, v26);
  (*(v14 + 56))(v9, 0, 1, v26);
  swift_beginAccess();
  sub_100117A3C(v9, v21 + v29, &qword_100939638, &qword_100795F00);
  swift_endAccess();
  v43 = *(v21 + 24);
  v44 = DispatchTime.uptimeNanoseconds.getter();
  v45 = DispatchTime.uptimeNanoseconds.getter();
  if (v44 < v45)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
LABEL_12:
    v46 = type metadata accessor for Logger();
    v47 = sub_100006654(v46, qword_100939348);
    swift_retain_n();
    v48 = v13;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();

    v51 = os_log_type_enabled(v49, v50);
    v107 = v47;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v114[0] = v53;
      *v52 = 136315650;
      v54 = *&v48[qword_1009394F0 + 8];
      v106 = v50;
      v105 = v53;
      if (v54)
      {
        v55 = *&v48[qword_1009394F0];
        v56 = v54;
      }

      else
      {
        v55 = 7104878;
        v56 = 0xE300000000000000;
      }

      v74 = sub_10000668C(v55, v56, v114);
      v56, v75, v76, v77, v78, v79, v80, v81;
      *(v52 + 4) = v74;
      *(v52 + 12) = 2048;
      *(v52 + 14) = v1;
      *(v52 + 22) = 2048;
      v82 = *(v21 + 40);

      *(v52 + 24) = v82;

      _os_log_impl(&_mh_execute_header, v49, v106, "RDDebouncer.sampleFire: Sampled {label: %s, elapsed: %f, n: %ld}", v52, 0x20u);
      sub_10000607C(v105);

      v26 = v110;
    }

    else
    {
    }

    v83 = *(v21 + 16);
    v84 = *(v21 + 40);
    v85 = v109;
    if (v83 >= v84)
    {
      if (__OFSUB__(v84, 1))
      {
        __break(1u);
        return;
      }

      v92 = v1 / v84 + *(v21 + 32) * (v84 - 1) / v84;
    }

    else
    {
      v86 = OBJC_IVAR____TtCC7remindd12RDDebouncing10LoadFactor_measurements;
      swift_beginAccess();
      v87 = v108;
      (*(v108 + 16))(v5, v21 + v86, v85);
      v88 = DoubleStacksQueue.isEmpty.getter();
      (*(v87 + 8))(v5, v85);
      if (v88 & 1) != 0 || (swift_beginAccess(), DoubleStacksQueue.dequeue()(), swift_endAccess(), (v113))
      {
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&_mh_execute_header, v89, v90, "No measurements to dequeue from to get the oldest sample value when updating load factor", v91, 2u);
        }

        goto LABEL_40;
      }

      v92 = *(v21 + 32) + (v1 - v112) / v83;
    }

    *(v21 + 32) = v92;
    v112 = v1;
    swift_beginAccess();
    DoubleStacksQueue.enqueue(_:)();
    swift_endAccess();

LABEL_40:
    v103 = *(v14 + 8);
    v103(v17, v26);
    v103(v111, v26);
    return;
  }

  v1 = (v44 - v45) / 1000000000.0;
  if (v1 < v43)
  {
    if (qword_100935AC8 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

  if (qword_100935AC8 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100006654(v57, qword_100939348);
  v58 = v0;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v114[0] = v62;
    *v61 = 136315650;
    v63 = *&v58[qword_1009394F0 + 8];
    if (v63)
    {
      v64 = *&v58[qword_1009394F0];
      v65 = v63;
    }

    else
    {
      v64 = 7104878;
      v65 = 0xE300000000000000;
    }

    v93 = sub_10000668C(v64, v65, v114);
    v65, v94, v95, v96, v97, v98, v99, v100;
    *(v61 + 4) = v93;
    *(v61 + 12) = 2048;
    *(v61 + 14) = v1;
    *(v61 + 22) = 2048;
    *(v61 + 24) = v43;
    _os_log_impl(&_mh_execute_header, v59, v60, "RDDebouncer.sampleFire: Sample exceeds threshold for starting a new window, resetting load measurements {label: %s, elapsed: %f, threshold: %f}", v61, 0x20u);
    sub_10000607C(v62);
  }

  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  swift_beginAccess();
  DoubleStacksQueue.reset()();
  swift_endAccess();

  v101 = *(v14 + 8);
  v102 = v110;
  v101(v17, v110);
  v101(v111, v102);
}

void *sub_100024F24(void *result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = result;
  v9 = 0;
  v10 = result[2];
  while (1)
  {
    if (v10 == v9)
    {
      v8, a2, a3, a4, a5, a6, a7, a8;
      sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      &_swiftEmptyArrayStorage, v14, v15, v16, v17, v18, v19, v20;
      v21 = [objc_opt_self() orPredicateWithSubpredicates:isa];

      return v21;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    v11 = *(v8 + 8 * v9++ + 32);
    if (v11)
    {
      v12 = v11;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  __break(1u);
  return result;
}

void sub_1000250CC(_TtC7remindd19RDXPCStorePerformer **a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 6u:
    case 8u:
    case 0xDu:
    case 0xEu:
    case 0xFu:
      v10 = *a1;
      goto LABEL_3;
    case 4u:
    case 5u:
    case 0xAu:
    case 0xBu:
    case 0x10u:
      v11 = *a1;
      goto LABEL_7;
    case 7u:
      v12 = type metadata accessor for UUID();
      v13 = *(*(v12 - 8) + 8);

      v13(a1, v12);
      return;
    case 9u:

      v11 = a1[1];
LABEL_7:

      v11, v3, v4, v5, v6, v7, v8, v9;
      break;
    case 0xCu:
      a1[1], v3, v4, v5, v6, v7, v8, v9;
      v10 = a1[2];
LABEL_3:

      break;
    default:
      return;
  }
}

uint64_t sub_100025254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000252B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000253D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000254F4()
{
  result = qword_10093F488;
  if (!qword_10093F488)
  {
    sub_1000060C8(255, &qword_10093F430, NSPersistentStore_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F488);
  }

  return result;
}

void sub_100025564(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 objectID];
  v4 = [v3 persistentStore];

  *a2 = v4;
}

void sub_1000255D0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + qword_1009394D0);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v9 = (v0 + qword_1009394E0);
    v10 = *(v0 + qword_1009394E0);
    if ((*(v0 + qword_1009394E0 + 32) & 1) == 0)
    {
      return;
    }

    v11 = v9[1];
    if (*(v0 + qword_1009394E8))
    {
      v12 = v9[2];
      v13 = v9[3];
      sub_10014F324(*(v0 + qword_1009394E0), v9[1], v12, v13, 1);

      v10(v14);

      sub_10014F334(v10, v11, v12, v13, 1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  v15 = qword_100935AC8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_100939348);
  v17 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  v18 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  sub_10054573C("loadFactor wasn't properly initialized even with debouncing interval option set to .loadFunction", 96, 2, v17, v18);
  __break(1u);
}

void sub_100025804(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100025A24(a1);
  }

  else
  {
    if (qword_100936150 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100946FF0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received store did change notification but observer is deallocated", v6, 2u);
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10002595C(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_100026AA8(&v5, v3 + 4, v2, v1, &qword_10093F430, NSPersistentStore_ptr, &qword_10093F488);
    sub_10001B860(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_100025A24(uint64_t a1)
{
  v229 = a1;
  v2 = sub_1000F5104(&unk_100947230, &qword_1007AA098);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v229 - v4;
  v248 = sub_1000F5104(&unk_10093F290, &qword_10079DBD0);
  v6 = *(v248 - 8);
  __chkstk_darwin(v248, v7);
  v230 = &v229 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v231 = &v229 - v11;
  __chkstk_darwin(v12, v13);
  v232 = &v229 - v14;
  __chkstk_darwin(v15, v16);
  v235 = &v229 - v17;
  __chkstk_darwin(v18, v19);
  v243 = &v229 - v20;
  v21 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21, v23);
  v234 = &v229 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v251 = &v229 - v27;
  v28 = *(v1 + 40);
  os_unfair_lock_lock(v28);
  swift_beginAccess();
  v29 = *(v1 + 48);

  os_unfair_lock_unlock(v28);
  v37 = *(v29 + 16);
  v236 = v6;
  v244 = v37;
  if (!v37)
  {
    v29, v30, v31, v32, v33, v34, v35, v36;
    v40 = &_swiftEmptyArrayStorage;
    if (!*_swiftEmptyArrayStorage.clientIdentity)
    {
      goto LABEL_104;
    }

LABEL_41:
    v164 = v229 + 56;
    v165 = 1 << *(v229 + 32);
    if (v165 < 64)
    {
      v166 = ~(-1 << v165);
    }

    else
    {
      v166 = -1;
    }

    v167 = v166 & *(v229 + 56);
    v168 = (v165 + 63) >> 6;

    v176 = 0;
    v245 = 0;
    v241 = v168;
    v242 = v164;
LABEL_50:
    if (!v167)
    {
      do
      {
        v178 = v176 + 1;
        if (__OFADD__(v176, 1))
        {
          goto LABEL_108;
        }

        if (v178 >= v168)
        {
          v40, v169, v170, v171, v172, v173, v174, v175;

          return;
        }

        v167 = *(v164 + 8 * v178);
        ++v176;
      }

      while (!v167);
      v176 = v178;
    }

    v243 = v167;
    v179 = *(v229 + 48);
    v244 = v176;
    v180 = v179 + ((v176 << 10) | (16 * __clz(__rbit64(v167))));
    v181 = *(v180 + 8);
    v182 = *v40->clientIdentity;
    v255 = *v180;
    if (!v182)
    {
      v186 = v245;
LABEL_61:
      v245 = v186;
      v188 = *v40->clientIdentity;
      v183 = v188;
      goto LABEL_66;
    }

    v183 = 0;
    v250 = (*(v236 + 80) + 32) & ~*(v236 + 80);
    v184 = v40 + v250;
    v185 = *(v236 + 72);
    v186 = v245;
    while (1)
    {
      sub_10002A08C(v184, v255, v181);
      if (v187)
      {
        break;
      }

      ++v183;
      v184 += v185;
      if (v182 == v183)
      {
        goto LABEL_61;
      }
    }

    v240 = v181;
    v188 = v183 + 1;
    if (__OFADD__(v183, 1))
    {
      goto LABEL_119;
    }

    v245 = v186;
    v189 = *v40->clientIdentity;
    v246 = v185;
    if (v188 == v189)
    {
      goto LABEL_64;
    }

LABEL_70:
    if (v188 >= v189)
    {
      goto LABEL_109;
    }

    v252 = v40;
    *&v247 = v188 * v185;
    i = v40 + v250;
    v191 = v235;
    sub_100010364(v40 + v250 + v188 * v185, v235, &unk_10093F290, &qword_10079DBD0);
    v192 = v191;
    v193 = v232;
    sub_100010364(v192, v232, &unk_10093F290, &qword_10079DBD0);
    v194 = *(v193 + *(v248 + 48));
    sub_10002A4A8(v193, v234);
    v253 = v194;
    v254 = v188;
    if ((v194 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
      sub_10000CDE4(&qword_10093A8E8, &unk_100947240, NSEntityDescription_ptr, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v194 = v259;
      v195 = v260;
      v197 = v261;
      v196 = v262;
      v198 = v263;
    }

    else
    {
      v199 = -1 << *(v194 + 32);
      v195 = v194 + 56;
      v197 = ~v199;
      v200 = -v199;
      if (v200 < 64)
      {
        v201 = ~(-1 << v200);
      }

      else
      {
        v201 = -1;
      }

      v198 = v201 & *(v194 + 56);

      v196 = 0;
    }

    v251 = v197;
    while (1)
    {
      if (v194 < 0)
      {
        v205 = __CocoaSet.Iterator.next()();
        if (!v205 || (v256 = v205, sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr), swift_dynamicCast(), (v204 = v257) == 0))
        {
LABEL_89:
          sub_10001B860(v194);
          sub_1000292E8(v234);
          sub_1000050A4(v235, &unk_10093F290, &qword_10079DBD0);
          v253, v216, v217, v218, v219, v220, v221, v222;
          v215 = v254;
          v185 = v246;
          if (v183 == v254)
          {
            v40 = v252;
            goto LABEL_98;
          }

          v40 = v252;
          if (v183 < 0)
          {
            goto LABEL_112;
          }

          v223 = *v252->clientIdentity;
          if (v183 >= v223)
          {
            goto LABEL_113;
          }

          v224 = i;
          sub_100010364(&i[v183 * v246], v231, &unk_10093F290, &qword_10079DBD0);
          if (v215 >= v223)
          {
            goto LABEL_114;
          }

          v225 = v224;
          v226 = v247;
          sub_100010364(&v225[v247], v230, &unk_10093F290, &qword_10079DBD0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_100260BE8(v40);
          }

          v227 = v40 + v250;
          sub_100117A3C(v230, v40 + v250 + v183 * v185, &unk_10093F290, &qword_10079DBD0);
          if (v215 >= *v40->clientIdentity)
          {
            goto LABEL_115;
          }

          sub_100117A3C(v231, &v227[v226], &unk_10093F290, &qword_10079DBD0);
LABEL_98:
          v228 = __OFADD__(v183++, 1);
          if (v228)
          {
            goto LABEL_111;
          }

LABEL_99:
          v228 = __OFADD__(v215, 1);
          v188 = v215 + 1;
          if (v228)
          {
            goto LABEL_110;
          }

          v189 = *v40->clientIdentity;
          if (v188 == v189)
          {
LABEL_64:
            if (v188 < v183)
            {
              goto LABEL_117;
            }

            if ((v183 & 0x8000000000000000) == 0)
            {
LABEL_66:
              if (!__OFADD__(v188, v183 - v188))
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v258 = v40;
                if (!isUniquelyReferenced_nonNull_native || v183 > *&v40->clientIdentity[8] >> 1)
                {
                  if (v188 <= v183)
                  {
                    v177 = v183;
                  }

                  else
                  {
                    v177 = v188;
                  }

                  v40 = sub_10002A020(isUniquelyReferenced_nonNull_native, v177, 1, v40);
                  v258 = v40;
                }

                v164 = v242;
                v167 = (v243 - 1) & v243;
                sub_10002A50C(v183, v188, 0);

                v168 = v241;
                v176 = v244;
                goto LABEL_50;
              }

LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
            }

            __break(1u);
LABEL_119:
            __break(1u);
            return;
          }

          goto LABEL_70;
        }
      }

      else
      {
        v202 = v196;
        v203 = v198;
        if (!v198)
        {
          while (1)
          {
            v196 = v202 + 1;
            if (__OFADD__(v202, 1))
            {
              break;
            }

            if (v196 >= ((v197 + 64) >> 6))
            {
              goto LABEL_89;
            }

            v203 = *(v195 + 8 * v196);
            ++v202;
            if (v203)
            {
              goto LABEL_83;
            }
          }

LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

LABEL_83:
        v198 = (v203 - 1) & v203;
        v204 = *(*(v194 + 48) + ((v196 << 9) | (8 * __clz(__rbit64(v203)))));
        if (!v204)
        {
          goto LABEL_89;
        }
      }

      v206 = [v255 isKindOfEntity:{v204, v229}];

      if (v206)
      {
        sub_10001B860(v194);
        v253, v207, v208, v209, v210, v211, v212, v213;
        v214 = v234;
        sub_10002A660(v240);
        sub_1000292E8(v214);
        sub_1000050A4(v235, &unk_10093F290, &qword_10079DBD0);
        v40 = v252;
        v215 = v254;
        v185 = v246;
        goto LABEL_99;
      }
    }
  }

  v241 = *(v21 + 20);
  v240 = objc_opt_self();
  v38 = 0;
  v242 = v22;
  v39 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v245 = v29;
  v239 = v29 + v39;
  v238 = (v6 + 56);
  v237 = (v6 + 48);
  v40 = &_swiftEmptyArrayStorage;
  v41 = &selRef_accountStatusWithCompletionHandler_;
  *&v42 = 136446466;
  v247 = v42;
  v233 = v5;
  do
  {
    if (v38 >= *v245->clientIdentity)
    {
      goto LABEL_107;
    }

    v50 = *(v242 + 72);
    v250 = v38;
    v51 = v251;
    sub_100026CD8(v239 + v50 * v38, v251, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    v52 = *(v51 + v241);
    v53 = [v240 managedObjectModel];
    if (v52)
    {
      v252 = v40;
      v259 = &_swiftEmptyArrayStorage;
      v54 = (v52 + 56);
      v55 = 1 << v52[32];
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v57 = v56 & *(v52 + 7);
      v58 = ((v55 + 63) >> 6);

      v59 = 0;
      v246 = &_swiftEmptyArrayStorage;
      v254 = (v52 + 56);
      v255 = v58;
      for (i = v52; v57; v58 = v255)
      {
        while (1)
        {
          v60 = v59;
LABEL_18:
          v61 = __clz(__rbit64(v57));
          v57 &= v57 - 1;
          v62 = (*(v52 + 6) + ((v60 << 10) | (16 * v61)));
          v63 = *v62;
          v64 = v62[1];

          v65 = [v53 entitiesByName];
          sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
          v66 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v66 + 16))
          {
            v74 = sub_100005F4C(v63, v64);
            if (v67)
            {
              break;
            }
          }

          v66, v67, v68, v69, v70, v71, v72, v73;
          if (qword_100936150 != -1)
          {
            swift_once();
          }

          v75 = type metadata accessor for Logger();
          sub_100006654(v75, qword_100946FF0);

          v76 = v53;
          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.fault.getter();

          v64, v79, v80, v81, v82, v83, v84, v85;
          if (os_log_type_enabled(v77, v78))
          {
            v93 = swift_slowAlloc();
            v253 = swift_slowAlloc();
            v258 = v253;
            *v93 = v247;
            *(v93 + 4) = sub_10000668C(v63, v64, &v258);
            *(v93 + 12) = 2080;
            v94 = [v76 description];
            v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v96 = v53;
            v98 = v97;

            v99 = sub_10000668C(v95, v98, &v258);
            v100 = v98;
            v53 = v96;
            v100, v101, v102, v103, v104, v105, v106, v107;
            *(v93 + 14) = v99;
            _os_log_impl(&_mh_execute_header, v77, v78, "Entity in the given filter option not recognized in managedObjectContext {entityName: %{public}s, managedObjectModel: %s}", v93, 0x16u);
            swift_arrayDestroy();

            v52 = i;
          }

          v64, v86, v87, v88, v89, v90, v91, v92;

          v59 = v60;
          v54 = v254;
          v58 = v255;
          if (!v57)
          {
            goto LABEL_14;
          }
        }

        v108 = *(*(v66 + 56) + 8 * v74);
        v64, v109, v110, v111, v112, v113, v114, v115;
        v66, v116, v117, v118, v119, v120, v121, v122;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v259 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v259 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v54 = v254;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v246 = v259;
        v59 = v60;
      }

LABEL_14:
      v41 = &selRef_accountStatusWithCompletionHandler_;
      while (1)
      {
        v60 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v60 >= v58)
        {

          v6 = v236;
          v40 = v252;
          v5 = v233;
          v123 = v246;
          goto LABEL_34;
        }

        v57 = *(v54 + 8 * v60);
        ++v59;
        if (v57)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_106;
    }

    v124 = [objc_opt_self() subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
    sub_1000F5104(&qword_100947250, &unk_1007AC8E0);
    v125 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v133 = *(v125 + 16);
    if (v133)
    {
      v134 = v40;
      v259 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v135 = 32;
      do
      {
        v136 = [swift_getObjCClassFromMetadata() v41[395]];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v135 += 8;
        --v133;
      }

      while (v133);
      v125, v137, v138, v139, v140, v141, v142, v143;
      v123 = v259;
      v40 = v134;
      v6 = v236;
    }

    else
    {
      v125, v126, v127, v128, v129, v130, v131, v132;
      v123 = &_swiftEmptyArrayStorage;
    }

LABEL_34:
    v144 = sub_100027634(v123);

    v123, v145, v146, v147, v148, v149, v150, v151;
    v152 = v248;
    v153 = *(v248 + 48);
    v154 = v251;
    sub_100026CD8(v251, v5, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
    *&v5[v153] = v144;
    (*v238)(v5, 0, 1, v152);
    sub_1000292E8(v154);
    if ((*v237)(v5, 1, v152) == 1)
    {
      sub_1000050A4(v5, &unk_100947230, &qword_1007AA098);
    }

    else
    {
      sub_100029CA4(v5, v243);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_10002A020(0, *v40->clientIdentity + 1, 1, v40);
      }

      v156 = *v40->clientIdentity;
      v155 = *&v40->clientIdentity[8];
      if (v156 >= v155 >> 1)
      {
        v40 = sub_10002A020((v155 > 1), v156 + 1, 1, v40);
      }

      *v40->clientIdentity = v156 + 1;
      sub_100029CA4(v243, v40 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v156);
    }

    v38 = v250 + 1;
  }

  while (v250 + 1 != v244);
  v245, v43, v44, v45, v46, v47, v48, v49;
  if (*v40->clientIdentity)
  {
    goto LABEL_41;
  }

LABEL_104:
  v40, v157, v158, v159, v160, v161, v162, v163;
}

uint64_t sub_100026A70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_100026AA8(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1000060C8(0, a5, a6);
  sub_10000CE28(a7, a5, a6);
  result = Set.Iterator.init(_cocoa:)();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1000060C8(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_100026CD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_TtC7remindd19RDXPCStorePerformer *sub_100026D40(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
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

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = &v10->clientIdentity[16];
  v14 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100026E4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = a3[7];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;

  v13 = v8;

  return a1;
}

_TtC7remindd19RDXPCStorePerformer *sub_100026EF4(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_100026D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_100026F58@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 remObjectID];
  if (v6)
  {

    *a3 = v5;
    return v5;
  }

  else
  {
    _StringGuts.grow(_:)(98);
    v8._object = 0x80000001007F8090;
    v8._countAndFlagsBits = 0xD000000000000055;
    String.append(_:)(v8);
    v9 = [a2 remObjectID];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 description];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = objc_opt_self();
    v16._countAndFlagsBits = v12;
    v16._object = v14;
    String.append(_:)(v16);
    v14, v17, v18, v19, v20, v21, v22, v23;
    v24._countAndFlagsBits = 0x203A44496F6D202CLL;
    v24._object = 0xE800000000000000;
    String.append(_:)(v24);
    v25 = [v5 objectID];
    v26 = [v25 description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    String.append(_:)(v30);
    v29, v31, v32, v33, v34, v35, v36, v37;

    v38._countAndFlagsBits = 125;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v39 = String._bridgeToObjectiveC()();
    0xE000000000000000, v40, v41, v42, v43, v44, v45, v46;
    [v15 internalErrorWithDebugDescription:v39];

    return swift_willThrow();
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1000271D0(unint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_31:
    v26 = a2;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v26;
    v4 = v27;
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10001184C(v3, a2);
  if (v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = 0;
  while (v4 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v10 = [v7 remObjectID];

    ++v6;
    if (v10)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v9;
    }
  }

  v11 = &_swiftEmptyArrayStorage;
  if (&_swiftEmptyArrayStorage >> 62)
  {
LABEL_33:
    v12 = v11;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_19;
    }

LABEL_34:

    v12, v28, v29, v30, v31, v32, v33, v34;
    return &_swiftEmptyArrayStorage;
  }

  v12 = &_swiftEmptyArrayStorage;
  v3 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_34;
  }

LABEL_19:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    a2 = v12;
    v14 = v12 & 0xC000000000000001;
    v15 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_30;
      }

      if (v14)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v17 = *&a2->clientIdentity[8 * v13 + 16];
      }

      v18 = v17;
      dispatch thunk of REMStoreObjectsContainer.storedList(with:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v13;
      a2 = &_swiftEmptyArrayStorage;
      if (v16 == v3)
      {

        &_swiftEmptyArrayStorage, v19, v20, v21, v22, v23, v24, v25;
        return &_swiftEmptyArrayStorage;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000274B8(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000060C8(0, a2, a3);
    sub_10000CE28(a4, a2, a3);
    result = Set.init(minimumCapacity:)();
    v15 = result;
    if (v10)
    {
      break;
    }

    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return result;
    }

LABEL_6:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v13 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v15;
      a5(&v14, v13);

      a2 = (a2 + 1);
      if (v10 == v12)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  a4 = result;
  v12 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (v12)
  {
    goto LABEL_6;
  }

  return result;
}

void *sub_100027664(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v269 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7, v9);
  v282 = &v269 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v283 = &v269 - v13;
  *&v16 = __chkstk_darwin(v14, v15).n128_u64[0];
  v284 = &v269 - v17;
  *&v288 = 0;
  v18 = [a1 remObjectIDWithError:{&v288, v16}];
  if (!v18)
  {
    v39 = v288;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v7;
  }

  v19 = v18;
  v20 = v288;
  v21 = [a1 account];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 remObjectID];

    if (v23)
    {
      v281 = v8;
      v270 = v6;
      v24 = [a1 name];
      v278 = v19;
      if (v24)
      {
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v40 = [a1 reminderIDsMergeableOrdering];
      v272 = v2;
      v271 = v3;
      v273 = v7;
      if (v40)
      {
        v41 = v40;
        v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
      }

      else
      {
        v280 = v26;
        if (qword_1009366B8 != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        sub_100006654(v45, qword_10094EE48);
        v46 = v278;
        v47 = v278;
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138412290;
          *(v50 + 4) = v47;
          *v51 = v46;
          v52 = v47;
          sub_1000050A4(v51, &unk_100938E70, &unk_100797230);
        }

        v42 = 0;
        v44 = 0xC000000000000000;
      }

      if (v28)
      {
        v53 = v28;
      }

      else
      {
        v53 = 0xE000000000000000;
      }

      v54 = [a1 isGroup];
      v55 = objc_allocWithZone(REMListStorage);
      v56 = v278;
      sub_100029344(v42, v44);
      v57 = v23;
      v58 = String._bridgeToObjectiveC()();
      v53, v59, v60, v61, v62, v63, v64, v65;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v276 = v42;
      v275 = v44;
      sub_10001BBA0(v42, v44);
      v7 = [v55 initWithObjectID:v56 accountID:v57 name:v58 isGroup:v54 reminderIDsMergeableOrderingData:isa];

      [v7 setReminderIDsMergeableOrdering:0];
      v67 = [a1 externalIdentifier];
      [v7 setExternalIdentifier:v67];

      v68 = [a1 externalModificationTag];
      [v7 setExternalModificationTag:v68];

      v69 = [a1 daSyncToken];
      [v7 setDaSyncToken:v69];

      v70 = [a1 daPushKey];
      [v7 setDaPushKey:v70];

      v71 = [a1 daExternalIdentificationTag];
      [v7 setDaExternalIdentificationTag:v71];

      [v7 setDaDisplayOrder:{objc_msgSend(a1, "daDisplayOrder")}];
      [v7 setDaIsEventOnlyContainer:{objc_msgSend(a1, "daIsEventOnlyContainer")}];
      [v7 setDaIsReadOnly:{objc_msgSend(a1, "daIsReadOnly")}];
      [v7 setDaIsImmutable:{objc_msgSend(a1, "daIsImmutable")}];
      [v7 setDaIsNotificationsCollection:{objc_msgSend(a1, "daIsNotificationsCollection")}];
      [v7 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
      [v7 setEffectiveMinimumSupportedVersion:{objc_msgSend(a1, "effectiveMinimumSupportedVersion")}];
      v72 = [a1 sharedOwnerName];
      [v7 setSharedOwnerName:v72];

      v73 = [a1 sharedOwnerAddress];
      [v7 setSharedOwnerAddress:v73];

      v269 = [a1 sharingStatus];
      [v7 setSharingStatus:?];
      type metadata accessor for REMShareeCDIngestor();
      inited = swift_initStackObject();
      *(inited + 16) = v57;
      *(inited + 24) = v56;
      v280 = inited;
      type metadata accessor for REMCalDAVNotificationCDIngestor();
      v75 = swift_initStackObject();
      *(v75 + 16) = v57;
      *(v75 + 24) = v56;
      v279 = v75;
      v76 = v56;
      v77 = v57;
      v277 = v76;
      v274 = v77;
      v78 = [a1 sharees];
      if (!v78)
      {
        v117 = v281;
        goto LABEL_35;
      }

      v79 = v78;
      sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
      sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
      v80 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      *&v288 = v80;
      sub_1000F5104(&qword_10094F0E0, &qword_1007B4CD8);
      sub_10000CB48(&qword_10094F0E8, &qword_10094F0E0, &qword_1007B4CD8, &protocol conformance descriptor for Set<A>);
      v81 = Sequence.elements<A>(ofType:)();
      v80, v82, v83, v84, v85, v86, v87, v88;
      if (qword_1009366B8 != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      v90 = sub_100006654(v89, qword_10094EE48);
      *&v288 = v81;
      __chkstk_darwin(v90, v91);
      *(&v269 - 2) = v92;
      sub_1000F5104(&unk_10094F110, &qword_1007A1FB8);
      sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
      sub_10000CB48(&unk_10094F678, &unk_10094F110, &qword_1007A1FB8, &protocol conformance descriptor for [A]);
      v93 = v285;
      v94 = Sequence.map<A>(skippingError:_:)();
      if (v93)
      {

        v81, v102, v103, v104, v105, v106, v107, v108;
        v116 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v116 = v94;
        v81, v95, v96, v97, v98, v99, v100, v101;
      }

      v117 = v281;
      if (v116 >> 62)
      {
        v127 = _CocoaArrayWrapper.endIndex.getter();
        v285 = 0;
        if (v127)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v118 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v285 = 0;
        if (v118)
        {
LABEL_32:
          v119 = Array._bridgeToObjectiveC()().super.isa;
          v116, v120, v121, v122, v123, v124, v125, v126;
          [v7 setSharees:v119];

          goto LABEL_35;
        }
      }

      v116, v109, v110, v111, v112, v113, v114, v115;
LABEL_35:
      sub_100029560();
      if (v128)
      {
        v129 = v128;
        v130 = [v128 remObjectID];
      }

      else
      {
        v130 = 0;
      }

      [v7 setSharedOwnerID:v130];

      v131 = [a1 calDAVNotifications];
      if (v131)
      {
        v132 = v131;
        sub_1000060C8(0, &qword_10094F150, off_1008D4178);
        sub_10000CE28(&qword_10094F158, &qword_10094F150, off_1008D4178);
        v133 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        *&v288 = v133;
        sub_1000F5104(&qword_10094F160, &qword_1007B4D60);
        sub_10000CB48(&qword_10094F168, &qword_10094F160, &qword_1007B4D60, &protocol conformance descriptor for Set<A>);
        v134 = Sequence.elements<A>(ofType:)();
        v133, v135, v136, v137, v138, v139, v140, v141;
        if (qword_1009366B8 != -1)
        {
          swift_once();
        }

        v142 = type metadata accessor for Logger();
        v143 = sub_100006654(v142, qword_10094EE48);
        *&v288 = v134;
        __chkstk_darwin(v143, v144);
        *(&v269 - 2) = v145;
        sub_1000F5104(&qword_10094F188, &qword_1007B4D88);
        sub_1000060C8(0, &qword_10094F170, REMCalDAVNotification_ptr);
        sub_10000CB48(&qword_10094F670, &qword_10094F188, &qword_1007B4D88, &protocol conformance descriptor for [A]);
        v146 = v285;
        v147 = Sequence.map<A>(skippingError:_:)();
        if (v146)
        {

          v134, v155, v156, v157, v158, v159, v160, v161;
          v169 = &_swiftEmptyArrayStorage;
        }

        else
        {
          v169 = v147;
          v134, v148, v149, v150, v151, v152, v153, v154;
        }

        v117 = v281;
        if (v169 >> 62)
        {
          v179 = _CocoaArrayWrapper.endIndex.getter();
          v285 = 0;
          if (v179)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v170 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v285 = 0;
          if (v170)
          {
LABEL_46:
            v171 = Array._bridgeToObjectiveC()().super.isa;
            v169, v172, v173, v174, v175, v176, v177, v178;
            [v7 setCalDAVNotifications:v171];

            goto LABEL_49;
          }
        }

        v169, v162, v163, v164, v165, v166, v167, v168;
      }

LABEL_49:
      v180 = [a1 color];
      [v7 setColor:v180];

      v181 = [a1 badgeEmblem];
      [v7 setBadgeEmblem:v181];

      v182 = [a1 lastUserAccessDate];
      if (v182)
      {
        v183 = v284;
        v184 = v182;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v185.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v117 + 8))(v183, v273);
      }

      else
      {
        v185.super.isa = 0;
      }

      [v7 setLastUserAccessDate:v185.super.isa];

      [v7 setShowingLargeAttachments:{objc_msgSend(a1, "showingLargeAttachments")}];
      v186 = [a1 parentAccount];
      if (v186)
      {
        v187 = v186;
        v188 = [v186 remObjectID];
      }

      else
      {
        v188 = 0;
      }

      [v7 setParentAccountID:v188];

      v189 = [a1 parentList];
      if (v189)
      {
        v190 = v189;
        v191 = [v189 remObjectID];
      }

      else
      {
        v191 = 0;
      }

      [v7 setParentListID:v191];

      [v7 setShouldCategorizeGroceryItems:{objc_msgSend(a1, "shouldCategorizeGroceryItems")}];
      [v7 setShouldSuggestConversionToGroceryList:{objc_msgSend(a1, "shouldSuggestConversionToGroceryList")}];
      v192 = [a1 groceryLocaleID];
      [v7 setGroceryLocaleID:v192];

      [v7 setShouldAutoCategorizeItems:{objc_msgSend(a1, "shouldAutoCategorizeItems")}];
      v193 = [objc_opt_self() sharedConfiguration];
      v194 = objc_opt_self();
      v195 = [v194 isInternalInstall];
      v196 = &selRef_autoCategorizationInternalInstallMinimumSupportedVersion;
      if (!v195)
      {
        v196 = &selRef_autoCategorizationNonInternalInstallMinimumSupportedVersion;
      }

      v197 = [v193 *v196];
      v198 = [v197 integerValue];
      v199 = kREMSupportedVersionFor2025Seed1;
      [v7 setIsAutoCategorizationSupportedInCurrentAppVersion:v198 < kREMSupportedVersionFor2025Seed1];
      v200 = [v194 isInternalInstall];
      v201 = &selRef_intelligentExtractionsInternalInstallMinimumSupportedVersion;
      if (!v200)
      {
        v201 = &selRef_intelligentExtractionsNonInternalInstallMinimumSupportedVersion;
      }

      v284 = [v193 *v201];
      [v7 setIsSuggestedRemindersSupportedInCurrentAppVersion:{objc_msgSend(v284, "integerValue") < v199}];
      [v7 setResolutionTokenMap:0];
      v202 = [a1 resolutionTokenMapData];
      if (v202)
      {
        v203 = v202;
        v204 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v206 = v205;

        v207.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(v204, v206);
      }

      else
      {
        v207.super.isa = 0;
      }

      [v7 setResolutionTokenMapData:v207.super.isa];

      v208 = [a1 daBulkRequests];
      if (v208)
      {
        v209 = v208;
        v210 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v212 = v211;

        v213 = objc_opt_self();
        v214 = Data._bridgeToObjectiveC()().super.isa;
        v286 = 0;
        v215 = [v213 propertyListWithData:v214 options:0 format:0 error:&v286];

        v216 = v286;
        if (v215)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100005EE0(v287, &v288);
          sub_100005EF0(&v288, v287);
          sub_1000F5104(&qword_10094F668, &unk_1007B5150);
          if (swift_dynamicCast())
          {
            v217 = v286;
            v218 = Dictionary._bridgeToObjectiveC()().super.isa;
            v217, v219, v220, v221, v222, v223, v224, v225;
            [v7 setDaBulkRequests:v218];
            sub_10001BBA0(v210, v212);

            sub_10000607C(&v288);
          }

          else
          {
            sub_10000607C(&v288);
            sub_10001BBA0(v210, v212);
          }
        }

        else
        {
          v226 = v216;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_10001BBA0(v210, v212);

          v285 = 0;
        }

        v117 = v281;
      }

      [v7 setIsPlaceholder:{objc_msgSend(a1, "isPlaceholder")}];
      v227 = [a1 currentUserShareParticipantID];
      if (v227)
      {
        v228 = v227;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v230 = v229;

        object = String.uppercased()()._object;
        v230, object, v232, v233, v234, v235, v236, v237;
        v238 = String._bridgeToObjectiveC()();
        object, v239, v240, v241, v242, v243, v244, v245;
      }

      else
      {
        v238 = 0;
      }

      [v7 setCurrentUserShareParticipantID:v238];

      v246 = [a1 sortingStyle];
      if (v246)
      {
        v247 = v246;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v248 = REMSortingStyle.init(stringValue:)();
        if (!v248)
        {
          v248 = REMSortingStyleDefault;
        }

        v249 = v248;
        [v7 setSortingStyle:v248];
      }

      else
      {
        [v7 setSortingStyle:REMSortingStyleDefault];
      }

      if (![a1 isPinnedByCurrentUser])
      {
        goto LABEL_94;
      }

      if (v269 < 2)
      {
        v252 = [a1 pinnedDate];
        if (v252)
        {
          v253 = v283;
          v254 = v252;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v251.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v117 + 8))(v253, v273);
        }

        else
        {
          v251.super.isa = 0;
        }
      }

      else
      {
        if (v269 - 3 < 2)
        {
LABEL_94:
          v261 = [a1 mostRecentTargetTemplateIdentifierByCurrentUser];
          if (v261)
          {
            v262 = v270;
            v263 = v261;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v264.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v271 + 8))(v262, v272);
          }

          else
          {
            v264.super.isa = 0;
          }

          v265 = v275;
          [v7 setMostRecentTargetTemplateIdentifier:v264.super.isa];

          [v7 setShouldUpdateSectionsOrdering:0];
          [v7 setUnsavedSectionIDsOrdering:0];
          [v7 setUnsavedMembershipsOfRemindersInSections:0];
          [v7 setUnsavedReminderIDsForCategorization:0];

          sub_10001BBA0(v276, v265);
          v266 = v280;
          swift_setDeallocating();

          v267 = v279;
          swift_setDeallocating();

          return v7;
        }

        if (v269 != 2)
        {
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v255 = type metadata accessor for Logger();
          sub_100006654(v255, qword_10094EE30);
          v256 = v277;
          v251.super.isa = Logger.logObject.getter();
          v257 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v251.super.isa, v257))
          {
            v258 = swift_slowAlloc();
            v259 = swift_slowAlloc();
            *v258 = 138543618;
            *(v258 + 4) = v256;
            *v259 = v278;
            *(v258 + 12) = 2050;
            *(v258 + 14) = v269;
            v260 = v256;
            _os_log_impl(&_mh_execute_header, v251.super.isa, v257, "REMListStorageCDIngestor: storage(from:) Unhandled sharingStatus {objectID: %{public}@, sharingStatus.rawValue: %{public}ld}", v258, 0x16u);
            sub_1000050A4(v259, &unk_100938E70, &unk_100797230);
          }

          goto LABEL_93;
        }

        v250 = v282;
        static Date.distantPast.getter();
        v251.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v117 + 8))(v250, v273);
      }

      [v7 setPinnedDate:v251.super.isa];
LABEL_93:

      goto LABEL_94;
    }
  }

  if (qword_1009366B8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_10094EE48);
  v30 = v19;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v19;
    v35 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "REMListStorageCDIngestor: cdList.account is nil {cdList.remObjectID: %@}", v33, 0xCu);
    sub_1000050A4(v34, &unk_100938E70, &unk_100797230);
  }

  v36 = objc_opt_self();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = String._bridgeToObjectiveC()();
  [v36 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v38];

  swift_willThrow();
  return v7;
}

void *sub_100028FC4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_100027664(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100028FF4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {
      v6, v10, v11, v12, v13, v14, v15, v16;

      sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_10037F7A0(v7, result + 1, &qword_100942FD0, &qword_1007A3A50, &unk_100947240, NSEntityDescription_ptr);
    v27 = v26[2];
    if (v26[3] <= v27)
    {
      sub_10001B868(v27 + 1, &qword_100942FD0, &qword_1007A3A50);
    }

    v25 = v8;
    sub_100382EB4(v25, v26);
    v6, v28, v29, v30, v31, v32, v33, v34;
    *v3 = v26;
    goto LABEL_16;
  }

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v18 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v19 = -1 << *(v6 + 32);
  v20 = v18 & ~v19;
  if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v3;
    v25 = a2;
    sub_10001B588(v25, v20, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
LABEL_16:
    *a1 = v25;
    return 1;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = *(*(v6 + 48) + 8 * v20);
  *a1 = v35;
  v36 = v35;
  return 0;
}

uint64_t sub_1000292E8(uint64_t a1)
{
  v2 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029344(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000293BC(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  *(a1 + a2[5]), v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_100029460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_100029560()
{
  v1 = v0;
  v75 = type metadata accessor for UUID();
  v2 = *(v75 - 8);
  __chkstk_darwin(v75, v3);
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v69, v5);
  v7 = &v56 - v6;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v74 = &v56 - v14;
  *&v17 = __chkstk_darwin(v15, v16).n128_u64[0];
  v19 = &v56 - v18;
  v70 = v1;
  v20 = [v1 sharees];
  if (!v20)
  {
    return;
  }

  v21 = v20;
  v63 = v11;
  v22 = sub_100029EFC();
  sub_100029FD8(&qword_100939840, sub_100029EFC, &protocol conformance descriptor for NSObject);
  v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v23 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v23 = v78;
    v65 = v79;
    v24 = v80;
    v25 = v81;
    v26 = v82;
  }

  else
  {
    v25 = 0;
    v27 = -1 << *(v23 + 32);
    v28 = *(v23 + 56);
    v65 = v23 + 56;
    v24 = ~v27;
    v29 = -v27;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v26 = v30 & v28;
  }

  v56 = v24;
  v31 = (v24 + 64) >> 6;
  v73 = (v2 + 56);
  v67 = (v2 + 48);
  v58 = (v2 + 32);
  v61 = (v2 + 8);
  v66 = v22;
  v62 = v19;
  v68 = v23;
  v57 = v31;
  while (v23 < 0)
  {
    v71 = v26;
    v38 = __CocoaSet.Iterator.next()();
    if (!v38)
    {
      goto LABEL_34;
    }

    v76 = v38;
    swift_dynamicCast();
    v37 = v77;
    v35 = v25;
    v36 = v71;
    if (!v77)
    {
      goto LABEL_34;
    }

LABEL_22:
    v39 = [v37 remObjectID];
    v64 = v25;
    if (v39)
    {
      v40 = v39;
      v41 = [v39 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = *v73;
    v44 = 1;
    (*v73)(v19, v42, 1, v75);
    v45 = [v70 sharedOwnerIdentifier];
    v72 = v36;
    if (v45)
    {
      v46 = v45;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = 0;
    }

    v48 = v74;
    v47 = v75;
    v43(v74, v44, 1, v75);
    v49 = *(v69 + 48);
    sub_10018E470(v19, v7);
    sub_10018E470(v48, &v7[v49]);
    v50 = *v67;
    if ((*v67)(v7, 1, v47) == 1)
    {
      sub_1000050A4(v74, &unk_100939D90, "8\n\r");
      sub_1000050A4(v19, &unk_100939D90, "8\n\r");
      v32 = v50(&v7[v49], 1, v75);
      v23 = v68;
      if (v32 == 1)
      {
        sub_1000050A4(v7, &unk_100939D90, "8\n\r");
LABEL_34:
        sub_10001B860(v23);
        return;
      }

      goto LABEL_11;
    }

    v52 = v74;
    v51 = v75;
    v53 = v63;
    sub_10018E470(v7, v63);
    if (v50(&v7[v49], 1, v51) == 1)
    {
      sub_1000050A4(v52, &unk_100939D90, "8\n\r");
      v19 = v62;
      sub_1000050A4(v62, &unk_100939D90, "8\n\r");
      (*v61)(v53, v51);
      v23 = v68;
LABEL_11:
      sub_1000050A4(v7, &unk_10093A3D0, &qword_100795770);
      goto LABEL_12;
    }

    v54 = v60;
    (*v58)(v60, &v7[v49], v51);
    sub_100029FD8(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v59 = dispatch thunk of static Equatable.== infix(_:_:)();
    v55 = *v61;
    (*v61)(v54, v51);
    sub_1000050A4(v52, &unk_100939D90, "8\n\r");
    v19 = v62;
    sub_1000050A4(v62, &unk_100939D90, "8\n\r");
    v55(v53, v51);
    v31 = v57;
    sub_1000050A4(v7, &unk_100939D90, "8\n\r");
    v23 = v68;
    if (v59)
    {
      goto LABEL_34;
    }

LABEL_12:

    v25 = v35;
    v26 = v72;
  }

  v33 = v25;
  v34 = v26;
  v35 = v25;
  if (v26)
  {
LABEL_18:
    v71 = v26;
    v36 = (v34 - 1) & v34;
    v37 = *(*(v23 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
    if (!v37)
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v31)
    {
      goto LABEL_34;
    }

    v34 = *(v65 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_100029CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_10093F290, &qword_10079DBD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_TtC7remindd19RDXPCStorePerformer *sub_100029D14(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *&a4->clientIdentity[8];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *a4->clientIdentity;
  if (v13 <= v14)
  {
    v15 = *a4->clientIdentity;
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000F5104(a5, a6);
  v16 = *(sub_1000F5104(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  *v19->clientIdentity = v14;
  *&v19->clientIdentity[8] = 2 * ((result - v18) / v17);
LABEL_19:
  v22 = sub_1000F5104(a7, a8);
  v27 = *(v22 - 1);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = a4 + v28;
  if (v11)
  {
    if (v19 < a4 || v19 + v28 >= &v29[*(v27 + 72) * v14])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v29, v21, v22, v23, v24, v25, v26;
  return v19;
}

unint64_t sub_100029EFC()
{
  result = qword_100942E50;
  if (!qword_100942E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100942E50);
  }

  return result;
}

uint64_t sub_100029F48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100029F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100029FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10002A08C(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a2;
  v41 = a3;
  v4 = sub_1000F5104(&unk_10093F290, &qword_10079DBD0);
  v5 = v4 - 8;
  __chkstk_darwin(v4, v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010364(a1, v8, &unk_10093F290, &qword_10079DBD0);
  v13 = *&v8[*(v5 + 56)];
  v44 = v12;
  sub_10002A4A8(v8, v12);
  v43 = v13;
  if ((v13 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
    sub_10000CDE4(&qword_10093A8E8, &unk_100947240, NSEntityDescription_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v13 = v47;
    v14 = v48;
    v15 = v49;
    v16 = v50;
    v17 = v51;
  }

  else
  {
    v18 = -1 << *(v13 + 32);
    v14 = v13 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v13 + 56);

    v16 = 0;
  }

  v42 = v15;
  while (v13 < 0)
  {
    v24 = __CocoaSet.Iterator.next()();
    if (!v24 || (v46 = v24, sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr), swift_dynamicCast(), (v23 = v52) == 0))
    {
LABEL_19:
      sub_10001B860(v13);
      sub_1000292E8(v44);
      v43, v34, v35, v36, v37, v38, v39, v40;
      return;
    }

LABEL_17:
    v25 = [v45 isKindOfEntity:{v23, v41, v42}];

    if (v25)
    {
      sub_10001B860(v13);
      v43, v26, v27, v28, v29, v30, v31, v32;
      v33 = v44;
      sub_10002A660(v41);
      sub_1000292E8(v33);
      return;
    }
  }

  v21 = v16;
  v22 = v17;
  if (v17)
  {
LABEL_13:
    v17 = (v22 - 1) & v22;
    v23 = *(*(v13 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= ((v15 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v22 = *(v14 + 8 * v16);
    ++v21;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_10002A490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A4A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002A50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_1000F5104(&unk_10093F290, &qword_10079DBD0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10002A660(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8, v16);
  v22[1] = *(v2 + *(v17 + 32));
  sub_100026CD8(v2, v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  sub_10002A4A8(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  *(v19 + ((v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_10002AB2C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F1DE0;
  v20 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_10001BC00(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v23);
}

uint64_t sub_10002A9E8()
{
  v1 = (type metadata accessor for RDStoreControllerNotificationCenter.Observer(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  *(v5 + v1[7]), v7, v8, v9, v10, v11, v12, v13;

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

id sub_10002AAF8(uint64_t a1)
{
  result = [*(a1 + 32) _isInICloudAccount];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_10002AB2C()
{
  v1 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  return (*(v0 + *(v1 + 28) + v3))(*(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10002ABC8()
{
  v0 = type metadata accessor for Logger();
  sub_100006654(v0, &unk_1009359A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Notifying stores did change", v3, 2u);
  }

  v4 = _REMStoreChangedNotificationName;

  return notify_post(v4);
}

void sub_10002AC8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100951C70);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "RDDataAccess: Received store controller changes!", v7, 2u);
    }

    [v3 remindersDatabaseDidChange];
  }

  else
  {
    if (qword_100936860 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100951C70);
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, v9, "Received store changes with deallocated RDDataAccess!", v10, 2u);
    }
  }
}

void sub_10002AE64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = a1 + 1;
    if ((a1 + 1) <= 0x22)
    {
      if (((1 << v3) & 0x40401) != 0)
      {
        if (qword_100935FE0 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_100006654(v4, qword_100945260);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v5, v6, "RDWidgetRefreshEngine: requested widget refresh", v7, 2u);
        }

LABEL_8:

        dispatch thunk of REMWidgetRefresh.refresh()();

        return;
      }

      if (((1 << v3) & 0x404000000) != 0)
      {
        if (qword_100935FE0 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_100006654(v8, qword_100945260);
        v5 = Logger.logObject.getter();
        v9 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v5, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v5, v9, "RDWidgetRefreshEngine: requested high priority widget refresh", v10, 2u);
        }

        goto LABEL_8;
      }
    }

    if (qword_100935FE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100945260);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v12, v13, "RDWidgetRefreshEngine: Unknown QoS. {qualityOfService: %{public}ld}", v14, 0xCu);
    }
  }
}

void sub_10002B31C(_TtC7remindd19RDXPCStorePerformer *result, unint64_t a2, uint64_t a3, void (*a4)(id *, id *, uint64_t))
{
  v21 = result;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v18)
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a2 + 8 * j + 32);
      }

      v9 = result;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v20 = result;
      a4(&v21, &v20, a3);

      if (v4)
      {
        v21, v11, v12, v13, v14, v15, v16, v17;
        return;
      }

      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v18 = result;
    i = _CocoaArrayWrapper.endIndex.getter();
  }
}

void sub_10002B448(void *a1, id *a2, uint64_t *a3)
{
  v4 = *a2;
  v77 = [*a2 account];
  _StringGuts.grow(_:)(33);
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  v75 = [v4 remObjectID];
  sub_1000F5104(&unk_10093AF40, &unk_100795790);
  v12 = Optional.descriptionOrNil.getter();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);
  v14, v16, v17, v18, v19, v20, v21, v22;
  v23._countAndFlagsBits = 125;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  sub_1000F5104(&unk_100939D70, &qword_10079C100);
  Optional.tryUnwrap(_:file:line:)();
  0x80000001007FC310, v24, v25, v26, v27, v28, v29, v30;

  if (!v3)
  {
    v31 = [v78 remObjectID];
    _StringGuts.grow(_:)(46);
    0xE000000000000000, v32, v33, v34, v35, v36, v37, v38;
    v39 = [v78 objectID];
    v40 = [v39 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44._countAndFlagsBits = v41;
    v44._object = v43;
    String.append(_:)(v44);
    v43, v45, v46, v47, v48, v49, v50, v51;

    v52._countAndFlagsBits = 125;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    Optional.tryUnwrap(_:file:line:)();
    0x80000001007FC330, v53, v54, v55, v56, v57, v58, v59;

    v60 = sub_10002B828(v78, *a3);
    if (v60)
    {
      v61 = v60;
      v62 = a1;
    }

    else
    {
      v64 = sub_100019990(v78);
      v61 = v64;
      v65 = *a3;
      if ((*a3 & 0xC000000000000001) != 0)
      {
        if (v65 < 0)
        {
          v66 = *a3;
        }

        else
        {
          v66 = v65 & 0xFFFFFFFFFFFFFF8;
        }

        v67 = v64;
        v68 = v78;
        v69 = __CocoaDictionary.count.getter();
        if (__OFADD__(v69, 1))
        {
          __break(1u);
          return;
        }

        *a3 = sub_10021E4F8(v66, v69 + 1);
      }

      else
      {
        v70 = v64;
        v71 = v78;
      }

      v62 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = *a3;
      sub_10002B974(v61, v78, isUniquelyReferenced_nonNull_native);
      *a3 = v76;

      v60 = 0;
    }

    v63 = v60;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

void *sub_10002B850(void *a1, uint64_t a2, uint64_t (*a3)(void *), unint64_t *a4, void *a5)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = a1;
    v8 = __CocoaDictionary.lookup(_:)();

    if (v8)
    {
      sub_1000060C8(0, a4, a5);
      swift_dynamicCast();
      return v15;
    }
  }

  else if (*(a2 + 16))
  {
    v11 = a3(a1);
    if (v12)
    {
      v13 = *(*(a2 + 56) + 8 * v11);
      v14 = v13;
      return v13;
    }
  }

  return 0;
}

unint64_t sub_10002B924(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10002BD60(a1, v4, &qword_1009391E0, REMObjectID_ptr);
}

id sub_10002B974(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
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
      sub_10002BD4C(v13, a3 & 1);
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_1003731AC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}