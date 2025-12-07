void *sub_1000366FC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v23 = type metadata accessor for EventRecord.DecodedEvent();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a4;
  v9 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v30 = _swiftEmptyArrayStorage;
  sub_10003E718(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v28 = v4;
    v11 = 0;
    v10 = v30;
    v12 = v27;
    if (v27 <= a3)
    {
      v12 = a3;
    }

    v21 = v12 - a3 + 1;
    v22 = v26 + 32;
    while (v11 < v9)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

      v29 = a3 + v11;
      v14 = v8;
      v15 = v28;
      v24(&v29);
      v28 = v15;
      if (v15)
      {
        goto LABEL_22;
      }

      v30 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_10003E718((v16 > 1), v17 + 1, 1);
        v10 = v30;
      }

      v10[2] = v17 + 1;
      v18 = v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v17;
      v8 = v14;
      (*(v26 + 32))(v18, v14, v23);
      if (v27 < a3)
      {
        goto LABEL_18;
      }

      if (v21 == ++v11)
      {
        goto LABEL_19;
      }

      if (v13 == v9)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void *sub_100036934(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = *(v1 + 36);
    result = sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
    v7 = 0;
    v26 = v1 + 72;
    v27 = v6;
    v28 = v2;
    v29 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v30 = v7;
      v6 = v4;
      v10 = (*(v1 + 48) + 16 * v5);
      v11 = *v10;
      v12 = v10[1];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      swift_bridgeObjectRetain_n();

      v16._countAndFlagsBits = v11;
      v16._object = v12;
      v17._countAndFlagsBits = v13;
      v17._object = v15;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(v16, v17).super.isa;
      [objc_allocWithZone(CKRecordZone) initWithZoneID:isa];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v29;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v29 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v19 = *(v6 + 8 * v9);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v4 = v6;
      LODWORD(v6) = v27;
      if (v27 != *(v29 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v26 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_10002BC80(v5, v27, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_10002BC80(v5, v27, 0);
      }

LABEL_4:
      v7 = v30 + 1;
      v5 = v8;
      if (v30 + 1 == v28)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_100036BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10003E758(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v9 = (*(a1 + 48) + 16 * v5);
    v10 = v9[1];
    v22 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_10003E758((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v22;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_10002BC80(v5, v23, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_10002BC80(v5, v23, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_100036E40(void (*a1)(__int128 *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_10003E778(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    for (i = (a3 + 32); ; ++i)
    {
      v16 = *i;
      sub_10003F994(v16, *(&v16 + 1));
      a1(&v17, &v16, &v15);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_10000D37C(v16, *(&v16 + 1));
      v10 = v17;
      v18 = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v14 = v17;
        sub_10003E778((v11 > 1), v12 + 1, 1);
        v10 = v14;
        v6 = v18;
      }

      v6[2] = v12 + 1;
      *&v6[2 * v12 + 4] = v10;
      if (!--v5)
      {
        return v6;
      }
    }

    sub_10000D37C(v16, *(&v16 + 1));
  }

  return v6;
}

void *sub_100036F7C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v14 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(type metadata accessor for PendingEventData(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10, &v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_1000370C8(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for PendingEventData(0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000371C0, 0, 0);
}

uint64_t sub_1000371C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(v5 + 128);
  v7 = *(v6 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(*(v5 + 136) + 56) < v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = *(v5 + 152);
  v8 = *(v5 + 160);
  a1 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(a1 + *(v9 + 40));
  if (v10 == 2)
  {
LABEL_13:
    __break(1u);
    return Task.value.getter(a1, a2, a3, a4, a5);
  }

  v11 = *(v8 + 72);
  v12 = (0xFFFF00010000uLL >> (16 * v10));
  v13 = v7 + 1;
  while (--v13)
  {
    v14 = a1 + v11;
    v15 = *(v5 + 168);
    sub_100037660(a1, v15);
    v16 = *(v15 + *(v9 + 40));
    sub_1000376C4(v15);
    a1 = v14;
    if (v12 != (0xFFFF00010000uLL >> (16 * v16)))
    {
      __break(1u);
      break;
    }
  }

  v18 = *(v5 + 136);
  v17 = *(v5 + 144);
  v19 = *(v5 + 128);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  sub_100037DBC(v18, v5 + 16);
  v21 = swift_allocObject();
  v22 = *(v5 + 48);
  *(v21 + 88) = *(v5 + 64);
  v23 = *(v5 + 96);
  *(v21 + 104) = *(v5 + 80);
  *(v21 + 120) = v23;
  v24 = *(v5 + 32);
  *(v21 + 40) = *(v5 + 16);
  *(v21 + 56) = v24;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v19;
  *(v21 + 136) = *(v5 + 112);
  *(v21 + 72) = v22;

  v25 = sub_10004E154(0, 0, v17, &unk_100086CE8, v21);
  *(v5 + 176) = v25;
  v26 = swift_task_alloc();
  *(v5 + 184) = v26;
  v27 = sub_10000CED0(&qword_1000AB8A8, &unk_100086CF0);
  a4 = sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  *v26 = v5;
  v26[1] = sub_100037430;
  a5 = &protocol self-conformance witness table for Error;
  a1 = v5 + 120;
  a2 = v25;
  a3 = v27;

  return Task.value.getter(a1, a2, a3, a4, a5);
}

uint64_t sub_100037430()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1000375D8;
  }

  else
  {
    v2 = sub_100037560;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100037560()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000375D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100037660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingEventData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000376C4(uint64_t a1)
{
  v2 = type metadata accessor for PendingEventData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000377FC, 0, 0);
}

uint64_t sub_1000377FC()
{
  v0[13] = sub_1000386C4();
  static LoggedObject.logger.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[6];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "Beginning upload of %ld record(s)", v5, 0xCu);
  }

  else
  {
  }

  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[9];
  v9 = *(v8 + 8);
  v0[14] = v9;
  v0[15] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v7);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_100037984;
  v11 = v0[6];

  return sub_100037F0C(v11);
}

uint64_t sub_100037984(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[17] = v1;

  if (v1)
  {
    v4 = sub_100037C08;
  }

  else
  {
    v4 = sub_100037AA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100037AA0()
{
  static LoggedObject.logger.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "Upload of %ld record(s) completed", v5, 0xCu);
  }

  else
  {
  }

  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  (*(v0 + 112))(*(v0 + 88), *(v0 + 64));
  *v7 = v6;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100037C08()
{
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to upload all records: %{public}@", v3, 0xCu);
    sub_10000D620(v4, &unk_1000AB7D0, &qword_100085510);
  }

  v6 = v0[14];
  v7 = v0[10];
  v8 = v0[8];

  v6(v7, v8);
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100037DF4()
{
  swift_unknownObjectRelease();

  sub_10000D330((v0 + 40));

  sub_10000D330((v0 + 104));

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100037E4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D130;

  return sub_100037720(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_100037F0C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for DatabaseConfiguration();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  Scope = type metadata accessor for QueryScope();
  v2[9] = Scope;
  v2[10] = *(Scope - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100038028, 0, 0);
}

uint64_t sub_100038028()
{
  v0[2] = &_swiftEmptyDictionarySingleton;
  v1 = sub_10003C094(v0[4], v0 + 2);
  v0[12] = v1;
  if (v1[2])
  {
    v2 = *(v0[5] + 40);
    v3 = [v2 defaultConfiguration];
    if (v3)
    {
      v7 = v3;
      v8 = [v3 container];
      v0[13] = v8;

      if (!v8)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      if (v1[2])
      {
        v9 = type metadata accessor for PendingEventData(0);
        v10 = *(v9 - 8);
        v11 = *(v9 + 40);
        if (!*(v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11))
        {
          v12 = &enum case for QueryScope.owned(_:);
LABEL_13:
          v17 = v0[10];
          v16 = v0[11];
          v19 = v0[8];
          v18 = v0[9];
          v20 = v0[7];
          v29 = v0[6];
          v30 = v0[5];
          (*(v17 + 104))(v16, *v12, v18);
          v21 = sub_10000CED0(&qword_1000AB8B8, &qword_100086D10);
          v22 = *(v21 + 48);
          v23 = *(v21 + 64);
          *v19 = v8;
          (*(v17 + 16))(&v19[v22], v16, v18);
          *&v19[v23] = v2;
          (*(v20 + 104))(v19, enum case for DatabaseConfiguration.unconfigured(_:), v29);
          v24 = v0[2];
          v0[14] = v24;
          v25 = swift_task_alloc();
          v0[15] = v25;
          v25[2] = v30;
          v25[3] = v24;
          v25[4] = v1;
          v26 = v8;
          v27 = v2;
          v28 = swift_task_alloc();
          v0[16] = v28;
          v6 = sub_10000CED0(&qword_1000AB8A8, &unk_100086CF0);
          *v28 = v0;
          v28[1] = sub_1000383D0;
          v4 = &unk_100086D20;
          v3 = v0 + 3;
          v5 = v25;

          return DatabaseConfiguration.configure<A>(_:)(v3, v4, v5, v6);
        }

        if (*(v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11) == 1)
        {
          v12 = &enum case for QueryScope.shared(_:);
          goto LABEL_13;
        }

        return _assertionFailure(_:_:file:line:flags:)();
      }

      __break(1u);
    }

    __break(1u);
    return DatabaseConfiguration.configure<A>(_:)(v3, v4, v5, v6);
  }

  v13 = sub_100080BA0(_swiftEmptyArrayStorage);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1000383D0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1000385F4;
  }

  else
  {
    v2 = sub_100038520;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100038520()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 24);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1000385F4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_1000386C4()
{
  result = qword_1000AB8B0;
  if (!qword_1000AB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB8B0);
  }

  return result;
}

uint64_t sub_100038718(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000387E8, 0, 0);
}

uint64_t sub_1000387E8()
{
  v0[9] = sub_1000386C4();
  static LoggedObject.logger.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[2];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (v4 >> 62)
    {
      v14 = v5;
      v6 = _CocoaArrayWrapper.endIndex.getter();
      v5 = v14;
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;
    v7 = v5;

    _os_log_impl(&_mh_execute_header, v1, v2, "Beginning CloudKit upload of %ld record(s)", v7, 0xCu);
  }

  else
  {
  }

  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v11 = *(v10 + 8);
  v0[10] = v11;
  v0[11] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1000389BC;
  v13 = v0[2];

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(v13, _swiftEmptyArrayStorage, 2, 0);
}

uint64_t sub_1000389BC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100038CC0, 0, 0);
  }

  else
  {

    v5[14] = a1;
    v7 = swift_task_alloc();
    v5[15] = v7;
    *v7 = v6;
    v7[1] = sub_100038B64;
    v8 = v5[3];
    v9 = v5[2];

    return sub_100038E60(v9, v8, a1);
  }
}

uint64_t sub_100038B64(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100038CC0()
{
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Upload operation failed: %{public}@", v3, 0xCu);
    sub_10000D620(v4, &unk_1000AB7D0, &qword_100085510);
  }

  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[5];

  v6(v7, v8);
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100038E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for Logger();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  sub_10000CED0(&qword_1000AB6B8, &qword_100086D40);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_100038FD0, 0, 0);
}

unint64_t sub_100038FD0()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[11];
  v104 = v0[12];
  v4 = v0[9];
  sub_10000CED0(&qword_1000AB8C0, &qword_100086D48);
  sub_10003F94C(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v0[2] = Dictionary.init(minimumCapacity:)();
  v116 = v0 + 2;
  v5 = v3 + 64;
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 64);
  v9 = (63 - v7) >> 6;
  v113 = (v1 + 48);
  v111 = (v2 + 8);
  v112 = (v1 + 32);
  v115 = v4 & 0xFFFFFFFFFFFFFF8;
  v106 = v4 + 32;
  v107 = v4 & 0xC000000000000001;
  v103 = v1;
  v109 = (v1 + 8);
  v114 = v3;

  v117 = 0;
  v10 = 0;
  v11 = &_swiftEmptyDictionarySingleton;
  v102 = v4 >> 62;
  v110 = v3 + 64;
  v108 = v9;
  while (2)
  {
    v0[22] = v117;
    v0[23] = v11;
    if (v8)
    {
      v119 = v11;
      goto LABEL_13;
    }

    do
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_72:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      if (v12 >= v9)
      {

        if (v11[2])
        {
          v97 = swift_task_alloc();
          v0[24] = v97;
          *v97 = v0;
          v97[1] = sub_100039CA0;
          v98 = v0[10];

          return sub_100039E74(v11, v98, v116);
        }

        else
        {

          sub_10003FB64(v0[22], 0);
          v99 = v0[2];

          v100 = v0[1];

          return v100(v99);
        }
      }

      v8 = *(v5 + 8 * v12);
      ++v10;
    }

    while (!v8);
    v119 = v11;
    v10 = v12;
LABEL_13:
    v14 = v0[18];
    v13 = v0[19];
    v15 = __clz(__rbit64(v8)) | (v10 << 6);
    v16 = *(*(v114 + 48) + 8 * v15);
    v17 = *(v114 + 56) + 16 * v15;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = v16;
    v120 = v18;
    sub_10003EA88(v18, v19);
    v21 = [v20 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    result = (*v113)(v14, 1, v13);
    if (result != 1)
    {
      (*v112)(v0[21], v0[18], v0[19]);
      if (v19)
      {
        v23 = v18;
        if (*(v104 + 48))
        {
          swift_errorRetain();
          goto LABEL_44;
        }

        v0[3] = v18;
        sub_10003EA88(v18, 1);
        swift_errorRetain();
        sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
        type metadata accessor for CKError(0);
        if (swift_dynamicCast())
        {
          v43 = v0[4];
          v0[5] = v43;
          sub_10003F94C(&qword_1000AAEA8, type metadata accessor for CKError, &unk_100085AD8);
          _BridgedStoredNSError.code.getter();
          if (v0[6] == 26 || (v0[7] = v43, _BridgedStoredNSError.code.getter(), v0[8] == 28))
          {
            sub_1000386C4();
            static LoggedObject.logger.getter();
            v44 = v20;
            v45 = v43;
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.info.getter();
            v105 = v44;

            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              *v48 = 138543618;
              *(v48 + 4) = v105;
              *v49 = v105;
              *(v48 + 12) = 2114;
              v50 = v105;
              v51 = v45;
              v52 = _swift_stdlib_bridgeErrorToNSError();
              *(v48 + 14) = v52;
              v49[1] = v52;
              _os_log_impl(&_mh_execute_header, v46, v47, "Will retry upload for record %{public}@ that failed with missing zone error: %{public}@", v48, 0x16u);
              sub_10000CED0(&unk_1000AB7D0, &qword_100085510);
              swift_arrayDestroy();
            }

            v101 = v45;
            v53 = v0[16];
            v54 = v0[13];

            (*v111)(v53, v54);
            if (v102)
            {
              v55 = _CocoaArrayWrapper.endIndex.getter();
              if (v55)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v55 = *(v115 + 16);
              if (v55)
              {
LABEL_30:
                v56 = 0;
                while (1)
                {
                  if (v107)
                  {
                    v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v56 >= *(v115 + 16))
                    {
                      goto LABEL_76;
                    }

                    v57 = *(v106 + 8 * v56);
                  }

                  v58 = v57;
                  v59 = v56 + 1;
                  if (__OFADD__(v56, 1))
                  {
                    goto LABEL_77;
                  }

                  sub_10000D544(0, &qword_1000AB070, NSObject_ptr);
                  v60 = [v58 recordID];
                  v61 = static NSObject.== infix(_:_:)();

                  if (v61)
                  {
                    break;
                  }

                  ++v56;
                  if (v59 == v55)
                  {
                    goto LABEL_59;
                  }
                }

                v79 = [v105 zoneID];
                v80 = [v79 zoneName];

                v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v83 = v82;

                v84 = v83;
                sub_10003FB64(v117, 0);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v118 = v81;
                v87 = sub_10007B4E8(v81, v83);
                v88 = v119[2];
                v89 = (v86 & 1) == 0;
                result = v88 + v89;
                if (__OFADD__(v88, v89))
                {
                  goto LABEL_81;
                }

                v90 = v86;
                if (v119[3] >= result)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    if ((v86 & 1) == 0)
                    {
                      goto LABEL_61;
                    }
                  }

                  else
                  {
                    sub_10007F8E4();
                    if ((v90 & 1) == 0)
                    {
                      goto LABEL_61;
                    }
                  }
                }

                else
                {
                  sub_10007D120(result, isUniquelyReferenced_nonNull_native);
                  v91 = sub_10007B4E8(v118, v83);
                  if ((v90 & 1) != (v92 & 1))
                  {
                    goto LABEL_72;
                  }

                  v87 = v91;
                  if ((v90 & 1) == 0)
                  {
LABEL_61:
                    v93 = v119;
                    sub_10007EDFC(v87, v118, v84, _swiftEmptyArrayStorage, v119);
                    goto LABEL_62;
                  }
                }

                v93 = v119;
LABEL_62:
                v95 = (v93[7] + 8 * v87);
                v96 = v58;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                v23 = v120;
                if (*((*v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v117 = sub_100039E64;
                goto LABEL_47;
              }
            }

LABEL_59:

            v23 = v120;
LABEL_47:
            v76 = v0[21];
            v77 = v0[2];
            v78 = swift_isUniquelyReferenced_nonNull_native();
            sub_10007EA28(v23, v76, v78);

            sub_10003EA94(v23, 1);
            v0[2] = v77;
LABEL_6:
            v9 = v108;
            v11 = v119;
            v8 &= v8 - 1;
            (*v109)(v0[21], v0[19]);
            v5 = v110;
            continue;
          }

          v23 = v18;
        }

LABEL_44:
        sub_1000386C4();
        static LoggedObject.logger.getter();
        v67 = v20;
        sub_10003EA88(v23, 1);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();

        sub_10003EA94(v23, 1);
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v70 = 138543618;
          *(v70 + 4) = v67;
          *v71 = v67;
          *(v70 + 12) = 2114;
          v72 = v67;
          sub_10003EA88(v23, 1);
          v73 = _swift_stdlib_bridgeErrorToNSError();
          *(v70 + 14) = v73;
          v71[1] = v73;
          _os_log_impl(&_mh_execute_header, v68, v69, "Upload for record %{public}@ failed: %{public}@", v70, 0x16u);
          sub_10000CED0(&unk_1000AB7D0, &qword_100085510);
          swift_arrayDestroy();
        }

        v74 = v0[15];
        v75 = v0[13];

        (*v111)(v74, v75);
        goto LABEL_47;
      }

      sub_1000386C4();
      static LoggedObject.logger.getter();
      v24 = v20;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138543362;
        *(v27 + 4) = v24;
        *v28 = v24;
        v29 = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "Upload for record %{public}@ succeeded", v27, 0xCu);
        sub_10000D620(v28, &unk_1000AB7D0, &qword_100085510);
      }

      v30 = v0[21];
      v31 = v0[17];
      v32 = v0[13];

      (*v111)(v31, v32);
      v33 = v0[2];
      v34 = swift_isUniquelyReferenced_nonNull_native();
      result = sub_10007B6C4(v30);
      v36 = v33[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        __break(1u);
      }

      else
      {
        v40 = v35;
        if (v33[3] < v39)
        {
          v41 = v0[21];
          sub_10007CD40(v39, v34);
          result = sub_10007B6C4(v41);
          if ((v40 & 1) != (v42 & 1))
          {
            goto LABEL_72;
          }

LABEL_40:
          if ((v40 & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_4:
          *(v33[7] + 8 * result) = 0;

LABEL_5:
          sub_10003EA94(v120, 0);

          *v116 = v33;
          goto LABEL_6;
        }

        if (v34)
        {
          goto LABEL_40;
        }

        v94 = result;
        sub_10007F664();
        result = v94;
        if (v40)
        {
          goto LABEL_4;
        }

LABEL_41:
        v62 = v0[21];
        v63 = v0[19];
        v33[(result >> 6) + 8] |= 1 << result;
        v64 = result;
        result = (*(v103 + 16))(v33[6] + *(v103 + 72) * result, v62, v63);
        *(v33[7] + 8 * v64) = 0;
        v65 = v33[2];
        v38 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (!v38)
        {
          v33[2] = v66;
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_100039CA0()
{

  return _swift_task_switch(sub_100039DB8, 0, 0);
}

uint64_t sub_100039DB8()
{
  sub_10003FB64(v0[22], 0);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100039E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100039F5C, 0, 0);
}

uint64_t sub_100039F5C()
{
  v21 = v0;
  v0[13] = sub_1000386C4();
  static LoggedObject.logger.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[8];
  if (v3)
  {
    v19 = v0[7];
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    sub_100036BFC(v7);
    v10 = Array.description.getter();
    v18 = v4;
    v12 = v11;

    v13 = sub_100035120(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Attempting to create zones: %{public}s", v8, 0xCu);
    sub_10000D330(v9);

    v14 = *(v6 + 8);
    v14(v18, v19);
  }

  else
  {

    v14 = *(v6 + 8);
    v14(v4, v5);
  }

  v0[14] = v14;
  v15 = sub_100036934(v0[3]);
  v0[15] = v15;
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_10003A1A4;

  return CKDatabase.modifyRecordZones(saving:deleting:)(v15, _swiftEmptyArrayStorage);
}

uint64_t sub_10003A1A4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 136) = a1;
  *(v4 + 144) = v2;

  if (v2)
  {
    v5 = sub_10003AA2C;
  }

  else
  {

    v5 = sub_10003A2EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10003A2EC()
{
  v1 = 0;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v2 = *(v0 + 136);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v51 = *(v0 + 136);
  v7 = -1 << *(v51 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v48 = *(v0 + 24);
  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  while (v8)
  {
LABEL_11:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v1 << 6);
    v13 = *(*(v51 + 48) + 8 * v12);
    v14 = *(v51 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = v13;
    if (v16 == 1)
    {
      sub_10003EA88(v15, 1);
      static LoggedObject.logger.getter();
      v18 = v17;
      sub_10003EA88(v15, 1);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      sub_10003EA94(v15, 1);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = v15;
        v23 = swift_slowAlloc();
        *v21 = 138543618;
        *(v21 + 4) = v18;
        *v23 = v18;
        *(v21 + 12) = 2114;
        v49 = v18;
        v24 = v22;
        v0 = v47;
        sub_10003EA88(v24, 1);
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 14) = v25;
        v23[1] = v25;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to create zone %{public}@: %{public}@", v21, 0x16u);
        sub_10000CED0(&unk_1000AB7D0, &qword_100085510);
        swift_arrayDestroy();

        sub_10003EA94(v24, 1);
      }

      else
      {

        sub_10003EA94(v15, 1);
      }

      (*(v0 + 112))(*(v0 + 88), *(v0 + 56));
    }

    else
    {
      v50 = v15;
      sub_10003EA88(v15, 0);
      static LoggedObject.logger.getter();
      v26 = v17;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138543362;
        *(v29 + 4) = v26;
        *v30 = v26;
        v31 = v26;
        _os_log_impl(&_mh_execute_header, v27, v28, "Successfully created zone %{public}@", v29, 0xCu);
        sub_10000D620(v30, &unk_1000AB7D0, &qword_100085510);
      }

      v32 = *(v0 + 112);
      v33 = *(v0 + 80);
      v34 = *(v0 + 56);

      v32(v33, v34);
      v35 = [v26 zoneName];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      if (*(v48 + 16))
      {
        sub_10007B4E8(v36, v38);
        v40 = v39;

        if (v40)
        {

          sub_10003ABE8(v41);

          sub_10003EA94(v50, 0);
        }

        else
        {
          sub_10003EA94(v50, 0);
        }
      }

      else
      {
        sub_10003EA94(v50, 0);
      }
    }
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_27:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v10);
    ++v1;
    if (v8)
    {
      v1 = v10;
      goto LABEL_11;
    }
  }

  v9 = *(v0 + 16);
  *(v0 + 152) = v9;
  if (v9 >> 62)
  {
    goto LABEL_27;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    v42 = swift_task_alloc();
    *(v0 + 160) = v42;
    *v42 = v0;
    v42[1] = sub_10003A890;
    v43 = *(v0 + 40);
    v44 = *(v0 + 32);

    return sub_10003ACD8(v9, v44, v43);
  }

LABEL_28:

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_10003A890()
{

  return _swift_task_switch(sub_10003A9A8, 0, 0);
}

uint64_t sub_10003A9A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003AA2C()
{
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create zones: %{public}@", v3, 0xCu);
    sub_10000D620(v4, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
  }

  (*(v0 + 112))(*(v0 + 72), *(v0 + 56));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10003ABE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10003E798(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10003E8C0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10003ACD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_10000CED0(&qword_1000AB6B8, &qword_100086D40);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10003AE54, 0, 0);
}

uint64_t sub_10003AE54()
{
  v0[15] = sub_1000386C4();
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Attempting to upload records again", v3, 2u);
  }

  v4 = v0[14];
  v5 = v0[9];
  v6 = v0[10];

  v7 = *(v6 + 8);
  v0[16] = v7;
  v7(v4, v5);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_10003AFBC;
  v9 = v0[2];

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(v9, _swiftEmptyArrayStorage, 0, 1);
}

uint64_t sub_10003AFBC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 144) = a1;
  *(v4 + 152) = v2;

  if (v2)
  {
    v5 = sub_10003B708;
  }

  else
  {

    v5 = sub_10003B0DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10003B0DC()
{
  v1 = 0;
  v2 = v0[18];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v66 = v0[18];
  v7 = -1 << *(v66 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v0[7];
  v9 = v6 & v3;
  v10 = (63 - v7) >> 6;
  v64 = (v8 + 32);
  v65 = (v8 + 48);
  v60 = v8;
  v63 = (v8 + 8);
  v61 = v10;
  v62 = v4;
  while (v9)
  {
LABEL_11:
    v15 = v0[5];
    v16 = v0[6];
    v17 = __clz(__rbit64(v9)) | (v1 << 6);
    v18 = *(*(v66 + 48) + 8 * v17);
    v19 = *(v66 + 56) + 16 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = v18;
    v67 = v20;
    sub_10003EA88(v20, v21);
    v23 = [v22 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    if ((*v65)(v15, 1, v16) == 1)
    {
      goto LABEL_38;
    }

    (*v64)(v0[8], v0[5], v0[6]);
    if (!v21)
    {
      static LoggedObject.logger.getter();
      v31 = v22;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138543362;
        *(v34 + 4) = v31;
        *v35 = v31;
        v36 = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "Retried upload for record %{public}@ succeeded", v34, 0xCu);
        sub_10000D620(v35, &unk_1000AB7D0, &qword_100085510);
      }

      v37 = v0[16];
      v38 = v0[13];
      v40 = v0[8];
      v39 = v0[9];
      v41 = v0[4];

      v37(v38, v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = *v41;
      v68 = *v41;
      v45 = sub_10007B6C4(v40);
      v46 = v43[2];
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      v49 = v44;
      if (v43[3] >= v48)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v44 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          sub_10007F664();
          v43 = v68;
          if ((v49 & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v50 = v0[8];
        sub_10007CD40(v48, isUniquelyReferenced_nonNull_native);
        v43 = v68;
        v51 = sub_10007B6C4(v50);
        if ((v49 & 1) != (v52 & 1))
        {

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v45 = v51;
        if ((v49 & 1) == 0)
        {
LABEL_26:
          v53 = v0[8];
          v54 = v0[6];
          v43[(v45 >> 6) + 8] |= 1 << v45;
          (*(v60 + 16))(v43[6] + *(v60 + 72) * v45, v53, v54);
          *(v43[7] + 8 * v45) = 0;
          v55 = v43[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_37;
          }

          v43[2] = v57;
          goto LABEL_28;
        }
      }

      *(v43[7] + 8 * v45) = 0;

LABEL_28:
      v58 = v0[4];
      sub_10003EA94(v67, 0);

      *v58 = v43;
      goto LABEL_5;
    }

    static LoggedObject.logger.getter();
    v24 = v22;
    sub_10003EA88(v20, 1);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    sub_10003EA94(v20, 1);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543618;
      *(v27 + 4) = v24;
      *v28 = v24;
      *(v27 + 12) = 2114;
      v29 = v24;
      sub_10003EA88(v67, 1);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v30;
      v28[1] = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "Retried upload for record %{public}@ failed: %{public}@", v27, 0x16u);
      sub_10000CED0(&unk_1000AB7D0, &qword_100085510);
      swift_arrayDestroy();
    }

    v11 = v0[16];
    v12 = v0[12];
    v13 = v0[9];

    sub_10003EA94(v67, 1);
    v11(v12, v13);
LABEL_5:
    v10 = v61;
    v4 = v62;
    v9 &= v9 - 1;
    (*v63)(v0[8], v0[6]);
  }

  while (1)
  {
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(v4 + 8 * v14);
    ++v1;
    if (v9)
    {
      v1 = v14;
      goto LABEL_11;
    }
  }

  v59 = v0[1];

  v59();
}

uint64_t sub_10003B708()
{
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Retried upload operation failed: %{public}@", v3, 0xCu);
    sub_10000D620(v4, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
  }

  (*(v0 + 128))(*(v0 + 88), *(v0 + 72));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t *sub_10003B8DC@<X0>(uint64_t *result@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_14;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    if (__OFSUB__(v9, v8))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v9 - v8 <= 2)
    {
LABEL_13:
      if (v8 != v9)
      {
        goto LABEL_15;
      }

LABEL_14:
      result = sub_10003F994(v5, v6);
LABEL_18:
      *a3 = v5;
      a3[1] = v6;
      return result;
    }

    __break(1u);
  }

  else if (!v7)
  {
    if (BYTE6(v6) <= 2uLL)
    {
      if (!BYTE6(v6))
      {
        goto LABEL_14;
      }

LABEL_15:
      result = static LubyRackoffEncryption.encrypt(tag:withKey:)();
      if (v3)
      {
        *a2 = v3;
        return result;
      }

      v5 = result;
      v6 = v11;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v5) - v5 <= 2)
  {
    v8 = v5;
    v9 = v5 >> 32;
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10003B9C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = type metadata accessor for PendingEventData(0);
  v64 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v54 - v8;
  v10 = type metadata accessor for Logger();
  v62 = *(v10 - 8);
  v63 = v10;
  __chkstk_darwin(v10);
  v66 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v56 = *(v12 - 8);
  v57 = v12;
  __chkstk_darwin(v12);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Configuration.TargetCloudKitZone();
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = &v54 - v18;
  v19 = sub_10000CED0(&qword_1000AB8F8, &qword_100086D78);
  __chkstk_darwin(v19 - 8);
  v21 = &v54 - v20;
  v22 = type metadata accessor for EventRecord.DataType();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventRecord.DataType.init(rawValue:)();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v26 = v5;
    sub_10000D620(v21, &qword_1000AB8F8, &qword_100086D78);
    sub_1000386C4();
    static LoggedObject.logger.getter();
    sub_100037660(a1, v9);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v67 = v30;
      *v29 = 136315138;
      sub_100037660(v9, v58);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      sub_1000376C4(v9);
      v34 = sub_100035120(v31, v33, &v67);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unknown data type, skipping: %s", v29, 0xCu);
      sub_10000D330(v30);

      (*(v62 + 8))(v66, v63);
      v35 = v26;
      v36 = 1;
      v38 = v64;
      v37 = v65;
    }

    else
    {

      sub_1000376C4(v9);
      (*(v62 + 8))(v66, v63);
      v36 = 1;
      v38 = v64;
      v37 = v65;
      v35 = v26;
    }

    return (*(v38 + 56))(v37, v36, 1, v35);
  }

  (*(v23 + 32))(v25, v21, v22);
  v63 = v5;
  v39 = *(v5 + 20);
  EventRecord.DataType.targetCKRecordZone.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *a2;
  v41 = v67;
  *a2 = 0x8000000000000000;
  v66 = a1;
  v62 = v39;
  v43 = sub_10007B6C4(a1 + v39);
  v44 = *(v41 + 16);
  v45 = (v42 & 1) == 0;
  v46 = v44 + v45;
  if (__OFADD__(v44, v45))
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(a1) = v42;
  if (*(v41 + 24) >= v46)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_15:
    sub_10007FA54();
    v41 = v67;
    goto LABEL_10;
  }

  sub_10007D3C8(v46, isUniquelyReferenced_nonNull_native);
  v41 = v67;
  v47 = sub_10007B6C4(&v66[v62]);
  if ((a1 & 1) == (v48 & 1))
  {
    v43 = v47;
LABEL_10:
    v38 = v64;
    *a2 = v41;

    v49 = *a2;
    v50 = v66;
    if ((a1 & 1) == 0)
    {
      v51 = v55;
      (*(v56 + 16))(v55, &v66[v62], v57);
      sub_10007ED44(v43, v51, &_swiftEmptySetSingleton, v49);
    }

    v52 = v59;
    sub_10002F8A4(v59, v17);
    (*(v60 + 8))(v52, v61);
    (*(v23 + 8))(v25, v22);
    v37 = v65;
    sub_100037660(v50, v65);
    v36 = 0;
    v35 = v63;
    return (*(v38 + 56))(v37, v36, 1, v35);
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10003C094(uint64_t a1, uint64_t *a2)
{
  v5 = sub_10000CED0(&qword_1000AB918, &qword_100086D98);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for PendingEventData(0);
  v9 = __chkstk_darwin(v8);
  v26 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v25 = &v22 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = *(v11 + 72);
  v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = a1 + v22;
  v16 = (v11 + 48);
  v17 = _swiftEmptyArrayStorage;
  v23 = v8;
  v24 = a2;
  while (1)
  {
    sub_10003B9C4(v15, a2, v7);
    if (v2)
    {
      break;
    }

    if ((*v16)(v7, 1, v8) == 1)
    {
      sub_10000D620(v7, &qword_1000AB918, &qword_100086D98);
    }

    else
    {
      v18 = v25;
      sub_10003FB74(v7, v25);
      sub_10003FB74(v18, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1000226FC(0, v17[2] + 1, 1, v17);
      }

      v20 = v17[2];
      v19 = v17[3];
      if (v20 >= v19 >> 1)
      {
        v17 = sub_1000226FC((v19 > 1), v20 + 1, 1, v17);
      }

      v17[2] = v20 + 1;
      sub_10003FB74(v26, v17 + v22 + v20 * v14);
      v8 = v23;
      a2 = v24;
    }

    v15 += v14;
    if (!--v13)
    {
      return v17;
    }
  }

  return v17;
}

uint64_t sub_10003C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = type metadata accessor for Date();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for DatabaseConfiguration();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_10003C440, 0, 0);
}

uint64_t sub_10003C440()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 104);
  v5 = *(v0 + 96);
  *v1 = v5;
  (*(v2 + 104))(v1, enum case for DatabaseConfiguration.configured(_:), v3);
  sub_10000D2CC(v4 + 64, v0 + 16);
  v6 = *(v4 + 48);
  type metadata accessor for TagEncryptionKeyController(0);
  v7 = swift_allocObject();
  *(v0 + 176) = v7;
  (*(v2 + 32))(v7 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_database, v1, v3);
  sub_10001122C((v0 + 16), v7 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache);
  v8 = v7 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_qualityOfService;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v7 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_preventZoneCreation) = v6;
  v9 = v5;

  v11 = sub_100017A78(v10);
  *(v0 + 184) = v11;
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_10003C5D8;

  return sub_10003FCD8(v11);
}

uint64_t sub_10003C5D8(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10003CC38, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[27] = v4;
    *v4 = v3;
    v4[1] = sub_10003C754;
    v5 = v3[14];
    v6 = v3[12];

    return sub_10003CDE8(v6, v5);
  }
}

uint64_t sub_10003C754(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_10003CCB8;
  }

  else
  {
    v4 = sub_10003C868;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003C868()
{
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  v1 = *(v0 + 224);
  v15 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  static Date.now.getter();
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v0 + 64;
  v5[5] = v0 + 80;
  v5[6] = v0 + 56;
  v5[7] = v0 + 72;
  v5[8] = v3;
  v6 = sub_100036F7C(sub_10003EA50, v5, v4);
  *(v0 + 240) = v6;
  if (v15)
  {
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 128);

    (*(v8 + 8))(v7, v9);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = v6;

    v13 = swift_task_alloc();
    *(v0 + 248) = v13;
    *v13 = v0;
    v13[1] = sub_10003CA58;
    v14 = *(v0 + 96);

    return sub_100038718(v12, v14);
  }
}

uint64_t sub_10003CA58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_10003CD3C;
  }

  else
  {

    *(v4 + 264) = a1;
    v5 = sub_10003CB88;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10003CB88()
{
  v1 = v0[33];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[11];

  *v5 = v1;
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10003CC38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003CCB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003CD3C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10003CDE8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for Configuration.TargetCloudKitZone();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_10000CED0(&qword_1000AB900, &qword_100086D80);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10003CF6C, 0, 0);
}

uint64_t sub_10003CF6C()
{
  v1 = *(v0 + 40);
  sub_10000CED0(&qword_1000AB908, &qword_100086D88);
  sub_10003F94C(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v55 = Dictionary.init(minimumCapacity:)();
  v2 = *(v1 + 32);
  *(v0 + 248) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v10 = 0;
  v11 = &qword_1000AB910;
  if (v5)
  {
    while (1)
    {
      v12 = *(v0 + 40);
LABEL_14:
      v18 = *(v0 + 112);
      v17 = *(v0 + 120);
      v20 = *(v0 + 88);
      v19 = *(v0 + 96);
      v56 = (v5 - 1) & v5;
      v21 = __clz(__rbit64(v5)) | (v10 << 6);
      (*(v19 + 16))(v18, *(v12 + 48) + *(v19 + 72) * v21, v20);
      v22 = *(*(v12 + 56) + 8 * v21);
      v23 = sub_10000CED0(v11, &qword_100086D90);
      v24 = v11;
      v25 = *(v23 + 48);
      (*(v19 + 32))(v17, v18, v20);
      *(v17 + v25) = v22;
      v11 = v24;
      (*(*(v23 - 8) + 56))(v17, 0, 1, v23);

      v26 = v56;
      v15 = v10;
LABEL_15:
      *(v0 + 136) = v26;
      *(v0 + 144) = v15;
      v27 = *(v0 + 128);
      sub_10003FAF4(*(v0 + 120), v27);
      v28 = sub_10000CED0(v11, &qword_100086D90);
      if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
      {

        sub_10003FB64(0, 0);

        v43 = *(v0 + 8);

        return v43(v55);
      }

      v30 = *(v0 + 96);
      v29 = *(v0 + 104);
      v31 = *(*(v0 + 128) + *(v28 + 48));
      *(v0 + 152) = v31;
      (*(v30 + 32))(v29);
      v32 = *(v31 + 32);
      *(v0 + 249) = v32;
      v33 = -1 << v32;
      v34 = *(v31 + 56);
      v35 = -v33 < 64 ? ~(-1 << -v33) : -1;
      *(v0 + 168) = 0;
      *(v0 + 176) = v55;
      *(v0 + 160) = v55;
      v36 = v35 & v34;
      if (v36)
      {
        break;
      }

      v37 = 0;
      v38 = ((63 - v33) >> 6) - 1;
      v39 = *(v0 + 152);
      while (v38 != v37)
      {
        v40 = v37 + 1;
        v36 = *(v39 + 8 * v37++ + 64);
        if (v36)
        {
          goto LABEL_31;
        }
      }

      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

      v5 = *(v0 + 136);
      v10 = *(v0 + 144);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v40 = 0;
    v39 = *(v0 + 152);
LABEL_31:
    *(v0 + 184) = v36;
    *(v0 + 192) = v40;
    v45 = *(v0 + 72);
    v46 = *(v0 + 80);
    v47 = *(v0 + 48);
    v48 = *(v0 + 56);
    v49 = __clz(__rbit64(v36)) | (v40 << 6);
    v50 = *(v39 + 48);
    v51 = *(v48 + 72);
    *(v0 + 200) = v51;
    v52 = v50 + v51 * v49;
    v53 = *(v48 + 16);
    *(v0 + 208) = v53;
    *(v0 + 216) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v53(v46, v52, v47);
    (*(v48 + 32))(v45, v46, v47);
    v54 = swift_task_alloc();
    *(v0 + 224) = v54;
    *v54 = v0;
    v54[1] = sub_10003D4AC;
    v7 = *(v0 + 104);
    v8 = *(v0 + 72);
    v6 = *(v0 + 32);
    v9 = 1;
  }

  else
  {
LABEL_6:
    v13 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v13 <= (v10 + 1))
    {
      v14 = v10 + 1;
    }

    else
    {
      v14 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v15 = v14 - 1;
    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v41 = *(v0 + 120);
        v42 = sub_10000CED0(v11, &qword_100086D90);
        (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
        v26 = 0;
        goto LABEL_15;
      }

      v12 = *(v0 + 40);
      v5 = *(v12 + 8 * v16 + 64);
      ++v10;
      if (v5)
      {
        v10 = v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)(v6, v7, v8, v9);
}

uint64_t sub_10003D4AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_10003DD98;
  }

  else
  {
    v4 = sub_10003D5C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003D5C0()
{
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 104);
  (*(v0 + 208))(*(v0 + 64), *(v0 + 72), *(v0 + 48));
  sub_10003FB64(v4, 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v3;
  v8 = sub_10007B6C4(v5);
  v9 = v3[2];
  v10 = (v7 & 1) == 0;
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  LOBYTE(v1) = v7;
  v3 = *(v0 + 160);
  if (v3[3] >= v11)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10007FCDC();
      v3 = *(v0 + 16);
    }
  }

  else
  {
    v12 = *(v0 + 104);
    sub_10007D7BC(v11, isUniquelyReferenced_nonNull_native);
    v3 = *(v0 + 16);
    v13 = sub_10007B6C4(v12);
    if ((v1 & 1) != (v14 & 1))
    {
      goto LABEL_14;
    }

    v8 = v13;
  }

  if ((v1 & 1) == 0)
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);
    v3[(v8 >> 6) + 8] |= 1 << v8;
    v11 = (*(v16 + 16))(v3[6] + *(v16 + 72) * v8, v15, v17);
    *(v3[7] + 8 * v8) = &_swiftEmptyDictionarySingleton;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      v93 = v11;
      sub_10007FA68();
      v11 = v93;
      goto LABEL_18;
    }

    v3[2] = v20;
  }

  v1 = *(v0 + 64);
  v2 = v3[7];
  v21 = *(v0 + 232);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v2 + 8 * v8);
  *(v0 + 24) = v23;
  *(v2 + 8 * v8) = 0x8000000000000000;
  v11 = sub_10007B7E0(v1);
  v25 = *(v23 + 16);
  v26 = (v24 & 1) == 0;
  v19 = __OFADD__(v25, v26);
  v27 = v25 + v26;
  if (v19)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  LOBYTE(v1) = v24;
  if (*(v23 + 24) >= v27)
  {
    if (v22)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

  v28 = *(v0 + 64);
  sub_10007D3DC(v27, v22);
  v11 = sub_10007B7E0(v28);
  if ((v1 & 1) != (v29 & 1))
  {
LABEL_14:

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_18:
  v94 = v3;
  v31 = *(v0 + 24);
  v32 = *(v0 + 232);
  if (v1)
  {
    v33 = *(v0 + 56);
    v34 = *(v0 + 64);
    v35 = *(v0 + 48);
    v36 = v31[7];
    v37 = *(v36 + 8 * v11);
    *(v36 + 8 * v11) = v32;

    v1 = *(v33 + 8);
    (v1)(v34, v35);
  }

  else
  {
    v38 = *(v0 + 208);
    v39 = *(v0 + 200);
    v40 = *(v0 + 56);
    v41 = *(v0 + 64);
    v42 = *(v0 + 48);
    v31[(v11 >> 6) + 8] |= 1 << v11;
    v43 = v11;
    v38(v31[6] + v39 * v11, v41, v42);
    *(v31[7] + 8 * v43) = v32;
    v1 = *(v40 + 8);
    v44 = (v1)(v41, v42);
    v48 = v31[2];
    v19 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v19)
    {
      __break(1u);
      return static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)(v44, v45, v46, v47);
    }

    v31[2] = v49;
  }

  v50 = *(v0 + 232);
  v51 = *(v0 + 72);
  v52 = *(v0 + 48);
  *(v2 + 8 * v8) = v31;

  v11 = (v1)(v51, v52);
  v54 = *(v0 + 184);
  v53 = *(v0 + 192);
  v3 = v94;
  *(v0 + 168) = sub_10003E604;
  *(v0 + 176) = v94;
  *(v0 + 160) = v94;
  v55 = (v54 - 1) & v54;
  if (v55)
  {
LABEL_23:
    *(v0 + 184) = v55;
    *(v0 + 192) = v53;
    v56 = *(v0 + 72);
    v57 = *(v0 + 80);
    v58 = *(v0 + 48);
    v59 = *(v0 + 56);
    v60 = __clz(__rbit64(v55)) | (v53 << 6);
    v61 = *(*(v0 + 152) + 48);
    v62 = *(v59 + 72);
    *(v0 + 200) = v62;
    v63 = v61 + v62 * v60;
    v64 = *(v59 + 16);
    *(v0 + 208) = v64;
    *(v0 + 216) = (v59 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v64(v57, v63, v58);
    (*(v59 + 32))(v56, v57, v58);
    v65 = swift_task_alloc();
    *(v0 + 224) = v65;
    *v65 = v0;
    v65[1] = sub_10003D4AC;
    v45 = *(v0 + 104);
    v46 = *(v0 + 72);
    v44 = *(v0 + 32);
    v47 = 1;

    return static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)(v44, v45, v46, v47);
  }

  v8 = &qword_100086D90;
  while (1)
  {
    while (1)
    {
      v19 = __OFADD__(v53++, 1);
      if (v19)
      {
        goto LABEL_52;
      }

      if (v53 >= (((1 << *(v0 + 249)) + 63) >> 6))
      {
        break;
      }

      v55 = *(*(v0 + 152) + 8 * v53 + 56);
      if (v55)
      {
        goto LABEL_23;
      }
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v66 = *(v0 + 136);
    v67 = *(v0 + 144);
    if (!v66)
    {
      v69 = ((1 << *(v0 + 248)) + 63) >> 6;
      if (v69 <= v67 + 1)
      {
        v70 = v67 + 1;
      }

      else
      {
        v70 = ((1 << *(v0 + 248)) + 63) >> 6;
      }

      v1 = v70 - 1;
      while (1)
      {
        v71 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        if (v71 >= v69)
        {
          v90 = *(v0 + 120);
          v91 = sub_10000CED0(&qword_1000AB910, &qword_100086D90);
          (*(*(v91 - 8) + 56))(v90, 1, 1, v91);
          v81 = 0;
          goto LABEL_41;
        }

        v68 = *(v0 + 40);
        v66 = *(v68 + 8 * v71 + 64);
        ++v67;
        if (v66)
        {
          v67 = v71;
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v68 = *(v0 + 40);
LABEL_40:
    v73 = *(v0 + 112);
    v72 = *(v0 + 120);
    v74 = *(v0 + 88);
    v75 = *(v0 + 96);
    v95 = (v66 - 1) & v66;
    v76 = __clz(__rbit64(v66)) | (v67 << 6);
    (*(v75 + 16))(v73, *(v68 + 48) + *(v75 + 72) * v76, v74);
    v77 = *(*(v68 + 56) + 8 * v76);
    v8 = &qword_100086D90;
    v78 = sub_10000CED0(&qword_1000AB910, &qword_100086D90);
    v79 = *(v78 + 48);
    v80 = *(v75 + 32);
    v2 = v75 + 32;
    v80(v72, v73, v74);
    *(v72 + v79) = v77;
    (*(*(v78 - 8) + 56))(v72, 0, 1, v78);

    v3 = v94;
    v81 = v95;
    v1 = v67;
LABEL_41:
    *(v0 + 136) = v81;
    *(v0 + 144) = v1;
    v1 = *(v0 + 128);
    sub_10003FAF4(*(v0 + 120), v1);
    v82 = sub_10000CED0(&qword_1000AB910, &qword_100086D90);
    if ((*(*(v82 - 8) + 48))(v1, 1, v82) == 1)
    {
      break;
    }

    v84 = *(v0 + 96);
    v83 = *(v0 + 104);
    v85 = *(*(v0 + 128) + *(v82 + 48));
    *(v0 + 152) = v85;
    v11 = (*(v84 + 32))(v83);
    v53 = 0;
    v86 = *(v85 + 32);
    *(v0 + 249) = v86;
    v87 = 1 << v86;
    v88 = *(v85 + 56);
    if (v87 < 64)
    {
      v89 = ~(-1 << v87);
    }

    else
    {
      v89 = -1;
    }

    *(v0 + 168) = sub_10003E604;
    *(v0 + 176) = v3;
    *(v0 + 160) = v3;
    v55 = v89 & v88;
    if (v55)
    {
      goto LABEL_23;
    }
  }

  sub_10003FB64(sub_10003E604, 0);

  v92 = *(v0 + 8);

  return v92(v3);
}

uint64_t sub_10003DD98()
{
  v1 = v0[21];
  v2 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[6];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  sub_10003FB64(v1, 0);

  v8 = v0[1];

  return v8();
}

void sub_10003DEC8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char **a10)
{
  v79 = a3;
  v76 = a7;
  v77 = a8;
  v74 = a5;
  v75 = a6;
  v73 = a4;
  v78 = a2;
  v71 = a9;
  v11 = type metadata accessor for PendingEventData(0);
  v12 = __chkstk_darwin(v11);
  v69 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = &v68 - v14;
  v70 = type metadata accessor for Logger();
  v72 = *(v70 - 8);
  v15 = __chkstk_darwin(v70);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v68 - v18;
  v20 = type metadata accessor for EventRecord.DataType();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + *(v11 + 28));
  (*(v21 + 104))(v23, enum case for EventRecord.DataType.fakeEvent(_:), v20);
  v25 = EventRecord.DataType.rawValue.getter();
  (*(v21 + 8))(v23, v20);
  v26 = v80;
  v27 = sub_10003F318(a1, v78, v79);
  if (v26)
  {
    *a10 = v26;
    return;
  }

  v28 = v74;
  v29 = v75;
  v30 = v76;
  v79 = 0;
  v80 = v17;
  v31 = v72;
  v78 = v27;
  if (v24 == v25)
  {
    v32 = v80;
    if (__OFADD__(*v73, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    v33 = v72;
    ++*v73;
    v27 = [(objc_class *)v27 size];
    v31 = *v28;
    v29 = (*v28 + v27 / 1000);
    if (!__OFADD__(*v28, v27 / 1000))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v34 = v29;
  v35 = *v29;
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  v32 = v80;
  if (v36)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v33 = v31;
  *v34 = v37;
  v38 = [(objc_class *)v27 size];
  v29 = (*v30 + v38 / 1000);
  if (__OFADD__(*v30, v38 / 1000))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = v30;
LABEL_11:
  *v28 = v29;
  Date.timeIntervalSince(_:)();
  v40 = 0.0;
  if (v39 <= 0.0)
  {
    v40 = v39;
    if (v39 >= 2592000.0)
    {
      sub_1000386C4();
      v54 = v19;
      static LoggedObject.logger.getter();
      v55 = v68;
      sub_100037660(a1, v68);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = v33;
        v60 = v55;
        v61 = swift_slowAlloc();
        v81 = v61;
        *v58 = 136446210;
        type metadata accessor for UUID();
        sub_10003F94C(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = v63;
        sub_1000376C4(v60);
        v65 = sub_100035120(v62, v64, &v81);

        *(v58 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v56, v57, "Event %{public}s happened more than 30 days ago, setting immediate expiration time", v58, 0xCu);
        sub_10000D330(v61);

        (*(v59 + 8))(v54, v70);
      }

      else
      {

        sub_1000376C4(v55);
        (*(v33 + 8))(v54, v70);
      }

      goto LABEL_22;
    }
  }

  v41 = 2592000.0 - v40;
  sub_1000386C4();
  static LoggedObject.logger.getter();
  v42 = v69;
  sub_100037660(a1, v69);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v43, v44))
  {

    sub_1000376C4(v42);
    (*(v33 + 8))(v32, v70);
LABEL_22:
    v52 = v71;
    goto LABEL_23;
  }

  v45 = v33;
  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v81 = v47;
  *v46 = 136315394;
  type metadata accessor for UUID();
  sub_10003F94C(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v48 = dispatch thunk of CustomStringConvertible.description.getter();
  v50 = v49;
  sub_1000376C4(v42);
  v51 = sub_100035120(v48, v50, &v81);

  *(v46 + 4) = v51;
  *(v46 + 12) = 2048;
  v52 = v71;
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v53 = v70;
  if (v41 < 9.22337204e18)
  {
    *(v46 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v43, v44, "Event %s will use expiration time %ld", v46, 0x16u);
    sub_10000D330(v47);

    (*(v45 + 8))(v80, v53);
LABEL_23:
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v67 = v78;
    [v78 setExpirationAfterTimeInterval:isa];

    *v52 = v67;
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_10003E614(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001DBDC;

  return sub_10003C31C(a1, a2, v6, v7, v8);
}

char *sub_10003E6D8(char *a1, int64_t a2, char a3)
{
  result = sub_100032D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003E6F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100032E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003E718(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100032E54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003E738(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100032E7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003E758(char *a1, int64_t a2, char a3)
{
  result = sub_100033080(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003E778(char *a1, int64_t a2, char a3)
{
  result = sub_10003318C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10003E798(uint64_t a1, char a2)
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

void (*sub_10003E838(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_10003E8B8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003E8C0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10003EAA0();
          for (i = 0; i != v6; ++i)
          {
            sub_10000CED0(&qword_1000AB8C8, &unk_100086D60);
            v9 = sub_10003E838(v13, i, a3);
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
        sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
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

id sub_10003EA88(void *a1, char a2)
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

void sub_10003EA94(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10003EAA0()
{
  result = qword_1000AB8D0;
  if (!qword_1000AB8D0)
  {
    sub_100003988(&qword_1000AB8C8, &unk_100086D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB8D0);
  }

  return result;
}

uint64_t sub_10003EB04(uint64_t result)
{
  v1 = 300 * result;
  if ((result * 300) >> 64 != (300 * result) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (HIDWORD(v1) > 0x18)
  {
    return 7;
  }

  if (v1 >> 31 > 4)
  {
    return 6;
  }

  if (v1 >> 30)
  {
    return 5;
  }

  if (v1 >> 22 > 0x18)
  {
    return 4;
  }

  v2 = v1 >> 21;
  v3 = v1 >= 0x100000;
  v4 = 1;
  if (v3)
  {
    v4 = 2;
  }

  if (v2 <= 4)
  {
    return v4;
  }

  else
  {
    return 3;
  }
}

id sub_10003EB90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration.TargetCloudKitZone();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000CED0(&qword_1000AB8F8, &qword_100086D78);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for EventRecord.DataType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PendingEventData(0);
  EventRecord.DataType.init(rawValue:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000D620(v10, &qword_1000AB8F8, &qword_100086D78);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if (*(a2 + 16))
    {
      v16 = sub_10007B6C4(a1 + *(v15 + 20));
      if (v17)
      {
        v18 = *(*(a2 + 56) + 8 * v16);

        EventRecord.DataType.targetCKRecordZone.getter();
        if (*(v18 + 16))
        {
          v19 = sub_10007B7E0(v7);
          if (v20)
          {
            v21 = *(v5 + 8);
            v22 = *(*(v18 + 56) + 8 * v19);
            v21(v7, v4);

            (*(v12 + 8))(v14, v11);
            return v22;
          }
        }

        (*(v5 + 8))(v7, v4);
      }
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Class sub_10003EEE4(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for EventRecord.Field();
  v45 = *(v40 - 8);
  __chkstk_darwin(v40);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v10 = sub_10003EB90(a1, a2);
  sub_10000D544(0, &qword_1000AB8F0, CKRecordID_ptr);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  v42.super.isa = v10;
  v14._countAndFlagsBits = v11;
  v14._object = v13;
  isa = CKRecordID.init(recordName:zoneID:)(v14, v42).super.isa;
  sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
  static EventRecord.recordType.getter();
  v16 = RecordType.rawValue.getter();
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  v41.super.isa = isa;
  v19._countAndFlagsBits = v16;
  v19._object = v18;
  v43 = CKRecord.init(recordType:recordID:)(v19, v41).super.isa;
  v20 = v45;
  v21 = v45 + 104;
  v22 = *(v45 + 104);
  v23 = v40;
  v22(v5, enum case for EventRecord.Field.date(_:), v40);
  v38[3] = v21;
  static EventRecord.fieldKey(_:)();
  v24 = *(v20 + 8);
  v45 = v20 + 8;
  v24(v5, v23);
  v39 = type metadata accessor for PendingEventData(0);
  v25 = *(v39 + 24);
  v26 = type metadata accessor for Date();
  v47 = v26;
  v48 = &protocol witness table for Date;
  v27 = sub_10000CF2C(v46);
  (*(*(v26 - 8) + 16))(v27, v44 + v25, v26);
  v28 = v43;
  CKRecordKeyValueSetting.subscript.setter();
  v29 = [(objc_class *)v28 encryptedValues];
  v38[2] = swift_getObjectType();
  v22(v5, enum case for EventRecord.Field.data(_:), v23);
  v38[1] = static EventRecord.fieldKey(_:)();
  v30 = v24;
  v24(v5, v23);
  v31 = v39;
  v32 = v44;
  v33 = (v44 + *(v39 + 32));
  v34 = *v33;
  v35 = v33[1];
  v47 = &type metadata for Data;
  v48 = &protocol witness table for Data;
  v46[0] = v34;
  v46[1] = v35;
  sub_10003F994(v34, v35);
  CKRecordKeyValueSetting.subscript.setter();
  v22(v5, enum case for EventRecord.Field.dataType(_:), v23);
  static EventRecord.fieldKey(_:)();
  v30(v5, v23);
  v36 = *(v32 + *(v31 + 28));
  v47 = &type metadata for Int64;
  v48 = &protocol witness table for Int64;
  v46[0] = v36;
  CKRecordKeyValueSetting.subscript.setter();

  swift_unknownObjectRelease();
  return v43;
}

Class sub_10003F318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for EventRecord.Field();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000CED0(&qword_1000AB8D8, &qword_100086FE0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v47 = sub_10003EEE4(a1, a3);
  v51 = v3;
  if (!a2)
  {
    (*(v8 + 104))(v10, enum case for EventRecord.Field.tags(_:), v7);
    v16 = static EventRecord.fieldKey(_:)();
    (*(v8 + 8))(v10, v7);
    v29 = *(a1 + *(type metadata accessor for PendingEventData(0) + 36));
    v30 = *(v29 + 16);
    if (!v30)
    {
      v33 = _swiftEmptyArrayStorage;
      goto LABEL_30;
    }

    v31 = 0;
    v32 = v29 + 32;
    v45 = v30 - 1;
    v33 = _swiftEmptyArrayStorage;
    while (1)
    {
      v34 = v31;
      while (1)
      {
        if (v34 >= *(v29 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v35 = *(v32 + 16 * v34);
        v36 = *(v32 + 16 * v34 + 8);
        v37 = v36 >> 62;
        if ((v36 >> 62) > 1)
        {
          break;
        }

        if (v37)
        {
          if (v35 == v35 >> 32)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if ((v36 & 0xFF000000000000) == 0)
          {
            goto LABEL_22;
          }

          sub_10000D37C(*(v32 + 16 * v34), v36);
        }

LABEL_19:
        if (v30 == ++v34)
        {
          goto LABEL_30;
        }
      }

      if (v37 != 2)
      {
        goto LABEL_22;
      }

      if (*(v35 + 16) != *(v35 + 24))
      {
        goto LABEL_19;
      }

LABEL_21:
      v46 = *(v32 + 16 * v34);
      sub_10003F994(v46, v36);
      v35 = v46;
LABEL_22:
      v46 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10003E778(0, v33[2] + 1, 1);
        v33 = v48;
      }

      v40 = v33[2];
      v39 = v33[3];
      v41 = v46;
      if (v40 >= v39 >> 1)
      {
        sub_10003E778((v39 > 1), v40 + 1, 1);
        v41 = v46;
        v33 = v48;
      }

      v31 = v34 + 1;
      v33[2] = v40 + 1;
      *&v33[2 * v40 + 4] = v41;
      if (v45 == v34)
      {
LABEL_30:
        v49 = sub_10000CED0(&qword_1000AB8E0, &qword_100086D70);
        v50 = sub_10003F9E8();
        v48 = v33;
        sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
        v28 = v47;
        CKRecordKeyValueSetting.subscript.setter();
        return v28;
      }
    }
  }

  *&v46 = a1;
  if (!*(a2 + 16) || (v45 = type metadata accessor for PendingEventData(0), v17 = sub_10007B6C4(v46 + *(v45 + 20)), (v18 & 1) == 0))
  {
LABEL_33:
    v43 = type metadata accessor for LubyRackoffEncryptionKey();
    result = (*(*(v43 - 8) + 56))(v16, 1, 1, v43);
    __break(1u);
    goto LABEL_34;
  }

  v19 = v17;
  v20 = *(a2 + 56);
  v21 = type metadata accessor for LubyRackoffEncryptionKey();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v16, v20 + *(v22 + 72) * v19, v21);
  (*(v22 + 56))(v16, 0, 1, v21);
  (*(v8 + 104))(v10, enum case for EventRecord.Field.tags(_:), v7);
  v44 = static EventRecord.fieldKey(_:)();
  (*(v8 + 8))(v10, v7);
  sub_10003FA64(v16, v14);
  result = (*(v22 + 48))(v14, 1, v21);
  if (result == 1)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  __chkstk_darwin(result);
  *(&v44 - 2) = v24;
  *(&v44 - 1) = v14;
  v25 = v51;
  v27 = sub_100036E40(sub_10003FAD4, (&v44 - 4), v26);
  if (v25)
  {
    sub_10000D620(v16, &qword_1000AB8D8, &qword_100086FE0);

    v28 = v47;

    (*(v22 + 8))(v14, v21);
  }

  else
  {
    v42 = v27;
    (*(v22 + 8))(v14, v21);
    v49 = sub_10000CED0(&qword_1000AB8E0, &qword_100086D70);
    v50 = sub_10003F9E8();
    v48 = v42;
    sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
    v28 = v47;
    CKRecordKeyValueSetting.subscript.setter();
    sub_10000D620(v16, &qword_1000AB8D8, &qword_100086FE0);
  }

  return v28;
}

uint64_t sub_10003F94C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003F994(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10003F9E8()
{
  result = qword_1000AB8E8;
  if (!qword_1000AB8E8)
  {
    sub_100003988(&qword_1000AB8E0, &qword_100086D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB8E8);
  }

  return result;
}

uint64_t sub_10003FA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB8D8, &qword_100086FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB900, &qword_100086D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FB64(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003FB74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingEventData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_10003FBD8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10003FC18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003FC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003FCD8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10003FDC0, 0, 0);
}

uint64_t sub_10003FDC0()
{
  sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController, &unk_100086F28);
  static LoggedObject.logger.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    type metadata accessor for UUID();
    sub_1000471F0(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = Set.description.getter();
    v11 = sub_100035120(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ensuring encryption keys for homes with identifiers: %s", v7, 0xCu);
    sub_10000D330(v8);
  }

  (*(v5 + 8))(v4, v6);
  v12 = *(v0 + 40);
  v13 = sub_10000CED0(&qword_1000ABA08, &qword_100086F98);
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  *(v14 + 16) = *(v0 + 24);
  *(v14 + 32) = v12;
  v15 = sub_10000CED0(&qword_1000ABA10, &qword_100086FB0);
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *v16 = v0;
  v16[1] = sub_100040090;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v13, v15, 0, 0, &unk_100086FA8, v14, v13);
}

uint64_t sub_100040090()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100040218;
  }

  else
  {

    v2 = sub_1000401AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000401AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100040218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100040284()
{
  v1 = OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_database;
  v2 = type metadata accessor for DatabaseConfiguration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000D330((v0 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TagEncryptionKeyController(uint64_t a1)
{
  result = qword_1000AB948;
  if (!qword_1000AB948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100040384(uint64_t a1)
{
  result = type metadata accessor for DatabaseConfiguration();
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

uint64_t sub_100040430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = type metadata accessor for LubyRackoffEncryptionKey();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  sub_10000CED0(&qword_1000ABA18, &qword_100086FB8);
  v5[19] = swift_task_alloc();
  v7 = sub_10000CED0(&qword_1000ABA20, &unk_100086FC0);
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v5[25] = v8;
  v9 = *(v8 - 8);
  v5[26] = v9;
  v5[27] = *(v9 + 64);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_100040658, 0, 0);
}

uint64_t sub_100040658()
{
  v1 = *(v0 + 104);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 104) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v37 = *(v0 + 104);
  v38 = *(v0 + 208);
  v34 = *(v0 + 216) + 7;

  v14 = 0;
  v35 = v8;
  v36 = v3;
  while (v7)
  {
LABEL_10:
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);
    v19 = *(v0 + 192);
    v20 = *(v0 + 200);
    v40 = v19;
    v21 = *(v0 + 112);
    v41 = *(v0 + 120);
    v42 = *(v0 + 184);
    (*(v38 + 16))(v18, *(v37 + 48) + *(v38 + 72) * (__clz(__rbit64(v7)) | (v14 << 6)), v20);
    v22 = type metadata accessor for TaskPriority();
    v39 = *(v22 - 8);
    (*(v39 + 56))(v19, 1, 1, v22);
    v23 = *(v38 + 32);
    v23(v17, v18, v20);
    v24 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v21;
    v23(v25 + v24, v17, v20);
    *(v25 + ((v34 + v24) & 0xFFFFFFFFFFFFFFF8)) = v41;
    sub_10001DA7C(v40, v42);
    LODWORD(v24) = (*(v39 + 48))(v42, 1, v22);

    v26 = *(v0 + 184);
    if (v24 == 1)
    {
      sub_10000D620(*(v0 + 184), &qword_1000AAD30, &qword_100085540);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v39 + 8))(v26, v22);
    }

    if (v25[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v27 = dispatch thunk of Actor.unownedExecutor.getter();
      v29 = v28;
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = **(v0 + 96);

    sub_10000CED0(&qword_1000ABA08, &qword_100086F98);
    v31 = v29 | v27;
    if (v29 | v27)
    {
      v31 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v27;
      *(v0 + 40) = v29;
    }

    v15 = *(v0 + 192);
    v7 &= v7 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v31;
    *(v0 + 64) = v30;
    swift_task_create();

    v9 = sub_10000D620(v15, &qword_1000AAD30, &qword_100085540);
    v8 = v35;
    v3 = v36;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v10, v11, v12, v13);
    }

    if (v16 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v16);
    ++v14;
    if (v7)
    {
      v14 = v16;
      goto LABEL_10;
    }
  }

  *(v0 + 248) = sub_10000CED0(&qword_1000ABA08, &qword_100086F98);
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v0 + 256) = &_swiftEmptyDictionarySingleton;
  v32 = swift_task_alloc();
  *(v0 + 264) = v32;
  *v32 = v0;
  v32[1] = sub_100040AD4;
  v9 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = v0 + 72;
  v10 = 0;
  v11 = 0;

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v10, v11, v12, v13);
}

uint64_t sub_100040AD4()
{

  if (v0)
  {
    v1 = sub_100040FBC;
  }

  else
  {
    v1 = sub_100040BE4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100040BE4()
{
  v1 = v0[31];
  v2 = v0[19];
  v3 = (*(*(v1 - 8) + 48))(v2, 1, v1);
  v4 = v0[32];
  if (v3 == 1)
  {
    v5 = v0[11];
    (*(v0[21] + 8))(v0[22], v0[20]);
    *v5 = v4;

    v6 = v0[1];

    return v6();
  }

  v8 = v0[28];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  v12 = *(v1 + 48);
  (*(v0[26] + 32))(v8, v2, v0[25]);
  v13 = *(v10 + 32);
  v13(v9, v2 + v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[10] = v4;
  v15 = sub_10007B6C4(v8);
  v20 = *(v4 + 16);
  v21 = (v16 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_22;
  }

  v24 = v16;
  if (*(v0[32] + 24) >= v23)
  {
    v39 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = v15;
      sub_10007FF68();
      v15 = v27;
    }

    goto LABEL_14;
  }

  v25 = v0[28];
  sub_10007DBB0(v23, isUniquelyReferenced_nonNull_native);
  v15 = sub_10007B6C4(v25);
  if ((v24 & 1) == (v26 & 1))
  {
    v39 = v13;
LABEL_14:
    v28 = v0[10];
    v29 = v0[28];
    v30 = v0[25];
    v31 = v0[26];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    if (v24)
    {
      (*(v33 + 40))(v28[7] + *(v33 + 72) * v15, v0[18], v0[16]);
      (*(v31 + 8))(v29, v30);
      goto LABEL_18;
    }

    v28[(v15 >> 6) + 8] |= 1 << v15;
    v35 = v15;
    (*(v31 + 16))(v28[6] + *(v31 + 72) * v15, v29, v30);
    v39(v28[7] + *(v33 + 72) * v35, v32, v34);
    v15 = (*(v31 + 8))(v29, v30);
    v36 = v28[2];
    v22 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (!v22)
    {
      v28[2] = v37;
LABEL_18:
      v0[32] = v28;
      v38 = swift_task_alloc();
      v0[33] = v38;
      *v38 = v0;
      v38[1] = sub_100040AD4;
      v15 = v0[19];
      v18 = v0[20];
      v19 = v0 + 9;
      v16 = 0;
      v17 = 0;

      return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v15, v16, v17, v18, v19);
    }

LABEL_22:
    __break(1u);
    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v15, v16, v17, v18, v19);
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100040FBC()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000410B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for UUID();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_10000CED0(&qword_1000AB8D8, &qword_100086FE0);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for LubyRackoffEncryptionKey();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return _swift_task_switch(sub_10004130C, 0, 0);
}

uint64_t sub_10004130C()
{
  static Task<>.checkCancellation()();
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache;
  v0[30] = OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_cache;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  sub_10000D224((v1 + v2), v3);
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_100041508;
  v6 = v0[23];
  v7 = v0[4];

  return dispatch thunk of AsyncCache.subscript.getter(v6, v7, v3, v4);
}

uint64_t sub_100041508()
{

  return _swift_task_switch(sub_100041604, 0, 0);
}

uint64_t sub_100041604()
{
  v38 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = *(v2 + 48);
  v0[32] = v4;
  v0[33] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_10000D620(v3, &qword_1000AB8D8, &qword_100086FE0);
    v5 = swift_task_alloc();
    v0[34] = v5;
    *v5 = v0;
    v5[1] = sub_100041AB0;
    v6 = v0[22];
    v7 = v0[4];

    return sub_1000435B4(v6, v7);
  }

  else
  {
    v9 = v0[13];
    v10 = v0[6];
    v11 = v0[7];
    v12 = v0[4];
    v36 = *(v2 + 32);
    v36(v0[29], v3, v1);
    sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController, &unk_100086F28);
    static LoggedObject.logger.getter();
    v35 = *(v11 + 16);
    v35(v9, v12, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[20];
    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[13];
    v21 = v0[6];
    v20 = v0[7];
    if (v15)
    {
      v34 = v0[14];
      v22 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v22 = 136315138;
      sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v16;
      v25 = v24;
      (*(v20 + 8))(v19, v21);
      v26 = sub_100035120(v23, v25, &v37);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "Returning cached encryption key for home: %s", v22, 0xCu);
      sub_10000D330(v33);

      (*(v17 + 8))(v32, v34);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v17 + 8))(v16, v18);
    }

    v27 = v0[6];
    v28 = v0[4];
    v29 = v0[2];
    v30 = *(sub_10000CED0(&qword_1000ABA08, &qword_100086F98) + 48);
    v35(v29, v28, v27);
    v36(v29 + v30, v0[29], v0[24]);

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_100041AB0()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1000431D0;
  }

  else
  {
    v2 = sub_100041BC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100041BC4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  if ((*(v0 + 256))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 280);
    sub_10000D620(v2, &qword_1000AB8D8, &qword_100086FE0);
    static Task<>.checkCancellation()();
    if (v3)
    {

      v4 = *(v0 + 8);

      return v4();
    }

    else
    {
      UUID.init()();
      v15 = swift_task_alloc();
      *(v0 + 312) = v15;
      *v15 = v0;
      v15[1] = sub_100042354;
      v16 = *(v0 + 216);
      v18 = *(v0 + 80);
      v17 = *(v0 + 88);
      v19 = *(v0 + 32);

      return sub_100044108(v17, v16, v19, v18);
    }
  }

  else
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 200);
    v8 = (*(v0 + 24) + *(v0 + 240));
    v9 = *(v7 + 32);
    *(v0 + 288) = v9;
    *(v0 + 296) = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v9(v6, v2, v1);
    v10 = v8[3];
    v11 = v8[4];
    sub_10000D224(v8, v10);
    v12 = swift_task_alloc();
    *(v0 + 304) = v12;
    *v12 = v0;
    v12[1] = sub_100041EB0;
    v13 = *(v0 + 224);
    v14 = *(v0 + 32);

    return dispatch thunk of AsyncCache.set(_:key:)(v13, v14, v10, v11);
  }
}

uint64_t sub_100041EB0()
{

  return _swift_task_switch(sub_100041FAC, 0, 0);
}

uint64_t sub_100041FAC()
{
  v30 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController, &unk_100086F28);
  static LoggedObject.logger.getter();
  v28 = *(v3 + 16);
  v28(v1, v4, v2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 96);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  if (v7)
  {
    v27 = *(v0 + 112);
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v14 = 136315138;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v8;
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_100035120(v15, v17, &v29);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Reusing existing encryption key for home: %s", v14, 0xCu);
    sub_10000D330(v26);

    (*(v9 + 8))(v25, v27);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  v19 = *(v0 + 48);
  v20 = *(v0 + 32);
  v21 = *(v0 + 16);
  v22 = *(sub_10000CED0(&qword_1000ABA08, &qword_100086F98) + 48);
  v28(v21, v20, v19);
  (*(v0 + 288))(v21 + v22, *(v0 + 224), *(v0 + 192));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100042354()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v2[40] = v0;

  v6 = *(v4 + 8);
  v2[41] = v6;
  v2[42] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_100043314;
  }

  else
  {
    v6(v2[11], v2[6]);
    v7 = sub_1000424F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000424F0(uint64_t a1)
{
  v2 = v1[40];
  static Task<>.checkCancellation()();
  if (v2)
  {
    (*(v1[25] + 8))(v1[27], v1[24]);

    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v1[43] = v5;
    *v5 = v1;
    v5[1] = sub_1000426D4;
    v6 = v1[21];
    v7 = v1[4];

    return sub_1000435B4(v6, v7);
  }
}

uint64_t sub_1000426D4()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_100043458;
  }

  else
  {
    v2 = sub_1000427E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000427E8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  if ((*(v0 + 256))(v2, 1, v1) == 1)
  {
    sub_10000D620(v2, &qword_1000AB8D8, &qword_100086FE0);
    sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController, &unk_100086F28);
    static LoggedObject.logger.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Query failed to return key we just created, using it anyway", v5, 2u);
    }

    v6 = *(v0 + 200);
    v7 = *(v0 + 144);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    v12 = *(v0 + 32);
    v13 = *(v0 + 16);

    (*(v9 + 8))(v7, v8);
    v14 = *(sub_10000CED0(&qword_1000ABA08, &qword_100086F98) + 48);
    (*(v11 + 16))(v13, v12, v10);
    (*(v6 + 32))(v13 + v14, *(v0 + 216), *(v0 + 192));

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = (*(v0 + 24) + *(v0 + 240));
    v20 = *(v18 + 32);
    *(v0 + 360) = v20;
    *(v0 + 368) = (v18 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v20(v17, v2, v1);
    v21 = v19[3];
    v22 = v19[4];
    sub_10000D224(v19, v21);
    v23 = swift_task_alloc();
    *(v0 + 376) = v23;
    *v23 = v0;
    v23[1] = sub_100042B88;
    v24 = *(v0 + 208);
    v25 = *(v0 + 32);

    return dispatch thunk of AsyncCache.set(_:key:)(v24, v25, v21, v22);
  }
}

uint64_t sub_100042B88()
{

  return _swift_task_switch(sub_100042C84, 0, 0);
}

uint64_t sub_100042C84()
{
  v43 = v0;
  v1 = *(v0 + 56);
  v2 = static LubyRackoffEncryptionKey.== infix(_:_:)();
  sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController, &unk_100086F28);
  v3 = (v1 + 16);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  if (v2)
  {
    v6 = *(v0 + 72);
    static LoggedObject.logger.getter();
    v7 = *v3;
    (*v3)(v6, v5, v4);
    v8 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v8, v37);
    v38 = *(v0 + 328);
    v10 = *(v0 + 216);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    v13 = *(v0 + 120);
    v39 = *(v0 + 112);
    v40 = *(v0 + 136);
    v14 = *(v0 + 72);
    v15 = *(v0 + 48);
    if (v9)
    {
      v41 = v7;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v42 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = v11;
      v36 = v10;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v38(v14, v15);
      v21 = sub_100035120(v18, v20, &v42);

      *(v16 + 14) = v21;
      v22 = "Using newly-created encryption key for home: %{private,mask.hash}s";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v37, v22, v16, 0x16u);
      sub_10000D330(v17);

      v7 = v41;

      (*(v13 + 8))(v40, v39);
      (*(v12 + 8))(v36, v35);
      goto LABEL_8;
    }
  }

  else
  {
    v23 = *(v0 + 64);
    static LoggedObject.logger.getter();
    v7 = *v3;
    (*v3)(v23, v5, v4);
    v8 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v8, v37);
    v38 = *(v0 + 328);
    v10 = *(v0 + 216);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    v13 = *(v0 + 120);
    v39 = *(v0 + 112);
    v40 = *(v0 + 128);
    v14 = *(v0 + 64);
    v15 = *(v0 + 48);
    if (v24)
    {
      v41 = v7;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v42 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = v11;
      v36 = v10;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v38(v14, v15);
      v28 = sub_100035120(v25, v27, &v42);

      *(v16 + 14) = v28;
      v22 = "Using encryption key just created by another device for home: %{private,mask.hash}s";
      goto LABEL_6;
    }
  }

  v38(v14, v15);
  (*(v13 + 8))(v40, v39);
  (*(v12 + 8))(v10, v11);
LABEL_8:
  v29 = *(v0 + 48);
  v30 = *(v0 + 32);
  v31 = *(v0 + 16);
  v32 = *(sub_10000CED0(&qword_1000ABA08, &qword_100086F98) + 48);
  v7(v31, v30, v29);
  (*(v0 + 360))(v31 + v32, *(v0 + 208), *(v0 + 192));

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1000431D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043458()
{
  (*(v0[25] + 8))(v0[27], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000435B4(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v3[20] = *v2;
  v4 = type metadata accessor for Logger();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for EncryptionKeyRecord.KeyType();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v7 = type metadata accessor for DatabaseConfiguration();
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v8 = type metadata accessor for EncryptionKeyQuery();
  v3[35] = v8;
  v3[36] = *(v8 - 8);
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_100043828, 0, 0);
}

uint64_t sub_100043828()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[18];
  (*(v0[33] + 16))(v0[34], v0[19] + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_database, v0[32]);
  v5 = *(v3 + 16);
  v0[38] = v5;
  v0[39] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  UUID.init()();
  EncryptionKeyQuery.init(database:homeIdentifier:queryIdentifier:resultsLimit:qualityOfService:)();
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_100043974;

  return EncryptionKeyQuery.fetchKeys()();
}

uint64_t sub_100043974(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v4 = sub_100044030;
  }

  else
  {
    v4 = sub_100043A88;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100043A88()
{
  v43 = v0;
  v1 = *(v0 + 41);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 25);
    v2 = *(v0 + 26);
    v4 = *(v0 + 24);
    sub_10000D2CC(v1 + 32, (v0 + 1));

    sub_10000D224(v0 + 2, *(v0 + 5));
    swift_getDynamicType();
    dispatch thunk of static EncryptionKey.recordKeyType.getter();
    if ((*(v3 + 88))(v2, v4) == enum case for EncryptionKeyRecord.KeyType.tagsLubyRackoff(_:))
    {
      v5 = *(v0 + 17);
      (*(*(v0 + 36) + 8))(*(v0 + 37), *(v0 + 35));
      sub_1000111BC(v0 + 1, (v0 + 6));
      sub_10000CED0(&qword_1000ABA28, &qword_100086FF0);
      v6 = type metadata accessor for LubyRackoffEncryptionKey();
      v7 = swift_dynamicCast();
      (*(*(v6 - 8) + 56))(v5, v7 ^ 1u, 1, v6);
      goto LABEL_10;
    }

    v8 = *(v0 + 38);
    v9 = *(v0 + 29);
    v10 = *(v0 + 27);
    v11 = *(v0 + 18);
    sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController, &unk_100086F28);
    static LoggedObject.logger.getter();
    v8(v9, v11, v10);
    sub_10000D2CC((v0 + 1), v0 + 56);
    v12 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v12, v40);
    v15 = *(v0 + 36);
    v14 = *(v0 + 37);
    v16 = *(v0 + 35);
    v18 = *(v0 + 28);
    v17 = *(v0 + 29);
    v19 = *(v0 + 27);
    v21 = *(v0 + 22);
    v20 = *(v0 + 23);
    v41 = *(v0 + 21);
    if (v13)
    {
      v39 = *(v0 + 23);
      v22 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v22 = 141558531;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = v16;
      v38 = v14;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v18 + 8))(v17, v19);
      v26 = sub_100035120(v23, v25, &v42);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2080;
      v27 = *(v0 + 10);
      sub_10000D224(v0 + 7, v27);
      v28 = *(v27 - 8);
      swift_task_alloc();
      (*(v28 + 16))();
      v29 = String.init<A>(describing:)();
      v31 = v30;

      sub_10000D330(v0 + 7);
      v32 = sub_100035120(v29, v31, &v42);

      *(v22 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v12, v40, "Encryption key for home %{private,mask.hash}s is unknown type: %s", v22, 0x20u);
      swift_arrayDestroy();

      (*(v21 + 8))(v39, v41);
      sub_10000D330(v0 + 2);
      (*(v15 + 8))(v38, v37);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      (*(v21 + 8))(v20, v41);
      sub_10000D330(v0 + 2);
      (*(v15 + 8))(v14, v16);
      sub_10000D330(v0 + 7);
    }

    (*(*(v0 + 25) + 8))(*(v0 + 26), *(v0 + 24));
  }

  else
  {
    (*(*(v0 + 36) + 8))(*(v0 + 37), *(v0 + 35));
  }

  v33 = *(v0 + 17);
  v34 = type metadata accessor for LubyRackoffEncryptionKey();
  (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
LABEL_10:

  v35 = *(v0 + 1);

  return v35();
}

uint64_t sub_100044030()
{
  (*(v0[36] + 8))(v0[37], v0[35]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100044108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  return _swift_task_switch(sub_100044158, 0, 0);
}

uint64_t sub_100044158()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v7 = *(v0 + 32);
  LubyRackoffEncryptionKey.init()();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_100044260;

  return DatabaseConfiguration.configure<A>(_:)(v5, &unk_100086F78, v4, &type metadata for () + 8);
}

uint64_t sub_100044260()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10004441C;
  }

  else
  {

    v2 = sub_10004437C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004437C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 16))(v2, v1, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10004441C()
{
  v1 = *(v0 + 24);

  v2 = type metadata accessor for LubyRackoffEncryptionKey();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000444BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[69] = a7;
  v7[68] = a6;
  v7[67] = a5;
  v7[66] = a4;
  v7[65] = a3;
  v7[64] = a2;
  v8 = sub_10000CED0(&qword_1000AB9E8, &unk_100086F80);
  v7[70] = v8;
  v7[71] = *(v8 - 8);
  v7[72] = swift_task_alloc();
  v9 = sub_10000CED0(&qword_1000AB800, &qword_100086C38);
  v7[73] = v9;
  v7[74] = *(v9 - 8);
  v7[75] = swift_task_alloc();
  type metadata accessor for Date();
  v7[76] = swift_task_alloc();
  v10 = type metadata accessor for EncryptionKeyRecord();
  v7[77] = v10;
  v7[78] = *(v10 - 8);
  v7[79] = swift_task_alloc();
  v11 = type metadata accessor for Configuration.TargetCloudKitZone();
  v7[80] = v11;
  v7[81] = *(v11 - 8);
  v7[82] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v7[83] = v12;
  v7[84] = *(v12 - 8);
  v7[85] = swift_task_alloc();
  v7[86] = swift_task_alloc();
  v7[87] = swift_task_alloc();
  v7[88] = swift_task_alloc();
  v7[89] = swift_task_alloc();
  v7[90] = swift_task_alloc();
  v7[91] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v7[92] = v13;
  v7[93] = *(v13 - 8);
  v7[94] = swift_task_alloc();
  v7[95] = swift_task_alloc();
  v7[96] = swift_task_alloc();
  v7[97] = swift_task_alloc();

  return _swift_task_switch(sub_10004480C, 0, 0);
}

uint64_t sub_10004480C()
{
  v39 = v0;
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[66];
  v6 = v0[65];
  v0[98] = sub_1000471F0(&qword_1000AB9F0, type metadata accessor for TagEncryptionKeyController, &unk_100086F28);
  static LoggedObject.logger.getter();
  v7 = *(v3 + 16);
  v0[99] = v7;
  v0[100] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v4);
  v7(v2, v5, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[97];
  v12 = v0[93];
  v13 = v0[92];
  v14 = v0[91];
  v15 = v0[90];
  v16 = v0[84];
  v17 = v0[83];
  if (v10)
  {
    v37 = v0[92];
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v18 = 136315394;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    log = v8;
    v36 = v12;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v9;
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v14, v17);
    v23 = sub_100035120(v19, v21, &v38);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v22(v15, v17);
    v27 = sub_100035120(v24, v26, &v38);

    *(v18 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v34, "Saving encryption key for home %s: %s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v36 + 8))(v11, v37);
  }

  else
  {

    v28 = *(v16 + 8);
    v28(v15, v17);
    v28(v14, v17);
    (*(v12 + 8))(v11, v13);
  }

  (*(v0[81] + 104))(v0[82], enum case for Configuration.TargetCloudKitZone.default(_:), v0[80]);
  v29 = swift_task_alloc();
  v0[101] = v29;
  *v29 = v0;
  v29[1] = sub_100044BCC;
  v30 = v0[82];
  v31 = v0[65];
  v32 = v0[64];

  return static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)(v32, v31, v30, 1);
}

uint64_t sub_100044BCC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[102] = a1;
  v4[103] = v1;

  (*(v3[81] + 8))(v3[82], v3[80]);
  if (v1)
  {
    v5 = sub_100045560;
  }

  else
  {
    v5 = sub_100044D40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100044D40()
{
  v1 = v0;
  v2.super.isa = v0[102];
  v18 = v0 + 2;
  v19 = v0 + 55;
  v3 = v0[99];
  v4 = v0[89];
  v5 = v0[83];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[77];
  v21 = v0[75];
  v9 = v0[74];
  v20 = v1[73];
  v10 = v1[67];
  v22 = v1[64];
  v3(v4, v1[66], v5);
  v11 = type metadata accessor for LubyRackoffEncryptionKey();
  v1[53] = v11;
  v1[54] = sub_1000471F0(&qword_1000AB9F8, &type metadata accessor for LubyRackoffEncryptionKey, &protocol conformance descriptor for LubyRackoffEncryptionKey);
  v12 = sub_10000CF2C(v1 + 50);
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  static Date.now.getter();
  EncryptionKeyRecord.init(identifier:key:effectiveDate:)();
  isa = EncryptionKeyRecord.toCKRecord(zoneID:)(v2).super.isa;
  v1[104] = isa;
  (*(v7 + 8))(v6, v8);
  v1[2] = v1;
  v1[7] = v19;
  v1[3] = sub_100045050;
  swift_continuation_init();
  v1[33] = v20;
  v14 = sub_10000CF2C(v1 + 30);
  v1[105] = sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
  v1[106] = sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  CheckedContinuation.init(continuation:function:)();
  v15 = *(v9 + 32);
  v1[107] = v15;
  v1[108] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(v14, v21, v20);
  v1[26] = _NSConcreteStackBlock;
  v1[27] = 1107296256;
  v1[28] = sub_100034C2C;
  v1[29] = &unk_1000A2CA8;
  [v22 saveRecord:isa completionHandler:?];
  v16 = *(v9 + 8);
  v1[109] = v16;
  v1[110] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v14, v20);

  return _swift_continuation_await(v18);
}

uint64_t sub_100045050()
{
  v1 = *(*v0 + 48);
  *(*v0 + 888) = v1;
  if (v1)
  {
    v2 = sub_100045E9C;
  }

  else
  {
    v2 = sub_100045160;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100045160()
{
  v37 = v0;

  v1 = *(v0 + 792);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 664);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  static LoggedObject.logger.getter();
  v1(v2, v6, v4);
  v1(v3, v5, v4);
  v7 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v7, v35);
  v9 = *(v0 + 816);
  v10 = *(v0 + 760);
  v11 = *(v0 + 744);
  v12 = *(v0 + 736);
  v13 = *(v0 + 696);
  v14 = *(v0 + 688);
  v15 = *(v0 + 672);
  v16 = *(v0 + 664);
  if (v8)
  {
    v33 = *(v0 + 832);
    v34 = *(v0 + 736);
    v17 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v17 = 141558531;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    log = v7;
    v32 = v11;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v9;
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v13, v16);
    v22 = sub_100035120(v18, v20, &v36);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2082;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v21(v14, v16);
    v26 = sub_100035120(v23, v25, &v36);

    *(v17 + 24) = v26;
    _os_log_impl(&_mh_execute_header, log, v35, "Successfully saved encryption key for home %{private,mask.hash}s: %{public}s", v17, 0x20u);
    swift_arrayDestroy();

    (*(v32 + 8))(v10, v34);
  }

  else
  {

    v27 = *(v15 + 8);
    v27(v14, v16);
    v27(v13, v16);
    (*(v11 + 8))(v10, v12);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100045560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000456AC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 912) = v1;
  if (v1)
  {
    v2 = sub_100046704;
  }

  else
  {
    v2 = sub_1000457BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000457BC()
{
  v1 = *(v0 + 904);
  v9 = *(v0 + 872);
  v6 = *(v0 + 856);
  v2 = *(v0 + 600);
  v3 = *(v0 + 584);
  v7 = *(v0 + 512);
  v8 = *(v0 + 832);

  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 504;
  *(v0 + 152) = sub_10004597C;
  swift_continuation_init();
  *(v0 + 392) = v3;
  v4 = sub_10000CF2C((v0 + 368));
  CheckedContinuation.init(continuation:function:)();
  v6(v4, v2, v3);
  *(v0 + 336) = _NSConcreteStackBlock;
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_100034C2C;
  *(v0 + 360) = &unk_1000A2CF8;
  [v7 saveRecord:v8 completionHandler:v0 + 336];
  v9(v4, v3);

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_10004597C()
{
  v1 = *(*v0 + 176);
  *(*v0 + 920) = v1;
  if (v1)
  {
    v2 = sub_100046AFC;
  }

  else
  {
    v2 = sub_100045A8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100045A8C()
{
  v37 = v0;

  v1 = *(v0 + 792);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 664);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  static LoggedObject.logger.getter();
  v1(v2, v6, v4);
  v1(v3, v5, v4);
  v7 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v7, v35);
  v9 = *(v0 + 816);
  v10 = *(v0 + 760);
  v11 = *(v0 + 744);
  v12 = *(v0 + 736);
  v13 = *(v0 + 696);
  v14 = *(v0 + 688);
  v15 = *(v0 + 672);
  v16 = *(v0 + 664);
  if (v8)
  {
    v33 = *(v0 + 832);
    v34 = *(v0 + 736);
    v17 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v17 = 141558531;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    log = v7;
    v32 = v11;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v9;
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v13, v16);
    v22 = sub_100035120(v18, v20, &v36);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2082;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v21(v14, v16);
    v26 = sub_100035120(v23, v25, &v36);

    *(v17 + 24) = v26;
    _os_log_impl(&_mh_execute_header, log, v35, "Successfully saved encryption key for home %{private,mask.hash}s: %{public}s", v17, 0x20u);
    swift_arrayDestroy();

    (*(v32 + 8))(v10, v34);
  }

  else
  {

    v27 = *(v15 + 8);
    v27(v14, v16);
    v27(v13, v16);
    (*(v11 + 8))(v10, v12);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100045E9C(uint64_t a1)
{
  v61 = v1;
  v2 = v1[111];
  swift_willThrow();
  v1[56] = v2;
  swift_errorRetain();
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = v1[68];
    v4 = v1[57];
    v1[112] = v4;
    if ((*(v3 + OBJC_IVAR____TtC11homeeventsd26TagEncryptionKeyController_preventZoneCreation) & 1) == 0)
    {
      v1[58] = v4;
      sub_1000471F0(&qword_1000AAEA8, type metadata accessor for CKError, &unk_100085AD8);
      _BridgedStoredNSError.code.getter();
      if (v1[59] == 28 || (v1[60] = v4, _BridgedStoredNSError.code.getter(), v1[61] == 26))
      {
        v28 = v1[99];
        v29 = v1[85];
        v30 = v1[83];
        v31 = v1[65];

        static LoggedObject.logger.getter();
        v28(v29, v31, v30);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        v34 = os_log_type_enabled(v32, v33);
        v35 = v1[94];
        v36 = v1[93];
        v37 = v1[92];
        v38 = v1[85];
        v39 = v1[84];
        v40 = v1[83];
        if (v34)
        {
          v58 = v1[92];
          v41 = swift_slowAlloc();
          v57 = v33;
          v42 = swift_slowAlloc();
          v60[0] = v42;
          *v41 = 141558275;
          *(v41 + 4) = 1752392040;
          *(v41 + 12) = 2081;
          sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v55 = v35;
          v45 = v44;
          (*(v39 + 8))(v38, v40);
          v46 = sub_100035120(v43, v45, v60);

          *(v41 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v32, v57, "Zone does not exist for home %{private,mask.hash}s, will create", v41, 0x16u);
          sub_10000D330(v42);

          (*(v36 + 8))(v55, v58);
        }

        else
        {

          (*(v39 + 8))(v38, v40);
          (*(v36 + 8))(v35, v37);
        }

        v47 = v1[72];
        v48 = v1[71];
        v49 = v1[70];
        v59 = v1[64];
        v50 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v1[102]];
        v1[113] = v50;
        v1[10] = v1;
        v1[15] = v1 + 62;
        v1[11] = sub_1000456AC;
        swift_continuation_init();
        v1[41] = v49;
        v51 = sub_10000CF2C(v1 + 38);
        sub_10000D544(0, &qword_1000ABA00, CKRecordZone_ptr);
        CheckedContinuation.init(continuation:function:)();
        (*(v48 + 32))(v51, v47, v49);
        v1[34] = _NSConcreteStackBlock;
        v1[35] = 1107296256;
        v1[36] = sub_100046EEC;
        v1[37] = &unk_1000A2CD0;
        [v59 saveRecordZone:v50 completionHandler:v1 + 34];
        (*(v48 + 8))(v51, v49);

        return _swift_continuation_await(v1 + 10);
      }
    }
  }

  v5 = v1[99];
  v6 = v1[88];
  v7 = v1[83];
  v8 = v1[65];

  swift_errorRetain();

  static LoggedObject.logger.getter();
  v5(v6, v8, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[96];
  v13 = v1[93];
  v14 = v1[92];
  v15 = v1[88];
  v16 = v1[84];
  v17 = v1[83];
  if (v11)
  {
    v56 = v1[92];
    v18 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v60[0] = v54;
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v53 = v12;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    v22 = sub_100035120(v19, v21, v60);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v23;
    *v52 = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to save encryption key for home %{private,mask.hash}s: %{public}@", v18, 0x20u);
    sub_10000D620(v52, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v54);

    (*(v13 + 8))(v53, v56);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v24 = v1[104];
  v25 = v1[102];
  swift_willThrow();

  v26 = v1[1];

  return v26();
}

uint64_t sub_100046704(uint64_t a1)
{
  v32 = v1;
  v2 = v1[113];
  v3 = v1[112];
  swift_willThrow();

  v4 = v1[99];
  v5 = v1[88];
  v6 = v1[83];
  v7 = v1[65];

  swift_errorRetain();

  static LoggedObject.logger.getter();
  v4(v5, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[96];
  v12 = v1[93];
  v13 = v1[92];
  v14 = v1[88];
  v15 = v1[84];
  v16 = v1[83];
  if (v10)
  {
    v30 = v1[92];
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v17 = 141558531;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = v11;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_100035120(v18, v20, &v31);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v22;
    *v27 = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to save encryption key for home %{private,mask.hash}s: %{public}@", v17, 0x20u);
    sub_10000D620(v27, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v29);

    (*(v12 + 8))(v28, v30);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v23 = v1[104];
  v24 = v1[102];
  swift_willThrow();

  v25 = v1[1];

  return v25();
}

uint64_t sub_100046AFC(uint64_t a1)
{
  v31 = v1;
  v2 = v1[112];
  swift_willThrow();

  v3 = v1[99];
  v4 = v1[88];
  v5 = v1[83];
  v6 = v1[65];

  swift_errorRetain();

  static LoggedObject.logger.getter();
  v3(v4, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[96];
  v11 = v1[93];
  v12 = v1[92];
  v13 = v1[88];
  v14 = v1[84];
  v15 = v1[83];
  if (v9)
  {
    v29 = v1[92];
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_1000471F0(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = v10;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_100035120(v17, v19, &v30);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v21;
    *v26 = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to save encryption key for home %{private,mask.hash}s: %{public}@", v16, 0x20u);
    sub_10000D620(v26, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v28);

    (*(v11 + 8))(v27, v29);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  v22 = v1[104];
  v23 = v1[102];
  swift_willThrow();

  v24 = v1[1];

  return v24();
}

void sub_100046EEC(uint64_t a1, void *a2, void *a3)
{
  sub_10000D224((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_10000CED0(&qword_1000AB9E8, &unk_100086F80);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_10000CED0(&qword_1000AB9E8, &unk_100086F80);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100046F9C()
{
  result = static EncryptionKeyQuery.logCategory.getter();
  qword_1000AC460 = result;
  *algn_1000AC468 = v1;
  return result;
}

uint64_t sub_100046FC0()
{
  if (qword_1000AAA50 != -1)
  {
    swift_once();
  }

  v0 = qword_1000AC460;

  return v0;
}

uint64_t sub_100047028(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10001DBDC;

  return sub_1000444BC(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_10004712C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001DBDC;

  return sub_100040430(a1, a2, v6, v7, v8);
}

uint64_t sub_1000471F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100047238()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100047310(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000D130;

  return sub_1000410B0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100047450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for EventWriterScope();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10004757C, 0, 0);
}

uint64_t sub_10004757C()
{
  v1 = *(v0 + 40);
  (*(*(v0 + 96) + 104))(*(v0 + 104), enum case for EventWriterScope.owned(_:), *(v0 + 88));
  if (v1 < 1)
  {
    v16 = *(v0 + 40);
    v17 = type metadata accessor for HomeKitEventsError();
    sub_100047D4C(&qword_1000ABA30, &type metadata accessor for HomeKitEventsError, &protocol conformance descriptor for HomeKitEventsError);
    swift_allocError();
    v19 = v18;
    _StringGuts.grow(_:)(35);

    *(v0 + 16) = v16;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    *v19 = 0xD000000000000021;
    v19[1] = 0x80000001000895C0;
    (*(*(v17 - 8) + 104))(v19, enum case for HomeKitEventsError.unexpected(_:), v17);
    swift_willThrow();
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    *(v0 + 112) = type metadata accessor for XPCServer();
    *(v0 + 120) = sub_100047D4C(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
    static LoggedObject.logger.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 40);
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v2, v3, "Creating %ld fake event(s)", v5, 0xCu);
    }

    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v9 = *(v0 + 40);
    v22 = *(v0 + 24);

    v10 = *(v8 + 8);
    *(v0 + 128) = v10;
    *(v0 + 136) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v7);
    v11 = swift_task_alloc();
    *(v11 + 16) = v22;
    v12 = sub_1000366FC(sub_100047D94, v11, 0, v9);
    *(v0 + 144) = v12;

    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *v13 = v0;
    v13[1] = sub_10004793C;
    v14 = *(v0 + 104);

    return sub_10002869C(v12, v14);
  }
}

uint64_t sub_10004793C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    *(v2 + 168) = v0;
    v3 = sub_100047B10;
  }

  else
  {
    v3 = sub_100047BAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100047A74()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100047B10()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100047BAC()
{
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requesting background upload of events to CloudKit database", v3, 2u);
  }

  v4 = v0[16];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];

  v4(v5, v6);

  return _swift_task_switch(sub_100047CB8, v7, 0);
}

uint64_t sub_100047CB8()
{
  v1 = *(v0 + 160);
  sub_100028B58(0, 1);
  if (v1)
  {
    *(v0 + 168) = v1;
    v2 = sub_100047B10;
  }

  else
  {
    v2 = sub_100047A74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100047D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100047DB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a4;
  v9 = type metadata accessor for Logger();
  v41 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v35 = &v34 - v13;
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  sub_10004A0AC();
  static LoggedObject.logger.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v39 = v9;
  v40 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = a3;
    v21 = swift_slowAlloc();
    v42[0] = v21;
    *v19 = 136315138;
    *(v19 + 4) = sub_100035120(v40, a2, v42);
    _os_log_impl(&_mh_execute_header, v16, v17, "Attempting to register launch handler associated with identifier %s", v19, 0xCu);
    sub_10000D330(v21);
    a3 = v20;

    a1 = v40;
    v22 = v41;
  }

  else
  {

    v22 = v41;
  }

  v38 = *(v22 + 8);
  v38(v15, v9);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v24 = v37;
  v23[4] = a3;
  v23[5] = v24;
  v25 = v5[3];
  v26 = v5[4];
  sub_10000D224(v5, v25);
  v27 = *(v26 + 8);

  v27(a1, a2, sub_10004A198, v23, v25, v26);
  v28 = v35;
  static LoggedObject.logger.getter();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42[0] = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_100035120(v40, a2, v42);
    _os_log_impl(&_mh_execute_header, v29, v30, "Successfully registered launch handler associated with identifier %{public}s", v31, 0xCu);
    sub_10000D330(v32);
  }

  return (v38)(v28, v39);
}

uint64_t sub_10004827C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = __chkstk_darwin(v4);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v65 = &v64 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v64 - v10;
  v12 = __chkstk_darwin(v9);
  v67 = &v64 - v13;
  __chkstk_darwin(v12);
  v15 = &v64 - v14;
  v16 = a1[3];
  v17 = a1[4];
  sub_10000D224(a1, v16);
  v18 = (*(v17 + 8))(v16, v17);
  v20 = v19;
  v21 = v1[3];
  v22 = v1[4];
  sub_10000D224(v2, v2[3]);
  v23 = *(v22 + 24);
  v69 = v18;
  v24 = v23(v18, v20, v21, v22);
  sub_10004A0AC();
  if (v24)
  {
    static LoggedObject.logger.getter();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v72 = v28;
      *v27 = 136446210;
      v29 = sub_100035120(v69, v20, &v72);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Declining to submit task request associated with identifier %{public}s because another request is already scheduled, but not yet completed", v27, 0xCu);
      sub_10000D330(v28);
    }

    else
    {
    }

    (*(v70 + 8))(v11, v71);
LABEL_20:
    sub_100029038();
    swift_allocError();
    *v62 = 2;
    return swift_willThrow();
  }

  static LoggedObject.logger.getter();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v72 = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_100035120(v69, v20, &v72);
    _os_log_impl(&_mh_execute_header, v30, v31, "Attempting to submit task request associated with identifier %{public}s", v32, 0xCu);
    sub_10000D330(v33);
  }

  v34 = *(v70 + 8);
  v34(v15, v71);
  v35 = v2[3];
  v36 = v2[4];
  sub_10000D224(v2, v35);
  v37 = v68;
  (*(v36 + 16))(a1, v35, v36);
  if (v37)
  {
    type metadata accessor for Code(0);
    v72 = 5;
    swift_errorRetain();
    sub_10004A100();
    v38 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v38)
    {

      v39 = v65;
      static LoggedObject.logger.getter();

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v72 = v43;
        *v42 = 136446210;
        v44 = sub_100035120(v69, v20, &v72);

        *(v42 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "Attempted to submit request for %{public}s even though another request was already pending", v42, 0xCu);
        sub_10000D330(v43);
      }

      else
      {
      }

      v34(v39, v71);
      goto LABEL_20;
    }

    v52 = v66;
    static LoggedObject.logger.getter();

    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72 = v57;
      *v55 = 136446466;
      v58 = v34;
      v59 = sub_100035120(v69, v20, &v72);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2114;
      swift_errorRetain();
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 14) = v60;
      *v56 = v60;
      _os_log_impl(&_mh_execute_header, v53, v54, "Received unknown error while attempting to submit task request associated with identifier %{public}s: %{public}@", v55, 0x16u);
      sub_10000F32C(v56);

      sub_10000D330(v57);

      v58(v66, v71);
    }

    else
    {

      v34(v52, v71);
    }

    sub_100029038();
    swift_allocError();
    *v63 = 0;
    swift_willThrow();
  }

  else
  {
    v45 = v67;
    static LoggedObject.logger.getter();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v72 = v49;
      *v48 = 136446210;
      v50 = sub_100035120(v69, v20, &v72);

      *(v48 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v46, v47, "Successfully submitted task request associated with identifier %{public}s", v48, 0xCu);
      sub_10000D330(v49);

      v51 = v67;
    }

    else
    {

      v51 = v45;
    }

    return (v34)(v51, v71);
  }
}

uint64_t sub_100048B24(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D2CC(a1, v35);
  sub_10004A0AC();
  static LoggedObject.logger.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33 = v12;
    v34 = v21;
    v22 = a4;
    v23 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_100035120(a2, a3, &v34);
    _os_log_impl(&_mh_execute_header, v17, v18, "Beginning execution of task associated with identifier %{public}s", v20, 0xCu);
    sub_10000D330(v23);
    a4 = v22;
    v12 = v33;
  }

  (*(v14 + 8))(v16, v13);
  v24 = a4(v35);
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = v24;
  v26 = v36;
  v27 = v37;
  sub_10001116C(v35, v36);
  v28 = *(v27 + 24);

  v28(sub_10004A1E4, v25, v26, v27);
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v24;
  v30[5] = a2;
  v30[6] = a3;

  sub_100080ECC(0, 0, v12, &unk_1000870D8, v30);

  return sub_10004A300(v35);
}

void sub_100048EA4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A0AC();
  static LoggedObject.logger.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_100035120(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v8, v9, "System scheduler is expiring the task run associated with identifier %{public}s", v10, 0xCu);
    sub_10000D330(v11);
  }

  (*(v5 + 8))(v7, v4);
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  Task.cancel()();
}

uint64_t sub_10004909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v8 = type metadata accessor for CancellationError();
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[10] = v9;
  v6[11] = *(v9 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[15] = v10;
  v11 = sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  v6[16] = v11;
  *v10 = v6;
  v10[1] = sub_100049240;

  return Task.result.getter(v6 + 2, a4, &type metadata for () + 8, v11, &protocol self-conformance witness table for Error);
}

uint64_t sub_100049240()
{

  return _swift_task_switch(sub_10004933C, 0, 0);
}

uint64_t sub_10004933C(uint64_t a1)
{
  v41 = v1;
  v2 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    *(v1 + 32) = v2;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      sub_10004A0AC();
      static LoggedObject.logger.getter();

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();

      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v1 + 104);
      v8 = *(v1 + 80);
      v7 = *(v1 + 88);
      if (v5)
      {
        v38 = *(v1 + 104);
        v10 = *(v1 + 40);
        v9 = *(v1 + 48);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v40 = v12;
        *v11 = 136446210;
        *(v11 + 4) = sub_100035120(v10, v9, &v40);
        _os_log_impl(&_mh_execute_header, v3, v4, "Task associated with identifier %{public}s was canceled", v11, 0xCu);
        sub_10000D330(v12);

        sub_10004A360(v2, 1);
        (*(v7 + 8))(v38, v8);
      }

      else
      {
        sub_10004A360(v2, 1);

        (*(v7 + 8))(v6, v8);
      }

      (*(*(v1 + 64) + 8))(*(v1 + 72), *(v1 + 56));
    }

    else
    {

      sub_10004A0AC();
      static LoggedObject.logger.getter();

      sub_10004A354(v2, 1);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      sub_10004A360(v2, 1);
      v25 = os_log_type_enabled(v23, v24);
      v27 = *(v1 + 88);
      v26 = *(v1 + 96);
      v28 = *(v1 + 80);
      if (v25)
      {
        v30 = *(v1 + 40);
        v29 = *(v1 + 48);
        v39 = *(v1 + 80);
        v31 = swift_slowAlloc();
        v37 = v26;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v40 = v33;
        *v31 = 136446466;
        *(v31 + 4) = sub_100035120(v30, v29, &v40);
        *(v31 + 12) = 2112;
        swift_errorRetain();
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v34;
        *v32 = v34;
        _os_log_impl(&_mh_execute_header, v23, v24, "Execution of task associated with identifier %{public}s failed: %@", v31, 0x16u);
        sub_10000F32C(v32);

        sub_10000D330(v33);

        sub_10004A360(v2, 1);
        (*(v27 + 8))(v37, v39);
      }

      else
      {
        sub_10004A360(v2, 1);

        (*(v27 + 8))(v26, v28);
      }
    }
  }

  else
  {
    sub_10004A0AC();
    static LoggedObject.logger.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v1 + 112);
    v17 = *(v1 + 80);
    v18 = *(v1 + 88);
    if (v15)
    {
      v20 = *(v1 + 40);
      v19 = *(v1 + 48);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_100035120(v20, v19, &v40);
      _os_log_impl(&_mh_execute_header, v13, v14, "Finished execution of task associated with identifier %{public}s", v21, 0xCu);
      sub_10000D330(v22);
    }

    (*(v18 + 8))(v16, v17);
  }

  v35 = *(v1 + 8);

  return v35();
}

void sub_10004983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = String._bridgeToObjectiveC()();
  sub_10000D544(0, &qword_1000AB288, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.background(_:), v8);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v8);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  aBlock[4] = sub_10004A3A4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100049AF8;
  aBlock[3] = &unk_1000A2E88;
  v15 = _Block_copy(aBlock);

  LOBYTE(v5) = [v5 registerForTaskWithIdentifier:v12 usingQueue:v13 launchHandler:v15];
  _Block_release(v15);

  if ((v5 & 1) == 0)
  {
    sub_100029038();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
  }
}

uint64_t sub_100049A80(void *a1, void (*a2)(void *))
{
  v6[3] = sub_10000D544(0, &qword_1000ABA40, BGSystemTask_ptr);
  v6[4] = &off_1000A4000;
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_10000D330(v6);
}

void sub_100049AF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100049B60(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  sub_10000D224(a1, v4);
  (*(v5 + 8))(v4, v5);
  v6 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithIdentifier:v7];

  v9 = a1[3];
  v10 = a1[4];
  sub_10000D224(a1, v9);
  v11 = *(v10 + 88);
  v12 = v8;
  [v12 setPriority:{v11(v9, v10)}];
  v13 = a1[3];
  v14 = a1[4];
  sub_10000D224(a1, v13);
  [v12 setRequiresNetworkConnectivity:{(*(v14 + 16))(v13, v14) & 1}];
  v15 = a1[3];
  v16 = a1[4];
  sub_10000D224(a1, v15);
  [v12 setShouldWakeDevice:{(*(v16 + 40))(v15, v16) & 1}];
  v17 = a1[3];
  v18 = a1[4];
  sub_10000D224(a1, v17);
  [v12 setRequiresExternalPower:{(*(v18 + 64))(v17, v18) & 1}];
  v19 = a1[3];
  v20 = a1[4];
  sub_10000D224(a1, v19);
  v21 = (*(v20 + 112))(v19, v20);
  sub_10001DF94(v21);
  v22 = a1[3];
  v23 = a1[4];
  sub_10000D224(a1, v22);
  v24 = COERCE_DOUBLE((*(v23 + 160))(v22, v23));
  if ((v25 & 1) == 0)
  {
    [v12 setScheduleAfter:v24];
  }

  v26 = a1[3];
  v27 = a1[4];
  sub_10000D224(a1, v26);
  v28 = COERCE_DOUBLE((*(v27 + 136))(v26, v27));
  if ((v29 & 1) == 0)
  {
    [v12 setTrySchedulingBefore:v28];
  }

  v30 = a1[3];
  v31 = a1[4];
  sub_10000D224(a1, v30);
  [v12 setPreventsDeviceSleep:{(*(v31 + 184))(v30, v31) & 1}];
  v32 = a1[3];
  v33 = a1[4];
  sub_10000D224(a1, v32);
  (*(v33 + 208))(v32, v33);
  [v12 setRandomInitialDelay:?];
  v34 = a1[3];
  v35 = a1[4];
  sub_10000D224(a1, v34);
  [v12 setRequiresBuddyComplete:{(*(v35 + 232))(v34, v35) & 1}];

  v38 = 0;
  if ([v2 submitTaskRequest:v12 error:&v38])
  {
    v36 = v38;
  }

  else
  {
    v37 = v38;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

BOOL sub_100049F9C()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 taskRequestForIdentifier:v2];

  if (v3)
  {
  }

  return v3 != 0;
}

__n128 sub_100049FF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004A00C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004A054(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_10004A0AC()
{
  result = qword_1000ABA38;
  if (!qword_1000ABA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ABA38);
  }

  return result;
}

unint64_t sub_10004A100()
{
  result = qword_1000AAE50;
  if (!qword_1000AAE50)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAE50);
  }

  return result;
}

uint64_t sub_10004A158()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004A1A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004A1F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004A238(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000D130;

  return sub_10004909C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10004A354(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_10004A360(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10004A36C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004A3AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004A3D8()
{
  result = qword_1000ABA48;
  if (!qword_1000ABA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ABA48);
  }

  return result;
}

uint64_t sub_10004A42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8, uint64_t a9)
{
  v42 = a7;
  v40 = a6;
  v41 = a5;
  v39 = a1;
  v13 = sub_10000CED0(&qword_1000ABCA8, &qword_100087268);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  __chkstk_darwin(v16 - 8);
  v18 = &v38 - v17;
  v19 = sub_10000CED0(&unk_1000ABCB0, &qword_100087270);
  __chkstk_darwin(v19 - 8);
  v21 = &v38 - v20;
  v22 = _s15DefaultDelegateC13ConfigurationVMa(0);
  v23 = __chkstk_darwin(v22 - 8);
  v38 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v38 - v25;
  v27 = type metadata accessor for DatabaseConfiguration();
  (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  v28 = type metadata accessor for URL();
  (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
  v29 = type metadata accessor for DigestRecord.Encoding();
  (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
  v30 = v39;
  sub_10004A86C(v39, a2, v21, v18, a3, v41, v40 & 1, v42, v26, a8 & 1, v15, a9, a4);

  sub_10000D620(v15, &qword_1000ABCA8, &qword_100087268);
  sub_10000D620(v18, &qword_1000AADD8, &qword_1000855A8);
  sub_10000D620(v21, &unk_1000ABCB0, &qword_100087270);
  v31 = v38;
  sub_10004C8D4(v26, v38);
  _s15DefaultDelegateCMa(0);
  v32 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10000D620(a9, &qword_1000AB0C8, &qword_100085F18);
  v33 = type metadata accessor for Configuration.TargetCloudKitZone();
  (*(*(v33 - 8) + 8))(a4, v33);
  sub_10000D620(a2, &qword_1000AB0D0, &unk_100085F20);
  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 8))(v30, v34);
  sub_10004C938(v26);
  v35 = OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_digestMetadata;
  v36 = _s15DefaultDelegateC14DigestMetadataVMa(0);
  (*(*(v36 - 8) + 56))(v32 + v35, 1, 1, v36);
  sub_10004C994(v31, v32 + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration);
  return v32;
}

double sub_10004A86C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v113 = a8;
  v114 = a7;
  v115 = a6;
  v120 = a5;
  v106 = a4;
  v110 = a3;
  v108 = a2;
  v109 = a1;
  v119 = a9;
  v13 = sub_10000CED0(&qword_1000ABCA8, &qword_100087268);
  __chkstk_darwin(v13 - 8);
  v112 = v98 - v14;
  v118 = type metadata accessor for DigestRecord.Encoding();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000CED0(&unk_1000ABCB0, &qword_100087270);
  __chkstk_darwin(v16 - 8);
  v121 = v98 - v17;
  v127 = type metadata accessor for DatabaseConfiguration();
  v129 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = (v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for UUID();
  v130 = *(v19 - 8);
  v131 = v19;
  v20 = __chkstk_darwin(v19);
  v125 = v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v104 = v98 - v22;
  v23 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  v24 = __chkstk_darwin(v23 - 8);
  v105 = v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = v98 - v26;
  v103 = type metadata accessor for URL.DirectoryHint();
  v128 = *(v103 - 8);
  v28 = v128;
  __chkstk_darwin(v103);
  v30 = v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for URL();
  v100 = *(v102 - 8);
  v31 = v100;
  v32 = __chkstk_darwin(v102);
  v111 = v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v99 = v98 - v35;
  v36 = __chkstk_darwin(v34);
  v123 = v98 - v37;
  v38 = __chkstk_darwin(v36);
  v124 = v98 - v39;
  v40 = __chkstk_darwin(v38);
  v101 = v98 - v41;
  __chkstk_darwin(v40);
  v122 = v98 - v42;
  v43 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = enum case for URL.DirectoryHint.isDirectory(_:);
  v45 = *(v28 + 13);
  v46 = v103;
  (v45)(v30, enum case for URL.DirectoryHint.isDirectory(_:), v103);
  v47 = *(v31 + 56);
  v48 = v102;
  v47(v27, 1, 1, v102);
  URL.init(filePath:directoryHint:relativeTo:)();
  v49 = v104;
  UUID.init()();
  v50 = UUID.uuidString.getter();
  v52 = v51;
  v53 = v49;
  v54 = v100;
  (*(v130 + 8))(v53, v131);
  *&v134 = v50;
  *(&v134 + 1) = v52;
  v55 = v44;
  v56 = v30;
  v104 = v45;
  (v45)(v30, v55, v46);
  v98[1] = sub_100013D50();
  v57 = v101;
  URL.appending<A>(component:directoryHint:)();
  v58 = *(v128 + 1);
  v59 = v46;
  v128 = (v128 + 8);
  v58(v30, v46);

  v60 = *(v54 + 8);
  v61 = v105;
  v60(v57, v48);
  sub_100013358(v106, v61, &qword_1000AADD8, &qword_1000855A8);
  if ((*(v54 + 48))(v61, 1, v48) == 1)
  {
    sub_10000D620(v61, &qword_1000AADD8, &qword_1000855A8);
    *&v134 = 0xD000000000000010;
    *(&v134 + 1) = 0x8000000100089680;
    (v104)(v30, enum case for URL.DirectoryHint.inferFromPath(_:), v59);
    v62 = v122;
    URL.appending<A>(component:directoryHint:)();
    v58(v56, v59);
    v63 = *(v54 + 32);
    v64 = ((v54 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v65 = v48;
  }

  else
  {
    v63 = *(v54 + 32);
    v64 = ((v54 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v66 = v99;
    v63(v99, v61, v48);
    sub_10004C190(v66, v123);
    v60(v66, v48);
    v65 = v48;
    v62 = v122;
  }

  v107 = a11;
  v67 = v123;
  v128 = v63;
  v123 = v64;
  v63(v124, v67, v65);
  sub_100013358(v108, &v132, &qword_1000AB0D0, &unk_100085F20);
  v68 = v127;
  v69 = v129;
  v70 = v121;
  if (v133)
  {
    sub_10001122C(&v132, &v134);
  }

  else
  {
    type metadata accessor for Configuration();
    v135 = sub_10000CED0(&qword_1000AAFF0, &qword_100085C70);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_10000CF2C(&v134);
    static Configuration.defaultFeaturesDataSource.getter();
    v70 = v121;
    if (v133)
    {
      sub_10000D620(&v132, &qword_1000AB0D0, &unk_100085F20);
    }
  }

  v108 = a13;
  v106 = a12;
  (*(v130 + 16))(v125, v109, v131);
  sub_100013358(v110, v70, &unk_1000ABCB0, &qword_100087270);
  v71 = *(v69 + 48);
  if (v71(v70, 1, v68) == 1)
  {
    type metadata accessor for Configuration();
    v72 = v68;
    v73 = static Configuration.cloudKitContainer.getter();
    v74 = sub_10004C558(v73);
    v60(v62, v65);
    v75 = sub_10000CED0(&qword_1000AB8B8, &qword_100086D10);
    v76 = *(v75 + 48);
    v77 = v65;
    v78 = *(v75 + 64);
    v79 = v126;
    *v126 = v73;
    v80 = enum case for QueryScope.owned(_:);
    Scope = type metadata accessor for QueryScope();
    (*(*(Scope - 8) + 104))(v79 + v76, v80, Scope);
    *(v79 + v78) = v74;
    v82 = v121;
    v65 = v77;
    (*(v129 + 104))(v79, enum case for DatabaseConfiguration.unconfigured(_:), v72);
    v83 = v71(v82, 1, v72);
    v84 = v116;
    v85 = v112;
    v86 = v111;
    if (v83 != 1)
    {
      sub_10000D620(v82, &unk_1000ABCB0, &qword_100087270);
    }
  }

  else
  {
    v60(v62, v65);
    (*(v69 + 32))(v126, v70, v68);
    v84 = v116;
    v85 = v112;
    v86 = v111;
  }

  v128(v86, v124, v65);
  sub_100013358(v107, v85, &qword_1000ABCA8, &qword_100087268);
  v87 = v117;
  v88 = *(v117 + 48);
  v89 = v118;
  v90 = v65;
  if (v88(v85, 1, v118) == 1)
  {
    (*(v87 + 104))(v84, enum case for DigestRecord.Encoding.default(_:), v89);
    if (v88(v85, 1, v89) != 1)
    {
      sub_10000D620(v85, &qword_1000ABCA8, &qword_100087268);
    }
  }

  else
  {
    (*(v87 + 32))(v84, v85, v89);
  }

  if (a10)
  {
    v91 = 17;
  }

  else
  {
    v91 = v113;
  }

  if (v114)
  {
    v92 = 1;
  }

  else
  {
    v92 = v115;
  }

  v93 = _s15DefaultDelegateC13ConfigurationVMa(0);
  v94 = v119;
  sub_100013358(v106, v119 + v93[12], &qword_1000AB0C8, &qword_100085F18);
  v95 = v93[13];
  v96 = type metadata accessor for Configuration.TargetCloudKitZone();
  (*(*(v96 - 8) + 16))(v94 + v95, v108, v96);
  sub_10001122C(&v134, v94);
  (*(v130 + 32))(v94 + v93[5], v125, v131);
  (*(v129 + 32))(v94 + v93[6], v126, v127);
  v128((v94 + v93[7]), v86, v90);
  *(v94 + v93[8]) = v120;
  *(v94 + v93[9]) = v92;
  *(v94 + v93[10]) = v91;
  (*(v87 + 32))(v94 + v93[11], v84, v89);

  return result;
}

uint64_t sub_10004B594()
{
  sub_10004C938(v0 + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration);
  sub_10000D620(v0 + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_digestMetadata, &qword_1000AB6D0, &qword_1000869F0);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10004B61C(uint64_t a1)
{
  _s15DefaultDelegateC13ConfigurationVMa(319);
  if (v1 <= 0x3F)
  {
    sub_10004C13C(319, &unk_1000ABA88, _s15DefaultDelegateC14DigestMetadataVMa);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10004B750(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004B79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
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

uint64_t sub_10004B86C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DateInterval();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10004B924(uint64_t a1)
{
  type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    sub_10004B9C8(319);
    if (v2 <= 0x3F)
    {
      sub_1000142D4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004B9C8(uint64_t a1)
{
  if (!qword_1000ABB98)
  {
    type metadata accessor for EventCategory();
    sub_10004C88C(&qword_1000AB718, &type metadata accessor for EventCategory, &protocol conformance descriptor for EventCategory);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_1000ABB98);
    }
  }
}

uint64_t sub_10004BA70(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for DatabaseConfiguration();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_15;
  }

  v13 = type metadata accessor for URL();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v14 = type metadata accessor for DigestRecord.Encoding();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[11];
    goto LABEL_15;
  }

  v15 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[12];
    goto LABEL_15;
  }

  v17 = type metadata accessor for Configuration.TargetCloudKitZone();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[13];

  return v18(v19, a2, v17);
}

uint64_t sub_10004BCD4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for DatabaseConfiguration();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_13;
  }

  v13 = type metadata accessor for URL();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v14 = type metadata accessor for DigestRecord.Encoding();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_13;
  }

  v15 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[12];
    goto LABEL_13;
  }

  v17 = type metadata accessor for Configuration.TargetCloudKitZone();
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[13];

  return v18(v19, a2, a2, v17);
}

void sub_10004BF24(uint64_t a1)
{
  sub_10004C074();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for DatabaseConfiguration();
      if (v3 <= 0x3F)
      {
        type metadata accessor for URL();
        if (v4 <= 0x3F)
        {
          sub_10004C0D8(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for QualityOfService(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for DigestRecord.Encoding();
              if (v7 <= 0x3F)
              {
                sub_10004C13C(319, &unk_1000ABC50, &type metadata accessor for Date);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Configuration.TargetCloudKitZone();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10004C074()
{
  result = qword_1000ABC38;
  if (!qword_1000ABC38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000ABC38);
  }

  return result;
}

void sub_10004C0D8(uint64_t a1)
{
  if (!qword_1000ABC40)
  {
    sub_100003988(&qword_1000ABC48, &qword_1000871F8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000ABC40);
    }
  }
}

void sub_10004C13C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10004C190@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v31 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v32 = &v30 - v11;
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = *(v7 + 16);
  v14(&v30 - v12, a1, v6);
  v15 = URL.hasDirectoryPath.getter();
  v33 = v7;
  v16 = *(v7 + 8);
  v16(v13, v6);
  if (v15)
  {
    v17 = v32;
    v14(v32, a1, v6);
    v36 = 0xD000000000000010;
    v37 = 0x8000000100089680;
    v18 = *(v3 + 104);
    v30 = a1;
    v19 = v31;
    v18(v5, enum case for URL.DirectoryHint.notDirectory(_:), v31);
    sub_100013D50();
    URL.appending<A>(path:directoryHint:)();
    v20 = v19;
    a1 = v30;
    (*(v3 + 8))(v5, v20);
    v16(v17, v6);
    (*(v33 + 40))(a1, v13, v6);
  }

  v21 = v34;
  v22 = a1;
  v14(v34, a1, v6);
  v23 = URL.pathExtension.getter();
  v25 = v24;
  v16(v21, v6);
  if (v23 == 0x766D682E6E6F736ALL && v25 == 0xE90000000000007ALL)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      v28 = v32;
      v14(v32, v22, v6);
      URL.appendingPathExtension(_:)();
      v16(v28, v6);
      (*(v33 + 40))(v22, v13, v6);
    }
  }

  return (v14)(v35, v22, v6);
}

id sub_10004C558(uint64_t a1)
{
  v3 = [objc_allocWithZone(CKOperationGroup) init];
  v14[2] = 0;
  v14[3] = 0xE000000000000000;
  v14[0] = 47;
  v14[1] = 0xE100000000000000;
  v13[2] = v14;
  if (sub_100022238(0x7FFFFFFFFFFFFFFFLL, 1, sub_10004C9F8, v13, 0xD000000000000037, 0x80000001000896A0, "digest.json.hmvz")[2])
  {

    v4 = static String._fromSubstring(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    String.append(_:)(v7);

    v8._countAndFlagsBits = 46;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v14[0] = v1;
    swift_getMetatypeMetadata();
    v9._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v9);

    v10 = String._bridgeToObjectiveC()();

    [v3 setName:v10];

    result = [v3 defaultConfiguration];
    if (result)
    {
      v12 = result;
      [result setContainer:a1];

      return v3;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C724()
{
  type metadata accessor for EventDigestController();
  sub_10004C88C(&qword_1000ABCA0, type metadata accessor for EventDigestController, &unk_1000877F8);
  result = static LoggedObject.logCategory.getter();
  qword_1000AC490 = result;
  *algn_1000AC498 = v1;
  return result;
}

uint64_t sub_10004C798(uint64_t a1, uint64_t a2)
{
  _s15DefaultDelegateCMa(0);
  sub_10004C88C(&qword_1000AAFE8, _s15DefaultDelegateCMa, &unk_100087240);

  return static LoggedObject<>.logger.getter();
}

uint64_t sub_10004C824()
{
  if (qword_1000AAA58 != -1)
  {
    swift_once();
  }

  v0 = qword_1000AC490;

  return v0;
}

uint64_t sub_10004C88C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004C8D4(uint64_t a1, uint64_t a2)
{
  v4 = _s15DefaultDelegateC13ConfigurationVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004C938(uint64_t a1)
{
  v2 = _s15DefaultDelegateC13ConfigurationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004C994(uint64_t a1, uint64_t a2)
{
  v4 = _s15DefaultDelegateC13ConfigurationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_10004CA18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_10003E6D8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10000CED0(&unk_1000ABDA0, qword_1000872A0);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10003E6D8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10004DBDC(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10004CB28(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_10004CB9C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s8ListenerCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10004CCC0(uint64_t a1, void *a2, uint64_t a3)
{
  v105 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v107 = v5;
  v108 = v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v103 = &v97 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v97 - v13;
  __chkstk_darwin(v12);
  v16 = &v97 - v15;
  v104 = sub_10004DB14();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_33;
  }

  v17 = (a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_features);
  sub_10000D224((a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_features), *(a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_features + 24));
  if ((dispatch thunk of FeaturesDataSource.isInternalBuild.getter() & 1) == 0)
  {
    sub_10000D224(v17, v17[3]);
    if ((dispatch thunk of FeaturesDataSource.isActivityHistory2025Enabled.getter() & 1) == 0)
    {
      sub_10000E874();
      static LoggedObject.logger.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Ignoring connection on this platform", v36, 2u);
      }

      (*(v108 + 8))(v9, v107);
      return 0;
    }
  }

  if (*(a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_isCoreDataSetUp) != 1)
  {
    sub_10000E874();
    static LoggedObject.logger.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Ignoring connection when core data has not been set up", v33, 2u);
    }

    (*(v108 + 8))(v16, v107);
    return 0;
  }

  v18 = *(a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_listener);
  os_unfair_lock_lock((v18 + 32));
  v19 = *(v18 + 16);
  os_unfair_lock_unlock((v18 + 32));
  if (v19)
  {
    v20 = v19 == a1;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    sub_10000E874();
    static LoggedObject.logger.getter();
    v21 = v105;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v110 = v25;
      *v24 = 136446210;
      v26 = [v21 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_100035120(v27, v29, &v110);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Ignoring connection for a different listener: %{public}s", v24, 0xCu);
      sub_10000D330(v25);
    }

    (*(v108 + 8))(v14, v107);
    return 0;
  }

  v38 = v105;
  v98 = (*(a3 + OBJC_IVAR____TtC11homeeventsd9XPCServer_proxyConnectionFactory))(v105, v104, Strong, v17);
  v39 = objc_opt_self();
  v40 = [v39 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13HomeKitEvents18XPCClientInterface_];
  [v38 setRemoteObjectInterface:v40];

  v41 = [v39 interfaceWithProtocol:&OBJC_PROTOCOL____TtP13HomeKitEvents18XPCServerInterface_];
  v42 = sub_10000CED0(&qword_1000ABD70, &qword_100087298);
  inited = swift_initStackObject();
  v101 = xmmword_100085F30;
  *(inited + 16) = xmmword_100085F30;
  v44 = sub_10000D544(0, &qword_1000ABD78, NSArray_ptr);
  *(inited + 32) = v44;
  v102 = sub_10000D544(0, &qword_1000ABD80, NSUUID_ptr);
  *(inited + 40) = v102;
  sub_10004CA18(inited);
  v45 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v47 = [v45 initWithArray:isa];

  v110 = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  if (!v110)
  {
    __break(1u);
    goto LABEL_29;
  }

  swift_setDeallocating();

  v48 = Set._bridgeToObjectiveC()().super.isa;

  v100 = v41;
  [v41 setClasses:v48 forSelector:"hmvutilClearEventsWithHomes:deleteCloudZones:reply:" argumentIndex:0 ofReply:0];

  v99 = v42;
  v49 = swift_initStackObject();
  *(v49 + 16) = v101;
  v50 = v102;
  *(v49 + 32) = v44;
  *(v49 + 40) = v50;
  sub_10004CA18(v49);
  v51 = objc_allocWithZone(NSSet);
  v52 = Array._bridgeToObjectiveC()().super.isa;

  v53 = [v51 initWithArray:v52];

  v110 = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  if (!v110)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_setDeallocating();

  v54 = Set._bridgeToObjectiveC()().super.isa;

  v55 = v100;
  [v100 setClasses:v54 forSelector:"clearEventsWithHomes:deleteCloudZones:reply:" argumentIndex:0 ofReply:0];

  v56 = swift_initStackObject();
  *(v56 + 16) = v101;
  v57 = v102;
  *(v56 + 32) = v44;
  *(v56 + 40) = v57;
  sub_10004CA18(v56);
  v58 = objc_allocWithZone(NSSet);
  v59 = Array._bridgeToObjectiveC()().super.isa;

  v60 = [v58 initWithArray:v59];

  v110 = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  if (!v110)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  swift_setDeallocating();

  v61 = Set._bridgeToObjectiveC()().super.isa;

  [v55 setClasses:v61 forSelector:"hmvutilClearLocalDatabaseWithHomes:reply:" argumentIndex:0 ofReply:0];

  v62 = swift_initStackObject();
  *(v62 + 16) = v101;
  v63 = sub_10000D544(0, &qword_1000ABD88, NSSet_ptr);
  v64 = v102;
  *(v62 + 32) = v63;
  *(v62 + 40) = v64;
  sub_10004CA18(v62);
  v65 = objc_allocWithZone(NSSet);
  v66 = Array._bridgeToObjectiveC()().super.isa;

  v67 = [v65 initWithArray:v66];

  v110 = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  v68 = v98;
  if (!v110)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  swift_setDeallocating();

  v69 = Set._bridgeToObjectiveC()().super.isa;

  v70 = v100;
  [v100 setClasses:v69 forSelector:"clearEnergyKitDataWithPrivateHomeIdentifiers:sharedHomeIdentifiers:deletePrivateCloudZones:reply:" argumentIndex:0 ofReply:0];

  v71 = swift_initStackObject();
  *(v71 + 16) = xmmword_100085C80;
  v72 = sub_10000D544(0, &qword_1000ABD90, NSDictionary_ptr);
  v73 = v102;
  *(v71 + 32) = v72;
  *(v71 + 40) = v73;
  *(v71 + 48) = sub_10000D544(0, &qword_1000ABD98, NSError_ptr);
  sub_10004CA18(v71);
  v74 = objc_allocWithZone(NSSet);
  v75 = Array._bridgeToObjectiveC()().super.isa;

  v76 = [v74 initWithArray:v75];

  v110 = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  if (!v110)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  swift_setDeallocating();

  v77 = Set._bridgeToObjectiveC()().super.isa;

  [v70 setClasses:v77 forSelector:"clearEnergyKitDataWithPrivateHomeIdentifiers:sharedHomeIdentifiers:deletePrivateCloudZones:reply:" argumentIndex:0 ofReply:1];

  v78 = v70;
  v79 = v105;
  [v105 setExportedInterface:v78];
  v113 = swift_getObjectType();
  v110 = v68;
  swift_unknownObjectRetain();
  v80 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000D330(&v110);
  [v79 setExportedObject:v80];
  swift_unknownObjectRelease();
  v81 = swift_allocObject();
  v82 = v104;
  *(v81 + 24) = v104;
  swift_unknownObjectWeakInit();
  v114 = sub_10004DBB4;
  v115 = v81;
  v110 = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_10004CB28;
  v113 = &unk_1000A2FC0;
  v83 = _Block_copy(&v110);

  [v79 setInterruptionHandler:v83];
  _Block_release(v83);

  v84 = swift_allocObject();
  *(v84 + 24) = v82;
  swift_unknownObjectWeakInit();
  v114 = sub_10004DBD4;
  v115 = v84;
  v110 = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_10004CB28;
  v113 = &unk_1000A2FE8;
  v85 = _Block_copy(&v110);

  [v79 setInvalidationHandler:v85];
  _Block_release(v85);

  [v79 activate];
  sub_10000E874();
  v86 = v103;
  static LoggedObject.logger.getter();
  v87 = v79;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v110 = v91;
    *v90 = 136446210;
    v92 = [v87 description];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96 = sub_100035120(v93, v95, &v110);

    *(v90 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v88, v89, "Accepted new connection: %{public}s", v90, 0xCu);
    sub_10000D330(v91);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v108 + 8))(v86, v107);
  return 1;
}

unint64_t sub_10004DB14()
{
  result = qword_1000ABD58;
  if (!qword_1000ABD58)
  {
    sub_10000D544(255, &qword_1000ABD60, NSXPCConnection_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ABD58);
  }

  return result;
}

uint64_t sub_10004DB7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004DBBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_10004DBDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_10004DC1C@<D0>(_OWORD *a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 valueForEntitlement:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_10004DCAC(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v4 = sub_10000D224(a1, a1[3]);
    v5 = *(v2 - 8);
    __chkstk_darwin(v4);
    v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v7, v2);
    sub_10000D330(a1);
  }

  else
  {
    v8 = 0;
  }

  [v1 setExportedObject:v8];
  return swift_unknownObjectRelease();
}

uint64_t sub_10004DDE0()
{
  v1 = [objc_allocWithZone(HMFProcessInfo) initWithXPCConnection:v0];
  v2 = [v1 signingIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10004DE6C(uint64_t a1)
{
  result = sub_10004DE94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004DE94()
{
  result = qword_1000ABDB0;
  if (!qword_1000ABDB0)
  {
    sub_10004DEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ABDB0);
  }

  return result;
}

unint64_t sub_10004DEEC()
{
  result = qword_1000ABD60;
  if (!qword_1000ABD60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000ABD60);
  }

  return result;
}

uint64_t sub_10004DF38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - v10;
  result = __chkstk_darwin(v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_10002F2E4(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004E154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100013358(a3, v22 - v9, &qword_1000AAD30, &qword_100085540);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000D620(v10, &qword_1000AAD30, &qword_100085540);
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

      sub_10000CED0(&qword_1000AB8A8, &unk_100086CF0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000D620(a3, &qword_1000AAD30, &qword_100085540);

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

  sub_10000D620(a3, &qword_1000AAD30, &qword_100085540);
  sub_10000CED0(&qword_1000AB8A8, &unk_100086CF0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10004E410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100013358(a3, v22 - v9, &qword_1000AAD30, &qword_100085540);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000D620(v10, &qword_1000AAD30, &qword_100085540);
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

      sub_10000D620(a3, &qword_1000AAD30, &qword_100085540);

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

  sub_10000D620(a3, &qword_1000AAD30, &qword_100085540);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_10004E6BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_weakInit();
  sub_10000D2CC(a1, (v4 + 5));
  v4[2] = a2;
  v4[3] = a3;
  swift_weakAssign();
  v9 = *(a4 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties);
  if (v9)
  {
    v10 = *(a4 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties + 8);
    swift_unknownObjectRetain();
    sub_10005F608(v9, v10);
    v11 = v9;
    v12 = static Constants.maxCloudKitRecordsPerOperation.getter();
    v13 = type metadata accessor for CoreDataDatabase();
    v14 = swift_allocObject();
    v15 = [v11 newBackgroundContext];

    *(v14 + 16) = v15;
    *(v14 + 24) = v12;
    *(v14 + 32) = 0;
    v18 = v13;
    v19 = &off_1000A42B8;
    swift_unknownObjectRelease();

    *&v17 = v14;
    sub_10000D330(a1);
    sub_1000111BC(&v17, (v4 + 10));
    v4[15] = v10;

    return v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004E840()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();
  sub_10000D330((v0 + 40));
  sub_10000D330((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_10004E8BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a3;
  v9 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v9 - 8);
  v39 = &v36 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v40 = v16;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = a1;
    *&v43[0] = v19;
    v20 = a2;
    v21 = v19;
    *v18 = 136315394;

    sub_10000CED0(&unk_1000ABED0, &qword_1000874F8);
    v22 = String.init<A>(describing:)();
    v24 = sub_100035120(v22, v23, v43);
    v37 = v11;
    v25 = v24;

    *(v18 + 4) = v25;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v20 & 1;
    _os_log_impl(&_mh_execute_header, v15, v40, "calling clearEvents(%s, %{BOOL}d)", v18, 0x12u);
    sub_10000D330(v21);

    a4 = v38;

    (*(v12 + 8))(v14, v37);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
    v20 = a2;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v41;
  *(v26 + 24) = a4;

  v27 = sub_10004ED44(1, sub_10005D844, v26);

  if (v27)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v29 = result;
      v30 = v5;
      v31 = type metadata accessor for TaskPriority();
      v32 = *(*(v31 - 8) + 56);
      v33 = v39;
      v32(v39, 1, 1, v31);
      v34 = swift_allocObject();
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      *(v34 + 32) = v29;
      *(v34 + 40) = 0;
      sub_100080ECC(0, 0, v33, &unk_100087580, v34);

      v32(v33, 1, 1, v31);
      sub_10000D2CC(v30 + 80, v43);
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      *(v35 + 24) = 0;
      *(v35 + 32) = a1;
      *(v35 + 40) = v20 & 1;
      sub_1000111BC(v43, v35 + 48);
      *(v35 + 88) = v41;
      *(v35 + 96) = a4;

      sub_100080ECC(0, 0, v33, &unk_100087590, v35);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10004ED44(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v8 - 8);
  v10 = &v74 - v9;
  v11 = type metadata accessor for Logger();
  v12 = __chkstk_darwin(v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v16 = __chkstk_darwin(v15);
  v75 = &v74 - v17;
  v18 = __chkstk_darwin(v16);
  v76 = a1;
  v82 = a2;
  v83 = a3;
  v84 = v10;
  v80 = v18;
  v81 = v21;
  if (a1)
  {
    if (a1 == 1)
    {
      v22 = "ricted to internal devices";
      v23 = 0xD000000000000026;
    }

    else
    {
      v22 = " has no coordinator";
      v23 = 0xD000000000000028;
    }
  }

  else
  {
    v23 = 0xD000000000000025;
    v22 = "e.home.hindsight.write";
  }

  v74 = "e.home.hindsight.write";
  v77 = &v74 - v19;
  v78 = v20;
  v24 = v22 | 0x8000000000000000;
  *&v88[0] = v23;
  *(&v88[0] + 1) = v22 | 0x8000000000000000;
  *&v86 = 46;
  *(&v86 + 1) = 0xE100000000000000;
  sub_100013D50();
  v25 = (StringProtocol.components<A>(separatedBy:)() + 16);
  if (*v25)
  {
    v26 = &v25[2 * *v25];
    v27 = v26[1];
    v79 = *v26;

    v28 = v4[3];
    ObjectType = swift_getObjectType();
    v30 = *(v28 + 32);
    swift_unknownObjectRetain();
    v30(&v86, v23, v24, ObjectType, v28);
    swift_unknownObjectRelease();

    if (v87)
    {
      sub_10004DBDC(&v86, v88);
      sub_10000CFA0(v88, &v86);
      sub_10005CF58();
      if (swift_dynamicCast())
      {
        v31 = v85[0];
        if ([v85[0] BOOLValue])
        {
          if (v76 && v76 != 1)
          {
          }

          else
          {
            v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v63 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          sub_10000D224(v4 + 5, v4[8]);
          if (dispatch thunk of FeaturesDataSource.isInternalBuild.getter())
          {
LABEL_29:
            sub_10000D330(v88);

            return 1;
          }

          type metadata accessor for XPCServer();
          sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
          v65 = v75;
          static LoggedObject.logger.getter();

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v86 = v69;
            *v68 = 136446210;
            v70 = sub_100035120(v79, v27, &v86);

            *(v68 + 4) = v70;
            _os_log_impl(&_mh_execute_header, v66, v67, "Denying %{public}s privilege because the device does not have an internal build", v68, 0xCu);
            sub_10000D330(v69);
          }

          else
          {
          }

          (*(v81 + 8))(v65, v80);
          v50 = v82;
          v49 = v83;
          v60 = 0x8000000100089930;
          sub_10005CCD4();
          v51 = swift_allocError();
          v62 = 0xD00000000000002ALL;
        }

        else
        {
          type metadata accessor for XPCServer();
          sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
          v53 = v77;
          static LoggedObject.logger.getter();

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            *&v86 = v57;
            *v56 = 136446210;
            v58 = sub_100035120(v79, v27, &v86);

            *(v56 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v54, v55, "Denying %{public}s privilege because the entitlement was NO", v56, 0xCu);
            sub_10000D330(v57);
          }

          else
          {
          }

          (*(v81 + 8))(v53, v80);
          v50 = v82;
          v49 = v83;
          v60 = 0x8000000100089910;
          sub_10005CCD4();
          v51 = swift_allocError();
          v62 = 0xD000000000000017;
        }

        *v61 = v62;
        *(v61 + 8) = v60;
        *(v61 + 16) = 1;
        swift_willThrow();
      }

      else
      {
        type metadata accessor for XPCServer();
        sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
        v37 = v78;
        static LoggedObject.logger.getter();
        sub_10000CFA0(v88, &v86);

        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v85[0] = swift_slowAlloc();
          *v40 = 136446466;
          v41 = sub_100035120(v79, v27, v85);

          *(v40 + 4) = v41;
          *(v40 + 12) = 2080;
          v42 = sub_10000D224(&v86, v87);
          __chkstk_darwin(v42);
          (*(v44 + 16))(&v74 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
          v45 = String.init<A>(describing:)();
          v47 = v46;
          sub_10000D330(&v86);
          v48 = sub_100035120(v45, v47, v85);

          *(v40 + 14) = v48;
          _os_log_impl(&_mh_execute_header, v38, v39, "Denying %{public}s privilege because the entitlement wasn't a number: %s", v40, 0x16u);
          swift_arrayDestroy();

          (*(v81 + 8))(v37, v80);
        }

        else
        {

          (*(v81 + 8))(v37, v80);
          sub_10000D330(&v86);
        }

        v50 = v82;
        v49 = v83;
        sub_10005CCD4();
        v51 = swift_allocError();
        *v59 = 0xD000000000000016;
        *(v59 + 8) = 0x80000001000898F0;
        *(v59 + 16) = 1;
        swift_willThrow();
      }

      sub_10000D330(v88);
    }

    else
    {
      sub_10000D620(&v86, &qword_1000ABEB8, &qword_1000873A0);
      type metadata accessor for XPCServer();
      sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
      static LoggedObject.logger.getter();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v88[0] = v35;
        *v34 = 136446210;
        v36 = sub_100035120(v79, v27, v88);

        *(v34 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v32, v33, "Denying %{public}s privilege because the connection has no entitlement", v34, 0xCu);
        sub_10000D330(v35);
      }

      else
      {
      }

      (*(v81 + 8))(v14, v80);
      v50 = v82;
      v49 = v83;
      sub_10005CCD4();
      v51 = swift_allocError();
      *v52 = 0xD000000000000013;
      *(v52 + 8) = 0x80000001000898D0;
      *(v52 + 16) = 1;
      swift_willThrow();
    }

    v71 = type metadata accessor for TaskPriority();
    v72 = v84;
    (*(*(v71 - 8) + 56))(v84, 1, 1, v71);
    v73 = swift_allocObject();
    v73[2] = 0;
    v73[3] = 0;
    v73[4] = v50;
    v73[5] = v49;
    v73[6] = v51;

    sub_100080ECC(0, 0, v72, &unk_1000873B0, v73);

    return 0;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_10004F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_10004FA28;

  return sub_10001C164(a4, a5, a6);
}

uint64_t sub_10004FA28()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_10004FBA4;
  }

  else
  {
    v2 = sub_10004FB3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004FB3C()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004FBA4()
{
  v1 = v0[5];
  v2 = v0[2];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

void sub_10004FC64(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_10004FCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v16;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_10004FDA0;

  return sub_100063B14(a4, a5, a6, a7);
}

uint64_t sub_10004FDA0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_10005F794;
  }

  else
  {
    v2 = sub_10005F7E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a3;
  v57 = a2;
  v54 = a1;
  v9 = type metadata accessor for UUID();
  v59 = *(v9 - 8);
  v60 = v9;
  __chkstk_darwin(v9);
  v55 = v10;
  v62 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Date();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = v11;
  v61 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v19, v20, "calling createFakeEvents(%ld events)", v21, 0xCu);
  }

  (*(v16 + 8))(v18, v15);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;

  v23 = sub_10004ED44(1, sub_10005F7E8, v22);

  if (v23)
  {
    v51 = a4;
    v52 = a5;
    result = swift_weakLoadStrong();
    if (result)
    {
      v25 = result;
      v26 = type metadata accessor for TaskPriority();
      v27 = *(*(v26 - 8) + 56);
      v27(v14, 1, 1, v26);
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = v25;
      *(v28 + 40) = 1;
      v50 = v14;
      sub_100080ECC(0, 0, v14, &unk_100087550, v28);

      v29 = *(v6 + 24);
      ObjectType = swift_getObjectType();
      v31 = *(v29 + 160);
      swift_unknownObjectRetain();
      v32 = v31(ObjectType, v29);
      v34 = v33;
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = v32;
      }

      else
      {
        v35 = 0x436E776F6E6B6E75;
      }

      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = 0xED0000746E65696CLL;
      }

      type metadata accessor for EventUploadRequestLogEvent();
      sub_10005F7F0(v35, v36, v63, 1);

      v49 = *(v6 + 120);
      v27(v14, 1, 1, v26);
      v37 = v56;
      v38 = v58;
      (*(v56 + 16))(v61, v54, v58);
      v40 = v59;
      v39 = v60;
      (*(v59 + 16))(v62, v57, v60);
      v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v42 = (v53 + *(v40 + 80) + v41) & ~*(v40 + 80);
      v43 = (v55 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      *(v45 + 16) = 0;
      *(v45 + 24) = 0;
      (*(v37 + 32))(v45 + v41, v61, v38);
      (*(v40 + 32))(v45 + v42, v62, v39);
      *(v45 + v43) = v63;
      *(v45 + v44) = v49;
      v46 = (v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8));
      v47 = v52;
      *v46 = v51;
      v46[1] = v47;

      sub_100080ECC(0, 0, v50, &unk_100087560, v45);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10005055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v16;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_10004FDA0;

  return sub_100047450(a4, a5, a6, a7);
}

uint64_t sub_10005082C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = a4;
  v11 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v11 - 8);
  v46 = &v40[-v12];
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for XPCServer();
  sub_10005E474(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = os_log_type_enabled(v17, v18);
  v47 = a3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v45 = a5;
    v21 = v20;
    v43 = swift_slowAlloc();
    *&v50[0] = v43;
    *v21 = 136315650;
    type metadata accessor for UUID();
    v44 = v13;
    sub_10005E474(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = v14;
    v22 = Set.description.getter();
    v41 = v18;
    v24 = a1;
    v25 = sub_100035120(v22, v23, v50);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = Set.description.getter();
    v28 = sub_100035120(v26, v27, v50);

    *(v21 + 14) = v28;
    a1 = v24;
    LOBYTE(v24) = v47;
    *(v21 + 22) = 1024;
    *(v21 + 24) = v24 & 1;
    _os_log_impl(&_mh_execute_header, v17, v41, "calling clearEnergyKitData(%s, %s, %{BOOL}d)", v21, 0x1Cu);
    swift_arrayDestroy();

    a5 = v45;

    (*(v42 + 8))(v16, v44);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v29 = swift_allocObject();
  v29[2] = a1;
  v29[3] = a2;
  v29[4] = v48;
  v29[5] = a5;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10005ECE0;
  *(v30 + 24) = v29;

  v31 = sub_10004ED44(1, sub_10005D844, v30);

  if ((v31 & 1) == 0)
  {
  }

  v32 = a1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v34 = result;
    v35 = type metadata accessor for TaskPriority();
    v36 = *(*(v35 - 8) + 56);
    v37 = v46;
    v36(v46, 1, 1, v35);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v38 + 32) = v34;
    *(v38 + 40) = 0;
    sub_100080ECC(0, 0, v37, &unk_100087530, v38);

    v36(v37, 1, 1, v35);
    sub_10000D2CC(v6 + 40, v50);
    sub_10000D2CC(v6 + 80, v49);
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    sub_1000111BC(v50, v39 + 32);
    *(v39 + 72) = v32;
    *(v39 + 80) = a2;
    *(v39 + 88) = v47 & 1;
    sub_1000111BC(v49, v39 + 96);
    *(v39 + 136) = v48;
    *(v39 + 144) = a5;

    sub_100080ECC(0, 0, v37, &unk_100087540, v39);
  }

  __break(1u);
  return result;
}

uint64_t sub_100050DB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v116 = type metadata accessor for UUID();
  v10 = *(v116 - 8);
  v11 = __chkstk_darwin(v116);
  v108 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v104 = v102 - v14;
  v15 = __chkstk_darwin(v13);
  v109 = v102 - v16;
  __chkstk_darwin(v15);
  v106 = v102 - v17;
  v118 = &_swiftEmptyDictionarySingleton;
  v18 = *(a2 + 16);
  v110 = a3;
  v19 = *(a3 + 16);
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    goto LABEL_63;
  }

  v102[1] = a5;
  v103 = a4;
  sub_10000CED0(&qword_1000AB3D0, &qword_100086288);
  Dictionary.reserveCapacity(_:)(v20);
  v21 = a2 + 56;
  v22 = 1 << *(a2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a2 + 56);
  v25 = (v22 + 63) >> 6;
  v115 = v10 + 16;
  v112 = (v10 + 8);
  v113 = v10 + 32;

  v26 = 0;
  v114 = a1;
  v111 = v10;
  v27 = v109;
  v105 = a2;
  while (v24)
  {
    v28 = a1;
LABEL_13:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = *(a2 + 48);
    v32 = *(v10 + 72);
    v33 = v106;
    v34 = v116;
    v107 = *(v10 + 16);
    v107(v106, v31 + v32 * (v30 | (v26 << 6)), v116);
    (*(v10 + 32))(v27, v33, v34);
    a1 = v28;
    if (v28)
    {
      swift_errorRetain();
      v35 = v118;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v35;
      v38 = sub_10007B6C4(v27);
      v39 = v35[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_59;
      }

      v42 = v37;
      if (v35[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v45 = v117;
          if (v37)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_10007F178();
          v45 = v117;
          if (v42)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_10007C614(v41, isUniquelyReferenced_nonNull_native);
        v43 = sub_10007B6C4(v109);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_64;
        }

        v38 = v43;
        v45 = v117;
        if (v42)
        {
LABEL_5:
          a1 = v114;
          *(v45[7] + 8 * v38) = v114;

          v27 = v109;
          (*v112)(v109, v116);
          goto LABEL_6;
        }
      }

      v45[(v38 >> 6) + 8] |= 1 << v38;
      v53 = v45[6] + v38 * v32;
      v54 = v109;
      v55 = v116;
      v107(v53, v109, v116);
      a1 = v114;
      *(v45[7] + 8 * v38) = v114;
      v27 = v54;
      (*v112)(v54, v55);
      v56 = v45[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_61;
      }

      v45[2] = v58;
LABEL_6:
      v118 = v45;
      v10 = v111;
      a2 = v105;
    }

    else
    {
      v46 = v118;
      v47 = sub_10007B6C4(v27);
      if (v48)
      {
        v49 = v47;
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v117 = v46;
        if (!v50)
        {
          sub_10007F178();
          v46 = v117;
        }

        v51 = *(v46 + 48) + v49 * v32;
        v52 = *v112;
        (*v112)(v51, v116);

        sub_10005A280(v49, v46);
        v27 = v109;
        v52(v109, v116);
        v118 = v46;
        a2 = v105;
      }

      else
      {
        (*v112)(v27, v116);
        a2 = v105;
      }
    }
  }

  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v29 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v29);
    ++v26;
    if (v24)
    {
      v28 = a1;
      v26 = v29;
      goto LABEL_13;
    }
  }

  v59 = v110 + 56;
  v60 = 1 << *(v110 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v110 + 56);
  v63 = (v60 + 63) >> 6;

  v64 = 0;
LABEL_33:
  v65 = v108;
  while (v62)
  {
LABEL_39:
    v67 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
    v68 = v111;
    v69 = *(v111 + 72);
    v70 = *(v111 + 16);
    v71 = v104;
    v72 = v116;
    v70(v104, *(v110 + 48) + v69 * (v67 | (v64 << 6)), v116);
    (*(v68 + 32))(v65, v71, v72);
    if (v114)
    {
      swift_errorRetain();
      v73 = v118;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v65;
      v76 = v74;
      v117 = v73;
      v77 = sub_10007B6C4(v75);
      v79 = v73[2];
      v80 = (v78 & 1) == 0;
      v57 = __OFADD__(v79, v80);
      v81 = v79 + v80;
      if (v57)
      {
        goto LABEL_60;
      }

      v82 = v78;
      if (v73[3] >= v81)
      {
        if ((v76 & 1) == 0)
        {
          v93 = v77;
          sub_10007F178();
          v77 = v93;
        }

        v65 = v108;
        v84 = v117;
        if ((v82 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_10007C614(v81, v76);
        v65 = v108;
        v77 = sub_10007B6C4(v108);
        if ((v82 & 1) != (v83 & 1))
        {
          goto LABEL_64;
        }

        v84 = v117;
        if ((v82 & 1) == 0)
        {
LABEL_54:
          v84[(v77 >> 6) + 8] |= 1 << v77;
          v94 = v77;
          v95 = v84[6] + v77 * v69;
          v96 = v65;
          v97 = v65;
          v98 = v116;
          v70(v95, v96, v116);
          *(v84[7] + 8 * v94) = v114;
          (*v112)(v97, v98);
          v99 = v84[2];
          v57 = __OFADD__(v99, 1);
          v100 = v99 + 1;
          if (v57)
          {
            goto LABEL_62;
          }

          v84[2] = v100;
          v118 = v84;
          goto LABEL_33;
        }
      }

      *(v84[7] + 8 * v77) = v114;

      (*v112)(v65, v116);
      v118 = v84;
    }

    else
    {
      v85 = v118;
      v86 = sub_10007B6C4(v65);
      if (v87)
      {
        v88 = v86;
        v89 = swift_isUniquelyReferenced_nonNull_native();
        v117 = v85;
        if (!v89)
        {
          sub_10007F178();
          v85 = v117;
        }

        v90 = *v112;
        v91 = v116;
        (*v112)(*(v85 + 48) + v88 * v69, v116);

        sub_10005A280(v88, v85);
        v92 = v108;
        v90(v108, v91);
        v65 = v92;
        v118 = v85;
      }

      else
      {
        (*v112)(v65, v116);
      }
    }
  }

  while (1)
  {
    v66 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v66 >= v63)
    {

      v103(v118);
    }

    v62 = *(v59 + 8 * v66);
    ++v64;
    if (v62)
    {
      v64 = v66;
      goto LABEL_39;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}