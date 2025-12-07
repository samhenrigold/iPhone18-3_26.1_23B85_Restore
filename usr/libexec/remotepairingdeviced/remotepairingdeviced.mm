void sub_10000C200(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10000C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  remote_device_cancel();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v5 = sub_10000C44C(a2);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = static os_log_type_t.default.getter();
    v8 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v7))
    {
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136446466;
      remote_device_get_name();
      v10 = String.init(cString:)();
      v12 = sub_10000C600(v10, v11, &v16);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2082;
      v13 = dispatch thunk of RemoteXPCControlChannelTransport.id.getter();
      v15 = sub_10000C600(v13, v14, &v16);

      *(v9 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v8, v7, "RSD device %{public}s associated with control channel %{public}s became disconnected. Invalidating control channel", v9, 0x16u);
      swift_arrayDestroy();
    }

    dispatch thunk of RemoteXPCControlChannelTransport.invalidate()();
  }

  return result;
}

uint64_t sub_10000C44C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000C518(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v7 = *(*v1 + 24);
  sub_100013414(&qword_10009BE28, &qword_100078B58);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(*(v10 + 56) + 8 * v5);
  sub_10000C5BC();
  _NativeDictionary._delete(at:)();
  *v2 = v10;
  return v8;
}

unint64_t sub_10000C518(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_10000C55C(a1, v2);
}

unint64_t sub_10000C55C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_10000C5BC()
{
  result = qword_10009BE30;
  if (!qword_10009BE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009BE30);
  }

  return result;
}

unint64_t sub_10000C600(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C828(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000CA80(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10000CADC(v11);
  return v7;
}

id *sub_10000C6C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000C710(a1, a2);
  sub_10000C99C(&off_10008EA60);
  return v3;
}

id *sub_10000C710(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10000C928(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 4);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10000C828(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000C6C4(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

id *sub_10000C928(uint64_t a1, uint64_t a2)
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

  sub_100013414(&unk_10009B740, &unk_100078770);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_10000C99C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100054BF8(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000CA80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000CADC(void *a1)
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

uint64_t sub_10000CC48(uint64_t result)
{
  *(v2 - 128) = v1;
  *(v2 - 120) = result;
  *(v2 - 160) = _NSConcreteStackBlock;
  *(v2 - 152) = v3;
  return result;
}

uint64_t sub_10000CCE4()
{
}

BOOL sub_10000CD2C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000CD44(uint64_t result)
{
  *(v2 + 4) = result;
  *(v2 + 12) = 1024;
  *(v2 + 14) = v1;
  return result;
}

uint64_t sub_10000CD58()
{
}

uint64_t sub_10000CD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_beginAccess();
      sub_10000CE94(v5);
      swift_endAccess();

      sub_10000D9E8();
      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        remote_device_cancel();
      }
    }
  }

  return result;
}

uint64_t sub_10000D030()
{

  return swift_slowAlloc();
}

uint64_t sub_10000D078()
{
}

uint64_t sub_10000D0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return Error<>.init(_:_:)();
}

uint64_t sub_10000D0E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D128(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D1B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10000D254(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t sub_10000D2D0()
{

  return swift_getObjectType();
}

void sub_10000D334(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_10000D380()
{

  return Error<>.init(_:_:)();
}

uint64_t sub_10000D3B0()
{
}

uint64_t sub_10000D3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_10000D40C()
{
  **(v1 - 264) = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000D444(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_10000D464()
{

  return swift_slowAlloc();
}

uint64_t sub_10000D488(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void sub_10000D4BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

uint64_t sub_10000D524(uint64_t a1)
{

  return swift_allocError();
}

void sub_10000D56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_100045AC4();
}

uint64_t sub_10000D5AC(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_10000D5D8(unint64_t *a1)
{

  return sub_100073058(a1, v1, &protocol conformance descriptor for RemotePairingError);
}

void sub_10000D624(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_10000D640()
{
  v3 = *(*(v0 + v1) + 16);

  sub_10005403C(v3);
}

double sub_10000D688(uint64_t a1, uint64_t a2)
{

  return sub_10004C55C(a1, a2, v3, (v2 + 112));
}

unint64_t sub_10000D6B4(unint64_t result, void (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = result;
  v7 = *v5;
  v8 = *v5 + 56;
  v9 = -1 << *(*v5 + 32);
  v10 = (result + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v14 = ~v9;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v16 = (v15 + 1) & v14;
      a2(0);
      sub_10000D200(a3, a4, a5);
      do
      {
        v17 = dispatch thunk of Hashable._rawHashValue(seed:)() & v14;
        if (v6 >= v16)
        {
          if (v17 >= v16 && v6 >= v17)
          {
LABEL_15:
            v20 = *(v7 + 48);
            v21 = (v20 + 8 * v6);
            v22 = (v20 + 8 * v10);
            if (v6 != v10 || v21 >= v22 + 1)
            {
              *v21 = *v22;
              v6 = v10;
            }
          }
        }

        else if (v17 >= v16 || v6 >= v17)
        {
          goto LABEL_15;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v6) - 1;
  }

  else
  {
    *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v7 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v26;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_10000D8D4(uint64_t a1)
{
}

uint64_t sub_10000D900(uint64_t a1)
{
  v5 = *(v1 + *(a1 + 64));
  v6 = *(a1 + 80);
  v7 = *(v1 + v6 + 8);
  *(v4 - 128) = *(v1 + v6);
  *(v4 - 120) = v5;
  *(v4 - 136) = v7;
  *(v4 - 112) = v3;
  return v2;
}

uint64_t sub_10000D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_10000D9E8()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  v3 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v2);
  if (result)
  {

    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    v6 = *(v1 + 24);
    if ((v6 & 0xC000000000000001) != 0)
    {

      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *(v6 + 16);
    }

    *(v5 + 4) = v7;

    _os_log_impl(&_mh_execute_header, v3, v2, "RSD Peers updated. Total count: %ld", v5, 0xCu);
  }

  return result;
}

void sub_10000DAF4()
{
  sub_10000D598();
  ObjectType = swift_getObjectType();
  OS_nw_connection.send(content:completion:)(v3, v2, v1, v0, ObjectType);
}

uint64_t sub_10000DBDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000DC24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000DC94(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  if (a1)
  {
    swift_unknownObjectRetain();
    v9 = static os_log_type_t.error.getter();
    v10 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v9))
    {
      v25 = a5;
      sub_10000E228(a3, a4);
      sub_10000E228(a3, a4);
      v11 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v11 = 136446722;
      v12 = [a2 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_10000C600(v13, v15, &v26);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2048;
      switch(a4 >> 62)
      {
        case 1uLL:
          sub_10000DF50(a3, a4);
          LODWORD(v17) = HIDWORD(a3) - a3;
          if (__OFSUB__(HIDWORD(a3), a3))
          {
            __break(1u);
            JUMPOUT(0x10000DF40);
          }

          v17 = v17;
          break;
        case 2uLL:
          v20 = *(a3 + 16);
          v19 = *(a3 + 24);
          sub_10000DF50(a3, a4);
          v17 = v19 - v20;
          if (__OFSUB__(v19, v20))
          {
            __break(1u);
            goto LABEL_10;
          }

          break;
        case 3uLL:
LABEL_10:
          sub_10000DF50(a3, a4);
          v17 = 0;
          break;
        default:
          sub_10000DF50(a3, a4);
          v17 = BYTE6(a4);
          break;
      }

      *(v11 + 14) = v17;
      sub_10000DF50(a3, a4);
      *(v11 + 22) = 2080;
      swift_unknownObjectRetain();
      sub_100013414(&qword_10009B538, &qword_100078488);
      v21 = String.init<A>(describing:)();
      v23 = sub_10000C600(v21, v22, &v26);

      *(v11 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s: Error sending %ld bytes of data %s", v11, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
      a5 = v25;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v18 = sub_10004F6F4();
  }

  else
  {
    v18 = 0;
  }

  (a5)(v18, a2, a3, a4);
}

uint64_t sub_10000DF50(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void OS_nw_connection.send(content:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = NWCreateDispatchDataFromNSData();

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = v5;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;
  sub_10000D2AC();
  v15[1] = 1107296256;
  v15[2] = sub_10000DC24;
  v15[3] = &unk_100090BC8;
  v14 = _Block_copy(v15);
  swift_unknownObjectRetain();
  sub_10000E228(a1, a2);

  nw_connection_send(v5, v12, _nw_content_context_default_message, 1, v14);
  _Block_release(v14);
}

uint64_t sub_10000E0D0()
{
  swift_unknownObjectRelease();
  sub_10000DF50(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000E118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E158(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E1A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E1B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E1D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E1E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E1F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E228(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_10000E280(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9(a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_10000E330(void *a1, NSObject *a2, char a3, uint64_t a4, void *a5, void (*a6)(void, void, void), void (*a7)(void, void, void), uint64_t a8)
{
  v46 = type metadata accessor for RemotePairingError();
  __chkstk_darwin(v46);
  v45 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (nw_content_context_get_is_wake_packet())
    {
      v17 = static os_log_type_t.default.getter();
      v18 = powerLog.getter();
      if (os_log_type_enabled(v18, v17))
      {
        v19 = swift_slowAlloc();
        v43 = a7;
        v20 = v19;
        v21 = swift_slowAlloc();
        v44 = a8;
        v42 = v21;
        *&v51[0] = v21;
        *v20 = 136315138;
        *&v49 = a5;

        sub_100013414(&qword_10009B530, &qword_100078480);
        v22 = String.init<A>(describing:)();
        v24 = a6;
        v25 = sub_10000C600(v22, v23, v51);

        *(v20 + 4) = v25;
        a6 = v24;
        _os_log_impl(&_mh_execute_header, v18, v17, "Received a wake packet from: %s", v20, 0xCu);
        sub_10000CADC(v42);
        a8 = v44;

        a7 = v43;
      }
    }

    if (a3)
    {
      is_final = nw_content_context_get_is_final(a2);
      if (!a4)
      {
        goto LABEL_8;
      }

LABEL_15:
      swift_unknownObjectRetain();
      v28 = sub_10004F6F4();
      swift_unknownObjectRelease();
LABEL_18:
      v29 = 0;
      v31 = 1;
      goto LABEL_19;
    }
  }

  is_final = 0;
  if (a4)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (!a1)
  {
LABEL_17:
    sub_10004FEA8(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    static Error<>.dataCorrupted.getter();
    sub_10004FEA8(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    v28 = swift_allocError();
    Error<>.init(_:_:)();
    goto LABEL_18;
  }

  v50 = sub_10000E8B4();
  *&v49 = a1;
  sub_10000E8A4(&v49, v51);
  sub_10000CA80(v51, &v49);
  v27 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10000CADC(v51);
    goto LABEL_17;
  }

  v28 = v47;
  v29 = v48;
  v30 = Data.count.getter();
  v31 = v30 < a6;
  if (v30 < a6)
  {
    v43 = a6;
    v44 = a8;
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    if (is_final)
    {
      _StringGuts.grow(_:)(61);
      v32 = " requested bytes, and no error";
      v33 = 0xD000000000000017;
    }

    else
    {
      _StringGuts.grow(_:)(63);
      v32 = "ved no content and no error";
      v33 = 0xD000000000000019;
    }

    v35 = v32 | 0x8000000000000000;
    String.append(_:)(*&v33);
    v47 = Data.count.getter();
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 543584032;
    v37._object = 0xE400000000000000;
    String.append(_:)(v37);
    v47 = v43;
    v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v38);

    v39._object = 0x8000000100080A40;
    v39._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v39);
    sub_10004FEA8(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    static Error<>.dataCorrupted.getter();
    sub_10004FEA8(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    v40 = swift_allocError();
    Error<>.init(_:_:)();
    sub_10000DF50(v28, v29);
    sub_10000CADC(v51);
    v29 = 0;
    v28 = v40;
  }

  else
  {
    sub_10000CADC(v51);
  }

LABEL_19:
  a7(v28, v29, v31);
  return sub_10000ED08(v28, v29, v31);
}

_OWORD *sub_10000E8A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000E8B4()
{
  result = qword_10009B528;
  if (!qword_10009B528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009B528);
  }

  return result;
}

void OS_nw_connection.receive(minLength:maxLength:peerConnectionInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a2;
  if ((a2 | a1) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= 0xFFFFFFFFLL)
  {
    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a1;
    v11[4] = a4;
    v11[5] = a5;
    sub_10000D2AC();
    sub_10000EE74();
    v14[2] = v12;
    v14[3] = &unk_100090C18;
    v13 = _Block_copy(v14);

    nw_connection_receive(v5, a1, v6, v13);
    _Block_release(v13);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_10000EA04()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000EA50@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  sub_100013414(&qword_10009B730, &unk_100078A80);
  sub_10000CC04();
  v8 = *(v7 + 16);

  return v8(a2, v4 + v5, v6);
}

uint64_t sub_10000EACC()
{

  return type metadata accessor for XPCDictionary();
}

uint64_t sub_10000EB64()
{
}

uint64_t sub_10000EBFC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_10000EC4C(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_10000EC4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000E228(result, a2);
  }

  return result;
}

uint64_t sub_10000EC60(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_10000ECA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_10000ECF4(v5, v6);
}

uint64_t sub_10000ECF4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000DF50(result, a2);
  }

  return result;
}

uint64_t sub_10000ED08(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_10000DF50(a1, a2);
  }
}

void sub_10000ED80()
{
  sub_10000D598();
  swift_getObjectType();
  OS_nw_connection.receive(minLength:maxLength:peerConnectionInfo:completion:)(v4, v3, *(v1 + OBJC_IVAR____TtC20remotepairingdeviced29NWObjcTunnelConnectionWrapper_peerConnectionsInfo), v2, v0);
}

uint64_t sub_10000EE54()
{

  return sub_1000223E8(v0, 1, 1, v1);
}

_DWORD *sub_10000EF0C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10000EF38()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000EFAC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000EFE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F01C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F11C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000F164()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F1A0()
{

  sub_10000DF50(*(v0 + 40), *(v0 + 48));
  sub_10001ADD4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000F1E4()
{

  sub_10000CCD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F220()
{

  sub_10001ADD4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F28C()
{

  sub_10000ED08(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

void sub_10000F344(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 setPublicKey:isa];
}

void sub_10000F39C(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 setAltIRK:isa];
}

uint64_t sub_10000F3F4()
{
  sub_10000DF50(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F438()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F474()
{

  sub_10000D090();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F4AC()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F4EC()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F538()
{

  return _swift_deallocObject(v0, 27, 7);
}

uint64_t sub_10000F570()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F620()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F658()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F6A0()
{

  sub_10000D090();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F6E4()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F718()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F758()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F7BC()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F7F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F838()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F87C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000F8C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F8FC()
{
  v1 = type metadata accessor for PairingConsentCollectionOutcome();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000F9B8()
{
  v1 = type metadata accessor for UUID();
  sub_10000CBBC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (v5 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 24, v4 | 7);
}

uint64_t sub_10000FA94()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000FAC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000FAD8()
{
  v1 = type metadata accessor for UUID();
  sub_10000CBBC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10000FB90()
{
  v1 = *(sub_100013414(&qword_10009A908, &qword_100078DC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for ListenerStartedResponse();
    sub_10000CC04();
    (*(v5 + 8))(v0 + v3);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000FC98()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000FCE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FD18()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FD60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FD9C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FDD4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000FE28()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000FEB4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FF14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000FF7C()
{
  swift_unknownObjectRelease();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000FFCC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010004()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010038()
{
  v1 = type metadata accessor for XPCEventPublisher.Token();
  sub_10000CBBC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_100010104()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_1000101C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_10000D30C(a3, result);
  }

  return result;
}

uint64_t sub_1000101E0()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010214()
{
  swift_unknownObjectWeakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010248()
{

  sub_100055004();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10001028C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000102E4()
{

  sub_10000D090();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100010338()
{
  v1 = type metadata accessor for TunnelConnectionState();
  sub_10000CBBC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000103F0()
{

  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010424()
{

  sub_100055004();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010468()
{

  sub_100055004();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000104AC()
{

  sub_10000D090();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000104E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001052C()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010564()
{

  sub_10000DF50(*(v0 + 24), *(v0 + 32));
  sub_10000CCD8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000105A0()
{
  sub_10000DF50(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000105E0()
{

  sub_10000CCD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10001062C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010664()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000106C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010700()
{
  v1 = type metadata accessor for UUID();
  sub_10000CBBC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

uint64_t sub_1000107FC()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010830()
{

  sub_10000CCD8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100010874()
{
  swift_unknownObjectWeakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000108A8()
{

  sub_10000CCD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000108EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010974()
{

  sub_10000CADC((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000109B4()
{

  sub_10000CADC((v0 + 24));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100010A04()
{

  sub_10000CADC((v0 + 24));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100010A4C()
{
  swift_weakDestroy();
  sub_10000CBD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010A80()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100010AB8()
{
  v1 = type metadata accessor for CertificateUtilities.RawTLSPublicKeyInfo();
  sub_10000CBBC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100010B70()
{
  if (*(v0 + 40))
  {
    sub_10000CADC((v0 + 16));
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100010BB4()
{
  v1 = sub_100013414(&qword_10009C128, &unk_100078DE0);
  sub_10000CD78(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = *(v5 + 64);

  sub_10000DF50(*(v0 + 32), *(v0 + 40));
  v7 = type metadata accessor for TransportProtocolType();
  if (!sub_100022484(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  return _swift_deallocObject(v0, ((v6 + v4 + 9) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100010CCC()
{
  v1 = *(sub_100013414(&qword_10009A908, &qword_100078DC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for ListenerStartedResponse();
    sub_10000CC04();
    (*(v5 + 8))(v0 + v3);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100010DD4()
{

  sub_10000CCD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100010E18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100010E30(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

nw_parameters_t create_nw_parameters_for_tcp(nw_parameters_configure_protocol_block_t configure_tcp)
{
  secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, configure_tcp);

  return secure_tcp;
}

id _remotepairing_nw_connection_create_with_connected_socket_and_parameters()
{
  v0 = nw_connection_create_with_connected_socket_and_parameters();

  return v0;
}

uint64_t is_setup_complete()
{
  if (&_BYSetupAssistantHasCompletedInitialRun)
  {
    return BYSetupAssistantHasCompletedInitialRun();
  }

  else
  {
    return 1;
  }
}

BOOL is_pairing_restricted_by_findMy()
{
  v0 = +[FMDFMIPManager sharedInstance];
  v1 = v0;
  v2 = v0 != 0;
  if (v0)
  {
    v3 = [v0 lockdownShouldDisableDevicePairing];
    if (v3)
    {
      v4 = pairing_utilities_log(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100073344();
      }

LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
    is_darwinos = os_variant_is_darwinos();
    if ((is_darwinos & 1) == 0)
    {
      v4 = pairing_utilities_log(is_darwinos);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_100073304();
      }

      goto LABEL_9;
    }
  }

  v2 = 0;
LABEL_10:

  return v2;
}

id pairing_utilities_log(uint64_t a1)
{
  if (qword_10009C148[0] != -1)
  {
    sub_100073384();
  }

  v2 = qword_10009C140;

  return v2;
}

uint64_t managed_configuration_allow_pairing(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[MCProfileConnection sharedConnection];
  v6 = v5;
  if (!v5)
  {
    is_darwinos = os_variant_is_darwinos();
    if (is_darwinos)
    {
LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

    v10 = pairing_utilities_log(is_darwinos);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100073450();
    }

LABEL_17:

    goto LABEL_18;
  }

  v7 = [v5 hostMayPairWithOptions:v3 challenge:v4];
  v8 = v7;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
LABEL_14:
        v8 = 1;
        goto LABEL_19;
      }

LABEL_11:
      v11 = pairing_utilities_log(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000733D8(v8, v11);
      }

      goto LABEL_14;
    }

    v10 = pairing_utilities_log(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100073398();
    }

    goto LABEL_17;
  }

  if (v7 == 2)
  {
    v8 = 2;
    goto LABEL_19;
  }

  if (v7 != 3)
  {
    goto LABEL_11;
  }

LABEL_19:

  return v8;
}

void sub_100011150(id a1)
{
  qword_10009C140 = os_log_create("com.apple.dt.remotepairing", "pairingutilities");

  _objc_release_x1();
}

uint64_t lockdown_wifi_pairing_enabled()
{
  v0 = lockdown_connect();
  if (v0)
  {
    v1 = lockdown_copy_value();
    lockdown_disconnect();
    if (v1)
    {
      v0 = v1 == kCFBooleanTrue;
      CFRelease(v1);
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

void sub_100011420(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3 && [*(a1 + 32) active])
  {
    [*(a1 + 32) setBrowser:0];
    if (([*(a1 + 32) startOnQueue:*(a1 + 40)] & 1) == 0)
    {
      v6 = [*(a1 + 32) log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10007352C();
      }
    }
  }

  else
  {
    remote_device_set_disconnected_callback();
  }
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000118F0(0, &qword_100098EC8, NSError_ptr);
  static NSError.setRemotePairingNormalizationProviders()();
  sub_1000118F0(0, &qword_100098ED0, OS_os_log_ptr);
  qword_10009CED0 = OS_os_log.init(subsystem:category:)();
  type metadata accessor for RemotePairingDeviceService();
  swift_allocObject();
  sub_100038990();
  qword_10009CED8 = v3;
  sub_100038C28();
  CFRunLoopRun();
  return 0;
}

uint64_t sub_1000118F0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

Swift::Int sub_1000119E8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100011A5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000493D4();
  *a1 = result;
  return result;
}

uint64_t sub_100011A84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000493DC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100011ACC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

void sub_100011BAC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100011C60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011CB8()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  v3 = qword_10009CED0;
  result = os_log_type_enabled(qword_10009CED0, v2);
  if (result)
  {

    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    v6 = *(v1 + 16);
    if ((v6 & 0xC000000000000001) != 0)
    {

      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *(v6 + 16);
    }

    *(v5 + 4) = v7;

    _os_log_impl(&_mh_execute_header, v3, v2, "Lockdown Peers updated. Total count: %ld", v5, 0xCu);
  }

  return result;
}

void sub_100011DFC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlChannelConnection.Options();
  sub_10000CBBC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000CBDC();
  v10 = v9 - v8;
  type metadata accessor for ControlChannelConnection.Options.Device();
  sub_10000CBBC();
  __chkstk_darwin(v11);
  sub_10000CBDC();
  v16 = v15 - v14;
  if (*(v2 + 72))
  {
    v17 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10009CED0, "Rejecting remote XPC control pairing channel connection as service is shutting down", 83, 2, _swiftEmptyArrayStorage);
    sub_1000135A0();

    lockdown_disconnect();
  }

  else
  {
    v41 = v16;
    v42 = v12;
    v43 = v13;
    ControlChannelConnection.Options.Device.init(allowsPairSetup:allowsPinlessPairing:allowsIncomingTunnelConnections:allowsPromptlessAutomationPairingUpgrade:allowsSharingSensitiveInfo:)();
    HIDWORD(v40) = lockdown_connection_is_usb();
    LODWORD(v40) = lockdown_get_socket();
    sub_10000CBD0();
    *(swift_allocObject() + 16) = a1;
    sub_10000CBD0();
    *(swift_allocObject() + 16) = a1;
    sub_10000CBD0();
    *(swift_allocObject() + 16) = a1;
    sub_10000CBD0();
    *(swift_allocObject() + 16) = a1;
    v19 = type metadata accessor for SecureSocketDataTransport();
    swift_allocObject();
    v44[8] = v19;
    v44[9] = &protocol witness table for SecureSocketDataTransport;
    v44[5] = SecureSocketDataTransport.init(physicallyConnected:underlyingConnectionSocket:bufferedReceiveSizeHandler:syncReceiveHandler:syncSendHandler:cleanupConnectionHandler:)();
    v20 = *(v2 + 24);
    v21 = v42;
    v22 = v41;
    (*(v43 + 16))(v10, v41, v42);
    (*(v6 + 104))(v10, enum case for ControlChannelConnection.Options.device(_:), v4);
    v23 = *(v2 + 80);
    v44[3] = type metadata accessor for SystemKeychainPairingManager();
    v44[4] = sub_10000D0E0(&qword_100099CF0, type metadata accessor for SystemKeychainPairingManager, &unk_1000774BC);
    v44[0] = v23;
    type metadata accessor for ControlChannelConnection();

    v24 = v20;

    static ControlChannelConnection.defaultMaxReconnectionAttempts.getter();
    swift_allocObject();
    v25 = ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)();
    swift_beginAccess();

    sub_10006463C(v44, v25, v26, v27, v28, v29, v30, v31, v40, v41, v42);
    swift_endAccess();

    sub_100011CB8();
    sub_10000CBD0();
    v32 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v34 + 24) = v33;

    dispatch thunk of ControlChannelConnection.invalidationHandler.setter();

    sub_10000CBD0();
    v35 = swift_allocObject();
    swift_weakInit();
    sub_10000CBD0();
    v36 = swift_allocObject();
    swift_weakInit();

    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v35;

    dispatch thunk of ControlChannelConnection._connectionSetupCompleteHandler.setter();

    dispatch thunk of ControlChannelConnection.requireUserConsentForPairing.setter();
    v38 = *sub_10001355C((v2 + 32), *(v2 + 56));

    sub_100055264(0xD00000000000002FLL, 0x800000010007C540, v38, v25, v39);

    (*(v43 + 8))(v22, v21);
    sub_1000135A0();
  }
}

uint64_t sub_100012398(uint64_t a1)
{
  if (lockdown_get_buffered_read_size())
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_1000123F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      swift_beginAccess();
      sub_10000CE94(v4);
      swift_endAccess();

      sub_100011CB8();
    }
  }

  return result;
}

uint64_t sub_1000124C0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = dispatch thunk of ControlChannelConnection.resolvedIdentity.getter();
      if (v7)
      {
        v8 = v7;
        sub_100061FF0();
        if ((v9 & 1) == 0)
        {
          (*(v3 + 104))(v5, enum case for ControlChannelConnection.InvalidationReason.peerUnpaired(_:), v2);
          dispatch thunk of ControlChannelConnection.invalidate(for:)();

          return (*(v3 + 8))(v5, v2);
        }
      }
    }
  }

  return result;
}

void sub_10001267C()
{
  static RemoteServiceNames.lockdownService.getter();
  v2[4] = sub_1000134D4;
  v3 = v0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10005B02C;
  v2[3] = &unk_10008ECE0;
  v1 = _Block_copy(v2);

  String.utf8CString.getter();

  lockdown_checkin_xpc();

  _Block_release(v1);
}

void sub_100012774(uint64_t result)
{
  if (result)
  {
    sub_100011DFC(result);
  }
}

void sub_1000127A0()
{
  v30 = type metadata accessor for ControlChannelConnection.InvalidationReason();
  sub_10000CBBC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v29 = v5 - v4;
  if (*(v0 + 72))
  {
    static os_log_type_t.error.getter();
    sub_1000135A0();

    os_log(_:dso:log:_:_:)(v6, v7, v8, v9);
  }

  else
  {
    *(v0 + 72) = 1;
    swift_beginAccess();
    v11 = *(v0 + 16);
    if ((v11 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for ControlChannelConnection();
      sub_10000D270();
      sub_10000D0E0(v12, v13, &protocol conformance descriptor for ControlChannelConnection);
      Set.Iterator.init(_cocoa:)();
      v11 = v32;
      v14 = v33;
      v16 = v34;
      v15 = v35;
      v17 = v36;
    }

    else
    {
      v14 = v11 + 56;
      v16 = ~(-1 << *(v11 + 32));
      sub_10000D89C();
      v17 = v18 & v19;

      v15 = 0;
    }

    v20 = (v16 + 64) >> 6;
    v28 = enum case for ControlChannelConnection.InvalidationReason.serviceShutdown(_:);
    v21 = (v2 + 104);
    v22 = (v2 + 8);
    if (v11 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v23 = v15;
      v24 = v17;
      v25 = v15;
      if (!v17)
      {
        break;
      }

LABEL_13:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v11 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (!v27)
      {
LABEL_19:
        sub_1000134CC(v11);
        sub_1000135A0();
        return;
      }

      while (1)
      {
        (*v21)(v29, v28, v30);
        dispatch thunk of ControlChannelConnection.invalidate(for:)();

        (*v22)(v29, v30);
        v15 = v25;
        v17 = v26;
        if ((v11 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for ControlChannelConnection();
          swift_dynamicCast();
          v25 = v15;
          v26 = v17;
          if (v31)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v20)
      {
        goto LABEL_19;
      }

      v24 = *(v14 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void *sub_100012AAC(NSObject *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for ControlChannelConnection();
    sub_10000D270();
    sub_10000D0E0(v4, v5, &protocol conformance descriptor for ControlChannelConnection);
    result = Set.Iterator.init(_cocoa:)();
    v3 = v31;
    v7 = v32;
    v8 = v33;
    v9 = v34;
    v10 = v35;
  }

  else
  {
    v7 = v3 + 56;
    v8 = ~(-1 << *(v3 + 32));
    sub_10000D89C();
    v10 = v11 & v12;

    v9 = 0;
  }

  v13 = (v8 + 64) >> 6;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      return sub_1000134CC(v3);
    }

    type metadata accessor for ControlChannelConnection();
    swift_dynamicCast();
    v16 = v9;
    v17 = v10;
    if (!v30)
    {
      return sub_1000134CC(v3);
    }

LABEL_14:
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a1, v19))
    {
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v20 = 136446210;
      type metadata accessor for ControlChannelConnection();

      v21 = String.init<A>(describing:)();
      v28 = v17;
      v23 = v13;
      v24 = v7;
      v25 = v3;
      v26 = a1;
      v27 = sub_10000C600(v21, v22, &v30);

      *(v20 + 4) = v27;
      a1 = v26;
      v3 = v25;
      v7 = v24;
      v13 = v23;
      _os_log_impl(&_mh_execute_header, a1, v19, "State dump: LockdownControlChannelService control channel connection: %{public}s", v20, 0xCu);
      sub_10000CADC(v29);

      v9 = v16;
      v10 = v28;
    }

    else
    {

      v9 = v16;
      v10 = v17;
    }
  }

  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_10:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
      return sub_1000134CC(v3);
    }

    goto LABEL_14;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      return sub_1000134CC(v3);
    }

    v15 = *(v7 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100012DB0()
{

  sub_10000CADC((v0 + 32));

  return v0;
}

uint64_t sub_100012DE8()
{
  sub_100012DB0();

  return _swift_deallocClassInstance(v0, 88, 7);
}

void *sub_100012ED0(uint64_t a1, void *a2)
{
  v3 = v2;
  if (sub_10004997C())
  {
    sub_10005783C(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *(v3 + 32) = a1;
  *(v3 + 40) = v6;
  *(v3 + 16) = a2;
  type metadata accessor for SystemXPCListenerConnection();

  v7 = a2;
  static RemoteServiceNames.lockdownService.getter();
  v8 = *(v3 + 16);
  static SystemXPCConnection.machServiceListenerConnection(name:targetQueue:)();

  *(v3 + 24) = swift_dynamicCastClassUnconditional();
  return v3;
}

uint64_t sub_100013004(uint64_t a1)
{
  v2 = type metadata accessor for XPCError();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v29 - v8;
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = sub_100013414(&qword_10009A170, &qword_1000779C0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  sub_10001345C(a1, &v29 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v11, v14, v2);
    v15 = static os_log_type_t.error.getter();
    v16 = qword_10009CED0;
    v17 = *(v3 + 16);
    v17(v9, v11, v2);
    if (os_log_type_enabled(v16, v15))
    {
      v18 = swift_slowAlloc();
      v29 = v16;
      v19 = v18;
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315138;
      v17(v6, v9, v2);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      v24 = *(v3 + 8);
      v24(v9, v2);
      v25 = sub_10000C600(v21, v23, &v30);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v29, v15, "Failed to start dummy lockdown service with error: %s", v19, 0xCu);
      sub_10000CADC(v20);

      return (v24)(v11, v2);
    }

    else
    {
      v28 = *(v3 + 8);
      v28(v9, v2);
      return (v28)(v11, v2);
    }
  }

  else
  {
    v27 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, qword_10009CED0, "Unexpected peer connected to lockdown mach service on device without liblockdown", 80, 2, _swiftEmptyArrayStorage);

    dispatch thunk of XPCConnection.cancel()();
  }
}

uint64_t sub_100013354()
{

  return v0;
}

uint64_t sub_10001338C()
{
  sub_100013354();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100013414(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001345C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&qword_10009A170, &qword_1000779C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013514()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10001355C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_1000135E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000D600();
  a19 = v21;
  a20 = v22;
  sub_100013414(&qword_100099488, &unk_100077650);
  sub_10000D8B0();
  __chkstk_darwin(v23);
  sub_100016044();
  sub_10000CBBC();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_10000EDF0();
  __chkstk_darwin(v27);
  sub_100015FC8();
  v28 = sub_100015FF4();
  v29(v28);
  v30 = static os_log_type_t.default.getter();
  v31 = qword_10009CED0;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, qword_10009CED0, "Handling pairing deletion request", 33, 2, _swiftEmptyArrayStorage);
  XPCDictionary.auditToken.getter();
  XPCDictionary.entitlements.getter();
  sub_10001462C();
  v32 = (v25 - 24);
  if (v20)
  {
    v33 = *v32;
    v34 = sub_10000D438();
    v33(v34);
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v35))
    {
      sub_10000D054();
      v45 = swift_slowAlloc();
      sub_10000CCCC();
      v46 = swift_slowAlloc();
      a10 = v46;
      *v45 = 136315138;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v36 = String.init<A>(describing:)();
      v38 = sub_10000C600(v36, v37, &a10);

      *(v45 + 4) = v38;
      sub_100016064(&_mh_execute_header, v39, v40, "Pairing deletion failed with error: %s");
      sub_10000CADC(v46);
      sub_10000EE00();

      sub_100015FBC();
    }

    swift_willThrow();

    v41 = sub_10000D288();
    v33(v41);
  }

  else
  {

    v42 = *v32;
    v43 = sub_10000D438();
    v42(v43);
    v44 = sub_10000D288();
    v42(v44);
  }

  sub_100016038();
  sub_100016010();
}

void sub_100013888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000D600();
  a19 = v22;
  a20 = v23;
  v57 = v24;
  v26 = v25;
  v56 = v27;
  sub_100013414(&qword_100099488, &unk_100077650);
  sub_100016028();
  sub_10000D8B0();
  __chkstk_darwin(v28);
  v30 = &v55 - v29;
  v31 = type metadata accessor for XPCDictionary();
  sub_10000CBBC();
  v33 = v32;
  __chkstk_darwin(v34);
  sub_10000EDF0();
  v37 = v35 - v36;
  __chkstk_darwin(v38);
  v40 = &v55 - v39;
  sub_100015EEC(v26, v30, &qword_100099488, &unk_100077650);
  (*(v33 + 32))(v40, &v30[*(v20 + 56)], v31);
  v41 = static os_log_type_t.debug.getter();
  v42 = qword_10009CED0;
  os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, qword_10009CED0, "Handling paired host list request", 33, 2, _swiftEmptyArrayStorage);
  XPCDictionary.auditToken.getter();
  XPCDictionary.entitlements.getter();
  sub_100014754();
  v43 = (v33 + 8);
  if (v21)
  {
    v44 = *v43;
    (*v43)(v37, v31);
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v45))
    {
      sub_10000D054();
      v46 = swift_slowAlloc();
      v57 = v46;
      sub_10000CCCC();
      v58 = swift_slowAlloc();
      v59 = v21;
      a10 = v58;
      *v46 = 136315138;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v47 = String.init<A>(describing:)();
      v49 = sub_10000C600(v47, v48, &a10);
      LODWORD(v56) = v45;
      v50 = v49;

      v51 = v57;
      *(v57 + 1) = v50;
      _os_log_impl(&_mh_execute_header, v42, v56, "Listing paired hosts failed with error: %s", v51, 0xCu);
      sub_10000CADC(v58);
      sub_100015FBC();

      sub_10000EE00();
    }

    swift_willThrow();

    v52 = sub_10000D288();
    (v44)(v52);
  }

  else
  {

    v53 = *v43;
    (*v43)(v37, v31);
    v54 = sub_10000D288();
    v53(v54);
  }

  sub_100016038();
  sub_100016010();
}

void sub_100013D70()
{
  sub_10000D600();
  v17[1] = v1;
  v3 = v2;
  sub_100013414(&qword_100099488, &unk_100077650);
  sub_100016028();
  sub_10000D8B0();
  __chkstk_darwin(v4);
  v5 = sub_10000EACC();
  sub_10000CBBC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000EDF0();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = v17 - v13;
  sub_100015EEC(v3, v0, &qword_100099488, &unk_100077650);

  sub_10000D510();
  v15(v14);
  XPCDictionary.entitlements.getter();
  sub_1000147AC();
  v16 = *(v7 + 8);
  v16(v11, v5);
  v16(v14, v5);
  sub_100016010();
}

void sub_100013EFC()
{
  sub_10000D600();
  v24[1] = v2;
  v4 = v3;
  v25 = v5;
  sub_100013414(&qword_100099488, &unk_100077650);
  sub_100016028();
  sub_10000D8B0();
  __chkstk_darwin(v6);
  v7 = sub_10000EACC();
  sub_10000CBBC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000EDF0();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = v24 - v15;
  v17 = static os_log_type_t.debug.getter();
  v18 = qword_10009CED0;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10009CED0, "Handling current host trust state request", 41, 2, _swiftEmptyArrayStorage);
  sub_100015EEC(v4, v1, &qword_100099488, &unk_100077650);

  sub_10000D510();
  v19(v16);
  XPCDictionary.entitlements.getter();
  sub_1000144B0();
  if (v0)
  {
    v20 = *(v9 + 8);
    v20(v13, v7);
    v21 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v18, "Querying current host trust state failed with error", 51, 2, _swiftEmptyArrayStorage);
    swift_willThrow();
    v20(v16, v7);
  }

  else
  {
    v22 = sub_10003D018();
    v23 = *(v9 + 8);
    v23(v13, v7);
    v23(v16, v7);
    *v25 = v22;
  }

  sub_100016010();
}

void sub_100014134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000D600();
  a19 = v21;
  a20 = v22;
  sub_100013414(&qword_100099488, &unk_100077650);
  sub_10000D8B0();
  __chkstk_darwin(v23);
  sub_100016044();
  sub_10000CBBC();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_10000EDF0();
  __chkstk_darwin(v27);
  sub_100015FC8();
  v28 = sub_100015FF4();
  v29(v28);
  v30 = static os_log_type_t.debug.getter();
  v31 = qword_10009CED0;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, qword_10009CED0, "Handling promptless pairing request", 35, 2, _swiftEmptyArrayStorage);
  XPCDictionary.auditToken.getter();
  XPCDictionary.entitlements.getter();
  sub_100015B60();
  v32 = (v25 - 24);
  if (v20)
  {
    v33 = *v32;
    v34 = sub_10000D438();
    v33(v34);
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v35))
    {
      sub_10000D054();
      v45 = swift_slowAlloc();
      sub_10000CCCC();
      v46 = swift_slowAlloc();
      a10 = v46;
      *v45 = 136315138;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v36 = String.init<A>(describing:)();
      v38 = sub_10000C600(v36, v37, &a10);

      *(v45 + 4) = v38;
      sub_100016064(&_mh_execute_header, v39, v40, "Allowing promptless pairing failed with error: %s");
      sub_10000CADC(v46);
      sub_10000EE00();

      sub_100015FBC();
    }

    swift_willThrow();

    v41 = sub_10000D288();
    v33(v41);
  }

  else
  {

    v42 = *v32;
    v43 = sub_10000D438();
    v42(v43);
    v44 = sub_10000D288();
    v42(v44);
  }

  sub_100016038();
  sub_100016010();
}

uint64_t sub_1000143DC(uint64_t a1)
{
  v2 = v1;
  dispatch thunk of XPCConnection.activate()();
  v3 = *sub_10001355C((v2 + 56), *(v2 + 80));

  sub_1000552AC(0xD000000000000021, 0x800000010007C880, v3, v2);
  v4 = static os_log_type_t.debug.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_10009CED0, "Started pairing management XPC service", 38, 2, _swiftEmptyArrayStorage);

  return sub_100015560();
}

uint64_t sub_1000144B0()
{
  v0 = type metadata accessor for RemotePairingError();
  __chkstk_darwin(v0);
  sub_10000CBDC();
  result = XPCDictionary.subscript.getter();
  if (result == 2 || (result & 1) == 0)
  {
    result = _RPIsAppleInternal();
    if ((result & 1) == 0)
    {
      sub_100015F54(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      static Error<>.permissionDenied.getter();
      sub_100015F54(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
      swift_allocError();
      Error<>.init(_:_:)();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000147AC()
{
  result = sub_1000144B0();
  if (!v0)
  {
    sub_100037544();
    sub_100058CF0();

    return FetchNetworkPairingSessionIDResponse.init(networkPairingSessionID:)();
  }

  return result;
}

void sub_10001482C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000D600();
  v22 = type metadata accessor for PinNotificationEvent();
  sub_10000CBBC();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_10000CBDC();
  v28 = v27 - v26;
  sub_1000144B0();
  if (!v21)
  {
    type metadata accessor for SystemXPCPeerConnection();
    WirelessPairingSession = CreateWirelessPairingSessionRequest.endpoint.getter();
    xpc_connection_create_from_endpoint(WirelessPairingSession);
    swift_unknownObjectRelease();
    static SystemXPCConnection.unsafePeer(from:)();
    swift_unknownObjectRelease();
    v30 = swift_dynamicCastClassUnconditional();
    dispatch thunk of XPCConnection.setTargetQueue(_:)();

    v31 = CreateWirelessPairingSessionRequest.requestCustomPinHandler.getter();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v20 + 32);
    sub_100068ECC(v31 & 1, v30, isUniquelyReferenced_nonNull_native);
    *(v20 + 32) = v45;

    swift_endAccess();
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v20;

    dispatch thunk of SystemXPCPeerConnection.setEventHandler(_:)();

    dispatch thunk of XPCConnection.activate()();
    (*(v24 + 104))(v28, enum case for PinNotificationEvent.empty(_:), v22);
    sub_100015F54(&qword_100099490, &type metadata accessor for PinNotificationEvent, &protocol conformance descriptor for PinNotificationEvent);
    sub_100015FA4();
    sub_100015F54(v35, &type metadata accessor for PinNotificationEvent, v36);
    XPCConnection.send<A>(value:)();
    (*(v24 + 8))(v28, v22);
    sub_1000154D4();
    v37 = static os_log_type_t.debug.getter();
    v38 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v37))
    {
      sub_10000D054();
      v39 = swift_slowAlloc();
      sub_10000CCCC();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;

      v41 = String.init<A>(describing:)();
      v43 = sub_10000C600(v41, v42, &v44);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v38, v37, "Configured wireless pairing session for %s", v39, 0xCu);
      sub_10000CADC(v40);
      sub_10000EE00();

      sub_100015FBC();
    }

    EmptyResponse.init()();
  }

  sub_100016010();
}

uint64_t sub_100014C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v56 = a1;
  v58 = type metadata accessor for XPCError();
  v3 = *(v58 - 8);
  v4 = __chkstk_darwin(v58);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v53 - v7;
  __chkstk_darwin(v6);
  v57 = (&v53 - v9);
  v10 = type metadata accessor for XPCDictionary();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v53 - v16;
  __chkstk_darwin(v15);
  v19 = &v53 - v18;
  v20 = sub_100013414(&unk_1000994A0, &unk_100077090);
  __chkstk_darwin(v20);
  v22 = &v53 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100015EEC(v56, v22, &unk_1000994A0, &unk_100077090);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v57;
      v25 = v22;
      v26 = v58;
      (*(v3 + 32))(v57, v25, v58);
      v27 = static os_log_type_t.error.getter();
      v28 = qword_10009CED0;
      v29 = *(v3 + 16);
      v29(v8, v24, v26);
      if (os_log_type_enabled(v28, v27))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        LODWORD(v56) = v27;
        v32 = v31;
        v59[0] = v31;
        *v30 = 136315138;
        v29(v54, v8, v26);
        v33 = String.init<A>(describing:)();
        v35 = v34;
        v36 = *(v3 + 8);
        v36(v8, v58);
        v37 = sub_10000C600(v33, v35, v59);
        v26 = v58;

        *(v30 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v28, v56, "Received error from wireless pairing session peer: %s", v30, 0xCu);
        sub_10000CADC(v32);
      }

      else
      {
        v36 = *(v3 + 8);
        v36(v8, v26);
      }

      swift_beginAccess();

      sub_1000684F8(v51);
      swift_endAccess();

      sub_1000154D4();

      return (v36)(v57, v26);
    }

    else
    {
      v38 = v11;
      (*(v11 + 32))(v19, v22, v10);
      v39 = static os_log_type_t.error.getter();
      v40 = qword_10009CED0;
      v41 = *(v38 + 16);
      v41(v17, v19, v10);
      if (os_log_type_enabled(v40, v39))
      {
        v42 = swift_slowAlloc();
        LODWORD(v58) = v39;
        v43 = v42;
        v44 = swift_slowAlloc();
        v57 = v40;
        v45 = v44;
        v59[0] = v44;
        *v43 = 136315138;
        v41(v14, v17, v10);
        v46 = String.init<A>(describing:)();
        v48 = v47;
        v49 = *(v38 + 8);
        v49(v17, v10);
        v50 = sub_10000C600(v46, v48, v59);

        *(v43 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v57, v58, "Received unexpected message from wireless pairing session peer: %s", v43, 0xCu);
        sub_10000CADC(v45);

        return (v49)(v19, v10);
      }

      else
      {

        v52 = *(v38 + 8);
        v52(v17, v10);
        return (v52)(v19, v10);
      }
    }
  }

  return result;
}

uint64_t sub_1000151F4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 32);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v16 = 1;
  v6 = 1 << *(*(v1 + 32) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v17 = result;
LABEL_4:
  v12 = v11;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
    v11 = v12;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    if ((*(*(result + 56) + (v13 | (v11 << 6))) & 1) == 0)
    {
      v16 = 0;
      goto LABEL_4;
    }

    v14 = static os_log_type_t.debug.getter();
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_10009CED0, "Custom pin handler found.  Sending pin.", 39, 2, _swiftEmptyArrayStorage);
    type metadata accessor for PinNotificationEvent();
    sub_100015F54(&qword_100099490, &type metadata accessor for PinNotificationEvent, &protocol conformance descriptor for PinNotificationEvent);
    sub_100015FA4();
    sub_100015F54(&qword_100099498, &type metadata accessor for PinNotificationEvent, v15);
    XPCConnection.send<A>(value:)();

    v12 = v11;
    result = v17;
  }

  while (v8);
LABEL_6:
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return v16 & 1;
    }

    v8 = *(v4 + 8 * v11);
    ++v12;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000154D4()
{
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if ((static Defaults.networkPairingEnabled.getter() & 1) != 0 || (swift_beginAccess(), *(*(v0 + 32) + 16)) || *(v0 + 96) == 1)
  {
    sub_10001355C((v0 + 56), *(v0 + 80));
    v1 = sub_100057418();
  }

  else
  {
    v1 = 0;
  }

  return sub_10003D284(v1 & 1);
}

uint64_t sub_100015560()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  __chkstk_darwin(v1);
  sub_10000CBDC();
  v2 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v8 = v7 - v6;
  aBlock[4] = sub_100015E24;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008EEC8;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100015F54(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  v10 = sub_10000D288();
  v11(v10);
  (*(v4 + 8))(v8, v2);
}

uint64_t sub_1000157B8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10006ACDC())
  {
    v10 = lockdown_wifi_pairing_enabled();
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  aBlock[4] = sub_100015ED8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008EF18;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14[1] = _swiftEmptyArrayStorage;
  sub_100015F54(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_100015A74(uint64_t result, char a2)
{
  if (*(result + 96) != (a2 & 1))
  {
    v3 = result;
    v4 = static os_log_type_t.default.getter();
    v5 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v4))
    {

      v6 = swift_slowAlloc();
      *v6 = 67109376;
      *(v6 + 4) = *(v3 + 96);

      *(v6 + 8) = 1024;
      *(v6 + 10) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v5, v4, "lockdown_wifi_pairing_enabled value changed: %{BOOL}d -> %{BOOL}d", v6, 0xEu);
    }

    *(v3 + 96) = a2 & 1;
    return sub_1000154D4();
  }

  return result;
}

uint64_t sub_100015B60()
{
  result = sub_1000144B0();
  if (!v0)
  {
    AllowPromptlessPairingWithHostRequest.pairingShouldBeMarkedForAutomation.getter();
    AllowPromptlessPairingWithHostRequest.associatedHostBUID.getter();
    sub_100036D60();
    sub_1000355C4();

    return EmptyResponse.init()();
  }

  return result;
}

uint64_t sub_100015C00()
{
  swift_unknownObjectRelease();

  sub_10000CADC((v0 + 56));

  return v0;
}

uint64_t sub_100015C48()
{
  sub_100015C00();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t getEnumTagSinglePayload for WirelessPairingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WirelessPairingOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100015E2C()
{
  result = qword_10009A8F0;
  if (!qword_10009A8F0)
  {
    sub_100015E90(&unk_100099840, &unk_100077350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A8F0);
  }

  return result;
}

uint64_t sub_100015E90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100015EEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100013414(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100015F54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015FC8()
{

  return sub_100015EEC(v0, v3, v1, v2);
}

uint64_t sub_100016044()
{

  return type metadata accessor for XPCDictionary();
}

void sub_100016064(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_1000160A0(uint64_t a1, void *a2, char a3)
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v31 = v8;
  v32 = v9;
  __chkstk_darwin(v8);
  sub_10000CBDC();
  v12 = v11 - v10;
  v26 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v30 = v13;
  __chkstk_darwin(v14);
  sub_10001ACC4();
  *(v3 + 16) = xmmword_1000770A0;
  *(v3 + 32) = static IPv6Header.minHeaderLength.getter();
  *(v3 + 40) = 0x80000;
  type metadata accessor for TunnelConnectionIdentifierCategory();
  Identifier.init()();
  v15 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection) = 0;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource) = 0;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource) = 0;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingReceiveRequests) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__partialReceivedData) = xmmword_1000770B0;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingSendRequests) = _swiftEmptyArrayStorage;
  *(v3 + v15) = a1;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__underlyingConnectionSocket) = lockdown_get_socket();
  v16 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue) = a2;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__shouldCloseConnectionOnCancel) = a3;
  sub_100019E9C();
  v27 = a2;
  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource) = static OS_dispatch_source.makeReadSource(fileDescriptor:queue:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v17 = *(v3 + v16);
  v18 = static OS_dispatch_source.makeWriteSource(fileDescriptor:queue:)();

  *(v3 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource) = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v36 = sub_100019EE0;
  v37 = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  v34 = sub_100050100;
  v35 = &unk_10008F098;
  _Block_copy(aBlock);
  sub_10000D078();
  static DispatchQoS.unspecified.getter();
  sub_10001ADEC();
  sub_10001AD14();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v17);
  v19 = *(v32 + 8);
  v19(v12, v31);
  v28 = *(v30 + 8);
  v28(v4, v26);

  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = a3;
  v36 = sub_100019EE4;
  v37 = v20;
  sub_10001AC90();
  v34 = v21;
  v35 = &unk_10008F0E8;
  _Block_copy(aBlock);
  sub_10000D078();
  static DispatchQoS.unspecified.getter();
  sub_10001ADEC();
  sub_10001AD14();
  OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
  _Block_release(v17);
  v19(v12, v31);
  v28(v4, v26);

  swift_getObjectType();
  v36 = sub_100019F0C;
  v37 = v3;
  sub_10001AC90();
  v34 = v22;
  v35 = &unk_10008F110;
  _Block_copy(aBlock);
  sub_10000D078();
  static DispatchQoS.unspecified.getter();
  sub_10001ADEC();
  sub_10001AD14();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v17);
  v19(v12, v31);
  v28(v4, v26);

  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = a3;
  v36 = sub_100019F10;
  v37 = v23;
  sub_10001AC90();
  v34 = v24;
  v35 = &unk_10008F160;
  _Block_copy(aBlock);
  sub_10000D078();
  static DispatchQoS.unspecified.getter();
  sub_10001ADEC();
  sub_10001AD14();
  OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
  _Block_release(v17);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v19(v12, v31);
  v28(v4, v26);

  return v3;
}

uint64_t sub_1000165E8()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBEC();
  sub_100019F38(v0, v1, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100016690(uint64_t a1, char a2, void *a3)
{
  *(a1 + *a3) = 0;
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection;
  result = *(a1 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection);
  if (result)
  {
    if (a2)
    {
      result = lockdown_disconnect();
      *(a1 + v5) = 0;
    }
  }

  return result;
}

void sub_1000166E8()
{
  sub_10000D060();
  v2 = v0;
  v3 = type metadata accessor for RemotePairingError();
  sub_10000CBBC();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v99 - v10;
  v12 = type metadata accessor for POSIXError();
  sub_10000CBBC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10001ACC4();
  v16 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue);
  OS_dispatch_queue.assertOnQueueHierarchy()();

  v17 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource);
  if (v17)
  {
    v107 = v14;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v108 = v17;
    if (OS_dispatch_source.data.getter() && (v104 = ObjectType, v105 = v9, v106 = v11, (v19 = *(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection)) != 0))
    {
      v20 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingReceiveRequests;
      swift_beginAccess();
      if (*(*(v2 + v20) + 16))
      {
        v99 = v5;
        sub_10001ADBC();
        swift_beginAccess();
        v101 = v20;
        v21 = sub_1000171AC();
        v100 = v22;
        v102 = v23;
        v103 = v24;
        swift_endAccess();
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v25 = __DataStorage.init(length:)();
        v26 = 0;
        v110 = 0x200000000000;
        v111 = v25 | 0x4000000000000000;
        v109 = 0;
        v27 = (v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__partialReceivedData);
        while (1)
        {
          v28 = sub_100019F80(&v110, v19, 0x2000);
          if (v28 <= 0)
          {
            break;
          }

          v29 = v111 >> 62;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          switch(v111 >> 62)
          {
            case 1uLL:
              v30 = v110 >> 32;
              v31 = v110;
              goto LABEL_11;
            case 2uLL:
              v31 = *(v110 + 16);
              v30 = *(v110 + 24);
LABEL_11:
              if (v30 < v31)
              {
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
                __break(1u);
              }

              if (v29 == 2)
              {
                v33 = *(v110 + 16);
                v32 = *(v110 + 24);
              }

              else
              {
                v32 = v110 >> 32;
                v33 = v110;
              }

LABEL_15:
              if (v32 < v30 || v30 < v33)
              {
                goto LABEL_60;
              }

              v35 = __OFSUB__(v30, v31);
              v36 = v30 - v31;
              if (v35)
              {
                goto LABEL_61;
              }

              if (v36 < v28)
              {
                switch(v29)
                {
                  case 1:
                    v37 = v110 >> 32;
                    goto LABEL_34;
                  case 2:
                    v37 = *(v110 + 24);
                    goto LABEL_35;
                  default:
                    goto LABEL_37;
                }
              }

              v37 = v31 + v28;
              if (__OFADD__(v31, v28))
              {
                goto LABEL_63;
              }

              v38 = 0;
              v39 = 0;
              switch(v29)
              {
                case 1:
                  v38 = v110 >> 32;
                  v39 = v110;
                  break;
                case 2:
                  v39 = *(v110 + 16);
                  v38 = *(v110 + 24);
                  break;
                case 3:
                  break;
                default:
                  v39 = 0;
                  v38 = BYTE6(v111);
                  break;
              }

              if (v38 < v37 || v37 < v39)
              {
                goto LABEL_64;
              }

              v41 = 0;
              switch(v29)
              {
                case 1:
LABEL_34:
                  v41 = v110;
                  break;
                case 2:
LABEL_35:
                  v41 = *(v110 + 16);
                  break;
                default:
                  break;
              }

              if (v37 < v41)
              {
                goto LABEL_62;
              }

LABEL_37:
              v42 = Data._Representation.subscript.getter();
              v44 = v43;
              sub_10001ADBC();
              swift_beginAccess();
              Data.append(_:)();
              swift_endAccess();
              sub_10000DF50(v42, v44);
              if ((lockdown_get_buffered_read_size() & 1) == 0)
              {
                v109 = -1;
LABEL_48:
                v61 = sub_10001AD28();
                sub_10000E228(v61, v62);
                sub_10001AD28();
                v63 = Data.count.getter();
                v64 = sub_10001AD28();
                sub_10000DF50(v64, v65);
                if (v63 < v21)
                {
                  sub_10001ADBC();
                  swift_beginAccess();
                  v66 = v103;

                  sub_10001A4A4(0, 0, v21, v100, v102, v66, sub_1000545C8, sub_10001A670);
                  swift_endAccess();
                  goto LABEL_56;
                }

                v67 = *v27;
                v68 = v27[1];
                v69 = sub_10001AD28();
                sub_10000E228(v69, v70);
                sub_100017214(v100, v67, v68, v112);
                v71 = *v27;
                v72 = v27[1];
                sub_10000E228(*v27, v72);
                sub_10001AD28();
                v73 = Data.count.getter();
                sub_100017398(v73, v71, v72, v112);
                v74 = sub_10006AE14(v112[0], v112[1]);
                v75 = *v27;
                v76 = v27[1];
                *v27 = v74;
                v27[1] = v77;
                sub_10000DF50(v75, v76);

                v78 = sub_10001AD28();
                sub_10000E228(v78, v79);
                v80 = sub_10001AD28();
                v102(v80);
                v81 = sub_10001AD28();
                sub_10000DF50(v81, v82);

                if (*(*(v2 + v101) + 16))
                {
                  sub_10000DF50(v110, v111);
                  v83 = sub_10001AD28();
                  sub_10000DF50(v83, v84);
                  swift_unknownObjectRelease();

                  goto LABEL_44;
                }

                OS_dispatch_source.suspend()();
                swift_unknownObjectRelease();
                v97 = sub_10001AD28();
                sub_10000DF50(v97, v98);

LABEL_57:
                sub_10000DF50(v110, v111);
                goto LABEL_44;
              }

              if (v109 <= 0)
              {
                goto LABEL_48;
              }

              break;
            case 3uLL:
              goto LABEL_15;
            default:
              v31 = 0;
              v33 = 0;
              v30 = BYTE6(v111);
              v32 = BYTE6(v111);
              goto LABEL_15;
          }
        }

        if (v28 < 0)
        {
          static POSIXError.current(or:)();
          v85 = POSIXError._nsError.getter();
          (*(v107 + 8))(v1, v12);
          v85;
          v56 = v106;
        }

        else
        {
          v56 = v106;
          static RemotePairingError.mobileDeviceError.getter();
          v26 = "nnection was closed";
          sub_10001AD4C();
          v58 = sub_100019F38(v57, v27, &protocol conformance descriptor for RemotePairingError);
          sub_10000D444(v58);
          sub_10000D294();
          sub_100019F38(v59, v27, v60);
          Error<>.init(_:_:)();
          swift_errorRetain();
        }

        v86 = static os_log_type_t.error.getter();
        v87 = qword_10009CED0;
        if (os_log_type_enabled(qword_10009CED0, v86))
        {
          v88 = sub_10000D030();
          v89 = sub_10000D464();
          v112[0] = v89;
          *v88 = 136315138;
          swift_getErrorValue();
          v90 = Error.localizedDescription.getter();
          v26 = sub_10000C600(v90, v91, v112);

          *(v88 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v87, v86, "Lockdown tunnel connection receive error: %s", v88, 0xCu);
          sub_10000CADC(v89);
          v56 = v106;
          sub_10000D8D4(v89);
          sub_10001AD90();
        }

        static RemotePairingError.mobileDeviceError.getter();
        sub_10000D8BC();
        sub_100019F38(v92, v26, &protocol conformance descriptor for RemotePairingError);
        Error<>.init(_:_:)();
        sub_10001AD34();
        v95 = sub_100019F38(v93, v26, v94);
        v96 = sub_10000D444(v95);
        _Error.wrapping(_:)();

        (*(v99 + 1))(v56, v3);
        (v102)(v96, 0, 1);

LABEL_56:

        swift_unknownObjectRelease();
        goto LABEL_57;
      }
    }

    else
    {
      static RemotePairingError.connectionFailed.getter();
      sub_10000D8BC();
      v46 = sub_100019F38(v45, v5, &protocol conformance descriptor for RemotePairingError);
      sub_10000D444(v46);
      sub_10000D294();
      sub_100019F38(v47, v5, v48);
      Error<>.init(_:_:)();
      swift_willThrow();
      v49 = static os_log_type_t.error.getter();
      v50 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v49))
      {
        v51 = sub_10000D030();
        v52 = sub_10000D464();
        v113 = v52;
        *v51 = 136315138;
        swift_getErrorValue();
        v53 = Error.localizedDescription.getter();
        v55 = sub_10000C600(v53, v54, &v113);

        *(v51 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v50, v49, "Lockdown tunnel connection failed with error: %s", v51, 0xCu);
        sub_10000CADC(v52);
        sub_10001AD90();
        sub_10000D8D4(v51);
      }

      swift_errorRetain();
      sub_1000194C0();
    }

    swift_unknownObjectRelease();
  }

LABEL_44:
  sub_1000135A0();
}

uint64_t sub_1000171AC()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);

    sub_10001A3B4(0, 1);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017214@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v9 = a2 >> 32;
        v10 = a2;
        break;
      case 2uLL:
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v10 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v11 = sub_10001AB2C(v10, v9, a2, a3);
    if (v7 && v11 < v7)
    {
      switch(v5)
      {
        case 1:
          v12 = a2 >> 32;
          goto LABEL_11;
        case 2:
          v12 = *(a2 + 24);
          goto LABEL_13;
        default:
          goto LABEL_15;
      }
    }

    v12 = sub_10001AAC4(v10, v7, a2, a3);
    result = 0;
    switch(v5)
    {
      case 1:
LABEL_11:
        result = a2;
        break;
      case 2:
LABEL_13:
        result = *(a2 + 16);
        break;
      default:
        break;
    }

    if (v12 >= result)
    {
LABEL_15:
      v13 = Data._Representation.subscript.getter();
      v15 = v14;
      result = sub_10000DF50(a2, a3);
      *a4 = v13;
      a4[1] = v15;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100017398@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = BYTE6(a3);
    v11 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v11 = a2;
        v9 = a2 >> 32;
        break;
      case 2uLL:
        v11 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v11 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v12 = sub_10001AB2C(v11, v9, a2, a3);
    if (!v7 || v12 >= v7)
    {
      v13 = sub_10001AAC4(v11, v7, a2, a3);
      v14 = 0;
      switch(v5)
      {
        case 1:
          v14 = a2 >> 32;
          break;
        case 2:
          v14 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v14 = v10;
          break;
      }

      if (v14 < v13)
      {
        __break(1u);
      }
    }

    v15 = Data._Representation.subscript.getter();
    v17 = v16;
    result = sub_10000DF50(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

void sub_100017520()
{
  sub_10000D060();
  v1 = v0;
  v2 = type metadata accessor for RemotePairingError();
  sub_10000CBBC();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v78 - v9;
  type metadata accessor for POSIXError();
  sub_10000CBBC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000CBDC();
  v14 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue);
  OS_dispatch_queue.assertOnQueueHierarchy()();

  if (!*(v1 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource))
  {
    goto LABEL_17;
  }

  v86 = v12;
  v87 = v8;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = OS_dispatch_source.data.getter();
  if (v15 < 0)
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = v15;
    if (!v15)
    {
LABEL_13:
      static RemotePairingError.connectionFailed.getter();
      sub_10000D8BC();
      v44 = sub_100019F38(v43, v16, &protocol conformance descriptor for RemotePairingError);
      sub_10000D524(v44);
      sub_10000D294();
      sub_100019F38(v45, v16, v46);
      Error<>.init(_:_:)();
      swift_willThrow();
      v47 = static os_log_type_t.error.getter();
      v48 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v47))
      {
        v49 = sub_10000D030();
        v50 = sub_10000D464();
        v89 = v50;
        *v49 = 136315138;
        swift_getErrorValue();
        v51 = Error.localizedDescription.getter();
        v53 = sub_10000C600(v51, v52, &v89);

        *(v49 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v48, v47, "Lockdown tunnel connection failed with error: %s", v49, 0xCu);
        sub_10000CADC(v50);
        sub_10001AD90();
        sub_10000D8D4(v49);
      }

      swift_errorRetain();
      sub_1000194C0();

LABEL_16:
      swift_unknownObjectRelease();
LABEL_17:
      sub_1000135A0();
      return;
    }
  }

  v85 = v4;
  v17 = *(v1 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection);
  if (!v17)
  {
    goto LABEL_13;
  }

  if (v16 >= 0x401)
  {
    v18 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingSendRequests;
    swift_beginAccess();
    v19 = *(v1 + v18);
    if (v19[2])
    {
      v79 = v10;
      sub_10001ADBC();
      v84 = v20;
      swift_beginAccess();
      v21 = v19[4];
      v83 = v19[5];
      v22 = v19[6];
      v23 = v19[7];
      v81 = v22;
      sub_10000E228(v21, v83);
      v82 = v23;

      sub_10001A2C4(0, 1);
      swift_endAccess();
      v24 = v83;
      v25 = Data.count.getter();
      if ((v16 - 1024) >= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v16 - 1024;
      }

      v80 = v21;
      v27 = v21;
      v28 = v24;
      v29 = sub_100017D28(v27, v24, v17, v26);
      v30 = v29;
      if (v29 <= 0)
      {
        if (v29 < 0)
        {
          static POSIXError.current(or:)();
          v63 = POSIXError._nsError.getter();
          v64 = sub_10001ADC8();
          v65(v64);
          v63;
          v60 = v85;
          v55 = v79;
        }

        else
        {
          v55 = v79;
          static RemotePairingError.mobileDeviceError.getter();
          sub_10001AD4C();
          v57 = sub_100019F38(v56, v30, &protocol conformance descriptor for RemotePairingError);
          sub_10000D524(v57);
          sub_10000D294();
          sub_100019F38(v58, v30, v59);
          Error<>.init(_:_:)();
          swift_errorRetain();
          v60 = v85;
        }

        v66 = static os_log_type_t.error.getter();
        v67 = qword_10009CED0;
        if (os_log_type_enabled(qword_10009CED0, v66))
        {
          v68 = sub_10000D030();
          v69 = sub_10000D464();
          v88[0] = v69;
          *v68 = 136315138;
          swift_getErrorValue();
          v70 = Error.localizedDescription.getter();
          v72 = sub_10000C600(v70, v71, v88);

          *(v68 + 4) = v72;
          v60 = v85;
          _os_log_impl(&_mh_execute_header, v67, v66, "Lockdown tunnel connection received connection send error: %s", v68, 0xCu);
          sub_10000CADC(v69);
          sub_10000D8D4(v69);
          sub_10001AD90();
        }

        static RemotePairingError.mobileDeviceError.getter();
        sub_10001AD64();
        sub_100019F38(v73, v67, &protocol conformance descriptor for RemotePairingError);
        Error<>.init(_:_:)();
        sub_10001AD34();
        v76 = sub_100019F38(v74, v67, v75);
        v77 = sub_10000D524(v76);
        sub_10001AD28();
        _Error.wrapping(_:)();

        (*(v60 + 8))(v55, v2);
        v81(v77);

        swift_unknownObjectRelease();
        sub_10000DF50(v80, v83);
      }

      else
      {
        v31 = v80;
        if (v29 >= Data.count.getter())
        {
          v81(0);
          if (!*(*(v1 + v84) + 16))
          {
            OS_dispatch_source.suspend()();
          }

          v61 = sub_10001ADC8();
          sub_10000DF50(v61, v62);
          swift_unknownObjectRelease();
        }

        else
        {
          v32 = sub_10001ADC8();
          sub_10000E228(v32, v33);
          sub_100017398(v30, v31, v28, v88);
          v34 = v88[0];
          v35 = v88[1];
          sub_10001ADBC();
          swift_beginAccess();
          v36 = v82;

          v37 = sub_10001AD28();
          sub_10000E228(v37, v38);

          sub_10001A4A4(0, 0, v34, v35, v81, v36, sub_1000544F8, sub_10001A7B0);
          swift_endAccess();
          v39 = sub_10001AD28();
          sub_10000DF50(v39, v40);

          v41 = sub_10001ADC8();
          sub_10000DF50(v41, v42);
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_1000135A0();

  swift_unknownObjectRelease();
}

uint64_t sub_100017D28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = v10;
      goto LABEL_6;
    case 2uLL:
      v6 = *(a1 + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v8 = v6;
LABEL_6:
      result = sub_10001A904(a1, v8, v7, a3, a4);
      break;
    default:
      result = lockdown_send();
      break;
  }

  return result;
}

uint64_t sub_100017E74()
{
  sub_1000194C0();
  sub_10000ECF4(*(v0 + 16), *(v0 + 24));
  v1 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection_identifier;
  sub_100013414(&qword_10009B730, &unk_100078A80);
  sub_10000CC04();
  (*(v2 + 8))(v0 + v1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_10000DF50(*(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__partialReceivedData), *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__partialReceivedData + 8));

  return v0;
}

uint64_t sub_100017F4C()
{
  sub_100017E74();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for LockdownTunnelConnection(uint64_t a1)
{
  result = qword_100099520;
  if (!qword_100099520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100017FF8(uint64_t a1)
{
  sub_100019960(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000180EC()
{
  _StringGuts.grow(_:)(30);

  v0._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v0);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000181B8()
{
  sub_10000D060();
  v3 = v2;
  v5 = v4;
  v23 = v6;
  v8 = v7;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  __chkstk_darwin(v9);
  sub_10001ACC4();
  v24 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000CBDC();
  sub_10001ADE0();
  v13 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue);
  sub_10000CCD8();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v5;
  v14[4] = v3;
  sub_10001ADD4();
  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = sub_10001AA84;
  v15[4] = v14;
  v15[5] = v8;
  v15[6] = v23;
  v25[4] = sub_10001AA94;
  v25[5] = v15;
  sub_10001ACF4();
  sub_10001ACDC(COERCE_DOUBLE(1107296256));
  v25[2] = v16;
  v25[3] = &unk_10008F318;
  v17 = _Block_copy(v25);
  v18 = v13;

  static DispatchQoS.unspecified.getter();
  sub_10000CBEC();
  sub_100019F38(v19, v20, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  sub_10001AD7C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10001ADAC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  v21 = sub_10000D354();
  v22(v21);
  (*(v11 + 8))(v1, v24);

  sub_1000135A0();
}

uint64_t sub_100018430(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v15 = *(v22 - 8);
  __chkstk_darwin(v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  LOBYTE(a5) = a3 & 1;
  *(v18 + 48) = a3 & 1;
  aBlock[4] = sub_10001ABFC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008F368;
  v19 = _Block_copy(aBlock);

  sub_10001AC30(a1, a2, a5);
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100019F38(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v22);
}

uint64_t sub_1000186FC(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for RemotePairingError();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  if (!*(a1 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource))
  {
    static RemotePairingError.mobileDeviceError.getter();
    sub_100019F38(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    Error<>.init(_:_:)();
    sub_100019F38(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    v16 = swift_allocError();
    (*(v11 + 16))(v17, v14, v10);
    a2(v16, 0, 1);

    return (*(v11 + 8))(v14, v10);
  }

  v38 = a5;
  v39 = a3;
  v15 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingReceiveRequests;
  swift_beginAccess();
  if (*(*(a1 + v15) + 16))
  {
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  v19 = (a1 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__partialReceivedData);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  swift_unknownObjectRetain();
  sub_10000E228(v20, v21);
  v22 = Data.count.getter();
  sub_10000DF50(v20, v21);
  if (v22 < a4)
  {
LABEL_6:
    swift_beginAccess();
    v23 = v39;

    sub_100053EB4();
    v24 = *(*(a1 + v15) + 16);
    sub_100054050(v24);
    v25 = *(a1 + v15);
    *(v25 + 16) = v24 + 1;
    v26 = (v25 + 32 * v24);
    v27 = v38;
    v26[4] = a4;
    v26[5] = v27;
    v26[6] = a2;
    v26[7] = v23;
    *(a1 + v15) = v25;
    swift_endAccess();
    if (!v24)
    {
      swift_getObjectType();
      OS_dispatch_source.resume()();
    }

    return swift_unknownObjectRelease();
  }

  v28 = *v19;
  v29 = v19[1];
  sub_10000E228(*v19, v29);
  sub_100017214(v38, v28, v29, v40);
  v30 = v40[0];
  v31 = v40[1];
  v32 = *v19;
  v33 = v19[1];
  sub_10000E228(*v19, v33);
  v34 = Data.count.getter();
  sub_100017398(v34, v32, v33, v40);
  v35 = *v19;
  v36 = v19[1];
  *v19 = *v40;
  sub_10000DF50(v35, v36);
  sub_10000E228(v30, v31);
  a2(v30, v31, 0);
  sub_10000DF50(v30, v31);
  sub_10000DF50(v30, v31);
  return swift_unknownObjectRelease();
}

void sub_100018ABC()
{
  sub_10000D060();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  __chkstk_darwin(v11);
  sub_10001ACC4();
  type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v26 = v13;
  v27 = v12;
  __chkstk_darwin(v12);
  sub_10000CBDC();
  sub_10001ADE0();
  v14 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue);
  sub_10000CCD8();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v6;
  v15[4] = v4;
  sub_10001ADD4();
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = sub_10001A9F4;
  v16[4] = v15;
  v16[5] = v10;
  v17 = v10;
  v16[6] = v8;
  v18 = v8;
  v28[4] = sub_10001AA00;
  v28[5] = v16;
  sub_10001ACF4();
  sub_10001ACDC(COERCE_DOUBLE(1107296256));
  v28[2] = v19;
  v28[3] = &unk_10008F250;
  v20 = _Block_copy(v28);
  v21 = v14;

  sub_10000E228(v17, v18);
  static DispatchQoS.unspecified.getter();
  sub_10000CBEC();
  sub_100019F38(v22, v23, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  sub_10001AD7C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10001ADAC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  v24 = sub_10000D354();
  v25(v24);
  (*(v26 + 8))(v1, v27);

  sub_1000135A0();
}

uint64_t sub_100018D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  aBlock[4] = sub_10001AA18;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_10008F2A0;
  v16 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  sub_100019F38(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_100018FFC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for RemotePairingError();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  if (*(a1 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource))
  {
    v15 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingSendRequests;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_10000E228(a4, a5);

    sub_100053ECC();
    v16 = *(*(a1 + v15) + 16);
    sub_100054068(v16);
    v17 = *(a1 + v15);
    *(v17 + 16) = v16 + 1;
    v18 = (v17 + 32 * v16);
    v18[4] = a4;
    v18[5] = a5;
    v18[6] = a2;
    v18[7] = a3;
    *(a1 + v15) = v17;
    swift_endAccess();
    if (!v16)
    {
      swift_getObjectType();
      OS_dispatch_source.resume()();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    static RemotePairingError.mobileDeviceError.getter();
    sub_100019F38(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    Error<>.init(_:_:)();
    sub_100019F38(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    v20 = swift_allocError();
    (*(v11 + 16))(v21, v14, v10);
    a2(v20);

    return (*(v11 + 8))(v14, v10);
  }
}

void sub_100019290()
{
  sub_10000D060();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10001ACC4();
  v7 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000CBDC();
  sub_10001ADE0();
  v11 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__queue);
  v17[4] = sub_10001A9EC;
  v18 = v0;
  sub_10001ACF4();
  sub_10001ACDC(COERCE_DOUBLE(1107296256));
  v17[2] = v12;
  v17[3] = &unk_10008F1D8;
  v13 = _Block_copy(v17);
  v14 = v11;

  static DispatchQoS.unspecified.getter();
  sub_10000CBEC();
  sub_100019F38(v15, v16, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100015E2C();
  sub_10001AD7C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10001ADAC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v1, v3);
  (*(v9 + 8))(v2, v7);

  sub_1000135A0();
}

void sub_1000194C0()
{
  sub_10000D060();
  v2 = v0;
  v4 = v3;
  type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v5);
  sub_10000CBDC();
  sub_10001ADE0();
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    static RemotePairingError.mobileDeviceError.getter();
    sub_10001AD64();
    sub_100019F38(v7, v1, &protocol conformance descriptor for RemotePairingError);
    v6 = swift_allocError();
    sub_10000D294();
    sub_100019F38(v8, v1, v9);
    Error<>.init(_:_:)();
  }

  v10 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingReceiveRequests;
  swift_beginAccess();
  v41 = v10;
  v42 = v0;
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    swift_errorRetain();
    v45 = _swiftEmptyArrayStorage;

    sub_10004BED4(0, v12, 0);
    v13 = _swiftEmptyArrayStorage;
    v14 = (v11 + 56);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = v15;
      v45 = v13;
      v19 = v13[2];
      v18 = v13[3];

      if (v19 >= v18 >> 1)
      {
        sub_10004BED4((v18 > 1), v19 + 1, 1);
        v13 = v45;
      }

      v13[2] = (v19 + 1);
      v20 = &v13[2 * v19];
      v20[4] = sub_10001A98C;
      v20[5] = v17;
      v14 += 4;
      --v12;
    }

    while (v12);
  }

  else
  {
    swift_errorRetain();
    v13 = _swiftEmptyArrayStorage;
  }

  v21 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__pendingSendRequests;
  swift_beginAccess();
  v22 = *(v2 + v21);
  v23 = *(v22 + 16);
  v24 = _swiftEmptyArrayStorage;
  if (v23)
  {
    v43[0] = _swiftEmptyArrayStorage;

    sub_10004BE90(0, v23, 0);
    v24 = _swiftEmptyArrayStorage;
    v25 = (v22 + 56);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      *(v28 + 24) = v27;
      v43[0] = v24;
      v29 = v24[2];
      v30 = v24[3];

      if (v29 >= v30 >> 1)
      {
        sub_10004BE90((v30 > 1), v29 + 1, 1);
        v24 = v43[0];
      }

      v24[2] = (v29 + 1);
      v31 = &v24[2 * v29];
      v31[4] = sub_10001A9C0;
      v31[5] = v28;
      v25 += 4;
      --v23;
    }

    while (v23);

    v2 = v42;
  }

  v32 = 0;
  v33 = v13[2];
  v34 = v13 + 5;
  while (v33 != v32)
  {
    if (v32 >= v13[2])
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    ++v32;
    v35 = *(v34 - 1);
    v43[0] = v6;
    v43[1] = 0;
    v44 = 1;

    v35(v43);

    v34 += 2;
  }

  v36 = 0;
  v37 = v24[2];
  v38 = v24 + 5;
  while (v37 != v36)
  {
    if (v36 >= v24[2])
    {
      goto LABEL_35;
    }

    ++v36;
    v39 = *(v38 - 1);
    v43[0] = v6;

    v39(v43);

    v38 += 2;
  }

  *(v2 + v41) = _swiftEmptyArrayStorage;

  *(v2 + v21) = _swiftEmptyArrayStorage;

  if (*(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canReceiveSource))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  if (*(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__canSendSource))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  v40 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection;
  if (*(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__lockdownConnection) && (*(v2 + OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection__shouldCloseConnectionOnCancel) & 1) != 0)
  {
    lockdown_disconnect();

    *(v2 + v40) = 0;
  }

  else
  {
  }

  sub_1000135A0();
}

void sub_100019960(uint64_t a1)
{
  if (!qword_100099530)
  {
    type metadata accessor for TunnelConnectionIdentifierCategory();
    v1 = type metadata accessor for Identifier();
    if (!v2)
    {
      atomic_store(v1, &qword_100099530);
    }
  }
}

uint64_t sub_1000199C0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1000199DC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000199F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100019A38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100019B28(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_100019BC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20remotepairingdeviced24LockdownTunnelConnection_identifier;
  sub_100013414(&qword_10009B730, &unk_100078A80);
  sub_10000CC04();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

unint64_t sub_100019E9C()
{
  result = qword_100099830;
  if (!qword_100099830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100099830);
  }

  return result;
}

uint64_t sub_100019F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__int128 *sub_100019F80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v14 = v4 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10000DF50(v5, v4);
      *a1 = xmmword_1000770B0;
      sub_10000DF50(0, 0xC000000000000000);
      v15 = v5 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_12;
      }

      if (v15 < v5)
      {
        goto LABEL_16;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_17;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v14 = v16;
LABEL_12:
      if (v15 < v5)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      v9 = sub_10001A580(v5, v5 >> 32, v14, a2, a3);

      *a1 = v5;
      a1[1] = v14 | 0x4000000000000000;
      return v9;
    case 2uLL:

      sub_10000DF50(v5, v4);
      *&v19 = v5;
      *(&v19 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1000770B0;
      sub_10000DF50(0, 0xC000000000000000);
      v9 = &v19;
      Data.LargeSlice.ensureUniqueReference()();
      v11 = v19;
      v12 = sub_10001A580(*(v19 + 16), *(v19 + 24), *(&v19 + 1), a2, a3);
      *a1 = v11;
      a1[1] = *(&v11 + 1) | 0x8000000000000000;
      if (!v3)
      {
        return v12;
      }

      return v9;
    case 3uLL:
      *(&v19 + 7) = 0;
      *&v19 = 0;
      return lockdown_recv();
    default:
      sub_10000DF50(v5, v4);
      WORD4(v19) = v4;
      BYTE10(v19) = BYTE2(v4);
      BYTE11(v19) = BYTE3(v4);
      BYTE12(v19) = BYTE4(v4);
      BYTE13(v19) = BYTE5(v4);
      BYTE14(v19) = BYTE6(v4);
      v9 = lockdown_recv();
      v10 = DWORD2(v19) | ((WORD6(v19) | (BYTE14(v19) << 16)) << 32);
      *a1 = v5;
      a1[1] = v10;
      return v9;
  }
}

uint64_t sub_10001A2C4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_10001A5F8(result, 1, sub_1000544F8);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_100054A30((v9 + 32 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10001A3B4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_10001A5F8(result, 1, sub_1000545C8);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_100054A30((v9 + 32 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10001A4A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(*v8 + 16);
  if (v10 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  v12 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = __OFSUB__(1, v12);
  v14 = 1 - v12;
  if (v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v10 + v14;
  if (__OFADD__(v10, v14))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_10001A5F8(result, 1, a7);

  return a8(v11, a2, 1, a3, a4, a5, a6);
}

uint64_t sub_10001A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = __DataStorage._bytes.getter();
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(a1, result))
    {
      __DataStorage._length.getter();
      return lockdown_recv();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001A5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_10001A670(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = *v7;
  v15 = (v14 + 32 + 32 * result);
  result = swift_arrayDestroy();
  v16 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = *(v14 + 16);
  if (__OFSUB__(v17, a2))
  {
    goto LABEL_16;
  }

  result = sub_100054A30((v14 + 32 + 32 * a2), v17 - a2, &v15[4 * a3]);
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, v16);
  v20 = v18 + v16;
  if (v19)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v14 + 16) = v20;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v15 = a4;
    v15[1] = a5;
    v15[2] = a6;
    v15[3] = a7;
    if (v15 + 4 < &v15[4 * a3])
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10001A7B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = *v7;
  v15 = (v14 + 32 + 32 * result);
  result = swift_arrayDestroy();
  v16 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = *(v14 + 16);
  if (__OFSUB__(v17, a2))
  {
    goto LABEL_16;
  }

  result = sub_100054A30((v14 + 32 + 32 * a2), v17 - a2, &v15[4 * a3]);
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, v16);
  v20 = v18 + v16;
  if (v19)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v14 + 16) = v20;
LABEL_7:
  if (a3 < 1)
  {
    sub_10000DF50(a4, a5);
  }

  else
  {
    *v15 = a4;
    v15[1] = a5;
    v15[2] = a6;
    v15[3] = a7;
    if (v15 + 4 < &v15[4 * a3])
    {
      sub_10000E228(a4, a5);

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10001A904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __DataStorage._bytes.getter();
  if (v6)
  {
    v7 = v6;
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = a1 - result + v7;
  }

  else
  {
    v9 = 0;
  }

  result = __DataStorage._length.getter();
  if (v9)
  {
    return lockdown_send();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10001AA48()
{

  sub_10000CCD8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10001AAC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10001AB2C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < result || v5 > result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v10)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001AC30(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_10000E228(a1, a2);
  }
}

uint64_t sub_10001AD90()
{
}

uint64_t sub_10001ADEC()
{

  return sub_1000165E8();
}

Swift::Int sub_10001AE3C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10001AEA0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_10001AEE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, void), uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  v10 = sub_1000229A0();
  sub_10000E228(v10, v11);

  sub_1000215B4();
  v14 = sub_10001C2A4();
  sub_1000229A0();
  v15 = CUPairingIdentity.authTag(for:type:)();
  v17 = v16;
  a4(v15, v16, 0);
  sub_10000ED08(v15, v17, 0);

  v12 = sub_1000229A0();
  sub_10000DF50(v12, v13);

  sub_100022960();
}

void sub_10001B198(void (*a1)(void *, void))
{
  sub_1000215B4();
  v2 = sub_10001C2A4();
  v5 = v2;
  a1(v2, 0);

  sub_100022960();
}

void sub_10001B3E8(void *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void, void))
{
  v10 = static os_log_type_t.default.getter();
  v11 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v10))
  {
    sub_10000D054();
    v12 = swift_slowAlloc();
    sub_10000CCCC();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v12 = 136446210;
    sub_100022260(a4 + 24, v19);
    sub_100013414(&qword_1000999E0, &unk_100077520);
    v13 = String.init<A>(describing:)();
    v15 = a5;
    v16 = sub_10000C600(v13, v14, &v20);

    *(v12 + 4) = v16;
    a5 = v15;
    _os_log_impl(&_mh_execute_header, v11, v10, "Fetched IRK from IRK generator %{public}s", v12, 0xCu);
    sub_10000CADC(v18);
    sub_100015FBC();

    sub_100015FBC();
  }

  if (a3)
  {
    swift_errorRetain();
    v17 = 1;
  }

  else
  {
    sub_10001B5A4(a4, a1, a2, &v20, v19);
    v17 = 0;
    a1 = v19[0];
  }

  a5(a1, v17);
  sub_100022030(a1, v17);
}

void sub_10001B5A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v41 = a2;
  v42 = a5;
  v9 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  __chkstk_darwin(v9);
  v11 = v39 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 104);
  v43 = v5;
  if (v16)
  {
    v17 = v16;
    v18 = static os_log_type_t.debug.getter();
    v19 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v21;
      *v20 = 136315138;
      v22 = [v17 identifier];
      if (v22)
      {
        v23 = v22;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = 0;
      }

      else
      {
        v24 = 1;
      }

      sub_1000223E8(v11, v24, 1, v12);
      v36 = String.init<A>(describing:)();
      v38 = sub_10000C600(v36, v37, &v44);

      *(v20 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v19, v18, "Not saving new pairing identity as one has already been created. Using already created identity %s", v20, 0xCu);
      sub_10000CADC(v21);
    }
  }

  else
  {
    v39[0] = a4;
    v25 = [objc_allocWithZone(CUPairingIdentity) init];
    v40 = a3;
    v17 = v25;
    PairingKey = generatePairingKeyPair()();
    v28 = v27;
    v39[1] = a1;
    v30 = v29;
    v31 = v12;
    v33 = v32;
    UUID.init()();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v15, v31);
    [v17 setIdentifier:isa];

    sub_10000F344(PairingKey, v28, v17);
    sub_100022390(v30, v33, v17);
    sub_10000F39C(v41, v40, v17);
    v35 = v43;
    sub_10001B904();
    if (v35)
    {
      sub_10000DF50(v30, v33);
      sub_10000DF50(PairingKey, v28);

      *v39[0] = v35;
      return;
    }

    sub_10000DF50(PairingKey, v28);
    sub_10000DF50(v30, v33);
  }

  *v42 = v17;
}

void sub_10001B904()
{
  sub_10000D600();
  v105 = v1;
  v99 = v0;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  sub_10000CBBC();
  v104 = v6;
  __chkstk_darwin(v7);
  sub_10000EDF0();
  v103 = v8 - v9;
  sub_100022894();
  __chkstk_darwin(v10);
  v12 = &v97 - v11;
  v13 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v14 = sub_10000D368(v13);
  __chkstk_darwin(v14);
  sub_10000EDF0();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  sub_10002284C();
  v19 = static os_log_type_t.info.getter();
  v110 = qword_10009CED0;
  v102 = sub_100013414(&qword_1000999F0, &unk_100077530);
  sub_10000D374();
  v20 = swift_allocObject();
  v101 = xmmword_100077360;
  *(v20 + 16) = xmmword_100077360;
  v21 = [v4 identifier];
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_1000223E8(v17, v23, 1, v5);
  v24 = sub_10000D884();
  sub_1000224F0(v24, v25);
  if (sub_100022484(v2, 1, v5))
  {
    sub_100022560(v2, &qword_1000999E8, &unk_100077D60);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    LODWORD(v100) = v19;
    v28 = v4;
    v29 = v104;
    (*(v104 + 16))(v12, v2, v5);
    sub_100022560(v2, &qword_1000999E8, &unk_100077D60);
    v26 = UUID.uuidString.getter();
    v27 = v30;
    v31 = v29;
    v4 = v28;
    v19 = v100;
    (*(v31 + 8))(v12, v5);
  }

  *&v108 = v26;
  *(&v108 + 1) = v27;
  sub_100013414(&qword_100099A10, &unk_100077560);
  v32 = String.init<A>(describing:)();
  v34 = v33;
  *(v20 + 56) = &type metadata for String;
  v100 = sub_100022420();
  *(v20 + 64) = v100;
  *(v20 + 32) = v32;
  *(v20 + 40) = v34;
  sub_100022ADC(v19, &_mh_execute_header, v110, "Saving new pairing identity (id=%{public}@) to system keychain");
  os_log(_:dso:log:_:_:)(v35, v36, v37, v38);

  v39 = Dictionary.init(dictionaryLiteral:)();
  v40 = sub_100022330(v4, &selRef_altIRK);
  if (v41 >> 60 == 15)
  {
    sub_10004FEF0(0x4B5249746C61, 0xE600000000000000);
    if (v42)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022950();
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      v43 = sub_100022940();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v43, v39);
      sub_1000228A0();
      sub_1000229F8();
      sub_100022994();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_100022910();
    }

    sub_100022560(&v108, &qword_100099A00, &qword_100077540);
  }

  else
  {
    sub_10002285C(v40, v41);
    v44 = sub_100022824();
    sub_100068B8C(v44, 0x4B5249746C61, 0xE600000000000000);
    v39 = v106;
  }

  v45 = sub_100022330(v4, &selRef_secretKey);
  if (v46 >> 60 == 15)
  {
    sub_10004FEF0(27507, 0xE200000000000000);
    if (v47)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022950();
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      v48 = sub_100022940();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v48, v39);
      sub_1000228A0();
      sub_1000229F8();
      sub_100022994();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_100022910();
    }

    sub_100022560(&v108, &qword_100099A00, &qword_100077540);
  }

  else
  {
    sub_10002285C(v45, v46);
    v49 = sub_100022824();
    sub_100068B8C(v49, 27507, 0xE200000000000000);
    v39 = v106;
  }

  v50 = sub_100022330(v4, &selRef_publicKey);
  if (v51 >> 60 == 15)
  {
    sub_10004FEF0(27504, 0xE200000000000000);
    if (v52)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022950();
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      v53 = sub_100022940();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v53, v39);
      sub_1000228A0();
      sub_1000229F8();
      sub_100022994();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_100022910();
    }

    sub_100022560(&v108, &qword_100099A00, &qword_100077540);
  }

  else
  {
    sub_10002285C(v50, v51);
    v54 = sub_100022824();
    sub_100068B8C(v54, 27504, 0xE200000000000000);
    v39 = v106;
  }

  v109 = sub_100013414(&qword_100099A20, &unk_100078310);
  *&v108 = v39;

  v55 = v105;
  v56 = OPACKEncoderCreateData(from:)();
  if (v55)
  {

    sub_10000CADC(&v108);
LABEL_32:
    sub_100016010();
    return;
  }

  v98 = v56;
  v105 = v57;
  sub_10000CADC(&v108);
  sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077370;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v59;
  type metadata accessor for CFString(0);
  v97 = v60;
  *(inited + 72) = v60;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v61;
  v62 = kSecClassGenericPassword;
  v63 = [v4 identifier];
  if (v63)
  {
    v64 = v63;
    v65 = v103;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = UUID.uuidString.getter();
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = v66;
    *(inited + 104) = v67;
    (*(v104 + 8))(v65, v5);
    if (kSecUseSystemKeychain)
    {

      *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 136) = v68;
      *(inited + 168) = &type metadata for Bool;
      *(inited + 144) = 1;
      *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 184) = v69;
      *(inited + 216) = &type metadata for String;
      *(inited + 192) = 0xD000000000000017;
      *(inited + 200) = 0x800000010007D180;
      *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 232) = v70;
      *(inited + 264) = &type metadata for String;
      *(inited + 240) = 0xD000000000000017;
      *(inited + 248) = 0x800000010007D180;
      *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 280) = v71;
      *(inited + 312) = &type metadata for String;
      *(inited + 288) = 0xD000000000000017;
      *(inited + 296) = 0x800000010007D180;
      *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 328) = v72;
      *(inited + 360) = &type metadata for Data;
      v73 = v98;
      v74 = v105;
      *(inited + 336) = v98;
      *(inited + 344) = v74;
      sub_10000E228(v73, v74);
      Dictionary.init(dictionaryLiteral:)();
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;
      v109 = &type metadata for String;
      *&v108 = 0xD000000000000017;
      *(&v108 + 1) = 0x800000010007CF00;
      sub_10000E8A4(&v108, v107);
      swift_isUniquelyReferenced_nonNull_native();
      v78 = sub_10000EAEC();
      sub_100068B8C(v78, v75, v77);

      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;
      v109 = v97;
      *&v108 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
      sub_10000E8A4(&v108, v107);
      v82 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
      swift_isUniquelyReferenced_nonNull_native();
      v83 = sub_10000EAEC();
      sub_100068B8C(v83, v79, v81);

      Dictionary._bridgeToObjectiveC()();
      sub_100022ABC();

      v84 = SecItemAdd(v79, 0);

      if (v84)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100022800();
        v85 = objc_allocWithZone(NSError);
        v86 = sub_10002277C();
        v87 = static os_log_type_t.error.getter();
        sub_10000D374();
        v88 = swift_allocObject();
        *(v88 + 16) = v101;
        v89 = v86;
        v90 = [v89 description];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = v100;
        *(v88 + 56) = &type metadata for String;
        *(v88 + 64) = v94;
        *(v88 + 32) = v91;
        *(v88 + 40) = v93;
        os_log(_:dso:log:_:_:)(v87, &_mh_execute_header, v110, "Failed to save new pairing identity to system keychain: %{public}@", 66, 2, v88);

        swift_willThrow();
        sub_10000DF50(v98, v105);
      }

      else
      {
        sub_10000DF50(v98, v105);
        v95 = *(v99 + 104);
        *(v99 + 104) = v4;
        v96 = v4;
      }

      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_10001C2A4()
{
  v2 = v0[13];
  if (v2)
  {
    v0 = v0[13];
  }

  else
  {
    sub_10001C314();
    if (v1)
    {
      return v0;
    }

    v6 = v0[13];
    v0[13] = v4;
    v0 = v4;

    v2 = 0;
  }

  v3 = v2;
  return v0;
}

void sub_10001C314()
{
  sub_10000D600();
  v74 = type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v2);
  sub_10000CBDC();
  v3 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000D368(v3);
  sub_10000D8B0();
  __chkstk_darwin(v4);
  v73 = sub_100022B6C();
  sub_10000CBBC();
  v71 = v5;
  __chkstk_darwin(v6);
  sub_10000CBDC();
  v72 = (v8 - v7);
  v9 = static os_log_type_t.info.getter();
  v70 = qword_10009CED0;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_10009CED0, "Loading self identity from system keychain", 42, 2, _swiftEmptyArrayStorage);
  sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077380;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  type metadata accessor for CFString(0);
  *(inited + 72) = v12;
  *(inited + 48) = kSecClassGenericPassword;
  if (!kSecUseSystemKeychain)
  {
    __break(1u);
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v13;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v14;
  sub_100022988();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = 0xD000000000000017;
  *(inited + 152) = v15;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v16;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v17;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v18 = kSecClassGenericPassword;
  sub_10000D048();
  v19 = Dictionary.init(dictionaryLiteral:)();
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v78 = &type metadata for String;
  *&v77 = 0xD000000000000017;
  *(&v77 + 1) = 0x800000010007CF00;
  sub_10000E8A4(&v77, &v76);
  swift_isUniquelyReferenced_nonNull_native();
  v23 = sub_10000EAEC();
  sub_100068B8C(v23, v20, v22);

  v24 = v75;
  v75 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v26 = SecItemCopyMatching(isa, &v75);

  if (v26)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100022B20();
    v27 = objc_allocWithZone(NSError);
    v28 = sub_1000228C0();
    sub_1000228D8(v28, v29, v26);
LABEL_20:
    swift_willThrow();
    goto LABEL_21;
  }

  if (!v75)
  {
    goto LABEL_18;
  }

  *&v77 = v75;
  swift_unknownObjectRetain();
  sub_100013414(&qword_100099A20, &unk_100078310);
  sub_10000D47C();
  if ((sub_100022A14() & 1) == 0)
  {
    goto LABEL_18;
  }

  v19 = v76;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10004C55C(v30, v31, v19, &v77);

  if (!v78)
  {
LABEL_17:

    sub_100022560(&v77, &qword_100099A00, &qword_100077540);
LABEL_18:

    goto LABEL_19;
  }

  sub_10000D47C();
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_11:

    goto LABEL_19;
  }

  v32 = v76;
  UUID.init(uuidString:)();
  if (sub_100022484(v1, 1, v73) == 1)
  {

    sub_100022560(v1, &qword_1000999E8, &unk_100077D60);
LABEL_19:
    static RemotePairingError.pairingFailed.getter();
    sub_10000EE10();
    v43 = sub_100022628(v42, v19, &protocol conformance descriptor for RemotePairingError);
    sub_1000229C4(v74, v43);
    sub_10000D294();
    sub_100022628(v44, v19, v45);
    Error<>.init(_:_:)();
    goto LABEL_20;
  }

  v33 = sub_1000227A4();
  v34(v33);
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10004C55C(v35, v36, v19, &v77);

  if (!v78)
  {
    v40 = sub_100022994();
    v41(v40);

    goto LABEL_17;
  }

  sub_10000D47C();
  if ((sub_100022A30() & 1) == 0)
  {
    (*(v71 + 8))(v72, v73);

    goto LABEL_11;
  }

  v69 = v19;
  v37 = v76;
  sub_10001ADC8();
  OPACKDecode(data:)();
  v19 = v72;
  if (v0)
  {
    (*(v71 + 8))(v72, v73);
    v38 = sub_10001ADC8();
    sub_10000DF50(v38, v39);

LABEL_21:
    swift_unknownObjectRelease();
    sub_100016010();
    return;
  }

  sub_10000D47C();
  if ((sub_100022A14() & 1) == 0)
  {
    (*(v71 + 8))(v72, v73);

    sub_10000DF50(v37, *(&v37 + 1));

    goto LABEL_11;
  }

  v46 = v76;
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10004C55C(v47, v48, v69, &v77);

  if (!v78)
  {

    sub_100022560(&v77, &qword_100099A00, &qword_100077540);
    goto LABEL_35;
  }

  sub_10000D47C();
  if ((sub_100022A30() & 1) == 0)
  {

LABEL_37:
    v53 = [objc_allocWithZone(CUPairingIdentity) init];
    v54 = UUID._bridgeToObjectiveC()().super.isa;
    [v53 setIdentifier:v54];

    sub_10004C55C(0x4B5249746C61, 0xE600000000000000, v46, &v77);
    if (v78)
    {
      sub_10000D47C();
      if (swift_dynamicCast())
      {
        sub_10000CC14();
        v55.super.isa = Data._bridgeToObjectiveC()().super.isa;
        v56 = sub_10000CC14();
        sub_10000DF50(v56, v57);
        goto LABEL_42;
      }
    }

    else
    {
      sub_100022560(&v77, &qword_100099A00, &qword_100077540);
    }

    v55.super.isa = 0;
LABEL_42:
    [v53 setAltIRK:v55.super.isa];

    sub_10004C55C(27507, 0xE200000000000000, v46, &v77);
    if (v78)
    {
      sub_10000D47C();
      if (swift_dynamicCast())
      {
        sub_10000CC14();
        v58.super.isa = Data._bridgeToObjectiveC()().super.isa;
        v59 = sub_10000CC14();
        sub_10000DF50(v59, v60);
        goto LABEL_47;
      }
    }

    else
    {
      sub_100022560(&v77, &qword_100099A00, &qword_100077540);
    }

    v58.super.isa = 0;
LABEL_47:
    [v53 setSecretKey:v58.super.isa];

    sub_10004C55C(27504, 0xE200000000000000, v46, &v77);

    if (v78)
    {
      sub_10000D47C();
      v61 = v70;
      if (swift_dynamicCast())
      {
        sub_10000CC14();
        v62.super.isa = Data._bridgeToObjectiveC()().super.isa;
        v63 = sub_10000CC14();
        sub_10000DF50(v63, v64);
LABEL_52:
        [v53 setPublicKey:v62.super.isa];

        v65 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v61, v65))
        {
          sub_10000D054();
          v66 = swift_slowAlloc();
          sub_10000CCCC();
          v67 = swift_slowAlloc();
          *&v77 = v67;
          *v66 = 136315138;
          v68 = sub_10000C600(v32, *(&v32 + 1), &v77);

          *(v66 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v70, v65, "Fetched existing system pairing identity (id=%s from keychain", v66, 0xCu);
          sub_10000CADC(v67);
          sub_100015FBC();

          sub_100015FBC();
        }

        else
        {
        }

        sub_10000DF50(v37, *(&v37 + 1));
        (*(v71 + 8))(v72, v73);
        goto LABEL_21;
      }
    }

    else
    {
      sub_100022560(&v77, &qword_100099A00, &qword_100077540);
      v61 = v70;
    }

    v62.super.isa = 0;
    goto LABEL_52;
  }

  if (kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate)
  {
    v49 = v76;

    if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && *(&v49 + 1) == v50)
    {

LABEL_57:
      sub_100021650(v24);
      goto LABEL_35;
    }

    sub_10000D048();
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v52)
    {
      goto LABEL_57;
    }

LABEL_35:

    goto LABEL_37;
  }

  __break(1u);
}

void sub_10001CE74()
{
  sub_10000D600();
  v3 = v2;
  v4 = type metadata accessor for UUID();
  sub_10000CBBC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000EDF0();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_10002284C();
  sub_1000215B4();
  if (v0)
  {
    goto LABEL_2;
  }

  v12 = [v3 identifier];
  if (v12)
  {
    v13 = v12;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v1, v10, v4);
    v14 = static os_log_type_t.debug.getter();
    v15 = qword_10009CED0;
    sub_100013414(&qword_1000999F0, &unk_100077530);
    sub_10000D374();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100077360;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100022420();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v20 = v15;
    sub_100022ADC(v14, &_mh_execute_header, v15, "Trying to fetch peer with ID %{public}@");
    os_log(_:dso:log:_:_:)(v21, v22, v23, v24);

    sub_10001F1E0();
    v121 = sub_10001ADC8();
    v122(v121);
    goto LABEL_105;
  }

  v151 = v3;
  v25 = static os_log_type_t.debug.getter();
  v26 = qword_10009CED0;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10009CED0, "Trying to find peer based on public key", 39, 2, _swiftEmptyArrayStorage);
  sub_10001E884();
  v28 = v27;
  v150 = v26;
  v29 = 0;
  v154 = v27 & 0xC000000000000001;
  v155 = sub_10004997C();
  v152 = v28;
  v153 = v28 & 0xFFFFFFFFFFFFFF8;
  v30 = v151;
  while (1)
  {
    if (v155 == v29)
    {

      v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v125 = v124;
      v126 = objc_allocWithZone(NSError);
      sub_1000228D8(v123, v125, -25300);
      swift_willThrow();
      goto LABEL_2;
    }

    if (v154)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *(v153 + 16))
      {
        goto LABEL_107;
      }

      v31 = *(v28 + 8 * v29 + 32);
    }

    v32 = v31;
    if (__OFADD__(v29, 1))
    {
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
LABEL_116:
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
    }

    v33 = sub_100022330(v31, &selRef_publicKey);
    v35 = v34;
    v36 = sub_100022330(v30, &selRef_publicKey);
    v38 = v36;
    v39 = v37;
    if (v35 >> 60 == 15)
    {
      if (v37 >> 60 == 15)
      {

        v127 = sub_1000227B0();
        sub_10000ECF4(v127, v128);
        goto LABEL_104;
      }

LABEL_15:

      v40 = sub_1000227B0();
      sub_10000ECF4(v40, v41);
      v42 = sub_1000227A4();
      sub_10000ECF4(v42, v43);
      goto LABEL_98;
    }

    if (v37 >> 60 == 15)
    {
      goto LABEL_15;
    }

    v44 = v35 >> 62;
    v45 = v37 >> 62;
    if (v37 >> 60 == 14)
    {
      break;
    }

    v47 = 0;
    switch(v44)
    {
      case 0uLL:
        v47 = BYTE6(v35);
        break;
      case 1uLL:
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_110;
        }

        v47 = HIDWORD(v33) - v33;
        break;
      case 2uLL:
        v49 = *(v33 + 16);
        v48 = *(v33 + 24);
        v50 = __OFSUB__(v48, v49);
        v47 = v48 - v49;
        if (!v50)
        {
          break;
        }

        goto LABEL_111;
      case 3uLL:
        break;
      default:
        goto LABEL_127;
    }

LABEL_32:
    v51 = HIDWORD(v36);
    v52 = BYTE6(v37);
    switch(v45)
    {
      case 1uLL:
        LODWORD(v53) = HIDWORD(v36) - v36;
        if (__OFSUB__(HIDWORD(v36), v36))
        {
          goto LABEL_109;
        }

        v53 = v53;
LABEL_41:
        if (v47 == v53)
        {
          if (v47 < 1)
          {
LABEL_101:
            v129 = sub_1000227A4();
            sub_10000ECF4(v129, v130);
            goto LABEL_102;
          }

          v56 = v36 >> 32;
          v57 = v36 >> 40;
          v58 = HIWORD(v36);
          switch(v44)
          {
            case 1:
              if (v33 >> 32 < v33)
              {
                goto LABEL_112;
              }

              v76 = sub_1000227A4();
              sub_10000EC4C(v76, v77);
              v78 = sub_1000227A4();
              sub_10000EC4C(v78, v79);
              sub_10002273C();
              v80 = __DataStorage._bytes.getter();
              if (v80)
              {
                v138 = v33 >> 32;
                v81 = v80;
                v82 = __DataStorage._offset.getter();
                if (__OFSUB__(v33, v82))
                {
                  goto LABEL_115;
                }

                v140 = (v33 - v82 + v81);
              }

              else
              {
                v140 = 0;
              }

LABEL_70:
              __DataStorage._length.getter();
              sub_10002203C(v168, v140, v38, v39);
              v86 = sub_1000227A4();
              sub_10000ECF4(v86, v87);
              v88 = sub_1000227A4();
              sub_10000ECF4(v88, v89);
              v90 = sub_1000227A4();
              sub_10000ECF4(v90, v91);
              v92 = v168[0];
              v93 = sub_1000227A4();
              sub_10000ECF4(v93, v94);
              v95 = sub_1000227A4();
              sub_10000ECF4(v95, v96);
              v97 = sub_1000227B0();
              sub_10000ECF4(v97, v98);
              v30 = v151;
              goto LABEL_96;
            case 2:
              v65 = *(v33 + 16);
              v145 = *(v33 + 24);
              v66 = sub_1000227A4();
              sub_10000EC4C(v66, v67);
              v68 = sub_1000227A4();
              sub_10000EC4C(v68, v69);
              sub_10002273C();
              v70 = __DataStorage._bytes.getter();
              if (v70)
              {
                v138 = v65;
                v71 = v70;
                v72 = __DataStorage._offset.getter();
                v73 = v138;
                if (__OFSUB__(v138, v72))
                {
                  goto LABEL_114;
                }

                v140 = (v138 - v72 + v71);
              }

              else
              {
                v140 = 0;
                v73 = v65;
              }

              if (!__OFSUB__(v145, v73))
              {
                goto LABEL_70;
              }

              goto LABEL_113;
            case 3:
              memset(v168, 0, 14);
              if (v45 == 2)
              {
                v141 = *(v38 + 24);
                v146 = *(v38 + 16);
                sub_10002273C();
                v99 = __DataStorage._bytes.getter();
                if (v99)
                {
                  v100 = sub_100022B8C(v99);
                  v101 = v146;
                  if (__OFSUB__(v146, v100))
                  {
                    goto LABEL_121;
                  }

                  v102 = v146 - v100 + v138;
                }

                else
                {
                  v102 = 0;
                  v101 = v146;
                }

                v148 = v102;
                v50 = __OFSUB__(v141, v101);
                v143 = v141 - v101;
                if (v50)
                {
                  goto LABEL_119;
                }

                v107 = __DataStorage._length.getter();
                v108 = v148;
                if (!v148)
                {
                  goto LABEL_124;
                }

                goto LABEL_84;
              }

              if (v45 != 1)
              {
LABEL_64:
                v156 = v38;
                v157 = BYTE2(v38);
                v158 = BYTE3(v38);
                v159 = v51;
                v160 = v57;
                v161 = v58;
                v162 = HIBYTE(v38);
                v163 = v39;
                v164 = BYTE2(v39);
                v165 = BYTE3(v39);
                v166 = BYTE4(v39);
                v167 = BYTE5(v39);
                v83 = memcmp(v168, &v156, v52);
                v84 = sub_1000227A4();
                sub_10000ECF4(v84, v85);
                goto LABEL_95;
              }

              v139 = v38 >> 32;
              v144 = v38;
              if (v56 < v38)
              {
                goto LABEL_116;
              }

              sub_10002273C();
              v74 = __DataStorage._bytes.getter();
              if (v74)
              {
                v75 = sub_100022B8C(v74);
                if (__OFSUB__(v38, v75))
                {
                  goto LABEL_123;
                }

                v138 += v38 - v75;
              }

              else
              {
                v138 = 0;
              }

              v107 = __DataStorage._length.getter();
              v108 = v138;
              if (!v138)
              {
                __break(1u);
LABEL_124:
                __break(1u);
LABEL_125:
                __break(1u);
LABEL_126:
                __break(1u);
                sub_10000ECF4(v107, v108);
                v134 = sub_1000227A4();
                sub_10000ECF4(v134, v135);
                v136 = sub_1000227A4();
                sub_10000DF50(v136, v137);

                __break(1u);
LABEL_127:
                JUMPOUT(0);
              }

              goto LABEL_90;
            default:
              v168[0] = v33;
              LOWORD(v168[1]) = v35;
              BYTE2(v168[1]) = BYTE2(v35);
              BYTE3(v168[1]) = BYTE3(v35);
              BYTE4(v168[1]) = BYTE4(v35);
              BYTE5(v168[1]) = BYTE5(v35);
              if (!v45)
              {
                goto LABEL_64;
              }

              if (v45 == 1)
              {
                v139 = v38 >> 32;
                v144 = v38;
                if (v56 < v38)
                {
                  goto LABEL_117;
                }

                sub_10002273C();
                v59 = __DataStorage._bytes.getter();
                if (v59)
                {
                  v60 = sub_100022B8C(v59);
                  if (__OFSUB__(v38, v60))
                  {
                    goto LABEL_122;
                  }

                  v138 += v38 - v60;
                }

                else
                {
                  v138 = 0;
                }

                v107 = __DataStorage._length.getter();
                v108 = v138;
                if (!v138)
                {
                  goto LABEL_126;
                }

LABEL_90:
                v109 = v139 - v144;
              }

              else
              {
                v142 = *(v38 + 24);
                v147 = *(v38 + 16);
                sub_10002273C();
                v103 = __DataStorage._bytes.getter();
                if (v103)
                {
                  v104 = sub_100022B8C(v103);
                  v105 = v147;
                  if (__OFSUB__(v147, v104))
                  {
                    goto LABEL_120;
                  }

                  v106 = v147 - v104 + v138;
                }

                else
                {
                  v106 = 0;
                  v105 = v147;
                }

                v149 = v106;
                v50 = __OFSUB__(v142, v105);
                v143 = v142 - v105;
                if (v50)
                {
                  goto LABEL_118;
                }

                v107 = __DataStorage._length.getter();
                v108 = v149;
                if (!v149)
                {
                  goto LABEL_125;
                }

LABEL_84:
                v109 = v143;
              }

              if (v107 >= v109)
              {
                v110 = v109;
              }

              else
              {
                v110 = v107;
              }

              v83 = memcmp(v168, v108, v110);
              v111 = sub_1000227A4();
              sub_10000ECF4(v111, v112);
              v113 = sub_1000227B0();
              sub_10000ECF4(v113, v114);
              v115 = sub_1000227A4();
              sub_10000ECF4(v115, v116);
              v117 = sub_1000227A4();
              sub_10000DF50(v117, v118);
LABEL_95:
              v92 = v83 == 0;
LABEL_96:
              v119 = sub_1000227B0();
              sub_10000ECF4(v119, v120);
              if (v92)
              {
                goto LABEL_103;
              }

              break;
          }
        }

        else
        {
LABEL_50:
          v61 = sub_1000227A4();
          sub_10000ECF4(v61, v62);
          v63 = sub_1000227B0();
          sub_10000ECF4(v63, v64);
        }

        v28 = v152;
        break;
      case 2uLL:
        v55 = *(v36 + 16);
        v54 = *(v36 + 24);
        v50 = __OFSUB__(v54, v55);
        v53 = v54 - v55;
        if (!v50)
        {
          goto LABEL_41;
        }

        goto LABEL_108;
      case 3uLL:
        if (!v47)
        {
          goto LABEL_101;
        }

        goto LABEL_50;
      default:
        v53 = BYTE6(v37);
        goto LABEL_41;
    }

LABEL_98:
    ++v29;
  }

  v47 = 0;
  if (v33)
  {
    goto LABEL_32;
  }

  if (v35 != 0xC000000000000000 || v37 >> 62 != 3)
  {
    goto LABEL_32;
  }

  v47 = 0;
  if (v36 || v37 != 0xC000000000000000)
  {
    goto LABEL_32;
  }

  sub_10000ECF4(0, 0xC000000000000000);
LABEL_102:
  v131 = sub_1000227B0();
  sub_10000ECF4(v131, v132);
LABEL_103:

LABEL_104:
  v20 = v150;
LABEL_105:
  v133 = static os_log_type_t.debug.getter();
  os_log(_:dso:log:_:_:)(v133, &_mh_execute_header, v20, "Found paired peer matching query", 32, 2, _swiftEmptyArrayStorage);
LABEL_2:
  sub_100016010();
}

void sub_10001D85C()
{
  sub_10000D600();
  v192 = v3;
  v182 = type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v4);
  sub_10000CBDC();
  v5 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  sub_10000D368(v5);
  sub_10000D8B0();
  __chkstk_darwin(v6);
  v8 = v161 - v7;
  v9 = type metadata accessor for UUID();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000EDF0();
  sub_100022930();
  __chkstk_darwin(v13);
  v15 = v161 - v14;
  sub_1000215B4();
  if (v1)
  {
    goto LABEL_19;
  }

  v178 = v8;
  v179 = 0;
  v16 = v182;
  v177 = v0;
  v180 = v11;
  v181 = v15;
  v17 = [v192 identifier];
  if (!v17)
  {
    goto LABEL_18;
  }

  v18 = v17;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v0 = v180;
  v19 = v181;
  v20 = v9;
  (*(v180 + 32))(v181, v2, v9);
  v21 = sub_100022330(v192, &selRef_altIRK);
  if (v22 >> 60 == 15)
  {
    v23 = *(v0 + 8);
    v0 += 8;
    v23(v19, v9);
LABEL_18:
    static RemotePairingError.pairingFailed.getter();
    sub_10000EE10();
    v55 = sub_100022628(v54, v0, &protocol conformance descriptor for RemotePairingError);
    sub_1000229C4(v16, v55);
    sub_10000D294();
    sub_100022628(v56, v0, v57);
    Error<>.init(_:_:)();
    swift_willThrow();
LABEL_19:
    sub_100016010();
    return;
  }

  v24 = v21;
  v25 = v22;
  v176 = v20;
  v26 = sub_100022330(v192, &selRef_publicKey);
  v175 = v27;
  if (v27 >> 60 == 15)
  {
    v28 = sub_100022900();
    v29(v28);
    v30 = sub_1000228CC();
    sub_10000ECF4(v30, v31);
    goto LABEL_18;
  }

  v32 = v26;
  v33 = sub_10003DDB0(v192);
  if (v34)
  {
    *(&v188 + 1) = &type metadata for String;
    *&v187 = v33;
    *(&v187 + 1) = v34;
    sub_10000E8A4(&v187, &v189);
    v35 = v178;
  }

  else
  {
    v187 = 0u;
    v188 = 0u;
    v36 = sub_10003DD44(v192);
    v35 = v178;
    if (v36)
    {
      v37 = v36;
      v183 = 1701667182;
      v184 = 0xE400000000000000;
      AnyHashable.init<A>(_:)();
      sub_10004C5C0(v37, &v189);

      sub_10002269C(&v185);
    }

    else
    {
      v189 = 0u;
      v190 = 0u;
    }

    v0 = v180;
    if (*(&v188 + 1))
    {
      sub_100022560(&v187, &qword_100099A00, &qword_100077540);
    }
  }

  if (!*(&v190 + 1))
  {
    v50 = sub_100022900();
    v51(v50);
    v52 = sub_1000228CC();
    sub_10000ECF4(v52, v53);
    sub_10000ECF4(v32, v175);
    sub_100022560(&v189, &qword_100099A00, &qword_100077540);
    goto LABEL_18;
  }

  sub_10000E8A4(&v189, v191);
  Date.init()();
  type metadata accessor for Date();
  sub_100022A9C();
  sub_1000223E8(v38, v39, v40, v41);
  sub_10006A420(v35);
  v182 = sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077390;
  *(inited + 32) = 0x4B5249746C61;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v24;
  *(inited + 56) = v25;
  *(inited + 72) = &type metadata for Data;
  *(inited + 80) = 27504;
  *(inited + 120) = &type metadata for Data;
  *(inited + 88) = 0xE200000000000000;
  *(inited + 96) = v32;
  v43 = v175;
  *(inited + 104) = v175;
  v44 = sub_1000228CC();
  sub_10000EC4C(v44, v45);
  sub_10000EC4C(v32, v43);
  v46 = Dictionary.init(dictionaryLiteral:)();
  v47 = sub_1000222C4(v192);
  v174 = v24;
  if (v47)
  {
    v48 = v47;
    *(&v186 + 1) = sub_100013414(&qword_100099A28, &qword_100077570);
    *&v185 = v48;
    sub_1000229AC();
    swift_isUniquelyReferenced_nonNull_native();
    v49 = sub_100022838();
    sub_100068B8C(v49, 7103329, 0xE300000000000000);
    v46 = v187;
  }

  else
  {
    sub_10004FEF0(7103329, 0xE300000000000000);
    if (v58)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022810();
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      sub_1000227CC();
      sub_10000CCE4();
      sub_1000229DC();
      sub_10002297C();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v185 = 0u;
      v186 = 0u;
    }

    sub_100022560(&v185, &qword_100099A00, &qword_100077540);
  }

  v59 = sub_10003DDBC(v192);
  if (v60)
  {
    *(&v186 + 1) = &type metadata for String;
    *&v185 = v59;
    *(&v185 + 1) = v60;
    sub_1000229AC();
    swift_isUniquelyReferenced_nonNull_native();
    v61 = sub_100022838();
    sub_100068B8C(v61, 0x6C65646F6DLL, 0xE500000000000000);
    v46 = v187;
  }

  else
  {
    sub_10004FEF0(0x6C65646F6DLL, 0xE500000000000000);
    if (v62)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022810();
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      sub_1000227CC();
      sub_10000CCE4();
      sub_1000229DC();
      sub_10002297C();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v185 = 0u;
      v186 = 0u;
    }

    sub_100022560(&v185, &qword_100099A00, &qword_100077540);
  }

  v63 = sub_10003DD44(v192);
  if (v63)
  {
    v64 = v63;
    *(&v186 + 1) = sub_100013414(&qword_100099A28, &qword_100077570);
    *&v185 = v64;
    sub_1000229AC();
    swift_isUniquelyReferenced_nonNull_native();
    v65 = sub_100022838();
    sub_100068B8C(v65, 1868983913, 0xE400000000000000);
    v46 = v187;
  }

  else
  {
    sub_10004FEF0(1868983913, 0xE400000000000000);
    if (v66)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100022810();
      sub_100013414(&qword_10009B0C0, &unk_100077550);
      sub_1000227CC();
      sub_10000CCE4();
      sub_1000229DC();
      sub_10002297C();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v185 = 0u;
      v186 = 0u;
    }

    sub_100022560(&v185, &qword_100099A00, &qword_100077540);
  }

  *(&v186 + 1) = sub_100013414(&qword_100099A20, &unk_100078310);
  *&v185 = v46;

  v67 = v179;
  v68 = OPACKEncoderCreateData(from:)();
  v179 = v67;
  if (v67)
  {
    sub_10000ECF4(v32, v175);
    v69 = sub_1000228CC();
    sub_10000ECF4(v69, v70);

    sub_10000CADC(v191);
    v71 = sub_100022900();
    v72(v71);
    sub_10000CADC(&v185);
    goto LABEL_19;
  }

  v178 = v68;
  v171 = v32;
  v172 = v25;
  sub_10000CADC(&v185);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1000773A0;
  v170 = kSecClass;
  *(v73 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v73 + 40) = v74;
  type metadata accessor for CFString(0);
  v173 = v75;
  *(v73 + 72) = v75;
  *(v73 + 48) = kSecClassGenericPassword;
  v169 = kSecAttrAccount;
  *(v73 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v73 + 88) = v76;
  v168 = kSecClassGenericPassword;
  v77 = UUID.uuidString.getter();
  *(v73 + 120) = &type metadata for String;
  *(v73 + 96) = v77;
  *(v73 + 104) = v78;
  if (kSecUseSystemKeychain)
  {
    v161[3] = kSecUseSystemKeychain;
    *(v73 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v73 + 136) = v79;
    *(v73 + 168) = &type metadata for Bool;
    *(v73 + 144) = 1;
    v164 = kSecAttrService;
    *(v73 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v73 + 184) = v80;
    *(v73 + 216) = &type metadata for String;
    *(v73 + 192) = 0xD00000000000001ALL;
    *(v73 + 200) = 0x800000010007CEE0;
    Dictionary.init(dictionaryLiteral:)();
    v167 = kSecAttrAccessGroup;
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;
    sub_100022988();
    *(&v186 + 1) = &type metadata for String;
    *&v166 = 0xD000000000000017;
    *(&v166 + 1) = v84;
    *&v185 = 0xD000000000000017;
    *(&v185 + 1) = v84;
    sub_1000229AC();
    swift_isUniquelyReferenced_nonNull_native();
    v85 = sub_10000D8EC();
    sub_100068B8C(v85, v81, v83);

    v165 = kSecAttrAccessible;
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;
    *(&v186 + 1) = v173;
    *&v185 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    sub_1000229AC();
    v163 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    swift_isUniquelyReferenced_nonNull_native();
    v89 = sub_10000D8EC();
    sub_100068B8C(v89, v86, v88);

    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1000773B0;
    v161[2] = kSecAttrDescription;
    *(v90 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v90 + 40) = v91;
    *(v90 + 72) = &type metadata for String;
    *(v90 + 48) = 0xD00000000000001ALL;
    *(v90 + 56) = 0x800000010007CEE0;
    v162 = 0x800000010007CEE0;
    v161[1] = kSecAttrLabel;
    *(v90 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v90 + 88) = v92;
    sub_10000CA80(v191, v90 + 96);
    *(v90 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v90 + 136) = v93;
    *(v90 + 168) = &type metadata for Data;
    v94 = sub_100022AFC();
    *(v90 + 144) = v94;
    *(v90 + 152) = v95;
    sub_10000E228(v94, v95);
    v96 = Dictionary.init(dictionaryLiteral:)();
    sub_100022994();
    v97.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v98.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v99 = sub_1000228CC();
    v101 = SecItemUpdate(v99, v100);

    if (v101 == -25300)
    {
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_100077370;
      *(v104 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v104 + 40) = v105;
      *(v104 + 72) = v173;
      v106 = v168;
      *(v104 + 48) = v168;
      *(v104 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v104 + 88) = v107;
      v108 = v106;
      v109 = v181;
      UUID.uuidString.getter();
      sub_100022B20();
      *(v104 + 120) = &type metadata for String;

      *(v104 + 96) = v109;
      *(v104 + 104) = v97;
      *(v104 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v104 + 136) = v110;
      *(v104 + 168) = &type metadata for Bool;
      *(v104 + 144) = 1;
      *(v104 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v104 + 184) = v111;
      *(v104 + 216) = &type metadata for String;
      v112 = v162;
      *(v104 + 192) = 0xD00000000000001ALL;
      *(v104 + 200) = v112;
      *(v104 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v104 + 232) = v113;
      sub_10000CA80(v191, v104 + 240);
      *(v104 + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v104 + 280) = v114;
      *(v104 + 312) = &type metadata for String;
      *(v104 + 288) = 0xD00000000000001ALL;
      *(v104 + 296) = v112;
      *(v104 + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v104 + 328) = v115;
      *(v104 + 360) = &type metadata for Data;
      v116 = sub_100022AFC();
      *(v104 + 336) = v116;
      *(v104 + 344) = v117;
      sub_10000E228(v116, v117);
      v46 = &type metadata for Any;
      v98.super.isa = &type metadata for String;
      Dictionary.init(dictionaryLiteral:)();
      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v119;
      *(&v186 + 1) = &type metadata for String;
      v185 = v166;
      sub_1000229AC();
      swift_isUniquelyReferenced_nonNull_native();
      v121 = sub_10000D8EC();
      sub_100068B8C(v121, v118, v120);

      v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v124 = v123;
      *(&v186 + 1) = v173;
      v125 = v163;
      *&v185 = v163;
      sub_1000229AC();
      v126 = v125;
      swift_isUniquelyReferenced_nonNull_native();
      v127 = sub_10000D8EC();
      sub_100068B8C(v127, v122, v124);

      Dictionary._bridgeToObjectiveC()();
      sub_100022ABC();

      LODWORD(v109) = SecItemAdd(&protocol witness table for String, 0);

      if (!v109)
      {
        sub_100022A60();
        sub_100022AE8();
        if (v122)
        {

          v157 = &protocol witness table for String + 40;
          do
          {
            v158 = *(v157 - 1);
            LOBYTE(v189) = 0;

            v158(&v189);

            v157 += 16;
            --v122;
          }

          while (v122);
          goto LABEL_52;
        }

LABEL_53:
        v159 = sub_100022AFC();
        sub_10000DF50(v159, v160);
        sub_10000ECF4(v171, v175);
        sub_10000ECF4(v174, v98.super.isa);
        sub_10000CADC(v191);
        (*(v180 + 8))(v46, v176);
        goto LABEL_19;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100022800();
      v128 = objc_allocWithZone(NSError);
      v129 = sub_10002277C();
      v130 = static os_log_type_t.error.getter();
      v131 = qword_10009CED0;
      sub_100013414(&qword_1000999F0, &unk_100077530);
      sub_10000D374();
      v132 = swift_allocObject();
      *(v132 + 16) = xmmword_100077360;
      v133 = v129;
      v134 = [v133 description];
      v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v137 = v136;

      *(v132 + 56) = &type metadata for String;
      *(v132 + 64) = sub_100022420();
      *(v132 + 32) = v135;
      *(v132 + 40) = v137;
      v138 = "Failed to save new pairing record to system keychain: %{public}@";
      v139 = v130;
      v140 = v131;
    }

    else
    {
      if (!v101)
      {

        sub_100022A60();
        sub_100022AE8();
        if (v97.super.isa)
        {

          v102 = v96 + 40;
          do
          {
            v103 = *(v102 - 8);
            LOBYTE(v189) = 2;

            v103(&v189);

            v102 += 16;
            --v97.super.isa;
          }

          while (v97.super.isa);
          v98.super.isa = v172;
LABEL_52:

          goto LABEL_53;
        }

        goto LABEL_53;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100022800();
      v141 = objc_allocWithZone(NSError);
      v142 = sub_10002277C();
      v143 = static os_log_type_t.error.getter();
      v144 = qword_10009CED0;
      sub_100013414(&qword_1000999F0, &unk_100077530);
      sub_10000D374();
      v145 = swift_allocObject();
      *(v145 + 16) = xmmword_100077360;
      v133 = v142;
      v146 = [v133 description];
      v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v149 = v148;

      *(v145 + 56) = &type metadata for String;
      *(v145 + 64) = sub_100022420();
      *(v145 + 32) = v147;
      *(v145 + 40) = v149;
      v138 = "Failed to update pairing record to system keychain: %{public}@";
      v139 = v143;
      v140 = v144;
    }

    sub_100022ADC(v139, &_mh_execute_header, v140, v138);
    os_log(_:dso:log:_:_:)(v150, v151, v152, v153);

    swift_willThrow();
    v154 = v133;
    v155 = sub_100022AFC();
    sub_10000DF50(v155, v156);
    sub_10000ECF4(v171, v175);
    sub_10000ECF4(v174, v172);

    sub_10000CADC(v191);
    (*(v180 + 8))(v181, v176);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_10001E884()
{
  sub_10000D600();
  v2 = type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v3);
  sub_10000CBDC();
  v4 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000D368(v4);
  sub_10000D8B0();
  __chkstk_darwin(v5);
  v6 = sub_100022B6C();
  sub_10000CBBC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000CBDC();
  v12 = v11 - v10;
  sub_1000215B4();
  if (v0)
  {
    goto LABEL_2;
  }

  v55 = v12;
  v52 = v1;
  v54 = v2;
  v13 = static os_log_type_t.info.getter();
  v53 = qword_10009CED0;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10009CED0, "Fetching all paired peers from keychain", 39, 2, _swiftEmptyArrayStorage);
  sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077380;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v15;
  type metadata accessor for CFString(0);
  v17 = v16;
  *(inited + 72) = v16;
  *(inited + 48) = kSecClassGenericPassword;
  if (kSecUseSystemKeychain)
  {
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v18;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v19;
    sub_100022988();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 0xD00000000000001ALL;
    *(inited + 152) = v20;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v21;
    *(inited + 216) = &type metadata for Bool;
    *(inited + 192) = 1;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v22;
    *(inited + 264) = v17;
    *(inited + 240) = kSecMatchLimitAll;
    v23 = kSecClassGenericPassword;
    v24 = kSecMatchLimitAll;
    sub_1000228C0();
    v25 = Dictionary.init(dictionaryLiteral:)();
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    v61 = &type metadata for String;
    *&v60 = 0xD000000000000017;
    *(&v60 + 1) = 0x800000010007CF00;
    sub_10000E8A4(&v60, &v58);
    swift_isUniquelyReferenced_nonNull_native();
    v56 = v25;
    sub_100068B8C(&v58, v26, v28);

    v57 = 0;
    sub_1000228C0();
    Dictionary._bridgeToObjectiveC()();
    sub_100022ABC();

    v29 = SecItemCopyMatching(&protocol witness table for String, &v57);

    if (v29 != -25300)
    {
      if (v29)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100022800();
        v37 = objc_allocWithZone(NSError);
        sub_10002277C();
        swift_willThrow();
        swift_unknownObjectRelease();
LABEL_2:
        sub_100016010();
        return;
      }

      if (v57 && (*&v60 = v57, swift_unknownObjectRetain(), sub_100013414(&qword_100099A30, &qword_100078320), (sub_100022A30() & 1) != 0))
      {
        v30 = v58;
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v53, v31))
        {

          sub_10000D054();
          v32 = swift_slowAlloc();
          *v32 = 134217984;
          *(v32 + 4) = *(v30 + 16);

          _os_log_impl(&_mh_execute_header, v53, v31, "Successfully fetched %ld peer items from keychain", v32, 0xCu);
          sub_100015FBC();
        }

        v33 = 0;
        v51 = *(v30 + 16);
        v34 = v30 + 32;
        while (v51 != v33)
        {
          if (v33 >= *(v30 + 16))
          {
            __break(1u);
          }

          sub_10000CA80(v34, &v60);
          sub_10000CA80(&v60, &v58);
          sub_100013414(&qword_100099A20, &unk_100078310);
          sub_10000D47C();
          if ((sub_100022A30() & 1) == 0)
          {
LABEL_23:

            goto LABEL_29;
          }

          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_10004C55C(v35, v36, v56, &v58);

          if (!v59)
          {

            v44 = &qword_100099A00;
            v45 = &qword_100077540;
            v46 = &v58;
            goto LABEL_28;
          }

          sub_10000D47C();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_23;
          }

          UUID.init(uuidString:)();

          if (sub_100022484(v52, 1, v6) == 1)
          {

            v44 = &qword_1000999E8;
            v45 = &unk_100077D60;
            v46 = v52;
LABEL_28:
            sub_100022560(v46, v44, v45);
LABEL_29:
            static RemotePairingError.pairingFailed.getter();
            *&v58 = 0;
            *(&v58 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(34);
            v47._countAndFlagsBits = 0xD000000000000020;
            v47._object = 0x800000010007CFE0;
            String.append(_:)(v47);
            _print_unlocked<A, B>(_:_:)();
            v48 = sub_100022628(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
            sub_1000229C4(v54, v48);
            sub_10000D294();
            sub_100022628(v49, &type metadata accessor for RemotePairingError, v50);
            Error<>.init(_:_:)();
            swift_willThrow();
            sub_10000CADC(&v60);
            goto LABEL_30;
          }

          (*(v8 + 32))(v55, v52, v6);
          sub_10001F1E0();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          sub_1000229A0();
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          (*(v8 + 8))(v55, v6);
          sub_10000CADC(&v60);
          v34 += 32;
          ++v33;
        }

        v42 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v53, v42))
        {

          sub_10000D054();
          v43 = swift_slowAlloc();
          *v43 = 134217984;
          *(v43 + 4) = sub_10004997C();

          _os_log_impl(&_mh_execute_header, v53, v42, "Successfully parsed %ld peer items from keychain", v43, 0xCu);
          sub_100015FBC();
        }
      }

      else
      {
        static RemotePairingError.pairingFailed.getter();
        sub_10000EE10();
        v39 = sub_100022628(v38, v29, &protocol conformance descriptor for RemotePairingError);
        sub_1000229C4(v54, v39);
        sub_10000D294();
        sub_100022628(v40, v29, v41);
        Error<>.init(_:_:)();
        swift_willThrow();
      }
    }

LABEL_30:
    swift_unknownObjectRelease();
    goto LABEL_2;
  }

  __break(1u);
}

void sub_10001F1E0()
{
  sub_10000D600();
  v95 = v0;
  v96 = type metadata accessor for RemotePairingError();
  sub_10000CC04();
  __chkstk_darwin(v1);
  sub_10000CBDC();
  v97 = v3 - v2;
  v4 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v5 = sub_10000D368(v4);
  __chkstk_darwin(v5);
  sub_10000EDF0();
  v94 = v6 - v7;
  sub_100022894();
  __chkstk_darwin(v8);
  v93 = &v90 - v9;
  v10 = static os_log_type_t.debug.getter();
  v11 = qword_10009CED0;
  sub_100013414(&qword_1000999F0, &unk_100077530);
  sub_10000D374();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100077360;
  v13 = UUID.uuidString.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100022420();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Fetching paired peer with identifier %{public}@", 47, 2, v12);

  sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000773C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v17;
  type metadata accessor for CFString(0);
  *(inited + 72) = v18;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v19;
  v20 = kSecClassGenericPassword;
  v21 = UUID.uuidString.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v21;
  *(inited + 104) = v22;
  if (!kSecUseSystemKeychain)
  {
    __break(1u);
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v23;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v24;
  sub_100022988();
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = 0xD00000000000001ALL;
  *(inited + 200) = v25;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v26;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v27;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 1;
  sub_10002297C();
  v28 = Dictionary.init(dictionaryLiteral:)();
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  v101 = &type metadata for String;
  *&v100 = 0xD000000000000017;
  *(&v100 + 1) = 0x800000010007CF00;
  sub_10000E8A4(&v100, v99);
  swift_isUniquelyReferenced_nonNull_native();
  v98 = v28;
  sub_100068B8C(v99, v29, v31);

  v32 = v98;
  v98 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v34 = SecItemCopyMatching(isa, &v98);

  if (v34)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100022B20();
    v35 = objc_allocWithZone(NSError);
    v36 = sub_1000228C0();
    sub_1000228D8(v36, v37, v34);
LABEL_14:
    swift_willThrow();
    goto LABEL_15;
  }

  if (!v98)
  {
    goto LABEL_12;
  }

  *&v100 = v98;
  swift_unknownObjectRetain();
  sub_100013414(&qword_100099A20, &unk_100078310);
  sub_1000227F4();
  if ((sub_100022A14() & 1) == 0)
  {
    goto LABEL_12;
  }

  v38 = v99[0];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10004C55C(v39, v40, v38, &v100);

  if (!v101)
  {
    goto LABEL_10;
  }

  sub_1000227BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:

LABEL_33:

    goto LABEL_13;
  }

  v41 = *v99;
  v42 = v95;
  OPACKDecode(data:)();
  if (v42)
  {
    sub_10000DF50(v41, *(&v41 + 1));

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:
    sub_100016010();
    return;
  }

  v95 = v41;
  sub_1000227BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100022A84();
    goto LABEL_32;
  }

  v47 = v99[0];
  sub_10004C55C(27504, 0xE200000000000000, v99[0], &v100);
  if (!v101)
  {

    sub_100022A84();
LABEL_10:

LABEL_11:
    sub_100022560(&v100, &qword_100099A00, &qword_100077540);
LABEL_12:

LABEL_13:
    static RemotePairingError.pairingFailed.getter();
    sub_10000EE10();
    v44 = sub_100022628(v43, v32, &protocol conformance descriptor for RemotePairingError);
    sub_1000229C4(v96, v44);
    sub_10000D294();
    sub_100022628(v45, v32, v46);
    Error<>.init(_:_:)();
    goto LABEL_14;
  }

  sub_1000227BC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100022A84();

    goto LABEL_33;
  }

  v92 = v38;
  v48 = *v99;
  sub_10004C55C(0x4B5249746C61, 0xE600000000000000, v47, &v100);
  if (!v101)
  {

    sub_100022A84();

    v58 = sub_10000D884();
    sub_10000DF50(v58, v59);
    goto LABEL_11;
  }

  v91 = v48;
  v90 = v47;
  sub_1000227BC();
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100022A84();

    sub_10000DF50(v91, *(&v91 + 1));
    goto LABEL_12;
  }

  v96 = *(&v41 + 1);
  v97 = v99[1];
  v49 = v99[0];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10004C55C(v50, v51, v92, &v100);

  if (!v101)
  {
    sub_100022560(&v100, &qword_100099A00, &qword_100077540);
    goto LABEL_39;
  }

  sub_1000227BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:

    v57 = *(&v91 + 1);
    goto LABEL_40;
  }

  if (kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate)
  {
    v52 = v49;
    v53 = *v99;
    if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && *(&v53 + 1) == v54)
    {
    }

    else
    {
      sub_1000227B0();
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v56 & 1) == 0)
      {

        v57 = *(&v91 + 1);
LABEL_70:
        v49 = v52;
LABEL_40:
        v60 = [objc_allocWithZone(CUPairedPeer) init];
        v61 = UUID._bridgeToObjectiveC()().super.isa;
        sub_100022A48(v61, "setIdentifier:");

        sub_10000F344(v91, v57, v60);
        v62 = v49;
        sub_10000F39C(v49, v97, v60);
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000D688(v63, v64);

        if (v101)
        {
          v65 = type metadata accessor for Date();
          v66 = v93;
          v67 = swift_dynamicCast();
          sub_1000223E8(v66, v67 ^ 1u, 1, v65);
          v68 = sub_100022484(v66, 1, v65);
          v69 = 0;
          v70 = v94;
          if (v68 != 1)
          {
            v69 = Date._bridgeToObjectiveC()().super.isa;
            v71 = sub_1000227B0();
            v68 = v72(v71);
          }
        }

        else
        {
          sub_100022560(&v100, &qword_100099A00, &qword_100077540);
          v73 = type metadata accessor for Date();
          v68 = sub_1000223E8(v93, 1, 1, v73);
          v69 = 0;
          v70 = v94;
        }

        sub_100022A48(v68, "setDateModified:");

        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000D688(v74, v75);

        if (v101)
        {
          sub_1000227F4();
          v76 = sub_100022A30();
          if (v76)
          {
            String._bridgeToObjectiveC()();
            sub_100022B14();

            v77 = v90;
            goto LABEL_49;
          }
        }

        else
        {
          v76 = sub_100022560(&v100, &qword_100099A00, &qword_100077540);
        }

        v77 = v90;
        v69 = 0;
LABEL_49:
        sub_100022A48(v76, "setName:");

        sub_10004C55C(7103329, 0xE300000000000000, v77, &v100);
        if (v101)
        {
          sub_100013414(&qword_100099A28, &qword_100077570);
          sub_1000227F4();
          v78 = &type metadata for Any;
          v79 = swift_dynamicCast();
          if (v79)
          {
            Dictionary._bridgeToObjectiveC()();
            sub_100022B14();
            v77 = v90;

            goto LABEL_54;
          }
        }

        else
        {
          v79 = sub_100022560(&v100, &qword_100099A00, &qword_100077540);
        }

        v78 = 0;
LABEL_54:
        sub_100022A48(v79, "setAcl:");

        sub_10004C55C(0x6C65646F6DLL, 0xE500000000000000, v77, &v100);
        if (v101)
        {
          sub_1000227F4();
          v80 = sub_100022A30();
          if (v80)
          {
            String._bridgeToObjectiveC()();
            sub_100022B14();
            v77 = v90;

            goto LABEL_59;
          }
        }

        else
        {
          v80 = sub_100022560(&v100, &qword_100099A00, &qword_100077540);
        }

        v78 = 0;
LABEL_59:
        sub_100022A48(v80, "setModel:");

        sub_10004C55C(1868983913, 0xE400000000000000, v77, &v100);

        if (v101)
        {
          sub_100013414(&qword_100099A28, &qword_100077570);
          sub_1000227F4();
          v81 = &type metadata for Any;
          v82 = swift_dynamicCast();
          if (v82)
          {
            Dictionary._bridgeToObjectiveC()();
            sub_100022B14();

LABEL_64:
            sub_100022A48(v82, "setInfo:");

            v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_10000D688(v83, v84);

            if (v101)
            {
              v85 = type metadata accessor for Date();
              v86 = swift_dynamicCast() ^ 1;
              v87 = v70;
              v88 = v85;
            }

            else
            {
              sub_100022560(&v100, &qword_100099A00, &qword_100077540);
              v88 = type metadata accessor for Date();
              v87 = v70;
              v86 = 1;
            }

            sub_1000223E8(v87, v86, 1, v88);
            v89 = v95;
            CUPairedPeer.initialPairingTime.setter();
            sub_10000DF50(v89, v96);
            sub_10000DF50(v91, *(&v91 + 1));
            sub_10000DF50(v62, v97);
            swift_unknownObjectRelease();
            goto LABEL_16;
          }
        }

        else
        {
          v82 = sub_100022560(&v100, &qword_100099A00, &qword_100077540);
        }

        v81 = 0;
        goto LABEL_64;
      }
    }

    sub_100021650(v32);

    v57 = *(&v91 + 1);
    goto LABEL_70;
  }

  __break(1u);
}

uint64_t sub_10001FE84(uint64_t a1)
{
  sub_1000215B4();
  if (!v1)
  {
    v2 = sub_10001C2A4();
    sub_1000229A0();
    CUPairingIdentity.authTag(for:type:)();
  }

  return sub_10000D048();
}

void sub_10001FF08(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, unint64_t, void), uint64_t a4)
{
  sub_10000E228(a1, a2);

  v7 = sub_1000228C0();

  sub_10001AEE4(v7, v8, a2, a3, a4);
}

uint64_t sub_10001FF70(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    v7 = 0;
    v8 = 1;
  }

  else
  {
    a1 = CUPairingIdentity.authTag(for:type:)();
    v7 = v9;
    v8 = 0;
  }

  a5(a1, v7, v8);

  return sub_10000ED08(a1, v7, v8);
}

void sub_100020028()
{
  sub_10001E884();
  if (!v0)
  {
    sub_10000CBB8();
    sub_100022ABC();
  }
}

uint64_t sub_100020070(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();

  sub_100053F40();
  v7 = *(*(v3 + 16) + 16);
  sub_1000540C8(v7);
  v8 = *(v3 + 16);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = sub_100022670;
  *(v9 + 40) = v6;
  *(v3 + 16) = v8;
  return swift_endAccess();
}

void sub_10002012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000D600();
  v13 = v12;
  v14 = type metadata accessor for RemotePairingError();
  sub_10000CBBC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_10000CBDC();
  v20 = v19 - v18;
  v21 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  sub_10000D368(v21);
  sub_10000D8B0();
  __chkstk_darwin(v22);
  v24 = &v75 - v23;
  sub_1000215B4();
  if (v11)
  {
    goto LABEL_19;
  }

  v77 = v10;
  v78 = v20;
  v79 = v16;
  v80 = v14;
  v25 = type metadata accessor for UUID();
  v76 = sub_100022484(v13, 1, v25);
  sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000773B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v27;
  type metadata accessor for CFString(0);
  *(inited + 72) = v28;
  *(inited + 48) = kSecClassGenericPassword;
  if (kSecUseSystemKeychain)
  {
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v29;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v30;
    sub_100022988();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 0xD00000000000001ALL;
    *(inited + 152) = v31;
    v32 = kSecClassGenericPassword;
    v33 = Dictionary.init(dictionaryLiteral:)();
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    sub_1000225B8(v13, v24);
    if (sub_100022484(v24, 1, v25) == 1)
    {
      sub_100022560(v24, &qword_1000999E8, &unk_100077D60);
      v37 = sub_10002297C();
      v39 = sub_10004FEF0(v37, v38);
      if (v40)
      {
        v41 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v81[0] = v33;
        v43 = *(v33 + 24);
        sub_100013414(&qword_10009B0C0, &unk_100077550);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43);
        v44 = *&v81[0];

        sub_10000E8A4((*(v44 + 56) + 32 * v41), &v82);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v83 = 0u;
        v82 = 0u;
      }

      sub_100022560(&v82, &qword_100099A00, &qword_100077540);
    }

    else
    {
      v45 = UUID.uuidString.getter();
      *(&v83 + 1) = &type metadata for String;
      *&v82 = v45;
      *(&v82 + 1) = v46;
      (*(*(v25 - 8) + 8))(v24, v25);
      sub_10000E8A4(&v82, v81);
      swift_isUniquelyReferenced_nonNull_native();
      v47 = sub_100022AC8();
      sub_100068B8C(v47, v34, v36);
    }

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
    *(&v83 + 1) = &type metadata for String;
    *&v82 = 0xD000000000000017;
    *(&v82 + 1) = 0x800000010007CF00;
    sub_10000E8A4(&v82, v81);
    swift_isUniquelyReferenced_nonNull_native();
    v51 = sub_100022AC8();
    sub_100068B8C(v51, v48, v50);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v53 = SecItemDelete(isa);

    v54 = v80;
    v55 = v79;
    v56 = v78;
    v57 = v77;
    if (!v53)
    {
      goto LABEL_12;
    }

    if (v53 == -25300)
    {
      if (v76 == 1)
      {
LABEL_12:
        swift_beginAccess();
        v58 = *(v57 + 16);
        v59 = *(v58 + 16);
        if (v59)
        {

          v60 = v58 + 40;
          do
          {
            v61 = *(v60 - 8);
            LOBYTE(v81[0]) = 1;

            v61(v81);

            v60 += 16;
            --v59;
          }

          while (v59);
        }

        goto LABEL_19;
      }

      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v68;
      v69 = objc_allocWithZone(NSError);
      v66 = sub_1000228D8(v67, v62, -25300);
      static RemotePairingError.pairingRecordNotFound.getter();
    }

    else
    {
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = objc_allocWithZone(NSError);
      v64 = sub_10000D048();
      v66 = sub_1000228D8(v64, v65, v53);
      static RemotePairingError.pairingRecordRemovalFailed.getter();
    }

    sub_10000EE10();
    v71 = sub_100022628(v70, v62, &protocol conformance descriptor for RemotePairingError);
    sub_1000229C4(v54, v71);
    sub_10000D294();
    sub_100022628(v72, v62, v73);
    v74 = v66;
    _Error.wrapping(_:)();

    (*(v55 + 8))(v56, v54);
    swift_willThrow();

LABEL_19:
    sub_100016010();
    return;
  }

  __break(1u);
}

void sub_1000207B0()
{
  v4 = sub_100013414(&qword_1000999E8, &unk_100077D60);
  v5 = sub_10000D368(v4);
  __chkstk_darwin(v5);
  sub_10000EDF0();
  v140 = v6 - v7;
  sub_100022894();
  __chkstk_darwin(v8);
  v138 = &v128 - v9;
  sub_100022894();
  __chkstk_darwin(v10);
  v139 = &v128 - v11;
  sub_100022894();
  __chkstk_darwin(v12);
  v136 = &v128 - v13;
  sub_100022894();
  __chkstk_darwin(v14);
  v135 = &v128 - v15;
  v16 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v17 = sub_10000D368(v16);
  __chkstk_darwin(v17);
  sub_10000EDF0();
  v145 = v18 - v19;
  sub_100022894();
  __chkstk_darwin(v20);
  v144 = &v128 - v21;
  type metadata accessor for Date();
  sub_10000CBBC();
  v142 = v22;
  v143 = v23;
  __chkstk_darwin(v22);
  sub_10000EDF0();
  sub_100022930();
  v25 = __chkstk_darwin(v24);
  v27 = &v128 - v26;
  __chkstk_darwin(v25);
  sub_10002284C();
  v28 = type metadata accessor for UUID();
  sub_10000CBBC();
  v30 = v29;
  __chkstk_darwin(v31);
  sub_10000EDF0();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v37 = &v128 - v36;
  v155 = v0;
  sub_1000215B4();
  if (v1)
  {
    v157 = v1;
  }

  else
  {
    v133 = v30;
    v132 = v34;
    v156 = v37;
    v147 = v27;
    v134 = v2;
    v141 = v3;
    v154 = v28;
    v38 = static os_log_type_t.default.getter();
    v39 = qword_10009CED0;
    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, qword_10009CED0, "Removing expired pairing records", 32, 2, _swiftEmptyArrayStorage);
    sub_10001E884();
    v157 = 0;
    v41 = v40;
    v152 = v39;
    v42 = sub_10004997C();
    v43 = 0;
    v150 = v41 & 0xC000000000000001;
    v151 = v42;
    v149 = v41 & 0xFFFFFFFFFFFFFF8;
    v137 = v143 + 32;
    v146 = (v143 + 8);
    v153 = (v133 + 8);
    v131 = (v143 + 16);
    v133 += 16;
    *&v44 = 136315138;
    v130 = v44;
    *&v44 = 136315394;
    v128 = v44;
    v45 = v144;
    v46 = v154;
    v47 = v141;
    v48 = v142;
    v49 = v147;
    v148 = v41;
    while (1)
    {
      if (v151 == v43)
      {

        return;
      }

      if (v150)
      {
        sub_1000227B0();
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v43 >= *(v149 + 16))
        {
          goto LABEL_41;
        }

        v50 = *(v41 + 8 * v43 + 32);
      }

      v51 = v50;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      v52 = [v50 identifier];
      if (!v52)
      {
        goto LABEL_42;
      }

      v53 = v52;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10006A564(v45);
      if (sub_100022484(v45, 1, v48) == 1)
      {
        sub_100022560(v45, &unk_10009A8C0, &unk_100077D50);
        v54 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v152, v54))
        {
          sub_10000D054();
          v55 = swift_slowAlloc();
          sub_10000CCCC();
          v56 = swift_slowAlloc();
          v160[0] = v56;
          *v55 = v130;
          v57 = [v51 identifier];
          if (v57)
          {
            v58 = v57;
            v59 = v140;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v60 = 0;
          }

          else
          {
            v60 = 1;
            v59 = v140;
          }

          v75 = v154;
          sub_1000223E8(v59, v60, 1, v154);
          v76 = v138;
          sub_1000224F0(v59, v138);
          if (sub_100022484(v76, 1, v75))
          {
            sub_100022560(v76, &qword_1000999E8, &unk_100077D60);
            v77 = 0;
            v78 = 0;
          }

          else
          {
            sub_1000228F0();
            v79 = v132;
            v80(v132, v76, v75);
            sub_100022560(v76, &qword_1000999E8, &unk_100077D60);
            v77 = UUID.uuidString.getter();
            v78 = v81;
            sub_100022B08();
            v82(v79, v75);
          }

          v48 = v142;
          v158 = v77;
          v159 = v78;
          sub_100013414(&qword_100099A10, &unk_100077560);
          v83 = String.init<A>(describing:)();
          v85 = sub_10000C600(v83, v84, v160);

          *(v55 + 4) = v85;
          _os_log_impl(&_mh_execute_header, v152, v54, "Found old peer %s without last used date set. Setting last used date to now.", v55, 0xCu);
          sub_10000CADC(v56);
          sub_100015FBC();

          sub_100015FBC();

          v45 = v144;
          v47 = v141;
          v49 = v147;
        }

        v86 = v145;
        Date.init()();
        sub_100022A9C();
        sub_1000223E8(v87, v88, v89, v48);
        sub_10006A420(v86);
        v90 = v157;
        sub_10001D85C();
        v157 = v90;
        if (v90)
        {
          (*v153)(v156, v154);

          return;
        }

        v46 = v154;
        (*v153)(v156, v154);
      }

      else
      {
        v61 = sub_10001ADC8();
        v62(v61);
        Date.init()();
        Date.distance(to:)();
        v64 = v63;
        v65 = *v146;
        (*v146)(v49, v48);
        sub_1000224AC();
        if (sub_10006A5CC() >= v64)
        {

          v65(v47, v48);
          sub_100022B08();
          v74(v156, v46);
        }

        else
        {
          v143 = v65;
          v66 = static os_log_type_t.default.getter();
          v67 = v134;
          (*v131)(v134, v47, v48);
          if (os_log_type_enabled(v152, v66))
          {
            v68 = swift_slowAlloc();
            v129 = swift_slowAlloc();
            v160[0] = v129;
            *v68 = v128;
            v69 = [v51 identifier];
            if (v69)
            {
              v70 = v69;
              v71 = v136;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v72 = v71;
              v46 = v154;
              v73 = 0;
            }

            else
            {
              v73 = 1;
              v72 = v136;
            }

            v91 = v132;
            sub_1000223E8(v72, v73, 1, v46);
            v92 = v72;
            v93 = v135;
            sub_1000224F0(v92, v135);
            if (sub_100022484(v93, 1, v46))
            {
              sub_100022560(v93, &qword_1000999E8, &unk_100077D60);
              v94 = 0;
              v95 = 0;
            }

            else
            {
              sub_1000228F0();
              v96(v91, v93, v46);
              sub_100022560(v93, &qword_1000999E8, &unk_100077D60);
              v94 = UUID.uuidString.getter();
              v97 = v46;
              v95 = v98;
              (*v153)(v91, v97);
            }

            v158 = v94;
            v159 = v95;
            sub_100013414(&qword_100099A10, &unk_100077560);
            v99 = String.init<A>(describing:)();
            v101 = sub_10000C600(v99, v100, v160);

            *(v68 + 4) = v101;
            *(v68 + 12) = 2080;
            sub_100022628(&qword_100099A18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            dispatch thunk of CustomStringConvertible.description.getter();
            sub_100022B20();
            sub_100022920();
            v102();
            v103 = sub_1000228C0();
            v106 = sub_10000C600(v103, v104, v105);

            *(v68 + 14) = v106;
            _os_log_impl(&_mh_execute_header, v152, v66, "Found expired peer %s with last used date %s. Removing.", v68, 0x16u);
            swift_arrayDestroy();
            sub_100015FBC();

            sub_100015FBC();

            v45 = v144;
          }

          else
          {
            (v143)(v67, v48);
          }

          v107 = v156;
          sub_1000228F0();
          v108 = v139;
          v109 = sub_1000228CC();
          v110 = v154;
          v111(v109);
          sub_100022A9C();
          sub_1000223E8(v112, v113, v114, v110);
          v115 = v157;
          sub_10002012C(v108, v116, v117, v118, v119, v120, v121, v122, v128, *(&v128 + 1));
          v157 = v115;
          if (v115)
          {

            sub_100022560(v108, &qword_1000999E8, &unk_100077D60);
            sub_100022920();
            v126();
            sub_100022B08();
            v127(v107, v110);
            return;
          }

          sub_100022560(v108, &qword_1000999E8, &unk_100077D60);
          v123 = v141;
          sub_100022920();
          v124();
          sub_100022B08();
          v125(v107, v110);
          v46 = v110;
          v47 = v123;
        }

        v49 = v147;
      }

      v41 = v148;
      ++v43;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100021370(uint64_t a1)
{
  v6 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v7 = sub_10000D368(v6);
  __chkstk_darwin(v7);
  sub_10000EDF0();
  sub_100022930();
  __chkstk_darwin(v8);
  sub_10002284C();
  v9 = type metadata accessor for Date();
  sub_10000CBBC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10000EDF0();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = v28 - v17;
  sub_1000215B4();
  if (!v2)
  {
    v28[5] = v1;
    v28[1] = a1;
    sub_10006A564(v4);
    if (sub_100022484(v4, 1, v9) == 1)
    {
      sub_100022560(v4, &unk_10009A8C0, &unk_100077D50);
    }

    else
    {
      v19 = sub_10000D884();
      v20(v19);
      Date.init()();
      Date.distance(to:)();
      v22 = v21;
      v23 = *(v11 + 8);
      v23(v15, v9);
      sub_1000224AC();
      v24 = sub_10006A688();
      v23(v18, v9);
      if (v24 >= v22)
      {
        return;
      }
    }

    Date.init()();
    sub_100022A9C();
    sub_1000223E8(v25, v26, v27, v9);
    sub_10006A420(v3);
    sub_10001D85C();
  }
}

uint64_t sub_1000215B4()
{
  sub_10001355C((v0 + 64), *(v0 + 88));
  result = sub_100057418();
  if ((result & 1) == 0)
  {
    v2 = type metadata accessor for RemotePairingError();
    v3 = sub_100022628(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    sub_1000229C4(v2, v3);
    static RemotePairingError.unlockRequired.getter();
    return swift_willThrow();
  }

  return result;
}

void sub_100021650(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = sub_10004FEF0(v2, v4);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v51 = a1;
    sub_100013414(&qword_10009B0C0, &unk_100077550);
    sub_100022B4C();
    sub_100022B2C();
    sub_10000E8A4((*(a1 + 56) + 32 * v7), &v49);
    _NativeDictionary._delete(at:)();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  sub_100022560(&v49, &qword_100099A00, &qword_100077540);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = sub_10004FEF0(v8, v9);
  if (v11)
  {
    v12 = v10;
    swift_isUniquelyReferenced_nonNull_native();
    v51 = a1;
    sub_100013414(&qword_10009B0C0, &unk_100077550);
    sub_100022B4C();
    sub_100022B2C();
    sub_10000E8A4((*(a1 + 56) + 32 * v12), &v49);
    _NativeDictionary._delete(at:)();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  sub_100022560(&v49, &qword_100099A00, &qword_100077540);
  v13 = static os_log_type_t.default.getter();
  v14 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v13))
  {
    v15 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10004C55C(v16, v17, a1, &v49);

    sub_100013414(&qword_100099A00, &qword_100077540);
    v18 = String.init<A>(describing:)();
    v20 = sub_10000C600(v18, v19, &v51);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10004C55C(v21, v22, a1, &v49);

    v23 = String.init<A>(describing:)();
    v25 = sub_10000C600(v23, v24, &v51);

    *(v15 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v13, "Migrating storage class of keychain item (account=%s, service=%s)", v15, 0x16u);
    swift_arrayDestroy();
    sub_100015FBC();

    sub_100015FBC();
  }

  sub_100013414(&qword_100099A08, &qword_100077548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077360;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v27;
  type metadata accessor for CFString(0);
  *(inited + 72) = v28;
  *(inited + 48) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v29 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  sub_100022AA8();
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100022AA8();
  v31 = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = sub_10001ADC8();
  v34 = SecItemUpdate(v32, v33);

  if (v34)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
    v38 = objc_allocWithZone(NSError);
    v39 = sub_1000228D8(v35, v37, v34);
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v40))
    {
      sub_10000D054();
      v41 = swift_slowAlloc();
      sub_10000CCCC();
      v42 = swift_slowAlloc();
      *&v49 = v42;
      *v41 = 136446210;
      v43 = v39;
      v44 = [v43 description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = sub_10000C600(v45, v47, &v49);

      *(v41 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v14, v40, "Failed to migrate keychain item accessibility: %{public}s", v41, 0xCu);
      sub_10000CADC(v42);
      sub_100015FBC();

      sub_100015FBC();
    }

    swift_willThrow();
  }
}