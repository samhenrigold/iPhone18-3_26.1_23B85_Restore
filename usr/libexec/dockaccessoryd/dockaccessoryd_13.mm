uint64_t sub_1001A167C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (!v13)
  {
    sub_10019ECB0(result, 1);
    return sub_1001A1578(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1001A1758(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

BOOL sub_1001A1870(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = v3;
    v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v9 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v9 + 4);

    v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
    swift_beginAccess();
    if (!*(*(v5 + v10) + 16) || (, sub_10016D4D0(a1, a2), v12 = v11, , (v12 & 1) == 0))
    {
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21[0] = *(v5 + v10);
      *(v5 + v10) = 0x8000000000000000;
      sub_1001EB814(_swiftEmptyArrayStorage, a1, a2, isUniquelyReferenced_nonNull_native);

      *(v5 + v10) = v21[0];
      swift_endAccess();
    }

    v14 = sub_10018379C(v22);
    v16 = sub_10018D16C(v21, a1, a2);
    if (*v15)
    {
      v17 = v15;
      v18 = a3;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v16)(v21, 0);
      (v14)(v22, 0);
    }

    else
    {
      (v16)(v21, 0);
      (v14)(v22, 0);
    }

    v19 = *(v5 + v8);

    os_unfair_lock_unlock(v19 + 4);
  }

  return a3 != 0;
}

void sub_1001A1AA8(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v28 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v3 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v3 + 4);

    v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
    swift_beginAccess();
    v5 = *(v2 + v4);
    v6 = v5 + 64;
    v7 = 1 << *(v5 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v5 + 64);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    v32 = v4;
    v33 = v2;
    v30 = v5 + 64;
    v31 = v5;
    v29 = v10;
    while (v9)
    {
LABEL_12:
      v36 = v9;
      v14 = __clz(__rbit64(v9)) | (v11 << 6);
      v15 = (*(v5 + 48) + 16 * v14);
      v16 = v15[1];
      v34 = *v15;
      v17 = *(*(v5 + 56) + 8 * v14);
      if (v17 >> 62)
      {
        v26 = v15[1];
        v18 = _CocoaArrayWrapper.endIndex.getter();
        v16 = v26;
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v35 = v16;

      if (v18)
      {
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          sub_100095B94(0, &qword_1002AB450, NSXPCConnection_ptr);
          v23 = v21;
          v24 = a1;
          v25 = static NSObject.== infix(_:_:)();

          if (v25)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v19;
          if (v22 == v18)
          {
            v4 = v32;
            v2 = v33;
            v6 = v30;
            v5 = v31;
            v10 = v29;
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_6:
      v9 = (v36 - 1) & v36;

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v2 + v4);
      *(v2 + v4) = 0x8000000000000000;
      sub_1001EB814(_swiftEmptyArrayStorage, v34, v35, isUniquelyReferenced_nonNull_native);

      *(v2 + v4) = v38;
      swift_endAccess();
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v27 = *(v2 + v28);

        os_unfair_lock_unlock(v27 + 4);

        return;
      }

      v9 = *(v6 + 8 * v13);
      ++v11;
      if (v9)
      {
        v11 = v13;
        goto LABEL_12;
      }
    }

LABEL_31:
    __break(1u);
  }
}

uint64_t sub_1001A1DCC(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_100095B94(0, &qword_1002A9840, CBService_ptr);
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

uint64_t sub_1001A1EDC(uint64_t a1, uint64_t a2)
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

  sub_10019ED6C(result, 1);

  return sub_1001A1DCC(v5, v3, 0);
}

uint64_t sub_1001A1FDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10019D898(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1001A2088(uint64_t a1, void *a2, void *a3, const char *a4)
{
  v6 = v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v14 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v14 + 4);

  swift_beginAccess();
  v15 = a2;
  sub_1001DAB74(a2, a1);
  swift_endAccess();
  sub_10019051C();
  v17 = v16;
  v18 = *(v6 + v13);

  os_unfair_lock_unlock(v18 + 4);

  if (v17 == 1)
  {
    (*(v10 + 16))(v12, v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, a4, v21, 2u);
    }

    (*(v10 + 8))(v12, v9);
    sub_10019A4F0(1);
  }

  return 1;
}

void *sub_1001A229C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  DockCoreInfo.identifier.getter();
  v11 = UUID.description.getter();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v30 = v11;
  v31 = v13;

  v14._countAndFlagsBits = 45;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);

  v15._countAndFlagsBits = a2;
  v15._object = a3;
  String.append(_:)(v15);

  v16 = v30;
  v17 = v31;
  v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__cacheLock;
  v19 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__cacheLock);

  os_unfair_lock_lock(v19 + 4);

  v20 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__actuationFeedbackCache;
  swift_beginAccess();
  v21 = *(v4 + v20);
  if (*(v21 + 16) && (, v22 = sub_10016D4D0(v16, v17), v24 = v23, , (v24 & 1) != 0))
  {
    v25 = *(*(v21 + 56) + 8 * v22);
    v26 = v25;
  }

  else
  {

    v25 = 0;
  }

  v27 = *(v4 + v18);

  os_unfair_lock_unlock(v27 + 4);

  return v25;
}

unint64_t sub_1001A24A0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A258C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A2670(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1001A2748()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001A2790()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001A27D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001A27EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001A2828(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

void sub_1001A2868(void *a1, void *a2)
{
  if (a2)
  {
  }
}

void sub_1001A28A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1001A28F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001A2940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A139C;

  return sub_100190C78(a1, v4, v5, v7, v6);
}

uint64_t sub_1001A2A00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001A2A50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10009862C;

  return sub_10018E3E8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001A2B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002AB4A0, &qword_10023F098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A2C1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A139C;

  return sub_10018AFC0(a1, v4, v5, v7, v6);
}

uint64_t sub_1001A2CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A2D4C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1001A2DD8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001A2E40(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return sub_1000BAA84(result, a2);
  }

  return result;
}

uint64_t sub_1001A2E80(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_1001A2F10()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001A2FAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001A2FF4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001A3034()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001A30A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1001A3180(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001A3250(uint64_t a1)
{
  sub_1001A332C(319);
  if (v1 <= 0x3F)
  {
    sub_1001A3394(319, &qword_1002AB538, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1001A33E4(319, &unk_1002AB540, &type metadata accessor for Errors);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001A332C(uint64_t a1)
{
  if (!qword_1002AB530)
  {
    sub_100095B94(255, &qword_1002AB450, NSXPCConnection_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002AB530);
    }
  }
}

void sub_1001A3394(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1001A33E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1001A34D4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      sub_100095B94(0, &qword_1002A7398, UARPAccessory_ptr);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_10016D780(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

void *sub_1001A359C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for AccessoryFirmwareUpdateSession(0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_10016D7F8(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_1001A3650(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_10016D8E0(a1);
    if (v2)
    {
    }
  }
}

uint64_t sub_1001A36A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_1001AC908(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_1001AC8A4(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = Data._Representation.subscript.getter();
    v14 = v13;
    result = sub_1000A0D2C(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001A37EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100095B94(0, &qword_1002ABA58, off_100271C68);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t *sub_1001A3890@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void sub_1001A38B4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5 != *(a2 + 16))
  {
    return;
  }

  v6 = *(v4 + 32);
  if (!v6)
  {
    return;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v25 = v6;
  v13 = [v12 hapCharacteristicForCBCharacteristic:a4];
  if (!v13)
  {
    v15 = v25;
LABEL_10:

    return;
  }

  v24 = v13;
  if (*(v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingEnabled) != 1)
  {

    v15 = v24;
    goto LABEL_10;
  }

  if ((a3 & 0x100) != 0)
  {
    v14 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingHeader);
  }

  else
  {
    v14 = a3;
  }

  sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10023C170;
  *(v16 + 32) = v14;
  v17 = sub_100104264(v16);
  v19 = v18;

  if (v5)
  {
    v20 = (a2 + 32);
    v21 = (a1 + 32);
    while (1)
    {
      v22 = *v20 * 1000.0;
      if (COERCE__INT64(fabs(v22)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v22 <= -32769.0)
      {
        goto LABEL_25;
      }

      if (v22 >= 32768.0)
      {
        goto LABEL_26;
      }

      if ((*v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (*v21 > 0xFFuLL)
      {
        goto LABEL_28;
      }

      Data._Representation.append(contentsOf:)();
      ++v21;
      ++v20;
      if (!--v5)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_22:
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v12 writeWithoutResponse:isa toCharacteristic:v24];

    sub_1000A0D2C(v17, v19);
  }
}

void sub_1001A3B38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    (*(v9 + 16))(v11, a3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v8);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33[0] = v16;
      *v15 = 136315138;
      *&v30 = a2;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v17 = String.init<A>(describing:)();
      v19 = sub_1000952D4(v17, v18, v33);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to read characteristic: %s", v15, 0xCu);
      sub_100095808(v16);
    }

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v26 = a1;
    v12 = [v26 metadata];
    if (v12)
    {

      if ([v26 value])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      v29[0] = v27;
      v29[1] = v28;
      if (*(&v28 + 1))
      {
        sub_100095274(&unk_1002ABA70, &qword_10023F3D8);
        if (swift_dynamicCast())
        {
          v21 = v26;
          if (*(&v31 + 1))
          {
            sub_1000A0D80(&v30, v33);
            sub_1000A09E0(v33, v33[3]);
            v22 = dispatch thunk of CustomStringConvertible.description.getter();
            v24 = v23;

            swift_beginAccess();
            *(a4 + 16) = v22;
            *(a4 + 24) = v24;

            sub_100095808(v33);
            return;
          }
        }

        else
        {
          v32 = 0;
          v30 = 0u;
          v31 = 0u;
          v21 = v26;
        }
      }

      else
      {

        sub_100095C84(v29, &qword_1002A9210, &unk_10023BE70);
        v30 = 0u;
        v31 = 0u;
        v32 = 0;
      }

      sub_100095C84(&v30, &qword_1002ABA68, &qword_10023F3D0);
    }

    else
    {
      v20 = v26;
    }
  }
}

void sub_1001A3EF4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, NSObject *a7)
{
  v13 = type metadata accessor for Logger();
  v14 = __chkstk_darwin(v13);
  v16 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v19 = &v49[-v17];
  v53 = a7;
  if (a2)
  {
    v20 = v18;
    (*(v18 + 16))(&v49[-v17], a3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v13);
    v21 = a4;
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v52 = v13;
      v25 = v24;
      v51 = swift_slowAlloc();
      v54 = v51;
      *v25 = 136315394;
      v26 = [v21 UUIDString];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v23;
      v29 = v28;

      v30 = sub_1000952D4(v27, v29, &v54);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      swift_getErrorValue();
      v31 = Error.localizedDescription.getter();
      v33 = sub_1000952D4(v31, v32, &v54);

      *(v25 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v50, "Error reading characteristic %s: %s", v25, 0x16u);
      swift_arrayDestroy();

      (*(v20 + 8))(v19, v52);
    }

    else
    {

      (*(v20 + 8))(v19, v13);
    }

LABEL_14:
    (a5)(0, a2);
    goto LABEL_15;
  }

  if (!a1)
  {
    v39 = v18;
    (*(v18 + 16))(v16, a3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v13);
    v40 = a4;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v54 = v51;
      *v43 = 136315138;
      v44 = [v40 UUIDString];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v13;
      v47 = v46;

      v48 = sub_1000952D4(v45, v47, &v54);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "Error reading characteristic %s: no results returned!", v43, 0xCu);
      sub_100095808(v51);

      (*(v39 + 8))(v16, v52);
    }

    else
    {

      (*(v39 + 8))(v16, v13);
    }

    a2 = 0;
    goto LABEL_14;
  }

  if (a1 >> 62)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (!v34)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
LABEL_15:
      dispatch_group_leave(v53);
      return;
    }
  }

  if (v34 >= 1)
  {
    v35 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(a1 + 8 * v35 + 32);
      }

      v37 = v36;
      ++v35;
      v38 = [v36 characteristic];
      a5();
    }

    while (v34 != v35);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1001A43DC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 || a3 >> 60 == 15)
  {
    return;
  }

  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
LABEL_17:

      sub_1000A452C(a2, a3);
      return;
    }

    if (*(a2 + 16) == *(a2 + 24))
    {
      return;
    }

    goto LABEL_9;
  }

  if (v6)
  {
    if (a2 == a2 >> 32)
    {
      return;
    }

LABEL_9:
    sub_1000B4F20(a2, a3);
    goto LABEL_10;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
  if (qword_1002A6738 != -1)
  {
    swift_once();
  }

  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1000A0CD8(a2, a3);
  v7 = _s14dockaccessoryd14MotionFeedbackV4dataACSg10Foundation4DataV_tcfC_0(a2, a3);
  if (!v7)
  {
    goto LABEL_17;
  }

  sub_1001A6E74(v7, v8);
  sub_1000A452C(a2, a3);
}

uint64_t sub_1001A456C(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001A4638, 0, 0);
}

uint64_t sub_1001A4638()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 4;
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_100095274(&qword_1002A9308, &qword_10023FF40);
  *v3 = v0;
  v3[1] = sub_1001A4744;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD000000000000021, 0x8000000100234B90, sub_1001B07C4, v2, v4);
}

uint64_t sub_1001A4744()
{

  return (_swift_task_switch)(sub_1001A485C, 0, 0);
}

uint64_t sub_1001A485C()
{
  v26 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[9] + 16);
  v4 = v0[7];
  if (v2)
  {
    v3(v0[11], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[11];
    v10 = v0[8];
    v9 = v0[9];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;

      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000952D4(v13, v14, &v25);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to issue start feedback: %s", v11, 0xCu);
      sub_100095808(v12);

      (*(v9 + 8))(v8, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    v3(v0[10], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[8];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Issued accessory start feedback!", v22, 2u);
    }

    else
    {
    }

    (*(v20 + 8))(v19, v21);
  }

  v23 = v0[1];

  return v23(v2 == 0);
}

uint64_t sub_1001A4B10(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001A4BDC, 0, 0);
}

uint64_t sub_1001A4BDC()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 8;
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_100095274(&qword_1002A9308, &qword_10023FF40);
  *v3 = v0;
  v3[1] = sub_1001A4CE8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD000000000000021, 0x8000000100234B90, sub_1001B07C4, v2, v4);
}

uint64_t sub_1001A4CE8()
{

  return (_swift_task_switch)(sub_1001A4E00, 0, 0);
}

uint64_t sub_1001A4E00()
{
  v26 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[9] + 16);
  v4 = v0[7];
  if (v2)
  {
    v3(v0[11], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[11];
    v10 = v0[8];
    v9 = v0[9];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;

      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000952D4(v13, v14, &v25);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to issue stop feedback: %s", v11, 0xCu);
      sub_100095808(v12);

      (*(v9 + 8))(v8, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    v3(v0[10], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[8];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Issued accessory stop feedback!", v22, 2u);
    }

    else
    {
    }

    (*(v20 + 8))(v19, v21);
  }

  v23 = v0[1];

  return v23(v2 == 0);
}

uint64_t sub_1001A50B4(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001A5180, 0, 0);
}

uint64_t sub_1001A5180()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 16;
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_100095274(&qword_1002A9308, &qword_10023FF40);
  *v3 = v0;
  v3[1] = sub_1001A528C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD000000000000021, 0x8000000100234B90, sub_1001B07C4, v2, v4);
}

uint64_t sub_1001A528C()
{

  return (_swift_task_switch)(sub_1001A53A4, 0, 0);
}

uint64_t sub_1001A53A4()
{
  v26 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[9] + 16);
  v4 = v0[7];
  if (v2)
  {
    v3(v0[11], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[11];
    v10 = v0[8];
    v9 = v0[9];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;

      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000952D4(v13, v14, &v25);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to issue begin startup command: %s", v11, 0xCu);
      sub_100095808(v12);

      (*(v9 + 8))(v8, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    v3(v0[10], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[8];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Issued accessory begin startup command!", v22, 2u);
    }

    else
    {
    }

    (*(v20 + 8))(v19, v21);
  }

  v23 = v0[1];

  return v23(v2 == 0);
}

uint64_t sub_1001A5658(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = v2;
  v4 = type metadata accessor for Logger();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001A5724, 0, 0);
}

uint64_t sub_1001A5724()
{
  v1 = TrackerStateEvent.rawValue.getter();
  if (v1 == TrackerStateEvent.rawValue.getter())
  {
    v2 = 32;
  }

  else
  {
    v3 = TrackerStateEvent.rawValue.getter();
    if (v3 == TrackerStateEvent.rawValue.getter())
    {
      v2 = 64;
    }

    else
    {
      v4 = TrackerStateEvent.rawValue.getter();
      if (v4 == TrackerStateEvent.rawValue.getter())
      {
        v2 = 96;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  v5 = v0[8];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[14] = v7;
  v8 = sub_100095274(&qword_1002A9308, &qword_10023FF40);
  *v7 = v0;
  v7[1] = sub_1001A5894;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD000000000000021, 0x8000000100234B90, sub_1001AEBB8, v6, v8);
}

uint64_t sub_1001A5894()
{

  return (_swift_task_switch)(sub_1001A59AC, 0, 0);
}

uint64_t sub_1001A59AC()
{
  v26 = v0;
  v1 = v0[9];
  v2 = v0[5];
  v3 = *(v0[10] + 16);
  v4 = v0[8];
  if (v2)
  {
    v3(v0[12], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[12];
    v10 = v0[9];
    v9 = v0[10];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;

      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000952D4(v13, v14, &v25);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to issue begin startup command: %s", v11, 0xCu);
      sub_100095808(v12);

      (*(v9 + 8))(v8, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }
  }

  else
  {
    v3(v0[11], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v1);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[9];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Issued accessory begin startup command!", v22, 2u);
    }

    else
    {
    }

    (*(v20 + 8))(v19, v21);
  }

  v23 = v0[1];

  return v23(v2 == 0);
}

uint64_t sub_1001A5C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v4 = sub_100095274(&qword_1002ABA60, &unk_10023F3C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v22[3] = &type metadata for UInt64;
  v22[0] = a3;
  v8 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v9 = swift_allocObject();
  v19 = xmmword_10023C170;
  *(v9 + 16) = xmmword_10023C170;
  *(v9 + 56) = &type metadata for UInt32;
  *(v9 + 64) = &protocol witness table for UInt32;
  *(v9 + 32) = 264;
  String.init(format:_:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v8 UUIDWithString:v10];

  v12 = swift_allocObject();
  *(v12 + 16) = v19;
  *(v12 + 56) = &type metadata for UInt32;
  *(v12 + 64) = &protocol witness table for UInt32;
  v13 = v20;
  *(v12 + 32) = 256;
  String.init(format:_:)();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v8 UUIDWithString:v14];

  (*(v5 + 16))(v7, v13, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  sub_1001AA1A4(v22, v11, v15, sub_1001AEC54, v17);

  return sub_100095808(v22);
}

uint64_t sub_1001A5F38(uint64_t a1, uint64_t a2)
{
  swift_errorRetain();
  sub_100095274(&qword_1002ABA60, &unk_10023F3C0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001A5F8C(id *a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  *&v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v31 - *&v8;
  v10 = MotionFeedback.encode()(a1, a2, v8);
  if (v11 >> 60 == 15)
  {
    return 0;
  }

  v12 = *(v2 + 32);
  if (!v12)
  {
    goto LABEL_13;
  }

  v36 = v10;
  v37 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    v10 = v36;
    v11 = v37;
LABEL_13:
    sub_1000A452C(v10, v11);
    return 0;
  }

  v14 = v13;
  v35 = v12;
  v32 = v14;
  result = [v14 primaryAccessory];
  v34 = result;
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v17 = swift_allocObject();
  v33 = xmmword_10023C170;
  *(v17 + 16) = xmmword_10023C170;
  *(v17 + 56) = &type metadata for UInt32;
  *(v17 + 64) = &protocol witness table for UInt32;
  *(v17 + 32) = 272;
  String.init(format:_:)();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v16 UUIDWithString:v18];

  v20 = [v19 UUIDString];
  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v33;
  *(v21 + 56) = &type metadata for UInt32;
  *(v21 + 64) = &protocol witness table for UInt32;
  *(v21 + 32) = 512;
  String.init(format:_:)();
  v22 = String._bridgeToObjectiveC()();

  v23 = [v16 UUIDWithString:v22];

  v24 = [v23 UUIDString];
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  v25 = v34;
  v26 = [v34 characteristicOfType:v20 serviceType:v24];

  if (!v26)
  {
    sub_1000A452C(v36, v37);

    return 0;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v32 writeWithoutResponse:isa toCharacteristic:v26];

  (*(v6 + 16))(v9, v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v5);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Sent motion feedback to accessory!", v30, 2u);

    sub_1000A452C(v36, v37);
  }

  else
  {
    sub_1000A452C(v36, v37);
  }

  (*(v6 + 8))(v9, v5);
  return 1;
}

void sub_1001A63E8(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v9 = qword_1002B1CF0;
  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v11 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v11 + 4);

  v12 = *(v9 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v13 = *(v9 + v10);
  v54 = v12;

  os_unfair_lock_unlock(v13 + 4);

  if (v12)
  {
    type metadata accessor for Actuator();
    static Actuator.Yaw.getter();
    v53 = dispatch thunk of DockCoreAccessory.getActuator(name:)();

    if (v53)
    {
      static Actuator.Pitch.getter();
      v14 = dispatch thunk of DockCoreAccessory.getActuator(name:)();

      if (v14)
      {
        v15 = [a1 attitude];
        [v15 quaternion];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v56.x = v17;
        v56.y = v19;
        v56.z = v21;
        v56.w = v23;
        simd_quatd.init(_:)(v24, v56);
        v26 = vnegq_f64(v25);
        v28 = vmulq_f64(v27, xmmword_10023E590);
        v29 = vextq_s8(v28, vnegq_f64(v28), 8uLL);
        v30 = vmlaq_f64(vmulq_f64(v25, 0), 0, vextq_s8(v26, v25, 8uLL));
        v31 = vaddq_f64(vextq_s8(v25, v26, 8uLL), vmlaq_f64(vmulq_f64(v28, 0), 0, v29));
        v32 = vaddq_f64(v29, v30);
        v33 = vnegq_f64(v31);
        v34 = vextq_s8(v32, vnegq_f64(v32), 8uLL);
        v52 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v32, v27, 1), v34, v27.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v33, v25, 1), vextq_s8(v31, v33, 8uLL), v25.f64[0]));
        v35 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v31, v27, 1), vextq_s8(v33, v31, 8uLL), v27.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v32, v25, 1), v34, v25.f64[0]));
        v36 = sqrt(vmuld_n_f64(v35.f64[0], v35.f64[0]) + vmuld_lane_f64(v35.f64[1], v35, 1));
        v37 = atan2(v35.f64[1], v35.f64[0]);
        v38 = atan2(v52.f64[0], v36);
        v39 = v53;
        v40 = dispatch thunk of Component.id.getter();

        v41 = v14;
        v42 = dispatch thunk of Component.id.getter();

        v43 = -v38;
        sub_100095274(&qword_1002A8A50, &qword_10023D988);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10023AAC0;
        *(inited + 32) = v40;
        *(inited + 40) = v37;
        *(inited + 48) = v42;
        *(inited + 56) = v43;
        sub_1001A5F8C(inited, _swiftEmptyArrayStorage);
        swift_setDeallocating();
        (*(v6 + 16))(v8, v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v5);
        v45 = v39;
        v46 = v41;
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 134218752;
          *(v49 + 4) = dispatch thunk of Component.id.getter();

          *(v49 + 12) = 2048;
          *(v49 + 14) = v37;
          *(v49 + 22) = 2048;
          *(v49 + 24) = dispatch thunk of Component.id.getter();

          *(v49 + 32) = 2048;
          *(v49 + 34) = v43;
          _os_log_impl(&_mh_execute_header, v47, v48, "Sent IMU calibration yaw(%ld)=%f pitch(%ld)=%f", v49, 0x2Au);

          v50 = v45;
        }

        else
        {

          v50 = v46;
          v46 = v45;
          v47 = v45;
        }

        (*(v6 + 8))(v8, v5);
        return;
      }

      v51 = v53;
    }

    else
    {
      v51 = v54;
    }
  }
}

uint64_t sub_1001A68A4(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 0.0)
  {
    v8 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_lastImuStamp;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v8, v4);
    Date.timeIntervalSinceNow.getter();
    v10 = v9;
    (*(v5 + 8))(v7, v4);
    if (fabs(v10) < a1)
    {
      return 0;
    }
  }

  Date.init()();
  v12 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_lastImuStamp;
  swift_beginAccess();
  (*(v5 + 40))(v2 + v12, v7, v4);
  swift_endAccess();
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  sub_100095274(&qword_1002A9968, &qword_10023E5B0);
  OS_dispatch_queue.sync<A>(execute:)();
  v14 = v16;
  if (v16)
  {
    sub_1001A63E8(v16, v13);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sendImu) = 1;

    sub_100185F9C(0xD00000000000001DLL, 0x8000000100234B70, sub_1001AEBB0, v2);
  }

  return 1;
}

uint64_t sub_1001A6B1C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakInit();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sendImu);

    if (v12 == 1)
    {
      if (swift_weakLoadStrong())
      {
        sub_1001A63E8(a1, v13);
      }

      v14 = swift_weakLoadStrong();
      if (v14)
      {
        *(v14 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sendImu) = 0;
      }
    }
  }

  v15 = swift_weakLoadStrong();
  if (!v15 || (v16 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_lastImuStamp, v17 = v15, swift_beginAccess(), (*(v8 + 16))(v10, v17 + v16, v7), , Date.timeIntervalSinceNow.getter(), v19 = v18, (*(v8 + 8))(v10, v7), fabs(v19) > 5.0))
  {
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      (*(v4 + 16))(v6, v20 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v3);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "sendIMUPosition timeout exceeded. Unregistering imu motion manager", v23, 2u);
      }

      (*(v4 + 8))(v6, v3);
    }

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    sub_100187174(0xD00000000000001DLL, 0x8000000100234B70);
  }

  return swift_weakDestroy();
}

uint64_t sub_1001A6E74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock;
  v6 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);

  os_unfair_lock_lock(v6 + 4);
  sub_1000F003C(v7);
  os_unfair_lock_unlock(v6 + 4);

  v9 = *(a1 + 16);
  if (v9)
  {
    v32 = a2;
    sub_1001D7228(0, v9, 0);
    v10 = a1;
    v11 = (a1 + 32);
    v12 = _swiftEmptyArrayStorage[2];
    v13 = v9;
    do
    {
      v15 = *v11;
      v11 += 2;
      v14 = v15;
      v16 = _swiftEmptyArrayStorage[3];
      if (v12 >= v16 >> 1)
      {
        sub_1001D7228((v16 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = (v12 + 1);
      _swiftEmptyArrayStorage[v12++ + 4] = v14;
      --v13;
    }

    while (v13);
    v8 = sub_1001D7148(0, v9, 0);
    v17 = _swiftEmptyArrayStorage[2];
    v18 = (v10 + 40);
    do
    {
      v19 = *v18;
      v20 = _swiftEmptyArrayStorage[3];
      if (v17 >= v20 >> 1)
      {
        v8 = sub_1001D7148((v20 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = (v17 + 1);
      _swiftEmptyArrayStorage[v17 + 4] = v19;
      v18 += 2;
      ++v17;
      --v9;
    }

    while (v9);
    v3 = v2;
    a2 = v32;
  }

  v21 = *(a2 + 16);
  if (v21)
  {
    v8 = sub_1001D7148(0, v21, 0);
    v22 = _swiftEmptyArrayStorage[2];
    v23 = (a2 + 40);
    do
    {
      v24 = *v23;
      v25 = _swiftEmptyArrayStorage[3];
      if (v22 >= v25 >> 1)
      {
        v8 = sub_1001D7148((v25 > 1), v22 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = (v22 + 1);
      _swiftEmptyArrayStorage[v22 + 4] = v24;
      v23 += 2;
      ++v22;
      --v21;
    }

    while (v21);
  }

  v26 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback);
  if (v26)
  {
    v27 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback + 8);

    v26(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
    v8 = sub_1000BAA84(v26, v27);
  }

  v28 = *(v3 + v33);
  v29 = __chkstk_darwin(v8);
  __chkstk_darwin(v29);

  os_unfair_lock_lock(v28 + 4);
  sub_100137D60(v30);
  os_unfair_lock_unlock(v28 + 4);
}

void sub_1001A71B8(uint64_t a1)
{
  v2 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_feedbackCallbacks;
  swift_beginAccess();
  if (!*(*(a1 + v9) + 16) && !*(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback))
  {
    (*(v6 + 16))(v8, a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v5);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Stopping feedback. No active feedback receivers and startup is not running", v12, 2u);
    }

    (*(v6 + 8))(v8, v5);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a1;

    sub_1001B6410(0, 0, v4, &unk_10023F3B8, v14);
  }
}

uint64_t sub_1001A7444()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10009862C;

  return sub_1001A4B10(v1, v2);
}

void sub_1001A74D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_feedbackCallbacks;
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(v8 + 56) + ((v13 << 10) | (16 * v15));
    v17 = *v16;
    if (*v16)
    {
      v18 = *(v16 + 8);
      v22 = a2;
      v20 = a4;
      v21 = a3;

      v17(&v22, &v21, &v20);
      sub_1000BAA84(v17, v18);
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1001A761C(char a1)
{
  v3 = type metadata accessor for ComponentType();
  v186 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v175 = &v148 - v8;
  v9 = __chkstk_darwin(v7);
  v173 = &v148 - v10;
  v11 = __chkstk_darwin(v9);
  v177 = &v148 - v12;
  __chkstk_darwin(v11);
  v178 = &v148 - v13;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 1);
  v16 = __chkstk_darwin(v14);
  v18 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v174 = &v148 - v20;
  v21 = __chkstk_darwin(v19);
  v172 = &v148 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v148 - v24;
  __chkstk_darwin(v23);
  v27 = &v148 - v26;
  v28 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
  swift_beginAccess();
  v179 = v28;
  v29 = *(&v1->isa + v28);
  v30 = v1;
  if (*(v29 + 16) && (a1 & 1) == 0)
  {
    (*(v15 + 2))(v27, v1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v14);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Sensors already enumerated, skipping", v33, 2u);
    }

    return (*(v15 + 1))(v27, v14);
  }

  v35 = sub_1001F2F38(_swiftEmptyArrayStorage);
  *(&v1->isa + v179) = v35;

  isa = v1[4].isa;
  if (isa && (v167 = [(objc_class *)isa primaryAccessory]) != 0)
  {
    v37 = *(v15 + 2);
    v159 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger;
    v158 = v15 + 16;
    v157 = v37;
    v37(v25, v1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v14);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Enumerating sensor services for accessory", v40, 2u);
    }

    v168 = v30;

    v42 = *(v15 + 1);
    v41 = v15 + 8;
    v160 = v42;
    v42(v25, v14);
    v43 = [v167 services];
    if (v43)
    {
      v44 = v43;
      sub_100095B94(0, &qword_1002A7010, off_100271C78);
      v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v161 = v14;
      v156 = v41;
      v166 = v3;
      v162 = v6;
      if (v45 >> 62)
      {
        goto LABEL_72;
      }

      v184 = v45 & 0xFFFFFFFFFFFFFF8;
      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v47)
      {
LABEL_73:
      }

LABEL_13:
      v48 = 0;
      v155 = 0;
      v183 = v45 & 0xC000000000000001;
      v165 = v186 + 16;
      v164 = v186 + 8;
      *&v46 = 136315394;
      v154 = v46;
      v182 = v45;
      v181 = v47;
      v163 = v186 + 104;
      v176 = enum case for ComponentType.Actuator(_:);
      while (1)
      {
        if (v183)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v50 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v48 >= *(v184 + 16))
          {
            goto LABEL_71;
          }

          v49 = *(v45 + 8 * v48 + 32);
          v50 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            v184 = v45 & 0xFFFFFFFFFFFFFF8;
            v47 = _CocoaArrayWrapper.endIndex.getter();
            if (!v47)
            {
              goto LABEL_73;
            }

            goto LABEL_13;
          }
        }

        v185 = v50;
        v186 = v49;
        v51 = [v49 type];
        if (!v51)
        {
          goto LABEL_76;
        }

        v52 = v51;
        v53 = [objc_opt_self() UUIDWithString:v51];

        v54 = [v53 data];
        v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        sub_1001A36A0(12, v55, v57, v193);
        v58 = v193[0];
        v59 = v193[1];
        v60 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
        v191 = v60;
        v192 = sub_1000E4D54(&qword_1002A9C30, &unk_1002A7B10, &unk_10023F3A0, &protocol conformance descriptor for <A> [A]);
        v189 = &off_100274CE8;
        v61 = sub_1000A09E0(&v189, v60);
        v62 = *v61;
        v63 = *(*v61 + 16);
        if (v63)
        {
          if (v63 <= 0xE)
          {
            memset(__dst, 0, sizeof(__dst));
            v188 = v63;
            memcpy(__dst, (v62 + 32), v63);
            v66 = *__dst;
            v67 = v180 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v188 << 16)) << 32);
            v180 = v67;
          }

          else
          {
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v64 = __DataStorage.init(bytes:length:)();
            v65 = v64;
            if (v63 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v66 = swift_allocObject();
              *(v66 + 16) = 0;
              *(v66 + 24) = v63;
              v67 = v65 | 0x8000000000000000;
            }

            else
            {
              v66 = v63 << 32;
              v67 = v64 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v66 = 0;
          v67 = 0xC000000000000000;
        }

        sub_100095808(&v189);
        v68 = sub_1001ACC84(v58, v59, v66, v67);
        sub_1000A0D2C(v66, v67);
        sub_1000A0D2C(v58, v59);
        if (!v68 || sub_10013C30C() < 0x300 || sub_10013C30C() > 0x320)
        {
          goto LABEL_32;
        }

        v69 = v166;
        v70 = swift_allocBox();
        v72 = v71;
        v170 = *v163;
        v170(v71, v176, v69);
        v73 = swift_allocObject();
        *(v73 + 16) = 0x726F746175746361;
        *(v73 + 24) = 0xE800000000000000;
        if (qword_1002A6758 != -1)
        {
          swift_once();
        }

        v74 = qword_1002B1C70;
        v75 = v168;

        v76 = v53;
        sub_1001ADDAC(v74, v76, v75, v75, v70, v73, v76);

        swift_beginAccess();
        v77 = *v165;
        v171 = v73;
        v169 = v70;
        v78 = v178;
        v77(v178, v72, v69);
        v79 = v177;
        v170(v177, v176, v69);
        sub_1001B0564(&qword_1002A9F50, &type metadata accessor for ComponentType, &protocol conformance descriptor for ComponentType);
        LODWORD(v170) = dispatch thunk of static Equatable.== infix(_:_:)();
        v80 = *v164;
        (*v164)(v79, v69);
        v80(v78, v69);
        if (v170)
        {

LABEL_32:

          ++v48;
          v81 = v185 == v181;
          goto LABEL_33;
        }

        v170 = v77;
        v151 = v76;
        v82 = v72;
        v83 = v171;
        swift_beginAccess();
        v84 = *(v83 + 16);
        v85 = *(v83 + 24);
        v86 = v155;
        v189 = v155;

        v87 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v88;
        v189 = v84;
        v190 = v85;

        v90._countAndFlagsBits = v87;
        v90._object = v89;
        String.append(_:)(v90);

        v92 = __OFADD__(v86, 1);
        v155 = (v86 + 1);
        v93 = v174;
        if (v92)
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
        }

        v95 = v189;
        v94 = v190;
        v96 = v168;
        v97 = sub_1001A95A4(v186, v91);
        v99 = v161;
        v14 = v170;
        v153 = v80;
        if (v98)
        {
          v100 = v98;
          v152 = v97;
          v101 = v172;
          v157(v172, v96 + v159, v161);

          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            v150 = v94;
            *v104 = v154;
            v149 = *(v83 + 16);
            v105 = v103;
            v106 = *(v83 + 24);

            v107 = sub_1000952D4(v149, v106, &v189);

            *(v104 + 4) = v107;
            *(v104 + 12) = 2080;
            *(v104 + 14) = sub_1000952D4(v152, v100, &v189);
            v108 = v105;
            v80 = v153;
            _os_log_impl(&_mh_execute_header, v102, v108, "Read service name for %s as '%s'", v104, 0x16u);
            swift_arrayDestroy();

            v160(v101, v161);
          }

          else
          {

            v160(v101, v99);
          }

          v94 = v100;
        }

        else
        {
          v152 = v95;
          v157(v93, v96 + v159, v161);

          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            v189 = v150;
            *v111 = v154;
            LODWORD(v149) = v110;
            v113 = *(v83 + 16);
            v112 = *(v83 + 24);

            v114 = sub_1000952D4(v113, v112, &v189);

            *(v111 + 4) = v114;
            *(v111 + 12) = 2080;

            v115 = v152;
            v116 = sub_1000952D4(v152, v94, &v189);

            *(v111 + 14) = v116;
            _os_log_impl(&_mh_execute_header, v109, v149, "No service name for %s, using generated %s", v111, 0x16u);
            swift_arrayDestroy();

            v160(v93, v161);
            v152 = v115;
          }

          else
          {

            v160(v93, v99);
          }
        }

        v117 = v173;
        v118 = v166;
        (v14)(v173, v82, v166);
        v30 = v179;
        if (!(*(&v168->isa + v179))[2])
        {
          goto LABEL_49;
        }

        sub_10016D8E0(v117);
        if ((v119 & 1) == 0)
        {
          break;
        }

        v120 = v94;

        v80(v117, v118);

        v121 = v168;
LABEL_50:
        v125 = v175;
        (v14)(v175, v82, v118);
        swift_beginAccess();
        v15 = v151;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v118;
        v18 = isUniquelyReferenced_nonNull_native;
        v128 = v162;
        (v14)(v162, v125, v127);
        v193[0] = *(&v30->isa + v121);
        v129 = v193[0];
        *(&v30->isa + v121) = 0x8000000000000000;
        v131 = sub_10016D8E0(v128);
        v132 = *(v129 + 16);
        v133 = (v130 & 1) == 0;
        v134 = v132 + v133;
        if (__OFADD__(v132, v133))
        {
          goto LABEL_75;
        }

        v135 = v130;
        if (*(v129 + 24) >= v134)
        {
          if (v18)
          {
            if ((v130 & 1) == 0)
            {
              goto LABEL_66;
            }
          }

          else
          {
            sub_1001EEDF8();
            if ((v135 & 1) == 0)
            {
              goto LABEL_66;
            }
          }
        }

        else
        {
          sub_1001E7668(v134, v18);
          v136 = sub_10016D8E0(v162);
          if ((v135 & 1) != (v137 & 1))
          {
            goto LABEL_78;
          }

          v131 = v136;
          if ((v135 & 1) == 0)
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }
        }

        v138 = *(*(v193[0] + 56) + 8 * v131);
        v139 = v15;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_100102A78(0, v138[2] + 1, 1, v138);
        }

        v141 = v138[2];
        v140 = v138[3];
        if (v141 >= v140 >> 1)
        {
          v138 = sub_100102A78((v140 > 1), v141 + 1, 1, v138);
        }

        v138[2] = (v141 + 1);
        v142 = &v138[3 * v141];
        v142[4] = v152;
        v142[5] = v120;
        v142[6] = v139;
        *(*(v193[0] + 56) + 8 * v131) = v138;

        v143 = v166;
        v144 = v153;
        v153(v162, v166);
        v144(v175, v143);

        *(&v30->isa + v168) = v193[0];
        swift_endAccess();

        swift_bridgeObjectRelease_n();
        v48 = v185;
        v81 = v185 == v181;
LABEL_33:
        v45 = v182;
        if (v81)
        {
          goto LABEL_73;
        }
      }

LABEL_49:
      v120 = v94;
      v80(v117, v118);
      v122 = v178;
      (v14)(v178, v82, v118);
      v121 = v168;
      swift_beginAccess();
      v123 = swift_isUniquelyReferenced_nonNull_native();
      v193[0] = *(v121 + v179);
      *(&v121->isa + v179) = 0x8000000000000000;
      sub_1001EC008(_swiftEmptyArrayStorage, v122, v123);
      v124 = v122;
      v30 = v179;
      v80(v124, v118);
      v14 = v170;
      *(&v30->isa + v121) = v193[0];
      swift_endAccess();
      goto LABEL_50;
    }

    __break(1u);
LABEL_78:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_67:
    (*(v15 + 2))(v18, v30 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v14);
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&_mh_execute_header, v145, v146, "No accessory to enumerate sensors from", v147, 2u);
    }

    return (*(v15 + 1))(v18, v14);
  }

  return result;
}

void sub_1001A8A58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v97 = a5;
  v98 = a6;
  v99 = a3;
  v8 = type metadata accessor for ComponentType();
  v96 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v100 = v11;
  v101 = v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v93 - v17;
  v19 = __chkstk_darwin(v16);
  v95 = &v93 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v93 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v93 - v25;
  __chkstk_darwin(v24);
  v28 = &v93 - v27;
  v29 = swift_projectBox();
  if (a2 || !a1)
  {
    v38 = v100;
    v37 = v101;
    (*(v101 + 16))(v28, v99 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v100);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v105[0] = v42;
      *v41 = 136315138;
      *&v103 = a2;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v43 = String.init<A>(describing:)();
      v45 = sub_1000952D4(v43, v44, v105);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unable to read characteristic: %s", v41, 0xCu);
      sub_100095808(v42);
    }

    (*(v37 + 8))(v28, v38);
    return;
  }

  v94 = v29;
  v30 = [a1 metadata];
  if (!v30)
  {
    goto LABEL_23;
  }

  v31 = v30;
  v32 = [v30 format];

  if (!v32)
  {
    goto LABEL_23;
  }

  v93 = v8;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (v33 == 0x38746E6975 && v35 == 0xE500000000000000)
  {

    v36 = v93;
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v36 = v93;
    if ((v46 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if ([a1 value])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v103 = 0u;
    v104 = 0u;
  }

  v105[0] = v103;
  v105[1] = v104;
  if (*(&v104 + 1))
  {
    if (swift_dynamicCast())
    {
      v47 = v102;
      switch(v102)
      {
        case 3u:
          v83 = v96;
          (*(v96 + 104))(v10, enum case for ComponentType.Battery(_:), v36);
          v84 = v94;
          swift_beginAccess();
          (*(v83 + 40))(v84, v10, v36);
          v85 = v97;
          swift_beginAccess();
          *(v85 + 16) = 0x79726574746162;
          *(v85 + 24) = 0xE700000000000000;

          v52 = v100;
          v51 = v101;
          v26 = v95;
          (*(v101 + 16))(v95, v99 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v100);
          v86 = v98;
          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            *v56 = 138412290;
            *(v56 + 4) = v86;
            *v57 = v86;
            v87 = v86;
            v59 = "Found Battery service %@";
            goto LABEL_34;
          }

LABEL_35:

          (*(v51 + 8))(v26, v52);
          return;
        case 2u:
          v72 = v96;
          (*(v96 + 104))(v10, enum case for ComponentType.Button(_:), v36);
          v73 = v94;
          swift_beginAccess();
          (*(v72 + 40))(v73, v10, v36);
          v74 = v97;
          swift_beginAccess();
          *(v74 + 16) = 0x6E6F74747562;
          *(v74 + 24) = 0xE600000000000000;

          v76 = v100;
          v75 = v101;
          (*(v101 + 16))(v23, v99 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v100);
          v77 = v98;
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            *v80 = 138412290;
            *(v80 + 4) = v77;
            *v81 = v77;
            v82 = v77;
            _os_log_impl(&_mh_execute_header, v78, v79, "Found Button service %@", v80, 0xCu);
            sub_100095C84(v81, &unk_1002A6F60, &unk_10023C4E0);
          }

          (*(v75 + 8))(v23, v76);
          break;
        case 1u:
          v48 = v96;
          (*(v96 + 104))(v10, enum case for ComponentType.LED(_:), v36);
          v49 = v94;
          swift_beginAccess();
          (*(v48 + 40))(v49, v10, v36);
          v50 = v97;
          swift_beginAccess();
          *(v50 + 16) = 6579564;
          *(v50 + 24) = 0xE300000000000000;

          v52 = v100;
          v51 = v101;
          (*(v101 + 16))(v26, v99 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v100);
          v53 = v98;
          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            *v56 = 138412290;
            *(v56 + 4) = v53;
            *v57 = v53;
            v58 = v53;
            v59 = "Found LED service %@";
LABEL_34:
            _os_log_impl(&_mh_execute_header, v54, v55, v59, v56, 0xCu);
            sub_100095C84(v57, &unk_1002A6F60, &unk_10023C4E0);

            goto LABEL_35;
          }

          goto LABEL_35;
        default:
          v89 = v100;
          v88 = v101;
          (*(v101 + 16))(v18, v99 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v100);
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 16777472;
            v92[4] = v47;
            _os_log_impl(&_mh_execute_header, v90, v91, "Found unknown sensor type %hhu, ignoring", v92, 5u);
          }

          (*(v88 + 8))(v18, v89);
          break;
      }

      return;
    }
  }

  else
  {
    sub_100095C84(v105, &qword_1002A9210, &unk_10023BE70);
  }

LABEL_23:
  v61 = v100;
  v60 = v101;
  (*(v101 + 16))(v15, v99 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v100);
  v62 = a1;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v105[0] = v66;
    *v65 = 136315138;
    v67 = [v62 type];

    if (!v67)
    {
      __break(1u);
      return;
    }

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v71 = sub_1000952D4(v68, v70, v105);

    *(v65 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v63, v64, "Characteristic not convertable to UInt8: %s", v65, 0xCu);
    sub_100095808(v66);
  }

  else
  {
  }

  (*(v60 + 8))(v15, v61);
}

uint64_t sub_1001A95A4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = v7 + 16;
  v61 = v7;
  *(v7 + 24) = 0;
  v9 = [a1 type];
  if (!v9)
  {
    goto LABEL_37;
  }

  v10 = v9;
  v54 = [objc_opt_self() UUIDWithString:v9];

  v11 = [a1 characteristics];
  if (!v11)
  {
LABEL_38:
    __break(1u);
  }

  v12 = v11;
  sub_100095B94(0, &qword_1002A92F0, off_100271C60);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = v2;
  v52 = v4;
  if (v13 >> 62)
  {
LABEL_33:
    v58 = v13 & 0xFFFFFFFFFFFFFF8;
    v60 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v58 = v13 & 0xFFFFFFFFFFFFFF8;
    v60 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger;
  v48 = v8;
  swift_beginAccess();
  v14 = 0;
  v59 = v13 & 0xC000000000000001;
  v50 = (v5 + 16);
  v49 = (v5 + 8);
  v15 = &selRef__sendControlPacket_forRequest_completionHandler_;
  v16 = &stru_10029A000;
  v57 = v13;
  while (v60 != v14)
  {
    if (v59)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *(v58 + 16))
      {
        goto LABEL_32;
      }

      v17 = *(v13 + 8 * v14 + 32);
    }

    v18 = v17;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v19 = [v17 v15[166]];
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = v19;
    v21 = [v19 v16[160].name];

    v22 = v15;
    v23 = [v18 v15[166]];
    if (!v23)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v24 = v23;
    v5 = [v23 v16[160].name];

    v25 = [v5 data];
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    sub_1001A36A0(12, v26, v28, v65);
    v30 = v65[0];
    v29 = v65[1];
    v31 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
    v64[3] = v31;
    v64[4] = sub_1000E4D54(&qword_1002A9C30, &unk_1002A7B10, &unk_10023F3A0, &protocol conformance descriptor for <A> [A]);
    v64[0] = &off_100274C28;
    v32 = sub_1000A09E0(v64, v31);
    v33 = *v32;
    v34 = *(*v32 + 16);
    if (v34)
    {
      if (v34 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v63 = v34;
        memcpy(__dst, (v33 + 32), v34);
        v37 = *__dst;
        v8 = v56 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v63 << 16)) << 32);
        v56 = v8;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v35 = __DataStorage.init(bytes:length:)();
        v36 = v35;
        if (v34 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v37 = swift_allocObject();
          *(v37 + 16) = 0;
          *(v37 + 24) = v34;
          v8 = v36 | 0x8000000000000000;
        }

        else
        {
          v37 = v34 << 32;
          v8 = v35 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v37 = 0;
      v8 = 0xC000000000000000;
    }

    sub_100095808(v64);
    v38 = sub_1001ACC84(v30, v29, v37, v8);
    sub_1000A0D2C(v37, v8);
    sub_1000A0D2C(v30, v29);

    v15 = v22;
    v16 = &stru_10029A000;
    if (v38)
    {
      v39 = [v18 v22[166]];
      if (!v39)
      {
        goto LABEL_36;
      }

      v40 = v39;
      v41 = [v39 UUID];

      v5 = sub_10013C30C();
      if (qword_1002A6768 != -1)
      {
        swift_once();
      }

      if (v5 == sub_10013C30C())
      {
        v8 = v53;
        v42 = v52;
        (*v50)(v55, v53 + v51, v52);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "Found sensor name characteristic, reading", v45, 2u);
          v16 = &stru_10029A000;
        }

        (*v49)(v55, v42);

        v5 = v61;

        sub_1001ACE74(v21, v54, v8, v8, v5, &unk_10027A1C8, sub_1001A9CD8, &unk_10027A1F0, sub_1001ACDF0, sub_1001ACDFC, &unk_10027A208);
      }
    }

    ++v14;
    v13 = v57;
    if (*(v61 + 3))
    {
      break;
    }
  }

  swift_beginAccess();
  v46 = *(v61 + 2);

  return v46;
}

void sub_1001A9CD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v42 - v13;
  if (a2 || !a1)
  {
    (*(v9 + 16))(v42 - v13, a3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v8);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v45[0] = v26;
      *v25 = 136315138;
      *&v43 = a2;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v27 = String.init<A>(describing:)();
      v29 = sub_1000952D4(v27, v28, v45);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to read characteristic: %s", v25, 0xCu);
      sub_100095808(v26);
    }

    (*(v9 + 8))(v14, v8);
    return;
  }

  v15 = [a1 metadata];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 format];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v18 == 0x676E69727473 && v20 == 0xE600000000000000)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if ([a1 value])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
      }

      v45[0] = v43;
      v45[1] = v44;
      if (*(&v44 + 1))
      {
        if (swift_dynamicCast())
        {
          v30 = v42[0];
          v31 = v42[1];
          swift_beginAccess();
          *(a4 + 16) = v30;
          *(a4 + 24) = v31;

          return;
        }
      }

      else
      {
        sub_100095C84(v45, &qword_1002A9210, &unk_10023BE70);
      }
    }
  }

LABEL_22:
  (*(v9 + 16))(v12, a3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v8);
  v32 = a1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v45[0] = v36;
    *v35 = 136315138;
    v37 = [v32 type];

    if (!v37)
    {
      __break(1u);
      return;
    }

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = sub_1000952D4(v38, v40, v45);

    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "Characteristic not convertable to UInt8: %s", v35, 0xCu);
    sub_100095808(v36);
  }

  else
  {
  }

  (*(v9 + 8))(v12, v8);
}

void sub_1001AA1A4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v50 = a4;
  v51 = a5;
  v53 = a2;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v5 + 32);
  if (v12 && (objc_opt_self(), (v13 = swift_dynamicCastObjCClass()) != 0))
  {
    v14 = v13;
    v15 = v12;
    if ([v14 isSecuritySessionOpen])
    {
      v47 = v9;
      v48 = v15;
      v49 = v8;
      v16 = [v14 primaryAccessory];
      if (v16)
      {
        v17 = v16;
        v18 = [v53 UUIDString];
        if (!v18)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = String._bridgeToObjectiveC()();
        }

        v19 = [a3 UUIDString];
        if (!v19)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = String._bridgeToObjectiveC()();
        }

        v20 = [v17 characteristicOfType:v18 serviceType:v19];

        v21 = v49;
        if (v20)
        {
          v22 = v49;
          sub_1000A09E0(a1, a1[3]);
          v23 = v20;
          v24 = _bridgeAnythingToObjectiveC<A>(_:)();
          v25 = [objc_opt_self() writeRequestTupleForCharacteristic:v23 value:v24 authorizationData:0 timedWrite:0 responseValue:0 type:0];

          swift_unknownObjectRelease();
          if (v25)
          {
            sub_100095274(&qword_1002A7390, &qword_10023BEF0);
            v26 = swift_allocObject();
            *(v26 + 16) = xmmword_10023BDA0;
            *(v26 + 32) = v25;
            sub_100095B94(0, &qword_1002ABA50, off_100271C70);
            v27 = v25;
            isa = Array._bridgeToObjectiveC()().super.isa;

            v29 = *(v5 + 40);
            aBlock[4] = v50;
            aBlock[5] = v51;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1001A37EC;
            aBlock[3] = &unk_10027A168;
            v30 = _Block_copy(aBlock);
            v31 = v29;

            [v14 writeCharacteristicValues:isa timeout:v31 completionQueue:v30 completionHandler:0.0];
            _Block_release(v30);

            return;
          }

          v21 = v22;
        }

        v34 = v47;
        (*(v47 + 16))(v11, v5 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v21);
        v35 = v53;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          aBlock[0] = v39;
          *v38 = 136315138;
          v40 = [v35 UUIDString];
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;

          v44 = sub_1000952D4(v41, v43, aBlock);

          *(v38 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v36, v37, "Unable to write characterisitic %s", v38, 0xCu);
          sub_100095808(v39);

          (*(v34 + 8))(v11, v49);
        }

        else
        {

          (*(v34 + 8))(v11, v21);
        }

        sub_1000B346C();
        swift_allocError();
        *v45 = 1;
        swift_willThrow();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_1000B346C();
      swift_allocError();
      *v33 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_1000B346C();
    swift_allocError();
    *v32 = 2;
    swift_willThrow();
  }
}

uint64_t sub_1001AA73C(uint64_t a1, uint64_t a2, char a3)
{
  v20 = a1;
  v21 = a2;
  v4 = sub_100095274(&qword_1002ABA48, &qword_10023F398);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v22[3] = &type metadata for Bool;
  LOBYTE(v22[0]) = a3;
  v8 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v9 = swift_allocObject();
  v19 = xmmword_10023C170;
  *(v9 + 16) = xmmword_10023C170;
  *(v9 + 56) = &type metadata for UInt32;
  *(v9 + 64) = &protocol witness table for UInt32;
  *(v9 + 32) = 259;
  String.init(format:_:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v8 UUIDWithString:v10];

  v12 = swift_allocObject();
  *(v12 + 16) = v19;
  *(v12 + 56) = &type metadata for UInt32;
  *(v12 + 64) = &protocol witness table for UInt32;
  v13 = v20;
  *(v12 + 32) = 512;
  String.init(format:_:)();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v8 UUIDWithString:v14];

  (*(v5 + 16))(v7, v13, v4);
  v16 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  (*(v5 + 32))(v17 + v16, v7, v4);

  sub_1001AA1A4(v22, v11, v15, sub_1001B05AC, v17);

  return sub_100095808(v22);
}

void sub_1001AAA28(uint64_t a1, uint64_t a2)
{
  v3 = TrajectoryCommand.Progress.encode()();
  if (v3)
  {
    v4 = v3;
    v5 = a2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback;
    v6 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback);
    if (v6)
    {
      v7 = *(v5 + 8);

      v6(v4);
      sub_1000BAA84(v6, v7);
    }
  }
}

uint64_t sub_1001AAAA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = a1;
  v23 = a2;
  v6 = sub_100095274(&qword_1002ABA48, &qword_10023F398);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v24[3] = &type metadata for Data;
  v24[0] = a3;
  v24[1] = a4;
  v10 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v11 = swift_allocObject();
  v21 = xmmword_10023C170;
  *(v11 + 16) = xmmword_10023C170;
  *(v11 + 56) = &type metadata for UInt32;
  *(v11 + 64) = &protocol witness table for UInt32;
  *(v11 + 32) = 265;
  sub_1000A0CD8(a3, a4);
  String.init(format:_:)();
  v12 = String._bridgeToObjectiveC()();

  v13 = [v10 UUIDWithString:v12];

  v14 = swift_allocObject();
  *(v14 + 16) = v21;
  *(v14 + 56) = &type metadata for UInt32;
  *(v14 + 64) = &protocol witness table for UInt32;
  *(v14 + 32) = 512;
  String.init(format:_:)();
  v15 = String._bridgeToObjectiveC()();
  v16 = v22;

  v17 = [v10 UUIDWithString:v15];

  (*(v7 + 16))(v9, v16, v6);
  v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v23;
  (*(v7 + 32))(v19 + v18, v9, v6);

  sub_1001AA1A4(v24, v13, v17, sub_1001AC424, v19);

  return sub_100095808(v24);
}

uint64_t sub_1001AADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = *(v12 + 16);
  v19 = a3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger;
  if (!a2)
  {
    v18(v15, v19, v11);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, a6, v31, 2u);
    }

    v32 = *(v12 + 8);
    v33 = v15;
    goto LABEL_8;
  }

  v18(&v35 - v16, v19, v11);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v20, v21))
  {

    v32 = *(v12 + 8);
    v33 = v17;
LABEL_8:
    v32(v33, v11);
    goto LABEL_9;
  }

  v22 = swift_slowAlloc();
  v37 = a4;
  v23 = v22;
  v24 = swift_slowAlloc();
  v36 = v11;
  v25 = v24;
  v38 = v24;
  *v23 = 136315138;
  swift_getErrorValue();
  v26 = Error.localizedDescription.getter();
  v28 = sub_1000952D4(v26, v27, &v38);

  *(v23 + 4) = v28;
  _os_log_impl(&_mh_execute_header, v20, v21, a5, v23, 0xCu);
  sub_100095808(v25);

  (*(v12 + 8))(v17, v36);
LABEL_9:
  LOBYTE(v38) = a2 == 0;
  sub_100095274(&qword_1002ABA48, &qword_10023F398);
  return CheckedContinuation.resume(returning:)();
}

void sub_1001AB0A0()
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v29 = sub_1001884E4(v1);

  if (v29)
  {
    v2 = *(v0 + 16);
    if (v2)
    {
      v3 = objc_opt_self();
      sub_100095274(&unk_1002A73A0, &qword_10023C670);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_10023C170;
      *(v4 + 56) = &type metadata for UInt32;
      *(v4 + 64) = &protocol witness table for UInt32;
      *(v4 + 32) = 512;
      v28 = v2;
      String.init(format:_:)();
      v5 = String._bridgeToObjectiveC()();

      v6 = [v3 UUIDWithString:v5];

      v27 = sub_10013EF7C(v6);
      if (v27)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_10023C170;
        *(v7 + 56) = &type metadata for UInt32;
        *(v7 + 64) = &protocol witness table for UInt32;
        *(v7 + 32) = 260;
        String.init(format:_:)();
        v8 = String._bridgeToObjectiveC()();

        v9 = [v3 UUIDWithString:v8];

        v10 = sub_10013F1B8(v9, v27);
        if (v10)
        {
          type metadata accessor for Actuator();
          static Actuator.Yaw.getter();
          static Actuator.Pitch.getter();
          static Actuator.Roll.getter();
          sub_1001D7228(0, 3, 0);

          v11 = dispatch thunk of DockCoreAccessory.getActuator(name:)();
          if (v11)
          {
            v12 = v11;
            v13 = dispatch thunk of Component.id.getter();
          }

          else
          {
            v13 = 0;
          }

          v16 = _swiftEmptyArrayStorage[2];
          v15 = _swiftEmptyArrayStorage[3];
          if (v16 >= v15 >> 1)
          {
            sub_1001D7228((v15 > 1), v16 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = (v16 + 1);
          _swiftEmptyArrayStorage[v16 + 4] = v13;

          v17 = dispatch thunk of DockCoreAccessory.getActuator(name:)();
          if (v17)
          {
            v18 = v17;
            v19 = dispatch thunk of Component.id.getter();
          }

          else
          {
            v19 = 0;
          }

          v21 = _swiftEmptyArrayStorage[2];
          v20 = _swiftEmptyArrayStorage[3];
          if (v21 >= v20 >> 1)
          {
            sub_1001D7228((v20 > 1), v21 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = (v21 + 1);
          _swiftEmptyArrayStorage[v21 + 4] = v19;

          v22 = dispatch thunk of DockCoreAccessory.getActuator(name:)();
          if (v22)
          {
            v23 = v22;
            v24 = dispatch thunk of Component.id.getter();
          }

          else
          {
            v24 = 0;
          }

          v26 = _swiftEmptyArrayStorage[2];
          v25 = _swiftEmptyArrayStorage[3];
          if (v26 >= v25 >> 1)
          {
            sub_1001D7228((v25 > 1), v26 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = (v26 + 1);
          _swiftEmptyArrayStorage[v26 + 4] = v24;
          swift_arrayDestroy();
          sub_1001A38B4(_swiftEmptyArrayStorage, &off_100274FD0, 256, v10);

          return;
        }

        v14 = v27;
      }

      else
      {

        v14 = v28;
      }
    }

    else
    {
      v14 = v29;
    }
  }
}

uint64_t sub_1001AB578(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v25 = a5;
  v22 = a1;
  v23 = a4;
  v6 = sub_100095274(&qword_1002ABA48, &qword_10023F398);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v26[3] = &type metadata for Bool;
  LOBYTE(v26[0]) = 1;
  v10 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v11 = swift_allocObject();
  v21 = xmmword_10023C170;
  *(v11 + 16) = xmmword_10023C170;
  *(v11 + 56) = &type metadata for UInt32;
  *(v11 + 64) = &protocol witness table for UInt32;
  *(v11 + 32) = a3;
  String.init(format:_:)();
  v12 = String._bridgeToObjectiveC()();

  v13 = [v10 UUIDWithString:v12];

  v14 = swift_allocObject();
  *(v14 + 16) = v21;
  *(v14 + 56) = &type metadata for UInt32;
  *(v14 + 64) = &protocol witness table for UInt32;
  v15 = v22;
  *(v14 + 32) = 256;
  String.init(format:_:)();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v10 UUIDWithString:v16];

  (*(v7 + 16))(v9, v15, v6);
  v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  (*(v7 + 32))(v19 + v18, v9, v6);

  sub_1001AA1A4(v26, v13, v17, v25, v19);

  return sub_100095808(v26);
}

uint64_t sub_1001AB858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback);
  v4 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback);
  v5 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1000C6F30(a2, a3);
  return sub_1000BAA84(v4, v5);
}

uint64_t sub_1001AB8B0(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback);
  v2 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback);
  v3 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  return sub_1000BAA84(v2, v3);
}

uint64_t sub_1001AB8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v9 = sub_1001B0530;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_feedbackCallbacks;
  swift_beginAccess();
  sub_1000C6F30(a3, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_1001ED32C(v9, v8, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v10) = v13;
  return swift_endAccess();
}

void sub_1001AB9E8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_feedbackCallbacks;
  swift_beginAccess();
  if (*(*(a1 + v9) + 16))
  {
    sub_10016D548(a2);
    if (v10)
    {
      (*(v6 + 16))(v8, a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v5);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v18 = v2;
        *v13 = 67109120;
        *(v13 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v11, v12, "De-registering feedback callback for pid %d", v13, 8u);
      }

      (*(v6 + 8))(v8, v5);
      swift_beginAccess();
      v14 = sub_1001E5498(a2);
      v16 = v15;
      swift_endAccess();
      sub_1001A2E40(v14, v16);
    }
  }
}

uint64_t sub_1001ABBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v6);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = a2;
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Registering trajectory progress feedback", v12, 2u);
    a2 = v18;
  }

  (*(v7 + 8))(v9, v6);
  v13 = (a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback);
  v14 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback);
  v15 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback + 8);
  *v13 = a2;
  v13[1] = a3;
  sub_1000C6F30(a2, a3);
  return sub_1000BAA84(v14, v15);
}

id *sub_1001ABDA4()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1000E47B8(*(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload), *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 8), *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 16), *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 24), *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 32), *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload + 40));

  sub_1000BAA84(*(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback), *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback + 8));
  sub_1000BAA84(*(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback), *(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback + 8));
  v3 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_lastImuStamp;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1001ABF5C()
{
  sub_1001ABDA4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonAccessory(uint64_t a1)
{
  result = qword_1002AB5A0;
  if (!qword_1002AB5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AC008(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v4 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001AC154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001AC19C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1001AC200()
{
  result = qword_1002ABA38;
  if (!qword_1002ABA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ABA38);
  }

  return result;
}

Swift::Int sub_1001AC254()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 24);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001AC2A8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  NSObject.hash(into:)();
}

Swift::Int sub_1001AC304()
{
  Hasher.init(_seed:)();
  v1 = *(*v0 + 24);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001AC354(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = *(*a2 + 24);
  v7[3] = type metadata accessor for DockCoreInfo();
  v7[0] = v3;
  v4 = v2;
  v5 = v3;
  LOBYTE(v2) = DockCoreInfo.isEqual(_:)();

  sub_100095C84(v7, &qword_1002A9210, &unk_10023BE70);
  return v2 & 1;
}

uint64_t sub_1001AC438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *sub_1001AC450@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_1001AC9DC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1001ACA94(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1001ACB10(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1001AC4E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001AC714(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1001ACBCC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000A0D2C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1001AC4E4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000A0D2C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1001AC8A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001AC908(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001AC9BC(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001AC9DC(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_1001ACA94(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001ACB10(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001ACB94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001ACBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1001AC4E4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1001ACC84(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1000A0CD8(a3, a4);
          return sub_1001AC714(v13, a2, a3, a4) & 1;
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

uint64_t sub_1001ACE74(NSObject *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v108 = a1;
  v109 = a7;
  v99 = a11;
  v96 = a8;
  v97 = a10;
  v95 = a9;
  v105 = type metadata accessor for DispatchTimeInterval();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v98 = (&v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for DispatchTime();
  v104 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v100 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v101 = &v91 - v20;
  __chkstk_darwin(v19);
  v102 = &v91 - v21;
  v107 = type metadata accessor for Logger();
  isa = v107[-1].isa;
  v23 = __chkstk_darwin(v107);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v91 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  v106 = a3;
  v29 = *(a3 + 32);
  if (v29 && (objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) != 0))
  {
    v31 = v30;
    v94 = v28;

    v93 = v29;
    v32 = [v31 primaryAccessory];
    if (!v32)
    {
      goto LABEL_14;
    }

    v33 = v32;
    v92 = v16;
    v34 = [v108 UUIDString];
    if (!v34)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = String._bridgeToObjectiveC()();
    }

    v35 = [a2 UUIDString];
    if (!v35)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = String._bridgeToObjectiveC()();
    }

    v36 = [v33 characteristicOfType:v34 serviceType:v35];

    v91 = v36;
    if (v36)
    {
      v109 = v31;
      v37 = dispatch_group_create();
      v38 = v107;
      (*(isa + 2))(v25, v106 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v107);
      v39 = v108;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v108 = v37;
        v43 = v42;
        v44 = swift_slowAlloc();
        aBlock[0] = v44;
        *v43 = 136315138;
        v45 = [v39 UUIDString];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = sub_1000952D4(v46, v48, aBlock);

        *(v43 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v40, v41, "Reading characteristic %s...", v43, 0xCu);
        sub_100095808(v44);

        v37 = v108;

        (*(isa + 1))(v25, v107);
      }

      else
      {

        (*(isa + 1))(v25, v38);
      }

      dispatch_group_enter(v37);
      sub_100095274(&qword_1002A7390, &qword_10023BEF0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_10023BDA0;
      v68 = v91;
      *(v67 + 32) = v91;
      sub_100095B94(0, &qword_1002A92F0, off_100271C60);
      v108 = v68;
      v69 = Array._bridgeToObjectiveC()().super.isa;

      v70 = v106;
      v71 = *(v106 + 40);
      v72 = swift_allocObject();
      v72[2] = v70;
      v72[3] = v39;
      v73 = v94;
      v72[4] = v95;
      v72[5] = v73;
      v72[6] = v37;
      aBlock[4] = v97;
      aBlock[5] = v72;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001A37EC;
      aBlock[3] = v99;
      v74 = _Block_copy(aBlock);
      v75 = v39;
      v76 = v71;

      v107 = v37;

      [v109 readCharacteristicValues:v69 timeout:v76 completionQueue:v74 completionHandler:10.0];
      _Block_release(v74);

      v77 = v100;
      static DispatchTime.now()();
      v78 = v98;
      *v98 = 10;
      v79 = v103;
      v80 = *(v103 + 104);
      v81 = v105;
      v80(v78, enum case for DispatchTimeInterval.seconds(_:), v105);
      v82 = v101;
      + infix(_:_:)();
      v83 = *(v79 + 8);
      v83(v78, v81);
      v84 = v77;
      v85 = v92;
      v86 = *(v104 + 8);
      v86(v84, v92);
      *v78 = 500;
      v80(v78, enum case for DispatchTimeInterval.milliseconds(_:), v81);
      v87 = v102;
      + infix(_:_:)();
      v83(v78, v81);
      v86(v82, v85);
      v88 = v86;
      v89 = v107;
      OS_dispatch_group.wait(timeout:)();

      v88(v87, v85);
    }

    else
    {
LABEL_14:
      v52 = isa;
      v53 = v107;
      (*(isa + 2))(v27, v106 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v107);
      v54 = v108;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v108 = v52;
        v59 = v58;
        aBlock[0] = v58;
        *v57 = 136315138;
        v60 = [v54 UUIDString];
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        v64 = sub_1000952D4(v61, v63, aBlock);

        *(v57 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v55, v56, "Accessory does not contain characteristic %s!", v57, 0xCu);
        sub_100095808(v59);

        (v108[1].isa)(v27, v107);
      }

      else
      {

        (v52[1].isa)(v27, v53);
      }

      sub_1000B346C();
      v65 = swift_allocError();
      *v66 = 1;
      (v109)(0, v65, a4, a5);
    }
  }

  else
  {
    sub_1000B346C();
    v50 = swift_allocError();
    *v51 = 1;

    (v109)(0, v50, a4, a5);
  }
}

void *sub_1001AD95C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v28 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v3[2] = 0;
  v3[4] = 0;
  v10 = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v27[1] = "usCommand(value:)";
  v27[2] = v10;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1001B0564(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_1000E4D54(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  v3[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(subsystem:category:)();
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController) = 0;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager) = 0;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager) = 0;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) = 0;
  v11 = (v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_setupPayload);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 2;
  v11[5] = 0;
  v11[6] = 0;
  v11[4] = 0;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingHeader) = 0;
  v12 = (v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_firmwareVersion);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productGroup);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productNumber);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData);
  *v15 = 0;
  v15[1] = 0;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trackingEnabled) = 1;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_connectedForTracking) = 0;
  *(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_reloadServer) = 0;
  v16 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
  *(v4 + v16) = sub_1001F2F38(_swiftEmptyArrayStorage);
  v17 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock;
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v4 + v17) = v18;
  v19 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_feedbackCallbacks;
  *(v4 + v19) = sub_1001F3120(_swiftEmptyArrayStorage);
  v20 = (v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_startupFeedback);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_trajectoryProgressCallback);
  *v21 = 0;
  v21[1] = 0;
  Date.init()();
  *(v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sendImu) = 0;
  v22 = v4[2];
  v4[2] = v29;

  v23 = v4[4];
  v24 = v31;
  v4[3] = v30;
  v4[4] = v24;
  v25 = v24;

  return v4;
}

uint64_t sub_1001ADDAC(void *a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v128 = a2;
  v129 = a1;
  v125 = type metadata accessor for DispatchTimeInterval();
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v122 = (&v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = type metadata accessor for DispatchTime();
  v124 = *(v126 - 8);
  v13 = __chkstk_darwin(v126);
  v119 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v120 = &v117 - v16;
  __chkstk_darwin(v15);
  v121 = &v117 - v17;
  v18 = type metadata accessor for Logger();
  v132 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v117 - v23;
  v25 = __chkstk_darwin(v22);
  v127 = &v117 - v26;
  __chkstk_darwin(v25);
  v28 = &v117 - v27;
  v29 = swift_allocObject();
  v29[2] = a4;
  v29[3] = a5;
  v29[4] = a6;
  v29[5] = a7;
  v130 = a3;
  v131 = v29;
  isa = a3[4].isa;
  if (!isa || (objc_opt_self(), (v31 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1000B346C();
    v54 = swift_allocError();
    *v55 = 1;
    v56 = v132;
    (*(v132 + 2))(v21, a4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v18);

    v57 = a7;
    swift_errorRetain();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v60 = 136315138;
      v134 = v54;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v62 = String.init<A>(describing:)();
      v64 = sub_1000952D4(v62, v63, aBlock);

      *(v60 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v58, v59, "Unable to read characteristic: %s", v60, 0xCu);
      sub_100095808(v61);

      v56[1](v21, v18);
    }

    else
    {

      v56[1](v21, v18);
    }

LABEL_22:
  }

  v32 = v31;
  v118 = v18;

  v33 = a7;
  v117 = isa;
  v34 = [v32 primaryAccessory];
  v35 = v129;
  if (!v34)
  {
    goto LABEL_15;
  }

  v36 = v34;
  v37 = [v129 UUIDString];
  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  v38 = [v128 UUIDString];
  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
    v35 = v129;
  }

  v39 = [v36 characteristicOfType:v37 serviceType:v38];

  if (!v39)
  {
LABEL_15:
    v65 = v132;
    v66 = *(v132 + 2);
    v67 = v118;
    (v66)(v28, v130 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v118);
    v68 = v35;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v130 = v66;
      v72 = v71;
      v73 = swift_slowAlloc();
      aBlock[0] = v73;
      *v72 = 136315138;
      v74 = [v68 UUIDString];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78 = sub_1000952D4(v75, v77, aBlock);
      v67 = v118;

      *(v72 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v69, v70, "Accessory does not contain characteristic %s!", v72, 0xCu);
      sub_100095808(v73);

      v66 = v130;

      v79 = v132;
    }

    else
    {

      v79 = v65;
    }

    v80 = v79[1];
    v80(v28, v67);
    v81 = v127;
    sub_1000B346C();
    v82 = swift_allocError();
    *v83 = 1;
    (v66)(v81, a4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v67);
    swift_errorRetain();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      aBlock[0] = v87;
      *v86 = 136315138;
      v134 = v82;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v88 = String.init<A>(describing:)();
      v90 = v67;
      v91 = sub_1000952D4(v88, v89, aBlock);

      *(v86 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v84, v85, "Unable to read characteristic: %s", v86, 0xCu);
      sub_100095808(v87);

      v92 = v81;
      v93 = v90;
    }

    else
    {

      v92 = v81;
      v93 = v67;
    }

    v80(v92, v93);

    goto LABEL_22;
  }

  v128 = v39;
  v129 = v32;
  v40 = dispatch_group_create();
  v41 = v132;
  v42 = v118;
  (*(v132 + 2))(v24, v130 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v118);
  v43 = v35;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    aBlock[0] = v127;
    *v46 = 136315138;
    v47 = v40;
    v48 = v43;
    v49 = [v43 UUIDString];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v43 = v48;
    v40 = v47;
    v53 = sub_1000952D4(v50, v52, aBlock);

    *(v46 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v44, v45, "Reading characteristic %s...", v46, 0xCu);
    sub_100095808(v127);

    v41[1](v24, v118);
  }

  else
  {

    v41[1](v24, v42);
  }

  dispatch_group_enter(v40);
  sub_100095274(&qword_1002A7390, &qword_10023BEF0);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_10023BDA0;
  v96 = v128;
  *(v95 + 32) = v128;
  sub_100095B94(0, &qword_1002A92F0, off_100271C60);
  v132 = v96;
  v97 = Array._bridgeToObjectiveC()().super.isa;

  v98 = v130;
  v99 = v130[5].isa;
  v100 = swift_allocObject();
  v100[2] = v98;
  v100[3] = v43;
  v101 = v131;
  v100[4] = sub_1001AEA88;
  v100[5] = v101;
  v100[6] = v40;
  aBlock[4] = sub_1001B07C0;
  aBlock[5] = v100;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A37EC;
  aBlock[3] = &unk_10027A2A8;
  v102 = _Block_copy(aBlock);
  v103 = v43;
  v104 = v99;

  v130 = v40;

  [v129 readCharacteristicValues:v97 timeout:v104 completionQueue:v102 completionHandler:10.0];
  _Block_release(v102);

  v105 = v119;
  static DispatchTime.now()();
  v106 = v122;
  v107 = v123;
  *v122 = 10;
  v108 = *(v107 + 104);
  v109 = v125;
  v108(v106, enum case for DispatchTimeInterval.seconds(_:), v125);
  v110 = v120;
  + infix(_:_:)();
  v111 = *(v107 + 8);
  v111(v106, v109);
  v112 = *(v124 + 8);
  v113 = v105;
  v114 = v126;
  v112(v113, v126);
  *v106 = 500;
  v108(v106, enum case for DispatchTimeInterval.milliseconds(_:), v109);
  v115 = v121;
  + infix(_:_:)();
  v111(v106, v109);
  v112(v110, v114);
  v116 = v130;
  OS_dispatch_group.wait(timeout:)();

  v112(v115, v114);
}

uint64_t sub_1001AEA38()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001AEAFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10009862C;

  return sub_1001A7444();
}

uint64_t sub_1001AEBC0()
{
  v1 = sub_100095274(&qword_1002ABA60, &unk_10023F3C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001AEC54(uint64_t a1, uint64_t a2)
{
  sub_100095274(&qword_1002ABA60, &unk_10023F3C0);

  return sub_1001A5F38(a1, a2);
}

uint64_t sub_1001AECE0(NSObject *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v102 = a2;
  v105 = a1;
  v10 = type metadata accessor for DispatchTimeInterval();
  v101 = *(v10 - 8);
  __chkstk_darwin(v10);
  v100 = (&v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v97 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v98 = &v91 - v17;
  __chkstk_darwin(v16);
  v99 = &v91 - v18;
  v104 = type metadata accessor for Logger();
  v19 = *(v104 - 8);
  v20 = __chkstk_darwin(v104);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v91 - v23;
  v25 = swift_allocObject();
  v25[2] = a4;
  v25[3] = a5;
  v106 = a5;
  v107 = v25;
  v25[4] = a6;
  v103 = a3;
  v26 = *(a3 + 32);
  if (v26 && (objc_opt_self(), (v27 = swift_dynamicCastObjCClass()) != 0))
  {
    v94 = v13;
    v95 = v10;
    v96 = v12;
    v28 = v27;

    v29 = v26;
    v93 = v28;
    v30 = [v28 primaryAccessory];
    if (!v30)
    {
      goto LABEL_14;
    }

    v31 = v30;
    v32 = [v105 UUIDString];
    if (!v32)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = String._bridgeToObjectiveC()();
    }

    v33 = [v102 UUIDString];
    v92 = v29;
    if (!v33)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = String._bridgeToObjectiveC()();
      v29 = v92;
    }

    v34 = [v31 characteristicOfType:v32 serviceType:v33];

    v102 = v34;
    if (v34)
    {
      v35 = dispatch_group_create();
      v36 = v104;
      (*(v19 + 16))(v22, v103 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v104);
      v37 = v105;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v105 = v19;
        v41 = v40;
        v42 = swift_slowAlloc();
        aBlock[0] = v42;
        *v41 = 136315138;
        v43 = [v37 UUIDString];
        v44 = v37;
        v45 = v35;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = v46;
        v35 = v45;
        v37 = v44;
        v50 = sub_1000952D4(v49, v48, aBlock);

        *(v41 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v38, v39, "Reading characteristic %s...", v41, 0xCu);
        sub_100095808(v42);

        (v105[1].isa)(v22, v104);
      }

      else
      {

        (*(v19 + 8))(v22, v36);
      }

      dispatch_group_enter(v35);
      sub_100095274(&qword_1002A7390, &qword_10023BEF0);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_10023BDA0;
      v69 = v102;
      *(v68 + 32) = v102;
      sub_100095B94(0, &qword_1002A92F0, off_100271C60);
      v106 = v69;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v71 = v103;
      v72 = *(v103 + 40);
      v73 = swift_allocObject();
      v73[2] = v71;
      v73[3] = v37;
      v74 = v107;
      v73[4] = sub_1001B048C;
      v73[5] = v74;
      v73[6] = v35;
      aBlock[4] = sub_1001B07C0;
      aBlock[5] = v73;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001A37EC;
      aBlock[3] = &unk_10027A550;
      v75 = _Block_copy(aBlock);
      v76 = v37;
      v77 = v72;

      v105 = v35;

      [v93 readCharacteristicValues:isa timeout:v77 completionQueue:v75 completionHandler:10.0];
      _Block_release(v75);

      v78 = v97;
      static DispatchTime.now()();
      v79 = v100;
      v80 = v101;
      *v100 = 10;
      v81 = *(v80 + 104);
      v82 = v95;
      v81(v79, enum case for DispatchTimeInterval.seconds(_:), v95);
      v83 = v98;
      + infix(_:_:)();
      v84 = *(v80 + 8);
      v84(v79, v82);
      v85 = *(v94 + 8);
      v86 = v78;
      v87 = v96;
      v85(v86, v96);
      *v79 = 500;
      v81(v79, enum case for DispatchTimeInterval.milliseconds(_:), v82);
      v88 = v99;
      + infix(_:_:)();
      v84(v79, v82);
      v85(v83, v87);
      v89 = v105;
      OS_dispatch_group.wait(timeout:)();

      v85(v88, v87);
    }

    else
    {
LABEL_14:
      v53 = v104;
      (*(v19 + 16))(v24, v103 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v104);
      v54 = v105;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        LODWORD(v103) = v56;
        v105 = v19;
        v58 = v57;
        v59 = swift_slowAlloc();
        aBlock[0] = v59;
        *v58 = 136315138;
        v60 = [v54 UUIDString];
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v29;
        v64 = v63;

        v65 = sub_1000952D4(v61, v64, aBlock);
        v29 = v62;

        *(v58 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v55, v103, "Accessory does not contain characteristic %s!", v58, 0xCu);
        sub_100095808(v59);

        (v105[1].isa)(v24, v104);
      }

      else
      {

        (*(v19 + 8))(v24, v53);
      }

      sub_1000B346C();
      v66 = swift_allocError();
      *v67 = 1;
      sub_100116DD8(0, v66, a4, v106, a6);
    }
  }

  else
  {
    sub_1000B346C();
    v51 = swift_allocError();
    *v52 = 1;

    sub_100116DD8(0, v51, a4, v106, a6);
  }
}

uint64_t sub_1001AF6D8(NSObject *a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v126 = a2;
  v127 = a1;
  v124 = type metadata accessor for DispatchTimeInterval();
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = (&v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = type metadata accessor for DispatchTime();
  v123 = *(v125 - 8);
  v13 = __chkstk_darwin(v125);
  v118 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v119 = &v115 - v16;
  __chkstk_darwin(v15);
  v120 = &v115 - v17;
  v18 = type metadata accessor for Logger();
  v130 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v115 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = (&v115 - v26);
  __chkstk_darwin(v25);
  v29 = &v115 - v28;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v128 = a3;
  v129 = v30;
  v31 = *(a3 + 4);
  if (!v31 || (objc_opt_self(), (v32 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1000B346C();
    v54 = swift_allocError();
    *v55 = 1;
    v56 = v130;
    (v130[2])(v21, a4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v18);

    swift_errorRetain();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v59 = 136315138;
      v132 = v54;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v61 = String.init<A>(describing:)();
      v63 = sub_1000952D4(v61, v62, aBlock);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v57, v58, "Unable to read characteristic: %s", v59, 0xCu);
      sub_100095808(v60);

      v56[1](v21, v18);
    }

    else
    {

      v56[1](v21, v18);
    }

LABEL_22:
  }

  v33 = v32;
  v117 = v18;

  v116 = v31;
  v115 = v33;
  v34 = [v33 primaryAccessory];
  v35 = v27;
  v36 = v127;
  if (!v34)
  {
    goto LABEL_15;
  }

  v37 = v34;
  v38 = [v127 UUIDString];
  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  v39 = [v126 UUIDString];
  if (!v39)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = String._bridgeToObjectiveC()();
    v36 = v127;
  }

  v40 = [v37 characteristicOfType:v38 serviceType:v39];

  if (!v40)
  {
LABEL_15:
    v64 = v130;
    v65 = &v128[OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger];
    v66 = v117;
    v128 = v130[2];
    (v128)(v29, v65, v117);
    v67 = v36;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      v127 = v35;
      v71 = aBlock[0];
      *v70 = 136315138;
      v72 = [v67 UUIDString];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = sub_1000952D4(v73, v75, aBlock);
      v66 = v117;

      *(v70 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v68, v69, "Accessory does not contain characteristic %s!", v70, 0xCu);
      sub_100095808(v71);
      v35 = v127;

      v77 = v130;
    }

    else
    {

      v77 = v64;
    }

    v78 = v77[1];
    (v78)(v29, v66);
    sub_1000B346C();
    v79 = swift_allocError();
    *v80 = 1;
    (v128)(v35, a4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v66);
    swift_errorRetain();
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      aBlock[0] = v84;
      *v83 = 136315138;
      v132 = v79;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v85 = String.init<A>(describing:)();
      v87 = v66;
      v88 = sub_1000952D4(v85, v86, aBlock);

      *(v83 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v81, v82, "Unable to read characteristic: %s", v83, 0xCu);
      sub_100095808(v84);

      v89 = v35;
      v90 = v87;
    }

    else
    {

      v89 = v35;
      v90 = v66;
    }

    (v78)(v89, v90);

    goto LABEL_22;
  }

  v126 = v40;
  v127 = dispatch_group_create();
  v41 = v130;
  v42 = v117;
  (v130[2])(v24, &v128[OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger], v117);
  v43 = v36;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    v48 = v43;
    v49 = [v43 UUIDString];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v43 = v48;
    v53 = sub_1000952D4(v50, v52, aBlock);

    *(v46 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v44, v45, "Reading characteristic %s...", v46, 0xCu);
    sub_100095808(v47);

    (v41[1])(v24, v117);
  }

  else
  {

    (v41[1])(v24, v42);
  }

  v92 = v127;
  dispatch_group_enter(v127);
  sub_100095274(&qword_1002A7390, &qword_10023BEF0);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_10023BDA0;
  v94 = v126;
  *(v93 + 32) = v126;
  sub_100095B94(0, &qword_1002A92F0, off_100271C60);
  v130 = v94;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v96 = v128;
  v97 = *(v128 + 5);
  v98 = swift_allocObject();
  v98[2] = v96;
  v98[3] = v43;
  v99 = v129;
  v98[4] = sub_1001B03A4;
  v98[5] = v99;
  v98[6] = v92;
  aBlock[4] = sub_1001B07C0;
  aBlock[5] = v98;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A37EC;
  aBlock[3] = &unk_10027A370;
  v100 = _Block_copy(aBlock);
  v101 = v43;
  v102 = v97;

  v128 = v92;

  [v115 readCharacteristicValues:isa timeout:v102 completionQueue:v100 completionHandler:10.0];
  _Block_release(v100);

  v103 = v118;
  static DispatchTime.now()();
  v104 = v121;
  v105 = v122;
  *v121 = 10;
  v106 = *(v105 + 104);
  v107 = v124;
  v106(v104, enum case for DispatchTimeInterval.seconds(_:), v124);
  v108 = v119;
  + infix(_:_:)();
  v109 = *(v105 + 8);
  v109(v104, v107);
  v110 = *(v123 + 8);
  v111 = v103;
  v112 = v125;
  v110(v111, v125);
  *v104 = 500;
  v106(v104, enum case for DispatchTimeInterval.milliseconds(_:), v107);
  v113 = v120;
  + infix(_:_:)();
  v109(v104, v107);
  v110(v108, v112);
  v114 = v128;
  OS_dispatch_group.wait(timeout:)();

  v110(v113, v112);
}

uint64_t sub_1001B035C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001B03C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001B0434(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_1001B0498()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001B04F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001B0564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B05D4()
{
  v1 = sub_100095274(&qword_1002ABA48, &qword_10023F398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001B07C8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_100093D84(v2, qword_1002ABA80);
  sub_100093DE8(v2, qword_1002ABA80);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001B0840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = [objc_msgSend(objc_opt_self() "capabilitiesForHardware")];
  swift_unknownObjectRelease();
  *(v2 + 16) = v4;
  *(v2 + 32) = 0;
  if (!v4)
  {
    if (qword_1002A6788 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100093DE8(v23, qword_1002ABA80);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Device does not support haptics!", v26, 2u);
    }

    goto LABEL_14;
  }

  if (qword_1002A6788 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100093DE8(v5, qword_1002ABA80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Attempting to enable haptic engine...", v8, 2u);
  }

  v35 = 0;
  v9 = [objc_allocWithZone(CHHapticEngine) initAndReturnError:&v35];
  v10 = v35;
  if (!v9)
  {
    v27 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v28))
    {

      goto LABEL_15;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v24, v28, "Unable to create haptic engine, haptics will be disallowed: %@", v29, 0xCu);
    sub_100095C84(v30, &unk_1002A6F60, &unk_10023C4E0);

LABEL_14:

LABEL_15:
    v32 = swift_unknownObjectRelease();
    type metadata accessor for DKHaptics(v32, v33);
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v2 + 24) = v9;
  v11 = v9;
  v12 = swift_allocObject();
  swift_weakInit();
  v39 = sub_1001B1970;
  v40 = v12;
  v35 = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100147FC8;
  v38 = &unk_10027A640;
  v13 = _Block_copy(&v35);
  v14 = v10;
  v15 = v11;

  [v15 setResetHandler:v13];
  _Block_release(v13);

  v16 = *(v3 + 24);
  v39 = MotionFeedback.init(positions:velocities:);
  v40 = 0;
  v35 = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_1001B1078;
  v38 = &unk_10027A668;
  v17 = _Block_copy(&v35);
  v18 = v16;
  [v18 setStoppedHandler:v17];
  _Block_release(v17);

  v19 = *(v3 + 24);
  v39 = sub_1000E54B8;
  v40 = 0;
  v35 = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_1001B10CC;
  v38 = &unk_10027A690;
  v20 = _Block_copy(&v35);
  v21 = v19;
  [v21 notifyWhenPlayersFinished:v20];
  _Block_release(v20);

  v22 = *(v3 + 24);
  [v22 setAutoShutdownEnabled:1];

  return v3;
}

void sub_1001B0DA8(uint64_t a1, uint64_t a2)
{
  if (qword_1002A6788 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100093DE8(v2, qword_1002ABA80);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Reset Handler: Restarting the engine.", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v7 = *(Strong + 24);

  v16[0] = 0;
  v8 = [v7 startAndReturnError:v16];

  if (v8)
  {
    v9 = v16[0];
LABEL_8:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001B1128();
    }

    return;
  }

  v10 = v16[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to restart the engine: %@", v13, 0xCu);
    sub_100095C84(v14, &unk_1002A6F60, &unk_10023C4E0);
  }

  else
  {
  }
}

uint64_t sub_1001B1078(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1001B10CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3(a2);

  return v5;
}

void sub_1001B1128()
{
  sub_100095274(&qword_1002ABB88, &qword_10023F418);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  v0 = CHHapticPatternKeyPattern;
  *(inited + 32) = CHHapticPatternKeyPattern;
  sub_100095274(&qword_1002ABB90, &qword_10023F420);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_10023DB20;
  sub_100095274(&qword_1002ABB98, &qword_10023F428);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_10023C170;
  v2 = CHHapticPatternKeyEvent;
  *(v1 + 32) = CHHapticPatternKeyEvent;
  sub_100095274(&qword_1002ABBA0, &qword_10023F430);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_10023DB20;
  v4 = CHHapticPatternKeyEventType;
  *(v3 + 32) = CHHapticPatternKeyEventType;
  v5 = CHHapticEventTypeHapticContinuous;
  type metadata accessor for EventType(0);
  *(v3 + 40) = v5;
  v6 = CHHapticPatternKeyTime;
  *(v3 + 64) = v7;
  *(v3 + 72) = v6;
  *(v3 + 80) = 0;
  v8 = CHHapticPatternKeyEventDuration;
  *(v3 + 104) = &type metadata for Double;
  *(v3 + 112) = v8;
  *(v3 + 144) = &type metadata for Double;
  *(v3 + 120) = 0x3FC3333333333333;
  v52 = v6;
  v9 = v0;
  v10 = v2;
  v11 = v4;
  v12 = v5;
  v13 = v8;
  v14 = sub_1001F2BF8(v3);
  swift_setDeallocating();
  sub_100095274(&qword_1002ABBA8, &qword_10023F438);
  swift_arrayDestroy();
  *(v1 + 40) = v14;
  v15 = sub_1001F2D20(v1);
  swift_setDeallocating();
  sub_100095C84(v1 + 32, &qword_1002ABBB0, &qword_10023F440);
  *(v53 + 32) = v15;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_10023C170;
  v17 = CHHapticPatternKeyParameter;
  *(v16 + 32) = CHHapticPatternKeyParameter;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_10023DB20;
  v19 = CHHapticPatternKeyParameterID;
  *(v18 + 32) = CHHapticPatternKeyParameterID;
  v20 = CHHapticDynamicParameterIDHapticIntensityControl;
  type metadata accessor for ID(0);
  v49 = v21;
  *(v18 + 40) = v20;
  *(v18 + 64) = v21;
  *(v18 + 72) = v52;
  *(v18 + 80) = 0x3FB999999999999ALL;
  v22 = CHHapticPatternKeyParameterValue;
  *(v18 + 104) = &type metadata for Double;
  *(v18 + 112) = v22;
  *(v18 + 144) = &type metadata for Double;
  *(v18 + 120) = 0x3FF3333333333333;
  v23 = v17;
  v24 = v19;
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v48 = v25;
  v28 = v20;
  v29 = sub_1001F2BF8(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v16 + 40) = v29;
  v30 = sub_1001F2D20(v16);
  swift_setDeallocating();
  sub_100095C84(v16 + 32, &qword_1002ABBB0, &qword_10023F440);
  *(v53 + 40) = v30;
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_10023C170;
  *(v31 + 32) = v26;
  v32 = swift_initStackObject();
  *(v32 + 32) = v27;
  *(v32 + 16) = xmmword_10023DB20;
  v33 = CHHapticDynamicParameterIDHapticSharpnessControl;
  *(v32 + 40) = CHHapticDynamicParameterIDHapticSharpnessControl;
  *(v32 + 64) = v49;
  *(v32 + 72) = v52;
  *(v32 + 80) = 0;
  *(v32 + 104) = &type metadata for Double;
  *(v32 + 112) = v48;
  *(v32 + 144) = &type metadata for Double;
  *(v32 + 120) = 0x3FF3333333333333;
  v34 = v33;
  v35 = sub_1001F2BF8(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v31 + 40) = v35;
  v36 = sub_1001F2D20(v31);
  swift_setDeallocating();
  sub_100095C84(v31 + 32, &qword_1002ABBB0, &qword_10023F440);
  *(v53 + 48) = v36;
  *(inited + 40) = v53;
  v37 = sub_1001F2D34(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002ABBB8, &qword_10023F448);
  sub_1001DB210(v37);
  v39 = v38;

  v40 = objc_allocWithZone(CHHapticPattern);
  v41 = sub_1001B17EC(v39);
  if (!v51)
  {
    v42 = v41;
    v43 = *(v47 + 24);
    v54 = 0;
    v44 = [v43 createPlayerWithPattern:v42 error:&v54];
    v45 = v54;
    if (v44)
    {

      *(v47 + 32) = v44;
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = v45;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_1001B1680()
{
  if (*(v0 + 32) || (sub_1001B1128(), !v1))
  {
    v2 = *(v0 + 24);
    v10 = 0;
    v3 = [v2 startAndReturnError:&v10];
    v4 = v10;
    if (v3 && ((v5 = *(v0 + 32)) == 0 || (v10 = 0, v6 = v4, v7 = [v5 startAtTime:&v10 error:0.0], v4 = v10, v7)))
    {
      v8 = v4;
    }

    else
    {
      v9 = v4;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1001B1788()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1001B17EC(uint64_t a1)
{
  type metadata accessor for Key(0);
  sub_1001B18E0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = 0;
  v3 = [v1 initWithDictionary:isa error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

unint64_t sub_1001B18E0()
{
  result = qword_1002A6DB0;
  if (!qword_1002A6DB0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A6DB0);
  }

  return result;
}

uint64_t sub_1001B1938()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001B1978(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001B19A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1001B19E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unsigned __int8 *sub_1001B1A44@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, id **a4@<X4>, unsigned __int8 **a5@<X8>)
{
  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_13;
    }

    v11 = *(a2 + 16);
    v10 = *(a2 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_18;
    }

    v9 = HIDWORD(a2) - a2;
LABEL_10:
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v9))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v9) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    goto LABEL_8;
  }

  LODWORD(v9) = BYTE6(a3);
LABEL_14:
  v12 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100095714(0, v12[2], 0, v12);
  }

  *a4 = v12;
  result = CC_SHA512(v6, v9, v12 + 32);
  *a5 = result;
  return result;
}

uint64_t sub_1001B1B24@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for String.Encoding();
  result = __chkstk_darwin(v6 - 8);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_24;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 != 8)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 8)
      {
        goto LABEL_12;
      }

LABEL_8:
      sub_1000A0CD8(a1, a2);
      sub_10015319C(4, a1, a2, &v37);
      v35 = v37;
      static String.Encoding.utf8.getter();
      sub_10017E9A8();
      v13 = String.init<A>(bytes:encoding:)();
      v15 = v14;
      sub_1000A0D2C(v35, *(&v35 + 1));
      if (v15)
      {
        v16 = Data._Representation.subscript.getter() << 24;
        v17 = v16 & 0xFFFFFFFFFF00FFFFLL | (Data._Representation.subscript.getter() << 16);
        v18 = v17 & 0xFFFFFFFFFFFF00FFLL | (Data._Representation.subscript.getter() << 8);
        result = Data._Representation.subscript.getter();
        v19 = 0;
        v20 = v18 & 0xFFFFFFFFFFFFFF00 | result;
        v21 = 2;
LABEL_21:
        v33 = v20 | (v21 << 32);
        v34 = v19 | HIDWORD(v21);
LABEL_26:
        *a3 = v13;
        a3[1] = v15;
        a3[2] = v33;
        a3[3] = v34;
        a3[4] = a1;
        a3[5] = a2;
        return result;
      }

LABEL_22:
      result = sub_1000A0D2C(a1, a2);
      v13 = 0;
LABEL_25:
      v33 = 0;
      v34 = 0;
      a1 = 0;
      a2 = 0;
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  if (BYTE6(a2) == 8)
  {
    goto LABEL_8;
  }

LABEL_12:
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        if (HIDWORD(a1) - a1 != 12)
        {
          goto LABEL_24;
        }

LABEL_19:
        sub_1000A0CD8(a1, a2);
        sub_10015319C(4, a1, a2, &v37);
        v36 = v37;
        static String.Encoding.utf8.getter();
        sub_10017E9A8();
        v13 = String.init<A>(bytes:encoding:)();
        v15 = v25;
        sub_1000A0D2C(v36, *(&v36 + 1));
        if (v15)
        {
          v26 = Data._Representation.subscript.getter() << 24;
          v27 = v26 & 0xFFFFFFFFFF00FFFFLL | (Data._Representation.subscript.getter() << 16);
          v28 = v27 & 0xFFFFFFFFFFFF00FFLL | (Data._Representation.subscript.getter() << 8);
          v20 = v28 & 0xFFFFFFFFFFFFFF00 | Data._Representation.subscript.getter();
          v29 = Data._Representation.subscript.getter();
          v30 = Data._Representation.subscript.getter();
          v31 = Data._Representation.subscript.getter();
          v32 = Data._Representation.subscript.getter();
          result = Data._Representation.subscript.getter();
          v21 = (v32 << 40) | (result << 32) | (v31 >> 5) & 1 | (((v30 >> 4) & 1) << 8) | (((v29 >> 3) & 1) << 16);
          v19 = 0x10000;
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      goto LABEL_29;
    }

    if (BYTE6(a2) == 12)
    {
      goto LABEL_19;
    }

LABEL_24:
    result = sub_1000A0D2C(a1, a2);
    v13 = 0;
    v15 = 0;
    goto LABEL_25;
  }

  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v11 = __OFSUB__(v22, v23);
  v24 = v22 - v23;
  if (!v11)
  {
    if (v24 == 12)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

LABEL_30:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1001B1EB4(uint64_t a1, unint64_t a2, id *a3, id *a4, int a5)
{
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10014025C(a1, a2);
  v16 = v15;
  v26[0] = a3;
  v26[1] = a4;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  static String.Encoding.utf8.getter();
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;

  (*(v11 + 8))(v13, v10);
  result = 0;
  if (v20 >> 60 != 15)
  {
    v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v22 + 16) = 64;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 80) = 0u;
    v26[0] = v22;
    sub_1000A0CD8(v18, v20);
    result = sub_1000CAEE8(v18, v20, v18, v20, v26);
    v23 = v26[0][2];
    if (v23)
    {
      if (v23 != 1)
      {
        if (v23 >= 3)
        {
          if (v23 != 3)
          {
            v24 = *(v26[0] + 8);
            sub_1000A452C(v18, v20);

            return (bswap32(v24) == a5);
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AccessoryAdvData.AdvState(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryAdvData.AdvState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[6])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryAdvData.AdvState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1001B216C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v6);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1000952D4(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v10, v11, "watchdog fired, tearing down os_transaction for %s", v12, 0xCu);
    sub_100095808(v13);
  }

  (*(v7 + 8))(v9, v6);
  sub_10019AE80();
}

uint64_t sub_1001B2348(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1000A452C(v4, v8);
}

uint64_t sub_1001B23F4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  if (*(v11 + 16))
  {
    v12 = *(v11 + 24);
    if (v12)
    {
      aBlock[4] = sub_1000BAAE0;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_10027A8A0;
      v18[0] = _Block_copy(aBlock);
      v13 = v12;

      static DispatchQoS.unspecified.getter();
      v18[1] = _swiftEmptyArrayStorage;
      sub_1001B6124(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000BAB30();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v14 = v18[0];
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v14);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    result = sub_100105518();
  }

  v15 = v1[5];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v1[5] = v17;
  }

  return result;
}

void sub_1001B26B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v5 = type metadata accessor for Logger();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
  v13 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token + 8);
  v36 = (v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
  v14 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_tokenUUID;
  swift_beginAccess();
  v15 = *(v9 + 16);
  v41 = v9 + 16;
  v42 = v14;
  v40 = v15;
  v15(v11, v3 + v14, v8);
  v16 = v3 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
  swift_beginAccess();
  *(v16 + 8) = 0;
  sub_1000A0CD8(v12, v13);

  *(v16 + 16) = 1;
  *(v16 + 24) = v45;
  *(v16 + 32) = a2;
  v38 = a2;

  v17 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  (*(v9 + 24))(v16 + *(v17 + 36), v11, v8);
  v18 = (v16 + *(v17 + 40));
  v20 = *v18;
  v19 = v18[1];
  *v18 = v12;
  v18[1] = v13;
  sub_1000A0CD8(v12, v13);
  sub_1000A0D2C(v20, v19);
  sub_1001B23F4();
  v39 = *(v9 + 8);
  v39(v11, v8);
  swift_endAccess();
  sub_1000A0D2C(v12, v13);
  (*(v43 + 16))(v7, v3 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v44);

  v37 = v7;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315138;
    v40(v11, v3 + v42, v8);
    v25 = UUID.uuidString.getter();
    v27 = v26;
    v39(v11, v8);
    v28 = sub_1000952D4(v25, v27, aBlock);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Requesting metadata for token: %s", v23, 0xCu);
    sub_100095808(v24);
  }

  (*(v43 + 8))(v37, v44);
  v29 = *v36;
  v30 = v36[1];
  v31 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_authManager);
  sub_1000A0CD8(v29, v30);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v29, v30);
  v40(v11, v3 + v42, v8);
  v33 = UUID._bridgeToObjectiveC()().super.isa;
  v39(v11, v8);
  v34 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1001B617C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001B380C;
  aBlock[3] = &unk_10027A918;
  v35 = _Block_copy(aBlock);

  [v31 requestTokenMetadata:isa tokenUUID:v33 model:v34 completionHandler:v35];
  _Block_release(v35);
}

void sub_1001B2BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  __chkstk_darwin(v16);
  v19 = &v87 - v17;
  if (a4)
  {
    v20 = *(v12 + 16);
    v91 = a5;
    v20(&v87 - v17, a5 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v11);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v90 = v11;
      v24 = v12;
      v25 = v23;
      v26 = swift_slowAlloc();
      v103 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = sub_1000952D4(v27, v28, &v103);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Auth metadata request failed: %s", v25, 0xCu);
      sub_100095808(v26);

      (*(v24 + 8))(v19, v90);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }

    sub_1001B50F0(a4);
    return;
  }

  v88 = v7;
  v89 = v18;
  v30 = a5 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
  swift_beginAccess();
  if (*(v30 + 16) != 1)
  {
    (*(v12 + 16))(v15, a5 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v11);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Ignoring metadata response, accessory not requesting metadata or metadata already requested.", v46, 2u);
    }

    (*(v12 + 8))(v15, v11);
    return;
  }

  swift_beginAccess();
  sub_1001059EC();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0xE000000000000000;

  v31 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  v32 = (v30 + *(v31 + 40));
  v33 = *v32;
  v34 = v32[1];
  *v32 = xmmword_10023BF90;
  sub_1000A0D2C(v33, v34);
  UUID.init()();
  (*(v8 + 40))(v30 + *(v31 + 36), v10, v88);
  *(v30 + 8) = 0;
  *(v30 + 40) = 0;
  swift_endAccess();

  (*(v12 + 16))(v89, a5 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v11);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Auth metadata received.", v37, 2u);
  }

  (*(v12 + 8))(v89, v11);
  v38 = v90;
  v91 = a5;
  if (!v90)
  {
    v95 = 0u;
    v96 = 0u;
    sub_100095C84(&v95, &qword_1002A9210, &unk_10023BE70);
    v95 = 0u;
    v96 = 0u;
    sub_100095C84(&v95, &qword_1002A9210, &unk_10023BE70);
    v95 = 0u;
    v96 = 0u;
    sub_100095C84(&v95, &qword_1002A9210, &unk_10023BE70);
    v95 = 0u;
    v96 = 0u;
    sub_100095C84(&v95, &qword_1002A9210, &unk_10023BE70);
    v63 = 0;
    v62 = 0;
    v67 = 0;
    v50 = 0;
    v71 = 0;
    v55 = 0;
    v57 = 0;
    v58 = 0;
    v113 = 0u;
    v114 = 0u;
    goto LABEL_64;
  }

  strcpy(v94, "accessory_name");
  HIBYTE(v94[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v38 + 16) || (v39 = sub_10016D6A8(&v103), (v40 & 1) == 0))
  {
    sub_10016F024(&v103);
    v95 = 0u;
    v96 = 0u;
    goto LABEL_22;
  }

  sub_100095B34(*(v38 + 56) + 32 * v39, &v95);
  sub_10016F024(&v103);
  if (!*(&v96 + 1))
  {
LABEL_22:
    sub_100095C84(&v95, &qword_1002A9210, &unk_10023BE70);
    v43 = 0;
    v89 = 0;
    goto LABEL_23;
  }

  v41 = swift_dynamicCast();
  v42 = v103;
  if (!v41)
  {
    v42 = 0;
  }

  v89 = v42;
  if (v41)
  {
    v43 = v104;
  }

  else
  {
    v43 = 0;
  }

LABEL_23:
  v94[0] = 0x646E617262;
  v94[1] = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v38 + 16) || (v47 = sub_10016D6A8(&v103), (v48 & 1) == 0))
  {
    sub_10016F024(&v103);
    v95 = 0u;
    v96 = 0u;
    goto LABEL_33;
  }

  sub_100095B34(*(v38 + 56) + 32 * v47, &v95);
  sub_10016F024(&v103);
  if (!*(&v96 + 1))
  {
LABEL_33:
    sub_100095C84(&v95, &qword_1002A9210, &unk_10023BE70);
    v51 = 0;
    v50 = 0;
    goto LABEL_34;
  }

  v49 = swift_dynamicCast();
  if (v49)
  {
    v50 = v103;
  }

  else
  {
    v50 = 0;
  }

  if (v49)
  {
    v51 = v104;
  }

  else
  {
    v51 = 0;
  }

LABEL_34:
  v94[0] = 0x6C65646F6DLL;
  v94[1] = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  v52 = *(v38 + 16);
  v88 = v51;
  if (!v52 || (v53 = sub_10016D6A8(&v103), (v54 & 1) == 0))
  {
    sub_10016F024(&v103);
    v95 = 0u;
    v96 = 0u;
    goto LABEL_44;
  }

  sub_100095B34(*(v38 + 56) + 32 * v53, &v95);
  sub_10016F024(&v103);
  if (!*(&v96 + 1))
  {
LABEL_44:
    v55 = v43;
    sub_100095C84(&v95, &qword_1002A9210, &unk_10023BE70);
    v58 = 0;
    v57 = 0;
    goto LABEL_45;
  }

  v55 = v43;
  v56 = swift_dynamicCast();
  if (v56)
  {
    v57 = v103;
  }

  else
  {
    v57 = 0;
  }

  if (v56)
  {
    v58 = v104;
  }

  else
  {
    v58 = 0;
  }

LABEL_45:
  v94[0] = 0xD000000000000014;
  v94[1] = 0x8000000100234D30;
  AnyHashable.init<A>(_:)();
  if (!*(v38 + 16) || (v59 = sub_10016D6A8(&v103), (v60 & 1) == 0))
  {
    sub_10016F024(&v103);
    v95 = 0u;
    v96 = 0u;
    goto LABEL_55;
  }

  sub_100095B34(*(v38 + 56) + 32 * v59, &v95);
  sub_10016F024(&v103);
  if (!*(&v96 + 1))
  {
LABEL_55:
    sub_100095C84(&v95, &qword_1002A9210, &unk_10023BE70);
    v63 = 0;
    v62 = 0;
    goto LABEL_56;
  }

  v61 = swift_dynamicCast();
  if (v61)
  {
    v62 = v103;
  }

  else
  {
    v62 = 0;
  }

  if (v61)
  {
    v63 = v104;
  }

  else
  {
    v63 = 0;
  }

LABEL_56:
  *&v95 = 0xD000000000000012;
  *(&v95 + 1) = 0x8000000100234D10;
  AnyHashable.init<A>(_:)();
  v64 = v90;
  if (*(v90 + 16) && (v65 = sub_10016D6A8(&v103), (v66 & 1) != 0))
  {
    sub_100095B34(*(v64 + 56) + 32 * v65, &v113);
    sub_10016F024(&v103);
    v67 = v88;
    if (*(&v114 + 1))
    {
      v68 = swift_dynamicCast();
      v69 = v103;
      v70 = v104;
      if (!v68)
      {
        v69 = 0;
        v70 = 0;
      }

      v71 = v89;
      goto LABEL_65;
    }

    v71 = v89;
  }

  else
  {
    sub_10016F024(&v103);
    v113 = 0u;
    v114 = 0u;
    v67 = v88;
    v71 = v89;
  }

LABEL_64:
  sub_100095C84(&v113, &qword_1002A9210, &unk_10023BE70);
  v69 = 0;
  v70 = 0;
LABEL_65:
  *&v95 = v71;
  *(&v95 + 1) = v55;
  *&v96 = v50;
  *(&v96 + 1) = v67;
  v97 = v57;
  v98 = v58;
  v99 = v62;
  v100 = v63;
  v101 = v69;
  v102 = v70;
  v103 = v71;
  v104 = v55;
  v105 = v50;
  v106 = v67;
  v107 = v57;
  v108 = v58;
  v109 = v62;
  v110 = v63;
  v111 = v69;
  v112 = v70;
  sub_1001B6184(&v95, v94);
  sub_1001B61BC(&v103);
  v72 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate;
  v73 = v91;
  swift_beginAccess();
  sub_1001B6040(v73 + v72, v94);
  if (!v94[3])
  {
    sub_1001B61BC(&v95);
    sub_100095C84(v94, &qword_1002A9BF8, &qword_10023EA00);
    return;
  }

  sub_1000A097C(v94, v93);
  sub_100095C84(v94, &qword_1002A9BF8, &qword_10023EA00);
  v74 = *sub_1000A09E0(v93, v93[3]);
  v75 = *(v73 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer);
  v92 = sub_1001F29A8(_swiftEmptyArrayStorage);
  v76 = *(&v95 + 1);
  if (*(&v95 + 1))
  {
    v77 = v95;

    sub_1001DA564(v77, v76, 1701667182, 0xE400000000000000);
  }

  v78 = *(v74 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_manager);
  if (v78)
  {
    v79 = v78;
    v80 = [v75 identifier];
    if (!v80)
    {
      __break(1u);
      return;
    }

    v81 = v80;
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;

    v85 = v92;
    if (*&v79[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_proxCard])
    {
      v79[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_pairingState] = 3;
      v86 = *&v79[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server];
      sub_100156798(v82, v84, 1, v85, 0);
      sub_1001B61BC(&v95);
    }

    else
    {
      sub_1001B61BC(&v95);
    }
  }

  else
  {
    sub_1001B61BC(&v95);
  }

  sub_100095808(v93);
}

uint64_t sub_1001B380C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = a4;
  v6(v7, v9, a3, a4);
}

void sub_1001B38D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
  v12 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token + 8);
  v38 = (v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
  v13 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_tokenUUID;
  swift_beginAccess();
  v14 = *(v8 + 16);
  v41 = v8 + 16;
  v42 = v13;
  v40 = v14;
  v14(v10, v3 + v13, v7);
  v15 = v3 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
  swift_beginAccess();
  *(v15 + 8) = 0;
  sub_1000A0CD8(v11, v12);

  *(v15 + 16) = 2;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0xE000000000000000;

  v16 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  (*(v8 + 24))(v15 + *(v16 + 36), v10, v7);
  v17 = (v15 + *(v16 + 40));
  v18 = *v17;
  v19 = v17[1];
  *v17 = v11;
  v17[1] = v12;
  sub_1000A0CD8(v11, v12);
  sub_1000A0D2C(v18, v19);
  sub_1001B23F4();
  v20 = *(v8 + 8);
  v20(v10, v7);
  swift_endAccess();
  sub_1000A0D2C(v11, v12);
  (*(v43 + 16))(v6, v3 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v44);

  v39 = v6;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v37 = v20;
    v24 = v23;
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    v40(v10, v3 + v42, v7);
    v26 = UUID.uuidString.getter();
    v28 = v27;
    v37(v10, v7);
    v29 = sub_1000952D4(v26, v28, aBlock);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "Activating token for %s", v24, 0xCu);
    sub_100095808(v25);

    v20 = v37;
  }

  (*(v43 + 8))(v39, v44);
  v30 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_manager);
  v31 = *v38;
  v32 = v38[1];
  sub_1000A0CD8(*v38, v32);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v31, v32);
  v40(v10, v3 + v42, v7);
  UUID.uuidString.getter();
  v20(v10, v7);
  v34 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001B6174;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001B2348;
  aBlock[3] = &unk_10027A8F0;
  v35 = _Block_copy(aBlock);

  [v30 requestActivationForAuthToken:isa withUUID:v34 completionHandler:v35];
  _Block_release(v35);
}

void sub_1001B3DE0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = __chkstk_darwin(v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v19 = &v74 - v18;
  __chkstk_darwin(v17);
  v24 = &v74 - v20;
  if (a3)
  {
    v25 = v11;
    v26 = v11;
    v27 = v21;
    (*(v21 + 16))(&v74 - v20, a4 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v26);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v79 = v25;
      v31 = v30;
      v32 = swift_slowAlloc();
      v82[0] = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = sub_1000952D4(v33, v34, v82);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Auth activation request failed: %s", v31, 0xCu);
      sub_100095808(v32);

      (*(v27 + 8))(v24, v79);
    }

    else
    {

      (*(v27 + 8))(v24, v25);
    }

    sub_1001B50F0(a3);
  }

  else
  {
    v77 = v7;
    if (a2 >> 60 == 15)
    {
      v36 = v21;
      (*(v21 + 16))(v19, a4 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v11);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Auth activation request failed: No data returned", v39, 2u);
      }

      (*(v36 + 8))(v19, v11);
      sub_1000B346C();
      v40 = swift_allocError();
      *v41 = 2;
      sub_1001B50F0(v40);
    }

    else
    {
      v76 = v23;
      v74 = v22;
      v75 = a2;
      v42 = v21;
      v79 = v11;
      v43 = a4 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
      swift_beginAccess();
      if (*(v43 + 16) == 2)
      {
        swift_beginAccess();
        sub_1001059EC();
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        *(v43 + 32) = 0xE000000000000000;

        v44 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
        v45 = (v43 + *(v44 + 40));
        v46 = *v45;
        v47 = v45[1];
        *v45 = xmmword_10023BF90;
        sub_1000A0D2C(v46, v47);
        UUID.init()();
        (*(v8 + 40))(v43 + *(v44 + 36), v10, v77);
        *(v43 + 8) = 0;
        *(v43 + 40) = 0;
        swift_endAccess();

        v48 = *(v42 + 16);
        v48(v76, a4 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v79);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "Auth activation successful.", v51, 2u);
        }

        v52 = *(v42 + 8);
        v53 = v79;
        v77 = v42 + 8;
        v52(v76, v79);
        v54 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate;
        swift_beginAccess();
        sub_1001B6040(a4 + v54, v82);
        if (v82[3])
        {
          sub_1000A097C(v82, v81);
          sub_100095C84(v82, &qword_1002A9BF8, &qword_10023EA00);
          v55 = sub_1000A09E0(v81, v81[3]);
          v56 = *(a4 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer);
          v57 = v74;
          v48(v74, *v55 + OBJC_IVAR____TtC14dockaccessoryd15AccessoryServer_logger, v53);
          v58 = v56;
          v59 = v78;
          v60 = v75;
          sub_1000B4F20(v78, v75);
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.default.getter();
          sub_1000A452C(v59, v60);
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v76 = v52;
            v64 = v63;
            v65 = v58;
            v66 = swift_slowAlloc();
            v80 = v66;
            *v64 = 136315138;
            v67 = Data.base64EncodedString(options:)(0);
            v68 = sub_1000952D4(v67._countAndFlagsBits, v67._object, &v80);

            *(v64 + 4) = v68;
            _os_log_impl(&_mh_execute_header, v61, v62, "Provisioning new SW auth token: %s", v64, 0xCu);
            sub_100095808(v66);
            v58 = v65;

            v76(v57, v53);
          }

          else
          {

            v52(v57, v53);
          }

          isa = Data._bridgeToObjectiveC()().super.isa;
          [v58 provisionToken:isa];

          sub_100095808(v81);
        }

        else
        {
          sub_100095C84(v82, &qword_1002A9BF8, &qword_10023EA00);
        }
      }

      else
      {
        v69 = v79;
        (*(v42 + 16))(v14, a4 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v79);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&_mh_execute_header, v70, v71, "Ignoring auth response, accessory not activating or already activated.", v72, 2u);
        }

        (*(v42 + 8))(v14, v69);
      }
    }
  }
}

void sub_1001B46E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v44 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
  swift_beginAccess();
  *(v12 + 8) = 0;

  *(v12 + 16) = 3;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0xE000000000000000;

  v13 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  v14 = a3;
  (*(v7 + 24))(v12 + *(v13 + 36), a3, v6);
  v15 = (v12 + *(v13 + 40));
  v16 = *v15;
  v17 = v15[1];
  v18 = v44;
  *v15 = a1;
  v15[1] = v18;
  v42 = a1;
  sub_1000A0CD8(a1, v18);
  sub_1000A0D2C(v16, v17);
  sub_1001B23F4();
  swift_endAccess();
  v19 = *(v43 + 16);
  v41 = v9;
  v19(v11, v45 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v9);
  v37 = v7;
  v38 = v14;
  v20 = *(v7 + 16);
  v21 = v36;
  v39 = v6;
  v20();
  v40 = v11;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    v26 = v21;
    v27 = UUID.uuidString.getter();
    v29 = v28;
    (*(v37 + 8))(v26, v39);
    v30 = sub_1000952D4(v27, v29, aBlock);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Confirming token for %s", v24, 0xCu);
    sub_100095808(v25);
  }

  else
  {

    (*(v37 + 8))(v21, v39);
  }

  (*(v43 + 8))(v40, v41);
  v31 = v45;
  v32 = *(v45 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_manager);
  isa = Data._bridgeToObjectiveC()().super.isa;
  UUID.uuidString.getter();
  v34 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001B616C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10015C1F8;
  aBlock[3] = &unk_10027A8C8;
  v35 = _Block_copy(aBlock);

  [v32 confirmActivationForAuthToken:isa withUUID:v34 completionHandler:v35];
  _Block_release(v35);
}

void sub_1001B4B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v13 = __chkstk_darwin(v10);
  v15 = v41 - v14 + 24;
  __chkstk_darwin(v13);
  v17 = v41 - v16 + 24;
  if (a1)
  {
    (*(v9 + 16))(v41 - v16 + 24, a2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v8);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v42[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_1000952D4(v22, v23, v42);
      v40 = v8;
      v25 = v24;

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Auth confirmation request failed: %s", v20, 0xCu);
      sub_100095808(v21);

      (*(v9 + 8))(v17, v40);
    }

    else
    {

      (*(v9 + 8))(v17, v8);
    }

    sub_1001B50F0(a1);
  }

  else
  {
    v26 = a2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
    swift_beginAccess();
    if (*(v26 + 16) == 3)
    {
      swift_beginAccess();
      sub_1001059EC();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0xE000000000000000;

      v27 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
      v28 = (v26 + *(v27 + 40));
      v29 = *v28;
      v30 = v28[1];
      *v28 = xmmword_10023BF90;
      sub_1000A0D2C(v29, v30);
      UUID.init()();
      (*(v5 + 40))(v26 + *(v27 + 36), v7, v4);
      *(v26 + 8) = 0;
      *(v26 + 40) = 0;
      swift_endAccess();

      (*(v9 + 16))(v15, a2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v8);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Auth token confirmed.", v33, 2u);
      }

      (*(v9 + 8))(v15, v8);
      v34 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate;
      swift_beginAccess();
      sub_1001B6040(a2 + v34, v42);
      if (v42[3])
      {
        sub_1000A097C(v42, v41);
        sub_100095C84(v42, &qword_1002A9BF8, &qword_10023EA00);
        sub_1000A09E0(v41, v41[3]);
        v35 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer);
        v36 = v35;
        sub_100161B78(v35, 0);

        sub_100095808(v41);
      }

      else
      {
        sub_100095C84(v42, &qword_1002A9BF8, &qword_10023EA00);
      }
    }

    else
    {
      (*(v9 + 16))(v12, a2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v8);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Ignoring confirmation response, accessory not confirming or already confirmed.", v39, 2u);
      }

      (*(v9 + 8))(v12, v8);
    }
  }
}

void sub_1001B50F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v29 = v4;
  v31[0] = a1;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  type metadata accessor for MFAAError(0);
  if (swift_dynamicCast())
  {
    v28 = v9;
    v12 = v30[0];
    v31[0] = v30[0];
    sub_1001B6124(&qword_1002A6D48, type metadata accessor for MFAAError, &unk_10023BC2C);
    if (_BridgedStoredNSError.errorCode.getter() == -5)
    {
      v27 = v12;
      v13 = v1 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
      swift_beginAccess();
      if (*(v13 + 40) <= 2)
      {
        v14 = v28;
        (*(v28 + 16))(v11, v1 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger, v8);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "Network error occurred, attempting retry.", v17, 2u);
        }

        (*(v14 + 8))(v11, v8);
        swift_beginAccess();
        sub_1001059EC();
        sub_1001B23F4();
        swift_endAccess();

        return;
      }
    }

    else
    {
    }
  }

  v18 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate;
  swift_beginAccess();
  sub_1001B6040(v2 + v18, v31);
  v19 = v29;
  if (v31[3])
  {
    sub_1000A097C(v31, v30);
    sub_100095C84(v31, &qword_1002A9BF8, &qword_10023EA00);
    sub_1000A09E0(v30, v30[3]);
    v20 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer);
    v21 = v20;
    sub_100161B78(v20, a1);

    sub_100095808(v30);
  }

  else
  {
    sub_100095C84(v31, &qword_1002A9BF8, &qword_10023EA00);
  }

  v22 = v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
  swift_beginAccess();
  sub_1001059EC();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = 0xE000000000000000;

  v23 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  v24 = (v22 + *(v23 + 40));
  v25 = *v24;
  v26 = v24[1];
  *v24 = xmmword_10023BF90;
  sub_1000A0D2C(v25, v26);
  UUID.init()();
  (*(v5 + 40))(v22 + *(v23 + 36), v7, v19);
  *(v22 + 8) = 0;
  *(v22 + 40) = 0;
  swift_endAccess();
}

uint64_t sub_1001B5560(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_tokenUUID;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  sub_1000A0D2C(*(v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token), *(v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token + 8));
  sub_1001B60B0(v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry);

  sub_100095C84(v2 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate, &qword_1002A9BF8, &qword_10023EA00);

  return swift_deallocClassInstance();
}

uint64_t sub_1001B56D8(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v4 <= 0x3F)
    {
      result = type metadata accessor for DockAccessorySWAuth.AuthRetry(319);
      if (v5 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1001B5838(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1001B58F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001B599C(uint64_t a1)
{
  type metadata accessor for Transaction(319);
  if (v1 <= 0x3F)
  {
    sub_1001B5A5C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001B5A5C(uint64_t a1)
{
  if (!qword_1002ABDF8)
  {
    sub_10009589C(&qword_1002A7268, &unk_10023C680);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002ABDF8);
    }
  }
}

uint64_t getEnumTagSinglePayload for DockAccessorySWAuth.AuthRetryStep(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DockAccessorySWAuth.AuthRetryStep(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001B5C14()
{
  result = qword_1002ABE40;
  if (!qword_1002ABE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ABE40);
  }

  return result;
}

uint64_t sub_1001B5C6C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  __chkstk_darwin(v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
  swift_beginAccess();
  sub_1001B5FDC(v8, v7);
  if (*(v7 + 5) > 2)
  {
    v9 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate;
    swift_beginAccess();
    sub_1001B6040(v0 + v9, v29);
    if (v30)
    {
      sub_1000A097C(v29, v28);
      sub_100095C84(v29, &qword_1002A9BF8, &qword_10023EA00);
      sub_1000A09E0(v28, v28[3]);
      v10 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer);
      sub_1000B346C();
      v11 = swift_allocError();
      *v12 = 4;
      v13 = v10;
      sub_100161B78(v10, v11);

      sub_100095808(v28);
    }

    else
    {
      sub_100095C84(v29, &qword_1002A9BF8, &qword_10023EA00);
    }

    swift_beginAccess();
    sub_1001059EC();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0xE000000000000000;

    v24 = (v8 + *(v5 + 40));
    v25 = *v24;
    v26 = v24[1];
    *v24 = xmmword_10023BF90;
    sub_1000A0D2C(v25, v26);
    UUID.init()();
    (*(v2 + 40))(v8 + *(v5 + 36), v4, v1);
    *(v8 + 8) = 0;
    *(v8 + 40) = 0;
    swift_endAccess();
  }

  else if (v7[16] > 1u)
  {
    if (v7[16] == 2)
    {
      v14 = &v7[*(v5 + 40)];
      v15 = *v14;
      v16 = v14[1];
      v17 = (v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
      v18 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
      v19 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token + 8);
      *v17 = v15;
      v17[1] = v16;
      sub_1000A0CD8(v15, v16);
      sub_1000A0D2C(v18, v19);
      v20 = *(v5 + 36);
      v21 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_tokenUUID;
      swift_beginAccess();
      (*(v2 + 24))(v0 + v21, &v7[v20], v1);
      v22 = swift_endAccess();
      sub_1001B38D8(v22, v23);
    }

    else
    {
      sub_1001B46E0(*&v7[*(v5 + 40)], *&v7[*(v5 + 40) + 8], &v7[*(v5 + 36)]);
    }
  }

  else if (v7[16])
  {
    sub_1001B26B8(*(v7 + 3), *(v7 + 4));
  }

  return sub_1001B60B0(v7);
}

uint64_t sub_1001B5FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B6040(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A9BF8, &qword_10023EA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B60B0(uint64_t a1)
{
  v2 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B610C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001B6124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1001B61EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1001B6208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_1001B6264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DockIDSServer(uint64_t a1)
{
  result = qword_1002ABE98;
  if (!qword_1002ABE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B6340(uint64_t a1)
{
  sub_1001C7A50(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1001B6410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000B5150(a3, v25 - v10, &unk_1002A73C0, &unk_10023BE80);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100095C84(v11, &unk_1002A73C0, &unk_10023BE80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100095C84(a3, &unk_1002A73C0, &unk_10023BE80);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100095C84(a3, &unk_1002A73C0, &unk_10023BE80);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001B6710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000B5150(a3, v25 - v10, &unk_1002A73C0, &unk_10023BE80);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100095C84(v11, &unk_1002A73C0, &unk_10023BE80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100095C84(a3, &unk_1002A73C0, &unk_10023BE80);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100095C84(a3, &unk_1002A73C0, &unk_10023BE80);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001B6A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000B5150(a3, v22 - v9, &unk_1002A73C0, &unk_10023BE80);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100095C84(v10, &unk_1002A73C0, &unk_10023BE80);
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

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100095C84(a3, &unk_1002A73C0, &unk_10023BE80);

      return v20;
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

  sub_100095C84(a3, &unk_1002A73C0, &unk_10023BE80);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001B6CB4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10016D5D4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1001EEB6C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_1001EAA1C(v5, v7);
  *v2 = v7;
  return v10;
}

void sub_1001B6D9C(uint64_t (*a1)(char *, __n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a1;
  v33 = a3;
  v36 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v32 = *(v36 - 8);
  v6 = __chkstk_darwin(v36);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = &v32 - v9;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v37 = a2;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v38 = v4;
      v16 = v8;
      v17 = v15;
LABEL_9:
      v18 = __clz(__rbit64(v13)) | (v17 << 6);
      v19 = v37;
      v20 = *(v37 + 48);
      v21 = type metadata accessor for UUID();
      v22 = *(v21 - 8);
      v23 = v20 + *(v22 + 72) * v18;
      v24 = v34;
      (*(v22 + 16))(v34, v23, v21);
      v25 = (*(v19 + 56) + 16 * v18);
      v26 = *v25;
      v27 = v25[1];
      v28 = (v24 + *(v36 + 48));
      *v28 = v26;
      v28[1] = v27;
      v8 = v16;
      sub_1001CD81C(v24, v16);

      v29 = v38;
      v30 = (v35)(v16);
      v4 = v29;
      if (v29)
      {
        sub_100095C84(v8, &qword_1002ABEF8, &qword_10023F728);

        return;
      }

      if (v30)
      {
        break;
      }

      v13 &= v13 - 1;
      sub_100095C84(v8, &qword_1002ABEF8, &qword_10023F728);
      v15 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v31 = v33;
    sub_1001CD81C(v8, v33);
    (*(v32 + 56))(v31, 0, 1, v36);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        (*(v32 + 56))(v33, 1, 1, v36);
        return;
      }

      v13 = *(v10 + 8 * v17);
      ++v15;
      if (v13)
      {
        v38 = v4;
        v16 = v8;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001B706C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_100093D84(v2, qword_1002ABE48);
  sub_100093DE8(v2, qword_1002ABE48);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001B70DC()
{
  v1 = v0;
  v2 = type metadata accessor for DockKitIDSMessageType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for DockKitIDSMessageType.register(_:))
  {
    return 0x7265747369676572;
  }

  if (v6 == enum case for DockKitIDSMessageType.deRegister(_:))
  {
    return 0x7473696765526564;
  }

  if (v6 == enum case for DockKitIDSMessageType.ack(_:))
  {
    return 7037793;
  }

  if (v6 == enum case for DockKitIDSMessageType.info(_:))
  {
    return 1868983913;
  }

  if (v6 == enum case for DockKitIDSMessageType.select(_:))
  {
    return 0x7463656C6573;
  }

  if (v6 == enum case for DockKitIDSMessageType.offset(_:))
  {
    return 0x74657366666FLL;
  }

  if (v6 == enum case for DockKitIDSMessageType.region(_:))
  {
    return 0x6E6F69676572;
  }

  if (v6 == enum case for DockKitIDSMessageType.frame(_:))
  {
    return 0x656D617266;
  }

  if (v6 == enum case for DockKitIDSMessageType.velocity(_:))
  {
    return 0x797469636F6C6576;
  }

  if (v6 == enum case for DockKitIDSMessageType.objects(_:))
  {
    return 0x737463656A626FLL;
  }

  if (v6 == enum case for DockKitIDSMessageType.debug(_:))
  {
    return 0x6775626564;
  }

  if (v6 == enum case for DockKitIDSMessageType.trajectory(_:))
  {
    return 0x6F7463656A617274;
  }

  if (v6 == enum case for DockKitIDSMessageType.diagnostics(_:))
  {
    return 0x74736F6E67616964;
  }

  if (v6 == enum case for DockKitIDSMessageType.systemTracking(_:))
  {
    return 0x72546D6574737973;
  }

  if (v6 == enum case for DockKitIDSMessageType.camera(_:))
  {
    return 0x6172656D6163;
  }

  v8 = v6;
  result = 0x76696C417065656BLL;
  if (v8 != enum case for DockKitIDSMessageType.keepAlive(_:) && v8 != enum case for DockKitIDSMessageType.keepAliveResp(_:))
  {
    (*(v3 + 8))(v5, v2);
    return 0x6E776F6E6B6E75;
  }

  return result;
}