uint64_t sub_1000FB890()
{
  v29 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[22];
  v6 = v0[20];
  v7 = v0[4];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v4 + 8))(v1, v3);
  v2(v5, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v26 = v0[34];
    v27 = v0[36];
    v10 = v0[22];
    v11 = v0[20];
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = sub_1000DC030(v10, v11);
    v15 = v14;
    v26(v10, v11);
    v16 = sub_1000C3440(v13, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v0[3] = v27;
    v17 = sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
    v18 = sub_1000DC030((v0 + 3), v17);
    v20 = sub_1000C3440(v18, v19, &v28);

    *(v12 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to publish value for %s: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = v0[34];
    v22 = v0[22];
    v23 = v0[20];

    v21(v22, v23);
  }

  v24 = v0[1];

  return v24();
}

void sub_1000FBCD0(uint64_t a1)
{
  if (qword_1001D8DC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001D8DC8);
  v3 = type metadata accessor for AppExtensionIdentity();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_1000DC030(v6, v3);
    v13 = v12;
    (*(v4 + 8))(v6, v3);
    v14 = sub_1000C3440(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received interruption for %s", v9, 0xCu);
    sub_1000C5604(v10);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000FBF04(uint64_t a1, void *a2)
{
  v4 = sub_1000C4810(&qword_1001D5920, &unk_10014BC20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v29 = *(v5 + 16);
  v30 = a1;
  v29(&v28 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = *(v5 + 32);
  v10(v9 + v8, v7, v4);
  v36 = sub_1000FEAF0;
  v37 = v9;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1000FC388;
  v35 = &unk_1001B1020;
  v11 = _Block_copy(&aBlock);

  v12 = [a2 synchronousRemoteObjectProxyWithErrorHandler:v11];
  _Block_release(v11);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000C5650(v38, &aBlock);
  sub_1000C4810(&qword_1001D5928, &qword_10014BC30);
  if (swift_dynamicCast())
  {
    v13 = v31;
    v29(v7, v30, v4);
    v14 = swift_allocObject();
    v10(v14 + v8, v7, v4);
    v36 = sub_1000FEC84;
    v37 = v14;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1000FC3F0;
    v35 = &unk_1001B1070;
    v15 = _Block_copy(&aBlock);

    [v13 fetchConfigurationDataWithReply:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1001D8DC0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000BB0C(v16, qword_1001D8DC8);
    sub_1000C5650(v38, &aBlock);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315138;
      v21 = sub_1000DC030(&aBlock, &type metadata for Any + 8);
      v23 = v22;
      sub_1000C5604(&aBlock);
      v24 = sub_1000C3440(v21, v23, &v31);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Proxy is of unexpected type: %s", v19, 0xCu);
      sub_1000C5604(v20);
    }

    else
    {

      sub_1000C5604(&aBlock);
    }

    sub_1000FEB9C();
    v25 = swift_allocError();
    *v26 = 0;
    aBlock = v25;
    CheckedContinuation.resume(throwing:)();
  }

  return sub_1000C5604(v38);
}

void sub_1000FC388(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000FC3F0(uint64_t a1, void *a2, void *a3)
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

  sub_1000C5928(v4, v8);
}

id sub_1000FC49C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_lock;
  sub_1000C4810(&qword_1001D57F0, &unk_10014B7A8);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_servicesByDeviceID] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_processByExtensionIdentifier] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_connectionByExtensionIdentifier] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_changeHandlers] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_monitorTask] = 0;
  *&v0[OBJC_IVAR____TtC8rapportd27RPApplicationServiceMonitor_observationTask] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

unint64_t sub_1000FC628(uint64_t a1)
{
  type metadata accessor for LSKStatusOptions.DeviceType();
  sub_1000FE8AC(&qword_1001D5888, &type metadata accessor for LSKStatusOptions.DeviceType, &protocol conformance descriptor for LSKStatusOptions.DeviceType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000FC6C0(a1, v2);
}

unint64_t sub_1000FC6C0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for LSKStatusOptions.DeviceType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1000FE8AC(&qword_1001D58F8, &type metadata accessor for LSKStatusOptions.DeviceType, &protocol conformance descriptor for LSKStatusOptions.DeviceType);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

char *sub_1000FC880(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C4810(&qword_1001D58F0, &unk_10014BBE8);
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

void *sub_1000FC98C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000C4810(a5, a6);
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

Swift::Int sub_1000FCB68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000C4810(&qword_1001D5968, &qword_10014BC58);
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
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
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000FCE20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for LSKStatusOptions.DeviceType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000C4810(&qword_1001D5880, &qword_10014BB90);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000FE8AC(&qword_1001D5888, &type metadata accessor for LSKStatusOptions.DeviceType, &protocol conformance descriptor for LSKStatusOptions.DeviceType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000FD1FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1000FD3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000C39E8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000FCB68(v18, a5 & 1);
      v13 = sub_1000C39E8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1000FD534();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void *sub_1000FD534()
{
  v1 = v0;
  sub_1000C4810(&qword_1001D5968, &qword_10014BC58);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void sub_1000FD6B4()
{
  v1 = v0;
  v33 = type metadata accessor for LSKStatusOptions.DeviceType();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4810(&qword_1001D5880, &qword_10014BB90);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

BOOL sub_1000FD934(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a4 >> 60 == 15)
    {
      if (a8 >> 60 == 15)
      {
        sub_1000C66E4(a3, a4);
        sub_1000C66E4(a7, a8);
        sub_1000C5928(a3, a4);
        return 1;
      }
    }

    else if (a8 >> 60 != 15)
    {
      sub_1000C66E4(a3, a4);
      sub_1000C66E4(a7, a8);
      v14 = sub_1000CB904(a3, a4, a7, a8);
      sub_1000C5928(a7, a8);
      sub_1000C5928(a3, a4);
      return v14;
    }

    sub_1000C66E4(a3, a4);
    sub_1000C66E4(a7, a8);
    sub_1000C5928(a3, a4);
    sub_1000C5928(a7, a8);
    return 0;
  }

  return result;
}

unint64_t sub_1000FDA74()
{
  result = qword_1001D8DE8[0];
  if (!qword_1001D8DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D8DE8);
  }

  return result;
}

uint64_t sub_1000FDAC8(void *a1)
{
  v3 = sub_1000C4810(&qword_1001D5970, &qword_10014BC60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  v7 = a1[4];
  sub_1000CE97C(a1, a1[3]);
  sub_1000FDA74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1000C5604(a1);
  }

  else
  {
    LOBYTE(v12) = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v11[15] = 1;
    sub_1000C9F00();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;

    sub_1000C66E4(v9, v10);
    sub_1000C5604(a1);

    sub_1000C5928(v9, v10);
  }

  return v7;
}

uint64_t sub_1000FDD5C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C5EF0;

  return sub_1000F6D04(v3, v4, v5, v2);
}

void sub_1000FDDF0()
{
  if (qword_1001D8DC0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000BB0C(v0, qword_1001D8DC8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Triggering extension rediscovery", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000F6A40();
  }
}

uint64_t sub_1000FDF00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000FDF1C()
{
  result = qword_1001D5830;
  if (!qword_1001D5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5830);
  }

  return result;
}

__n128 sub_1000FDF70(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000FDF7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000FDFC4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000FE054(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FE074(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1001D5860)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1001D5860);
    }
  }
}

unint64_t sub_1000FE108()
{
  result = qword_1001D91F0[0];
  if (!qword_1001D91F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D91F0);
  }

  return result;
}

unint64_t sub_1000FE160()
{
  result = qword_1001D9300;
  if (!qword_1001D9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9300);
  }

  return result;
}

unint64_t sub_1000FE1B8()
{
  result = qword_1001D9308[0];
  if (!qword_1001D9308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D9308);
  }

  return result;
}

uint64_t sub_1000FE20C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000FE24C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C48EC;

  return sub_1000F6D04(v3, v4, v5, v2);
}

void *sub_1000FE314@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1000FE39C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000C5EF0;

  return sub_1000F7F64(a1, a2, v7, v6);
}

uint64_t sub_1000FE450(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000C5EF0;

  return sub_1000FA260(v8, a2, v5, v6, v7);
}

uint64_t sub_1000FE500(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4810(&qword_1001D5890, &qword_10014BB98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FE570()
{
  v2 = *(type metadata accessor for LSKStatusOptions.DeviceType() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000C5EF0;

  return sub_1000FA99C(v7, v8, v9, v10, v0 + v3, v5, v6);
}

uint64_t sub_1000FE680(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C5EF0;

  return sub_1000C3250(a1, v4);
}

unint64_t sub_1000FE738()
{
  result = qword_1001D58C8;
  if (!qword_1001D58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58C8);
  }

  return result;
}

unint64_t sub_1000FE78C()
{
  result = qword_1001D58D8;
  if (!qword_1001D58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58D8);
  }

  return result;
}

uint64_t sub_1000FE7E0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000C6A0C(&qword_1001D58B8, &qword_10014BBE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000FE858()
{
  result = qword_1001D58E8;
  if (!qword_1001D58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D58E8);
  }

  return result;
}

uint64_t sub_1000FE8AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000FE8F4()
{
  result = qword_1001D5910;
  if (!qword_1001D5910)
  {
    type metadata accessor for _AppExtensionQuery.Results.AsyncIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5910);
  }

  return result;
}

unint64_t sub_1000FE940()
{
  result = qword_1001D5918;
  if (!qword_1001D5918)
  {
    sub_1000C6A0C(&qword_1001D5908, &qword_10014BC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5918);
  }

  return result;
}

uint64_t sub_1000FE9A4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppExtensionIdentity() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000C48EC;

  return sub_1000F9000(a1, v7, v8, v6, v1 + v5);
}

void sub_1000FEA88()
{
  v1 = *(type metadata accessor for AppExtensionIdentity() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1000FBCD0(v2);
}

uint64_t sub_1000FEAF0(uint64_t a1)
{
  sub_1000C4810(&qword_1001D5920, &unk_10014BC20);
  swift_errorRetain();
  sub_1000C4810(&qword_1001D5920, &unk_10014BC20);
  return CheckedContinuation.resume(throwing:)();
}

unint64_t sub_1000FEB9C()
{
  result = qword_1001D5930;
  if (!qword_1001D5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5930);
  }

  return result;
}

uint64_t sub_1000FEBF0()
{
  v1 = sub_1000C4810(&qword_1001D5920, &unk_10014BC20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000FEC84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1000C4810(&qword_1001D5920, &unk_10014BC20);
  if (a3)
  {
    swift_errorRetain();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      sub_1000C61D4(a1, a2);
      sub_1000C4810(&qword_1001D5920, &unk_10014BC20);
      return CheckedContinuation.resume(returning:)();
    }

    sub_1000FEB9C();
    swift_allocError();
    *v6 = 1;
  }

  sub_1000C4810(&qword_1001D5920, &unk_10014BC20);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1000FEE84()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001D9398);
  v1 = sub_10000BB0C(v0, qword_1001D9398);
  v2 = sub_10010ACCC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(uint64_t a1)
{
  result = qword_1001D9530;
  if (!qword_1001D9530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FEF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C4810(&qword_1001D5348, &qword_10014A480);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FEFCC()
{
  v1 = sub_1000C4810(&qword_1001D5348, &qword_10014A480);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  sub_1000C5808(v0 + *(v8 + 36), v3, &qword_1001D5348, &qword_10014A480);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000C59E0(v3, &qword_1001D5348, &qword_10014A480);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  Date.timeIntervalSince(_:)();
  v11 = v10;
  result = (*(v5 + 8))(v7, v4);
  v12 = v11 * 1000.0;
  if (COERCE__INT64(fabs(v11 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 9.22337204e18)
  {
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000FF1E8()
{
  v1 = sub_1000C4810(&qword_1001D5348, &qword_10014A480);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  sub_1000C5808(v0 + *(v8 + 40), v3, &qword_1001D5348, &qword_10014A480);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000C59E0(v3, &qword_1001D5348, &qword_10014A480);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  Date.timeIntervalSince(_:)();
  v11 = v10;
  result = (*(v5 + 8))(v7, v4);
  v12 = v11 * 1000.0;
  if (COERCE__INT64(fabs(v11 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 9.22337204e18)
  {
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1000FF404()
{
  type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(isa, 0x797469746E656469, 0xED00006465646441, isUniquelyReferenced_nonNull_native);
  v2 = Int._bridgeToObjectiveC()().super.super.isa;
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(v2, 0xD000000000000010, 0x800000010017A120, v3);
  v4 = Int._bridgeToObjectiveC()().super.super.isa;
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(v4, 0xD000000000000012, 0x800000010017A140, v5);
  v6 = Int._bridgeToObjectiveC()().super.super.isa;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(v6, 0xD000000000000012, 0x800000010017A160, v7);
  v8 = Int32._bridgeToObjectiveC()().super.super.isa;
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(v8, 0xD000000000000013, 0x800000010017A180, v9);
  sub_1000FEFCC();
  v10 = Int._bridgeToObjectiveC()().super.super.isa;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(v10, 0xD000000000000012, 0x800000010017A1A0, v11);
  sub_1000FF1E8();
  v12 = Int._bridgeToObjectiveC()().super.super.isa;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(v12, 0xD000000000000014, 0x800000010017A1C0, v13);
  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_1000FF64C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000C4810(&qword_1001D5978, &qword_10014BC78);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1000C59E0(a1, &qword_1001D5978, &qword_10014BC78);
    sub_100103C4C(a2, a3, v9);
    sub_1000C4AA4(a2, a3);
    return sub_1000C59E0(v9, &qword_1001D5978, &qword_10014BC78);
  }

  else
  {
    sub_100105B90(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_100104A10(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1000C4AA4(a2, a3);
    *v3 = v17;
  }

  return result;
}

uint64_t sub_1000FF814()
{
  _StringGuts.grow(_:)(176);
  v1._countAndFlagsBits = 0xD000000000000021;
  v1._object = 0x800000010017A1E0;
  String.append(_:)(v1);
  v2._countAndFlagsBits = sub_1000CC910(*v0, v0[1]);
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x800000010017A210;
  String.append(_:)(v3);
  v4 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  if (*(v0 + *(v4 + 28)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + *(v4 + 28)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._countAndFlagsBits = 0xD000000000000014;
  v8._object = 0x800000010017A230;
  String.append(_:)(v8);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._object = 0x800000010017A250;
  v10._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v10);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD000000000000017;
  v12._object = 0x800000010017A270;
  String.append(_:)(v12);
  type metadata accessor for RPIdentitySource(0);
  _print_unlocked<A, B>(_:_:)();
  v13._object = 0x800000010017A290;
  v13._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v13);
  sub_1000FEFCC();
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000018;
  v15._object = 0x800000010017A2B0;
  String.append(_:)(v15);
  sub_1000FF1E8();
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

uint64_t sub_1000FFB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  v4[12] = swift_task_alloc();
  sub_1000C4810(&qword_1001D5978, &qword_10014BC78);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000FFBE4, v3, 0);
}

uint64_t sub_1000FFBE4()
{
  v29 = v0;
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = sub_100103DCC(v0[8], v0[9], &Data.hash(into:), sub_1000D921C);
    v4 = v0[14];
    if (v5)
    {
      v6 = v3;
      v7 = *(v2 + 56);
      v8 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
      v9 = *(v8 - 8);
      sub_10010490C(v7 + *(v9 + 72) * v6, v4);
      (*(v9 + 56))(v4, 0, 1, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = v0[14];
  }

  v8 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
LABEL_6:
  v10 = v0[14];
  swift_endAccess();
  type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  v0[15] = v8;
  v11 = *(v8 - 8);
  v0[16] = v11;
  v12 = (*(v11 + 48))(v10, 1, v8);
  sub_1000C59E0(v10, &qword_1001D5978, &qword_10014BC78);
  if (v12 == 1)
  {
    v13 = *(v0[11] + 128);
    v0[17] = v13;

    return _swift_task_switch(sub_1000FFFA0, v13, 0);
  }

  else
  {
    if (qword_1001D9390 != -1)
    {
      swift_once();
    }

    v15 = v0[8];
    v14 = v0[9];
    v16 = type metadata accessor for Logger();
    sub_10000BB0C(v16, qword_1001D9398);
    sub_1000C61D4(v15, v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    sub_1000C4AA4(v15, v14);
    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[8];
      v19 = v0[9];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      v23 = sub_1000CC910(v20, v19);
      v25 = sub_1000C3440(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Existing session present for %s", v21, 0xCu);
      sub_1000C5604(v22);
    }

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1000FFFA0()
{
  v1 = *(v0 + 88);
  sub_1001002BC();

  return _swift_task_switch(sub_10010000C, v1, 0);
}

uint64_t sub_10010000C()
{
  v1 = v0[15];
  v2 = v0[13];
  v17 = v0[12];
  v3 = v0[10];
  v15 = v0[16];
  v16 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v1[9];
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(v2 + v6, 1, 1, v7);
  v8(v2 + v1[10], 1, 1, v7);
  *v2 = v5;
  v2[1] = v4;
  v2[2] = v3;
  sub_1000C61D4(v5, v4);
  sub_1000C61D4(v5, v4);

  Date.init()();
  *(v2 + v1[7]) = 0;
  *(v2 + v1[8]) = 0;
  *(v2 + v1[11]) = 0;
  *(v2 + v1[12]) = 0;
  *(v2 + v1[13]) = 0;
  (*(v15 + 56))(v2, 0, 1, v1);
  swift_beginAccess();
  sub_1000FF64C(v2, v5, v4);
  swift_endAccess();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v17, 1, 1, v9);
  v11 = sub_100105BF4(&qword_1001D5980, v10, type metadata accessor for RPIdentitySyncSessionTelemetry, &unk_10014BCE8);
  v12 = swift_allocObject();
  v12[2] = v16;
  v12[3] = v11;
  v12[4] = v16;
  v12[5] = v5;
  v12[6] = v4;

  sub_1000C61D4(v5, v4);

  sub_1000C1E34(0, 0, v17, &unk_10014BC88, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001002BC()
{
  v1 = v0;
  v2 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  if (!*(v0 + 128))
  {
    if (qword_1001D9390 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000BB0C(v6, qword_1001D9398);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Activating RPIdentitySyncPathMonitor", v9, 2u);
    }

    NWPathMonitor.start(queue:)();
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v11;
    *(v1 + 128) = sub_1000C1E34(0, 0, v5, &unk_10014BC98, v12);
  }

  return result;
}

uint64_t sub_1001004BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_1000C4810(&qword_1001D5978, &qword_10014BC78);
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001005BC, a4, 0);
}

uint64_t sub_1001005BC()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_100100698;

  return sub_1000C2D98(v1, v3, 0, 0, 1);
}

uint64_t sub_100100698()
{
  v2 = *v1;
  v3 = *v1;
  v2[13] = v0;

  v4 = v2[11];
  v5 = v2[10];
  v6 = v2[9];
  if (v0)
  {
    v7 = v2[5];
    (*(v5 + 8))(v4, v6);

    return _swift_task_switch(sub_1001009A4, v7, 0);
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v8 = swift_task_alloc();
    v2[14] = v8;
    *v8 = v3;
    v8[1] = sub_100100878;
    v9 = v2[7];
    v10 = v2[6];

    return sub_100100BE8(v10, v9);
  }
}

uint64_t sub_100100878()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001009A4()
{
  v20 = v0;
  if (qword_1001D9390 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_10000BB0C(v3, qword_1001D9398);
  sub_1000C61D4(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  sub_1000C4AA4(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = sub_1000CC910(v7, v6);
    v12 = sub_1000C3440(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to send analytics %s", v8, 0xCu);
    sub_1000C5604(v9);
  }

  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[6];
  v16 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  swift_beginAccess();
  sub_1000C61D4(v15, v14);
  sub_1000FF64C(v13, v15, v14);
  swift_endAccess();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100100BE8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  sub_1000C4810(&qword_1001D5978, &qword_10014BC78);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100100CF0, v2, 0);
}

uint64_t sub_100100CF0()
{
  v35 = v0;
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_100103DCC(v0[11], v0[12], &Data.hash(into:), sub_1000D921C), (v4 & 1) != 0))
  {
    sub_10010490C(*(v2 + 56) + *(v0[16] + 72) * v3, v0[18]);
    swift_endAccess();
    if (qword_1001D9390 != -1)
    {
      swift_once();
    }

    v5 = v0[17];
    v6 = v0[18];
    v7 = type metadata accessor for Logger();
    sub_10000BB0C(v7, qword_1001D9398);
    sub_10010490C(v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[17];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v34 = v13;
      *v12 = 136315138;
      v14 = sub_1000FF814();
      v16 = v15;
      sub_100105B34(v11);
      v17 = sub_1000C3440(v14, v16, &v34);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Sending analytics event for %s", v12, 0xCu);
      sub_1000C5604(v13);
    }

    else
    {

      sub_100105B34(v11);
    }

    v32 = v0[13];
    v0[19] = sub_1000FF404();
    v33 = *(v32 + 128);
    v0[20] = v33;

    return _swift_task_switch(sub_1001010C8, v33, 0);
  }

  else
  {
    swift_endAccess();
    if (qword_1001D9390 != -1)
    {
      swift_once();
    }

    v19 = v0[11];
    v18 = v0[12];
    v20 = type metadata accessor for Logger();
    sub_10000BB0C(v20, qword_1001D9398);
    sub_1000C61D4(v19, v18);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_1000C4AA4(v19, v18);
    if (os_log_type_enabled(v21, v22))
    {
      v24 = v0[11];
      v23 = v0[12];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136315138;
      v27 = sub_1000CC910(v24, v23);
      v29 = sub_1000C3440(v27, v28, &v34);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed session finish - no session present for %s", v25, 0xCu);
      sub_1000C5604(v26);
    }

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_1001010C8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 168) = *(v1 + 112);

  return _swift_task_switch(sub_10010114C, v2, 0);
}

uint64_t sub_10010114C()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100104640(isa, 0x6C62616863616572, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v9 = String._bridgeToObjectiveC()();
  sub_1000C5AF8(0, &qword_1001D5AB0, NSObject_ptr);
  v10 = Dictionary._bridgeToObjectiveC()().super.isa;

  CUMetricsLog();

  (*(v2 + 56))(v3, 1, 1, v1);
  swift_beginAccess();
  sub_1000C61D4(v6, v5);
  sub_1000FF64C(v3, v6, v5);
  swift_endAccess();
  if (*(*(v4 + 112) + 16))
  {
    sub_100105B34(v0[18]);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[20];

    return _swift_task_switch(sub_100101360, v13, 0);
  }
}

uint64_t sub_100101360()
{
  v1 = *(v0 + 104);
  sub_100102C38();

  return _swift_task_switch(sub_1001013CC, v1, 0);
}

uint64_t sub_1001013CC()
{
  sub_100105B34(*(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001015DC(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v4[4] = v9;
  v4[5] = v11;
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v4[6] = v12;

  v13 = swift_task_alloc();
  v4[7] = v13;
  *v13 = v4;
  v13[1] = sub_1001016F4;

  return sub_1000FFB00(v9, v11, v12);
}

uint64_t sub_1001016F4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  sub_1000C4AA4(v2, v1);

  v3[2](v3);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100101890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *(v7 + 64) = a4;
  *(v7 + 72) = v6;
  *(v7 + 104) = a5;
  *(v7 + 108) = a6;
  *(v7 + 48) = a2;
  *(v7 + 56) = a3;
  *(v7 + 40) = a1;
  *(v7 + 80) = sub_1000C4810(&qword_1001D5988, &qword_10014BCA8);
  *(v7 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10010193C, v6, 0);
}

uint64_t sub_10010193C()
{
  v1 = *(v0 + 48);
  if (v1 && *(v0 + 104) == 6)
  {
    if (*(v0 + 64) >> 60 != 15)
    {
      Strong = swift_weakLoadStrong();
      *(v0 + 96) = Strong;
      if (Strong)
      {
        v3 = Strong;
        sub_1000C61D4(*(v0 + 56), *(v0 + 64));
        v4 = sub_100101C08;
        v5 = v3;
        v6 = 0;

        return _swift_task_switch(v4, v5, v6);
      }

      v1 = *(v0 + 48);
    }

    v7 = *(v0 + 40);
    swift_beginAccess();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = v1;

    v10 = sub_1001055B4(v9, sub_100104A04);

    if (*(v10 + 2))
    {
      v11 = v10 + 64;
      v29 = *(v0 + 80);
      v30 = *(v0 + 88);
      v12 = -1;
      v13 = -1 << v10[32];
      if (-v13 < 64)
      {
        v12 = ~(-1 << -v13);
      }

      v14 = v12 & *(v10 + 8);
      v15 = (63 - v13) >> 6;
      v31 = v10;

      for (i = 0; v14; v4 = sub_1000C59E0(v18, &qword_1001D5988, &qword_10014BCA8))
      {
        v17 = i;
LABEL_18:
        v18 = *(v0 + 88);
        v33 = *(v0 + 72);
        v32 = *(v0 + 108);
        v19 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v20 = v19 | (v17 << 6);
        v21 = *(v31 + 7);
        v22 = (*(v31 + 6) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v21 + *(*(type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0) - 8) + 72) * v20;
        v26 = *(v29 + 48);
        sub_10010490C(v25, v18 + v26);
        *v18 = v23;
        *(v30 + 8) = v24;
        sub_1000C61D4(v23, v24);
        sub_100101FBC(v23, v24, v18 + v26, v32, v33);
      }

      while (1)
      {
        v17 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v17 >= v15)
        {

          goto LABEL_21;
        }

        v14 = *&v11[8 * v17];
        ++i;
        if (v14)
        {
          i = v17;
          goto LABEL_18;
        }
      }

      __break(1u);
      return _swift_task_switch(v4, v5, v6);
    }

LABEL_21:
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100101C08()
{
  v1 = v0[9];
  sub_1000F319C(v0[7], v0[8]);

  return _swift_task_switch(sub_100101C80, v1, 0);
}

uint64_t sub_100101C80()
{
  sub_1000C5928(*(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  swift_beginAccess();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v5 = sub_1001055B4(v4, sub_100104A04);

  if (*(v5 + 2))
  {
    v6 = v5 + 64;
    v24 = *(v0 + 80);
    v25 = *(v0 + 88);
    v7 = -1;
    v8 = -1 << v5[32];
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v9 = v7 & *(v5 + 8);
    v10 = (63 - v8) >> 6;
    v26 = v5;

    for (i = 0; v9; result = sub_1000C59E0(v14, &qword_1001D5988, &qword_10014BCA8))
    {
      v13 = i;
LABEL_10:
      v14 = *(v0 + 88);
      v28 = *(v0 + 72);
      v27 = *(v0 + 108);
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = v15 | (v13 << 6);
      v17 = *(v26 + 7);
      v18 = (*(v26 + 6) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      v21 = v17 + *(*(type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0) - 8) + 72) * v16;
      v22 = *(v24 + 48);
      sub_10010490C(v21, v14 + v22);
      *v14 = v19;
      *(v25 + 8) = v20;
      sub_1000C61D4(v19, v20);
      sub_100101FBC(v19, v20, v14 + v22, v27, v28);
    }

    while (1)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        goto LABEL_13;
      }

      v9 = *&v6[8 * v13];
      ++i;
      if (v9)
      {
        i = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v23 = *(v0 + 8);

    return v23();
  }

  return result;
}

uint64_t sub_100101EC4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100101FBC(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v50[1] = a5;
  v51 = a2;
  v50[0] = a1;
  v7 = sub_1000C4810(&qword_1001D5978, &qword_10014BC78);
  __chkstk_darwin(v7 - 8);
  v9 = v50 - v8;
  v10 = sub_1000C4810(&qword_1001D5348, &qword_10014A480);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v50 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v50 - v18;
  __chkstk_darwin(v17);
  v21 = v50 - v20;
  v22 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  v23 = *(v22 - 1);
  __chkstk_darwin(v22);
  v25 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10010490C(a3, v25);
  v25[v22[7]] = 1;
  v27 = v22[8];
  if (*&v25[v27])
  {
    if (a4 != 3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v36 = v22[12];
    v37 = *&v25[v36];
    v30 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (!v30)
    {
      *&v25[v36] = v38;
      v39 = v22[10];
      sub_1000C5808(&v25[v39], v13, &qword_1001D5348, &qword_10014A480);
      v40 = type metadata accessor for Date();
      v41 = *(v40 - 8);
      v42 = (*(v41 + 48))(v13, 1, v40);
      sub_1000C59E0(v13, &qword_1001D5348, &qword_10014A480);
      if (v42 == 1)
      {
        Date.init()();
        (*(v41 + 56))(v16, 0, 1, v40);
      }

      else
      {
        sub_1000C5808(&v25[v39], v16, &qword_1001D5348, &qword_10014A480);
      }

      v46 = v51;
      v47 = v50[0];
      v48 = &v25[v39];
      v49 = v16;
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  *&v25[v27] = a4;
  if (a4 == 3)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a4 == 2)
  {
    v28 = v22[11];
    v29 = *&v25[v28];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *&v25[v28] = v31;
      v32 = v22[9];
      sub_1000C5808(&v25[v32], v19, &qword_1001D5348, &qword_10014A480);
      v33 = type metadata accessor for Date();
      v34 = *(v33 - 8);
      v35 = (*(v34 + 48))(v19, 1, v33);
      sub_1000C59E0(v19, &qword_1001D5348, &qword_10014A480);
      if (v35 == 1)
      {
        Date.init()();
        (*(v34 + 56))(v21, 0, 1, v33);
      }

      else
      {
        sub_1000C5808(&v25[v32], v21, &qword_1001D5348, &qword_10014A480);
      }

      v46 = v51;
      v47 = v50[0];
      v48 = &v25[v32];
      v49 = v21;
LABEL_17:
      sub_1000FEF5C(v49, v48);
      goto LABEL_18;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = v22[13];
  v44 = *&v25[v43];
  v30 = __OFADD__(v44, 1);
  v45 = v44 + 1;
  if (!v30)
  {
    *&v25[v43] = v45;
    v46 = v51;
    v47 = v50[0];
LABEL_18:
    sub_10010490C(v25, v9);
    (*(v23 + 56))(v9, 0, 1, v22);
    swift_beginAccess();
    sub_1000C61D4(v47, v46);
    sub_1000FF64C(v9, v47, v46);
    swift_endAccess();
    return sub_100105B34(v25);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100102618(uint64_t a1, void *a2, int a3, int a4, void *aBlock, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    v6[4] = v11;
    if (a2)
    {
LABEL_3:
      v13 = a2;

      a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v6[4] = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v15 = 0xF000000000000000;
LABEL_6:
  v6[5] = a2;
  v6[6] = v15;
  v16 = swift_task_alloc();
  v6[7] = v16;
  *v16 = v6;
  v16[1] = sub_100102758;

  return sub_100101890(a1, v12, a2, v15, a3, a4);
}

uint64_t sub_100102758()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v6 = *v0;

  sub_1000C5928(v2, v1);

  v3[2](v3);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1001028F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100102914, v1, 0);
}

uint64_t sub_100102914()
{
  swift_weakAssign();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100102B08(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);

  return _swift_task_switch(sub_100102B9C, a3, 0);
}

uint64_t sub_100102B9C()
{
  v1 = *(v0 + 32);
  swift_weakAssign();

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_100102C38()
{
  if (*(v0 + 128))
  {
    v1 = v0;
    v2 = qword_1001D9390;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000BB0C(v3, qword_1001D9398);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Invalidating RPIdentitySyncPathMonitor", v6, 2u);
    }

    swift_beginAccess();
    *(v1 + 112) = 0;
    NWPathMonitor.cancel()();
    Task.cancel()();

    *(v1 + 128) = 0;
  }
}

id sub_100102D8C()
{
  v1 = swift_allocObject();
  v2 = swift_defaultActor_initialize();
  v1[14] = &_swiftEmptyDictionarySingleton;
  v1[15] = 0x4024000000000000;
  type metadata accessor for RPIdentitySyncPathMonitor(v2, v3);
  swift_allocObject();
  v1[16] = sub_100102EF4();
  swift_weakInit();
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_100102EAC()
{

  swift_weakDestroy();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_100102EF4()
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v8 - 8);
  __chkstk_darwin(v8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  swift_defaultActor_initialize();
  *(v0 + 128) = 0;
  sub_1000C5AF8(0, &qword_1001D54F0, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_100105BF4(&qword_1001D5F50, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000C4810(&unk_1001D5500, &qword_100149A50);
  sub_1000DB1B0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  *(v0 + 136) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *(v0 + 120) = NWPathMonitor.init()();
  *(v0 + 112) = 0;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_1001031B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for NWPath.Status();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for NWPath();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  sub_1000C4810(&qword_1001D5AA0, &qword_10014BEA8);
  v4[18] = swift_task_alloc();
  v7 = type metadata accessor for NWPathMonitor.Iterator();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_100103380, 0, 0);
}

uint64_t sub_100103380()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {

    NWPathMonitor.makeAsyncIterator()();
    swift_beginAccess();
    *(v0 + 200) = enum case for NWPath.Status.satisfied(_:);
    v2 = sub_100105BF4(&qword_1001D5AA8, 255, &type metadata accessor for NWPathMonitor.Iterator, &protocol conformance descriptor for NWPathMonitor.Iterator);
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = sub_10010354C;
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);

    return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10010354C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100103868;
  }

  else
  {
    v2 = sub_100103660;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010367C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 200);
    v12 = *(v0 + 176);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    (*(v3 + 32))(*(v0 + 136), v1, v2);
    NWPath.status.getter();
    (*(v9 + 104))(v8, v6, v10);
    *(v0 + 204) = static NWPath.Status.== infix(_:_:)() & 1;
    v11 = *(v9 + 8);
    v11(v8, v10);
    v11(v7, v10);

    return _swift_task_switch(sub_1001038F4, v12, 0);
  }
}

uint64_t sub_100103868()
{
  *(v0 + 64) = *(v0 + 192);
  sub_1000C4810(&qword_1001D50D0, &unk_100149DB0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1001038F4()
{
  v20 = v0;
  if (*(v0 + 204) != *(*(v0 + 176) + 112))
  {
    if (qword_1001D9390 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 128);
    v2 = *(v0 + 136);
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    v5 = type metadata accessor for Logger();
    sub_10000BB0C(v5, qword_1001D9398);
    (*(v4 + 16))(v1, v2, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 112);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = NWPath.debugDescription.getter();
      v16 = v15;
      (*(v10 + 8))(v9, v11);
      v17 = sub_1000C3440(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "RPIdentitySyncPathMonitor path update %s", v12, 0xCu);
      sub_1000C5604(v13);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    *(*(v0 + 176) + 112) = *(v0 + 204);
  }

  return _swift_task_switch(sub_100103B10, 0, 0);
}

uint64_t sub_100103B10()
{
  (*(v0[15] + 8))(v0[17], v0[14]);
  v1 = sub_100105BF4(&qword_1001D5AA8, 255, &type metadata accessor for NWPathMonitor.Iterator, &protocol conformance descriptor for NWPathMonitor.Iterator);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_10010354C;
  v3 = v0[18];
  v4 = v0[19];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_100103C04()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100103C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100103DCC(a1, a2, &Data.hash(into:), sub_1000D921C);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100104DCC();
      v10 = v20;
    }

    sub_1000C4AA4(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    v11 = *(v10 + 56);
    v12 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
    v19 = *(v12 - 8);
    sub_100105B90(v11 + *(v19 + 72) * v8, a3);
    sub_10010444C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_100103DCC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

Swift::Int sub_100103E60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000C4810(&qword_1001D5AB8, &qword_10014BEB8);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100104104(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1000C4810(&qword_1001D5A98, &qword_10014BEA0);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v23;
      v39 = *(*(v8 + 48) + 16 * v23);
      v26 = *(&v39 + 1);
      if (v38)
      {
        sub_100105B90(v25, v7);
      }

      else
      {
        sub_10010490C(v25, v7);
        sub_1000C61D4(v39, v26);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v19 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v19 = v39;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v19;
      result = sub_100105B90(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

unint64_t sub_10010444C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      sub_1000C61D4(v10, v11);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      result = sub_1000C4AA4(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v3);
      v16 = (v14 + 16 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100104640(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100103DCC(a2, a3, &String.hash(into:), sub_1000C3A60);
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
      sub_100103E60(v16, a4 & 1);
      v11 = sub_100103DCC(a2, a3, &String.hash(into:), sub_1000C3A60);
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
      sub_100104C60();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_100104864()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C5EF0;

  return sub_1001004BC(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10010490C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100104970()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C48EC;

  return sub_1001031B8(v3, v4, v5, v2);
}

uint64_t sub_100104A10(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100103DCC(a2, a3, &Data.hash(into:), sub_1000D921C);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100104DCC();
      goto LABEL_7;
    }

    sub_100104104(v15, a4 & 1);
    v22 = sub_100103DCC(a2, a3, &Data.hash(into:), sub_1000D921C);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0) - 8) + 72) * v12;

    return sub_100105C3C(a1, v20);
  }

LABEL_13:
  sub_100104BC8(v12, a2, a3, a1, v18);

  return sub_1000C61D4(a2, a3);
}

uint64_t sub_100104BC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  result = sub_100105B90(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

id sub_100104C60()
{
  v1 = v0;
  sub_1000C4810(&qword_1001D5AB8, &qword_10014BEB8);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_100104DCC()
{
  v1 = v0;
  v2 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4810(&qword_1001D5A98, &qword_10014BEA0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_10010490C(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_100105B90(v25, *(v27 + 56) + v26);
        result = sub_1000C61D4(v23, v24);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_100105000(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1001053A4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_100105090(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  v41 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  sub_1000C4810(&qword_1001D5A98, &qword_10014BEA0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    sub_10010490C(v22 + v43 * v21, v40);
    sub_100105B90(v26, v17);
    Hasher.init(_seed:)();
    sub_1000C61D4(v25, v24);
    Data.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v25;
    v35[1] = v24;
    result = sub_100105B90(v17, *(v13 + 56) + v30 * v43);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001053A4(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v27 = a2;
  v32 = a4;
  v28 = a1;
  v5 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  v31 = *(v5 - 8);
  result = __chkstk_darwin(v5 - 8);
  v29 = 0;
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v33 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v16 = v30;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v34 = (v14 - 1) & v14;
LABEL_11:
    v20 = v17 | (v8 << 6);
    v21 = (v33[6] + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = v20;
    sub_10010490C(v33[7] + *(v31 + 72) * v20, v16);
    sub_1000C61D4(v22, v23);
    v25 = v32(v22, v23, v16);
    sub_100105B34(v16);
    result = sub_1000C4AA4(v22, v23);
    v14 = v34;
    if (v25)
    {
      *(v28 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_100105090(v28, v27, v29, v33);
      }
    }
  }

  v18 = v8;
  while (1)
  {
    v8 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_100105090(v28, v27, v29, v33);
    }

    v19 = v10[v8];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v34 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001055B4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1001053A4(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_100105000(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

void sub_10010575C(uint64_t a1)
{
  sub_10010583C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for RPIdentitySource(319);
      if (v3 <= 0x3F)
      {
        sub_100105894(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10010583C()
{
  if (!qword_1001D5A10)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D5A10);
    }
  }
}

void sub_100105894(uint64_t a1)
{
  if (!qword_1001D5A18)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001D5A18);
    }
  }
}

uint64_t sub_1001058EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C5EF0;

  return sub_100102B08(v2, v3, v4);
}

uint64_t sub_1001059A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 36);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000C5EF0;

  return sub_100102618(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_100105A74()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000C5EF0;

  return sub_1001015DC(v2, v3, v5, v4);
}

uint64_t sub_100105B34(uint64_t a1)
{
  v2 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100105B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100105BF4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100105C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPIdentitySyncSessionTelemetry.SessionInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100105CB4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100105D2C()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t *RapportActor.shared.unsafeMutableAddressor()
{
  if (qword_1001D9640 != -1)
  {
    swift_once();
  }

  return &static RapportActor.shared;
}

uint64_t RapportActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100105E6C(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  a2(a1);
  v4 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a3 = v4;
  return result;
}

uint64_t *RapportLocalIdentityActor.shared.unsafeMutableAddressor()
{
  if (qword_1001D9648 != -1)
  {
    swift_once();
  }

  return &static RapportLocalIdentityActor.shared;
}

uint64_t sub_100105F20(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_100106034(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001060C0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_100106134()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA6F0);
  sub_10000BB0C(v0, qword_1001DA6F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001061B0()
{
  if (qword_1001D9850 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10000BB0C(v0, qword_1001DA6F0);
}

void sub_100106274(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = String._bridgeToObjectiveC()();
  v12 = MGCopyAnswer();

  if (v12)
  {
    v30[3] = v12;
    if (swift_dynamicCast())
    {
      v13 = v30[1];
      v14 = v30[2];
    }

    else
    {

      v13 = v8;
      v14 = v10;
    }

    v15 = [a1 deviceIRKData];
    if (v15)
    {
      v16 = v15;
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = [a1 edPKData];
      if (v20)
      {
        v30[0] = v14;
        v21 = v10;
        v22 = v13;
        v23 = a1;
        v24 = v8;
        v25 = v20;
        v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = v30[0];
LABEL_11:
        *a2 = v22;
        a2[1] = v29;
        a2[2] = v24;
        a2[3] = v21;
        a2[4] = v17;
        a2[5] = v19;
        a2[6] = v26;
        a2[7] = v28;
        return;
      }

      sub_1000C4AA4(v17, v19);
    }

    else
    {
    }

    v22 = 0;
    v29 = 0;
    v24 = 0;
    v21 = 0;
    v17 = 0;
    v19 = 0;
    v26 = 0;
    v28 = 0;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1001064CC()
{
  v1 = 0x614E656369766564;
  v2 = 0x5249656369766564;
  if (*v0 != 2)
  {
    v2 = 0x7550656369766564;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
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

uint64_t sub_100106564@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100108F70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100106598(uint64_t a1)
{
  v2 = sub_100106828();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001065D4(uint64_t a1)
{
  v2 = sub_100106828();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100106610(void *a1)
{
  v3 = v1;
  v5 = sub_1000C4810(&qword_1001D5C18, &qword_10014C020);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000CE97C(a1, a1[3]);
  sub_100106828();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 32);
    v13 = *(v3 + 32);
    v12 = 2;
    sub_10010687C(&v15, v11);
    sub_1000C9F54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000C4AA4(v13, *(&v13 + 1));
    v13 = *(v3 + 48);
    v14 = v13;
    v12 = 3;
    sub_10010687C(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000C4AA4(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100106828()
{
  result = qword_1001D9858;
  if (!qword_1001D9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9858);
  }

  return result;
}

double sub_1001068D8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1001090F0(a2, v7);
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

unint64_t sub_100106934(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6564644165746164;
    if (a1 != 2)
    {
      v5 = 0x614E656369766564;
    }

    v6 = 0xD000000000000011;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x614E796C696D6166;
    v2 = 0x5249656369766564;
    if (a1 != 7)
    {
      v2 = 0x7550656369766564;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x696669746E656469;
    if (a1 != 4)
    {
      v3 = 0x6D614E6E65766967;
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

uint64_t sub_100106A84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100109F48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100106AB8(uint64_t a1)
{
  v2 = sub_100109474();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100106AF4(uint64_t a1)
{
  v2 = sub_100109474();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100106B30(void *a1)
{
  v3 = v1;
  v5 = sub_1000C4810(&qword_1001D5C20, &qword_10014C028);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_1000CE97C(a1, a1[3]);
  sub_100109474();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v16 = *(v3 + 16);
    v17 = v9;
    v18 = 1;
    sub_1000C66E4(v16, v9);
    sub_1000C9F54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000C5928(v16, v17);
    v10 = type metadata accessor for RPPairingTemporaryIdentity(0);
    LOBYTE(v16) = 2;
    type metadata accessor for Date();
    sub_1001095DC(&qword_1001D5C28, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = (v3 + *(v10 + 44));
    v12 = v11[1];
    v16 = *v11;
    v17 = v12;
    v18 = 7;
    sub_1000C61D4(v16, v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000C4AA4(v16, v17);
    v13 = (v3 + *(v10 + 48));
    v14 = v13[1];
    v16 = *v13;
    v17 = v14;
    v18 = 8;
    sub_1000C61D4(v16, v14);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000C4AA4(v16, v17);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100106EB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for Date();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C4810(&qword_1001D5C30, &qword_10014C030);
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for RPPairingTemporaryIdentity(0);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v38 = a1;
  sub_1000CE97C(a1, v13);
  sub_100109474();
  v37 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000C5604(v38);
  }

  v14 = v35;
  v32 = v4;
  LOBYTE(v39) = 0;
  *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v12 + 1) = v15;
  v40 = 1;
  sub_1000C9F00();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v12 + 1) = v39;
  LOBYTE(v39) = 2;
  sub_1001095DC(&qword_1001D5C38, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v16 = v32;
  v31 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v34 + 32))(&v12[v10[6]], v6, v16);
  LOBYTE(v39) = 3;
  v17 = v37;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = &v12[v10[7]];
  *v19 = v18;
  v19[1] = v20;
  LOBYTE(v39) = 4;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = &v12[v10[8]];
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v39) = 5;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = &v12[v10[9]];
  *v25 = v24;
  v25[1] = v26;
  LOBYTE(v39) = 6;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = &v12[v10[10]];
  *v28 = v27;
  v28[1] = v29;
  v40 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v12[v10[11]] = v39;
  v40 = 8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v17, v36);
  *&v12[v10[12]] = v39;
  sub_1001094C8(v12, v33);
  sub_1000C5604(v38);
  return sub_10010952C(v12);
}

id sub_1001076F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_bonjourServiceID;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v7[v9], a3, v10);
  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, "init");
  (*(v11 + 8))(a3, v10);
  return v12;
}

uint64_t sub_100107984()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7550726576726573;
  }
}

uint64_t sub_1001079D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7550726576726573 && a2 == 0xEF79654B63696C62;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010017A670 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100107ABC(uint64_t a1)
{
  v2 = sub_100109588();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100107AF8(uint64_t a1)
{
  v2 = sub_100109588();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100107BB4(void *a1)
{
  v3 = v1;
  v5 = sub_1000C4810(&qword_1001D5C48, &qword_10014C038);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000CE97C(a1, a1[3]);
  sub_100109588();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey + 8);
  v12 = *(v3 + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey);
  v13 = v9;
  v11[15] = 0;
  sub_1000C61D4(v12, v9);
  sub_1000C9F54();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000C4AA4(v12, v13);
  if (!v2)
  {
    LOBYTE(v12) = 1;
    type metadata accessor for UUID();
    sub_1001095DC(&qword_1001D5C50, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_100107DDC(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v14 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1000C4810(&qword_1001D5C58, &qword_10014C040);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v14 - v7;
  sub_1000CE97C(a1, a1[3]);
  sub_100109588();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1000C5604(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v20 = 0;
    sub_1000C9F00();
    v11 = v15;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v17[OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey] = v19;
    LOBYTE(v19) = 1;
    sub_1001095DC(&qword_1001D5C60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v17;
    (*(v14 + 32))(&v17[OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_bonjourServiceID], v9, v3);
    v18.receiver = v13;
    v18.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v18, "init");
    (*(v10 + 8))(v8, v11);
    sub_1000C5604(a1);
  }

  return v5;
}

void *sub_10010813C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_100107DDC(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_1001081E0(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

id sub_10010823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_deviceName];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v18[OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_givenName];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v18[OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_familyName];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v18[OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_pin];
  *v22 = a7;
  *(v22 + 1) = a8;
  v23 = &v18[OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_pake];
  v24 = a9[1];
  *v23 = *a9;
  *(v23 + 1) = v24;
  v25 = a9[6];
  *(v23 + 5) = a9[5];
  *(v23 + 6) = v25;
  v26 = a9[4];
  *(v23 + 3) = a9[3];
  *(v23 + 4) = v26;
  *(v23 + 2) = a9[2];
  v28.receiver = v18;
  v28.super_class = v9;
  return objc_msgSendSuper2(&v28, "init");
}

uint64_t sub_100108394()
{
  _StringGuts.grow(_:)(30);
  v1 = *(v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_deviceName);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_givenName));
  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_familyName));
  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_pin));
  v5._countAndFlagsBits = 0x3A444963202CLL;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  v6 = (v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_pake);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8rapportd16RPPairingPINInfo_pake + 16));
  v7._countAndFlagsBits = 0x3A444973202CLL;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  String.append(_:)(v6[2]);
  return v1;
}

uint64_t sub_100108620()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(RPClient) init];
  v0[20] = v2;
  [v2 setDispatchQueue:v1];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100108778;
  v3 = swift_continuation_init();
  v0[17] = sub_1000C4810(&qword_1001D5380, &qword_10014C050);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000D4058;
  v0[13] = &unk_1001B1360;
  v0[14] = v3;
  [v2 getIdentitiesWithFlags:1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100108778()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_100108980;
  }

  else
  {
    v2 = sub_100108888;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100108888()
{
  v1 = *(v0 + 144);
  [*(v0 + 160) invalidate];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100108980(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1001089F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NWListener.Service();
  __chkstk_darwin(v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_allocObject();

  return NWActorSystem.init(service:parameters:)();
}

uint64_t sub_100108AD8()
{
  swift_allocObject();
  v0 = NWParameters.init()();
  NWParameters.includePeerToPeer.setter();
  return v0;
}

uint64_t sub_100108B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_1000DD13C(0xD000000000000023, 0x800000010017A580, a3, a4, a5, a6, a1, a2, v18);
  sub_1000DE06C();
  v13 = v12;
  type metadata accessor for NWProtocolTCP.Options();
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
  dispatch thunk of NWProtocolTCP.Options.connectionTimeout.setter();
  type metadata accessor for NWProtocolTLS.Options();
  nw_swift_tls_record_create_options();
  v14 = static NWProtocolOptions.fromNW(_:)();
  swift_unknownObjectRelease();
  if (!v14)
  {
    goto LABEL_4;
  }

  if (!swift_dynamicCastClass())
  {

LABEL_4:
    swift_allocObject();
    NWProtocolTLS.Options.init()();
  }

  v15 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_local_identity(v15, v13);
  swift_unknownObjectRelease();

  v16 = NWParameters.__allocating_init(tls:tcp:)();
  NWParameters.includePeerToPeer.setter();
  NWParameters.nw.getter();
  nw_parameters_set_indefinite();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000DFBF0(v18);
  return v16;
}

uint64_t sub_100108D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000C4810(&qword_1001D5C90, &qword_10014C058);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  if (a2)
  {

    sub_1000DD13C(0xD000000000000023, 0x800000010017A580, 0xD000000000000022, 0x800000010017A550, a3, a4, a1, a2, v18);
    sub_1000DD3E4();
    v13 = v12;
    type metadata accessor for NWProtocolTCP.Options();
    swift_allocObject();
    NWProtocolTCP.Options.init()();
    dispatch thunk of NWProtocolTCP.Options.enableFastOpen.setter();
    dispatch thunk of NWProtocolTCP.Options.connectionTimeout.setter();
    type metadata accessor for NWProtocolTLS.Options();
    nw_swift_tls_record_create_options();
    v14 = static NWProtocolOptions.fromNW(_:)();
    swift_unknownObjectRelease();
    if (v14)
    {
      if (swift_dynamicCastClass())
      {
LABEL_8:

        v15 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
        sec_protocol_options_set_local_identity(v15, v13);
        swift_unknownObjectRelease();

        v11 = NWParameters.__allocating_init(tls:tcp:)();
        NWParameters.allowLocalEndpointReuse.setter();
        sub_1000DBDEC(v10);
        NWParameters.requiredInterface.setter();
        swift_unknownObjectRelease();

        sub_1000DFBF0(v18);
        return v11;
      }
    }

    swift_allocObject();
    NWProtocolTLS.Options.init()();
    goto LABEL_8;
  }

  swift_allocObject();
  return NWParameters.init()();
}

uint64_t sub_100108F70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5249656369766564 && a2 == 0xED0000617461444BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7550656369766564 && a2 == 0xEF79654B63696C62)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1001090F0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000C4810(&qword_1001D5D98, qword_10014C620);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_1000CE97C(a1, a1[3]);
  sub_100106828();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000C5604(a1);
  }

  LOBYTE(v30) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v10;
  LOBYTE(v30) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v12;
  v22 = v11;
  LOBYTE(v26) = 2;
  v23 = sub_1000C9F00();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v30;
  v37 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v20 = *(&v36 + 1);
  v23 = v36;
  v14 = v24;
  v13 = v25;
  *&v26 = v9;
  *(&v26 + 1) = v25;
  v15 = v22;
  *&v27 = v22;
  *(&v27 + 1) = v24;
  v16 = v21;
  v28 = v21;
  v29 = v36;
  sub_1000C5984(&v26, &v30);
  sub_1000C5604(a1);
  *&v30 = v9;
  *(&v30 + 1) = v13;
  v31 = v15;
  v32 = v14;
  v33 = v16;
  v34 = v23;
  v35 = v20;
  result = sub_1000C5A40(&v30);
  v18 = v27;
  *a2 = v26;
  a2[1] = v18;
  v19 = v29;
  a2[2] = v28;
  a2[3] = v19;
  return result;
}

unint64_t sub_100109474()
{
  result = qword_1001D9860;
  if (!qword_1001D9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9860);
  }

  return result;
}

uint64_t sub_1001094C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPPairingTemporaryIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010952C(uint64_t a1)
{
  v2 = type metadata accessor for RPPairingTemporaryIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100109588()
{
  result = qword_1001D9868[0];
  if (!qword_1001D9868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D9868);
  }

  return result;
}

uint64_t sub_1001095DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100109650(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100109664(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1001096AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100109734(uint64_t a1)
{
  sub_100109814(319, &qword_1001D5CF0, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_100109814(319, &unk_1001D5CF8, &type metadata for Data);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100109814(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100109888(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001098C0(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t getEnumTagSinglePayload for RPPairingTemporaryIdentity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RPPairingTemporaryIdentity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RPPairingIdentity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RPPairingIdentity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100109C34()
{
  result = qword_1001D9C90[0];
  if (!qword_1001D9C90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D9C90);
  }

  return result;
}

unint64_t sub_100109C8C()
{
  result = qword_1001D9EA0[0];
  if (!qword_1001D9EA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D9EA0);
  }

  return result;
}

unint64_t sub_100109CE4()
{
  result = qword_1001DA0B0[0];
  if (!qword_1001DA0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001DA0B0);
  }

  return result;
}

unint64_t sub_100109D3C()
{
  result = qword_1001DA1C0;
  if (!qword_1001DA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA1C0);
  }

  return result;
}

unint64_t sub_100109D94()
{
  result = qword_1001DA1C8[0];
  if (!qword_1001DA1C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001DA1C8);
  }

  return result;
}

unint64_t sub_100109DEC()
{
  result = qword_1001DA250;
  if (!qword_1001DA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA250);
  }

  return result;
}

unint64_t sub_100109E44()
{
  result = qword_1001DA258[0];
  if (!qword_1001DA258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001DA258);
  }

  return result;
}

unint64_t sub_100109E9C()
{
  result = qword_1001DA2E0;
  if (!qword_1001DA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA2E0);
  }

  return result;
}

unint64_t sub_100109EF4()
{
  result = qword_1001DA2E8[0];
  if (!qword_1001DA2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001DA2E8);
  }

  return result;
}

uint64_t sub_100109F48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000010017A6F0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010017A710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5249656369766564 && a2 == 0xED0000617461444BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7550656369766564 && a2 == 0xEF79654B63696C62)
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

uint64_t sub_10010A250()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA378);
  sub_10000BB0C(v0, qword_1001DA378);
  return Logger.init(subsystem:category:)();
}

void sub_10010A2E0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (qword_1001DA370 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000BB0C(v4, qword_1001DA378);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1000C3440(a1, a2, &v12);
      _os_log_impl(&_mh_execute_header, oslog, v5, "Test log: RPSwiftMemoryTest_enum.associatedValue(%s)", v6, 0xCu);
      sub_1000C5604(v7);

LABEL_10:
    }
  }

  else
  {
    if (qword_1001DA370 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000BB0C(v8, qword_1001DA378);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Test log: RPSwiftMemoryTest_enum.empty", v10, 2u);
      goto LABEL_10;
    }
  }
}

id RPSwiftMemoryTest_objCClass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RPSwiftMemoryTest_objCClass.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_10010A5C4(const char *a1)
{
  if (qword_1001DA370 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BB0C(v2, qword_1001DA378);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t _s8rapportd27RPSwiftMemoryTest_objCClassC10performLogyyF_0()
{
  if (qword_1001DA370 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000BB0C(v0, qword_1001DA378);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Test log: RPSwiftMemoryTest_objCClass", v3, 2u);
  }

  sub_10010A5C4("Test log: RPSwiftMemoryTest_swiftClass");
  sub_10010A5C4("Test log: RPSwiftMemoryTest_struct");
  sub_10010A2E0(0, 0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000C3440(1953719636, 0xE400000000000000, &v11);
    _os_log_impl(&_mh_execute_header, v4, v5, "Test log: RPSwiftMemoryTest_enum.associatedValue(%s)", v6, 0xCu);
    sub_1000C5604(v7);
  }

  type metadata accessor for RPSwiftMemoryTest_actor(v8, v9);
  swift_allocObject();
  swift_defaultActor_initialize();
  sub_10010A5C4("Test log: RPSwiftMemoryTest_actor");
}

__n128 sub_10010A900(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10010A90C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010A95C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10010A9B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10010A9C8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

const char *sub_10010AA30()
{
  v1 = "IdentitySyncService";
  v2 = "ApplicationServiceDiscovery";
  if (*v0 != 2)
  {
    v2 = "ApplicationServicePairing";
  }

  if (*v0)
  {
    v1 = "IRKRatchetingScan";
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

unint64_t sub_10010AA90()
{
  result = qword_1001D5F08;
  if (!qword_1001D5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F08);
  }

  return result;
}

uint64_t sub_10010AAF4(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for RPFeature;
  v6[4] = sub_10010AA90();
  LOBYTE(v6[0]) = a3;
  v4 = isFeatureEnabled(_:)();
  sub_1000C5604(v6);
  return v4 & 1;
}

id sub_10010ABB0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RPFeatureGating(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10010ABE8()
{
  result = qword_1001D5F10;
  if (!qword_1001D5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5F10);
  }

  return result;
}

uint64_t sub_10010AC4C()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA710);
  sub_10000BB0C(v0, qword_1001DA710);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10010ACCC()
{
  if (qword_1001DA590 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10000BB0C(v0, qword_1001DA710);
}

uint64_t sub_10010AD30()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA5A0);
  v1 = sub_10000BB0C(v0, qword_1001DA5A0);
  if (qword_1001DA590 != -1)
  {
    swift_once();
  }

  v2 = sub_10000BB0C(v0, qword_1001DA710);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10010ADF8(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(type metadata accessor for RPIdentitySyncDaemon(a1 a2))];
  qword_1001DA728 = result;
  return result;
}

id RPIdentitySyncDaemon.dispatchQueue.getter()
{
  v1 = OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_dispatchQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void RPIdentitySyncDaemon.dispatchQueue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_dispatchQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10010B03C()
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v10 - 8);
  __chkstk_darwin(v10);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1000C6968(0, v6);
  static DispatchQoS.default.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_1000C69B4();
  sub_1000C4810(&unk_1001D5500, &qword_100149A50);
  sub_1000DB1B0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  *&v0[OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_dispatchQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for RPIdentitySyncService(0, v7);
  *&v0[OBJC_IVAR____TtC8rapportd20RPIdentitySyncDaemon_identitySyncService] = sub_1000D7CC8();
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_10010B338(const char *a1, uint64_t (*a2)(void))
{
  if (qword_1001DA598 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BB0C(v4, qword_1001DA5A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  return a2();
}

uint64_t sub_10010B49C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10010B53C;

  return sub_1000D0234();
}

uint64_t sub_10010B53C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_10010B7B8(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10010B830, 0, 0);
}

uint64_t sub_10010B830()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10010B8D0;

  return sub_1000D0234();
}

uint64_t sub_10010B8D0(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = String._bridgeToObjectiveC()();

  (v3)[2](v3, v5, 0);

  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t RPIdentitySyncDaemon.stopBrowsingService(sessionToken:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10010BA60, 0, 0);
}

uint64_t sub_10010BA60()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_10010BB08;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1000D1130(v3, v2);
}

uint64_t sub_10010BB08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10010BD84(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return _swift_task_switch(sub_10010BE10, 0, 0);
}

uint64_t sub_10010BE10()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_10010BEB8;
  v3 = v0[4];
  v2 = v0[5];

  return sub_1000D1130(v3, v2);
}

uint64_t sub_10010BEB8()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10010C124()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C48EC;

  return sub_10010BD84(v2, v3, v4);
}

uint64_t sub_10010C1D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000C5EF0;

  return sub_10010B7B8(v2, v3);
}

uint64_t sub_10010C284()
{
  v0 = type metadata accessor for Logger();
  sub_1000C5A94(v0, qword_1001DA5C8);
  sub_10000BB0C(v0, qword_1001DA5C8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10010C32C(SEL *a1)
{
  v3 = [v1 device];
  v4 = [v3 *a1];

  if (!v4)
  {
    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t RPNWEndpoint.isServiceAvailable.getter()
{
  v1 = [v0 device];
  v2 = [v1 serviceTypes];

  if (v2)
  {
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = [v0 applicationService];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v14[0] = v4;
    v14[1] = v6;
    __chkstk_darwin(v7);
    v13[2] = v14;
    LODWORD(v2) = sub_10010C928(sub_10010C9D4, v13, v3);
  }

  v8 = *sub_1000F61F0();
  v9 = [v0 device];
  v10 = [v9 idsDeviceIdentifier];

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = [v0 applicationService];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v11) = sub_1000F65A0();

  return (v2 | v11) & 1;
}

uint64_t RPNWEndpoint.operatingSystemVersionMajor.getter()
{
  v1 = [v0 device];
  [v1 operatingSystemVersion];
  v2 = v4;

  return v2;
}

uint64_t RPNWEndpoint.operatingSystemVersionMinor.getter()
{
  v1 = [v0 device];
  [v1 operatingSystemVersion];
  v2 = v4;

  return v2;
}

uint64_t RPNWEndpoint.operatingSystemVersionPatch.getter()
{
  v1 = [v0 device];
  [v1 operatingSystemVersion];
  v2 = v4;

  return v2;
}

uint64_t sub_10010C6D8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 device];
  v6 = [v5 *a3];

  if (!v6)
  {
    return 0;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

id sub_10010C788(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(type metadata accessor for RPNWBrowseAgent(a1 a2))];
  qword_1001DA730 = result;
  return result;
}

uint64_t sub_10010C928(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10010C9D4(uint64_t *a1)
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

void sub_10010CA2C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000C4810(&qword_1001D5FC8, &qword_10014C8E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_1000C4810(&qword_1001D5FD0, &qword_10014C8E8);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v57 - v12;
  static NWBrowser.Descriptor.Options.constructPredicate(_:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000C59E0(v6, &qword_1001D5FC8, &qword_10014C8E0);
    if (qword_1001DA5C0 != -1)
    {
LABEL_39:
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000BB0C(v47, qword_1001DA5C8);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "No filter, returning endpoints", v50, 2u);
    }

    return;
  }

  (*(v8 + 32))(v13, v6, v7);
  if (qword_1001DA5C0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000BB0C(v14, qword_1001DA5C8);
  v16 = *(v8 + 16);
  v66 = v13;
  v16(v11, v13, v7);

  v65 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = a1 >> 62;
  v64 = v7;
  v60 = v8;
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v67[0] = v22;
    *v21 = 134218242;
    if (v20)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 4) = v23;

    *(v21 + 12) = 2080;
    sub_10010D3FC();
    v24 = v64;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v58 = *(v60 + 8);
    v58(v11, v24);
    v28 = sub_1000C3440(v25, v27, v67);

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Original endpoint count: %ld, found predicate: %s", v21, 0x16u);
    sub_1000C5604(v22);

    v7 = v24;
  }

  else
  {

    v58 = *(v8 + 8);
    v58(v11, v7);
  }

  v68 = _swiftEmptyArrayStorage;
  if (v20)
  {
    v63 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v63 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_12:
      v31 = 0;
      v59 = _swiftEmptyArrayStorage;
      v62 = a1 & 0xC000000000000001;
      *&v29 = 134217984;
      v61 = v29;
      while (1)
      {
        v32 = v31;
        while (1)
        {
          v33 = a1;
          v34 = a1 + 8 * v32;
          if (v62)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v32 >= *(v63 + 16))
            {
              goto LABEL_38;
            }

            v35 = *(v34 + 32);
          }

          v37 = v35;
          v31 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v67[3] = sub_10010D3B0(0, v36);
          v38 = sub_10010D460(&qword_1001D5FD8, sub_10010D3B0, &protocol conformance descriptor for RPNWEndpoint);
          v67[0] = v37;
          v67[4] = v38;
          v67[5] = v67;
          v39 = v37;
          v40 = Predicate.evaluate(_:)();
          sub_1000C5604(v67);
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.debug.getter();
          v43 = os_log_type_enabled(v41, v42);
          if (v40)
          {
            break;
          }

          if (v43)
          {
            v44 = swift_slowAlloc();
            *v44 = v61;
            *(v44 + 4) = v32;
            _os_log_impl(&_mh_execute_header, v41, v42, "Endpoint at index %ld did NOT match predicate, filtering out endpoint", v44, 0xCu);
          }

          a1 = v33;
          v7 = v64;
          ++v32;
          if (v31 == v30)
          {
            goto LABEL_42;
          }
        }

        if (v43)
        {
          v45 = swift_slowAlloc();
          *v45 = v61;
          *(v45 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v41, v42, "Endpoint at index %ld DID match predicate, keeping endpoint", v45, 0xCu);
        }

        if (v62)
        {
          a1 = v33;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v7 = v64;
        }

        else
        {
          v7 = v64;
          if (v32 >= *(v63 + 16))
          {
            __break(1u);
            return;
          }

          v46 = *(v34 + 32);
          a1 = v33;
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          a1 = v33;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v59 = v68;
        if (v31 == v30)
        {
          goto LABEL_42;
        }
      }
    }
  }

  v59 = _swiftEmptyArrayStorage;
LABEL_42:
  v51 = v59;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    v55 = v66;
    if (v51 >> 62)
    {
      v56 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v56 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v54 + 4) = v56;

    _os_log_impl(&_mh_execute_header, v52, v53, "Filtered endpoint count: %ld", v54, 0xCu);

    v58(v55, v7);
  }

  else
  {

    v58(v66, v7);
  }
}

unint64_t sub_10010D3B0(uint64_t a1, uint64_t a2)
{
  result = qword_1001D5FC0;
  if (!qword_1001D5FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001D5FC0);
  }

  return result;
}

unint64_t sub_10010D3FC()
{
  result = qword_1001D5FE0;
  if (!qword_1001D5FE0)
  {
    sub_1000C6A0C(&qword_1001D5FD0, &qword_10014C8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D5FE0);
  }

  return result;
}

uint64_t sub_10010D460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010D528(const __CFString *a1, const __CFString *a2)
{
  v2 = @"<NULL>";
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = @"<NULL>";
  }

  if (a2)
  {
    v2 = a2;
  }

  return LogPrintF(&dword_1001D2EF0, "[RPNWNetworkAgent(Pairing) createPairingConnectionFramer:assign:local:remote:pin:]", 30, "assigning connection %@ <-> %@", v3, v2);
}

void sub_10010D6A0(void *a1, uint64_t a2)
{
  v3 = [a1 length];
  v6 = [*(a2 + 32) peer];
  v4 = [v6 destinationDevice];
  v5 = [v4 name];
  LogPrintF(&dword_1001D2EF0, "[RPNWNetworkAgent(Pairing) createPairingConnectionFramer:assign:local:remote:pin:]_block_invoke_3", 30, "RX DATA (%d bytes) from Agent Client, sending to peer '%@'", v3, v5);
}

void sub_10010D740(void *a1, char a2)
{
  v3 = [a1 browseToken];
  v5 = v3;
  v4 = "onHideSensitiveInfo";
  if (a2)
  {
    v4 = "onAdvertiseSensitiveInfo";
  }

  LogPrintF(&dword_1001D2EF0, "[RPNWNetworkAgent(Pairing) createPairingListener:endpoint:pin:]", 30, "%@ LISTEN: Stopping existing pairing session to restart with updated state: %s", v3, v4);
}

void sub_10010D7C4(void *a1, char a2)
{
  v3 = [a1 browseToken];
  v4 = v3;
  v5 = "no";
  if (a2)
  {
    v5 = "yes";
  }

  LogPrintF(&dword_1001D2EF0, "[RPNWNetworkAgent(Pairing) createPairingListener:endpoint:pin:]", 30, "%@ LISTEN: Creating pairing server, advertise sensitive info: %s", v3, v5);
}

void sub_10010D838(uint64_t a1)
{
  v1 = [*(a1 + 32) browseToken];
  LogPrintF(&dword_1001D2EF0, "[RPNWNetworkAgent(Pairing) createPairingListener:endpoint:pin:]_block_invoke", 30, "%@ LISTEN: Pairing session stopped due to state update.", v1);
}

void sub_10010D898(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) browseToken];
  LogPrintF(&dword_1001D2EF0, "[RPNWNetworkAgent(Pairing) createPairingListener:endpoint:pin:]_block_invoke_4", 90, "%@ LISTEN: Error activating pairing server: %@\n", v3, a2);
}

void sub_10010D908(uint64_t a1)
{
  v1 = [*(a1 + 32) browseToken];
  LogPrintF(&dword_1001D2EF0, "[RPNWNetworkAgent(Pairing) createPairingListener:endpoint:pin:]_block_invoke_4", 30, "%@ LISTEN: Successfully activated pairing server.\n", v1);
}

void sub_10010DC68()
{
  sub_100003D84();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10000D63C();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

void sub_10010DCD4()
{
  sub_100003564();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_10000D4E8();
  sub_10000D63C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10010DD48()
{
  sub_100003D84();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10000D63C();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

void sub_10010DDB4()
{
  sub_100003564();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_10000D4E8();
  sub_10000D63C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10010DE28()
{
  sub_100003D84();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10000D63C();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

void sub_10010DE94()
{
  sub_100003564();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_10000D4E8();
  sub_10000D63C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10010DF08()
{
  sub_100003D84();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10000D63C();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

void sub_10010DF74()
{
  sub_100003564();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_10000D4E8();
  sub_10000D63C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

uint64_t sub_10010E084(char a1)
{
  v1 = "yes";
  if (a1)
  {
    v2 = "no";
  }

  else
  {
    v2 = "yes";
  }

  if ((a1 & 1) == 0)
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1001D30F8, "[RPCloudDaemon prefsChanged]", 40, "IDS enabled: %s -> %s\n", v2, v1);
}

void sub_10010EB20(void *a1)
{
  v5 = [a1 peerIdentifier];
  v2 = [a1 peerDeviceInfo];
  v3 = [v2 idsDeviceIdentifier];
  v4 = [a1 peerDeviceInfo];
  LogPrintF(&dword_1001D3228, "-[RPCompanionLinkDaemon findServerClientFromID:senderIDS:statusFlags:]_block_invoke", 30, "Checking peerIdentifier=%@, idsDeviceIdentifier=%@, SF=%#ll{flags}\n", v5, v3, [v4 statusFlags], &unk_1001476B8);
}

void sub_10010EBE0(void *a1)
{
  v1 = [a1 peerDeviceInfo];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon findServerClientFromID:senderIDS:statusFlags:]_block_invoke", 30, "Found matching device='%@'\n", v1);
}

uint64_t sub_10010ECA4(uint64_t a1)
{
  if (*(*(a1 + 32) + 544))
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _activate]_block_invoke_2", 30, "HomeKit wait ending: LTPK %s\n", v1);
}

uint64_t sub_10010EDD8()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon diagnosticCommand:params:]", 30, "Diag: AWDL advertiser force: %s -> %s\n", v2, v0);
}

uint64_t sub_10010EE30()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon diagnosticCommand:params:]", 30, "Diag: AWDL browser force: %s -> %s\n", v2, v0);
}

uint64_t sub_10010EF40()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 30, "AppSignIn enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010EF98()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 30, "Apply NoInfraWiFi flag to USB : %s -> %s\n", v2, v0);
}

uint64_t sub_10010EFF0()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 30, "CompanionAuthentication enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F048()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 30, "BLE client enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F0A0(uint64_t a1)
{
  if ([sub_1000454C4(a1) BOOLValue])
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  if ([v1 BOOLValue])
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "MeDeviceIsMe override: %s -> %s\n", v2, v3);
}

uint64_t sub_10010F120()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "BTPipe enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F178()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "Client enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F1D0()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "CoreDevicePaired: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F228()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "CoreDeviceEnabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F280()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "HID enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F328()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "HomeKit enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F380()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 30, "Ignore CompanionLink Checks: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F3D8()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "IP enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F430()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "MediaControl enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F488()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "Server Bonjour always: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F4E0()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "Server enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F538()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "Siri enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F590()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "Touch enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F5E8()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "UI Notes enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F640()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon prefsChanged]", 40, "Use target AuthTag for AWDL bring up: %s -> %s\n", v2, v0);
}

void sub_10010F698(void *a1, uint64_t a2)
{
  v3 = [a1 event];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon removeXPCMatchingToken:]", 30, "LaunchOnDemand removed: %##@, token %llu\n", v3, a2);
}

void sub_10010F704()
{
  sub_10000D18C();
  v2 = [v1 unsignedLongLongValue];
  v3 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _reportXPCMatchingDiscoveryUINoteDevice:]_block_invoke", 30, "LaunchOnDemand: Discovery UINote, token %llu, service %@, Device %@\n", v2, v0, v3);
}

void sub_10010F77C()
{
  sub_10000D18C();
  v2 = [v1 unsignedLongLongValue];
  v3 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _reportXPCMatchingDiscoveryCompanionAuthenticationDevice:]_block_invoke", 30, "LaunchOnDemand: Discovery Companion Authentication, token %llu, service %@, Device %@\n", v2, v0, v3);
}

void sub_10010F7F4(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 840) meDeviceName];
  v2 = [*(*(a1 + 32) + 840) meDeviceIsMe];
  v3 = "no";
  if (v2)
  {
    v3 = "yes";
  }

  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _update]_block_invoke_2", 30, "Me device changed to %@ meDeviceIsMe: %s\n", v4, v3);
}

void sub_10010F890(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 840) bluetoothAddressData];
  v1 = v2;
  LogPrintF(&dword_1001D3228, "-[RPCompanionLinkDaemon _update]_block_invoke_8", 30, "Bluetooth address changed to: %.6a", COERCE_DOUBLE([v2 bytes]));
}

uint64_t sub_10010F998()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _updateForXPCServerChange]", 30, "Bonjour Infra Pairing: %s -> %s\n", v2, v0);
}

uint64_t sub_10010F9F0()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _updateForXPCServerChange]", 30, "Bonjour AWDL advertise name for guest pairing: %s -> %s\n", v2, v0);
}

void sub_10010FA9C(void *a1, void *a2)
{
  v9 = [a1 name];
  v4 = [a1 pid];
  v5 = [a2 previousState];
  [v5 taskState];
  v6 = NSStringFromRBSTaskState();
  v7 = [a2 state];
  [v7 taskState];
  v8 = NSStringFromRBSTaskState();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _updateRBSProcessMonitor]_block_invoke_3", 30, "Process %@:%d state update %@ -> %@\n", v9, v4, v6, v8);
}

void sub_10010FCB4(char a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = @"NO";
  }

  else
  {
    v6 = @"YES";
  }

  v7 = [*a2 deviceFilter];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryEnsureStarted]", a3, "deviceFilterChanged %@, bleDiscoveryFilter %@, deviceFilter: %@", v6, v7, a4);
}

void sub_10010FEE8(void *a1, uint64_t a2)
{
  v3 = [a1 bleDevice];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceFound:deviceFlags:]", 30, "Replaced BLE device %@ -> %@", v3, a2);
}

void sub_10010FF44(uint64_t a1, uint64_t a2)
{
  v3 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceFound:deviceFlags:]", 10, "BLE device changed: %@ DFl %#{flags}\n", v3, a2, &unk_100147A0F);
}

void sub_10010FFB0(uint64_t a1)
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceFound:deviceFlags:]", 10, "BLE device in cache: %@\n");
}

void sub_100110008(uint64_t a1, unsigned __int8 a2)
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10000B2C0() bleDevice];
  LogPrintF(&dword_1001D3228, "-[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceFound:deviceFlags:]", 30, "BLE device found: %@ at RSSI %ld DFl %#{flags}\n", v2, [v4 rssi], a2, &unk_100147A0F);
}

void sub_100110098()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100045488();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceFound:deviceFlags:]", 90, "### Ignoring BLE device found: no ID, %@\n", v0);
    }
  }
}

void sub_100110114(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (v6 = _LogCategory_Initialize(), v4 = a1, v6))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceLost:force:deviceFlags:]", 30, "Ignoring BLE device lost for BLE device ID current:%@ old:%@ cached device %@\n", a2, v4, a3);
      v4 = a1;
    }
  }
}

void sub_1001101F8(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceLost:force:deviceFlags:]", 30, "BLE device lost for NearbyAction: %@\n", v1);
}

void sub_100110258(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceLost:force:deviceFlags:]", 10, "BLE device in cache: %@\n", v1);
}

void sub_1001102B8(uint64_t a1, uint64_t a2)
{
  v3 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceLost:force:deviceFlags:]", 30, "BLE device lost: %@ DFl %#{flags}\n", v3, a2, &unk_100147A0F);
}

void sub_100110330()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100045488();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEDiscoveryDeviceLost:force:deviceFlags:]", 90, "### Ignoring BLE device lost: no ID, %@\n", v0);
    }
  }
}

void sub_100110444(void *a1, unsigned __int8 a2)
{
  v4 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "-[RPCompanionLinkDaemon _serverNearbyInfoV2DeviceFound:deviceFlags:]", 30, "NearbyInfoV2 device found: %@ at RSSI %ld DFl %#{flags}\n", v4, [a1 rssi], a2, &unk_100147A0F);
}

void sub_1001104DC(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverNearbyInfoV2DeviceFound:deviceFlags:]", 10, "NearbyInfoV2 device in cache: %@\n", v1);
}

void sub_10011053C()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100045488();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverNearbyInfoV2DeviceFound:deviceFlags:]", 90, "### Ignoring NearbyInfoV2 device found: no ID, %@\n", v0);
    }
  }
}

void sub_100110628(void *a1, uint64_t a2)
{
  v3 = a1;
  if (dword_1001D3228 <= 30)
  {
    if (dword_1001D3228 != -1 || (v4 = _LogCategory_Initialize(), v3 = a1, v4))
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverNearbyInfoV2DeviceLost:idsIdentifier:force:deviceFlags:]", 30, "Ignoring NearbyInfoV2 device lost: stale ID, %@ vs %@\n", a2, v3);
      v3 = a1;
    }
  }
}

void sub_1001106C4(uint64_t a1, uint64_t a2)
{
  v3 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverNearbyInfoV2DeviceLost:idsIdentifier:force:deviceFlags:]", 30, "NearbyInfoV2 device lost: %@ DFl %#{flags}\n", v3, a2, &unk_100147A0F);
}

void sub_10011073C()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100045488();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverNearbyInfoV2DeviceLost:idsIdentifier:force:deviceFlags:]", 90, "### Ignoring NearbyInfoV2 device lost: no ID, %@\n", v0);
    }
  }
}

void sub_1001107B4()
{
  sub_100003D84();
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10000B2C0() sourceVersion];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLEFamilyDeviceReportChanges]", 30, "Reporting change in family BLE device to client - idsDeviceID: %@, deviceName: %@, source version: %@", v0, v1, v3);
}

uint64_t sub_1001108A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = "no";
  if (*(v1 + 236))
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  if (*(v1 + 440))
  {
    v2 = "yes";
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBLENeedsCLinkAdvertiserEnsureStarted]_block_invoke", 30, "BLE NeedsCLink advertiser started. ScreenOff: %s, AWDLGuestDiscovery %s, targeting %@ \n", v3, v2, *(v1 + 208));
}

uint64_t sub_100110A8C(void *a1, uint64_t *a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v3 description];
    }
    v4 = ;
  }

  v5 = v4;
  *a2 = v4;

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourFoundDevice:reevaluate:]", 10, "Ignoring our own Bonjour device: %@\n", v5);
}

uint64_t sub_100110B44(void *a1, uint64_t *a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v3 description];
    }
    v4 = ;
  }

  v5 = v4;
  *a2 = v4;

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourFoundDevice:reevaluate:]", 10, "Ignoring device with no BLE address: %@\n", v5);
}

void sub_100110BFC(void *a1)
{
  v1 = sub_100025600(a1);
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourFoundDevice:reevaluate:]", 30, "Ignoring our own resolved Bonjour device: %@\n", v1);
}

void sub_100110C98(void *a1, uint64_t a2)
{
  v3 = sub_100025600(a1);
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourFoundDevice:reevaluate:]", 30, "Bonjour peer found <%@>: %@\n", a2, v3);
}

void sub_100110D04(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 idsDeviceID];
  v7 = sub_100025600(a2);
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourFoundDevice:reevaluate:]", 40, "Ignoring lower peer %@, IDS local %@ vs peer %@, %@\n", a3, a4, v8, v7);
}

void sub_100110DA0(void *a1)
{
  v1 = sub_100025600(a1);
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourFoundDevice:reevaluate:]", 10, "Ignoring non-communal peer: %@\n", v1);
}

void sub_100110E7C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v14 = v2;

  sub_1000454AC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourLostDevice:]", 30, "Bonjour peer lost <%@>: %@\n");
}

void sub_100110F3C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 detailedDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v7 descriptionWithLevel:20];
    }

    else
    {
      NSPrintF("%@\n", v7);
    }
    v8 = ;
  }

  v10 = v8;

  if (a2)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourFoundUnauthDevice:isAWDLDevice:]", 30, "Bonjour unauth peer changed. BLE Address: <%@>, device: %@, changed flags: %#{flags}, found over AWDL: %@\n", a3, v10, a4, &unk_100147AE1, v9);
}

void sub_100111044(void *a1, char a2, uint64_t a3)
{
  v5 = a1;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 detailedDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v5 descriptionWithLevel:20];
    }

    else
    {
      NSPrintF("%@\n", v5);
    }
    v6 = ;
  }

  v8 = v6;

  v7 = @"NO";
  if (a2)
  {
    v7 = @"YES";
  }

  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourFoundUnauthDevice:isAWDLDevice:]", 30, "Bonjour unauth peer found. BLE Address: <%@>, device: %@, found over AWDL: %@\n", a3, v8, v7);
}

void sub_10011117C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v5 descriptionWithLevel:50];
    }

    else
    {
      [v5 description];
    }
    v6 = ;
  }

  v7 = v6;

  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourCheckFoundPairedDevice:publicID:]", 30, "Bonjour paired peer changed <%@>: %@, %#{flags}\n", a2, v7, a3, &unk_100147AE1);
}

void sub_10011125C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v14 = v2;

  sub_1000454AC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourCheckFoundPairedDevice:publicID:]", 30, "Bonjour paired peer found <%@>: %@\n");
}

void sub_10011131C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v14 = v2;

  sub_1000454AC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourLostUnauthDevice:]", 30, "Bonjour unauth peer lost <%@>: %@\n");
}

void sub_10011141C(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v14 = v2;

  sub_1000454AC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourCheckLostPairedDevice:publicID:]", 30, "Bonjour paired peer lost <%@>: %@\n");
}

void sub_1001115EC(void *a1, uint64_t a2)
{
  v3 = [a1 xpcCnx];
  LogPrintF(&dword_1001D3228, "-[RPCompanionLinkDaemon _clientShouldConnectOverBonjour:device:identities:]", 90, "Destination device %@ for connection from pid %d has no IDS identifier\n", a2, [v3 processIdentifier]);
}

void sub_10011165C()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "Ignoring AWDL device: requirements, %#ll{flags}, %@\n", v0, &unk_100147AD5, v1);
}

void sub_1001116D0()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "Found AWDL device: %@, %@\n", v0, v1);
}

void sub_10011172C()
{
  sub_100009994();
  v0 = CUDescriptionWithLevel();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "Replacing AWDL device %@ with %@\n", v0, v1);
}

void sub_1001117E0()
{
  sub_10000D18C();
  v3 = [v2 client];
  LogPrintF(&dword_1001D3228, "-[RPCompanionLinkDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "Start connection on found AWDL device for client CID 0x%X : %@, %@\n", [v3 clientID], v1, v0);
}

void sub_10011184C(void *a1, void *a2)
{
  v3 = [a1 label];
  v4 = [a2 client];
  LogPrintF(&dword_1001D3228, "-[RPCompanionLinkDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "Using connection %@ for client 0x%X", v3, [v4 clientID]);
}

void sub_100111980(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "Ignoring AWDL device: no connect flag for Bonjour device: %@\n", v1);
}

void sub_1001119E0(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourAWDLBrowserFoundDevice:]", 30, "Ignoring AWDL device: no ID, %@\n", v1);
}

void sub_100111A40(uint64_t a1, uint64_t a2)
{
  if (dword_1001D3228 <= 30)
  {
    sub_100045488();
    if (!v4 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourAWDLBrowserLostDevice:]", 30, "Ignoring lost AWDL device lost: stale ID, %@ vs %@\n", v2, a2);
    }
  }
}

void sub_100111ABC()
{
  sub_100009994();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourAWDLBrowserLostDevice:]", 30, "Lost AWDL device: %@, %@\n", v0, v1);
}

uint64_t sub_100111B68(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (dword_1001D3228 <= 30 && (dword_1001D3228 != -1 || _LogCategory_Initialize()))
  {
    v7 = CUDescriptionWithLevel();
    *a3 = v7;
    LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientBonjourAWDLBrowserLostDevice:]", 30, "Ignoring lost AWDL device not in cache\n", v7);
    return 0;
  }

  else
  {
    *a4 = a2;
    return 1;
  }
}

void sub_100111C18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 descriptionWithLevel:50];
    }

    else
    {
      [v3 description];
    }
    v4 = ;
  }

  v5 = v4;

  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientConnectionStart:controlFlags:uniqueID:identity:]", 60, "Skipping new connection when at our limit of %d: %@\n", a1, v5);
}

void sub_100111CE0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 detailedDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v5 descriptionWithLevel:20];
    }

    else
    {
      NSPrintF("%@\n", v5);
    }
    v6 = ;
  }

  v7 = v6;

  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientConnectionStart:controlFlags:uniqueID:identity:]", 30, "Connection start: UID %@, BD %@, Cnx %@\n", a2, v7, a3);
}

void sub_100111DE0(uint64_t a1, uint64_t a2)
{
  v3 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientCreateConnection:xpcCnx:error:]", 30, "Start on-demand connection (%s) to %@\n", a2, v3);
}

void sub_100111E40(void *a1, uint64_t a2)
{
  v3 = sub_100025600(a1);
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientCreateConnection:xpcCnx:error:]", 90, "### Start on-demand connection failed: %@, %{error}\n", v3, a2);
}

void sub_100111E9C(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [sub_100045494() descriptionWithLevel:?];
    }

    else
    {
      [v3 description];
    }
    v4 = ;
  }

  v5 = v4;

  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientCreateConnection:xpcCnx:error:]", 90, "### Start on-demand connection failed: %@, %{error}\n", v5, a2);
}

void sub_100111F60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 descriptionWithLevel:50];
    }

    else
    {
      [v3 description];
    }
    v4 = ;
  }

  v5 = v4;

  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientConnectionStartUnauth:client:publicID:xpcCnx:error:]", 60, "Failing new connection when at our limit of %d: %@\n", a1, v5);
}

void sub_100112028(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v5 descriptionWithLevel:50];
    }

    else
    {
      [v5 description];
    }
    v6 = ;
  }

  v7 = v6;

  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientConnectionStartUnauth:client:publicID:xpcCnx:error:]", 30, "Connection start auth: PID %@, BD %@, Cnx %@\n", a2, v7, a3);
}

void sub_1001120EC(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v1 descriptionWithLevel:50];
    }

    else
    {
      [v1 description];
    }
    v2 = ;
  }

  v3 = v2;

  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _clientConnectionStartUnauth:client:publicID:xpcCnx:error:]", 90, "Failing new connection without Bonjour device: %@\n", v3);
}

uint64_t sub_100112368(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_10000357C(&dword_1001D3228, "[RPCompanionLinkDaemon _clientUINoteStart:]", a3, "UINote ignored: No AppleID \n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000357C(&dword_1001D3228, "[RPCompanionLinkDaemon _clientUINoteStart:]", a3, "UINote ignored: No AppleID \n");
    }
  }

  return result;
}

void sub_1001125D4()
{
  if (dword_1001D3228 <= 30)
  {
    sub_100045488();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverBLENeedsCLinkScannerDeviceFound:]", 30, "Ignoring NeedsCLink found: No ID, %@\n", v0);
    }
  }
}

void sub_1001126CC()
{
  if (dword_1001D3228 <= 30)
  {
    sub_100045488();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverBLENeedsCLinkScannerDeviceLost:]", 30, "Ignoring NeedsCLink lost: No ID, %@\n", v0);
    }
  }
}

void sub_100112850(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100025600(a1);
  LogPrintF(&dword_1001D3228, "-[RPCompanionLinkDaemon _serverBonjourAWDLAdvertiserShouldRun]", 30, "Evaluating target AuthTag <%@> from device (%@) using non-connectable BLE addr %.6a selfTemporaryAuthTag <%@>\n", a3, v7, [a2 bytes], a4);
}

void sub_1001128CC(void *a1)
{
  sub_100025600(a1);
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverBonjourAWDLAdvertiserShouldRun]", 30, "Enabling Bonjour AWDL advertiser as target AuthTag from device (%@) is a match\n");
}

void sub_100112920(void *a1)
{
  sub_100025600(a1);
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverBonjourAWDLAdvertiserShouldRun]", 30, "Enabling Bonjour AWDL advertiser as device (%@) does not have target AuthTag\n");
}

void sub_1001129B4(void *a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverBonjourAWDLAdvertiserEnsureStarted]", 30, "Bonjour AWDL advertiser start: %@\n", v1);
}

uint64_t sub_100112A50(_BYTE *a1)
{
  if (*a1)
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverBonjourAWDLAdvertiserUpdateTXT]", 30, "Bonjour advertise name: %s\n", v1);
}

uint64_t sub_100112B48()
{
  sub_100003D98();
  if (v4)
  {
    v1 = v2;
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _shouldSendActivityLevelOverWiFi]", 30, "Sending activity levels to phone over infra wifi changed from %s -> %s. Clients: %@", v3, v1, v0);
}

uint64_t sub_100112C64(unsigned int a1)
{
  if (a1 > 0xB)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1001AC088[a1];
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverShouldAdvertiseIdentifiableInfoWhenUnpairedForAirPlayWithLinkType:]", 90, "Checking AirPlay advertisement with unsupported linkType %@\n", v1);
}

void sub_100112DBC()
{
  sub_10000D18C();
  [v2 label];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10000B2C0() label];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _serverTCPRemoveConnectionsWithIdentifier:exceptConnection:]", 30, "Removing stale connection %@, replacing with new connection %@ for device identifier %@\n", v1, v3, v0);
}

uint64_t sub_100112EF8(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1001AC0E8[a1];
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _btPipeSetup:withPriority:]", 30, "BTPipe %s priority start\n", v1);
}

uint64_t sub_100112FB4(void *a1)
{
  v1 = [a1 priority];
  if (v1 > 3)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1001AC0E8[v1];
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _btPipeTearDown:]", 30, "BTPipe %s priority stop\n", v2);
}

uint64_t sub_100113018(void *a1, unsigned int a2)
{
  v3 = [a1 priority];
  if (v3 > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1001AC0E8[v3];
  }

  if (a2 > 2)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1001AC108[a2];
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _btPipeHandleStateChanged:]", 30, "BTPipe %s priority state changed to %s\n", v4, v5);
}

void sub_100113160(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _activeDeviceAdded:cnx:]", 30, "Add active device: %@\n", v1);
}

void sub_1001131C0(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _activeDeviceRemoved:cnx:]", 30, "Remove active device: %@\n", v1);
}

void sub_100113260(uint64_t a1)
{
  sub_1000454C4(a1);
  v2 = CUDescriptionWithLevel();
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _activeDeviceRemoved:cnx:]_block_invoke", 30, "Invalidating disconnected duplicate: %@ -> %@\n", v2, v1);
}

void sub_1001132F0(void *a1, void *a2, uint64_t a3)
{
  v6 = [a1 label];
  v12 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_1001B1A70;
  }

  v8 = [a1 peerIdentifier];
  v9 = a2;
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 shortDescription];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v9 descriptionWithLevel:50];
    }

    else
    {
      [v9 description];
    }
    v10 = ;
  }

  v11 = v10;

  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _activeDeviceChangedForConnection:bonjourDevice:]", 30, "Bonjour peer changed <%@ %@>: %@, %#{flags}\n", v7, v8, v11, a3, &unk_100147AE1);
}

void sub_1001134D0(void *a1, uint64_t a2)
{
  v3 = [a1 peerIdentifier];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _destinationID:matchesCnx:]", 30, "Connection to %@ is acting as a proxy for destination %@", v3, a2);
}

void sub_10011353C(uint64_t a1)
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _disconnectRemovedSharedHomeDevices]_block_invoke", 30, "Disconnect removed SharedHome device: %@\n");
}

void sub_1001135D4(uint64_t a1)
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _disconnectUnpairedDevices]_block_invoke", 30, "Disconnect unpaired device: %@\n");
}

void sub_100113948(char a1, id *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = "%@ -> %@\n";
  }

  else
  {
    v4 = "%~@ -> %~@\n";
  }

  v5 = [*a2 idsPersonalDeviceIdentifier];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _localDeviceUpdate]", 30, v4, v5, a3);
}

void sub_1001139C4(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  sub_10000F224(&v2);
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _localDeviceUpdate]", 30, "Operating system version: %@\n");
}

uint64_t sub_100113A2C(unsigned int a1, int a2)
{
  if (a1 > 7)
  {
    v2 = "?";
    if (a1 > 9)
    {
      v2 = "User";
    }
  }

  else
  {
    v2 = off_1001AC208[a1];
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _localDeviceUpdate]", 30, "PersonalDeviceState changed: %s -> %s\n", v2, off_1001AC160[a2]);
}

uint64_t sub_100113CD0(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon observeValueForKeyPath:ofObject:change:context:]", 30, "SoundBoard stereo leader changed: %s\n", v1);
}

uint64_t sub_100113F68(void *a1, void *a2)
{
  if ([a1 length])
  {
    v3 = "set";
  }

  else
  {
    v3 = "not set";
  }

  if ([a2 length])
  {
    v4 = "set";
  }

  else
  {
    v4 = "not set";
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _homeKitSelfAccessoryMediaAccessUpdated:password:]", 30, "HomeKit SelfAccessory MediaAccess password changed: %s -> %s\n", v3, v4);
}

uint64_t sub_100114028(unsigned int a1, int a2)
{
  if (a1 > 3)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1001AC1E8[a1];
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _homeKitSelfAccessoryMediaSystemUpdated:]", 30, "HomeKit SelfAccessory MediaSystem role changed: %s -> %s\n", v2, off_1001AC1E8[a2]);
}

uint64_t sub_10011408C(unsigned int a1, int a2)
{
  if (a1 > 3)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1001AC1E8[a1];
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _homeKitSelfAccessoryMediaSystemUpdated:]", 30, "Effective MediaSystem role changed: %s -> %s\n", v2, off_1001AC1E8[a2]);
}

uint64_t sub_10011410C(unsigned int a1, char a2)
{
  if (a1 > 7)
  {
    v2 = "?";
    if (a1 > 9)
    {
      v2 = "User";
    }
  }

  else
  {
    v2 = off_1001AC208[a1];
  }

  v3 = "No";
  if (a2)
  {
    v3 = "Yes";
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _homeKitSelfAccessoryUpdated]", 30, "HomeKit SelfAccessory Personal Requests changed: %s -> %s\n", v2, v3);
}

void sub_10011431C(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _homeHubDeviceAdded:]", 40, "HomeHub device added %@\n", v1);
}

void sub_1001143BC(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _homeHubDeviceRemoved:]", 40, "HomeHub device removed %@\n", v1);
}

void *sub_10011455C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = RPErrorF(4294960542, "EventID '%@' for proxy device on unauthenticated connection is not allowed", a3, a4, a5, a6, a7, a8, a2);
    *v8 = result;
  }

  return result;
}

void sub_1001146EC(uint64_t a1, uint64_t a2)
{
  if (dword_1001D3228 <= 90)
  {
    sub_100045488();
    if (!v4 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _receivedRequestID:request:options:responseHandler:unauth:cnx:]", 90, "### Ignoring request ID %@ received for proxy device %@ on unAuth connection", v2, a2);
    }
  }
}

void sub_10011482C(uint64_t a1)
{
  v1 = CUDescriptionWithLevel();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _proxyDeviceAdd:options:eventID:deviceInfo:cnx:]", 30, "Proxy device added %@\n", v1);
}

void sub_1001148CC(uint64_t a1)
{
  CUDescriptionWithLevel();
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _proxyDeviceRemove:options:cnx:]", 30, "Proxy device removed %@\n");
}

void sub_1001149E4(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _existingProxyDeviceUpdated:event:isLocal:]", 40, "Siri info updated on HomeHub device %@\n", v1);
}

void sub_100114A40()
{
  sub_100003D84();
  v13 = [v1 identifier];
  v2 = [v0 roomName];
  sub_1000454D0(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _existingProxyDeviceUpdated:event:isLocal:]", 40, "Room name updated on HomeHub device %@: %@ -> %@\n");
}

void sub_100114ABC()
{
  sub_100003D84();
  v13 = [v1 identifier];
  v2 = [v0 mediaRouteIdentifier];
  sub_1000454D0(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _existingProxyDeviceUpdated:event:isLocal:]", 40, "Media route identifier updated on HomeHub device %@: %@ -> %@\n");
}

void sub_100114B78(void *a1, double a2)
{
  v3 = [a1 requestID];
}

void sub_100114C28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  v4 = [*(a1 + 56) identifier];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _proxyDevice:loopbackRequestID:request:options:responseHandler:]_block_invoke", 90, "### Received response XID 0x%x, error %(error), from proxy device %@ \n", v3, a2, v4);
}

void sub_100114E14()
{
  sub_100003D84();
  [v3 serviceType];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10000B2C0() sessionID];
  v5 = [v1 localIdentifier];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _sessionHandlePeerDisconnect:]", 30, "Session stop: Service %@, PeerID %@, SID 0x%llX, LocalID %@ disconnect\n", v2, v0, v4, v5);
}

void sub_100114E98()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100045488();
    if (!v1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _sessionHandlePeerDisconnect:]", 90, "### Session stop without cnx peerID: %@\n", v0);
    }
  }
}

void sub_100114F10(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkDaemon _handleContextCollectorProxyRequest:options:responseHandler:]", 30, "Sending proxy request %@ to context collector %@", a2, v3);
}

void sub_10011501C(void *a1, uint64_t a2)
{
  v3 = [a1 label];
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection _connectionHasActiveSessions:]", 40, "Connection %@ has %llu active sessions in progress, skip invalidating", v3, a2);
}

void sub_100115388(id *a1)
{
  [*a1 localDeviceInfo];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection companionLinkSetLocalDeviceAsContextCollector:]", 30, "Setting local device as context collector: '%@'\n");
}

void sub_1001153E0(id *a1)
{
  [*a1 localDeviceInfo];
  objc_claimAutoreleasedReturnValue();
  sub_100009988();
  LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection companionLinkRemoveLocalDeviceAsContextCollector:]", 30, "Removing local device as context collector: '%@'\n");
}

uint64_t sub_1001154E0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = [*(a1 + 200) processIdentifier];
  v6 = "no changes";
  if (a2)
  {
    v6 = "changed";
  }

  return LogPrintF(&dword_1001D3228, "[RPCompanionLinkXPCConnection xpcServerUpdate:]", 30, "Update server: %@, from %#{pid}, %s\n", a3, v5, v6);
}

void sub_100115554()
{
  if (dword_1001D3228 <= 90)
  {
    sub_100003D84();
    if (v2 != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1001D3228, "-[RPCompanionLinkXPCConnection xpcServerUpdate:]", 90, "### Server update failed: no server, %@, from %#{pid}\n", v0, [*(v1 + 200) processIdentifier]);
    }
  }
}

uint64_t sub_1001156B8(const __CFString *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = &stru_1001B1A70;
  }

  v5 = [RPNWFramer controlCodeToString:a2];
  v6 = strerror(a3);
  return LogPrintF(&dword_1001D3460, "+[RPNWFramer writeControlOnFramer:type:error:token:]", 30, "%@ Framer is not set, failed to to write CTRL message %s, error=%d (%s) on framer", v4, v5, a3, v6);
}

uint64_t sub_100115740(uint64_t a1, unsigned __int8 *a2, id *a3, void *a4)
{
  if (*(a1 + 40))
  {
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = &stru_1001B1A70;
  }

  v8 = [RPNWFramer controlCodeToString:*(a1 + 64)];
  v9 = *a2;
  v10 = strerror(v9);
  v11 = *a3;
  v12 = objc_alloc_init(NSMutableString);
  *a4 = v12;
  [v12 appendFormat:@"%p", v11];

  return LogPrintF(&dword_1001D3460, "+[RPNWFramer writeControlOnFramer:type:error:token:]_block_invoke", 30, "%@ Wrote CTRL message %s, error=%d (%s) on framer=%@\n", v7, v8, v9, v10, v12);
}

uint64_t sub_100115828(uint64_t a1, id *a2, void *a3)
{
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = &stru_1001B1A70;
  }

  v6 = [RPNWFramer controlCodeToString:*(a1 + 64)];
  v7 = *a2;
  v8 = objc_alloc_init(NSMutableString);
  *a3 = v8;
  [v8 appendFormat:@"%p", v7];

  return LogPrintF(&dword_1001D3460, "+[RPNWFramer writeControlOnFramer:type:error:token:]_block_invoke", 30, "%@ Wrote CTRL message %s on framer=%@\n", v5, v6, v8);
}

void sub_100115D18()
{
  sub_10000D650();
  sub_100003590();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100115DDC()
{
  sub_10000D650();
  LODWORD(v0) = *(v0 + 36);
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Magic value does not match: 0x%x", v1, 8u);
}

void sub_100115E60()
{
  sub_10000D650();
  sub_100003590();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100115F5C(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Stop handler called for framer=%@, sending CLOSE to daemon", &v1, 0xCu);
}

void sub_100116040(void *a1, uint64_t a2)
{
  v3 = [a1 applicationLabel];
  LogPrintF(&dword_1001D34D0, "[RPNearFieldDaemonController startPolling:context:]", 30, "Start polling for applicationLabel:%@ pollingType:%d\n", v3, a2);
}

void sub_1001160E4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 currentTransaction];
  v5 = [v6 identifier];
  LogPrintF(&dword_1001D34D0, "[RPNearFieldDaemonController invalidateTransactionWithIdentifier:context:]", 30, "invalidate transaction with identifier:%@\n current transaction identifier:%@\n context:%@\n", a2, v5, a3);
}

void sub_100116220(void *a1)
{
  v1 = [a1 currentTransaction];
  LogPrintF(&dword_1001D34D0, "[RPNearFieldDaemonController _clearCurrentTransaction]", 30, "clearing current transaction:%@\n", v1);
}

void sub_100116420(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF(&dword_1001D36C0, "[RPNWListener init]", 30, "Initializing RPNWListener[%@]\n", v2);
}

void sub_10011649C(void *a1, uint64_t a2)
{
  v3 = [a1 name];
  LogPrintF(&dword_1001D36C0, "+[RPNWListener addDeviceToApplicationServiceMapping:device:completion:]", 30, "addDeviceToApplicationServiceMapping appSvc='%@' device='%@'\n", a2, v3);
}

void sub_1001165A0(void *a1, uint64_t a2)
{
  v3 = [a1 name];
  LogPrintF(&dword_1001D36C0, "+[RPNWListener queryDeviceToApplicationServiceMapping:device:completion:]", 30, "queryDeviceToApplicationServiceMapping appSvc='%@' device='%@'\n", a2, v3);
}

void sub_10011669C(void *a1, uint64_t a2)
{
  v3 = [a1 applicationService];
  LogPrintF(&dword_1001D36C0, "+[RPNWListener addListenerAgentClient:]", 40, "Found registered listener %@ for appSvc=%@\n", a2, v3);
}

void sub_100116764(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_alloc_init(NSMutableString);
  [v4 appendFormat:@"%p", v3];

  LogPrintF(&dword_1001D36C0, "+[RPNWListener addListenerAgentClient:]", 30, "Adding RPNWAgentClient[%@] to %@\n", v4, a2);
}

void sub_100116850(void *a1)
{
  v1 = [a1 applicationService];
  LogPrintF(&dword_1001D36C0, "+[RPNWListener addListenerAgentClient:]", 40, "Could not find registered listener for appSvc=%@\n", v1);
}

void sub_100116948(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF(&dword_1001D36C0, "+[RPNWListener startListenerMappingTimeout:]_block_invoke", 40, "RPNWListener[%@] aged out\n", v2);
}

void sub_1001169D8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 name];
  LogPrintF(&dword_1001D36C0, "+[RPNWListener findListenerForID:applicationService:fromPeer:]", 30, "Finding listener agent client for listener ID=%@, appSvc=%@, peer=%@\n", a2, a3, v5);
}

void sub_100116B90(void *a1)
{
  v1 = [a1 mappingID];
  LogPrintF(&dword_1001D36C0, "+[RPNWListener findListenerForAgentClient:sender:browseRequest:]", 30, "Found listener mapping=%@\n", v1);
}

void sub_100116C50(void *a1, uint64_t a2)
{
  v5 = [a1 token];
  v4 = [a1 connectionUUID];
  LogPrintF(&dword_1001D36C0, "[RPNWListener startConnection:agentClient:]", 30, "%@ Starting connection %@ for appSvc:'%@'\n", v5, v4, *(a2 + 16));
}

void sub_100116CE0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 token];
  LogPrintF(&dword_1001D36C0, "[RPNWListener startConnection:agentClient:]", 40, "%@ Creating incoming endpoint for device identifier=%@ and appSvc='%@'", v5, a3, *(a2 + 16));
}

uint64_t sub_100116EAC(char a1)
{
  v1 = "off";
  if (a1)
  {
    v2 = "on";
  }

  else
  {
    v2 = "off";
  }

  if (byte_1001D6128)
  {
    v1 = "on";
  }

  return LogPrintF(&dword_1001D36C0, "+[RPNWListener setAutoMapping:]", 40, "Setting auto-mapping to %s (was %s)\n", v2, v1);
}

uint64_t sub_100117078(char a1)
{
  v1 = "yes";
  if (a1)
  {
    v2 = "no";
  }

  else
  {
    v2 = "yes";
  }

  if ((a1 & 1) == 0)
  {
    v1 = "no";
  }

  return LogPrintF(&dword_1001D3730, "[RPDaemon activate]", 40, "XPC matching test mode enabled: %s -> %s\n", v2, v1);
}

uint64_t sub_100117A64(uint64_t result, int a2, int a3)
{
  if (dword_1001D3948 <= 60)
  {
    v5 = result;
    if (dword_1001D3948 != -1 || (result = _LogCategory_Initialize(), result))
    {
      if (v5 > 2)
      {
        v6 = "?";
      }

      else
      {
        v6 = (&off_1001AC958)[v5];
      }

      return LogPrintF(&dword_1001D3948, "[RPHIDDaemon _injectKeyboardEventUsagePage:usageCode:buttonState:]", 60, "### Inject usage page 0x%X, usage code 0x%X, buttonState %d (%s) failed: %#m\n", a2, a3, v5, v6);
    }
  }

  return result;
}

void sub_100117BE0()
{
  if (dword_1001D3948 <= 60 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3948, "[RPHIDDaemon _handleGameControllerAuxEvent:pressed:]", 60, "### Inject Game Controller event failed: %#m\n", 4294960568);
  }
}

uint64_t sub_100117C54(uint64_t result)
{
  if (dword_1001D3948 <= 60)
  {
    v1 = result;
    if (dword_1001D3948 != -1)
    {
      return LogPrintF(&dword_1001D3948, "[RPHIDDaemon _handleGameControllerEvent:]", 60, "### Inject Game Controller event failed: %#m\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1001D3948, "[RPHIDDaemon _handleGameControllerEvent:]", 60, "### Inject Game Controller event failed: %#m\n", v1);
    }
  }

  return result;
}

void *sub_100117CD0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = RPErrorF(4294960596, "IOHIDUserDeviceCreate failed", a3, a4, a5, a6, a7, a8, v9);
    *v8 = result;
  }

  return result;
}

uint64_t sub_100117F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  UpTicksToSecondsF();
  v5 = v4;
  UpTicksToSecondsF();
  v7 = v6;
  UpTicksToSecondsF();
  v9 = v8;
  UpTicksToSecondsF();
  return LogPrintF(&dword_1001D3948, "[RPHIDDaemon _handleTouchEvent:]", 10, "Remote event time: %f, local time: %f, timeSinceTouchesBegan: %f timeSinceLastEvent: %f\n", v5, v7, v9, v10);
}

void sub_100117FA4(void *a1)
{
  if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    v2 = CUPrintNSError();
    LogPrintF(&dword_1001D3948, "[RPHIDDaemon _handleTouchEvent:]", 90, "### Re-start touch device failed: %@", v2);
  }
}

void sub_1001182F0(void *a1, uint64_t *a2)
{
  v4 = [a1 token];
  *a2 = v4;
  v5 = [a1 connectionUUID];
  LogPrintF(&dword_1001D3A88, "+[RPNWConnection addConnection:]", 30, "%@ addConnection for key=%@\n", v4, v5);
}

void sub_10011837C(void *a1)
{
  v3 = [a1 token];
  v2 = [a1 connectionUUID];
  LogPrintF(&dword_1001D3A88, "+[RPNWConnection removeConnection:]", 30, "%@ removeConnection for key=%@\n", v3, v2);
}

void sub_100118404(void *a1)
{
  v1 = [a1 name];
  LogPrintF(&dword_1001D3A88, "+[RPNWConnection stopAllOutgoingConnectionsNotForPeer:]", 40, "Stop connections not for peer %@\n", v1);
}

void sub_100118460(void *a1)
{
  v2 = [a1 token];
  v3 = [a1 connectionUUID];
  LogPrintF(&dword_1001D3A88, "+[RPNWConnection stopAllOutgoingConnectionsNotForPeer:]", 30, "%@ Signaling error on framer for connection=%@\n", v2, v3);
}

uint64_t sub_100118630(int *a1, int *a2, int *a3)
{
  v5 = *a1;
  v6 = sub_1000594DC(*a1);
  v7 = *a2;
  if (*a2)
  {
    switch(v7)
    {
      case 10:
        v8 = "Periodic";
        break;
      case 20:
        v8 = "Background";
        break;
      case 30:
        v8 = "Low";
        break;
      case 35:
        v8 = "MediumLow";
        break;
      case 40:
        v8 = "Medium";
        break;
      case 50:
        v8 = "High";
        break;
      case 60:
        v8 = "Max";
        break;
      default:
        v8 = "?";
        break;
    }
  }

  else
  {
    v8 = "Default";
  }

  v9 = *a3;
  if (*a3)
  {
    switch(v9)
    {
      case 10:
        v10 = "Periodic";
        break;
      case 20:
        v10 = "Background";
        break;
      case 30:
        v10 = "Low";
        break;
      case 35:
        v10 = "MediumLow";
        break;
      case 40:
        v10 = "Medium";
        break;
      case 50:
        v10 = "High";
        break;
      case 60:
        v10 = "Max";
        break;
      default:
        v10 = "?";
        break;
    }
  }

  else
  {
    v10 = "Default";
  }

  return LogPrintF(&dword_1001D3AF8, "[RPNearbyActionV2Discovery activateWithCompletion:]", 30, "Activating NearbyActionV2 discovery with: %s (0x%x), %s, %s\n", v6, v5, v8, v10);
}

uint64_t sub_1001188B0(int a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 10:
        v1 = "Periodic";
        break;
      case 20:
        v1 = "Background";
        break;
      case 30:
        v1 = "Low";
        break;
      case 35:
        v1 = "MediumLow";
        break;
      case 40:
        v1 = "Medium";
        break;
      case 50:
        v1 = "High";
        break;
      default:
        v1 = "Max";
        if (a1 != 60)
        {
          v1 = "?";
        }

        break;
    }
  }

  else
  {
    v1 = "Default";
  }

  return LogPrintF(&dword_1001D3AF8, "[RPNearbyActionV2Discovery updateUseCase:bleScanRate:bleScanRateScreenOff:]", 30, "Updating NearbyActionV2 discovery bleScanRate to %s\n", v1);
}

uint64_t sub_100118990(int a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 10:
        v1 = "Periodic";
        break;
      case 20:
        v1 = "Background";
        break;
      case 30:
        v1 = "Low";
        break;
      case 35:
        v1 = "MediumLow";
        break;
      case 40:
        v1 = "Medium";
        break;
      case 50:
        v1 = "High";
        break;
      default:
        v1 = "Max";
        if (a1 != 60)
        {
          v1 = "?";
        }

        break;
    }
  }

  else
  {
    v1 = "Default";
  }

  return LogPrintF(&dword_1001D3AF8, "[RPNearbyActionV2Discovery updateUseCase:bleScanRate:bleScanRateScreenOff:]", 30, "Updating NearbyActionV2 discovery bleScanRateScreenOff to %s\n", v1);
}

uint64_t sub_100118AF0(uint64_t result)
{
  if (dword_1001D3AF8 <= 90)
  {
    v1 = result;
    if (dword_1001D3AF8 != -1)
    {
      return LogPrintF(&dword_1001D3AF8, "[RPNearbyActionV2Discovery _deviceFound:]", 90, "### Ignoring BLE NearbyActionV2 device found: No ID, %@\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_1001D3AF8, "[RPNearbyActionV2Discovery _deviceFound:]", 90, "### Ignoring BLE NearbyActionV2 device found: No ID, %@\n", v1);
    }
  }

  return result;
}

void sub_100118B94(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF(&dword_1001D3B70, "[RPNWNearbyInvitationDiscoverySession removeAllDevices]", 30, "DISCOVER: RPNWNearbyInvitationDiscoverySession[%@]: Ending discovery session", v2);
}

void sub_100118C40(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"%p", v1];

  LogPrintF(&dword_1001D3B70, "[RPNWNearbyInvitationDiscoverySession stopDiscovery]", 30, "DISCOVER: Stopping RPNWNearbyInvitationDiscoverySession[%@]", v2);
}

void sub_100118E0C(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"%p", v2];

  count = nw_array_get_count();
  LogPrintF(&dword_1001D3BE0, "+[RPNWNearbyInvitationEndpoint updateClientBrowseResult:browseResponse:agentUUID:applicationService:discoverySessionID:]", 30, "Updated browse client [%@] with %zu endpoints", v3, count);
}

void sub_100118F3C(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  LogPrintF(&dword_1001D3C50, "[RPHomeKitManager setCurrentUser:]", 30, "Set current HomeKit user to %@", v1);
}

void sub_100118F98(void *a1)
{
  v1 = [a1 name];
  LogPrintF(&dword_1001D3C50, "[RPHomeKitManager setCurrentHome:]", 30, "Set current HomeKit Home to '%@'\n", v1);
}

void sub_100118FF4(id *a1)
{
  v13 = [a1[5] userID];
  v2 = [a1[6] name];
  sub_10000359C(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF(&dword_1001D3C50, "[RPHomeKitManager user:didUpdateAssistantAccessControl:forHome:]_block_invoke", 30, "DidUpdateAssistantAccessControl: user %{mask}, home '%@'");
}

void sub_100119074(id *a1)
{
  v13 = [a1[5] name];
  v2 = [a1[6] siriEndpointIdentifier];
  sub_10000359C(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  LogPrintF(&dword_1001D3C50, "[RPHomeKitManager home:didUpdateRoom:forAccessory:]_block_invoke", 30, "DidUpdateRoom: room name updated to '%@' for HomeHub device %@");
}

uint64_t sub_1001191A4()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon prefsChanged]", 30, "Client enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_1001191FC()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon prefsChanged]", 30, "Server enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_100119254()
{
  sub_100003D98();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon prefsChanged]", 30, "Guest server enabled: %s -> %s\n", v2, v0);
}