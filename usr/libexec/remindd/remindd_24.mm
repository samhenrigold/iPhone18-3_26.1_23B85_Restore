Swift::Void __swiftcall REMCDTemplate.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093F4A0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10093F4C0, &qword_10079DF80);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

_TtC7remindd19RDXPCStorePerformer *REMCDTemplate.objectsToBeDeletedBeforeThisObject()()
{
  v1 = [v0 savedReminders];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for REMCDSavedReminder();
    sub_10027D940(&qword_100944240, type metadata accessor for REMCDSavedReminder, &protocol conformance descriptor for NSObject);
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100278454(v3);
    v3, v5, v6, v7, v8, v9, v10, v11;
    v12 = sub_100270E28(v4, type metadata accessor for REMCDSavedReminder);

    sub_100271468(v12);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_100277CC0(uint64_t a1)
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

    v1 = sub_100278FCC(&v5, v3 + 4, v2, v1);
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

_TtC7remindd19RDXPCStorePerformer *sub_100277DF0(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v10, v6 + 32, v3, a1);
  v8 = v10;

  sub_10001B860(v8);
  if (v7 != v3)
  {
    __break(1u);
    return &_swiftEmptyArrayStorage;
  }

  return v6;
}

_TtC7remindd19RDXPCStorePerformer *sub_100277EBC(uint64_t *a1)
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

    v1 = sub_100026AA8(&v5, v3 + 4, v2, v1, &qword_1009391E0, REMObjectID_ptr, &qword_1009391F0);
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

void sub_100277FFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000F5104(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1002781A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000F5104(&unk_100936FD0, &unk_100795D40);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100278278(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10027836C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000F5104(&qword_10093F7B0, &unk_10079D600);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100278454(uint64_t *a1)
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

    v1 = sub_100279C80(&v5, v3 + 4, v2, v1, type metadata accessor for REMCDSavedReminder, &qword_100944240, type metadata accessor for REMCDSavedReminder);
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

_TtC7remindd19RDXPCStorePerformer *sub_100278534(uint64_t *a1)
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

    v1 = sub_100026AA8(&v5, v3 + 4, v2, v1, &unk_10093F5F0, REMAssignment_ptr, &qword_100939230);
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

_TtC7remindd19RDXPCStorePerformer *sub_1002785FC(uint64_t *a1)
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

    v1 = sub_100026AA8(&v5, v3 + 4, v2, v1, &unk_10093F600, REMHashtag_ptr, &qword_10093AA28);
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

void sub_1002786C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = &_swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(&v8->clientIdentity[16], (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_1000F5104(&unk_100943FC0, &unk_10079D380);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      *v8->clientIdentity = v5;
      *&v8->clientIdentity[8] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1002787BC(unint64_t a1, char *a2, unint64_t *a3, void *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = __CocoaDictionary.count.getter();
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = (a2)(v8, 0);

    a4 = sub_100278DD0(&v10, a2 + 4, v8, a1, a3, a4);
    sub_10001B860(v10);
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return a2;
}

_TtC7remindd19RDXPCStorePerformer *sub_10027888C(uint64_t *a1)
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

    v1 = sub_100026AA8(&v5, v3 + 4, v2, v1, &qword_100939EE0, off_1008D41D0, &qword_100944210);
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

_TtC7remindd19RDXPCStorePerformer *sub_100278954(uint64_t *a1)
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

    v1 = sub_100026AA8(&v5, v3 + 4, v2, v1, &qword_10093CFE0, off_1008D4190, &qword_10093B280);
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

_TtC7remindd19RDXPCStorePerformer *sub_100278A1C(uint64_t *a1)
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

    v1 = sub_100026AA8(&v5, v3 + 4, v2, v1, &unk_10093F790, off_1008D4158, &qword_10093CC38);
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

_TtC7remindd19RDXPCStorePerformer *sub_100278AE4(uint64_t *a1)
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

    v1 = sub_100279C80(&v5, v3 + 4, v2, v1, type metadata accessor for REMCDSavedAttachment, &unk_10093F780, type metadata accessor for REMCDSavedAttachment);
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

_TtC7remindd19RDXPCStorePerformer *sub_100278BC4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaDictionary.count.getter();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100018D7C(v2, 0);

    v1 = sub_10027A110(&v6, v3 + 4, v2, v1, v4);
    sub_10001B860(v6);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *sub_100278C74(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100278DD0(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4;
  v9 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v20 = -1 << *(v6 + 32);
    v10 = v6 + 64;
    v11 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v12 = v22 & *(v6 + 64);
    v26 = v11;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = __CocoaDictionary.makeIterator()();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = result | 0x8000000000000000;
  v26 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v27 = a3;
  a3 = 0;
  v13 = 0;
  v14 = (v11 + 64) >> 6;
  v15 = 1;
  while (1)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_1000060C8(0, a5, a6);
      swift_dynamicCast();
      result = v28;
      v17 = v13;
      if (!v28)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v16 = v13;
    if (!v12)
    {
      break;
    }

    v17 = v13;
LABEL_13:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    result = *(*(v6 + 56) + ((v17 << 9) | (8 * v18)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v27;
    if (v15 == v27)
    {
LABEL_31:
      v17 = v13;
      goto LABEL_32;
    }

    ++a2;
    a3 = v15;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(v10 + 8 * v17);
    ++v16;
    if (v12)
    {
      v13 = v17;
      goto LABEL_13;
    }
  }

  v12 = 0;
  if (v14 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v14;
  }

  v17 = v23 - 1;
LABEL_32:
  *v9 = v6;
  v9[1] = v10;
  v9[2] = v26;
  v9[3] = v17;
  v9[4] = v12;
  return a3;
}

void *sub_100278FCC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  __CocoaSet.makeIterator()();
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  result = Set.Iterator.init(_cocoa:)();
  v4 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_31;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v21 = v9;
  v22 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_29;
    }

    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    swift_dynamicCast();
    result = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_29;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v14 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v13;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  v7 = v22;
LABEL_31:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1002791DC(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void sub_100279334(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v42 = type metadata accessor for UUID();
  v44 = *(v42 - 8);
  __chkstk_darwin(v42, v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10, v11);
  v41 = &v35 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 64;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42, v12);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1002795D8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + 16 * v17);
      *(v11 + 16) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

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

void *sub_100279730(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
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

void *sub_100279888(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void sub_1002799DC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v42 = type metadata accessor for UUID();
  v44 = *(v42 - 8);
  __chkstk_darwin(v42, v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10, v11);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42, v12);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t *sub_100279C80(uint64_t *result, uint64_t **a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  a5(0);
  sub_10027D940(a6, a7, &protocol conformance descriptor for NSObject);
  result = Set.Iterator.init(_cocoa:)();
  v8 = v32;
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
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = v14;
  v29 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      v29(0);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_30:
  v14 = v28;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

void sub_100279EBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
  v34 = *(v8 - 8);
  __chkstk_darwin(v8 - 8, v9);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v32 = &v29 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_10027D870(*(a4 + 56) + a1 * (v23 | (v18 << 6)), v33, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
      v25 = v24;
      v26 = v32;
      sub_10027D8D8(v25, v32, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
      sub_10027D8D8(v26, a2, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
      if (v20 == v31)
      {
        a1 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_10027A110(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  v5 = a4;
  v8 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v19 = -1 << *(v5 + 32);
    v9 = v5 + 64;
    v10 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v5 + 64);
    v23 = v10;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v16 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = __CocoaDictionary.makeIterator()();
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v5 = result | 0x8000000000000000;
  v23 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v16 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v24 = a3;
  a3 = 0;
  v12 = 0;
  v13 = (v10 + 64) >> 6;
  v14 = 1;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.nextKey()())
      {
        goto LABEL_31;
      }

      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_dynamicCast();
      result = v25;
      v16 = v12;
      if (!v25)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v15 = v12;
    if (!v11)
    {
      break;
    }

    v16 = v12;
LABEL_13:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v5 + 48) + ((v16 << 9) | (8 * v17)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v24;
    if (v14 == v24)
    {
LABEL_31:
      v16 = v12;
      goto LABEL_32;
    }

    ++a2;
    a3 = v14;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v16 >= v13)
    {
      break;
    }

    v11 = *(v9 + 8 * v16);
    ++v15;
    if (v11)
    {
      v12 = v16;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v12 + 1)
  {
    v22 = v12 + 1;
  }

  else
  {
    v22 = v13;
  }

  v16 = v22 - 1;
LABEL_32:
  *v8 = v5;
  v8[1] = v9;
  v8[2] = v23;
  v8[3] = v16;
  v8[4] = v11;
  return a3;
}

void sub_10027A30C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v34 = *(v8 - 8);
  __chkstk_darwin(v8 - 8, v9);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v32 = &v29 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_10027D870(*(a4 + 48) + a1 * (v23 | (v18 << 6)), v33, type metadata accessor for RDPermanentlyHiddenReminder);
      v25 = v24;
      v26 = v32;
      sub_10027D8D8(v25, v32, type metadata accessor for RDPermanentlyHiddenReminder);
      sub_10027D8D8(v26, a2, type metadata accessor for RDPermanentlyHiddenReminder);
      if (v20 == v31)
      {
        a1 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_10027A560(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_10027A6B4(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10027A80C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&unk_10093F540, &qword_10093F538, &qword_10079DFB8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F538, &qword_10079DFB8);
            v9 = sub_10038D778(v13, i, a3);
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
        sub_1000F5104(&qword_10093F530, &qword_10079B220);
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

uint64_t sub_10027A9A8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&unk_10093F5B0, &qword_10093F5A8, &qword_10079DFD0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F5A8, &qword_10079DFD0);
            v9 = sub_10038D778(v13, i, a3);
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
        sub_1000F5104(&unk_100939F10, &qword_100797F30);
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

uint64_t sub_10027AB44(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&unk_10093F630, &qword_10093F628, &qword_10079DFD8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F628, &qword_10079DFD8);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
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

uint64_t sub_10027ACE4(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&unk_10093F5D0, &qword_10093A578, &qword_1007A1E10);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
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

uint64_t sub_10027AE84(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&unk_10093F4E0, &qword_10093CAC0, &unk_10079E1E0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
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

uint64_t sub_10027B024(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F570, &qword_10093F568, &qword_10079DFC0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F568, &qword_10079DFC0);
            v9 = sub_10038D778(v13, i, a3);
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
        sub_1000F5104(&qword_10093F560, &qword_10079C0F0);
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

uint64_t sub_10027B1C0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F648, &qword_10093F640, &qword_100796D50);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F640, &qword_100796D50);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
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

uint64_t sub_10027B360(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F6F8, &qword_10093F6F0, qword_10079A300);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F6F0, qword_10079A300);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &unk_100938880, off_1008D41A8);
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

uint64_t sub_10027B500(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F5A0, &qword_10093F598, &qword_1007A2640);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F598, &qword_1007A2640);
            v9 = sub_10038D6F8(v13, i, a3);
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
        type metadata accessor for REMObjectID_Codable();
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

uint64_t sub_10027B690(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&unk_10093F740, &qword_10093F738, &qword_10079E020);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F738, &qword_10079E020);
            v9 = sub_10038D778(v13, i, a3);
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
        _s19PolymorphicListItemCMa_0();
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

uint64_t sub_10027B820(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F558, &qword_10093F550, &unk_10079DC30);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F550, &unk_10079DC30);
            v9 = sub_10038D778(v13, i, a3);
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
        sub_1000F5104(&qword_10093D5C8, &unk_1007A76F0);
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

uint64_t sub_10027B9BC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F520, &qword_10093F3A8, qword_1007AC5F0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F3A8, qword_1007AC5F0);
            v9 = sub_100011090(v13, i, a3);
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
        type metadata accessor for REMCDSavedReminder();
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

uint64_t sub_10027BB4C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F708, &qword_10093F700, &qword_10079E000);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F700, &qword_10079E000);
            v9 = sub_10038D778(v13, i, a3);
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
        _s19PolymorphicListItemCMa_1();
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

uint64_t sub_10027BCDC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&unk_10093F760, &qword_10093F758, &qword_10079E028);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F758, &qword_10079E028);
            v9 = sub_10038D778(v13, i, a3);
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
        _s8BaseListCMa();
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

uint64_t sub_10027BE6C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F5E8, &qword_10093F5E0, &unk_1007B5240);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F5E0, &unk_1007B5240);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
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

uint64_t sub_10027C00C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F5C8, &qword_10093F5C0, &qword_1007A1FB0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
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

uint64_t sub_10027C1AC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F750, &qword_10093F3B8, &unk_10079DDE0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F3B8, &unk_10079DDE0);
            v9 = sub_100011090(v13, i, a3);
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
        type metadata accessor for REMCDTemplate();
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

uint64_t sub_10027C33C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&unk_10093F680, &qword_10094F400, &qword_1007A77C0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10094F400, &qword_1007A77C0);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
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

uint64_t sub_10027C4DC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F7D0, &qword_10093F7C8, &qword_10079E038);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F7C8, &qword_10079E038);
            v9 = sub_10038D778(v13, i, a3);
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
        type metadata accessor for DueDateNonVerifiableAlarm();
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

uint64_t sub_10027C66C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F7C0, &qword_10093F7B8, &qword_10079E030);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F7B8, &qword_10079E030);
            v9 = sub_10038D778(v13, i, a3);
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
        type metadata accessor for DueDateVerifiableAlarm();
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

uint64_t sub_10027C7FC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&unk_10093F6A0, &qword_10094F560, &qword_1007AC6A0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10094F560, &qword_1007AC6A0);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
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

uint64_t sub_10027C99C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F6B8, &qword_10093F6B0, &qword_10079DFF0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F6B0, &qword_10079DFF0);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &qword_100944260, off_1008D41D8);
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

uint64_t sub_10027CB3C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F660, &qword_10093F658, &qword_10079DFE0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F658, &qword_10079DFE0);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
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

uint64_t sub_10027CCDC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F590, &qword_10094F660, &unk_1007B1570);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10094F660, &unk_1007B1570);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
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

uint64_t sub_10027CE7C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F728, &qword_10093F720, &qword_10079E010);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F720, &qword_10079E010);
            v9 = sub_10038D7F8(v13, i, a3);
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
        _s19PolymorphicListItemCMa();
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

uint64_t sub_10027D00C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100011110(&qword_10093F7F8, &qword_10093F7F0, &qword_10079E048);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10093F7F0, &qword_10079E048);
            v9 = sub_100011090(v13, i, a3);
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
        sub_1000060C8(0, &unk_10094B8D0, INRelevantShortcut_ptr);
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

uint64_t sub_10027D1AC(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v13;
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
    if (v6)
    {
      v8 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_100011110(&qword_10093F620, &qword_10093B330, &qword_100798980);
          for (i = 0; i != v7; ++i)
          {
            sub_1000F5104(&qword_10093B330, &qword_100798980);
            v10 = sub_100011090(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
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
        type metadata accessor for REMCKSharedEntitySyncActivity();
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

void sub_10027D33C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v7 = type metadata accessor for NSFastEnumerationIterator();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSOrderedSet.makeIterator()();

  if (a2 && a3)
  {
    if (a3 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_10027D940(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
      v12 = 1;
      while (1)
      {
        dispatch thunk of IteratorProtocol.next()();
        if (!v15)
        {
          break;
        }

        sub_100005EE0(&v14, v16);
        sub_100005EE0(v16, a2);
        if (a3 == v12)
        {
          goto LABEL_10;
        }

        a2 += 2;
        if (__OFADD__(v12++, 1))
        {
          __break(1u);
          goto LABEL_10;
        }
      }

      sub_1000050A4(&v14, &qword_100939ED0, &qword_100791B10);
      (*(v8 + 32))(a1, v11, v7);
    }
  }

  else
  {
LABEL_10:
    (*(v8 + 32))(a1, v11, v7);
  }
}

unint64_t sub_10027D52C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7remindd13REMCDTemplateC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093F4A0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10093F4C0, &qword_10079DF80);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _s7remindd13REMCDTemplateC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093F4A0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_10093F4C0, &qword_10079DF80);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_10027D870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027D8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027D940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s6FieldsOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6FieldsOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10027DAD8(uint64_t a1)
{
  result = sub_10027DB00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10027DB00()
{
  result = qword_10093F820;
  if (!qword_10093F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F820);
  }

  return result;
}

unint64_t sub_10027DB54(uint64_t a1)
{
  result = sub_10027DB7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10027DB7C()
{
  result = qword_10093F828;
  if (!qword_10093F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F828);
  }

  return result;
}

unint64_t sub_10027DC04()
{
  result = qword_10093F840;
  if (!qword_10093F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F840);
  }

  return result;
}

uint64_t sub_10027DC68()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093F850);
  v1 = sub_100006654(v0, qword_10093F850);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10027DD30(void *a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v198 = a7;
  v185 = a6;
  v193 = a5;
  v194 = a4;
  v191 = a3;
  v178 = *v7;
  v10 = sub_1000F5104(&unk_10093E9D0, &qword_10079E220);
  __chkstk_darwin(v10 - 8, v11);
  v183 = (&v171 - v12);
  v186 = type metadata accessor for REMTitleEmbeddingConfig();
  v192 = *(v186 - 8);
  __chkstk_darwin(v186, v13);
  v171 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v179 = &v171 - v17;
  v189 = type metadata accessor for URL();
  v181 = *(v189 - 8);
  __chkstk_darwin(v189, v18);
  v180 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v171 - v22;
  __chkstk_darwin(v24, v25);
  v188 = &v171 - v26;
  v27 = type metadata accessor for SymmetricKeySize();
  __chkstk_darwin(v27 - 8, v28);
  v29 = sub_1000F5104(&qword_10093F978, &qword_10079E228);
  __chkstk_darwin(v29 - 8, v30);
  v32 = &v171 - v31;
  v33 = type metadata accessor for SymmetricKey();
  __chkstk_darwin(v33, v34);
  v36 = &v171 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[2] = a1;
  v37 = a2[1];
  *(v7 + 3) = *a2;
  *(v7 + 5) = v37;
  v38 = *(a2 + 30);
  v190 = v7;
  *(v7 + 54) = v38;
  v40 = v39;
  v42 = v41;
  sub_100010364(v194, v32, &qword_10093F978, &qword_10079E228);
  v43 = *(v42 + 48);
  v44 = v43(v32, 1, v40);
  v184 = a1;
  if (v44 == 1)
  {
    v45 = a1;
    static SymmetricKeySize.bits128.getter();
    SymmetricKey.init(size:)();
    if (v43(v32, 1, v40) != 1)
    {
      sub_1000050A4(v32, &qword_10093F978, &qword_10079E228);
    }
  }

  else
  {
    (*(v42 + 32))(v36, v32, v40);
    v46 = a1;
  }

  v47 = *(v42 + 32);
  v48 = v190;
  v177 = OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_salt;
  v47(&v190[OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_salt], v36, v40);
  v49 = OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_timezone;
  v50 = type metadata accessor for TimeZone();
  v187 = *(v50 - 8);
  v51 = *(v187 + 16);
  v176 = v49;
  v51(&v48[v49], v193, v50);
  v52 = v191;
  v174 = OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_options;
  *&v48[OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_options] = v191;
  v175 = OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_embeddingsURL;
  sub_100010364(v198, &v48[OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_embeddingsURL], &unk_1009441F0, &qword_100795760);
  sub_1000060C8(0, &qword_10093E9B0, REMPaths_ptr);
  v173 = v40;
  v191 = v52;
  static REMPaths.mlModelURL()();
  static REMTitleEmbeddingConfig.configFileName.getter();
  v54 = v53;
  v55 = v188;
  URL.appendingPathComponent(_:)();
  v54, v56, v57, v58, v59, v60, v61, v62;
  v63 = v181;
  v172 = v42;
  v64 = v181 + 8;
  v65 = *(v181 + 1);
  v66 = v23;
  v67 = v189;
  v65(v66, v189);
  (*(v63 + 2))(v180, v55, v67);
  v69 = v182;
  v68 = v183;
  REMTitleEmbeddingConfig.init(url:)();
  if (v69)
  {

    (*(v192 + 56))(v68, 1, 1, v186);
    sub_1000050A4(v68, &unk_10093E9D0, &qword_10079E220);
    v70 = objc_opt_self();
    v71 = String._bridgeToObjectiveC()();
    [v70 internalErrorWithDebugDescription:v71];

    swift_willThrow();
    sub_1000050A4(v198, &unk_1009441F0, &qword_100795760);
    sub_10000607C(v185);
    v72 = *(v187 + 8);
    v72(v193, v50);
    sub_1000050A4(v194, &qword_10093F978, &qword_10079E228);
    v65(v55, v67);

    sub_10000CC4C(*(v48 + 3), *(v48 + 4), *(v48 + 5), *(v48 + 6), *(v48 + 7), *(v48 + 16) | (*(v48 + 34) << 32), v73, v74);
    (*(v172 + 8))(&v48[v177], v173);
    v72(&v48[v176], v50);

    sub_1000050A4(&v48[v175], &unk_1009441F0, &qword_100795760);
    swift_deallocPartialClassInstance();
    return v48;
  }

  v181 = v65;
  v182 = 0;
  v180 = v50;
  v75 = v192;
  v76 = v186;
  (*(v192 + 56))(v68, 0, 1, v186);
  (*(v75 + 32))(v179, v68, v76);
  REMTitleEmbeddingConfig.majorLanguage.getter();
  v78 = v77;
  v79 = String._bridgeToObjectiveC()();
  v78, v80, v81, v82, v83, v84, v85, v86;
  v87 = v191;
  if ([v191 includeReminderTitleCategorySentence2Vec])
  {
    v88 = type metadata accessor for REMSentence2VecTitleEmbedding();
    swift_allocObject();
    v89 = v79;
    v90 = v79;
    v91 = v182;
    v92 = REMSentence2VecTitleEmbedding.init(lang:)();
    v48 = v190;
    v93 = v64;
    if (v91)
    {

      if (qword_100935DB0 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      sub_100006654(v94, qword_10093F850);
      v95 = v90;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v195 = v99;
        *v98 = 136315138;
        v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v102 = v101;
        v103 = sub_10000668C(v100, v101, &v195);
        v102, v104, v105, v106, v107, v108, v109, v110;
        *(v98 + 4) = v103;
        v93 = v64;
        _os_log_impl(&_mh_execute_header, v96, v97, "DES recipe has includeReminderTitleCategorySentence2Vec = true, but failed initializing embedding for {lang: %s}", v98, 0xCu);
        sub_10000607C(v99);
        v76 = v186;

        v87 = v191;
      }

      v182 = 0;
      v183 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v111 = v92;
      v182 = 0;
      v112 = sub_100366F54(0, 1, 1, &_swiftEmptyArrayStorage);
      v114 = *v112->clientIdentity;
      v113 = *&v112->clientIdentity[8];
      v183 = v112;
      if (v114 >= v113 >> 1)
      {
        v183 = sub_100366F54((v113 > 1), (v114 + 1), 1, v183);
      }

      v196 = v88;
      v197 = &protocol witness table for REMSentence2VecTitleEmbedding;
      *&v195 = v111;
      v115 = v183;
      *v183->clientIdentity = v114 + 1;
      sub_100054B6C(&v195, &v115->clientIdentity[40 * v114 + 16]);
      v87 = v191;
    }
  }

  else
  {
    v89 = v79;
    v183 = &_swiftEmptyArrayStorage;
    v48 = v190;
    v93 = v64;
  }

  if ([v87 includeReminderTitleCategoryUniversalGrammar])
  {
    v116 = type metadata accessor for REMUniversalGrammarTitleEmbedding();
    v117 = v89;
    v118 = v182;
    v119 = REMUniversalGrammarTitleEmbedding.__allocating_init(lang:)();
    if (!v118)
    {
      v162 = v119;
      v182 = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v183 = sub_100366F54(0, (*v183->clientIdentity + 1), 1, v183);
      }

      v164 = *v183->clientIdentity;
      v163 = *&v183->clientIdentity[8];
      if (v164 >= v163 >> 1)
      {
        v183 = sub_100366F54((v163 > 1), (v164 + 1), 1, v183);
      }

      v196 = v116;
      v197 = &protocol witness table for REMUniversalGrammarTitleEmbedding;
      *&v195 = v162;
      v165 = v183;
      *v183->clientIdentity = v164 + 1;
      sub_100054B6C(&v195, &v165->clientIdentity[40 * v164 + 16]);
      v137 = v198;
      v138 = v184;
      v139 = v187;
      v140 = v181;
      v87 = v191;
      goto LABEL_26;
    }

    if (qword_100935DB0 != -1)
    {
      swift_once();
    }

    v120 = type metadata accessor for Logger();
    sub_100006654(v120, qword_10093F850);
    v121 = v117;
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *&v195 = v125;
      *v124 = 136315138;
      v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = v127;
      v129 = sub_10000668C(v126, v127, &v195);
      v128, v130, v131, v132, v133, v134, v135, v136;
      *(v124 + 4) = v129;
      v93 = v64;
      _os_log_impl(&_mh_execute_header, v122, v123, "DES recipe has includeReminderTitleCategoryUniversalGrammar = true, but failed initializing embedding for {lang: %s}", v124, 0xCu);
      sub_10000607C(v125);
      v76 = v186;

      v87 = v191;
    }

    v182 = 0;
  }

  v137 = v198;
  v138 = v184;
  v139 = v187;
  v140 = v181;
LABEL_26:
  if ([v87 includeReminderTitleCategoryFilteredStopWords])
  {
    v141 = type metadata accessor for REMFilteredTitleEmbedding();
    (*(v192 + 16))(v171, v179, v76);
    v142 = v182;
    v143 = REMFilteredTitleEmbedding.__allocating_init(from:)();
    if (v142)
    {

      if (qword_100935DB0 != -1)
      {
        swift_once();
      }

      v144 = type metadata accessor for Logger();
      sub_100006654(v144, qword_10093F850);
      v145 = v89;
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        *&v195 = v149;
        *v148 = 136315138;
        v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v182 = v93;
        v151 = v150;
        v153 = v152;

        v154 = sub_10000668C(v151, v153, &v195);
        v153, v155, v156, v157, v158, v159, v160, v161;
        *(v148 + 4) = v154;
        _os_log_impl(&_mh_execute_header, v146, v147, "DES recipe has includeReminderTitleCategoryFilteredStopWords = true, but failed initializing embedding for {lang: %s}", v148, 0xCu);
        sub_10000607C(v149);

        v48 = v190;

        sub_1000050A4(v198, &unk_1009441F0, &qword_100795760);
        sub_10000607C(v185);
        (*(v187 + 8))(v193, v180);
        sub_1000050A4(v194, &qword_10093F978, &qword_10079E228);
        (*(v192 + 8))(v179, v186);
      }

      else
      {

        sub_1000050A4(v137, &unk_1009441F0, &qword_100795760);
        sub_10000607C(v185);
        (*(v187 + 8))(v193, v180);
        sub_1000050A4(v194, &qword_10093F978, &qword_10079E228);
        (*(v192 + 8))(v179, v76);
      }

      v181(v188, v189);
    }

    else
    {
      v166 = v143;
      v182 = 0;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v183 = sub_100366F54(0, (*v183->clientIdentity + 1), 1, v183);
      }

      v168 = *v183->clientIdentity;
      v167 = *&v183->clientIdentity[8];
      if (v168 >= v167 >> 1)
      {
        v183 = sub_100366F54((v167 > 1), (v168 + 1), 1, v183);
      }

      sub_1000050A4(v198, &unk_1009441F0, &qword_100795760);
      sub_10000607C(v185);
      (*(v187 + 8))(v193, v180);
      sub_1000050A4(v194, &qword_10093F978, &qword_10079E228);
      (*(v192 + 8))(v179, v76);
      v181(v188, v189);
      v196 = v141;
      v197 = &protocol witness table for REMFilteredTitleEmbedding;
      *&v195 = v166;
      v169 = v183;
      *v183->clientIdentity = v168 + 1;
      sub_100054B6C(&v195, &v169->clientIdentity[40 * v168 + 16]);
    }
  }

  else
  {

    sub_1000050A4(v137, &unk_1009441F0, &qword_100795760);
    sub_10000607C(v185);
    (*(v139 + 8))(v193, v180);
    sub_1000050A4(v194, &qword_10093F978, &qword_10079E228);
    (*(v192 + 8))(v179, v76);
    v140(v188, v189);
  }

  *&v48[OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_reminderTitleEmbeddings] = v183;
  return v48;
}

void sub_10027EE54(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  *&v11 = __chkstk_darwin(v8, v10).n128_u64[0];
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_options);
  v15 = [v14 includeSystemLanguage];
  v16 = 0;
  v17 = 0;
  if (v15)
  {
    static Locale.current.getter();
    v18 = Locale.languageCodeIdentifier.getter();
    v20 = v19;
    (*(v9 + 8))(v13, v8);
    if (v20)
    {
      v16 = v18;
    }

    else
    {
      v16 = 0x6E776F6E6B6E753CLL;
    }

    if (v20)
    {
      v17 = v20;
    }

    else
    {
      v17 = 0xE90000000000003ELL;
    }
  }

  v45 = v16;
  v21 = [v14 includeSystemTimezone];
  if (v21)
  {
    v22 = TimeZone.identifier.getter();
    v24 = v23;
    Date.init()();
    v25 = TimeZone.secondsFromGMT(for:)();
    (*(v46 + 8))(v7, v47);
  }

  else
  {
    v25 = 0;
    v22 = 0;
    v24 = 0;
  }

  v26 = *(v2 + 40);
  v48 = *(v2 + 24);
  v49[0] = v26;
  *(v49 + 14) = *(v2 + 54);
  v27 = v50;
  v28 = sub_100400AD4(&v48, sub_100286574, v2);
  if (v27)
  {
    v17, v29, v30, v31, v32, v33, v34, v35;
    v24, v36, v37, v38, v39, v40, v41, v42;
  }

  else
  {
    v43 = v45;
    *a1 = v28;
    *(a1 + 8) = v43;
    *(a1 + 16) = v17;
    *(a1 + 24) = v22;
    *(a1 + 32) = v24;
    *(a1 + 40) = v25;
    *(a1 + 48) = v21 ^ 1;
  }
}

void sub_10027F0F0(_TtC7remindd19RDXPCStorePerformer *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v201 = a3;
  v5 = sub_1000F5104(&qword_10093F958, &qword_10079E1D8);
  __chkstk_darwin(v5 - 8, v6);
  v203 = &v198 - v7;
  v217 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0);
  v204 = *(v217 - 8);
  __chkstk_darwin(v217, v8);
  v10 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s10PredicatesOMa(0);
  __chkstk_darwin(v11, v12);
  v14 = &v198 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000F8A4(3uLL, 0, 7u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v16 = [objc_allocWithZone(NSFetchRequest) init];
  v17 = [swift_getObjCClassFromMetadata() entity];
  [v16 setEntity:v17];

  [v16 setAffectedStores:0];
  [v16 setPredicate:v15];
  v18 = v255;
  v19 = NSManagedObjectContext.fetch<A>(_:)();
  v20 = v18;
  if (v18)
  {

    return;
  }

  v21 = v19;
  v212 = v14;
  v214 = v15;
  v213 = v11;
  v205 = v10;

  v29 = v21;
  if (v21 >> 62)
  {
    goto LABEL_88;
  }

  v222 = v21 & 0xFFFFFFFFFFFFFF8;
  v30 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v31 = v214;
  if (v30)
  {
    v32 = 0;
    v220 = OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_options;
    v221 = v29 & 0xC000000000000001;
    v211 = &v245 + 2;
    v215 = (v204 + 56);
    v199 = (&v241 + 2);
    v206 = xmmword_1007953F0;
    v202 = &_swiftEmptyArrayStorage;
    v236 = a2;
    v238 = a1;
    v219 = v30;
    while (1)
    {
      v33 = v32;
      v34 = v20;
      while (1)
      {
        if (v221)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v33 >= *(v222 + 16))
          {
            goto LABEL_83;
          }

          v35 = *(v29 + 8 * v33 + 32);
        }

        v20 = v35;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v222 = v29 & 0xFFFFFFFFFFFFFF8;
          v30 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_5;
        }

        v255 = (v33 + 1);
        v237 = *(a2 + v220);
        if ([(RDXPCStorePerformer *)v237 includeAccountType])
        {
          v36 = [v20 accountTypeHost];
          v37 = v29;
          v38 = v20;
          v39 = [v36 internalDescription];

          v218 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v239 = v40;

          v20 = v38;
          v29 = v37;
        }

        else
        {
          v218 = 0;
          v239 = 0;
        }

        v41 = v20;
        v42 = sub_1003FAFF0(a1);
        v20 = v34;
        if (!v34)
        {
          break;
        }

        v34 = 0;

        v239, v50, v51, v52, v53, v54, v55, v56;
        ++v33;
        if (v255 == v219)
        {
          goto LABEL_81;
        }
      }

      v198 = v41;
      v209 = v42;
      v210 = v42 & 0xFFFFFFFFFFFFFF8;
      if (v42 >> 62)
      {
        v57 = _CocoaArrayWrapper.endIndex.getter();
        v42 = v209;
      }

      else
      {
        v57 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v57)
      {
        break;
      }

      v200 = &_swiftEmptyArrayStorage;
LABEL_73:
      v42, v43, v44, v45, v46, v47, v48, v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v202 = sub_1003670C0(0, *v202->clientIdentity + 1, 1, v202, v25, v26, v27, v28);
      }

      v193 = *v202->clientIdentity;
      v192 = *&v202->clientIdentity[8];
      v32 = v255;
      if (v193 >= v192 >> 1)
      {
        v197 = sub_1003670C0((v192 > 1), v193 + 1, 1, v202, v25, v26, v27, v28);
        v32 = v255;
        v202 = v197;
      }

      v194 = v202;
      *v202->clientIdentity = v193 + 1;
      v195 = &v194->super.isa + 3 * v193;
      v196 = v239;
      v195[4] = v218;
      v195[5] = v196;
      v195[6] = v200;
      if (v32 == v219)
      {
        goto LABEL_81;
      }
    }

    v58 = 0;
    v208 = v42 & 0xC000000000000001;
    v200 = &_swiftEmptyArrayStorage;
    v207 = v57;
    v216 = v29;
    while (1)
    {
      if (v208)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v59 = v212;
        v29 = v237;
        v61 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_86;
        }
      }

      else
      {
        v59 = v212;
        v29 = v237;
        if (v58 >= *(v210 + 16))
        {
          goto LABEL_87;
        }

        v60 = *&v42->clientIdentity[8 * v58 + 16];
        v61 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_86;
        }
      }

      v234 = v61;
      if ([v29 includeListNames])
      {
        v62 = [v60 name];
        if (v62)
        {
          v70 = v62;
          v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v232 = v71;
          0, v71, v72, v73, v74, v75, v76, v77;

          goto LABEL_31;
        }

        0, v63, v64, v65, v66, v67, v68, v69;
      }

      v233 = 0;
      v232 = 0;
LABEL_31:
      v78 = [v29 includeListNameFuzzedEmbeddings];
      v225 = v58;
      if (v78)
      {
        v79 = [v60 name];
        if (v79)
        {
          a1 = v79;
          v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v81;

          v29 = v237;
        }

        else
        {
          v80 = 0;
          v82 = 0;
        }

        sub_1002801FC(v80, v82);
        v231 = v83;
        v230 = v84;
        v229 = v85;
        v228 = v86;
        v82, v84, v85, v86, v87, v88, v89, v90;
        sub_100286618(0, 0, 0, 0, v91, v92, v93, v94);
      }

      else
      {
        v231 = 0;
        v230 = 0;
        v229 = 0;
        v228 = 0;
      }

      if ([v29 includeListGroupInfo])
      {
        v235 = [v60 isShared];
        v227 = [v60 isGroup];
      }

      else
      {
        v235 = 2;
        v227 = 2;
      }

      v95 = [v29 creationDateWithinDays];
      v96 = v60;
      v97 = [v96 remObjectID];
      v226 = v96;
      if (!v97)
      {

        v141 = &_swiftEmptyArrayStorage;
        v142 = &_swiftEmptyArrayStorage;
        goto LABEL_48;
      }

      v98 = v97;
      *v59 = v97;
      *(v59 + 8) = 1;
      *(v59 + 16) = v95;
      swift_storeEnumTagMultiPayload();
      v224 = v98;
      v99 = sub_100043AA8();
      v223 = 0;
      v100 = v99;
      sub_1002883C8(v59, _s10PredicatesOMa);
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v101 = swift_allocObject();
      *(v101 + 16) = v206;
      *(v101 + 32) = v96;
      v245 = v101;
      sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      sub_10000CB90(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0);
      v102 = v100;
      sub_10000CDE4(&qword_10093F488, &qword_10093F430, NSPersistentStore_ptr, &protocol conformance descriptor for NSObject);
      v103 = v223;
      v104 = Sequence.compactMapToSet<A>(_:)();
      sub_10002595C(v104);
      v104, v105, v106, v107, v108, v109, v110, v111;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v112 = [objc_allocWithZone(NSFetchRequest) init];
      v113 = [swift_getObjCClassFromMetadata() entity];
      [v112 setEntity:v113];

      isa = Array._bridgeToObjectiveC()().super.isa;
      [v112 setAffectedStores:isa];

      [v112 setPredicate:v102];
      v101, v115, v116, v117, v118, v119, v120, v121;

      if (qword_100936080 != -1)
      {
        swift_once();
      }

      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      v122 = Array._bridgeToObjectiveC()().super.isa;
      [v112 setSortDescriptors:v122];

      v123 = NSManagedObjectContext.fetch<A>(_:)();
      v124 = v235;
      v125 = v225;
      if (v103)
      {
        v20 = 0;

        LOBYTE(v245) = v124;
        BYTE1(v245) = v227;
        v126 = v211;
        *v211 = v253;
        *(v126 + 2) = v254;
        v246 = v233;
        v247 = v232;
        v248 = v231;
        v249 = v230;
        v250 = v229;
        v251 = v228;
        v252 = &_swiftEmptyArrayStorage;
        sub_1002865E8(&v245, v127, v128, v129, v130, v131, v132, v133);
        v58 = v125 + 1;
        a2 = v236;
        a1 = v238;
        v31 = v214;
        v42 = v209;
        if (v234 == v207)
        {
          v29 = v216;
          goto LABEL_73;
        }
      }

      else
      {
        v245 = v123;
        v143 = v123;
        a1 = &unk_10079E1E0;
        sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
        a2 = v102;
        sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
        v142 = Sequence.elements<A>(ofType:)();
        v143, v144, v145, v146, v147, v148, v149, v150;

        v20 = 0;
        v141 = &_swiftEmptyArrayStorage;
LABEL_48:
        v151 = v203;
        v29 = v216;
        if (v142 >> 62)
        {
          v152 = _CocoaArrayWrapper.endIndex.getter();
          if (v152)
          {
LABEL_50:
            v153 = 0;
            v225 = v142 & 0xC000000000000001;
            v224 = (v142 & 0xFFFFFFFFFFFFFF8);
            do
            {
              if (v225)
              {
                a1 = v142;
                v155 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v153 >= *(v224 + 2))
                {
                  goto LABEL_85;
                }

                a1 = v142;
                v155 = *(v142 + 8 * v153 + 32);
              }

              a2 = v155;
              v156 = v153 + 1;
              if (__OFADD__(v153, 1))
              {
                goto LABEL_84;
              }

              sub_100280720(v155, v151);

              (*v215)(v151, 0, 1, v217);
              sub_100288428(v151, v205, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v141 = sub_1003672EC(0, *v141->clientIdentity + 1, 1, v141);
              }

              v29 = v216;
              a2 = *v141->clientIdentity;
              v157 = *&v141->clientIdentity[8];
              if (a2 >= v157 >> 1)
              {
                v141 = sub_1003672EC((v157 > 1), a2 + 1, 1, v141);
              }

              *v141->clientIdentity = a2 + 1;
              sub_100288428(v205, v141 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * a2, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
              v151 = v203;
              ++v153;
              v154 = v156 == v152;
              v142 = a1;
            }

            while (!v154);
          }
        }

        else
        {
          v152 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v152)
          {
            goto LABEL_50;
          }
        }

        &_swiftEmptyArrayStorage, v134, v135, v136, v137, v138, v139, v140;

        v142, v158, v159, v160, v161, v162, v163, v164;
        v165 = v235;
        LOBYTE(v241) = v235;
        v166 = v227;
        BYTE1(v241) = v227;
        v167 = v253;
        v168 = v199;
        *v199 = v253;
        v169 = v254;
        *(v168 + 2) = v254;
        v170 = v233;
        v171 = v232;
        *(&v241 + 1) = v233;
        *&v242 = v232;
        v172 = v231;
        v173 = v230;
        *(&v242 + 1) = v231;
        *&v243 = v230;
        v174 = v229;
        v175 = v228;
        *(&v243 + 1) = v229;
        *&v244 = v228;
        *(&v244 + 1) = v141;
        LOBYTE(v245) = v165;
        BYTE1(v245) = v166;
        v176 = v211;
        *(v211 + 2) = v169;
        *v176 = v167;
        v246 = v170;
        v247 = v171;
        v248 = v172;
        v249 = v173;
        v250 = v174;
        v251 = v175;
        v252 = v141;
        sub_1002865B0(&v241, v240);
        sub_1002865E8(&v245, v177, v178, v179, v180, v181, v182, v183);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v200 = sub_1003671E0(0, *v200->clientIdentity + 1, 1, v200, v46, v47, v48, v49);
        }

        a2 = v236;
        a1 = v238;
        v31 = v214;
        v185 = *v200->clientIdentity;
        v184 = *&v200->clientIdentity[8];
        v42 = v209;
        v58 = v234;
        if (v185 >= v184 >> 1)
        {
          v191 = sub_1003671E0((v184 > 1), v185 + 1, 1, v200, v46, v47, v48, v49);
          v58 = v234;
          v200 = v191;
          v42 = v209;
        }

        v186 = v200;
        *v200->clientIdentity = v185 + 1;
        v187 = (v186 + 64 * v185);
        v188 = v241;
        v189 = v242;
        v190 = v244;
        v187[4] = v243;
        v187[5] = v190;
        v187[2] = v188;
        v187[3] = v189;
        if (v58 == v207)
        {
          goto LABEL_73;
        }
      }
    }
  }

  v202 = &_swiftEmptyArrayStorage;
LABEL_81:
  v29, v22, v23, v24, v25, v26, v27, v28;

  *v201 = v202;
}

void sub_1002801FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v103 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  if (!a2)
  {
    return;
  }

  v103 = &v103 - v15;
  v16 = objc_opt_self();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 dominantLanguageForString:v17];

  if (v18)
  {
    v104 = v2;
    v19 = v9;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    if (v20 == v23 && v22 == v24)
    {

      v22, v42, v43, v44, v45, v46, v47, v48;
      v25, v49, v50, v51, v52, v53, v54, v55;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v22, v28, v29, v30, v31, v32, v33, v34;
      v25, v35, v36, v37, v38, v39, v40, v41;
      if ((v27 & 1) == 0)
      {
        v9 = v19;
        v2 = v104;
        goto LABEL_14;
      }
    }

    v9 = v19;
    v2 = v104;
  }

  v56 = sub_100282C90();
  if (!v56)
  {
    return;
  }

  v18 = v56;
LABEL_14:
  v57 = *&v2[OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_options];
  v58 = v18;
  v59 = objc_autoreleasePoolPush();
  sub_100282F70(v57, &v105);
  objc_autoreleasePoolPop(v59);

  v67 = v105;
  v68 = *v105->clientIdentity;
  if (!v68)
  {
    v105, v60, v61, v62, v63, v64, v65, v66;

    return;
  }

  sub_100010364(&v2[OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_embeddingsURL], v7, &unk_1009441F0, &qword_100795760);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &unk_1009441F0, &qword_100795760);
    v69 = [objc_opt_self() wordEmbeddingForLanguage:v58];
    if (v69)
    {
      goto LABEL_17;
    }

LABEL_30:

    v67, v96, v97, v98, v99, v100, v101, v102;
    return;
  }

  v94 = v103;
  (*(v9 + 32))(v103, v7, v8);
  sub_1000060C8(0, &qword_10093F960, NLEmbedding_ptr);
  (*(v9 + 16))(v12, v94, v8);
  v95 = sub_100282E18(v12);
  (*(v9 + 8))(v94, v8);
  v69 = v95;
  if (!v69)
  {
    goto LABEL_30;
  }

LABEL_17:
  v77 = v69;
  v78 = 0;
  v79 = &v67->clientIdentity[24];
  v80 = &_swiftEmptyArrayStorage;
  v104 = &v67->clientIdentity[24];
  while (1)
  {
    if (v68 == v78)
    {
      v67, v70, v71, v72, v73, v74, v75, v76;
      [(RDXPCStorePerformer *)v77 revision];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }

    if (v78 >= *v67->clientIdentity)
    {
      break;
    }

    ++v78;
    v81 = v79 + 2;
    v82 = *(v79 - 1);
    v83 = *v79;

    v84 = sub_100287D18(v82, v83, v77, 15);
    v83, v85, v86, v87, v88, v89, v90, v91;
    v79 = v81;
    if (v84)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_100367314(0, (*v80->clientIdentity + 1), 1, v80);
      }

      v93 = *v80->clientIdentity;
      v92 = *&v80->clientIdentity[8];
      if (v93 >= v92 >> 1)
      {
        v80 = sub_100367314((v92 > 1), (v93 + 1), 1, v80);
      }

      *v80->clientIdentity = v93 + 1;
      *&v80->clientIdentity[8 * v93 + 16] = v84;
      v79 = &v104[16 * v78];
    }
  }

  __break(1u);
}

double sub_100280720@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F5104(&qword_10093F968, &unk_10079E200);
  __chkstk_darwin(v5 - 8, v6);
  v313 = &v284 - v7;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v311 = &v284 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v312 = &v284 - v13;
  __chkstk_darwin(v14, v15);
  v301 = &v284 - v16;
  __chkstk_darwin(v17, v18);
  v300 = &v284 - v19;
  v316 = type metadata accessor for Calendar.Component();
  v322 = *(v316 - 8);
  __chkstk_darwin(v316, v20);
  v320 = &v284 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for Calendar();
  v319 = *(v321 - 8);
  __chkstk_darwin(v321, v22);
  v318 = &v284 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v292 = &v284 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v290 = &v284 - v30;
  __chkstk_darwin(v31, v32);
  v288 = &v284 - v33;
  v36 = __chkstk_darwin(v34, v35);
  v286 = &v284 - v37;
  v317 = v25;
  v39 = *(v25 + 56);
  v38 = v25 + 56;
  v39(a2, 1, 1, v24, v36);
  v40 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0);
  v41 = a2 + v40[5];
  *v41 = 0;
  v285 = v41;
  *(v41 + 8) = 1;
  v42 = a2 + v40[6];
  *v42 = 0;
  v287 = v42;
  *(v42 + 8) = 1;
  v43 = a2 + v40[7];
  *v43 = 0;
  v289 = v43;
  *(v43 + 8) = 1;
  v44 = a2 + v40[8];
  *v44 = 0;
  v291 = v44;
  *(v44 + 8) = 1;
  v45 = (a2 + v40[9]);
  *v45 = 0;
  v45[1] = 0;
  v299 = v45;
  v46 = (a2 + v40[10]);
  *v46 = 0u;
  v46[1] = 0u;
  v302 = v46;
  v47 = (a2 + v40[11]);
  *v47 = 0;
  v47[1] = 0;
  v331 = v47;
  v48 = (a2 + v40[12]);
  *v48 = 0;
  v48[1] = 0;
  v328 = v48;
  v49 = (a2 + v40[13]);
  *v49 = 0;
  v49[1] = 0;
  v323 = v49;
  v50 = (a2 + v40[14]);
  *v50 = 0;
  v50[1] = 0;
  v298 = v50;
  v51 = v40[15];
  v52 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v309 = v51;
  v308 = v52;
  v307 = v54;
  v306 = v53 + 56;
  (v54)(a2 + v51, 1, 1);
  v303 = v40[16];
  v325 = v24;
  v315 = v38;
  v314 = v39;
  (v39)(a2 + v303, 1, 1, v24);
  *(a2 + v40[17]) = &_swiftEmptyArrayStorage;
  v304 = v40[18];
  *(a2 + v304) = 2;
  v55 = a2 + v40[19];
  *v55 = 0;
  v305 = v55;
  *(v55 + 8) = 1;
  v56 = (a2 + v40[20]);
  *v56 = 0;
  v56[1] = 0;
  v57 = (a2 + v40[21]);
  *v57 = 0;
  v57[1] = 0;
  v58 = (a2 + v40[22]);
  *v58 = 0;
  v58[1] = 0;
  v310 = v58;
  v293 = v40[23];
  *(a2 + v293) = 0;
  v294 = v40[24];
  *(a2 + v294) = 2;
  v296 = v40[25];
  *(a2 + v296) = 2;
  v297 = v40[26];
  *(a2 + v297) = 2;
  v59 = v40[27];
  v327 = a2;
  v295 = v59;
  *(a2 + v59) = 2;
  v332 = a1;
  v60 = [a1 title];
  v329 = v2;
  if (v60)
  {
    v61 = v60;
    v333 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v71 = *(v2 + OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_reminderTitleEmbeddings);
    v72 = *(v71 + 16);
    if (v72)
    {
      v73 = 0;
      v326 = 0;
      v330 = 0;
      v334 = 0;
      v74 = v71 + 32;
      do
      {
        if (v73 >= *(v71 + 16))
        {
          __break(1u);
          goto LABEL_86;
        }

        sub_10000A87C(v74, &v336);
        sub_10000A87C(&v336, v335);
        sub_1000F5104(&qword_100943A20, &unk_10079E210);
        type metadata accessor for REMSentence2VecTitleEmbedding();
        if (swift_dynamicCast())
        {

          REMSentence2VecTitleEmbedding.vector(for:)();
          v63, v75, v76, v77, v78, v79, v80, v81;
          v38 = REMSentence2VecTitleEmbedding.closestWord(for:)();
          v83 = v82;

          sub_10000607C(&v336);
          v334, v84, v85, v86, v87, v88, v89, v90;
          v91 = v331;
          *v331 = v38;
          v91[1] = v83;
          v334 = v83;
        }

        else
        {
          sub_10000A87C(&v336, v335);
          type metadata accessor for REMUniversalGrammarTitleEmbedding();
          if (swift_dynamicCast())
          {

            REMUniversalGrammarTitleEmbedding.vector(for:)();
            v63, v92, v93, v94, v95, v96, v97, v98;
            v99 = REMUniversalGrammarTitleEmbedding.closestWord(for:)();
            v38 = v100;

            sub_10000607C(&v336);
            v330, v101, v102, v103, v104, v105, v106, v107;
            v108 = v328;
            *v328 = v99;
            v108[1] = v38;
            v330 = v38;
          }

          else
          {
            sub_10000A87C(&v336, v335);
            type metadata accessor for REMFilteredTitleEmbedding();
            if (swift_dynamicCast())
            {

              REMFilteredTitleEmbedding.vector(for:)();
              v63, v109, v110, v111, v112, v113, v114, v115;
              v116 = REMFilteredTitleEmbedding.closestWord(for:)();
              v38 = v117;

              sub_10000607C(&v336);
              v326, v118, v119, v120, v121, v122, v123, v124;
              v125 = v323;
              *v323 = v116;
              v125[1] = v38;
              v326 = v38;
            }

            else
            {
              if (qword_100935DB0 != -1)
              {
                swift_once();
              }

              v126 = type metadata accessor for Logger();
              sub_100006654(v126, qword_10093F850);
              v127 = Logger.logObject.getter();
              v128 = static os_log_type_t.fault.getter();
              if (os_log_type_enabled(v127, v128))
              {
                v129 = swift_slowAlloc();
                *v129 = 0;
                _os_log_impl(&_mh_execute_header, v127, v128, "DES unrecognized embedding", v129, 2u);
              }

              sub_10000607C(&v336);
            }
          }
        }

        ++v73;
        v74 += 40;
      }

      while (v72 != v73);
    }

    v63, v64, v65, v66, v67, v68, v69, v70;
    v2 = v329;
  }

  v130 = *(v2 + OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_options);
  v131 = [v130 includeDayOfWeek];
  v132 = v316;
  if (v131)
  {
    v133 = [v332 creationDate];
    if (v133)
    {
      v134 = v286;
      v135 = v133;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v136 = v318;
      static Calendar.current.getter();
      v137 = v322;
      v138 = v320;
      (*(v322 + 104))(v320, enum case for Calendar.Component.weekday(_:), v132);
      v139 = Calendar.component(_:from:)();
      (*(v137 + 8))(v138, v132);
      (*(v319 + 8))(v136, v321);
      (*(v317 + 8))(v134, v325);
      v140 = v285;
      *v285 = v139;
      *(v140 + 8) = 0;
    }

    v141 = [v332 completionDate];
    if (v141)
    {
      v142 = v288;
      v143 = v141;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v144 = v318;
      static Calendar.current.getter();
      v145 = v322;
      v146 = v320;
      (*(v322 + 104))(v320, enum case for Calendar.Component.weekday(_:), v132);
      v147 = Calendar.component(_:from:)();
      (*(v145 + 8))(v146, v132);
      (*(v319 + 8))(v144, v321);
      (*(v317 + 8))(v142, v325);
      v148 = v287;
      *v287 = v147;
      *(v148 + 8) = 0;
    }

    v149 = [v332 dueDate];
    if (v149)
    {
      v150 = v290;
      v151 = v149;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v152 = v318;
      static Calendar.current.getter();
      v153 = v322;
      v154 = v320;
      (*(v322 + 104))(v320, enum case for Calendar.Component.weekday(_:), v132);
      v155 = Calendar.component(_:from:)();
      (*(v153 + 8))(v154, v132);
      (*(v319 + 8))(v152, v321);
      (*(v317 + 8))(v150, v325);
      v156 = v289;
      *v289 = v155;
      *(v156 + 8) = 0;
    }

    v157 = [v332 displayDate];
    if (v157)
    {
      v158 = v157;
      v159 = v318;
      static Calendar.current.getter();
      v160 = v322;
      v161 = v320;
      (*(v322 + 104))(v320, enum case for Calendar.Component.weekday(_:), v132);
      v162 = [v158 date];
      v163 = v292;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v164 = Calendar.component(_:from:)();
      (*(v317 + 8))(v163, v325);
      (*(v160 + 8))(v161, v132);
      (*(v319 + 8))(v159, v321);
      v165 = v291;
      *v291 = v164;
      *(v165 + 8) = 0;
    }
  }

  if ([v130 includeDates])
  {
    v166 = [v332 creationDate];
    if (v166)
    {
      v167 = v301;
      v168 = v166;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v169 = 0;
    }

    else
    {
      v169 = 1;
      v167 = v301;
    }

    v314(v167, v169, 1, v325);
    v170 = v300;
    sub_100281E10(v167, v300);
    sub_1000050A4(v167, &unk_100938850, qword_100795AE0);
    sub_100117A3C(v170, v327, &unk_100938850, qword_100795AE0);
  }

  if ([v130 includeReminderTitles])
  {
    v171 = [v332 title];
    if (v171)
    {
      v172 = v171;
      v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v175 = v174;
    }

    else
    {
      v173 = 0;
      v175 = 0;
    }

    v176 = v298;
    *v298 = v173;
    v176[1] = v175;
  }

  if ([v130 includeReminderTitleSaltedHash])
  {
    v177 = [v332 title];
    if (v177)
    {
      v178 = v177;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v180 = v179;

      v181 = String.base64EncodedHMACString(using:)();
      v183 = v182;
      v180, v182, v184, v185, v186, v187, v188, v189;
    }

    else
    {
      v181 = 0;
      v183 = 0;
    }

    v190 = v299;
    *v299 = v181;
    v190[1] = v183;
  }

  if ([v130 includeReminderTitleFuzzedEmbeddings])
  {
    v191 = [v332 title];
    v192 = v130;
    if (v191)
    {
      v193 = v191;
      v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v196 = v195;
    }

    else
    {
      v194 = 0;
      v196 = 0;
    }

    sub_1002801FC(v194, v196);
    v198 = v197;
    v200 = v199;
    v202 = v201;
    v204 = v203;
    v196, v199, v201, v203, v205, v206, v207, v208;
    v209 = v302;
    *v302 = v198;
    v209[1] = v200;
    v209[2] = v202;
    v209[3] = v204;
    v130 = v192;
  }

  if ([v130 includeDates])
  {
    v210 = [v332 completionDate];
    if (v210)
    {
      v211 = v311;
      v212 = v210;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v213 = 0;
    }

    else
    {
      v213 = 1;
      v211 = v311;
    }

    v314(v211, v213, 1, v325);
    v214 = v312;
    sub_100281E10(v211, v312);
    sub_1000050A4(v211, &unk_100938850, qword_100795AE0);
    sub_100117A3C(v214, v327 + v303, &unk_100938850, qword_100795AE0);
  }

  if ([v130 includeIsFlagged])
  {
    v215 = [v332 flagged] != 0;
    *(v327 + v304) = v215;
  }

  if ([v130 includePriority])
  {
    v216 = [v332 priority];
    v217 = v305;
    *v305 = v216;
    *(v217 + 8) = 0;
  }

  if ([v130 includeDates])
  {
    v218 = [v332 displayDate];
    if (v218)
    {
      v336 = v218;
      v219 = v218;
      v220 = v313;
      v221 = v324;
      sub_100282064(&v336, v313);
      v324 = v221;

      v307(v220, 0, 1, v308);
    }

    else
    {
      v220 = v313;
      v307(v313, 1, 1, v308);
    }

    v222 = v327;
    sub_100117A3C(v220, v327 + v309, &qword_10093F968, &unk_10079E200);
  }

  else
  {
    v222 = v327;
  }

  if ([v130 includeRecurrenceInfo])
  {
    v223 = [v332 recurrenceRules];
    v224 = sub_100288224(v223);
    v226 = v225;

    v227 = v310;
    *v310 = v224;
    v227[1] = v226;
  }

  if ([v130 includeAttachmentUTIs])
  {
    v228 = [v332 attachments];
    if (v228)
    {
      v333 = v130;
      v336 = v228;
      v229 = v228;
      sub_1000060C8(0, &unk_100939E30, off_1008D4160);
      sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
      sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
      v73 = Sequence.elements<A>(ofType:)();

      v38 = v73 & 0xFFFFFFFFFFFFFF8;
      if (v73 >> 62)
      {
        goto LABEL_88;
      }

      for (i = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v238 = 0;
        v334 = &_swiftEmptyArrayStorage;
LABEL_69:
        v239 = v238;
        while (1)
        {
          if ((v73 & 0xC000000000000001) != 0)
          {
            v240 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v239 >= *(v38 + 16))
            {
              goto LABEL_87;
            }

            v240 = *(v73 + 8 * v239 + 32);
          }

          v241 = v240;
          v238 = v239 + 1;
          if (__OFADD__(v239, 1))
          {
            break;
          }

          v242 = [v240 uti];
          if (v242)
          {
            v243 = v242;
            v244 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v331 = v245;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v334 = sub_100365788(0, *v334->clientIdentity + 1, 1, v334, v233, v234, v235, v236);
            }

            v247 = *v334->clientIdentity;
            v246 = *&v334->clientIdentity[8];
            if (v247 >= v246 >> 1)
            {
              v334 = sub_100365788((v246 > 1), v247 + 1, 1, v334, v233, v234, v235, v236);
            }

            v248 = v334;
            *v334->clientIdentity = v247 + 1;
            v249 = v248 + 16 * v247;
            v250 = v331;
            *(v249 + 4) = v244;
            *(v249 + 5) = v250;
            if (v238 != i)
            {
              goto LABEL_69;
            }

            goto LABEL_90;
          }

          ++v239;
          if (v238 == i)
          {
            goto LABEL_90;
          }
        }

LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        ;
      }

      v334 = &_swiftEmptyArrayStorage;
LABEL_90:
      v73, v230, v231, v232, v233, v234, v235, v236;
      v222 = v327;
      v130 = v333;
    }

    else
    {
      v334 = 0;
    }

    *(v222 + v293) = v334;
  }

  if ([v130 includeRemindMeWhenMessagingInfo])
  {
    v251 = [v332 contactHandles];
    if (v251)
    {
      v252 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v254 = v253;

      sub_10001BBA0(v252, v254);
    }

    *(v222 + v294) = v251 != 0;
  }

  if ([v130 includeUserActivityInfo])
  {
    v255 = [v332 userActivity];
    if (v255)
    {
      v256 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v258 = v257;

      sub_10001BBA0(v256, v258);
    }

    *(v222 + v295) = v255 != 0;
  }

  if ([v130 includeSubtaskInfo])
  {
    v259 = [v332 children];
    if (v259)
    {
      v260 = v259;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0, &protocol conformance descriptor for NSObject);
      v261 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v261 & 0xC000000000000001) != 0)
      {
        v269 = __CocoaSet.count.getter();
      }

      else
      {
        v269 = *(v261 + 16);
      }

      v261, v262, v263, v264, v265, v266, v267, v268;
      v270 = v269 > 0;
    }

    else
    {
      v270 = 0;
    }

    *(v222 + v296) = v270;
    v271 = [v332 parentReminder];
    v272 = v271;
    if (v271)
    {
    }

    *(v222 + v297) = v272 != 0;
  }

  if ([v130 includeAlarmDates])
  {
    v274 = [v332 alarms];
    if (v274)
    {
      v275 = v274;
      sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
      v276 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v276 = 0;
    }

    sub_100282394(v222, v276);
    v276, v277, v278, v279, v280, v281, v282, v283;
  }

  return result;
}

uint64_t sub_100281E10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v23 - v16;
  sub_100010364(a1, v8, &unk_100938850, qword_100795AE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000050A4(v8, &unk_100938850, qword_100795AE0);
    v18 = 1;
  }

  else
  {
    v19 = *(v10 + 32);
    v19(v17, v8, v9);
    if ([*(v2 + OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_options) dateResolutionInSeconds])
    {
      Date.timeIntervalSinceReferenceDate.getter();
      Date.init(timeIntervalSinceReferenceDate:)();
      (*(v10 + 8))(v17, v9);
      v20 = a2;
      v21 = v13;
    }

    else
    {
      v20 = a2;
      v21 = v17;
    }

    v19(v20, v21, v9);
    v18 = 0;
  }

  return (*(v10 + 56))(a2, v18, 1, v9);
}

uint64_t sub_100282064@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v34 - v9;
  v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v15, v16).n128_u64[0];
  v19 = &v34 - v18;
  v20 = *a1;
  v21 = [*a1 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = type metadata accessor for Date();
  v23 = 1;
  (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
  sub_100281E10(v14, v19);
  sub_1000050A4(v14, &unk_100938850, qword_100795AE0);
  v24 = [v20 timeZone];
  if (v24)
  {
    v25 = v24;
    static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  v26 = type metadata accessor for TimeZone();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v6, v23, 1, v26);
  sub_100031B58(v6, v10, &qword_10093F970, &unk_1007A7670);
  if ((*(v27 + 48))(v10, 1, v26) == 1)
  {
    sub_1000050A4(v10, &qword_10093F970, &unk_1007A7670);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = TimeZone.identifier.getter();
    v29 = v30;
    (*(v27 + 8))(v10, v26);
  }

  v31 = v35;
  sub_100031B58(v19, v35, &unk_100938850, qword_100795AE0);
  result = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  v33 = (v31 + *(result + 20));
  *v33 = v28;
  v33[1] = v29;
  return result;
}

void sub_100282394(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v5 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v5 - 8, v6);
  v115 = &v106 - v7;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v114 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v125 = &v106 - v13;
  v14 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  v112 = *(v14 - 8);
  v113 = v14;
  __chkstk_darwin(v14, v15);
  v124 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v123 = &v106 - v19;
  v20 = type metadata accessor for DateComponents();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20, v22);
  v111 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v120 = &v106 - v26;
  v122 = type metadata accessor for Date();
  v27 = *(v122 - 8);
  __chkstk_darwin(v122, v28);
  v110 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v121 = &v106 - v32;
  if (a2)
  {
    v33 = a2;
  }

  else
  {
    v33 = &_swiftEmptyArrayStorage;
  }

  if (v33 >> 62)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (v34)
    {
      goto LABEL_6;
    }

LABEL_32:

LABEL_34:
    v33, v61, v62, v63, v64, v65, v66, v67;
    return;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_32;
  }

LABEL_6:
  v129 = v34;
  if (v34 >= 1)
  {
    v130 = v33 & 0xC000000000000001;
    v116 = (v21 + 8);
    v117 = OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_timezone;
    v109 = (v27 + 32);
    v108 = (v27 + 16);
    v107 = (v27 + 56);
    v106 = (v27 + 8);

    v35 = 0;
    v127 = v2;
    v128 = v33;
    v118 = v20;
    v119 = a1;
    v36 = &selRef_setPublicLinkLastModifiedDate_;
    v37 = v129;
    while (1)
    {
      if (v130)
      {
        v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v68 = *&v33->clientIdentity[8 * v35 + 16];
      }

      v69 = v68;
      v70 = [v68 trigger];
      objc_opt_self();
      v71 = swift_dynamicCastObjCClass();
      if (v71)
      {
        v72 = v71;
        v73 = [v71 proximity];
        if (v73 <= 2)
        {
          v38 = *&aNone_3[8 * v73];
          v39 = qword_10079ECC8[v73];
        }

        else
        {
          v39 = 0xE90000000000003ELL;
          v38 = 0x6E776F6E6B6E753CLL;
        }

        v40 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0);
        v41 = a1 + *(v40 + 84);
        *(v41 + 8), v42, v43, v44, v45, v46, v47, v48;
        *v41 = v38;
        *(v41 + 8) = v39;
        v49 = [v72 structuredLocation];
        v50 = sub_100288490(v49);
        v52 = v51;

        v53 = a1 + *(v40 + 80);
        *(v53 + 8), v54, v55, v56, v57, v58, v59, v60;
        *v53 = v50;
        *(v53 + 8) = v52;
        v2 = v127;
        v33 = v128;
      }

      else
      {
        objc_opt_self();
        v74 = swift_dynamicCastObjCClass();
        if (!v74)
        {

          goto LABEL_11;
        }

        v75 = v74;
        v76 = v2;
        v77 = objc_opt_self();
        v78 = [v75 v36[66]];
        v79 = v120;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        isa = DateComponents._bridgeToObjectiveC()().super.isa;
        v81 = v79;
        v82 = v118;
        v126 = *v116;
        v126(v81, v118);
        v83 = TimeZone._bridgeToObjectiveC()().super.isa;
        v84 = [v77 rem_dateWithDateComponents:isa timeZone:v83];

        if (v84)
        {
          v85 = v110;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v86 = v121;
          v87 = v85;
          v88 = v122;
          (*v109)(v121, v87, v122);
          v89 = v114;
          (*v108)(v114, v86, v88);
          (*v107)(v89, 0, 1, v88);
          sub_100281E10(v89, v125);
          sub_1000050A4(v89, &unk_100938850, qword_100795AE0);
          v90 = [v75 dateComponents];
          v91 = v111;
          static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v92 = v115;
          DateComponents.timeZone.getter();
          v126(v91, v82);
          v93 = type metadata accessor for TimeZone();
          v94 = *(v93 - 8);
          if ((*(v94 + 48))(v92, 1, v93) == 1)
          {
            sub_1000050A4(v92, &qword_10093F970, &unk_1007A7670);
            v95 = 0;
            v96 = 0;
          }

          else
          {
            v95 = TimeZone.identifier.getter();
            v97 = v92;
            v96 = v98;
            (*(v94 + 8))(v97, v93);
          }

          a1 = v119;
          v99 = v123;
          sub_100031B58(v125, v123, &unk_100938850, qword_100795AE0);
          v100 = (v99 + *(v113 + 20));
          *v100 = v95;
          v100[1] = v96;
          sub_10028DE24(v99, v124, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
          v101 = *(type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0) + 68);
          v102 = *(a1 + v101);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = v128;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v102 = sub_10036746C(0, *v102->clientIdentity + 1, 1, v102);
          }

          v105 = *v102->clientIdentity;
          v104 = *&v102->clientIdentity[8];
          if (v105 >= v104 >> 1)
          {
            v102 = sub_10036746C((v104 > 1), v105 + 1, 1, v102);
          }

          sub_1002883C8(v123, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
          (*v106)(v121, v122);
          *v102->clientIdentity = v105 + 1;
          sub_100288428(v124, v102 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v105, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
          *(a1 + v101) = v102;
          v2 = v127;
        }

        else
        {

          v2 = v76;
          a1 = v119;
          v33 = v128;
        }
      }

      v37 = v129;
      v36 = &selRef_setPublicLinkLastModifiedDate_;
LABEL_11:
      if (v37 == ++v35)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
}

NSString sub_100282C90()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.current.getter();
  Locale.languageCodeIdentifier.getter();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  if (!v6)
  {
    return 0;
  }

  v7 = String._bridgeToObjectiveC()();
  v6, v8, v9, v10, v11, v12, v13, v14;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v15 == v18 && v17 == v19)
  {

    v17, v37, v38, v39, v40, v41, v42, v43;
    v20, v44, v45, v46, v47, v48, v49, v50;
    return 0;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v17, v23, v24, v25, v26, v27, v28, v29;
  v20, v30, v31, v32, v33, v34, v35, v36;
  if (v22)
  {

    return 0;
  }

  return v7;
}

id sub_100282E18(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() embeddingWithContentsOfURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

void sub_100282F70(void *a1@<X2>, void *a2@<X8>)
{
  v91 = a1;
  v82 = a2;
  v2 = String.lowercased()();
  object = v2._object;
  sub_1000F5104(&qword_10093EE58, &unk_10079E1F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100791300;
  *(v4 + 32) = NLTagSchemeLexicalClass;
  v5 = objc_allocWithZone(NLTagger);
  type metadata accessor for NLTagScheme(0);
  v6 = NLTagSchemeLexicalClass;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4, v8, v9, v10, v11, v12, v13, v14;
  v15 = [v5 initWithTagSchemes:isa];

  v16 = String._bridgeToObjectiveC()();
  [v15 setString:v16];

  countAndFlagsBits = v2._countAndFlagsBits;
  v81 = v15;
  v17 = NLTagger.tags(in:unit:scheme:options:)();
  v25 = *(v17 + 16);
  if (v25)
  {
    v26 = 0;
    v89 = NLTagNoun;
    v90 = NLTagVerb;
    v84 = NLTagOtherWord;
    v27 = v17 + 48;
    v83 = &_swiftEmptyArrayStorage;
    v87 = xmmword_100791340;
    v80 = v2._object;
    v78 = v25;
    v88 = v17;
    v77 = v17 + 48;
    do
    {
      v28 = v25 - v26;
      v29 = (v27 + 24 * v26);
      while (1)
      {
        if (v26 >= *(v17 + 16))
        {
          __break(1u);
        }

        v31 = *(v29 - 2);
        v30 = *(v29 - 1);
        v85 = *v29;
        v86 = v30;
        sub_1000F5104(&qword_1009439F0, &qword_1007A4280);
        inited = swift_initStackObject();
        *(inited + 16) = v87;
        v34 = v89;
        v33 = v90;
        *(inited + 32) = v90;
        *(inited + 40) = v34;
        v35 = v31;
        v36 = v33;
        v37 = v34;
        v38 = [v91 relevantWordTagsIncludeOtherWord];
        if (v38)
        {
          v40 = v84;
          v41 = v84;
          v38 = sub_100367600(1, 3, 1, inited, v42, v43, v44, v45);
          inited = v38;
          *v38->clientIdentity = 3;
          *&v38->clientIdentity[32] = v40;
        }

        v92 = v31;
        __chkstk_darwin(v38, v39);
        v76[2] = &v92;
        v46 = sub_10032DFB8(sub_1002881E4, v76, inited);
        inited, v47, v48, v49, v50, v51, v52, v53;
        if (v46)
        {
          break;
        }

        v29 += 3;
        ++v26;
        --v28;
        v17 = v88;
        if (!v28)
        {
          object = v80;
          goto LABEL_17;
        }
      }

      object = v80;
      String.subscript.getter();
      v55 = v54;
      v56 = static String._fromSubstring(_:)();
      v58 = v57;
      v55, v57, v59, v60, v61, v62, v63, v64;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_100365788(0, *v83->clientIdentity + 1, 1, v83, v21, v22, v23, v24);
      }

      v66 = *v83->clientIdentity;
      v65 = *&v83->clientIdentity[8];
      if (v66 >= v65 >> 1)
      {
        v83 = sub_100365788((v65 > 1), v66 + 1, 1, v83, v21, v22, v23, v24);
      }

      ++v26;
      v67 = v83;
      *v83->clientIdentity = v66 + 1;
      v68 = v67 + 16 * v66;
      *(v68 + 4) = v56;
      *(v68 + 5) = v58;
      v17 = v88;
      v25 = v78;
      v27 = v77;
    }

    while (v28 != 1);
  }

  else
  {
    v83 = &_swiftEmptyArrayStorage;
  }

LABEL_17:
  v17, v18, v19, v20, v21, v22, v23, v24;
  object, v69, v70, v71, v72, v73, v74, v75;

  *v82 = v83;
}

uint64_t sub_1002833A8()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v11 = *v0;
  sub_100286520();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  if (!v1)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = [(objc_class *)isa TT_gzipDeflate];

    if (v7)
    {
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xF000000000000000;
    }

    sub_1000F5104(&qword_100938C10, &unk_100795F30);
    Optional.tryUnwrap(_:file:line:)();
    sub_10001BBA0(v2, v4);
    sub_100031A14(v8, v10);
    return v11;
  }

  return result;
}

uint64_t sub_10028352C(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_10093FB00, &qword_10079E5C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v11[-v8];
  sub_10000F61C(a1, a1[3]);
  sub_10028C1A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v11[7] = 0;
  sub_1000F5104(&qword_10093FB10, &qword_10079E5D0);
  sub_10028DE8C(&qword_10093FB18, sub_10028C1FC, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11[6] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[5] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[4] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10028374C()
{
  v1 = 0x73746E756F636361;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x614C6D6574737973;
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

uint64_t sub_1002837D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_10028C2EC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_100283800(uint64_t a1)
{
  v2 = sub_10028C1A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028383C(uint64_t a1)
{
  v2 = sub_10028C1A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100283878@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10028C464(a2, v6);
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

uint64_t sub_1002838E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_100287C3C(v5, v7) & 1;
}

uint64_t sub_10028393C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a4;
  v6 = sub_1000F5104(&qword_10093FC58, &qword_10079E668);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v12 - v9;
  sub_10000F61C(a1, a1[3]);
  sub_10028DF58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v4)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_1000F5104(&qword_10093FC40, &qword_10079E660);
    sub_10028DFAC(&qword_10093FC60, sub_10028E078, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100283B10()
{
  if (*v0)
  {
    return 0x737473696CLL;
  }

  else
  {
    return 1701869940;
  }
}

void sub_100283B40(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  v11 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x737473696CLL && a2 == 0xE500000000000000)
  {
    0xE500000000000000, a2, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_100283C18(uint64_t a1)
{
  v2 = sub_10028DF58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100283C54(uint64_t a1)
{
  v2 = sub_10028DF58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100283C90@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10028C70C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

void sub_100283CE0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (!v3)
  {
    if (v5)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    v7 = *a1 == *a2 && v3 == v5;
    if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_8:

      sub_1003AD8DC(v4, v6);
    }
  }
}

uint64_t sub_100283D5C(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_10093FB70, &qword_10079E600);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_10028CEF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = *(v3 + 40);
    v14 = *(v3 + 24);
    v15 = v10;
    v13 = 3;
    sub_10028CFA0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v14 = *(v3 + 56);
    v13 = 4;
    sub_1000F5104(&qword_10093FB58, &qword_10079E5F8);
    sub_10028CFF4(&qword_10093FB80, &qword_10093FB88, &unk_10079E3E8, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100283FEC()
{
  v1 = *v0;
  v2 = 0x6465726168537369;
  v3 = 0x656C746974;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x7265646E696D6572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x70756F72477369;
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

uint64_t sub_10028408C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_10028C91C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1002840C0(uint64_t a1)
{
  v2 = sub_10028CEF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002840FC(uint64_t a1)
{
  v2 = sub_10028CEF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100284138@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10028CAD8(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_100284194(_OWORD *a1, __n128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v9 = a2[2];
  v10 = v5;
  return sub_100286B70(v7, v8, v9) & 1;
}

unint64_t sub_1002841E0(char a1)
{
  result = 0x6E6F697461657263;
  switch(a1)
  {
    case 1:
    case 9:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x664F796144657564;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6C6153656C746974;
      break;
    case 6:
    case 18:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x65636E65746E6573;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x656C746974;
      break;
    case 11:
      result = 0x4479616C70736964;
      break;
    case 12:
      result = 0x6974656C706D6F63;
      break;
    case 13:
      result = 0x7461446D72616C61;
      break;
    case 14:
      result = 0x656767616C467369;
      break;
    case 15:
      result = 0x797469726F697270;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0x656D686361747461;
      break;
    case 20:
      result = 0xD000000000000018;
      break;
    case 21:
      result = 0x746E657261507369;
      break;
    case 22:
      result = 0x7361746275537369;
      break;
    case 23:
      result = 0x4172657355736168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002844C8(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_10093FC00, &qword_10079E648);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v14 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_10028DD34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for Date();
  sub_10028C2A4(&qword_10093B8A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0);
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = (v3 + v10[10]);
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v17 = 6;
    sub_10028CFA0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v15) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14[1] = v10[15];
    LOBYTE(v15) = 11;
    type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
    sub_10028C2A4(&qword_10093FC08, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate, &unk_10079E550);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v15) = 12;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v15 = *(v3 + v10[17]);
    v17 = 13;
    sub_1000F5104(&qword_10093FBF0, &unk_10079E638);
    sub_10028DD88(&qword_10093FC10, &qword_10093FC08, &unk_10079E550, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v15 = *(v3 + v10[23]);
    v17 = 19;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_100036990(&qword_100938928, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v15) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100284BC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_1000F5104(&qword_10093F968, &unk_10079E200);
  __chkstk_darwin(v3 - 8, v4);
  v116 = v91 - v5;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v103 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v118 = v91 - v11;
  v119 = sub_1000F5104(&qword_10093FBD8, &qword_10079E630);
  v115 = *(v119 - 8);
  __chkstk_darwin(v119, v12);
  v123 = v91 - v13;
  v14 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0);
  v15 = (v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  v21 = &v18[v15[7]];
  *v21 = 0;
  v114 = v21;
  v21[8] = 1;
  v22 = &v18[v15[8]];
  *v22 = 0;
  v113 = v22;
  v22[8] = 1;
  v23 = &v18[v15[9]];
  *v23 = 0;
  v112 = v23;
  v23[8] = 1;
  v24 = &v18[v15[10]];
  *v24 = 0;
  v111 = v24;
  v24[8] = 1;
  v25 = &v18[v15[11]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v110 = v25;
  v26 = &v18[v15[12]];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v109 = v26;
  v27 = &v18[v15[13]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v108 = v27;
  v28 = &v18[v15[14]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v107 = v28;
  v29 = &v18[v15[15]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v106 = v29;
  v30 = &v18[v15[16]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v104 = v30;
  v31 = v15[17];
  v32 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  v33 = *(*(v32 - 8) + 56);
  v102 = v31;
  v105 = v32;
  v33(&v18[v31], 1, 1);
  v101 = v15[18];
  v117 = v19;
  v20(&v18[v101], 1, 1, v19);
  v34 = a1;
  v100 = v15[19];
  *&v18[v100] = &_swiftEmptyArrayStorage;
  v99 = v15[20];
  v18[v99] = 2;
  v35 = &v18[v15[21]];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v18[v15[22]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v18[v15[23]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v18[v15[24]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v97 = v15[25];
  *&v18[v97] = 0;
  v95 = v15[26];
  v18[v95] = 2;
  v96 = v15[27];
  v18[v96] = 2;
  v39 = v15[28];
  v18[v39] = 2;
  v40 = v15[29];
  v121 = v34;
  v122 = v18;
  v18[v40] = 2;
  sub_10000F61C(v34, v34[3]);
  sub_10028DD34();
  v41 = v120;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v41)
  {
    v87 = v122;
  }

  else
  {
    v42 = v114;
    v120 = v35;
    v94 = v36;
    v92 = v37;
    v43 = v116;
    v93 = v38;
    v44 = v115;
    LOBYTE(v124) = 0;
    v45 = sub_10028C2A4(&qword_10093B908, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v91[1] = v45;
    sub_100117A3C(v118, v122, &unk_100938850, qword_100795AE0);
    LOBYTE(v124) = 1;
    *v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42[8] = v47 & 1;
    LOBYTE(v124) = 2;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v113;
    *v113 = v48;
    *(v49 + 8) = v50 & 1;
    LOBYTE(v124) = 3;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v112;
    *v112 = v51;
    *(v52 + 8) = v53 & 1;
    LOBYTE(v124) = 4;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v55 = v111;
    *v111 = v54;
    *(v55 + 8) = v56 & 1;
    LOBYTE(v124) = 5;
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58 = v110;
    *v110 = v57;
    v58[1] = v59;
    v126 = 6;
    sub_10028CF4C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v60 = v125;
    v61 = v109;
    *v109 = v124;
    *(v61 + 1) = v60;
    LOBYTE(v124) = 7;
    v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v63 = v108;
    *v108 = v62;
    v63[1] = v64;
    LOBYTE(v124) = 8;
    v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v66 = v107;
    *v107 = v65;
    v66[1] = v67;
    LOBYTE(v124) = 9;
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v69 = v106;
    *v106 = v68;
    v69[1] = v70;
    LOBYTE(v124) = 10;
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v72 = v104;
    *v104 = v71;
    v72[1] = v73;
    LOBYTE(v124) = 11;
    sub_10028C2A4(&qword_10093FBE8, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate, &unk_10079E578);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100117A3C(v43, &v122[v102], &qword_10093F968, &unk_10079E200);
    LOBYTE(v124) = 12;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100117A3C(v103, &v122[v101], &unk_100938850, qword_100795AE0);
    sub_1000F5104(&qword_10093FBF0, &unk_10079E638);
    v126 = 13;
    sub_10028DD88(&qword_10093FBF8, &qword_10093FBE8, &unk_10079E578, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v122[v100] = v124;
    LOBYTE(v124) = 14;
    v122[v99] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v124) = 15;
    v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v75 = v120;
    *v120 = v74;
    *(v75 + 8) = v76 & 1;
    LOBYTE(v124) = 16;
    v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v78 = v94;
    *v94 = v77;
    v78[1] = v79;
    LOBYTE(v124) = 17;
    v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v81 = v92;
    *v92 = v80;
    v81[1] = v82;
    LOBYTE(v124) = 18;
    v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v84 = v93;
    *v93 = v83;
    v84[1] = v85;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    v126 = 19;
    sub_100036990(&qword_10093EEF0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v122[v97] = v124;
    LOBYTE(v124) = 20;
    v122[v95] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v124) = 21;
    v122[v96] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v124) = 22;
    v86 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v87 = v122;
    v88 = v123;
    v122[v39] = v86;
    LOBYTE(v124) = 23;
    v89 = v119;
    v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v44 + 8))(v88, v89);
    *(v87 + v40) = v90;
    sub_10028DE24(v87, v98, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
  }

  sub_10000607C(v121);
  return sub_1002883C8(v87, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder);
}

uint64_t sub_100285764@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_10028D0D0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_100285798(uint64_t a1)
{
  v2 = sub_10028DD34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002857D4(uint64_t a1)
{
  v2 = sub_10028DD34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100285844(void *a1)
{
  v3 = sub_1000F5104(&qword_10093FB38, &unk_10079E5E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9[-v6];
  sub_10000F61C(a1, a1[3]);
  sub_10028C250();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  type metadata accessor for Date();
  sub_10028C2A4(&qword_10093B8A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
    v9[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100285A00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v24 = &v22 - v6;
  v25 = sub_1000F5104(&qword_10093FB28, &qword_10079E5D8);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25, v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = &v14[*(v11 + 28)];
  *v16 = 0;
  v16[1] = 0;
  sub_10000F61C(a1, a1[3]);
  sub_10028C250();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = v23;
    v27 = 0;
    sub_10028C2A4(&qword_10093B908, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100117A3C(v24, v14, &unk_100938850, qword_100795AE0);
    v26 = 1;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21 = v20;
    (*(v17 + 8))(v9, v25);
    *v16 = v19;
    v16[1] = v21;
    sub_10028DE24(v14, v22, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
  }

  sub_10000607C(a1);
  return sub_1002883C8(v14, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
}

uint64_t sub_100285D3C()
{
  if (*v0)
  {
    return 0x656E6F7A656D6974;
  }

  else
  {
    return 1702125924;
  }
}

void sub_100285D70(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  v11 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x656E6F7A656D6974 && a2 == 0xE800000000000000)
  {
    0xE800000000000000, a2, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_100285E4C(uint64_t a1)
{
  v2 = sub_10028C250();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100285E88(uint64_t a1)
{
  v2 = sub_10028C250();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100285EF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a5;
  v14[2] = a3;
  v8 = sub_1000F5104(&qword_10093FBC0, &qword_10079E628);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v14 - v11;
  sub_10000F61C(a1, a1[3]);
  sub_10028DBE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v17 = 0;
  sub_1000F5104(&qword_10093FBA8, &qword_10079E618);
  sub_10028DC3C(&qword_10093FBC8, &qword_10093FBD0, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v5)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v16 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100286104()
{
  v1 = 0x6E6F697369766572;
  if (*v0 != 1)
  {
    v1 = 0x65676175676E616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69646465626D65;
  }
}

uint64_t sub_100286164@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_10028D864(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_10028618C(uint64_t a1)
{
  v2 = sub_10028DBE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002861C8(uint64_t a1)
{
  v2 = sub_10028DBE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100286204@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10028D984(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_100286270()
{
  sub_10000CC4C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64) | (*(v0 + 68) << 32), v1, v2);
  v3 = OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_salt;
  v4 = type metadata accessor for SymmetricKey();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_timezone;
  v6 = type metadata accessor for TimeZone();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_1000050A4(v0 + OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_embeddingsURL, &unk_1009441F0, &qword_100795760);
  *(v0 + OBJC_IVAR____TtCO7remindd25RDStoreControllerExporter21DistributedEvaluation_reminderTitleEmbeddings), v7, v8, v9, v10, v11, v12, v13;

  return swift_deallocClassInstance();
}

void sub_1002863D8(uint64_t a1, __n128 a2)
{
  type metadata accessor for SymmetricKey();
  if (v2 <= 0x3F)
  {
    type metadata accessor for TimeZone();
    if (v3 <= 0x3F)
    {
      sub_100289520(319, &qword_10093C810, &type metadata accessor for URL);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_100286520()
{
  result = qword_10093F950;
  if (!qword_10093F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F950);
  }

  return result;
}

double sub_100286618(_TtC7remindd19RDXPCStorePerformer *a1, const char *a2, void *a3, _TtC7remindd19RDXPCStorePerformer *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;

    a4, v9, v10, v11, v12, v13, v14, v15;
  }

  return result;
}

uint64_t sub_100286658(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = (v2 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v9;
    if (v5 == v8 && v7 == v9)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v7, v9, v10, v11, v12, v13, v14, v15;
    v16, v18, v19, v20, v21, v22, v23, v24;
  }

  return v3 & 1;
}

uint64_t sub_100286700(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != a6)
  {
    return 0;
  }

  if (a3 != a7 || a4 != a8)
  {
    v8 = result;
    v9 = a5;
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a5 = v9;
    v11 = v10;
    result = v8;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(result + 16);
  if (v12)
  {
    v13 = 0;
    v14 = result + 32;
    v15 = *(a5 + 16);
    while (v13 != v15)
    {
      if (v13 >= v15)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      v16 = v13;
      v17 = 0;
      v18 = *(v14 + 8 * v13++);
      v19 = *(a5 + 32 + 8 * v16);
      v20 = *(v18 + 16);
      v21 = v18 + 32;
      result = v19 + 32;
      while (v20 != v17)
      {
        v22 = *(v19 + 16);
        if (v17 == v22)
        {
          break;
        }

        if (v17 >= v22)
        {
          __break(1u);
          goto LABEL_19;
        }

        v23 = vabdd_f64(*(v21 + 8 * v17), *(result + 8 * v17));
        ++v17;
        if (v23 >= 2.22044605e-16)
        {
          return 0;
        }
      }

      result = 1;
      if (v13 == v12)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_100286804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v28 - v11;
  v13 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v28 - v15;
  v18 = *(v17 + 56);
  sub_100010364(a1, &v28 - v15, &unk_100938850, qword_100795AE0);
  sub_100010364(a2, &v16[v18], &unk_100938850, qword_100795AE0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_100010364(v16, v12, &unk_100938850, qword_100795AE0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_10028C2A4(&qword_100938DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1000050A4(v16, &unk_100938850, qword_100795AE0);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_1000050A4(v16, &qword_100938C18, &qword_1007957A0);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000050A4(v16, &unk_100938850, qword_100795AE0);
LABEL_10:
  v23 = *(type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0) + 20);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (v27 && (*v24 == *v26 && v25 == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v27)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100286B70(unsigned __int8 *a1, unsigned __int8 *a2, __n128 a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else if (v4 == 2 || ((v4 ^ v3) & 1) != 0)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = a2[1];
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else if (v6 == 2 || ((v6 ^ v5) & 1) != 0)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  v8 = *(a2 + 2);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v7 != v8)
    {
      v9 = a1;
      v10 = a2;
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v10;
      v12 = v11;
      a1 = v9;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v8)
  {
    return 0;
  }

  v13 = *(a1 + 3);
  v14 = *(a1 + 4);
  v15 = *(a1 + 5);
  v16 = *(a1 + 6);
  v17 = *(a2 + 3);
  v18 = *(a2 + 4);
  v20 = *(a2 + 5);
  v19 = *(a2 + 6);
  if (v13)
  {
    if (v17)
    {
      v52 = a1;
      v21 = a2;
      v22 = sub_100286700(v13, v14, v15, v16, v17, v18, v20, v19);
      sub_10028D090(v17, v18, v20, v19);
      sub_10028D090(v13, v14, v15, v16);
      v19, v23, v24, v25, v26, v27, v28, v29;
      v17, v30, v31, v32, v33, v34, v35, v36;
      sub_100286618(v13, v14, v15, v16, v37, v38, v39, v40);
      a1 = v52;
      a2 = v21;
      if (v22)
      {
        goto LABEL_25;
      }

      return 0;
    }

LABEL_23:
    sub_10028D090(*(a2 + 3), *(a2 + 4), v20, v19);
    sub_10028D090(v13, v14, v15, v16);
    sub_100286618(v13, v14, v15, v16, v41, v42, v43, v44);
    sub_100286618(v17, v18, v20, v19, v45, v46, v47, v48);
    return 0;
  }

  if (v17)
  {
    goto LABEL_23;
  }

LABEL_25:
  v50 = *(a1 + 7);
  v51 = *(a2 + 7);

  return sub_1003ADD38(v50, v51);
}

uint64_t sub_100286D98(uint64_t a1, uint64_t a2)
{
  v208 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  v206 = *(v208 - 8);
  __chkstk_darwin(v208, v4);
  v202 = &v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&qword_10093F968, &unk_10079E200);
  __chkstk_darwin(v6 - 8, v7);
  v207 = &v196 - v8;
  v205 = sub_1000F5104(&qword_10093FB90, &qword_10079E608);
  __chkstk_darwin(v205, v9);
  v209 = &v196 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v210 = &v196 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v15 - 8, v16);
  v204 = &v196 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v196 - v20;
  v22 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  __chkstk_darwin(v22, v23);
  v25 = &v196 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v29 = &v196 - v28;
  v203 = v30;
  v31 = *(v30 + 48);
  sub_100010364(a1, &v196 - v28, &unk_100938850, qword_100795AE0);
  sub_100010364(a2, &v29[v31], &unk_100938850, qword_100795AE0);
  v211 = v12;
  v32 = *(v12 + 48);
  if (v32(v29, 1, v11) == 1)
  {
    if (v32(&v29[v31], 1, v11) == 1)
    {
      v200 = v25;
      v201 = v32;
      sub_1000050A4(v29, &unk_100938850, qword_100795AE0);
      goto LABEL_11;
    }

LABEL_6:
    v33 = &qword_100938C18;
    v34 = &qword_1007957A0;
    v35 = v29;
LABEL_7:
    sub_1000050A4(v35, v33, v34);
    return 0;
  }

  sub_100010364(v29, v21, &unk_100938850, qword_100795AE0);
  if (v32(&v29[v31], 1, v11) == 1)
  {
    (*(v211 + 8))(v21, v11);
    goto LABEL_6;
  }

  v200 = v25;
  v201 = v32;
  v37 = v210;
  v38 = v211;
  (*(v211 + 32))(v210, &v29[v31], v11);
  sub_10028C2A4(&qword_100938DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v38 + 8);
  v40(v37, v11);
  v40(v21, v11);
  sub_1000050A4(v29, &unk_100938850, qword_100795AE0);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v41 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder(0);
  v42 = v41[5];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 8);
  if (v44)
  {
    if (!v46)
    {
      return 0;
    }
  }

  else
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  v47 = v41[6];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = *(a2 + v47 + 8);
  if (v49)
  {
    if (!v51)
    {
      return 0;
    }
  }

  else
  {
    if (*v48 != *v50)
    {
      LOBYTE(v51) = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  v52 = v41[7];
  v53 = (a1 + v52);
  v54 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  v56 = *(a2 + v52 + 8);
  if (v54)
  {
    if (!v56)
    {
      return 0;
    }
  }

  else
  {
    if (*v53 != *v55)
    {
      LOBYTE(v56) = 1;
    }

    if (v56)
    {
      return 0;
    }
  }

  v57 = v41[8];
  v58 = (a1 + v57);
  v59 = *(a1 + v57 + 8);
  v60 = (a2 + v57);
  v61 = *(a2 + v57 + 8);
  if (v59)
  {
    if (!v61)
    {
      return 0;
    }
  }

  else
  {
    if (*v58 != *v60)
    {
      LOBYTE(v61) = 1;
    }

    if (v61)
    {
      return 0;
    }
  }

  v62 = v41[9];
  v63 = (a1 + v62);
  v64 = *(a1 + v62 + 8);
  v65 = (a2 + v62);
  v66 = v65[1];
  if (v64)
  {
    if (!v66)
    {
      return 0;
    }

    if (*v63 != *v65 || v64 != v66)
    {
      v67 = v41;
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = v67;
      if ((v68 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v66)
  {
    return 0;
  }

  v69 = v41[10];
  v71 = *(a1 + v69);
  v70 = *(a1 + v69 + 8);
  v73 = *(a1 + v69 + 16);
  v72 = *(a1 + v69 + 24);
  v74 = (a2 + v69);
  v76 = *v74;
  v75 = v74[1];
  v77 = v74[2];
  v78 = v74[3];
  if (!v71)
  {
    if (!v76)
    {
      goto LABEL_48;
    }

LABEL_47:
    v101 = v70;
    v102 = v74[1];
    sub_10028D090(*v74, v102, v74[2], v74[3]);
    sub_10028D090(v71, v101, v73, v72);
    sub_100286618(v71, v101, v73, v72, v103, v104, v105, v106);
    sub_100286618(v76, v102, v77, v78, v107, v108, v109, v110);
    return 0;
  }

  if (!v76)
  {
    goto LABEL_47;
  }

  v196 = v70;
  v197 = v72;
  v199 = v41;
  v79 = v72;
  v80 = v75;
  v198 = sub_100286700(v71, v70, v73, v79, v76, v75, v77, v78);
  sub_10028D090(v76, v80, v77, v78);
  v82 = v196;
  v81 = v197;
  sub_10028D090(v71, v196, v73, v197);
  v78, v83, v84, v85, v86, v87, v88, v89;
  v76, v90, v91, v92, v93, v94, v95, v96;
  sub_100286618(v71, v82, v73, v81, v97, v98, v99, v100);
  v41 = v199;
  if ((v198 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v111 = v41[11];
  v112 = (a1 + v111);
  v113 = *(a1 + v111 + 8);
  v114 = (a2 + v111);
  v115 = v114[1];
  if (v113)
  {
    if (!v115)
    {
      return 0;
    }

    if (*v112 != *v114 || v113 != v115)
    {
      v116 = v41;
      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = v116;
      if ((v117 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v115)
  {
    return 0;
  }

  v118 = v41[12];
  v119 = (a1 + v118);
  v120 = *(a1 + v118 + 8);
  v121 = (a2 + v118);
  v122 = v121[1];
  if (v120)
  {
    if (!v122)
    {
      return 0;
    }

    if (*v119 != *v121 || v120 != v122)
    {
      v123 = v41;
      v124 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = v123;
      if ((v124 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v122)
  {
    return 0;
  }

  v125 = v41[13];
  v126 = (a1 + v125);
  v127 = *(a1 + v125 + 8);
  v128 = (a2 + v125);
  v129 = v128[1];
  if (v127)
  {
    if (!v129)
    {
      return 0;
    }

    if (*v126 != *v128 || v127 != v129)
    {
      v130 = v41;
      v131 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = v130;
      if ((v131 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v129)
  {
    return 0;
  }

  v132 = v41[14];
  v133 = (a1 + v132);
  v134 = *(a1 + v132 + 8);
  v135 = (a2 + v132);
  v136 = v135[1];
  if (v134)
  {
    if (!v136)
    {
      return 0;
    }

    v137 = a2;
    if (*v133 != *v135 || v134 != v136)
    {
      v138 = v41;
      v139 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = v138;
      if ((v139 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v137 = a2;
    if (v136)
    {
      return 0;
    }
  }

  v199 = v41;
  v140 = v41[15];
  v141 = *(v205 + 48);
  v205 = a1;
  v142 = v209;
  sub_100010364(a1 + v140, v209, &qword_10093F968, &unk_10079E200);
  sub_100010364(v137 + v140, v142 + v141, &qword_10093F968, &unk_10079E200);
  v143 = *(v206 + 48);
  v144 = v208;
  if (v143(v142, 1, v208) == 1)
  {
    if (v143(v142 + v141, 1, v144) == 1)
    {
      sub_1000050A4(v142, &qword_10093F968, &unk_10079E200);
      goto LABEL_83;
    }

LABEL_81:
    v33 = &qword_10093FB90;
    v34 = &qword_10079E608;
LABEL_89:
    v35 = v142;
    goto LABEL_7;
  }

  sub_100010364(v142, v207, &qword_10093F968, &unk_10079E200);
  if (v143(v142 + v141, 1, v144) == 1)
  {
    sub_1002883C8(v207, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
    v142 = v209;
    goto LABEL_81;
  }

  v145 = v209;
  v146 = v202;
  sub_100288428(v209 + v141, v202, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
  v147 = v207;
  v148 = sub_100286804(v207, v146);
  sub_1002883C8(v146, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
  sub_1002883C8(v147, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
  sub_1000050A4(v145, &qword_10093F968, &unk_10079E200);
  if ((v148 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  v149 = v200;
  v150 = v199[16];
  v151 = *(v203 + 48);
  sub_100010364(v205 + v150, v200, &unk_100938850, qword_100795AE0);
  sub_100010364(v137 + v150, v149 + v151, &unk_100938850, qword_100795AE0);
  v142 = v149;
  if (v201(v149, 1, v11) == 1)
  {
    if (v201(v149 + v151, 1, v11) == 1)
    {
      sub_1000050A4(v149, &unk_100938850, qword_100795AE0);
      goto LABEL_91;
    }

    goto LABEL_88;
  }

  sub_100010364(v149, v204, &unk_100938850, qword_100795AE0);
  if (v201(v149 + v151, 1, v11) == 1)
  {
    (*(v211 + 8))(v204, v11);
LABEL_88:
    v33 = &qword_100938C18;
    v34 = &qword_1007957A0;
    goto LABEL_89;
  }

  v152 = v211;
  v153 = v149 + v151;
  v154 = v210;
  (*(v211 + 32))(v210, v153, v11);
  sub_10028C2A4(&qword_100938DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v155 = v204;
  v156 = dispatch thunk of static Equatable.== infix(_:_:)();
  v157 = *(v152 + 8);
  v157(v154, v11);
  v157(v155, v11);
  sub_1000050A4(v149, &unk_100938850, qword_100795AE0);
  if ((v156 & 1) == 0)
  {
    return 0;
  }

LABEL_91:
  if ((sub_1003AD378(*(v205 + v199[17]), *(v137 + v199[17])) & 1) == 0)
  {
    return 0;
  }

  v158 = v199[18];
  v159 = *(v205 + v158);
  v160 = *(v137 + v158);
  if (v159 == 2)
  {
    if (v160 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v160 == 2 || ((v160 ^ v159) & 1) != 0)
    {
      return result;
    }
  }

  v161 = v199[19];
  v162 = (v205 + v161);
  v163 = *(v205 + v161 + 8);
  v164 = (v137 + v161);
  v165 = *(v137 + v161 + 8);
  if (v163)
  {
    if (!v165)
    {
      return 0;
    }
  }

  else
  {
    if (*v162 != *v164)
    {
      LOBYTE(v165) = 1;
    }

    if (v165)
    {
      return 0;
    }
  }

  v166 = v199[20];
  v167 = (v205 + v166);
  v168 = *(v205 + v166 + 8);
  v169 = (v137 + v166);
  v170 = v169[1];
  if (v168)
  {
    if (!v170 || (*v167 != *v169 || v168 != v170) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v170)
  {
    return 0;
  }

  v171 = v199[21];
  v172 = (v205 + v171);
  v173 = *(v205 + v171 + 8);
  v174 = (v137 + v171);
  v175 = v174[1];
  if (v173)
  {
    if (!v175 || (*v172 != *v174 || v173 != v175) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v175)
  {
    return 0;
  }

  v176 = v199[22];
  v177 = (v205 + v176);
  v178 = *(v205 + v176 + 8);
  v179 = (v137 + v176);
  v180 = v179[1];
  if (v178)
  {
    if (!v180 || (*v177 != *v179 || v178 != v180) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v180)
  {
    return 0;
  }

  v181 = v199[23];
  v182 = *(v205 + v181);
  v183 = *(v137 + v181);
  if (v182)
  {
    if (!v183 || (sub_1003AD2E8(v182, v183) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v183)
  {
    return 0;
  }

  v184 = v199[24];
  v185 = *(v205 + v184);
  v186 = *(v137 + v184);
  if (v185 == 2)
  {
    if (v186 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v186 == 2 || ((v186 ^ v185) & 1) != 0)
    {
      return result;
    }
  }

  v187 = v199[25];
  v188 = *(v205 + v187);
  v189 = *(v137 + v187);
  if (v188 == 2)
  {
    if (v189 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v189 == 2 || ((v189 ^ v188) & 1) != 0)
    {
      return result;
    }
  }

  v190 = v199[26];
  v191 = *(v205 + v190);
  v192 = *(v137 + v190);
  if (v191 == 2)
  {
    if (v192 == 2)
    {
      goto LABEL_144;
    }

    return 0;
  }

  result = 0;
  if (v192 != 2 && ((v192 ^ v191) & 1) == 0)
  {
LABEL_144:
    v193 = v199[27];
    v194 = *(v205 + v193);
    v195 = *(v137 + v193);
    if (v194 == 2)
    {
      if (v195 == 2)
      {
        return 1;
      }
    }

    else if (v195 != 2 && ((v195 ^ v194) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100287C3C(uint64_t a1, uint64_t a2)
{
  sub_1003ADEE0(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5)
  {
    if (!v6 || (*(a1 + 8) != *(a2 + 8) || v5 != v6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  if (v7)
  {
    if (!v8 || (*(a1 + 24) != *(a2 + 24) || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (*(a2 + 48))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_100287D18(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4)
{
  v7 = a1;
  v8 = NLEmbedding.vector(for:)(*&a1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = NLEmbedding.neighbors(for:maximumCount:distanceType:)();
  v18 = v10;
  v19 = *(v10 + 16);
  if (v19 < a4)
  {
    v10, v11, v12, v13, v14, v15, v16, v17;
    v9, v20, v21, v22, v23, v24, v25, v26;
    return 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v28 = *v18->clientIdentity;
    v27 = *&v18->clientIdentity[8];
    if (v28 >= v27 >> 1)
    {
      v18 = sub_100367494((v27 > 1), (v28 + 1), 1, v18);
    }

    *v18->clientIdentity = v28 + 1;
    v29 = &v18->clientIdentity[24 * v28 + 16];
    *v29 = v7;
    v29[1] = a2;
    v29[2] = 0;
    result = [(RDXPCStorePerformer *)a3 dimension];
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result)
    {
      v31 = result;
      a2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *a2->clientIdentity = v31;
      bzero(&a2->clientIdentity[16], 8 * v31);
    }

    else
    {
      a2 = &_swiftEmptyArrayStorage;
    }

    result = [(RDXPCStorePerformer *)a3 dimension];
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_65;
    }

    v7 = &_swiftEmptyArrayStorage;
    v104 = a3;
    if (result)
    {
      a3 = result;
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = a3;
      bzero((v7 + 32), 8 * a3);
    }

    v105 = v18;
    v39 = *v18->clientIdentity;
    if (v39)
    {
      v40 = 0;
      v18 = (v9 + 32);
      v41 = &a2->clientIdentity[16];
      v19 = (v7 + 32);
      while (v40 < *v105->clientIdentity)
      {
        v42 = (v103 + 24 * v40);
        v43 = *v42;
        v44 = v42[1];

        v45._countAndFlagsBits = v43;
        v45._object = v44;
        *&v46 = NLEmbedding.vector(for:)(v45);
        a3 = v46;
        v44, *(&v46 + 1), v47, v48, v49, v50, v51, v52;
        if (a3)
        {
          v53 = *a3->clientIdentity;
          if (v53)
          {
            v54 = 0;
            while (v54 < *(v9 + 16))
            {
              if (v54 >= *a2->clientIdentity)
              {
                goto LABEL_56;
              }

              v55 = *&a3->clientIdentity[8 * v54 + 16];
              v56 = *(&v18->super.isa + v54) - v55;
              if (*&v41[8 * v54] < fabs(v56))
              {
                *&v41[8 * v54] = v56;
              }

              if (v54 >= *(v7 + 16))
              {
                goto LABEL_57;
              }

              *&v19[8 * v54] = v55 + *&v19[8 * v54];
              if (v53 == ++v54)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

LABEL_17:
          a3, v32, v33, v34, v35, v36, v37, v38;
        }

        if (++v40 == v39)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_62;
    }

LABEL_30:
    v9, v32, v33, v34, v35, v36, v37, v38;
    v64 = *(v7 + 16);
    if (v64)
    {
      sub_10025361C(0, v64, 0);
      v72 = 32;
      a3 = &_swiftEmptyArrayStorage;
      do
      {
        v73 = *(v7 + v72);
        v74 = *v105->clientIdentity;
        v76 = *_swiftEmptyArrayStorage.clientIdentity;
        v75 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v76 >= v75 >> 1)
        {
          sub_10025361C((v75 > 1), v76 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v76 + 1;
        *&_swiftEmptyArrayStorage.clientIdentity[8 * v76 + 16] = v73 / v74;
        v72 += 8;
        --v64;
      }

      while (v64);
      v7, v65, v66, v67, v68, v69, v70, v71;
    }

    else
    {
      v7, v57, v58, v59, v60, v61, v62, v63;
      a3 = &_swiftEmptyArrayStorage;
    }

    result = [v104 dimension];
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_66;
    }

    if (result)
    {
      v84 = result;
      v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *v18->clientIdentity = v84;
      bzero(&v18->clientIdentity[16], 8 * v84);
      v9 = *a2->clientIdentity;
      if (!v9)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v18 = &_swiftEmptyArrayStorage;
      v9 = *a2->clientIdentity;
      if (!v9)
      {
LABEL_53:
        v105, v77, v78, v79, v80, v81, v82, v83;
        a2, v89, v90, v91, v92, v93, v94, v95;
        &_swiftEmptyArrayStorage, v96, v97, v98, v99, v100, v101, v102;
        return v18;
      }
    }

    v7 = 0x1FFFFFFFFFF801;
    v19 = &_swiftEmptyArrayStorage.clientIdentity[16];
    if (!*a2->clientIdentity)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v85 = &a2->clientIdentity[16];
    v86 = *&a2->clientIdentity[16];
    if (v86 >= 0.0)
    {
      v87 = -v86;
    }

    else
    {
      v87 = *v85;
    }

    if (v86 < 0.0)
    {
      v88 = -v86;
    }

    else
    {
      v88 = *v85;
    }

    if (!*_swiftEmptyArrayStorage.clientIdentity)
    {
      goto LABEL_59;
    }

    if (v87 <= v88)
    {
      if (COERCE__INT64(fabs(v88 - v87)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        while (1)
        {
          swift_stdlib_random();
        }
      }

      goto LABEL_61;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v18 = sub_100367494(0, v19 + 1, 1, v18);
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}