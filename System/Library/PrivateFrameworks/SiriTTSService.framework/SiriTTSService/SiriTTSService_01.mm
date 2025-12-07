uint64_t sub_100016710(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = static NSNotificationName.taskCompletion.getter();
  NSNotificationCenter.post(event:)(v8);

  sub_100005734();
  v9 = dispatch thunk of TaskOperation.error.getter();
  a3();

  swift_beginAccess();
  *(a6 + 16) = _swiftEmptyArrayStorage;
}

uint64_t sub_100016838(uint64_t a1, const char *a2)
{
  v21 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for OSSignpostID();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OSSignposter();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Signpost.signposter.getter();
  v12 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v13 = v20;
    if ((*(v20 + 88))(v4, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v13 + 8))(v4, v2);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v19, v16, v21, v14, v15, 2u);
  }

  (*(v5 + 8))(v7, v22);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100016B24(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11 = static NSNotificationName.taskCompletion.getter();
  NSNotificationCenter.post(event:)(v11);

  sub_100005734();
  v12 = dispatch thunk of TaskOperation.error.getter();
  a3();

  swift_beginAccess();
  *(a6 + 16) = _swiftEmptyArrayStorage;

  if ((a8 & 1) == 0)
  {
    return sandbox_extension_release();
  }

  return result;
}

void sub_100016C28(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1)
  {
    v4 = a3.n128_u64[0];
    v5 = _convertErrorToNSError(_:)();
    a3.n128_u64[0] = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a2 + 16))(a2, a3);
}

uint64_t sub_100016C9C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
}

uint64_t sub_100016CFC(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [a1 removeObserver:a2];
  swift_beginAccess();
  v11 = *(a5 + 16);
  v10 = *(a5 + 24);

  v12 = dispatch thunk of TaskOperation.error.getter();
  a3(v11, v10, v12);

  swift_beginAccess();
  *(a7 + 16) = _swiftEmptyArrayStorage;
}

void sub_100016DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_10001705C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SynthesisVoiceSubscription();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_100017108(void *a1, int a2, void *a3, void *aBlock, SEL *a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  _Block_copy(v9);
  v10 = a3;
  v11 = a1;
  sub_100020DC4(v10, v9, a5);
  _Block_release(v9);
  _Block_release(v9);
}

uint64_t sub_1000171D8(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, void *))
{
  v9 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(a4);
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  _Block_copy(v12);
  v15 = a1;
  a5(v11, v12);
  _Block_release(v12);
  _Block_release(v12);

  return sub_100001E9C(v11, &qword_100035810, &qword_100027D68);
}

void sub_1000174C8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_1000175F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonXPCHandler(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100017630@<X0>(uint64_t *a2@<X8>)
{
  v3 = objc_allocWithZone(type metadata accessor for DaemonXPCHandler(0));
  v4 = sub_10001BC6C();

  *a2 = v4;
  return result;
}

char *sub_100017684(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000AEF4(&unk_100035B50, &unk_100027FF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100017790(void *result, int64_t a2, char a3, void *a4)
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

  sub_10000AEF4(&qword_100035B08, &qword_100027FD0);
  v10 = *(type metadata accessor for WorkflowFactory.TTSErrorHandler(0) - 8);
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
  v15 = *(type metadata accessor for WorkflowFactory.TTSErrorHandler(0) - 8);
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

char *sub_100017968(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000179A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100017988(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100017AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000179A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000AEF4(&unk_100035B50, &unk_100027FF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100017AB4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000AEF4(&qword_100035AE8, &qword_100027FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000AEF4(&qword_100035AF0, &qword_100027FB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100017BFC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10001831C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100017D4C(Swift::Int *a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  v7 = SynthesisVoice.VoiceType.rawValue.getter();
  Hasher._combine(_:)(v7);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = SynthesisVoice.VoiceType.rawValue.getter();
      if (v12 == SynthesisVoice.VoiceType.rawValue.getter())
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(*(v6 + 48) + 8 * v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10001849C(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_100017E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000AEF4(&qword_100035808, &qword_100027D60);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1000180C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000AEF4(&qword_100035AA0, &qword_100027F80);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      v18 = SynthesisVoice.VoiceType.rawValue.getter();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10001831C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100017E68(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100018608();
      goto LABEL_16;
    }

    sub_1000188A4(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10001849C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000180C8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100018764();
      goto LABEL_12;
    }

    sub_100018ADC(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  v10 = SynthesisVoice.VoiceType.rawValue.getter();
  Hasher._combine(_:)(v10);
  result = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = SynthesisVoice.VoiceType.rawValue.getter();
      result = SynthesisVoice.VoiceType.rawValue.getter();
      if (v13 == result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100018608()
{
  v1 = v0;
  sub_10000AEF4(&qword_100035808, &qword_100027D60);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_100018764()
{
  v1 = v0;
  sub_10000AEF4(&qword_100035AA0, &qword_100027F80);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

Swift::Int sub_1000188A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000AEF4(&qword_100035808, &qword_100027D60);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100018ADC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000AEF4(&qword_100035AA0, &qword_100027F80);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      v17 = SynthesisVoice.VoiceType.rawValue.getter();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100018D00(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000675C(&qword_100035A88, &qword_100035A80, &qword_100027F70, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000AEF4(&qword_100035A80, &qword_100027F70);
            v9 = sub_100019390(v13, i, a3);
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
        type metadata accessor for TaskOperation();
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

uint64_t sub_100018EA4(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000675C(&qword_100035B68, &qword_100035B60, &qword_100028008, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000AEF4(&qword_100035B60, &qword_100028008);
            v9 = sub_100019418(v13, i, a3);
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
        type metadata accessor for SynthesisVoiceSubscription();
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

uint64_t sub_100019048(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000675C(&unk_100035AB0, &qword_100035AA8, &unk_100027F88, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000AEF4(&qword_100035AA8, &unk_100027F88);
            v9 = sub_100019418(v13, i, a3);
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
        type metadata accessor for SynthesisVoice();
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

uint64_t sub_1000191EC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000675C(&qword_100035BB0, &qword_100035BA8, &qword_100028028, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000AEF4(&qword_100035BA8, &qword_100028028);
            v9 = sub_100019498(v13, i, a3);
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
        type metadata accessor for VoiceAsset();
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

void (*sub_100019390(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100019410;
  }

  __break(1u);
  return result;
}

void (*sub_100019418(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
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
    return sub_100022AE4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100019498(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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

LABEL_5:
    *v3 = v4;
    return sub_100019518;
  }

  __break(1u);
  return result;
}

uint64_t sub_100019520(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RequestPreprocessAction();
  dispatch thunk of static RequestPreprocessAction.processLanguage(for:)();
  type metadata accessor for VoiceSelectionAction();

  dispatch thunk of ObjectPool.find<A>()();

  type metadata accessor for SynthesisRequest();
  v2 = SynthesizingRequestProtocol.voice.getter();
  SynthesizingRequestProtocol.disableThermalFallback.getter();
  SynthesizingRequestProtocol.disableCompactVoice.getter();
  dispatch thunk of BaseRequest.requestCreatedTime.getter();
  v3 = dispatch thunk of VoiceSelectionAction.selectVoiceAsset(_:disableThermalFallback:disableCompactVoice:requestId:)();

  v4 = VoiceAsset.voice.getter();

  v5 = SynthesizingRequestProtocol.voice.getter();
  dispatch thunk of SynthesisVoice.name.getter();
  v7 = v6;

  if (v7)
  {
  }

  else
  {
    if (v4)
    {
      dispatch thunk of SynthesisVoice.footprint.getter();
      v8 = SynthesisVoice.Footprint.rawValue.getter();
      if (v8 == SynthesisVoice.Footprint.rawValue.getter() || (dispatch thunk of SynthesisVoice.footprint.getter(), v9 = SynthesisVoice.Footprint.rawValue.getter(), v9 == SynthesisVoice.Footprint.rawValue.getter()))
      {
        v10 = SynthesizingRequestProtocol.voice.getter();
        dispatch thunk of SynthesisVoice.name.getter();
        dispatch thunk of SynthesisVoice.name.setter();
      }

      else
      {
      }
    }
  }

  return v3;
}

uint64_t sub_100019728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RequestPreprocessAction();
  dispatch thunk of static RequestPreprocessAction.processLanguage(for:)();
  type metadata accessor for VoiceSelectionAction();

  dispatch thunk of ObjectPool.find<A>()();

  v3 = SynthesizingRequestProtocol.voice.getter();
  SynthesizingRequestProtocol.disableThermalFallback.getter();
  SynthesizingRequestProtocol.disableCompactVoice.getter();
  dispatch thunk of BaseRequest.requestCreatedTime.getter();
  v4 = dispatch thunk of VoiceSelectionAction.selectVoiceAsset(_:disableThermalFallback:disableCompactVoice:requestId:)();

  v5 = VoiceAsset.voice.getter();

  v6 = SynthesizingRequestProtocol.voice.getter();
  dispatch thunk of SynthesisVoice.name.getter();
  v8 = v7;

  if (v8)
  {
  }

  else
  {
    if (v5)
    {
      dispatch thunk of SynthesisVoice.footprint.getter();
      v9 = SynthesisVoice.Footprint.rawValue.getter();
      if (v9 == SynthesisVoice.Footprint.rawValue.getter() || (dispatch thunk of SynthesisVoice.footprint.getter(), v10 = SynthesisVoice.Footprint.rawValue.getter(), v10 == SynthesisVoice.Footprint.rawValue.getter()))
      {
        v11 = SynthesizingRequestProtocol.voice.getter();
        dispatch thunk of SynthesisVoice.name.getter();
        dispatch thunk of SynthesisVoice.name.setter();
      }

      else
      {
      }
    }
  }

  return v4;
}

uint64_t sub_10001992C(void *a1, uint64_t a2, uint64_t a3)
{
  v109 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v113 = v5;
  v114 = v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v107 = &v103 - v11;
  v12 = __chkstk_darwin(v10);
  v106 = &v103 - v13;
  v14 = __chkstk_darwin(v12);
  v104 = &v103 - v15;
  v16 = __chkstk_darwin(v14);
  v105 = &v103 - v17;
  v18 = __chkstk_darwin(v16);
  v108 = &v103 - v19;
  v20 = __chkstk_darwin(v18);
  v111 = &v103 - v21;
  v22 = __chkstk_darwin(v20);
  v110 = &v103 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v103 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v103 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v103 - v31;
  __chkstk_darwin(v30);
  v34 = &v103 - v33;
  type metadata accessor for InternalSettings();
  v112 = a3;
  dispatch thunk of ObjectPool.find<A>()();
  v35 = dispatch thunk of InternalSettings.disableServerTTS.getter();
  if (v35 != 2 && (v35 & 1) != 0)
  {
    static Logger.service.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Disable Osprey since internal settings set disableServerTTS", v38, 2u);
    }

    goto LABEL_40;
  }

  v39 = dispatch thunk of InternalSettings.forceServerTTS.getter();
  if (v39 != 2 && (v39 & 1) != 0)
  {
    static Logger.service.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Prefer Osprey since internal settings set forceServerTTS", v42, 2u);
    }

    (*(v114 + 8))(v32, v113);
    return 1;
  }

  type metadata accessor for SynthesisRequest();
  if (SynthesizingRequestProtocol.forceOspreyTTS.getter())
  {
    static Logger.service.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Prefer Osprey since request set forceOspreyTTS", v45, 2u);
    }

    (*(v114 + 8))(v29, v113);
    return 1;
  }

  v47 = SynthesizingRequestProtocol.voice.getter();
  dispatch thunk of SynthesisVoice.name.getter();
  v49 = v48;

  if (v49)
  {
  }

  else
  {
    v50 = SynthesizingRequestProtocol.voice.getter();
    dispatch thunk of SynthesisVoice.gender.getter();

    v51 = SynthesisVoice.VoiceGender.rawValue.getter();
    if (v51 == SynthesisVoice.VoiceGender.rawValue.getter())
    {
      static Logger.service.getter();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Disable Osprey since unspecific voice parameter", v54, 2u);
      }

      (*(v114 + 8))(v9, v113);
      return 0;
    }
  }

  if (SynthesizingRequestProtocol.privacySensitive.getter())
  {
    return 0;
  }

  sub_10000AEF4(&qword_100035AC0, &qword_100027F98);
  dispatch thunk of ObjectPool.find<A>()();
  sub_1000053A0(&v115, v116);
  sub_10000535C(v116, v117);
  v55 = dispatch thunk of OspreyConfigProviding.allowedAppIdentifiers.getter();
  if (v55)
  {
    v56 = v55;
    *&v115 = dispatch thunk of BaseRequest.clientBundleId.getter();
    *(&v115 + 1) = v57;
    __chkstk_darwin(v115);
    *(&v103 - 2) = &v115;
    v58 = sub_100009A0C(sub_100022B08, (&v103 - 4), v56);

    if ((v58 & 1) == 0)
    {
      static Logger.service.getter();
      v72 = a1;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v115 = v76;
        *v75 = 136446210;
        v77 = dispatch thunk of BaseRequest.clientBundleId.getter();
        v79 = sub_100004240(v77, v78, &v115);

        *(v75 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v73, v74, "Client %{public}s is not allowed to use Osprey", v75, 0xCu);
        sub_100004474(v76);
      }

      (*(v114 + 8))(v26, v113);
      goto LABEL_69;
    }
  }

  sub_100004474(v116);
  type metadata accessor for PreinstalledAudioStorage();
  dispatch thunk of ObjectPool.find<A>()();
  v67 = dispatch thunk of PreinstalledAudioStorage.find(request:)();
  if (v67)
  {

    v34 = v110;
    static Logger.service.getter();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v68, v69))
    {
LABEL_39:

LABEL_40:

      (*(v114 + 8))(v34, v113);
      return 0;
    }

    v70 = swift_slowAlloc();
    *v70 = 0;
    v71 = "Disable Osprey since preinstalled audio is found";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v68, v69, v71, v70, 2u);

    goto LABEL_39;
  }

  if (SynthesizingRequestProtocol.minimizeDeviceUsage.getter())
  {
    v59 = v111;
    static Logger.service.getter();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Prefer Osprey since request set minimizeDeviceUsage", v62, 2u);
    }

LABEL_30:
    (*(v114 + 8))(v59, v113);
    return 1;
  }

  if (SynthesizingRequestProtocol.disableThermalFallback.getter())
  {
    v63 = v108;
    static Logger.service.getter();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Prefer device synthesis, ignoring power and thermal conditions due to disableThermalFallback", v66, 2u);
    }

    (*(v114 + 8))(v63, v113);
    return 0;
  }

  dispatch thunk of ObjectPool.find<A>()();
  v80 = dispatch thunk of InternalSettings.ignorePowerAndThermalState.getter();
  v81 = v109;
  if (v80 != 2 && (v80 & 1) != 0)
  {
    v34 = v105;
    static Logger.service.getter();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v68, v69))
    {
      goto LABEL_39;
    }

    v70 = swift_slowAlloc();
    *v70 = 0;
    v71 = "Prefer device synthesis, ignoring power and thermal conditions due to internal settings";
    goto LABEL_38;
  }

  if (!v81)
  {
    return 1;
  }

  v82 = VoiceAsset.voice.getter();
  dispatch thunk of SynthesisVoice.type.getter();

  v83 = SynthesisVoice.VoiceType.rawValue.getter();
  if (v83 == SynthesisVoice.VoiceType.rawValue.getter())
  {
    type metadata accessor for NeuralUtils();
    if (static NeuralUtils.isH12Platform.getter())
    {
      v84 = [objc_opt_self() processInfo];
      v85 = [v84 thermalState];

      if (v85 == 3)
      {
        v59 = v104;
        static Logger.service.getter();
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&_mh_execute_header, v86, v87, "Prefer Osprey due thermal critical on H12 platform", v88, 2u);
        }

        goto LABEL_30;
      }
    }
  }

  v89 = VoiceAsset.voice.getter();
  dispatch thunk of SynthesisVoice.type.getter();

  v90 = SynthesisVoice.VoiceType.rawValue.getter();
  if (v90 != SynthesisVoice.VoiceType.rawValue.getter())
  {
    v91 = VoiceAsset.voice.getter();
    dispatch thunk of SynthesisVoice.type.getter();

    v92 = SynthesisVoice.VoiceType.rawValue.getter();
    if (v92 != SynthesisVoice.VoiceType.rawValue.getter())
    {

      return 1;
    }
  }

  sub_10000AEF4(&qword_100035B10, &qword_100027FD8);
  dispatch thunk of ObjectPool.find<A>()();
  sub_1000053A0(&v115, v116);
  sub_10000535C(v116, v117);
  VoiceAsset.path.getter();
  dispatch thunk of NeuralVoiceUtilities.currentSampleRate(voicePath:)();
  v94 = v93;

  if (v94 >= 16000.0)
  {
    v99 = v106;
    static Logger.service.getter();
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 134217984;
      *(v102 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v100, v101, "Prefer device synthesis due to high neural voice sampling rate: %f", v102, 0xCu);
    }

    (*(v114 + 8))(v99, v113);
LABEL_69:
    sub_100004474(v116);
    return 0;
  }

  v95 = v107;
  static Logger.service.getter();
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 134217984;
    *(v98 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v96, v97, "Prefer osprey synthesis due to low neural voice sampling rate: %f", v98, 0xCu);
  }

  (*(v114 + 8))(v95, v113);
  sub_100004474(v116);
  return 1;
}

uint64_t sub_10001A778(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v117 = v6;
  v118 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v110 = &v107 - v12;
  v13 = __chkstk_darwin(v11);
  v109 = &v107 - v14;
  v15 = __chkstk_darwin(v13);
  v107 = &v107 - v16;
  v17 = __chkstk_darwin(v15);
  v108 = &v107 - v18;
  v19 = __chkstk_darwin(v17);
  v112 = &v107 - v20;
  v21 = __chkstk_darwin(v19);
  v115 = &v107 - v22;
  v23 = __chkstk_darwin(v21);
  v114 = &v107 - v24;
  v25 = __chkstk_darwin(v23);
  v111 = &v107 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v107 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v107 - v31;
  __chkstk_darwin(v30);
  v34 = &v107 - v33;
  type metadata accessor for InternalSettings();
  v116 = a3;
  dispatch thunk of ObjectPool.find<A>()();
  v35 = dispatch thunk of InternalSettings.disableServerTTS.getter();
  if (v35 != 2 && (v35 & 1) != 0)
  {
    static Logger.service.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Disable Osprey since internal settings set disableServerTTS", v38, 2u);
    }

    (*(v118 + 8))(v34, v117);
    return 0;
  }

  v39 = dispatch thunk of InternalSettings.forceServerTTS.getter();
  if (v39 != 2 && (v39 & 1) != 0)
  {
    static Logger.service.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Prefer Osprey since internal settings set forceServerTTS", v42, 2u);
    }

    (*(v118 + 8))(v32, v117);
    return 1;
  }

  if (SynthesizingRequestProtocol.forceOspreyTTS.getter())
  {
    static Logger.service.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Prefer Osprey since request set forceOspreyTTS", v45, 2u);
    }

    (*(v118 + 8))(v29, v117);
    return 1;
  }

  v47 = SynthesizingRequestProtocol.voice.getter();
  dispatch thunk of SynthesisVoice.name.getter();
  v49 = v48;

  if (v49)
  {
  }

  else
  {
    v50 = SynthesizingRequestProtocol.voice.getter();
    dispatch thunk of SynthesisVoice.gender.getter();

    v51 = SynthesisVoice.VoiceGender.rawValue.getter();
    if (v51 == SynthesisVoice.VoiceGender.rawValue.getter())
    {
      static Logger.service.getter();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Disable Osprey since unspecific voice parameter", v54, 2u);
      }

      (*(v118 + 8))(v10, v117);
      return 0;
    }
  }

  if (SynthesizingRequestProtocol.privacySensitive.getter())
  {
    return 0;
  }

  sub_10000AEF4(&qword_100035AC0, &qword_100027F98);
  dispatch thunk of ObjectPool.find<A>()();
  sub_1000053A0(&v119, v120);
  sub_10000535C(v120, v121);
  v59 = dispatch thunk of OspreyConfigProviding.allowedAppIdentifiers.getter();
  if (v59)
  {
    v60 = v59;
    *&v119 = dispatch thunk of BaseRequest.clientBundleId.getter();
    *(&v119 + 1) = v61;
    __chkstk_darwin(v119);
    *(&v107 - 2) = &v119;
    v62 = sub_100009A0C(sub_100009B10, (&v107 - 4), v60);

    if ((v62 & 1) == 0)
    {
      v71 = v111;
      static Logger.service.getter();
      v72 = a1;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v119 = v76;
        *v75 = 136446210;
        v77 = dispatch thunk of BaseRequest.clientBundleId.getter();
        v79 = sub_100004240(v77, v78, &v119);

        *(v75 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v73, v74, "Client %{public}s is not allowed to use Osprey", v75, 0xCu);
        sub_100004474(v76);
      }

      (*(v118 + 8))(v71, v117);
      goto LABEL_71;
    }
  }

  sub_100004474(v120);
  type metadata accessor for PreinstalledAudioStorage();
  dispatch thunk of ObjectPool.find<A>()();
  v67 = dispatch thunk of PreinstalledAudioStorage.find(request:)();
  if (v67)
  {

    v63 = v114;
    static Logger.service.getter();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Disable Osprey since preinstalled audio is found", v70, 2u);
    }

LABEL_40:
    (*(v118 + 8))(v63, v117);
    return 0;
  }

  if (SynthesizingRequestProtocol.minimizeDeviceUsage.getter())
  {
    v55 = v115;
    static Logger.service.getter();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Prefer Osprey since request set minimizeDeviceUsage", v58, 2u);
    }

LABEL_28:
    (*(v118 + 8))(v55, v117);
    return 1;
  }

  if (SynthesizingRequestProtocol.disableThermalFallback.getter())
  {
    v63 = v112;
    static Logger.service.getter();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Prefer device synthesis, ignoring power and thermal conditions due to disableThermalFallback", v66, 2u);
    }

    goto LABEL_40;
  }

  dispatch thunk of ObjectPool.find<A>()();
  v80 = dispatch thunk of InternalSettings.ignorePowerAndThermalState.getter();
  v81 = v113;
  if (v80 != 2 && (v80 & 1) != 0)
  {
    v82 = v108;
    static Logger.service.getter();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Prefer device synthesis, ignoring power and thermal conditions due to internal settings", v85, 2u);
    }

    (*(v118 + 8))(v82, v117);
    return 0;
  }

  if (!v81)
  {
    return 1;
  }

  v86 = VoiceAsset.voice.getter();
  dispatch thunk of SynthesisVoice.type.getter();

  v87 = SynthesisVoice.VoiceType.rawValue.getter();
  if (v87 == SynthesisVoice.VoiceType.rawValue.getter())
  {
    type metadata accessor for NeuralUtils();
    if (static NeuralUtils.isH12Platform.getter())
    {
      v88 = [objc_opt_self() processInfo];
      v89 = [v88 thermalState];

      if (v89 == 3)
      {
        v55 = v107;
        static Logger.service.getter();
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&_mh_execute_header, v90, v91, "Prefer Osprey due thermal critical on H12 platform", v92, 2u);
        }

        goto LABEL_28;
      }
    }
  }

  v93 = VoiceAsset.voice.getter();
  dispatch thunk of SynthesisVoice.type.getter();

  v94 = SynthesisVoice.VoiceType.rawValue.getter();
  if (v94 != SynthesisVoice.VoiceType.rawValue.getter())
  {
    v95 = VoiceAsset.voice.getter();
    dispatch thunk of SynthesisVoice.type.getter();

    v96 = SynthesisVoice.VoiceType.rawValue.getter();
    if (v96 != SynthesisVoice.VoiceType.rawValue.getter())
    {

      return 1;
    }
  }

  sub_10000AEF4(&qword_100035B10, &qword_100027FD8);
  dispatch thunk of ObjectPool.find<A>()();
  sub_1000053A0(&v119, v120);
  sub_10000535C(v120, v121);
  VoiceAsset.path.getter();
  dispatch thunk of NeuralVoiceUtilities.currentSampleRate(voicePath:)();
  v98 = v97;

  if (v98 >= 16000.0)
  {
    v103 = v109;
    static Logger.service.getter();
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 134217984;
      *(v106 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v104, v105, "Prefer device synthesis due to high neural voice sampling rate: %f", v106, 0xCu);
    }

    (*(v118 + 8))(v103, v117);
LABEL_71:
    sub_100004474(v120);
    return 0;
  }

  v99 = v110;
  static Logger.service.getter();
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 134217984;
    *(v102 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v100, v101, "Prefer osprey synthesis due to low neural voice sampling rate: %f", v102, 0xCu);
  }

  (*(v118 + 8))(v99, v117);
  sub_100004474(v120);
  return 1;
}

uint64_t sub_10001B620(uint64_t a1)
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

      sub_100017BFC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10001B6B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100022470();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100017D4C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10001B72C(uint64_t a1)
{
  v27 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v29 = *(v27 - 8);
  v1 = __chkstk_darwin(v27);
  v36 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v26 - v3;
  type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode, &protocol conformance descriptor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  v5 = type metadata accessor for RequestPreprocessAction();
  swift_allocObject();
  swift_retain_n();
  v6 = RequestPreprocessAction.init(pool:)();
  v34 = v5;
  v35 = &protocol witness table for RequestPreprocessAction;
  v33 = v6;
  swift_allocObject();
  v7 = WorkflowNode.init(action:)();
  v8 = type metadata accessor for RequestParsingAction();
  swift_allocObject();
  v9 = RequestParsingAction.init(pool:)();
  v34 = v8;
  v35 = &protocol witness table for RequestParsingAction;
  v33 = v9;
  swift_allocObject();
  v10 = WorkflowNode.init(action:)();
  v11 = type metadata accessor for VoiceSelectionAction();
  swift_allocObject();
  v12 = VoiceSelectionAction.init(pool:)();
  v34 = v11;
  v35 = &protocol witness table for VoiceSelectionAction;
  v33 = v12;
  swift_allocObject();
  v13 = WorkflowNode.init(action:)();
  v14 = type metadata accessor for SynthesisEngineSelectionAction();
  swift_allocObject();
  v15 = SynthesisEngineSelectionAction.init(pool:)();
  v34 = v14;
  v35 = &protocol witness table for SynthesisEngineSelectionAction;
  v33 = v15;
  swift_allocObject();
  v16 = WorkflowNode.init(action:)();
  v17 = type metadata accessor for DeviceSynthesisAction();
  swift_allocObject();
  v18 = DeviceSynthesisAction.init(pool:)();
  v34 = v17;
  v35 = &protocol witness table for DeviceSynthesisAction;
  v33 = v18;
  swift_allocObject();
  v19 = WorkflowNode.init(action:)();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100027E50;
  *(v20 + 32) = v7;
  *(v20 + 40) = v10;
  *(v20 + 48) = v13;
  *(v20 + 56) = v16;
  *(v20 + 64) = v19;
  v31 = v7;

  v30 = v10;

  v28 = v13;

  v21 = v27;
  DirectedAcyclicGraph.chain(nodes:)(v20);

  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  v22 = v32;
  dispatch thunk of ObjectPool.find<A>()();
  if (v22)
  {
  }

  v23 = v29;
  (*(v29 + 16))(v36, v4, v21);
  type metadata accessor for Workflow();
  swift_allocObject();
  v24 = Workflow.init(graph:notification:errorHandlers:)();
  (*(v23 + 8))(v4, v21);

  return v24;
}

uint64_t sub_10001BBA8(uint64_t a1)
{
  result = type metadata accessor for Entitlements();
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

id sub_10001BC6C()
{
  v1 = type metadata accessor for Entitlements();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_activeSession] = 0;
  sub_10000AEF4(&unk_100035A40, &unk_100027F40);
  dispatch thunk of ObjectPool.find<A>()();
  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate] = v8;
  type metadata accessor for Preferences();
  dispatch thunk of ObjectPool.find<A>()();
  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_preferences] = v8;
  dispatch thunk of ObjectPool.find<A>()();
  (*(v2 + 32))(&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_entitlements], v4, v1);
  type metadata accessor for TTSAssetUAFAssetProvider();
  dispatch thunk of ObjectPool.find<A>()();
  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_uafAssetProvider] = v8;
  type metadata accessor for TrialAssetProvider();
  dispatch thunk of ObjectPool.find<A>()();
  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_trialAssetProvider] = v8;
  type metadata accessor for SubscriptionService();
  dispatch thunk of ObjectPool.find<A>()();
  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_subscriptionService] = v8;
  v5 = type metadata accessor for DaemonXPCHandler(0);
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "init");
}

void (*sub_10001BF60(char a1, char *a2, uint64_t a3))(_BYTE *, void)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_activeSession;
  v14 = *&a2[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_activeSession];
  if ((a1 & 1) == 0)
  {
    if (v14)
    {
      v37 = a3;
      type metadata accessor for EngineCachingService();
      static EngineCachingService.shared.getter();
      result = dispatch thunk of EngineCachingService.activeSessionCount.modify();
      v26 = *v25 - 1;
      if (!__OFSUB__(*v25, 1))
      {
        v36 = v7;
        *v25 = v26;
        result(v39, 0);

        static Logger.service.getter();
        v27 = a2;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v38 = v6;
          v31 = v30;
          v32 = swift_slowAlloc();
          *v31 = 138412546;
          *(v31 + 4) = v27;
          *v32 = v27;
          *(v31 + 12) = 2048;
          v33 = v27;
          static EngineCachingService.shared.getter();
          v34 = dispatch thunk of EngineCachingService.activeSessionCount.getter();

          *(v31 + 14) = v34;
          _os_log_impl(&_mh_execute_header, v28, v29, "DaemonXPCHandler %@ sets inactive, total active session count: %ld", v31, 0x16u);
          sub_100001E9C(v32, &qword_1000353F8, &qword_100027B40);

          v6 = v38;
        }

        (*(v36 + 8))(v10, v6);
        *&a2[v13] = 0;
        swift_unknownObjectRelease();
        a3 = v37;
        return (*(a3 + 16))(a3, 0);
      }

      __break(1u);
      goto LABEL_14;
    }

    return (*(a3 + 16))(a3, 0);
  }

  if (v14)
  {
    return (*(a3 + 16))(a3, 0);
  }

  v38 = v6;
  *&a2[v13] = os_transaction_create();
  swift_unknownObjectRelease();
  type metadata accessor for EngineCachingService();
  static EngineCachingService.shared.getter();
  result = dispatch thunk of EngineCachingService.activeSessionCount.modify();
  if (!__OFADD__(*v16, 1))
  {
    ++*v16;
    result(v39, 0);

    static Logger.service.getter();
    v17 = a2;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v7;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v17;
      *v22 = v17;
      *(v21 + 12) = 2048;
      v23 = v17;
      static EngineCachingService.shared.getter();
      v24 = dispatch thunk of EngineCachingService.activeSessionCount.getter();

      *(v21 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "DaemonXPCHandler %@ sets active, total active session count: %ld", v21, 0x16u);
      sub_100001E9C(v22, &qword_1000353F8, &qword_100027B40);

      v7 = v20;
    }

    (*(v7 + 8))(v12, v38);
    return (*(a3 + 16))(a3, 0);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10001C394(char *a1, char *a2, const void *a3)
{
  v113 = a1;
  v107 = type metadata accessor for UUID();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v6 - 8);
  v105 = &v99 - v7;
  v8 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v119 = *(v8 - 8);
  v120 = v8;
  v9 = __chkstk_darwin(v8);
  v116 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v99 - v11;
  v115 = type metadata accessor for Logger();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for OSSignpostID();
  v14 = *(v111 - 8);
  v15 = __chkstk_darwin(v111);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v99 - v18;
  v110 = type metadata accessor for OSSignposter();
  v20 = *(v110 - 8);
  __chkstk_darwin(v110);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = swift_allocObject();
  *(v118 + 16) = a3;
  v108 = a3;
  _Block_copy(a3);
  static Signpost.signposter.getter();
  static OSSignpostID.exclusive.getter();
  v23 = OSSignposter.logHandle.getter();
  v24 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v25 = swift_slowAlloc();
    v109 = a2;
    v26 = v12;
    v27 = v25;
    *v25 = 0;
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v24, v28, "TTS enqueue audio task", "", v27, 2u);
    v12 = v26;
    a2 = v109;
  }

  v29 = v111;
  (*(v14 + 16))(v17, v19, v111);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v117 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v19, v29);
  (*(v20 + 8))(v22, v110);
  v30 = v112;
  static Logger.service.getter();
  v31 = v113;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138543362;
    *(v34 + 4) = v31;
    *v35 = v31;
    v36 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "Received #AudioRequest %{public}@", v34, 0xCu);
    sub_100001E9C(v35, &qword_1000353F8, &qword_100027B40);
  }

  v113 = v31;

  (*(v114 + 8))(v30, v115);
  type metadata accessor for ObjectPool();
  swift_allocObject();
  v37 = ObjectPool.init()();
  v38 = [objc_allocWithZone(NSNotificationCenter) init];
  *&aBlock = v38;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for Entitlements();
  dispatch thunk of ObjectPool.inject<A>(object:)();
  v39 = type metadata accessor for InternalSettings();
  *&aBlock = static InternalSettings.shared.getter();
  v115 = v39;
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode, &protocol conformance descriptor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100027E10;
  v41 = type metadata accessor for RequestParsingAction();
  swift_allocObject();

  v42 = RequestParsingAction.init(pool:)();
  *(&v122 + 1) = v41;
  v123 = &protocol witness table for RequestParsingAction;
  *&aBlock = v42;
  swift_allocObject();
  *(v40 + 32) = WorkflowNode.init(action:)();
  v43 = type metadata accessor for AudioPlaybackAction();
  swift_allocObject();

  v44 = AudioPlaybackAction.init(pool:)();
  *(&v122 + 1) = v43;
  v123 = &protocol witness table for AudioPlaybackAction;
  *&aBlock = v44;
  swift_allocObject();
  *(v40 + 40) = WorkflowNode.init(action:)();
  v45 = v120;
  DirectedAcyclicGraph.chain(nodes:)(v40);

  (*(v119 + 16))(v116, v12, v45);
  type metadata accessor for Workflow();
  swift_allocObject();
  v46 = a2;
  v47 = v12;
  v48 = v38;
  v116 = v38;
  v112 = Workflow.init(graph:notification:errorHandlers:)();
  v110 = v37;
  v111 = v47;
  v109 = v46;
  v49 = *&v46[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate];
  v108 = type metadata accessor for DelegateHandler();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v50 = v113;
  v51 = v48;
  v101 = v49;
  v100 = v50;
  v114 = DelegateHandler.init(notificationCenter:delegate:request:)();
  v52 = type metadata accessor for CoreAnalyticsSynthesisHandler();
  aBlock = 0u;
  v122 = 0u;
  v123 = 0;
  swift_allocObject();
  v53 = v51;
  v54 = CoreAnalyticsSynthesisHandler.init(notificationCenter:coreAnalyticsService:)();
  v55 = type metadata accessor for SignpostHandler();
  swift_allocObject();
  v56 = v53;
  v57 = SignpostHandler.init(notificationCenter:)();
  v58 = type metadata accessor for SiriAnalyticsHandler();
  v59 = v56;
  v60 = SiriAnalyticsHandler.__allocating_init(notificationCenter:logSynthesisEvents:)();
  v61 = type metadata accessor for AudioHandler();
  swift_allocObject();
  v113 = v59;
  v62 = AudioHandler.init(notificationCenter:)();
  v63 = swift_allocObject();
  sub_10000AEF4(&unk_100035A70, &unk_100027F60);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_100027950;
  *(v64 + 32) = v114;
  *(v64 + 56) = v108;
  *(v64 + 64) = v54;
  *(v64 + 88) = v52;
  *(v64 + 96) = v57;
  *(v64 + 120) = v55;
  *(v64 + 128) = v60;
  *(v64 + 184) = v61;
  *(v64 + 152) = v58;
  *(v64 + 160) = v62;
  *(v63 + 16) = v64;

  v108 = v54;

  v103 = v57;

  v102 = v60;

  v65 = os_transaction_create();
  v66 = v118;
  if (v65)
  {
    v67 = v65;
    *(&v122 + 1) = swift_getObjectType();
    *&aBlock = v67;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v63 + 16) = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v64 = sub_10000663C(0, *(v64 + 16) + 1, 1, v64);
      *(v63 + 16) = v64;
    }

    v70 = *(v64 + 16);
    v69 = *(v64 + 24);
    if (v70 >= v69 >> 1)
    {
      v64 = sub_10000663C((v69 > 1), v70 + 1, 1, v64);
      *(v63 + 16) = v64;
    }

    swift_unknownObjectRelease();
    *(v64 + 16) = v70 + 1;
    sub_10000674C(&aBlock, (v64 + 32 * v70 + 32));
    *(v63 + 16) = v64;
  }

  static InternalSettings.shared.getter();
  v71 = dispatch thunk of InternalSettings.enableDiagnostic.getter();

  if (v71 != 2 && (v71 & 1) != 0)
  {
    v72 = type metadata accessor for DiagnosticService();
    swift_allocObject();
    v73 = v113;
    v74 = DiagnosticService.init(notification:)();
    *(&v122 + 1) = v72;
    *&aBlock = v74;
    v75 = *(v63 + 16);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *(v63 + 16) = v75;
    if ((v76 & 1) == 0)
    {
      v75 = sub_10000663C(0, *(v75 + 2) + 1, 1, v75);
      *(v63 + 16) = v75;
    }

    v78 = *(v75 + 2);
    v77 = *(v75 + 3);
    if (v78 >= v77 >> 1)
    {
      v75 = sub_10000663C((v77 > 1), v78 + 1, 1, v75);
    }

    *(v75 + 2) = v78 + 1;
    sub_10000674C(&aBlock, &v75[32 * v78 + 32]);
    *(v63 + 16) = v75;
  }

  v79 = objc_allocWithZone(type metadata accessor for TaskOperation());
  v80 = v100;

  v115 = v62;
  v81 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v82 = swift_allocObject();
  v83 = v113;
  v84 = v109;
  v82[2] = v113;
  v82[3] = v84;
  v82[4] = sub_100022B24;
  v82[5] = v66;
  v82[6] = v81;
  v82[7] = v63;
  v123 = sub_10002287C;
  v124 = v82;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v122 = sub_100002B68;
  *(&v122 + 1) = &unk_100031E98;
  v85 = _Block_copy(&aBlock);
  v86 = v81;
  v116 = v83;
  v87 = v86;
  v88 = v84;

  sub_1000067AC(sub_10002287C, v82);

  [v87 setCompletionBlock:v85];
  _Block_release(v85);

  v89 = v105;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v90 = v106;
  v91 = v107;
  if ((*(v106 + 48))(v89, 1, v107))
  {
    sub_100001E9C(v89, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
  }

  else
  {
    v92 = v104;
    (*(v90 + 16))(v104, v89, v91);
    sub_100001E9C(v89, &qword_100035810, &qword_100027D68);
    v93 = UUID.uuidString.getter();
    v95 = v94;
    (*(v90 + 8))(v92, v91);
    sub_100007504(v93, v95);
  }

  v97 = v119;
  v96 = v120;
  sub_100007914(v87);

  (*(v97 + 8))(v111, v96);

  sub_100016838(v117, "TTS enqueue audio task");
}

uint64_t sub_10001D484(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v48 = type metadata accessor for Logger();
  v9 = *(v48 - 8);
  v10 = __chkstk_darwin(v48);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = &v45 - v13;
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  static Logger.service.getter();
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v45 = v2;
    v21 = v3;
    v22 = v5;
    v23 = v9;
    v24 = v20;
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Cancelling #Request %@", v19, 0xCu);
    sub_100001E9C(v24, &qword_1000353F8, &qword_100027B40);
    v9 = v23;
    v5 = v22;
    v3 = v21;
    v2 = v45;
  }

  v26 = *(v9 + 8);
  v27 = v48;
  v26(v15, v48);
  dispatch thunk of BaseRequest.accessoryId.getter();
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_100001E9C(v8, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_100001E9C(v8, &qword_100035810, &qword_100027D68);
    v28 = UUID.uuidString.getter();
    v30 = v29;
    (*(v3 + 8))(v5, v2);
    sub_100007504(v28, v30);
  }

  v31 = dispatch thunk of BaseRequest.requestCreatedTime.getter();
  v32 = sub_10000C708(v31);

  if (v32)
  {
    [v32 cancel];
    v33 = v47;
    static Logger.service.getter();
    v34 = v32;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v32;
      v39 = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "Requested cancellation of task %@", v37, 0xCu);
      sub_100001E9C(v38, &qword_1000353F8, &qword_100027B40);
      v33 = v47;
    }

    else
    {

      v35 = v34;
    }
  }

  else
  {
    v40 = v46;
    static Logger.service.getter();
    v41 = v16;
    v35 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = dispatch thunk of BaseRequest.requestCreatedTime.getter();

      _os_log_impl(&_mh_execute_header, v35, v42, "No task found for request of id %llu", v43, 0xCu);
    }

    else
    {

      v35 = v41;
    }

    v33 = v40;
  }

  return (v26)(v33, v27);
}

uint64_t sub_10001DA3C(void *a1, char *a2, const void *a3)
{
  v137 = a2;
  v5 = type metadata accessor for UUID();
  v129 = *(v5 - 8);
  v130 = v5;
  __chkstk_darwin(v5);
  v126 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v7 - 8);
  v128 = &v116 - v8;
  v9 = type metadata accessor for Logger();
  v134 = *(v9 - 1);
  v135 = v9;
  v10 = __chkstk_darwin(v9);
  v125 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v127 = &v116 - v13;
  __chkstk_darwin(v12);
  v133 = &v116 - v14;
  v15 = type metadata accessor for OSSignpostID();
  v16 = *(v15 - 1);
  v17 = __chkstk_darwin(v15);
  v19 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v116 - v20;
  v132 = type metadata accessor for OSSignposter();
  v22 = *(v132 - 8);
  __chkstk_darwin(v132);
  v24 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = swift_allocObject();
  *(v136 + 16) = a3;
  v131 = a3;
  _Block_copy(a3);
  static Signpost.signposter.getter();
  static OSSignpostID.exclusive.getter();
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = swift_slowAlloc();
    v124 = v15;
    v28 = a1;
    v29 = v27;
    *v27 = 0;
    v30 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v30, "TTS enqueue synthesis task", "", v29, 2u);
    a1 = v28;
    v15 = v124;
  }

  (*(v16 + 16))(v19, v21, v15);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v31 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v16 + 8))(v21, v15);
  (*(v22 + 8))(v24, v132);
  v32 = v133;
  static Logger.service.getter();
  v33 = a1;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&aBlock = v37;
    *v36 = 136446210;
    v38 = [v33 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_100004240(v39, v41, &aBlock);

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "Received #SynthesisRequest %{public}s", v36, 0xCu);
    sub_100004474(v37);
  }

  (v134)[1](v32, v135);
  type metadata accessor for ObjectPool();
  swift_allocObject();
  v43 = ObjectPool.init()();
  v44 = [objc_allocWithZone(NSNotificationCenter) init];
  *&aBlock = v44;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for Entitlements();
  dispatch thunk of ObjectPool.inject<A>(object:)();
  v45 = type metadata accessor for InternalSettings();
  *&aBlock = static InternalSettings.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for InlineStreamingStorage();
  *&aBlock = static InlineStreamingStorage.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for TTSAssetUAFAssetProvider();
  swift_allocObject();
  *&aBlock = TTSAssetUAFAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for TrialAssetProvider();
  swift_allocObject();
  *&aBlock = TrialAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for LocalAssetProvider();
  swift_allocObject();
  *&aBlock = LocalAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for VocalizerCustomVoiceProvider();
  swift_allocObject();
  *&aBlock = VocalizerCustomVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for PreinstalledVoiceProvider();
  swift_allocObject();
  *&aBlock = PreinstalledVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for BuiltInVoiceProvider();
  swift_allocObject();
  *&aBlock = BuiltInVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for OspreyClient();
  *&aBlock = static OspreyClient.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for OspreyChainedConfigs();
  v46 = dispatch thunk of BaseRequest.clientBundleId.getter();
  sub_1000051EC(v46, v47, &aBlock);

  sub_10000AEF4(&qword_100035AC0, &qword_100027F98);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  sub_100004474(&aBlock);
  v48 = type metadata accessor for SiriSynthesisProfile();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 1;
  *(v49 + 28) = 0;
  *(v49 + 32) = 1;
  *(&v139 + 1) = v48;
  v140 = sub_1000041F8(&qword_100035AC8, type metadata accessor for SiriSynthesisProfile, &unk_100027C68);
  *&aBlock = v49;
  sub_10000AEF4(&qword_100035AD0, &qword_100027FA0);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  sub_100004474(&aBlock);
  type metadata accessor for EngineCachingService();
  *&aBlock = static EngineCachingService.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for CacheStorage();
  v50 = static CacheStorage.sharedSynthesisCache.getter();
  if (v50)
  {
    *&aBlock = v50;
    dispatch thunk of ObjectPool.inject<A>(object:)();
  }

  type metadata accessor for PreinstalledAudioStorage();
  *&aBlock = static PreinstalledAudioStorage.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v51 = sub_1000149D4(v33, v43);

  v123 = v31;
  v52 = *&v137[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate];
  v53 = type metadata accessor for DelegateHandler();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v54 = v33;
  v132 = v51;

  v55 = v44;
  v118 = v52;
  v117 = v54;
  v133 = DelegateHandler.init(notificationCenter:delegate:request:)();
  v56 = type metadata accessor for CoreAnalyticsSynthesisHandler();
  aBlock = 0u;
  v139 = 0u;
  v140 = 0;
  swift_allocObject();
  v57 = v55;
  v58 = CoreAnalyticsSynthesisHandler.init(notificationCenter:coreAnalyticsService:)();
  v122 = type metadata accessor for SiriAnalyticsHandler();
  v59 = v57;
  v60 = SiriAnalyticsHandler.__allocating_init(notificationCenter:logSynthesisEvents:)();
  v120 = v45;
  v61 = v60;
  v62 = type metadata accessor for SignpostHandler();
  swift_allocObject();
  v124 = v59;
  v63 = SignpostHandler.init(notificationCenter:)();
  v64 = swift_allocObject();
  sub_10000AEF4(&unk_100035A70, &unk_100027F60);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_100027E60;
  *(v65 + 32) = v133;
  *(v65 + 56) = v53;
  *(v65 + 64) = v58;
  *(v65 + 88) = v56;
  *(v65 + 96) = v61;
  *(v65 + 152) = v62;
  *(v65 + 120) = v122;
  *(v65 + 128) = v63;
  *(v64 + 16) = v65;

  v122 = v58;

  v121 = v61;

  v119 = v63;

  v66 = os_transaction_create();
  v67 = v127;
  if (v66)
  {
    v68 = v66;
    *(&v139 + 1) = swift_getObjectType();
    *&aBlock = v68;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v64 + 16) = v65;
    v70 = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v65 = sub_10000663C(0, *(v65 + 16) + 1, 1, v65);
      *(v64 + 16) = v65;
    }

    v72 = *(v65 + 16);
    v71 = *(v65 + 24);
    if (v72 >= v71 >> 1)
    {
      v65 = sub_10000663C((v71 > 1), v72 + 1, 1, v65);
      *(v70 + 16) = v65;
    }

    swift_unknownObjectRelease();
    *(v65 + 16) = v72 + 1;
    sub_10000674C(&aBlock, (v65 + 32 * v72 + 32));
    *(v70 + 16) = v65;
    v64 = v70;
  }

  v131 = v64;
  static InternalSettings.shared.getter();
  v73 = dispatch thunk of InternalSettings.enableDiagnostic.getter();

  v75 = v134;
  v74 = v135;
  v76 = v117;
  if (v73 != 2 && (v73 & 1) != 0)
  {
    v77 = type metadata accessor for DiagnosticService();
    swift_allocObject();
    v78 = v124;
    v79 = DiagnosticService.init(notification:)();
    *(&v139 + 1) = v77;
    *&aBlock = v79;
    v80 = v131;
    v81 = *(v131 + 16);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    *(v80 + 16) = v81;
    if ((v82 & 1) == 0)
    {
      v81 = sub_10000663C(0, *(v81 + 2) + 1, 1, v81);
      *(v131 + 16) = v81;
    }

    v84 = *(v81 + 2);
    v83 = *(v81 + 3);
    if (v84 >= v83 >> 1)
    {
      v81 = sub_10000663C((v83 > 1), v84 + 1, 1, v81);
    }

    *(v81 + 2) = v84 + 1;
    sub_10000674C(&aBlock, &v81[32 * v84 + 32]);
    *(v131 + 16) = v81;
  }

  dispatch thunk of BaseRequest.sandboxToken.getter();
  if (v85)
  {
    static Logger.service.getter();
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "Consuming sandbox token", v88, 2u);
    }

    v89 = v75[1];
    v89(v67, v74);
    String.utf8CString.getter();

    v90 = sandbox_extension_consume();

    if (v90 != -1)
    {
      v91 = 0;
      goto LABEL_29;
    }

    v92 = v125;
    static Logger.service.getter();
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Unable to consume sandbox extension", v95, 2u);
    }

    v89(v92, v74);
  }

  v90 = 0;
  v91 = 1;
LABEL_29:
  v96 = objc_allocWithZone(type metadata accessor for TaskOperation());
  v134 = v76;
  v97 = v124;
  v98 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v99 = swift_allocObject();
  v100 = v136;
  v101 = v137;
  *(v99 + 16) = v97;
  *(v99 + 24) = v101;
  *(v99 + 32) = sub_100022B24;
  *(v99 + 40) = v100;
  v102 = v131;
  *(v99 + 48) = v98;
  *(v99 + 56) = v102;
  *(v99 + 64) = v90;
  *(v99 + 72) = v91;
  v140 = sub_1000225A4;
  v141 = v99;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v139 = sub_100002B68;
  *(&v139 + 1) = &unk_100031D58;
  v103 = _Block_copy(&aBlock);
  v104 = v98;
  v135 = v97;
  v105 = v104;
  v106 = v101;

  sub_1000067AC(sub_1000225A4, v99);

  [v105 setCompletionBlock:v103];
  _Block_release(v103);

  v107 = v128;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v109 = v129;
  v108 = v130;
  if ((*(v129 + 48))(v107, 1, v130))
  {
    sub_100001E9C(v107, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
  }

  else
  {
    v110 = v126;
    (*(v109 + 16))(v126, v107, v108);
    sub_100001E9C(v107, &qword_100035810, &qword_100027D68);
    v111 = UUID.uuidString.getter();
    v113 = v112;
    (*(v109 + 8))(v110, v108);
    sub_100007504(v111, v113);
  }

  v114 = v123;
  sub_100007914(v105);

  sub_100016838(v114, "TTS enqueue synthesis task");
}

uint64_t sub_10001EBDC(void *a1, uint64_t a2, const void *a3)
{
  v55 = type metadata accessor for UUID();
  v6 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v8 - 8);
  v53 = &v48 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = swift_allocObject();
  *(v56 + 16) = a3;
  _Block_copy(a3);
  static Logger.service.getter();
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v54 = v6;
  v52 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v50 = a2;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136446210;
    v21 = [v14 description];
    v49 = v10;
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_100004240(v23, v25, aBlock);

    *(v18 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received #DurationEstimation %{public}s", v18, 0xCu);
    sub_100004474(v20);

    (*(v11 + 8))(v13, v49);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  type metadata accessor for ObjectPool();
  swift_allocObject();
  ObjectPool.init()();
  v27 = [objc_allocWithZone(NSNotificationCenter) init];
  aBlock[0] = v27;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for BuiltInVoiceProvider();
  swift_allocObject();
  aBlock[0] = BuiltInVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for EngineCachingService();
  swift_allocObject();
  aBlock[0] = EngineCachingService.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v29 = sub_10001B72C(v28);

  v30 = swift_allocObject();
  *(v30 + 16) = 0;

  v31 = static NSNotificationName.synthesisEnded.getter();

  v32 = NSNotificationCenter.addObserver<A>(event:callback:)();

  v33 = objc_allocWithZone(type metadata accessor for TaskOperation());
  v48 = v52;
  swift_unknownObjectRetain();
  v34 = v27;
  v52 = v29;
  v35 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v36 = swift_allocObject();
  v36[2] = v34;
  v36[3] = v32;
  v37 = v56;
  v36[4] = sub_1000224F0;
  v36[5] = v37;
  v36[6] = v30;
  aBlock[4] = sub_100022538;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  aBlock[3] = &unk_100031CE0;
  v38 = _Block_copy(aBlock);

  v49 = v34;
  v39 = v35;
  v50 = v32;
  swift_unknownObjectRetain();

  sub_1000067AC(sub_100022538, v36);

  [v39 setCompletionBlock:v38];
  _Block_release(v38);

  v40 = v53;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v42 = v54;
  v41 = v55;
  if ((*(v54 + 48))(v40, 1, v55))
  {
    sub_100001E9C(v40, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
  }

  else
  {
    v43 = v51;
    (*(v42 + 16))(v51, v40, v41);
    sub_100001E9C(v40, &qword_100035810, &qword_100027D68);
    v44 = UUID.uuidString.getter();
    v46 = v45;
    (*(v42 + 8))(v43, v41);
    sub_100007504(v44, v46);
  }

  sub_100007914(v39);

  swift_unknownObjectRelease();
}

uint64_t sub_10001F348(void *a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v83 = a2;
  v5 = type metadata accessor for UUID();
  v85 = *(v5 - 8);
  v86 = v5;
  __chkstk_darwin(v5);
  v81 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v7 - 8);
  v9 = &v81 - v8;
  v92 = type metadata accessor for TTSError.TTSErrorCode();
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v88 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for TTSError();
  v89 = *(v91 - 1);
  __chkstk_darwin(v91);
  v87 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v95 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v98 = &v81 - v16;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = swift_allocObject();
  *(v97 + 16) = a3;
  v93 = a3;
  _Block_copy(a3);
  static Logger.service.getter();
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v84 = v9;
  v82 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v96 = v17;
    v26 = v25;
    v27 = swift_slowAlloc();
    *&aBlock = v27;
    *v26 = 136446210;
    v28 = v13;
    v29 = v18;
    v30 = [v21 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v12;
    v32 = v31;
    v34 = v33;

    v35 = sub_100004240(v32, v34, &aBlock);

    *(v26 + 4) = v35;
    v12 = v94;
    _os_log_impl(&_mh_execute_header, v22, v23, "Received #TextToPhoneme %{public}s", v26, 0xCu);
    sub_100004474(v27);

    (*(v29 + 8))(v20, v96);
  }

  else
  {

    (*(v18 + 8))(v20, v17);
    v28 = v13;
  }

  type metadata accessor for ObjectPool();
  swift_allocObject();
  ObjectPool.init()();
  v36 = [objc_allocWithZone(NSNotificationCenter) init];
  *&aBlock = v36;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for InternalSettings();
  *&aBlock = static InternalSettings.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for TTSAssetUAFAssetProvider();
  swift_allocObject();
  *&aBlock = TTSAssetUAFAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for TrialAssetProvider();
  swift_allocObject();
  *&aBlock = TrialAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for LocalAssetProvider();
  swift_allocObject();
  *&aBlock = LocalAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for EngineCachingService();
  *&aBlock = static EngineCachingService.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  v38 = static NSNotificationName.phonemesGenerated.getter();

  v96 = NSNotificationCenter.addObserver<A>(event:callback:)();

  type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode, &protocol conformance descriptor for WorkflowNode);
  v39 = v98;
  DirectedAcyclicGraph.init()();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100027E00;
  v41 = type metadata accessor for RequestPreprocessAction();
  swift_allocObject();

  v42 = RequestPreprocessAction.init(pool:)();
  ObjectType = v41;
  v102 = &protocol witness table for RequestPreprocessAction;
  *&aBlock = v42;
  swift_allocObject();
  *(v40 + 32) = WorkflowNode.init(action:)();
  v43 = type metadata accessor for RequestParsingAction();
  swift_allocObject();

  v44 = RequestParsingAction.init(pool:)();
  ObjectType = v43;
  v102 = &protocol witness table for RequestParsingAction;
  *&aBlock = v44;
  swift_allocObject();
  *(v40 + 40) = WorkflowNode.init(action:)();
  v45 = type metadata accessor for VoiceSelectionAction();
  swift_allocObject();

  v46 = VoiceSelectionAction.init(pool:)();
  ObjectType = v45;
  v102 = &protocol witness table for VoiceSelectionAction;
  *&aBlock = v46;
  swift_allocObject();
  *(v40 + 48) = WorkflowNode.init(action:)();
  v47 = type metadata accessor for TextToPhonemeAction();
  swift_allocObject();

  v48 = TextToPhonemeAction.init(pool:)();
  ObjectType = v47;
  v102 = &protocol witness table for TextToPhonemeAction;
  *&aBlock = v48;
  swift_allocObject();
  *(v40 + 56) = WorkflowNode.init(action:)();
  DirectedAcyclicGraph.chain(nodes:)(v40);

  v49 = v28;
  (*(v28 + 16))(v95, v39, v12);
  type metadata accessor for Workflow();
  swift_allocObject();
  v50 = _swiftEmptyArrayStorage;
  v51 = Workflow.init(graph:notification:errorHandlers:)();
  v94 = v12;
  v95 = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = _swiftEmptyArrayStorage;
  v53 = os_transaction_create();
  v54 = v36;
  v55 = v96;
  if (v53)
  {
    v56 = v53;
    v57 = v37;
    ObjectType = swift_getObjectType();
    *&aBlock = v56;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v52 + 16) = _swiftEmptyArrayStorage;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = sub_10000663C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      *(v52 + 16) = v50;
    }

    v59 = v52;
    v61 = *(v50 + 2);
    v60 = *(v50 + 3);
    if (v61 >= v60 >> 1)
    {
      v50 = sub_10000663C((v60 > 1), v61 + 1, 1, v50);
      *(v59 + 16) = v50;
    }

    swift_unknownObjectRelease();
    *(v50 + 2) = v61 + 1;
    sub_10000674C(&aBlock, &v50[32 * v61 + 32]);
    v52 = v59;
    *(v59 + 16) = v50;
    v37 = v57;
  }

  v93 = v49;
  v62 = objc_allocWithZone(type metadata accessor for TaskOperation());
  v91 = v82;

  swift_unknownObjectRetain();
  v63 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v64 = swift_allocObject();
  v64[2] = v54;
  v64[3] = v55;
  v65 = v97;
  v64[4] = sub_1000224CC;
  v64[5] = v65;
  v64[6] = v37;
  v64[7] = v63;
  v64[8] = v52;
  v102 = sub_1000224DC;
  v103 = v64;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v100 = sub_100002B68;
  ObjectType = &unk_100031C40;
  v66 = _Block_copy(&aBlock);
  v90 = v103;
  v67 = v63;
  v92 = v37;

  v68 = v67;
  v69 = v54;
  swift_unknownObjectRetain();

  sub_1000067AC(sub_1000224DC, v64);

  [v68 setCompletionBlock:v66];
  _Block_release(v66);

  v70 = v84;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v72 = v85;
  v71 = v86;
  if ((*(v85 + 48))(v70, 1, v86))
  {
    sub_100001E9C(v70, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
  }

  else
  {
    v73 = v81;
    (*(v72 + 16))(v81, v70, v71);
    sub_100001E9C(v70, &qword_100035810, &qword_100027D68);
    v74 = UUID.uuidString.getter();
    v76 = v75;
    (*(v72 + 8))(v73, v71);
    sub_100007504(v74, v76);
  }

  v78 = v93;
  v77 = v94;
  v79 = v98;
  sub_100007914(v68);

  swift_unknownObjectRelease();

  v78[1](v79, v77);
}

uint64_t sub_100020120(void *a1, const char *a2, void (*a3)(id), ...)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 0xCu);
    sub_100001E9C(v14, &qword_1000353F8, &qword_100027B40);
  }

  (*(v7 + 8))(v9, v6);
  type metadata accessor for InlineStreamingStorage();
  static InlineStreamingStorage.shared.getter();
  a3(v10);
}

void sub_1000202EC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void (**a7)(const void *, void *))
{
  v46[4] = a6;
  v47 = a2;
  v48 = a4;
  v49 = a5;
  v55 = a3;
  v9 = type metadata accessor for TTSError.TTSErrorCode();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTSError();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v54 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v46[3] = v46 - v16;
  v56 = type metadata accessor for Logger();
  v17 = *(v56 - 8);
  v18 = __chkstk_darwin(v56);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v46 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  v53 = a7;
  _Block_copy(a7);
  type metadata accessor for SynthesisVoice();
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_10000AEF4(&qword_100035AA8, &unk_100027F88);
  if (swift_dynamicCast())
  {
    v46[2] = v13;

    static Logger.service.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    v26 = os_log_type_enabled(v24, v25);
    v46[1] = v12;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v46[0] = v23;
      v28 = v27;
      v29 = swift_slowAlloc();
      v50 = v11;
      isa = v29;
      *v28 = 136446466;
      v30 = Array.description.getter();
      v32 = sub_100004240(v30, v31, &isa);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v33 = v47;
      v34 = v55;
      *(v28 + 14) = sub_100004240(v47, v55, &isa);
      _os_log_impl(&_mh_execute_header, v24, v25, "Received #VoiceSubscription %{public}s for clientId: %{public}s", v28, 0x16u);
      swift_arrayDestroy();

      v23 = v46[0];

      (*(v17 + 8))(v22, v56);
      v35 = v34;
    }

    else
    {

      (*(v17 + 8))(v22, v56);
      v35 = v55;
      v33 = v47;
    }

    sub_10000F240(a1, v33, v35, v48, v49, sub_1000065D0, v23);
  }

  else
  {
    v50 = v11;
    static Logger.service.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v13;
      v40 = swift_slowAlloc();
      isa = v40;
      *v38 = 136315138;
      *(v38 + 4) = sub_100004240(0xD00000000000002DLL, 0x80000001000297D0, &isa);
      _os_log_impl(&_mh_execute_header, v36, v37, "Call to %s with invalid parameter", v38, 0xCu);
      sub_100004474(v40);
      v13 = v39;
    }

    (*(v17 + 8))(v20, v56);
    (*(v51 + 104))(v50, enum case for TTSError.TTSErrorCode.unknown(_:), v52);
    v41 = v54;
    TTSError.init(code:description:)();
    TTSError.nsError()(v42);
    v44 = v43;
    (*(v13 + 8))(v41, v12);
    v45 = _convertErrorToNSError(_:)();
    v53[2](v53, v45);
  }
}

uint64_t sub_100020A48(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTSError.TTSErrorCode();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for TTSError();
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  type metadata accessor for VoiceSelectionAction();
  static VoiceSelectionAction.defaultSetupAction()();
  dispatch thunk of VoiceSelectionAction.selectVoiceAsset(_:disableThermalFallback:disableCompactVoice:requestId:)();
  v6 = VoiceAsset.voice.getter();
  (*(a2 + 16))(a2, v6, 0);
}

uint64_t sub_100020DC4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = type metadata accessor for Logger();
  __chkstk_darwin(v5);
  type metadata accessor for VoiceSelectionAction();
  static VoiceSelectionAction.defaultSetupAction()();
  dispatch thunk of VoiceSelectionAction.selectVoiceAsset(_:disableThermalFallback:disableCompactVoice:requestId:)();
  v6 = objc_opt_self();
  VoiceAsset.path.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 *a3];

  (*(a2 + 16))(a2, v8);
}

uint64_t sub_100021078(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  sub_100009128(a1, v19 - v5, &qword_100035810, &qword_100027D68);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100001E9C(v6, &qword_100035810, &qword_100027D68);
    v9 = 0xED00006575657551;
    v10 = 0x6B7361546E69614DLL;
  }

  else
  {
    v11 = UUID.uuidString.getter();
    v9 = v12;
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  v13 = sub_100007504(v10, v9);

  v14 = *(v13 + 40);
  [v14 lock];
  v15 = *(v13 + 32);
  v16 = v15;
  [v14 unlock];
  if (!v15)
  {
    goto LABEL_8;
  }

  v17 = TaskOperation.request.getter();
  v19[1] = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
  if (!swift_dynamicCastObjCProtocolConditional())
  {

LABEL_8:
    (*(a2 + 16))(a2, 0);
  }

  (*(a2 + 16))(a2, 1);
}

uint64_t sub_10002128C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPower();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  sub_100009128(a1, &v28 - v9, &qword_100035810, &qword_100027D68);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100001E9C(v10, &qword_100035810, &qword_100027D68);
    v13 = 0xED00006575657551;
    v14 = 0x6B7361546E69614DLL;
  }

  else
  {
    v15 = UUID.uuidString.getter();
    v13 = v16;
    (*(v12 + 8))(v10, v11);
    v14 = v15;
  }

  v17 = sub_100007504(v14, v13);

  v18 = *(v17 + 40);
  [v18 lock];
  v19 = *(v17 + 32);
  v20 = v19;
  [v18 unlock];
  if (v19)
  {
    if (TaskOperation.audioHandler.getter())
    {
      AudioHandler.audioPower.getter();
      AudioPower.averagePower.getter();
      v22 = v21;
      AudioPower.peakPower.getter();
      (*(a2 + 16))(a2, v22, v23);

      return (*(v5 + 8))(v7, v4);
    }
  }

  static AudioPower.silenceAudioPower.getter();
  v26 = v25;
  static AudioPower.silenceAudioPower.getter();
  (*(a2 + 16))(a2, v26, v27);
}

void sub_100021568(uint64_t a1, uint64_t a2, Swift::Float a3, Swift::Double a4)
{
  v50 = a2;
  v48 = type metadata accessor for TTSError.TTSErrorCode();
  v7 = *(v48 - 8);
  __chkstk_darwin(v48);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTSError();
  v49 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v16 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v16 - 8);
  v18 = &v47 - v17;
  sub_100009128(a1, &v47 - v17, &qword_100035810, &qword_100027D68);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100001E9C(v18, &qword_100035810, &qword_100027D68);
    v21 = 0xED00006575657551;
    v22 = 0x6B7361546E69614DLL;
  }

  else
  {
    v23 = UUID.uuidString.getter();
    v21 = v24;
    (*(v20 + 8))(v18, v19);
    v22 = v23;
  }

  v25 = sub_100007504(v22, v21);

  v26 = *(v25 + 40);
  [v26 lock];
  v27 = *(v25 + 32);
  v28 = v27;
  [v26 unlock];
  v29 = v10;
  if (!v27)
  {
    (*(v7 + 104))(v9, enum case for TTSError.TTSErrorCode.unknown(_:), v48);
    TTSError.init(code:description:)();
    TTSError.nsError()(v37);
    v39 = v38;
    (*(v49 + 8))(v15, v10);
    v40 = _convertErrorToNSError(_:)();
    (*(v50 + 16))(v50, v40);

LABEL_11:

    return;
  }

  if (!TaskOperation.audioHandler.getter())
  {
    (*(v7 + 104))(v9, enum case for TTSError.TTSErrorCode.unknown(_:), v48);
    TTSError.init(code:description:)();
    TTSError.nsError()(v41);
    v39 = v42;
    (*(v49 + 8))(v15, v10);
    v40 = _convertErrorToNSError(_:)();
    (*(v50 + 16))(v50, v40);

    goto LABEL_11;
  }

  v30 = v28;
  AudioHandler.adjust(volume:rampTime:)(a3, a4);
  if (v31)
  {
    v51 = v31;
    swift_errorRetain();
    sub_10000AEF4(&qword_100035A90, &qword_100027F78);
    if (swift_dynamicCast())
    {

      v32 = v49;
      (*(v49 + 32))(v15, v13, v29);
      TTSError.nsError()(v33);
      v35 = v34;
      v36 = _convertErrorToNSError(_:)();
      (*(v50 + 16))(v50, v36);

      (*(v32 + 8))(v15, v29);

      return;
    }

    (*(v7 + 104))(v9, enum case for TTSError.TTSErrorCode.unknown(_:), v48);
    swift_getErrorValue();
    Error.localizedDescription.getter();
    TTSError.init(code:description:)();
    TTSError.nsError()(v43);
    v45 = v44;
    (*(v49 + 8))(v15, v29);
    v46 = _convertErrorToNSError(_:)();
    (*(v50 + 16))(v50, v46);
  }

  else
  {
    (*(v50 + 16))(v50, 0);
  }
}

void sub_100021B74(void *a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for TTSError.TTSErrorCode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTSError();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  type metadata accessor for VoiceSelectionAction();
  static VoiceSelectionAction.defaultSetupAction()();
  v11 = dispatch thunk of VoiceSelectionAction.selectVoiceAsset(_:disableThermalFallback:disableCompactVoice:requestId:)();
  v12 = sub_10001B6B8(&off_100031590);
  v25 = v11;
  v13 = VoiceAsset.voice.getter();
  v14 = dispatch thunk of SynthesisVoice.type.getter();

  LOBYTE(v13) = sub_1000134B4(v14, v12);

  if (v13)
  {
    type metadata accessor for NeuralUtils();
    VoiceAsset.path.getter();
    v15 = static NeuralUtils.isANEModelCompiled(voicePath:)();

    (*(v27 + 16))(v27, v15 & 1, 0);
  }

  else
  {
    (*(v4 + 104))(v26, enum case for TTSError.TTSErrorCode.unknown(_:), v3);
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v28 = 0xD00000000000002ELL;
    v29 = 0x8000000100029700;
    v16 = [a1 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    TTSError.init(code:description:)();
    TTSError.nsError()(v21);
    v23 = v22;
    (*(v7 + 8))(v10, v6);
    v24 = _convertErrorToNSError(_:)();
    (*(v27 + 16))(v27, 0, v24);
  }
}

uint64_t sub_100022068(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  type metadata accessor for CacheStorage();
  if (static CacheStorage.sharedSynthesisCache.getter())
  {
    dispatch thunk of CacheStorage.reset()();
    static Logger.service.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Synthesis Cache Cleared", v9, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  return (*(a1 + 16))(a1, 0);
}

unint64_t sub_100022470()
{
  result = qword_100035A98;
  if (!qword_100035A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035A98);
  }

  return result;
}

uint64_t sub_1000224F8(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_100022538()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[6];
  [v1 removeObserver:v2];
  swift_beginAccess();
  return v3(0, *(v4 + 16));
}

uint64_t sub_1000225BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AEF4(&qword_100035AD8, &qword_100027FA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002262C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100022690(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000226F4(uint64_t a1)
{
  v2 = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000227B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100022818(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10002288C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000228D4(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_100022954(uint64_t a1)
{
  sub_1000229D8(319);
  if (v1 <= 0x3F)
  {
    sub_100022A6C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000229D8(uint64_t a1)
{
  if (!qword_100035C20)
  {
    type metadata accessor for WorkflowNode();
    sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode, &protocol conformance descriptor for WorkflowNode);
    v1 = type metadata accessor for DirectedAcyclicGraph();
    if (!v2)
    {
      atomic_store(v1, &qword_100035C20);
    }
  }
}

void sub_100022A6C(uint64_t a1)
{
  if (!qword_100035C28)
  {
    type metadata accessor for TTSError.TTSErrorCode();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_100035C28);
    }
  }
}

const char *sub_100022B28()
{
  v1 = sub_10000D908(_swiftEmptyArrayStorage);
  if ((*(v0 + 8) & 1) == 0)
  {
    v2 = xpc_int64_create(*v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v1;
    sub_10000D174(v2, XPC_ACTIVITY_DELAY, isUniquelyReferenced_nonNull_native);
  }

  v4 = *(v0 + 9);
  if (v4 == 2)
  {
    if (*(v0 + 24))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v27 = xpc_BOOL_create(v4 & 1);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v1;
    sub_10000D174(v27, XPC_ACTIVITY_REPEATING, v28);
    if (*(v0 + 24))
    {
LABEL_5:
      result = *(v0 + 32);
      if (!result)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v29 = xpc_int64_create(*(v0 + 16));
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v32 = v1;
  sub_10000D174(v29, XPC_ACTIVITY_GRACE_PERIOD, v30);
  result = *(v0 + 32);
  if (result)
  {
LABEL_6:
    v6 = xpc_string_create(result);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v1;
    result = sub_10000D174(v6, XPC_ACTIVITY_PRIORITY, v7);
  }

LABEL_7:
  if ((*(v0 + 48) & 1) == 0)
  {
    v8 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
    if (!XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v9 = xpc_int64_create(*(v0 + 40));
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v1;
    result = sub_10000D174(v9, v8, v10);
  }

  v11 = *(v0 + 49);
  if (v11 != 2)
  {
    v12 = XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY;
    if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v13 = xpc_BOOL_create(v11 & 1);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v1;
    result = sub_10000D174(v13, v12, v14);
  }

  v15 = *(v0 + 50);
  if (v15 == 2)
  {
LABEL_16:
    v19 = v1[2];
    if (!v19)
    {

      v23 = 0;
      v20 = _swiftEmptyArrayStorage;
      v24 = _swiftEmptyArrayStorage;
      goto LABEL_26;
    }

    v20 = sub_100025368(v1[2], 0, &qword_100035CD8, &qword_1000280F0);
    v21 = sub_1000255EC(&v32, v20 + 4, v19, v1);
    v22 = v32;
    swift_bridgeObjectRetain_n();
    result = sub_100002278(v22);
    if (v21 == v19)
    {
      v23 = v1[2];
      if (!v23)
      {
        v24 = _swiftEmptyArrayStorage;
        goto LABEL_26;
      }

      v24 = sub_100025368(v1[2], 0, &qword_100035CD0, &qword_1000280E8);
      v25 = sub_100025498(&v32, v24 + 4, v23, v1);
      v26 = v32;

      result = sub_100002278(v26);
      if (v25 == v23)
      {
        v23 = v1[2];
LABEL_26:

        v31 = xpc_dictionary_create(v20 + 4, v24 + 4, v23);

        return v31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v16 = XPC_ACTIVITY_POST_INSTALL;
  if (XPC_ACTIVITY_POST_INSTALL)
  {
    v17 = xpc_BOOL_create(v15 & 1);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v1;
    sub_10000D174(v17, v16, v18);
    goto LABEL_16;
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Activity.checkIn()()
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_100004240(v7, v6, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "Checking in activity %{public}s", v15, 0xCu);
    sub_100004474(v16);

    v5 = v21;
  }

  (*(v9 + 8))(v11, v8);
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = v6;
  v17[4] = v5;
  v17[5] = v4;
  aBlock[4] = sub_10002531C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002371C;
  aBlock[3] = &unk_1000320C8;
  v18 = _Block_copy(aBlock);

  v19 = String.utf8CString.getter();
  xpc_activity_register((v19 + 32), XPC_ACTIVITY_CHECK_IN, v18);

  _Block_release(v18);
}

uint64_t sub_100023188(_xpc_activity_s *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(_xpc_activity_s *), uint64_t a5)
{
  v46 = a2;
  v8 = type metadata accessor for Logger();
  v47 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v45 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v45 - v16;
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    static Logger.service.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v8;
      v32 = v31;
      v48 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_100004240(v46, a3, &v48);
      _os_log_impl(&_mh_execute_header, v28, v29, "Running activity %{public}s", v30, 0xCu);
      sub_100004474(v32);
      v8 = v45;
    }

    v33 = *(v47 + 8);
    v33(v17, v8);
    a4(a1);
    static Logger.service.getter();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v8;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_100004240(v46, a3, &v48);
      _os_log_impl(&_mh_execute_header, v34, v35, "Finished activity %{public}s", v37, 0xCu);
      sub_100004474(v38);

      return (v33)(v14, v36);
    }

    else
    {

      return (v33)(v14, v8);
    }
  }

  else
  {
    v21 = state;
    if (state)
    {
      static Logger.service.getter();

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v8;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v48 = v44;
        *v43 = 134218242;
        *(v43 + 4) = v21;
        *(v43 + 12) = 2082;
        *(v43 + 14) = sub_100004240(v46, a3, &v48);
        _os_log_impl(&_mh_execute_header, v40, v41, "Unexpected activity state %ld for %{public}s", v43, 0x16u);
        sub_100004474(v44);

        return (*(v47 + 8))(v11, v42);
      }

      v26 = *(v47 + 8);
      v27 = v11;
    }

    else
    {
      static Logger.service.getter();

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v48 = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_100004240(v46, a3, &v48);
        _os_log_impl(&_mh_execute_header, v22, v23, "Checked in activity %{public}s", v24, 0xCu);
        sub_100004474(v25);
      }

      v26 = *(v47 + 8);
      v27 = v19;
    }

    return v26(v27, v8);
  }
}

uint64_t sub_10002371C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall Activity.registerOneOff()()
{
  v4 = v3;
  v32 = v2;
  v5 = v1;
  v6 = v0;
  v33 = type metadata accessor for Logger();
  v7 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0x5F66664F656E6F5FLL;
  v36 = 0xE800000000000000;
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18 = v35;
  v19 = v36;
  v35 = v6;
  v36 = v5;

  v20._countAndFlagsBits = v18;
  v20._object = v19;
  String.append(_:)(v20);

  v22 = v35;
  v21 = v36;
  v49 = 0;
  v46 = 1;
  v44 = 1;
  v35 = 0;
  LOWORD(v36) = 512;
  *(&v36 + 2) = v47;
  HIWORD(v36) = v48;
  v37 = 0;
  v38 = 1;
  *v39 = *v45;
  *&v39[3] = *&v45[3];
  v40 = XPC_ACTIVITY_PRIORITY_UTILITY;
  v41 = 0;
  v42 = 1;
  v43 = 514;
  v23 = sub_100022B28();
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = v21;
  v24[4] = v6;
  v24[5] = v5;
  v24[6] = v32;
  v24[7] = v4;
  aBlock[4] = sub_1000253E4;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002371C;
  aBlock[3] = &unk_100032118;
  v25 = _Block_copy(aBlock);

  v26 = String.utf8CString.getter();
  xpc_activity_register((v26 + 32), v23, v25);

  _Block_release(v25);
  static Logger.service.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136446210;
    v31 = sub_100004240(v22, v21, aBlock);

    *(v29 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "Registered one-off activity %{public}s", v29, 0xCu);
    sub_100004474(v30);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v7 + 8))(v9, v33);
}

uint64_t sub_100023BA0(_xpc_activity_s *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v45 = a2;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v42 - v17;
  __chkstk_darwin(v16);
  v20 = v42 - v19;
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    v44 = v12;
    static Logger.service.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = v11;
      v25 = v24;
      v26 = swift_slowAlloc();
      v42[1] = a7;
      v27 = a6;
      v28 = v26;
      v46 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_100004240(v45, a3, &v46);
      _os_log_impl(&_mh_execute_header, v22, v23, "Running activity %{public}s", v25, 0xCu);
      sub_100004474(v28);
      a6 = v27;

      v11 = v43;
    }

    v29 = *(v44 + 8);
    v29(v20, v11);
    a6(a1);
    static Logger.service.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v11;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_100004240(v45, a3, &v46);
      _os_log_impl(&_mh_execute_header, v30, v31, "Finished activity %{public}s", v33, 0xCu);
      sub_100004474(v34);

      return (v29)(v18, v32);
    }

    else
    {

      return (v29)(v18, v11);
    }
  }

  else
  {
    v36 = state;
    static Logger.service.getter();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v11;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v40 = 134218242;
      *(v40 + 4) = v36;
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_100004240(v45, a3, &v46);
      _os_log_impl(&_mh_execute_header, v37, v38, "Unexpected activity state %ld for %{public}s", v40, 0x16u);
      sub_100004474(v41);

      return (*(v12 + 8))(v15, v39);
    }

    else
    {

      return (*(v12 + 8))(v15, v11);
    }
  }
}

uint64_t sub_100023FF8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_10000B048();
  static DispatchQoS.utility.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10000B8A0();
  sub_10000AEF4(&unk_100035B40, &qword_100027980);
  sub_10000B8F8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100035D70 = result;
  return result;
}

uint64_t sub_100024200()
{
  if (qword_1000351C0 != -1)
  {
    swift_once();
  }

  return sub_100010478(0, 0);
}

uint64_t sub_1000242A0()
{
  v0 = type metadata accessor for Date();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = __chkstk_darwin(v0);
  v26 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v27 = &v26 - v3;
  v4 = sub_10000AEF4(&qword_100035190, &qword_100027960);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InternalSettings();
  static InternalSettings.shared.getter();
  v15 = dispatch thunk of InternalSettings.disableAssetCleaning.getter();

  if (v15 == 2 || (v15 & 1) == 0)
  {
    if (qword_1000351C0 != -1)
    {
      swift_once();
    }

    sub_100010B60();
  }

  else
  {
    static Logger.service.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "InternalSettings disableAssetCleaning is enabled, will skip asset cleanUp.", v18, 2u);
    }

    (*(v12 + 8))(v14, v11);
  }

  type metadata accessor for CacheStorage();
  if (static CacheStorage.sharedSynthesisCache.getter())
  {
    dispatch thunk of CacheStorage.trim(LRULimit:)();
  }

  type metadata accessor for AudioDumpAction();
  static AudioDumpAction.DiagnosticsDir.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000B240(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v20 = [objc_opt_self() defaultManager];
  v21 = v26;
  static Date.now.getter();
  v22 = v27;
  static Date.- infix(_:_:)();
  v23 = *(v28 + 8);
  v24 = v21;
  v25 = v29;
  v23(v24, v29);
  NSFileManager.removeItems(inDirectory:olderThan:)();

  v23(v22, v25);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10002477C(uint64_t a1)
{
  type metadata accessor for NeuralUtils();
  result = static NeuralUtils.isANECompilationPlatform.getter();
  if (result)
  {
    if (qword_1000351C8 != -1)
    {
      swift_once();
    }

    v3 = qword_100035D70;
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1000256EC;
    *(v5 + 24) = v4;
    v8[4] = sub_1000071A8;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10000C5E8;
    v8[3] = &unk_100032210;
    v6 = _Block_copy(v8);
    swift_unknownObjectRetain();

    dispatch_sync(v3, v6);
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100024918(_xpc_activity_s *a1)
{
  v68 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v64 - v7;
  v9 = __chkstk_darwin(v6);
  v69 = &v64 - v10;
  v11 = __chkstk_darwin(v9);
  v65 = &v64 - v12;
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v15 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  v16 = SynthesisVoice.init(language:name:)();
  dispatch thunk of SynthesisVoice.type.setter();
  v82 = _swiftEmptyArrayStorage;
  type metadata accessor for InternalSettings();
  static InternalSettings.shared.getter();
  v17 = dispatch thunk of InternalSettings.enableLocalVoices.getter();

  v73 = v8;
  if (v17 != 2 && (v17 & 1) != 0)
  {
    type metadata accessor for LocalAssetProvider();
    swift_allocObject();
    LocalAssetProvider.init()();
    v18 = v16;
    v19 = dispatch thunk of LocalAssetProvider.listVoiceAssets(_:)();

    v20 = v19;
    v8 = v73;
    sub_100013268(v20);
  }

  type metadata accessor for TTSAssetUAFAssetProvider();
  swift_allocObject();
  TTSAssetUAFAssetProvider.init()();
  v21 = v16;
  v22 = dispatch thunk of TTSAssetUAFAssetProvider.listVoiceAssets(_:)();

  sub_100013268(v22);
  type metadata accessor for TrialAssetProvider();
  swift_allocObject();
  TrialAssetProvider.init()();
  v23 = dispatch thunk of TrialAssetProvider.listVoiceAssets(_:)();

  v66 = v21;

  sub_100013268(v23);
  v24 = v82;
  if (v82 >> 62)
  {
LABEL_32:
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v69;
    if (v25)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v25 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v69;
    if (v25)
    {
LABEL_6:
      v27 = type metadata accessor for NeuralUtils();
      v28 = 0;
      v74 = 0;
      v77 = v24 & 0xFFFFFFFFFFFFFF8;
      v79 = v27;
      v80 = (v2 + 8);
      *&v29 = 136446210;
      v70 = v29;
      v71 = v5;
      v72 = v1;
      v75 = v25;
      v76 = v24;
      v67 = v14;
      while (1)
      {
        if (v28 >= *(v77 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v2 = *(v24 + 8 * v28 + 32);

        VoiceAsset.path.getter();
        v30 = static NeuralUtils.isANEModelCompiled(voicePath:)();

        if (v30)
        {
          static Logger.service.getter();

          v31 = v14;
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v81[0] = v35;
            *v34 = v70;
            v36 = VoiceAsset.path.getter();
            v38 = sub_100004240(v36, v37, v81);

            *(v34 + 4) = v38;
            v8 = v73;
            _os_log_impl(&_mh_execute_header, v32, v33, "Neural voice is already compiled: '%{public}s'", v34, 0xCu);
            sub_100004474(v35);
            v5 = v71;

            v1 = v72;
          }

          else
          {
          }

          (*v80)(v31, v1);
          v14 = v31;
          v24 = v76;
        }

        else
        {
          if (xpc_activity_should_defer(v68))
          {

            static Logger.service.getter();
            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              *v63 = 0;
              _os_log_impl(&_mh_execute_header, v61, v62, "com.apple.sirittsd.neuralCompiling is requested to be deferred.", v63, 2u);
            }

            (*v80)(v65, v1);
            xpc_activity_set_state(v68, 3);

            return;
          }

          static Logger.service.getter();

          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v81[0] = v42;
            *v41 = v70;
            v43 = VoiceAsset.path.getter();
            v45 = sub_100004240(v43, v44, v81);

            *(v41 + 4) = v45;
            v5 = v71;
            _os_log_impl(&_mh_execute_header, v39, v40, "Triggered compiling neural voice '%{public}s'", v41, 0xCu);
            sub_100004474(v42);
            v1 = v72;

            v8 = v73;
          }

          v78 = *v80;
          v78(v26, v1);
          v46 = v74;
          VoiceAsset.path.getter();
          static NeuralUtils.compileANEModel(voicePath:)();
          v24 = v76;
          if (v46)
          {

            static Logger.service.getter();

            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              v81[0] = v50;
              *v49 = v70;
              v51 = VoiceAsset.path.getter();
              v53 = sub_100004240(v51, v52, v81);

              *(v49 + 4) = v53;
              v5 = v71;
              _os_log_impl(&_mh_execute_header, v47, v48, "Error during compiling neural voice: %{public}s", v49, 0xCu);
              sub_100004474(v50);
              v1 = v72;

              v8 = v73;
            }

            v78(v5, v1);
          }

          else
          {

            notify_post("com.apple.voiceservices.notification.voice-update");
          }

          v74 = 0;
          static Logger.service.getter();

          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v81[0] = v57;
            *v56 = v70;
            v58 = VoiceAsset.path.getter();
            v60 = sub_100004240(v58, v59, v81);

            *(v56 + 4) = v60;
            v5 = v71;
            _os_log_impl(&_mh_execute_header, v54, v55, "Neural voice finished compiling '%{public}s'", v56, 0xCu);
            sub_100004474(v57);
            v1 = v72;

            v8 = v73;
          }

          else
          {
          }

          v78(v8, v1);
          v26 = v69;
          v14 = v67;
        }

        if (v75 == ++v28)
        {

          return;
        }
      }
    }
  }
}

uint64_t sub_100025284()
{
  if (qword_1000351C0 != -1)
  {
    swift_once();
  }

  dispatch thunk of TrialAssetProvider.downloadNamespace()();
  sub_100010478(0, 0);
  type metadata accessor for BNNSModelCache();
  static BNNSModelCache.sharedInstance.getter();
  dispatch thunk of BNNSModelCache.cleanStaleModels()();
}

void *sub_100025368(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000AEF4(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

__n128 sub_1000253F4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100025400(uint64_t a1, int a2)
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

uint64_t sub_100025448(uint64_t result, int a2, int a3)
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

void *sub_100025498(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1000255EC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1000256FC()
{
  v0 = os_log_create("com.apple.siri.tts", "sandbox");
  bzero(v3, 0x400uLL);
  if ((!_set_user_dir_suffix() || !confstr(65537, v3, 0x400uLL)) && os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = *__error();
    v2[0] = 67109120;
    v2[1] = v1;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "failed to initialize temporary directory: %{darwin.errno}d", v2, 8u);
  }
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}