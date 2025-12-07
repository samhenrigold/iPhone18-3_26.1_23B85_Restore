id sub_100004778(uint64_t a1)
{
  if (qword_1006ACF00 != -1)
  {
    sub_100007178();
  }

  v2 = qword_1006ACEF8;

  return v2;
}

void sub_100004AA4(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if ([v9 isEntitledForCapability:v10])
  {
    v11[2](v11);
  }

  else
  {
    if (a5)
    {
      v13 = [NSString stringWithFormat:@"Entitlement check: In %s, client %@ lacks capability '%@'", a5, v9, v10];
      v14 = sub_100004778(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_10047C268(v13, v14);
      }
    }

    if (v12)
    {
      v12[2](v12);
    }
  }
}

uint64_t sub_100004CEC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100004D30()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CSDProcessObserver_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = OBJC_IVAR___CSDProcessObserver_processInfoByBundleIdentifier;
    swift_beginAccess();
    v9 = *(v0 + v8);
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    v13 = (v10 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v12; result = )
    {
      v15 = i;
LABEL_10:
      v16 = (*(v9 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
      v17 = v16[1];
      v12 &= v12 - 1;
      v19[0] = *v16;
      v19[1] = v17;

      sub_100004F60(v19, v0);
    }

    while (1)
    {
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
      }

      v12 = *(v9 + 64 + 8 * v15);
      ++i;
      if (v12)
      {
        i = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100004F60(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = OBJC_IVAR___CSDProcessObserver_processInfoByBundleIdentifier;
  swift_beginAccess();
  v7 = sub_100005E74(v4, v5, *(a2 + v6));
  swift_endAccess();
  v34 = v5;
  v35 = v4;
  v8 = sub_1000061C4(v4, v5);
  if (v7)
  {
    sub_100007818(v7, v8);
    if (v9)
    {
    }
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a2 + v6);
  sub_100007B5C(v8, v4, v5, isUniquelyReferenced_nonNull_native, v11, v12, v13, v14, v33, v2);
  *(a2 + v6) = v38;
  swift_endAccess();
  v15 = 1 << *(v8 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v8[8];
  v18 = a2 + OBJC_IVAR___CSDProcessObserver_processStateChangedWithBundleID;
  v36 = a2 + OBJC_IVAR___CSDProcessObserver_processStateChanged;
  v19 = (v15 + 63) >> 6;

  v21 = 0;
  v37 = v18;
  while (v17)
  {
    v22 = v7;
LABEL_14:
    v24 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = v24 | (v21 << 6);
    v26 = *(v8[6] + 4 * v25);
    v27 = *(v8[7] + 8 * v25);
    if (v22 && v22[2])
    {
      result = sub_100007558(v26);
      if ((v28 & 1) == 0)
      {
        v18 = v37;
        goto LABEL_20;
      }

      v18 = v37;
      if (v27 == *(v22[7] + 8 * result))
      {
        continue;
      }
    }

LABEL_20:
    v29 = *v18;
    if (*v18)
    {
      v30 = *(v18 + 8);

      v29(v35, v34, v26, v27);
      result = sub_1000051F8(v29, v30);
      v18 = v37;
    }

    v31 = *v36;
    if (*v36)
    {
      v32 = *(v36 + 8);

      v31(v26, v27);
      result = sub_1000051F8(v31, v32);
      v18 = v37;
    }
  }

  v22 = v7;
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
    }

    v17 = v8[v23 + 8];
    ++v21;
    if (v17)
    {
      v21 = v23;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000051F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100005208(uint64_t a1, uint64_t a2)
{
  sub_10000D5F8();
  String.hash(into:)();
  Hasher._finalize()();
  v2 = sub_10000F2EC();

  return sub_100006110(v2, v3, v4);
}

uint64_t sub_100005274()
{

  return swift_slowAlloc();
}

uint64_t sub_100005298(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1000052B0()
{

  return swift_dynamicCast();
}

uint64_t sub_100005384()
{

  return type metadata accessor for GeneratorDescriptor();
}

uint64_t sub_1000053E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005438(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

char *sub_1000054C8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v15[1] = *&result[OBJC_IVAR___CSDProcessObserver_queue];
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    aBlock[4] = sub_100004F3C;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_100625B20;
    v13 = _Block_copy(aBlock);
    v14 = v11;
    static DispatchQoS.unspecified.getter();
    v15[2] = _swiftEmptyArrayStorage;
    sub_1000053E8(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_10000579C()
{
  v1 = sub_100008184();

  return _swift_deallocObject(v1);
}

unint64_t sub_1000057D0()
{
  result = qword_1006A2CD0;
  if (!qword_1006A2CD0)
  {
    sub_10026DCB4(&unk_1006A2960, &unk_10057D6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2CD0);
  }

  return result;
}

uint64_t sub_100005834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005854(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005884(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005894(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000058F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005984(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000059F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005D94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100005208(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100018F28(v3);
}

uint64_t sub_100005E84()
{

  return swift_slowAlloc();
}

uint64_t sub_100005E9C()
{

  return swift_task_alloc();
}

uint64_t sub_100005F40(uint64_t a1)
{
}

uint64_t sub_100005F64()
{
}

uint64_t sub_100005F94()
{
}

void sub_100005FAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_100005FCC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100005FFC()
{
  result = v0[78];
  v2 = v0[73];
  v0[85] = *(v2 + 16);
  v0[86] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return result;
}

uint64_t sub_100006064()
{
}

void sub_10000607C()
{

  sub_100021E24();
}

id sub_1000060B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 2264);

  return [a1 v9];
}

unint64_t sub_100006110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *sub_1000061C4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR___CSDProcessObserver_queue];
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v14 = _swiftEmptyDictionarySingleton;
    v12 = sub_100006328(a1, a2);
    sub_10000718C(v12, &v14, v2);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100006328(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___CSDProcessObserver_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (sub_100006578(a1, a2, *(v2 + OBJC_IVAR___CSDProcessObserver_applicationMonitor)))
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v12;
      AnyHashable.init<A>(_:)();
      sub_100006600();

      sub_100006780(v18);
      if (v20)
      {
        sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v13 = v16;
          sub_10026D814(&qword_1006A4780, &qword_10057F800);
          v14 = swift_allocObject();
          *(v14 + 1) = xmmword_10057D690;
          *(v14 + 8) = [v13 intValue];

          return sub_100006C6C(v14);
        }
      }

      else
      {
        sub_100009A04(v19, &unk_1006A2D10, &unk_10057D940);
      }
    }

    v14 = &off_100620290;
    return sub_100006C6C(v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_100006578(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 applicationInfoForApplication:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

double sub_100006600()
{
  sub_1000068D4();
  if (v2 && (v3 = v1, v4 = sub_1000067D4(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 32 * v4;

    sub_100006A94(v6, v0);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

BOOL sub_1000066DC()
{

  return os_log_type_enabled(v0, v1);
}

unint64_t sub_1000067D4()
{
  v1 = sub_100016F64();
  v2 = AnyHashable._rawHashValue(seed:)(v1);

  return sub_1000069D0(v0, v2);
}

uint64_t sub_10000681C()
{

  return swift_slowAlloc();
}

int8x16_t sub_100006850(int8x16_t *a1)
{
  v1[2].i64[0] = a1;
  result = vextq_s8(v1[1], v1[1], 8uLL);
  a1[1] = result;
  return result;
}

uint64_t sub_100006868()
{
}

BOOL sub_10000689C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000068E0(uint64_t a1)
{

  return swift_allocError();
}

BOOL sub_100006928()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

unint64_t sub_100006958(uint64_t a1)
{

  return sub_10039C0F4(a1);
}

unint64_t sub_1000069D0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100006724(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100006780(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100006A94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006AF0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100006B68()
{

  return sub_10002741C(v0, v1, (v2 - 104));
}

void sub_100006B9C(uint64_t a1)
{

  sub_10039A2E0(a1, v1, 1);
}

BOOL sub_100006BE4()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_100006C18(uint64_t a1)
{

  return sub_100009A04(a1, v2, v1);
}

uint64_t sub_100006C3C()
{

  return swift_arrayDestroy();
}

uint64_t sub_100006C6C(uint64_t a1)
{
  v2 = Set.init(minimumCapacity:)();
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_100006D00(v7, *(a1 + v4));
      v4 += 4;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

BOOL sub_100006D00(_DWORD *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  static Hasher._hash(seed:bytes:count:)();
  sub_100035D14();
  while (1)
  {
    v11 = v7 & v9;
    v12 = (v10 << (v7 & v9)) & *(v8 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    if (*(*(v6 + 48) + 4 * v11) == a2)
    {
      goto LABEL_6;
    }

    v7 = v11 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_10039C424();
  sub_100006F40(a2, v11, v13);
  *v3 = v15;
LABEL_6:
  result = v12 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_100006DC4()
{

  return swift_slowAlloc();
}

uint64_t sub_100006E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_10002741C(v16, v17, va);
}

uint64_t sub_100006E34(uint64_t a1)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_100006EA8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id sub_100006ED0(void *a1)
{
  v4 = *(v2 + 232);

  return [a1 v4];
}

uint64_t sub_100006EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

unint64_t sub_100006F40(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1003970F8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_100399758(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = static Hasher._hash(seed:bytes:count:)();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 4 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_100398C58();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 4 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_100007048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2 == 4)
    {
      v6 = sub_100004778(Strong);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_10057D690;
      v8 = String.init<A>(reflecting:)();
      v10 = v9;
      *(v7 + 56) = &type metadata for String;
      *(v7 + 64) = sub_100009D88();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      v11 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("MobilePhone process state changed to running state (%@); checking to see if we need to post notifications", 105, 2, &_mh_execute_header, v6, v11, v7, 4);

      sub_100008EB4();
    }
  }
}

uint64_t sub_10000718C(uint64_t a1, void *a2, void *a3)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v27 = v4;
  v28 = a2;
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v11 = *(*(a1 + 48) + ((v9 << 8) | (4 * __clz(__rbit64(v7)))));
      v31 = sub_100007388(v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *a2;
      v32 = *a2;
      v14 = sub_100007558(v11);
      v16 = *(v13 + 16);
      v17 = (v15 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        break;
      }

      v19 = v14;
      v20 = v15;
      sub_10026D814(&qword_1006A3A28, &qword_10057E918);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18))
      {
        v21 = sub_100007558(v11);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v19 = v21;
      }

      if (v20)
      {
        *(v32[7] + 8 * v19) = v31;
      }

      else
      {
        v32[(v19 >> 6) + 8] |= 1 << v19;
        *(v32[6] + 4 * v19) = v11;
        *(v32[7] + 8 * v19) = v31;
        v23 = v32[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_21;
        }

        v32[2] = v25;
      }

      v7 &= v7 - 1;
      v4 = v27;
      a2 = v28;
      *v28 = v32;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100007388(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CSDProcessObserver_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (a1 == -1)
    {
      return 0;
    }

    else
    {
      return static ProcessState.processState(applicationState:)([*(v1 + OBJC_IVAR___CSDProcessObserver_applicationMonitor) mostElevatedApplicationStateForPID:a1]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ProcessState.processState(applicationState:)(int a1)
{
  v1 = a1 - 1;
  result = 0;
  switch(v1)
  {
    case 0:
      result = 1;
      break;
    case 1:
      result = 2;
      break;
    case 2:
    case 4:
    case 5:
    case 6:
      return result;
    case 3:
      result = 3;
      break;
    case 7:
      result = 4;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_10000759C(uint64_t a1, uint64_t a2)
{
  sub_100049FB4();
  while (((v7 << v4) & *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + 4 * v4) != v3)
  {
    v4 = (v4 + 1) & v6;
  }

  return sub_10003EB44(v4);
}

uint64_t sub_100007608()
{

  return swift_slowAlloc();
}

uint64_t sub_100007630()
{

  return swift_slowAlloc();
}

uint64_t sub_100007674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10026D814(a3, a4);
}

uint64_t sub_1000076B4(uint64_t a1)
{

  return swift_allocObject();
}

BOOL sub_1000076CC()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

id sub_1000076E4()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_100007738()
{
}

uint64_t sub_10000777C()
{

  return swift_slowAlloc();
}

uint64_t sub_100007794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t sub_1000077B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *(v26 + v27) = a24;

  return swift_endAccess();
}

id sub_1000077CC()
{
  v3 = *(v1 + 3512);

  return [v0 v3];
}

uint64_t sub_1000077E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_100007818(void *a1, void *a2)
{
  if (a1 != a2 && a1[2] == a2[2])
  {
    v4 = 0;
    sub_100007990();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      v13 = v10 | (v4 << 6);
      v14 = *(a1[7] + 8 * v13);
      v15 = sub_100007558(*(a1[6] + 4 * v13));
      if ((v16 & 1) == 0 || *(a2[7] + 8 * v15) != v14)
      {
        return;
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
        return;
      }

      v12 = a1[v4 + 8];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100007940(uint64_t a1)
{

  return AsyncStream.Continuation.yield(_:)();
}

uint64_t sub_100007974()
{

  return swift_slowAlloc();
}

uint64_t sub_1000079DC()
{
}

uint64_t sub_1000079F8()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t sub_100007A64(uint64_t a1)
{

  return String.init<A>(reflecting:)();
}

uint64_t sub_100007A7C()
{

  return sub_10002741C(v0, v1, (v2 - 112));
}

uint64_t sub_100007A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{
  sub_10000D698();
  sub_100015AD8(v13, v14, v15);
  sub_100008598();
  if (v16)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_10000C464();
  v17 = sub_100007D68();
  if (v17)
  {
    v21 = sub_100008988();
    sub_100005208(v21, v10);
    sub_100008BC4();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v12)
  {
    sub_100007794(v17, v18, v19, v20, *v11);
    sub_100006048();
  }

  else
  {
    v25 = sub_100018FA4();
    a10(v25);
    sub_100006048();
  }
}

uint64_t sub_100007C08()
{

  return swift_slowAlloc();
}

uint64_t sub_100007C38()
{

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

uint64_t sub_100007C5C(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t sub_100007C9C()
{

  return swift_allocObject();
}

uint64_t sub_100007CBC()
{
}

uint64_t sub_100007CD8()
{

  return type metadata accessor for DispatchQoS();
}

uint64_t sub_100007D48(uint64_t a1)
{

  return sub_100015468(v1 + v2, 1, a1);
}

BOOL sub_100007D68()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t sub_100007D88()
{

  return swift_beginAccess();
}

uint64_t sub_100007DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  return sub_100285FC4(a1, va, v21, v22);
}

uint64_t sub_100007E54(uint64_t a1)
{

  return swift_once();
}

void sub_100007EE4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100007F10(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100007F30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100007F98(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_100008000()
{
  v1 = 32;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100008080(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000080B0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000080FC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100008134(uint64_t a1)
{

  return swift_once();
}

id sub_100008154(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_100008194(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000081B4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100008228(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100008248(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_10000829C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return sub_1000051F8(v5, v6);
}

void sub_100008384()
{
  v1 = 32;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1000083A0()
{

  return type metadata accessor for UUID();
}

uint64_t sub_1000083DC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000083FC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100008478(uint64_t a1)
{

  return swift_once();
}

void *sub_100008510()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100008560(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_1000085AC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000860C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000864C(uint64_t a1)
{

  return swift_once();
}

void sub_10000866C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v14 = v11;
  v15 = v12;

  String.append(_:)(*&v14);
}

uint64_t sub_100008688(uint64_t a1)
{

  return swift_once();
}

id sub_1000086C0(uint64_t a1)
{
  v5 = *(v1 + 3040);

  return [v2 v5];
}

uint64_t sub_1000086E4(uint64_t a1)
{

  return swift_once();
}

void sub_100008704()
{
  v1 = 32;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100008720(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100008758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100022DDC(v9);
}

uint64_t sub_1000087D0()
{
}

void sub_100008804(uint64_t a1)
{

  sub_10039A2E0(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_100008840(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000088C0(uint64_t a1, ...)
{

  return String.hash(into:)();
}

void *sub_10000890C(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return AnyHashable.init<A>(_:)();
}

void sub_100008968(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000089E4(uint64_t a1)
{
  v3 = *(v1 - 120);

  return sub_100015468(a1, 1, v3);
}

void sub_100008A54()
{

  sub_10029E2DC();
}

void sub_100008A90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100008AE8()
{
}

uint64_t sub_100008B38()
{

  return swift_allocObject();
}

uint64_t sub_100008B50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100008BB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + a2;
  *v3 = result;
  *(v3 + 8) = 0;
  return result;
}

id sub_100008C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1003BEBAC(a1, a2, a3, a4, a5, 0, 0xF000000000000000);
}

BOOL sub_100008C34(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

_OWORD *sub_100008C78@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4, __int128 a5, uint64_t a6)
{
  *(v9 + v6) |= v7;
  v11 = v8[6] + 40 * a1;
  *v11 = a4;
  *(v11 + 16) = a5;
  *(v11 + 32) = a6;
  result = sub_10003EBF0((v10 - 120), (v8[7] + 32 * a1));
  ++v8[2];
  return result;
}

uint64_t sub_100008CF0(uint64_t a1, uint64_t a2)
{
  sub_10000AF9C(a1, a2);
}

uint64_t sub_100008D34(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100008D4C()
{

  return swift_slowAlloc();
}

uint64_t sub_100008D74()
{

  return sub_10001BDB8(v1 - 128, v0);
}

char *sub_100008E14(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1000085FC(a3, result);
  }

  return result;
}

uint64_t sub_100008E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_100008EB4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_10000992C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006272D0;
  v16 = _Block_copy(aBlock);
  v17 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
}

uint64_t sub_1000090FC()
{

  return _swift_deallocObject(v0);
}

void sub_100009488(uint64_t a1)
{
  v2 = OBJC_IVAR___CSDFaceTimeInstallationNotifier_storage;
  swift_beginAccess();
  sub_100009934(a1 + v2, v24);
  if (v25)
  {
    sub_100009AB0(v24, v21);
    sub_1000099A4(v24, &qword_1006A5868, &unk_1005805F0);
    v3 = v22;
    v4 = v23;
    sub_100009B14(v21, v22);
    (*(v4 + 16))(v20, &type metadata for Bool, 0xD00000000000001ELL, 0x800000010056B530, &type metadata for Bool, v3, v4);
    v5 = LOBYTE(v20[0]);
    sub_100009B7C(v21);
    if (v5 != 2 && (v5 & 1) != 0)
    {
      if (qword_1006A0AF8 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000AF9C(v6, qword_1006BA568);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_27;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Not posting notification since we determined that we have already shown it";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

LABEL_27:

      return;
    }
  }

  else
  {
    sub_1000099A4(v24, &qword_1006A5868, &unk_1005805F0);
  }

  if (sub_100009BC8())
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA568);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_27;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Skipping to setup xpc activity since FaceTime is blocked on this device";
    goto LABEL_26;
  }

  if ((sub_100324E7C() & 1) == 0)
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA568);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_27;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Not posting notification since video conferencing is not allowed via profile restrictions";
    goto LABEL_26;
  }

  if (sub_100009C08() != 3)
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000AF9C(v15, qword_1006BA568);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_27;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Not posting the notifcation since FaceTime app restriction is not uninstalled";
    goto LABEL_26;
  }

  sub_100009934(a1 + v2, v24);
  if (v25)
  {
    sub_100009AB0(v24, v21);
    sub_1000099A4(v24, &qword_1006A5868, &unk_1005805F0);
    v12 = v22;
    v13 = v23;
    sub_100009B14(v21, v22);
    v20[3] = &type metadata for Bool;
    LOBYTE(v20[0]) = 1;
    (*(v13 + 8))(v20, 0xD00000000000001ELL, 0x800000010056B530, v12, v13);
    sub_1000099A4(v20, &unk_1006A2D10, &unk_10057D940);
    sub_100009B7C(v21);
  }

  else
  {
    sub_1000099A4(v24, &qword_1006A5868, &unk_1005805F0);
  }

  v16 = a1 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_postFaceTimeUninstallAlertClosure;
  v17 = *(a1 + OBJC_IVAR___CSDFaceTimeInstallationNotifier_postFaceTimeUninstallAlertClosure);
  if (v17)
  {
    v18 = *(v16 + 8);

    v17(v19);
    sub_1000051F8(v17, v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100009934(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5868, &unk_1005805F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000099A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10026D814(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009A04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10026D814(a2, a3);
  sub_100008070();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100009A5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10026D814(a2, a3);
  sub_1000080D0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100009AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100009B14(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100009B7C(void *a1)
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

uint64_t sub_100009BC8()
{
  v1 = OBJC_IVAR___CSDFaceTimeInstallationNotifier____lazy_storage___facetimeRestrictedOnDevice;
  v2 = *(v0 + OBJC_IVAR___CSDFaceTimeInstallationNotifier____lazy_storage___facetimeRestrictedOnDevice);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_100324D04();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id sub_100009C08()
{
  v1 = (v0 + OBJC_IVAR___CSDFaceTimeInstallationNotifier____lazy_storage___idsRegistrationRestriction);
  if (*(v0 + OBJC_IVAR___CSDFaceTimeInstallationNotifier____lazy_storage___idsRegistrationRestriction + 8) != 1)
  {
    return *v1;
  }

  if (qword_1006A0820 != -1)
  {
    swift_once();
  }

  result = [qword_1006A41D0 registrationRestrictionReason];
  *v1 = result;
  v1[8] = 0;
  return result;
}

unint64_t ProcessState.debugDescription.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x616E696D7265742ELL;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      JUMPOUT(0x100009D74);
  }

  return result;
}

unint64_t sub_100009D88()
{
  result = qword_1006A30B0;
  if (!qword_1006A30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A30B0);
  }

  return result;
}

void sub_100009DDC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100009E14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_100009E34(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t sub_100009F00(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100009F24(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100009F3C(uint64_t a1)
{

  return swift_once();
}

__n128 sub_100009F7C()
{
  *(v1 + 16) = v2;
  v5 = v1 + v3 * v0;
  result = *(v4 - 192);
  v7 = *(v4 - 176);
  *(v5 + 57) = *(v4 - 167);
  *(v5 + 32) = result;
  *(v5 + 48) = v7;
  return result;
}

uint64_t sub_100009FA4@<X0>(char a1@<W8>)
{

  return sub_100010000(v1, v2, a1 & 1);
}

id sub_100009FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v8 + 2264);

  return [v6 v10];
}

BOOL sub_10000A004(Swift::String a1)
{

  return String.hasPrefix(_:)(a1);
}

void sub_10000A0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  sub_100378C74(va, va1);
}

uint64_t sub_10000A0F0(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

NSSet sub_10000A12C()
{

  return Set._bridgeToObjectiveC()();
}

uint64_t sub_10000A19C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000A1D8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000A248(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000A2B0()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

void sub_10000A314()
{
  v3 = v0;
  v4 = v1;

  String.append(_:)(*&v3);
}

uint64_t sub_10000A354(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10000A3A0(uint64_t a1)
{
  *(v2 - 216) = v1;

  sub_100378C74(v2 - 192, v2 - 128);
}

void *sub_10000A3C4(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{

  return AnyHashable.init<A>(_:)();
}

void sub_10000A468(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10000A4A0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_10002741C(0xD00000000000002FLL, (v2 - 32) | 0x8000000000000000, va);
}

uint64_t sub_10000A4C4()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_10000A4DC()
{

  return URL.appendingPathComponent(_:)();
}

void *sub_10000A508()
{

  return AnyHashable.init<A>(_:)();
}

void sub_10000A62C()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  String.append(_:)(*&v2);
}

BOOL sub_10000A648(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000A6A8()
{

  return Handle.type.getter();
}

uint64_t sub_10000A6C8()
{

  return swift_willThrow();
}

BOOL sub_10000A6F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

id sub_10000A724(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = *(v4 - 136);

  return v2;
}

id sub_10000A780(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

unint64_t sub_10000A82C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

unint64_t sub_10000A90C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_10000ABF4(a3);

  return sub_100024D54(a2, v5, a3);
}

uint64_t sub_10000A990(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return os_log(_:dso:log:type:_:)(a1, a2, 2, a4, v4, v5, v6);
}

uint64_t sub_10000A9B8()
{
}

uint64_t sub_10000A9D4(uint64_t a1)
{

  return swift_allocObject();
}

void sub_10000A9EC()
{
  v1 = 32;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_10000AA08(uint64_t a1)
{

  return swift_once();
}

void *sub_10000AA28()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10000AA44()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10000AA88()
{
  sub_100009B7C(v0);
}

uint64_t sub_10000AABC()
{
}

uint64_t sub_10000AAD8(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;
  *(v5 + 4) = v6 & 1;
  *(v5 + 8) = 2080;

  return sub_10002741C(v4, v3, va);
}

uint64_t sub_10000AB08(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  return result;
}

uint64_t sub_10000AB54(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000AB74()
{
}

uint64_t sub_10000ABAC(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

unint64_t sub_10000AC00()
{
  result = qword_1006A2CC0;
  if (!qword_1006A2CC0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2CC0);
  }

  return result;
}

uint64_t sub_10000AC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v41 - v10;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v4 valueForKey:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10003EBF0(v41, v42);
    sub_100006A94(v42, v41);
    if (swift_dynamicCast())
    {
      sub_100009B7C(v42);
      sub_100009F98();
      sub_10000AF74(v14, v15, v16, v17);
      (*(*(a2 - 8) + 32))(a3, v11, a2);
    }

    else
    {
      sub_100009F98();
      sub_10000AF74(v23, v24, v25, v26);
      (*(v9 + 8))(v11, v8);
      if (qword_1006A0AA0 != -1)
      {
        sub_100008134(&qword_1006A0AA0);
      }

      v27 = qword_1006BA380;
      v28 = static os_log_type_t.error.getter();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10057D6A0;
      sub_100006A94(v42, v41);
      v30 = String.init<A>(reflecting:)();
      v32 = v31;
      *(v29 + 56) = &type metadata for String;
      v33 = sub_100009D88();
      *(v29 + 64) = v33;
      *(v29 + 32) = v30;
      *(v29 + 40) = v32;
      *&v41[0] = a1;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v35 = sub_10031E8A0(v41, MetatypeMetadata);
      *(v29 + 96) = &type metadata for String;
      *(v29 + 104) = v33;
      *(v29 + 72) = v35;
      *(v29 + 80) = v36;
      os_log(_:dso:log:type:_:)("Cannot cast value: %@ to type: %@", 33, 2, &_mh_execute_header, v27, v28, v29);

      sub_100009B7C(v42);
    }

    sub_100009F98();
    return sub_10000AF74(v37, v38, v39, v40);
  }

  else
  {
    sub_100009F98();

    return sub_10000AF74(v18, v19, v20, v21);
  }
}

uint64_t sub_10000AF9C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10000B23C()
{
  v1 = *(v0 + OBJC_IVAR___CSDCallController_dataSources);
  v2 = sub_10000B6F4(v1);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v41[0] = _swiftEmptyArrayStorage;
    sub_10000B830();
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v4 = 0;
    v3 = v41[0];
    do
    {
      v5 = v3;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 calls];
      sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = v5;
      v41[0] = v5;
      v10 = v5[2];
      v11 = v10 + 1;
      if (v10 >= v5[3] >> 1)
      {
        sub_10000B830();
        v11 = v10 + 1;
        v3 = v41[0];
      }

      ++v4;
      v3[2] = v11;
      v3[v10 + 4] = v9;
    }

    while (v2 != v4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage[2];
  }

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v38 = v3;
  v39 = v3 + 4;
  v37 = v11;
  while (1)
  {
    v14 = v13 >> 62;
    if (v12 == v11)
    {
      break;
    }

    if (v12 >= v3[2])
    {
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
      goto LABEL_55;
    }

    v15 = v39[v12];
    if (v15 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_49;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v14)
      {
LABEL_25:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_26:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v13 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_27;
    }

    if (v14)
    {
      goto LABEL_25;
    }

    v19 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_26;
    }

LABEL_27:
    ++v12;
    v20 = *(v19 + 16);
    v21 = (*(v19 + 24) >> 1) - v20;
    v22 = v19 + 8 * v20;
    v40 = v19;
    if (v15 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (!v24)
      {
        goto LABEL_41;
      }

      v25 = v24;
      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (v21 < v26)
      {
        goto LABEL_53;
      }

      if (v25 < 1)
      {
        goto LABEL_54;
      }

      v35 = v26;
      v36 = v12;
      sub_100024C98();
      for (i = 0; i != v25; ++i)
      {
        sub_10026D814(&unk_1006A7C20, &qword_1005834D0);
        v28 = sub_100024CFC(v41, i, v15);
        v30 = *v29;
        v28(v41, 0);
        *(v22 + 32 + 8 * i) = v30;
      }

      v12 = v36;
      v23 = v35;
LABEL_37:

      v11 = v37;
      v3 = v38;
      if (v23 < v16)
      {
        goto LABEL_50;
      }

      if (v23 > 0)
      {
        v31 = *(v40 + 16);
        v32 = __OFADD__(v31, v23);
        v33 = v31 + v23;
        if (v32)
        {
          goto LABEL_51;
        }

        *(v40 + 16) = v33;
      }
    }

    else
    {
      v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        if (v21 < v23)
        {
          goto LABEL_52;
        }

        sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
        swift_arrayInitWithCopy();
        goto LABEL_37;
      }

LABEL_41:

      v11 = v37;
      v3 = v38;
      if (v16 > 0)
      {
        goto LABEL_50;
      }
    }
  }

  if (!v14)
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
    v34 = v13;
    goto LABEL_47;
  }

LABEL_55:
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);

  v34 = _bridgeCocoaArray<A>(_:)();

LABEL_47:

  sub_100006AF0(0, &qword_1006A5988, TUCallContainer_ptr);
  sub_10000BCEC(v34);
}

uint64_t sub_10000B6D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_10000B6FC()
{
  v1 = [*(v0 + 16) callContainer];

  return v1;
}

void sub_10000B734()
{
  sub_10003D4BC();
  sub_10000F3AC();
  if (v5)
  {
    sub_10000A27C();
    if (v7 != v8)
    {
      sub_10000E7FC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10026D814(v3, v4);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v11 != v0 || &v0[v9 + 4] <= v11 + 4)
    {
      v14 = sub_1000060A8();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = sub_100008B14();
    sub_10026D814(v17, v18);
    sub_1000060A8();
    swift_arrayInitWithCopy();
  }

  sub_100035CE8();
}

void sub_10000B87C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_10000B91C()
{
  v3 = *(v0 + 1160);

  return [v1 v3];
}

void sub_10000B940(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_10000B960()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_10000B994(uint64_t a1)
{
  *(v2 - 96) = v1;

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t sub_10000BA08(uint64_t a1)
{

  return swift_beginAccess();
}

BOOL sub_10000BA5C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000BA88()
{
  v4 = *(v2 + 200);
  v3 = *(v2 + 208);
  sub_10000AF74(v4, v1, 1, v0);

  return sub_1003A6148(v4, v3);
}

void sub_10000BAC8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

BOOL sub_10000BB44(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000BB5C()
{

  return sub_100022DDC(v0);
}

uint64_t sub_10000BBA4()
{
  sub_100009B7C((v0 + 16));
}

uint64_t sub_10000BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t sub_10000BC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  return swift_dynamicCast();
}

uint64_t sub_10000BC34(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

id sub_10000BCEC(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithCalls:isa];

  return v3;
}

uint64_t sub_10000BE44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

void sub_10000BE80()
{
  sub_10004A0D0();
  v3 = v2;
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  sub_100008BA8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057DEC0;
  v5 = objc_opt_self();
  *(v4 + 32) = [v5 tu_predicateForConversationLinkDescriptorsWithActivated:1];
  *(v4 + 40) = [v5 tu_predicateForConversationLinkDescriptorsIsDeleted:0];
  v16 = v4;
  if (v3)
  {
    v6 = [v5 tu_predicateForConversationLinkDescriptorsWithPrivateKey:0];
    v7 = [objc_opt_self() notPredicateWithSubpredicate:v6];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    sub_10000B8B0();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  v8 = sub_10000C350();
  sub_100007C2C();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v0;
  aBlock[4] = sub_10000CD54;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_10000A8B8();
  aBlock[2] = v10;
  aBlock[3] = &unk_100629980;
  v11 = _Block_copy(aBlock);
  v12 = v8;
  sub_100051648();

  sub_100025C24();
  sub_10000C740();
  [v13 v14];
  _Block_release(v11);
}

uint64_t sub_10000C0B4()
{

  sub_100007C2C();

  return _swift_deallocObject(v0);
}

void sub_10000C10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = 0xD000000000000010;

  v16 = a15 | 0x8000000000000000;
  String.append(_:)(*&v17);
}

BOOL sub_10000C188()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10000C1AC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_10000C224(uint64_t a1, uint64_t a2)
{

  return sub_100023E48(a1, a2, v2);
}

uint64_t sub_10000C264()
{

  return type metadata accessor for DispatchPredicate();
}

id sub_10000C27C()
{
  v3 = *(v1 + 1376);

  return [v0 v3];
}

uint64_t sub_10000C2B0(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10000C304()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_10000C350()
{
  sub_100006AF0(0, &unk_1006A30C0, NSPredicate_ptr);
  Array._bridgeToObjectiveC()();
  sub_10039C4B0();
  v1 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates:v0];

  return v1;
}

uint64_t sub_10000C3CC()
{
}

uint64_t sub_10000C3F0()
{
}

uint64_t sub_10000C464()
{

  return sub_10026D814(v0, v1);
}

void sub_10000C4A4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v9, 0x16u);
}

uint64_t sub_10000C4DC(float a1)
{
  *v2 = a1;
  *v3 = v1;

  return swift_errorRetain();
}

id sub_10000C510@<X0>(uint64_t a1@<X8>)
{

  return sub_10031E958(0xD000000000000019, ((a1 - 32) | 0x8000000000000000));
}

uint64_t sub_10000C530()
{

  return String.init<A>(reflecting:)();
}

uint64_t sub_10000C554()
{

  return swift_slowAlloc();
}

void *sub_10000C5BC()
{
  v2 = *(v0 + 56);

  return sub_100009B14((v0 + 32), v2);
}

uint64_t sub_10000C5D4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_10000C5FC(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return v3;
}

void sub_10000C654(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10000C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_100022DDC(v10);
}

uint64_t sub_10000C6CC()
{

  return type metadata accessor for DispatchWorkItemFlags();
}

uint64_t sub_10000C708()
{
  *(v3 - 192) = v2;
  *(v0 + 56) = *(v1 + 240);

  return sub_1002F6EC4(v3 - 240);
}

uint64_t sub_10000C768()
{
}

uint64_t sub_10000C7DC(uint64_t a1)
{
  *(a1 + 16) = *(v1 + v4);

  return sub_1002DB564(v3, v2);
}

uint64_t sub_10000C808(uint64_t a1)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000C844()
{

  return String.init<A>(reflecting:)();
}

uint64_t sub_10000C87C(uint64_t a1)
{

  return sub_10000AF74(a1, 1, 1, v1);
}

void sub_10000C8BC()
{

  sub_1002762F0();
}

void sub_10000C910()
{
  v5 = (v1 + v4);
  *v5 = v3;
  v5[1] = v0;
  *(v2 + 480) = sub_10046A100;
  *(v2 + 488) = v1;
}

void sub_10000CA64(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) mutableConversationsByUUID];
  v2 = [v1 allValues];

  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (([v7 isFromStorage] & 1) == 0)
        {
          [v7 refreshActiveParticipantsList];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

uint64_t sub_10000CB80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_10000CC24(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (!a1)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = &_swiftEmptySetSingleton;
  v14 = &_swiftEmptySetSingleton;
  result = sub_10000B6F4(a1);
  if (!result)
  {
LABEL_11:
    a3(v6, a2);
    goto LABEL_12;
  }

  v8 = result;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v9 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    v12 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v10];
    sub_100396874(&v13, v12);
  }

  while (v8 != v9);
  a3(v14, a2);
LABEL_12:
}

void sub_10000CD5C(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_100006AF0(0, &unk_1006A2C00, TUConversationLink_ptr);
    sub_10000CE3C(&unk_1006A67B0, &unk_1006A2C00, TUConversationLink_ptr);
    isa = Set._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_10000CE3C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006AF0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D33C@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 232) = *(a1 - 256);

  return String.init<A>(reflecting:)();
}

unint64_t sub_10000D380@<X0>(int a1@<W8>)
{
  if (a1 == 1)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_10000D39C()
{
}

uint64_t sub_10000D3B4(uint64_t a1)
{
  *(v1 - 104) = a1;

  return URL.deletingLastPathComponent()();
}

_OWORD *sub_10000D440(uint64_t a1, uint64_t a2, ...)
{

  return sub_10003EBF0(&v5, &v4);
}

id sub_10000D458(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_10000D470()
{
}

void sub_10000D4A4(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 104) = v4;
  *(v2 - 96) = v3;
}

uint64_t sub_10000D4DC()
{

  return swift_beginAccess();
}

uint64_t sub_10000D568(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

uint64_t sub_10000D588()
{
  sub_100009B7C(v0);
}

uint64_t sub_10000D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return sub_10002741C(a21, v21, (v22 - 96));
}

uint64_t sub_10000D5F8()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_10000D610()
{
}

BOOL sub_10000D654(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000D670()
{

  return swift_slowAlloc();
}

void *sub_10000D6D8(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

uint64_t sub_10000D704()
{

  return sub_1002E0D34();
}

uint64_t sub_10000D724()
{

  return sub_100009AB0(v0 - 128, v0 - 168);
}

uint64_t sub_10000D76C(uint64_t a1, uint64_t (*a2)(void))
{

  return sub_1004204DC(a1, 1, a2);
}

uint64_t sub_10000D78C@<X0>(uint64_t a1@<X8>)
{

  return sub_100396044(0, (a1 + 63) >> 6, v1);
}

uint64_t sub_10000D7AC()
{
  *(v0 + 88) = sub_10046834C;

  return swift_continuation_init();
}

uint64_t sub_10000D7E0()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 frontmostCall];

  if (v2 || (v3 = [v0 sharedInstance], v2 = objc_msgSend(v3, "currentVideoCall"), v3, v2))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void sub_10000D8A8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA688);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "handleAudioRouteChanged", v8, 2u);
    }

    v9 = sub_10000D7E0();
    if (v9)
    {
      v10 = v9;
      v11 = *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_translationSession);
      if (!v11)
      {
        v25 = Logger.logObject.getter();
        v34 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v25, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v25, v34, "No translation session so not handle audio route changed", v35, 2u);
        }

        goto LABEL_28;
      }

      v12 = swift_unknownObjectWeakLoadStrong();
      v13 = v11;
      v14 = v13;
      if (!v12)
      {
LABEL_15:
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "Currently translation call is not the call which just changed audio route. Not updating translation", v27, 2u);
        }

LABEL_28:
        v12 = v10;
        goto LABEL_57;
      }

      v55 = v13;
      v15 = [v12 uniqueProxyIdentifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v54 = v10;
      v19 = [v54 uniqueProxyIdentifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v16 == v20 && v18 == v22)
      {
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {

          v14 = v55;
          goto LABEL_15;
        }
      }

      v36 = v55;
      v37 = v54;
      if (sub_1002A41F0() == 2)
      {
        if (sub_1002B641C(a2))
        {
          v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v38;
          AnyHashable.init<A>(_:)();
          sub_100006600();

          sub_100006780(v58);
          if (v59[3])
          {
            sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              isa = v56;
LABEL_43:
              if ([(objc_class *)isa integerValue]== 8)
              {
                v44 = [v54 isSendingVideo];

                if ((v44 & 1) != 0 || [v54 service]== 3)
                {
                  *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_translationLinks) = 1;
                  *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_translationMode) = 2;
                  v45 = Logger.logObject.getter();
                  v46 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v45, v46))
                  {
                    v47 = swift_slowAlloc();
                    *v47 = 0;
                    v48 = "since call is video, switching translationLinks and translationMode";
LABEL_53:
                    _os_log_impl(&_mh_execute_header, v45, v46, v48, v47, 2u);
                  }
                }

                else
                {
                  *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_translationLinks) = 3;
                  *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_translationMode) = 0;
                  v45 = Logger.logObject.getter();
                  v46 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v45, v46))
                  {
                    v47 = swift_slowAlloc();
                    *v47 = 0;
                    v48 = "since call is audio, switching translationLinks and translationMode";
                    goto LABEL_53;
                  }
                }

                sub_1002ACB08(v54, 1, *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_remoteAudioMode), *(&v4->isa + OBJC_IVAR___CSDCallTranslationController_translationMode), v4, sub_1002B2B74, &unk_1006237D8, "Reconfigure audio session due to audio route changes successfully", "Failed to reconfigure audio session due to audio route changes", v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4], v59[0], v59[1]);
                goto LABEL_55;
              }

              v49 = isa;
              v40 = Logger.logObject.getter();
              v50 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v40, v50))
              {
                v51 = swift_slowAlloc();
                v52 = swift_slowAlloc();
                *v51 = 138412290;
                *(v51 + 4) = v49;
                *v52 = v49;
                isa = v49;
                _os_log_impl(&_mh_execute_header, v40, v50, "route change reason %@ not handled", v51, 0xCu);
                sub_100009A04(v52, &unk_1006A2630, &qword_10057CB40);

LABEL_55:
                goto LABEL_56;
              }

LABEL_40:
LABEL_56:

              goto LABEL_57;
            }
          }

          else
          {
            sub_100009A04(v59, &unk_1006A2D10, &unk_10057D940);
          }

          sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
          isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
          goto LABEL_43;
        }

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v40, v41))
        {
          goto LABEL_40;
        }

        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = "No userInfo in notification, return";
      }

      else
      {

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v40, v41))
        {
          goto LABEL_40;
        }

        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = "Not in translation, return";
      }

      _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);

      goto LABEL_40;
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Invalid frontmost call, return", v33, 2u);
    }

    v12 = v4;
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000AF9C(v28, qword_1006BA688);
    v12 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v12, v29, "invalid self, return", v30, 2u);
    }
  }

LABEL_57:
}

void sub_10000E150()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000E598();
  v24 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  if (qword_1006A0B58 != -1)
  {
    sub_1000081B4(&qword_1006A0B58);
  }

  v13 = type metadata accessor for Logger();
  sub_1000075F0(v13, qword_1006BA688);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v15))
  {
    v16 = sub_100006DC4();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "get notificaiton to handleAudioRouteChanged", v16, 2u);
    sub_100005F40(v16);
  }

  sub_100006890();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v2;
  v25[4] = sub_10000E148;
  v25[5] = v18;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v25[2] = v19;
  v25[3] = &unk_1006237B0;
  v20 = _Block_copy(v25);

  v21 = v2;
  static DispatchQoS.unspecified.getter();
  sub_1000150B4();
  sub_10000ECD8(v22, v23, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_100008A7C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10001E3D8();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v5 + 8))(v0, v3);
  (*(v8 + 8))(v12, v24);

  sub_100005EDC();
}

uint64_t sub_10000E424()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0);
}

void sub_10000E4D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_10000E540(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000012;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_10000E5C8(uint64_t a1)
{

  return sub_10000AF74(a1, 0, 1, v1);
}

uint64_t sub_10000E5F4()
{
  sub_10000AF74(v1, 2, 2, *(v2 - 184));

  return sub_100043F40(v1, v0);
}

_OWORD *sub_10000E64C(uint64_t a1, uint64_t a2, ...)
{
  v5 = (*(v2 + 56) + 32 * v3);

  return sub_10003EBF0(v5, &v7);
}

uint64_t sub_10000E668()
{
}

char *sub_10000E6E8()
{

  return sub_10032091C(v0, sub_10039C390);
}

uint64_t sub_10000E718()
{
}

uint64_t sub_10000E764()
{
  sub_100009B7C(v0);
}

id sub_10000E83C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 32) = v1;

  return v1;
}

uint64_t sub_10000E8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000E91C(char a1, char a2)
{

  return sub_10029D480(a1, a2);
}

uint64_t sub_10000E980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return swift_dynamicCast();
}

uint64_t sub_10000E9A4(uint64_t a1)
{

  return Logger.logObject.getter();
}

uint64_t sub_10000E9D4()
{
  if (v0 < 0)
  {
    return v0;
  }

  else
  {
    return v0 & 0xFFFFFFFFFFFFFF8;
  }
}

uint64_t sub_10000EA0C(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10000EA90(uint64_t a1)
{
  *(v3 - 112) = *(v2 + v1);

  sub_100378540();
}

uint64_t sub_10000EB1C()
{
}

uint64_t sub_10000EB40(uint64_t result)
{
  v3 = v2 + *(v1 + 24);
  *v3 = result;
  *(v3 + 6) = BYTE6(result);
  *(v3 + 4) = WORD2(result);
  return result;
}

uint64_t sub_10000EB9C()
{

  return swift_beginAccess();
}

uint64_t sub_10000EBBC(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10000EBE0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t sub_10000EC24(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  return result;
}

void sub_10000EC34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_10000EC54(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2 & 1;
  *(v1 + 8) = 2080;
  *(v3 - 100) = v2;
}

uint64_t sub_10000EC90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000ECD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000ED20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000ED68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EDB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EDF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EE40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EE88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EF18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EF60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_10000EFA8(uint64_t a1)
{
  result = sub_10004448C(a1);
  if (!result)
  {
    v3(255);
    sub_100007694();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_10000EFE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F030(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F0C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F1E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F2F8()
{

  return swift_errorRetain();
}

id sub_10000F350()
{

  return sub_10031E020(v2, v0, v1);
}

uint64_t sub_10000F3E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_10002741C(a1, a2, &a9);
}

uint64_t sub_10000F3F8(uint64_t a1)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000F450()
{

  return type metadata accessor for UUID();
}

uint64_t sub_10000F4B0(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return os_log(_:dso:log:type:_:)(a1, a2, 2, a4, v4, v5, v6);
}

id sub_10000F508()
{

  return sub_1003DFB90(v0, v1, v2);
}

uint64_t sub_10000F52C()
{
}

uint64_t sub_10000F570(uint64_t a1)
{
}

void sub_10000F590(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10000F5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 48) + 40 * v10;

  return sub_100006780(v12);
}

id sub_10000F5E4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_10000F638@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_10002741C(0xD000000000000042, a1 | 0x8000000000000000, va);
}

uint64_t sub_10000F658(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_10000F674()
{
}

uint64_t sub_10000F6B0(unint64_t *a1)
{

  return sub_10001000C(a1, v2, v1, &protocol conformance descriptor for [A]);
}

id sub_10000F784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v8 + 2264);

  return [v5 v10];
}

void sub_10000F7A8()
{

  sub_1003AE81C(5);
}

uint64_t sub_10000F7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return String.init<A>(reflecting:)();
}

uint64_t sub_10000F7E0()
{
  sub_10003EBF0((v0 - 160), (v0 - 192));

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_10000F810(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_10000F828(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

NSString sub_10000F848()
{

  return String._bridgeToObjectiveC()();
}

id sub_10000F898@<X0>(uint64_t a1@<X8>)
{
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;
  *(v4 + 72) = v2 & 1;

  return v3;
}

uint64_t sub_10000F8C4(uint64_t a1)
{

  return static NSObject.== infix(_:_:)();
}

uint64_t sub_10000F904(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000F93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return dispatch thunk of Hashable.hash(into:)();
}

BOOL sub_10000F96C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10000F99C()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

void sub_10000F9C8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_10000F9E4()
{

  return sub_10026D814(v0, v1);
}

uint64_t sub_10000FA44()
{
  *(v0 + 24) = sub_100334724;

  return swift_continuation_init();
}

uint64_t sub_10000FAAC()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_10000FAFC(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

id sub_10000FB08()
{
  v3 = *(v1 + 536);

  return [v0 v3];
}

void sub_10000FB4C()
{
  v2[28] = sub_100469604;
  v2[29] = v0;
  v2[30] = v1;
}

uint64_t sub_10000FB64()
{
  v3 = *(v1 - 304);

  return sub_1003812B0(v0, v3);
}

uint64_t sub_10000FB84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10001000C(a1, a2, a3, &protocol conformance descriptor for AsyncStream<A>.Iterator);
}

uint64_t sub_10000FBA8(uint64_t a1)
{

  return AsyncStream.Continuation.yield(_:)();
}

id sub_10000FBE4()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_10000FC50(__n128 a1)
{
  *(v1 + v3) = a1;

  return sub_10000AF74(v1, 0, 1, v2);
}

uint64_t sub_10000FCA8(uint64_t a1, uint64_t a2)
{

  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_10000FCD0()
{

  return swift_getObjectType();
}

uint64_t sub_10000FCE8()
{

  return String.init<A>(reflecting:)();
}

uint64_t sub_10000FD00()
{

  return swift_beginAccess();
}

uint64_t sub_10000FD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 160) = a6;

  return type metadata accessor for DispatchWorkItemFlags();
}

uint64_t sub_10000FDEC(uint64_t a1)
{

  return sub_100015468(a1, 1, v1);
}

uint64_t sub_10000FE58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10026D814(a2, a3);
}

uint64_t sub_10000FE98()
{

  return swift_slowAlloc();
}

void sub_10000FEB4()
{
}

void sub_10000FEE0()
{

  sub_1003D1ED4(v2, v0, v1);
}

uint64_t sub_10000FF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return sub_100010000(v17, v18, a17 & 1);
}

uint64_t sub_10000FF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return swift_beginAccess();
}

void sub_10000FF70()
{
  *(v1 - 120) = v0[118];
  v2 = v0[104];
  *(v1 - 112) = v0[96];
  *(v1 - 104) = v2;
}

uint64_t sub_100010000(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10001000C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10026DCB4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10001010C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

uint64_t sub_100010160()
{
}

uint64_t sub_1000101A8()
{
  sub_100009B7C(v0);
}

uint64_t sub_1000101F4()
{

  return type metadata accessor for GeneratorDescriptor();
}

uint64_t sub_10001022C(uint64_t a1, unint64_t a2)
{

  return sub_10002741C(a1, a2, (v2 - 176));
}

uint64_t sub_1000102A8()
{

  return swift_allocObject();
}

uint64_t sub_1000102DC(unint64_t *a1, unint64_t *a2, void *a3)
{

  return sub_1002F93D0(a1, a2, a3, &_sSo17OS_dispatch_queueCSch8DispatchMc);
}

uint64_t sub_100010344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100049EF4(v10, &a9 - v9);
}

uint64_t sub_100010368(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

void sub_10001046C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10001048C()
{

  return Logger.init(subsystem:category:)();
}

void *sub_1000104D8()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100010508()
{
  sub_100009B7C(v0);
}

void sub_100010554(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *(v2 + 6) = 3;
  *(v2 + 4) = 0;
  *v2 = 0;
}

uint64_t sub_10001056C()
{
}

uint64_t sub_1000105A0(uint64_t result)
{
  *(v2 + 64) = result;
  *(v2 + 32) = v1;
  return result;
}

uint64_t sub_1000105EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = type metadata accessor for Notification();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a1;
  a4(v12);

  return (*(v8 + 8))(v12, v6);
}

void sub_1000106C8()
{
  sub_100005EF4();
  v39 = v1;
  v40 = v0;
  v2 = v1;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v46 = v3;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v42 = v6 - v5;
  sub_10000D414();
  v45 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v43 = v7;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v41 = v10 - v9;
  sub_10000D414();
  v11 = type metadata accessor for Notification();
  sub_100007FEC();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v16);
  v18 = sub_100010B20(v17);
  v19 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v20 = sub_100009F00(v19);
  *(v20 + 16) = xmmword_10057D690;
  v21 = *(v13 + 16);
  v21(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v11);
  v22 = String.init<A>(reflecting:)();
  v24 = v23;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_100009D88();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  v25 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("notification: %@", 16, 2, &_mh_execute_header, v18, v25, v20);

  v26 = v40;
  v21(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v11);
  v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v28 = swift_allocObject();
  (*(v13 + 32))(v28 + v27, &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v28 + ((v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v48[4] = sub_100010B7C;
  v48[5] = v28;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v48[2] = v29;
  v48[3] = &unk_10062E560;
  v30 = _Block_copy(v48);
  v31 = v26;
  v32 = v41;
  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v33, v34, &unk_10057D6E0, v35);
  v36 = v42;
  v37 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v46 + 8))(v36, v37);
  (*(v43 + 8))(v32, v45);

  sub_100005EDC();
}

uint64_t sub_100010A84()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0);
}

id sub_100010B20(uint64_t a1)
{
  if (qword_1006ACF40 != -1)
  {
    sub_10047D1C8();
  }

  v2 = qword_1006ACF38;

  return v2;
}

uint64_t sub_100010B7C()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100010C08(v0 + v2, v3);
}

uint64_t sub_100010C08(uint64_t a1, uint64_t a2)
{
  if (!Notification.userInfo.getter())
  {
    return sub_100010E74();
  }

  v3 = (a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory);
  if (!*(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory + 8))
  {
    goto LABEL_7;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v4;
  AnyHashable.init<A>(_:)();
  sub_100006600();
  sub_100006780(v17);
  if (v19)
  {
    if (swift_dynamicCast())
    {
      v5 = *v3;
      v6 = v3[1];

      v7 = sub_1003ED4E0(v5, v6, v13, v15);

      if (!v7)
      {
      }
    }
  }

  else
  {
    sub_10004975C(v18);
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v8;
  AnyHashable.init<A>(_:)();
  sub_100006600();

  sub_100006780(v17);
  if (!v19)
  {
    sub_10004975C(v18);
    return sub_100010E74();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100010E74();
  }

  v9 = *(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode + 8);
  if (!v9)
  {
  }

  if (*(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode) == v14 && v9 == v16)
  {
LABEL_7:

    return sub_100010E74();
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return sub_100010E74();
  }

  return result;
}

uint64_t sub_100010E74()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v9 = (v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider);
    v10 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider + 24);
    v11 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider + 32);
    sub_100009B14((v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider), v10);
    if ((*(v11 + 8))(v10, v11))
    {
      swift_getObjectType();
      v12 = v9[3];
      v13 = v9[4];
      sub_100009B14(v9, v12);
      v14 = (*(v13 + 16))(v12, v13);
    }

    else
    {
      v15 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory + 8);
      if (v15)
      {
        v16 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory);
        v17 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode);
        v18 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode + 8);

        v19 = sub_1003EC740(v16, v15, v17, v18);

LABEL_8:

        return sub_10001185C(v19);
      }

      swift_getObjectType();
      v20 = v9[3];
      v21 = v9[4];
      sub_100009B14(v9, v20);
      v14 = (*(v21 + 24))(v20, v21);
    }

    v19 = sub_1000115DC(v14);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000110CC(SEL *a1)
{
  v2 = [v1 *a1];
  sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10001119C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes);
  if (v1 >> 62)
  {
    sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);

    v2 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
    v2 = v1;
  }

  return v2;
}

uint64_t sub_100011264(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1000112B0@<X0>(uint64_t a1@<X8>)
{

  return sub_10000AF74(v1 + a1, 1, 1, v2);
}

void sub_1000112DC()
{
  if (!v1 & v0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 - 232);

  sub_10004436C(v5, v2, 1, v6);
}

uint64_t sub_100011320()
{
}

uint64_t sub_100011344()
{

  return swift_arrayDestroy();
}

uint64_t sub_10001141C@<X0>(unint64_t a1@<X8>)
{
  v5 = *(v3 + 48) + *(*(v1 + 176) + 72) * (__clz(__rbit64(a1)) | (v2 << 6));
  v6 = *(v1 + 184);

  return sub_10037A8AC(v5, v6);
}

uint64_t sub_10001147C@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  sub_1000115CC(*v2, v2[1]);
  return v3;
}

uint64_t sub_1000114B8()
{

  return sub_100343100(v5 + v3, v4 + v2, v0, v1);
}

uint64_t sub_10001151C(uint64_t result, uint64_t a2)
{
  *(v2 - 80) = result;
  *(v2 - 72) = a2;
  return result;
}

void sub_10001155C()
{

  sub_10044B564(v0, v1);
}

uint64_t sub_10001158C()
{

  return swift_slowAlloc();
}

uint64_t sub_1000115CC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_1000115DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006AF0(0, &unk_1006A2BB0, TUAudioRoute_ptr);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      swift_bridgeObjectRetain_n();
      v5 = sub_1000117C8(v4);
      if (v5)
      {
        v6 = v5;

        v7 = v6;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v8 = sub_100010B20(0);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_10057D690;
        *(v9 + 56) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
        *(v9 + 64) = sub_10001000C(&qword_1006A3980, &unk_1006A2A00, &unk_10057D710, &protocol conformance descriptor for [A : B]);
        *(v9 + 32) = v4;
        v10 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Unable to create audio route from route dictionary: %@", 54, 2, &_mh_execute_header, v8, v10, v9);
      }

      ++v3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

id sub_1000117C8(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithDictionary:isa];

  return v3;
}

uint64_t sub_10001185C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes);
  *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes) = a1;
  sub_100012410(v2);
}

void *sub_1000118A4()
{
  v1 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR___CSDRouteController_queue);
  *(v6 - v5) = v8;
  (*(v3 + 104))(v6 - v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v7, v1);
  if (v8)
  {
    if (!*(v0 + OBJC_IVAR___CSDRouteController__intelligentRoutingManager))
    {
      return _swiftEmptyArrayStorage;
    }

    sub_1000192A8();
    v12 = v11;
    v13 = sub_100019378();

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000119D4()
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = v0;
  v8 = *(v0 + OBJC_IVAR___CSDRouteController_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v11 = v5 + 8;
  v12(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v10 = OBJC_IVAR___CSDRouteController__routesByUniqueIdentifier;
  v13 = v95;
  swift_beginAccess();
  v14 = *(v13 + v10);
  swift_beginAccess();

  sub_10026D814(&qword_1006A8CF8, &unk_100584D90);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  v0 = v13;
  v94 = sub_1000118A4();
  v92 = OBJC_IVAR___CSDRouteController_pendingRouteContext;
  v2 = *(v13 + OBJC_IVAR___CSDRouteController_pendingRouteContext) != 0;
  sub_100012748();
  v11 = v15;
  v16 = sub_10000B6F4(v15);
  v87 = v14;
  v88 = v10;
  if (v16)
  {
    v1 = v16;
    if (v16 >= 1)
    {
      v93 = v2;
      v17 = 0;
      v18 = 0;
      v96 = 0;
      v19 = v11 & 0xC000000000000001;
      v20 = &selRef_isInstalled;
      v90 = v16;
      v91 = v11;
      v89 = v11 & 0xC000000000000001;
      while (1)
      {
        v21 = v19 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v11 + 8 * v18 + 32);
        v22 = v21;
        [v21 v20[465]];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006AF0(0, &qword_1006A8D00, TUMutableRoute_ptr);
        if (swift_dynamicCast())
        {
          break;
        }

LABEL_29:
        if (v1 == ++v18)
        {
          goto LABEL_33;
        }
      }

      v23 = v97;
      v24 = &selRef_setWindowed_;
      v25 = [v97 uniqueIdentifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = *(v95 + v92);
      if (v29)
      {
        v30 = v17;
        v31 = [v29 uniqueIdentifier];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        if (v26 == v32 && v28 == v34)
        {

          v17 = v30;
          v24 = &selRef_setWindowed_;
LABEL_21:

          v38 = v22;
          [v23 setCurrentlyPicked:1];
          goto LABEL_24;
        }

        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v17 = v30;
        v24 = &selRef_setWindowed_;
        if (v36)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      if (v93)
      {
        v37 = v17;
        [v23 setCurrentlyPicked:0];
        v93 = 1;
LABEL_25:
        v40 = [v22 v24[498]];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v98 = v41;
        v99 = v43;
        __chkstk_darwin(v44);
        *(&v87 - 2) = &v98;
        v45 = v96;
        LOBYTE(v40) = sub_100013094();
        v96 = v45;

        [v23 setRecommended:v40 & 1];
        [v23 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
        if (swift_dynamicCast())
        {
          v46 = v97;
          v47 = [v97 v24[498]];
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v51 = v88;
          v52 = v95;
          swift_beginAccess();
          v53 = v46;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v97 = *(v51 + v52);
          sub_10001313C(v53, v48, v50, isUniquelyReferenced_nonNull_native, v55, v56, v57, v58, v87, v88);
          *(v51 + v52) = v97;

          swift_endAccess();
        }

        else
        {
        }

        v1 = v90;
        v11 = v91;
        v19 = v89;
        v20 = &selRef_isInstalled;
        v17 = v37;
        goto LABEL_29;
      }

      if (![v23 isCurrentlyPicked])
      {
        v37 = v17;
        v93 = 0;
        goto LABEL_25;
      }

      v39 = v22;
      v93 = 1;
LABEL_24:
      v37 = v22;
      goto LABEL_25;
    }

    goto LABEL_48;
  }

  v17 = 0;
LABEL_33:

  v59 = v88;

  v61 = v87;
  sub_100012E44(v60, v87);
  v63 = v62;

  if (v63)
  {

LABEL_45:

    return;
  }

  v65 = sub_100004778(v64);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_10057D6A0;
  v67 = sub_10026D814(&qword_1006A8D08, &qword_100584DA0);
  *(v66 + 56) = v67;
  v68 = sub_10001000C(&qword_1006A8D10, &qword_1006A8D08, &qword_100584DA0, &protocol conformance descriptor for [A : B]);
  *(v66 + 32) = v61;
  v69 = v95;
  v70 = *(v59 + v95);
  *(v66 + 96) = v67;
  *(v66 + 104) = v68;
  *(v66 + 64) = v68;
  *(v66 + 72) = v70;

  v71 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updated routes from %@ to %@", 28, 2, &_mh_execute_header, v65, v71, v66);

  v72 = *(v59 + v69);

  sub_100017900(v61, v72);

  v3 = (v69 + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier);
  v1 = *(v69 + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier + 8);
  if (v1)
  {
    v2 = *v3;

    sub_10001756C(v2, v1);
    if (v73)
    {
      v10 = v73;
      v11 = v74;
      v0 = v75;
      v96 = v17;
      if (qword_1006A0AA0 == -1)
      {
LABEL_38:
        v76 = qword_1006BA380;
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_10057D690;
        v98 = v2;
        v99 = v1;
        v78 = String.init<A>(reflecting:)();
        v80 = v79;
        *(v77 + 56) = &type metadata for String;
        *(v77 + 64) = sub_100009D88();
        *(v77 + 32) = v78;
        *(v77 + 40) = v80;
        v81 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("pickWhenAvailable route identifier %@ did become available, picking now...", 74, 2, &_mh_execute_header, v76, v81, v77);

        *v3 = 0;
        v3[1] = 0;

        sub_1003B8898(v10, v11, v0);
        swift_unknownObjectRelease();

        v17 = v96;
        goto LABEL_40;
      }

LABEL_49:
      swift_once();
      goto LABEL_38;
    }
  }

LABEL_40:
  v82 = *(v95 + OBJC_IVAR___CSDRouteController_routesDidChangeHandler);
  if (v82)
  {
    v83 = *(v95 + OBJC_IVAR___CSDRouteController_routesDidChangeHandler + 8);

    v82(v84);
    sub_1000051F8(v82, v83);
  }

  if (v17)
  {
    v85 = *(v95 + OBJC_IVAR___CSDRouteController_pickedRouteDidChangeHandler);
    if (v85)
    {
      v86 = *(v95 + OBJC_IVAR___CSDRouteController_pickedRouteDidChangeHandler + 8);

      v85(v17);
      sub_1000051F8(v85, v86);
    }

    goto LABEL_45;
  }
}

void sub_100012298(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR___CSDRouteController_queue);
    *v6 = v9;
    (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
    v10 = v9;
    LOBYTE(v9) = _dispatchPreconditionTest(_:)();
    (*(v4 + 8))(v6, v3);
    if (v9)
    {
      v11 = &v8[OBJC_IVAR___CSDRouteController_pendingRouteContext];
      v12 = *&v8[OBJC_IVAR___CSDRouteController_pendingRouteContext];
      if (v12)
      {
        v13 = *(v11 + 1);
        if (v13 == a2)
        {
          *v11 = 0;
          *(v11 + 1) = 0;
          *(v11 + 2) = 0;
          sub_1003BA734(v12, v13);
        }
      }

      sub_1000119D4();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100012410(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v11 = sub_100010B20(v10);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10057D690;
  v13 = *(v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes);
  *(v12 + 56) = sub_10026D814(&qword_1006AA378, &qword_1005863E8);
  *(v12 + 64) = sub_10001000C(&unk_1006AA380, &qword_1006AA378, &qword_1005863E8, &protocol conformance descriptor for [A]);
  *(v12 + 32) = v13;

  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updated audio routes: %@", 24, 2, &_mh_execute_header, v11, v14, v12);

  v15 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute;
  if (*(v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute))
  {
    sub_1003EBB54();
    v17 = *(v2 + v15);
    if (v16)
    {
      v18 = v16;
      if (v17)
      {
        sub_100006AF0(0, &unk_1006A2BB0, TUAudioRoute_ptr);
        v19 = v17;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

LABEL_10:
      sub_1003EBB54();
      v22 = v21;
      v23 = sub_1003EBC38(v21);

      if (v23)
      {

        v25 = sub_1003B6824(v24, a1);

        if ((v25 & 1) == 0)
        {
          v27 = sub_100010B20(v26);
          v28 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Clearing last user picked route", 31, 2, &_mh_execute_header, v27, v28, _swiftEmptyArrayStorage);

          v29 = *(v2 + v15);
          *(v2 + v15) = 0;
        }
      }

      goto LABEL_13;
    }

    if (v17)
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  v30 = v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_routesDidChangeHandler;
  v31 = *(v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_routesDidChangeHandler);
  if (v31)
  {
    v32 = *(v30 + 8);

    v31(v33);
    sub_1000051F8(v31, v32);
  }
}

void sub_100012748()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CSDRouteController_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_51;
  }

  v7 = *(v0 + OBJC_IVAR___CSDRouteController_routeProviders);
  v8 = *(v7 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v50[0] = _swiftEmptyArrayStorage;
    sub_100011158();
    v9 = v50[0];
    v10 = (v7 + 40);
    do
    {
      v11 = *v10;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 8);
      swift_unknownObjectRetain();
      v14 = v13(ObjectType, v11);
      swift_unknownObjectRelease();
      v50[0] = v9;
      v15 = v9[2];
      v16 = v15 + 1;
      if (v15 >= v9[3] >> 1)
      {
        sub_100011158();
        v9 = v50[0];
      }

      v9[2] = v16;
      v9[v15 + 4] = v14;
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage[2];
  }

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v45 = v16;
  v46 = v9 + 4;
  v19 = &unk_1006A7B70;
  v42 = v9;
  while (1)
  {
    if (v17 == v16)
    {

      return;
    }

    if (v17 >= v9[2])
    {
      break;
    }

    v20 = v19;
    v21 = v46[v17];
    if (v21 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v18 >> 62;
    if (v18 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v24 + v22;
    if (__OFADD__(v24, v22))
    {
      goto LABEL_45;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v47 = v22;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v23)
      {
LABEL_23:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_24:
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v27 = v48 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_25;
    }

    if (v23)
    {
      goto LABEL_23;
    }

    v27 = v18 & 0xFFFFFFFFFFFFFF8;
    if (v25 > *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_24;
    }

    v48 = v18;
LABEL_25:
    v49 = v17 + 1;
    v28 = *(v27 + 16);
    v29 = (*(v27 + 24) >> 1) - v28;
    v30 = v27 + 8 * v28;
    if (v21 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
      if (v32)
      {
        v33 = v32;
        v34 = _CocoaArrayWrapper.endIndex.getter();
        if (v29 < v34)
        {
          goto LABEL_49;
        }

        if (v33 < 1)
        {
          goto LABEL_50;
        }

        v43 = v34;
        v44 = v27;
        sub_10001000C(&qword_1006A8D20, v19, &qword_100584DB0, &protocol conformance descriptor for [A]);
        for (i = 0; i != v33; ++i)
        {
          sub_10026D814(v19, &qword_100584DB0);
          v36 = sub_100024CFC(v50, i, v21);
          v38 = *v37;
          v36(v50, 0);
          v19 = v20;
          *(v30 + 32 + 8 * i) = v38;
        }

        v9 = v42;
        v31 = v43;
        v27 = v44;
        goto LABEL_35;
      }

LABEL_39:

      v18 = v48;
      v16 = v45;
      v17 = v49;
      if (v47 > 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_39;
      }

      if (v29 < v31)
      {
        goto LABEL_48;
      }

      sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
      swift_arrayInitWithCopy();
LABEL_35:

      v18 = v48;
      v16 = v45;
      v17 = v49;
      if (v31 < v47)
      {
        goto LABEL_46;
      }

      if (v31 > 0)
      {
        v39 = *(v27 + 16);
        v40 = __OFADD__(v39, v31);
        v41 = v39 + v31;
        if (v40)
        {
          goto LABEL_47;
        }

        *(v27 + 16) = v41;
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

void sub_100012C0C()
{
  sub_100005EF4();
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_100007FDC();
  sub_10000F9FC();
  v3 = *(v0 + qword_1006A4D40);
  *v1 = v3;
  v4 = sub_100011364();
  v5(v4);
  v6 = v3;
  LOBYTE(v3) = _dispatchPreconditionTest(_:)();
  v7 = sub_100006884();
  v8(v7);
  if (v3)
  {
    v9 = *(v0 + qword_1006A4D68);
    v10 = *(v9 + 16);
    if (!v10)
    {
LABEL_10:
      sub_100005EDC();
      return;
    }

    v18[9] = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = sub_10001615C(v9);
    LODWORD(v13) = v12;
    v15 = v14;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v9 + 32))
    {
      if (((*(v9 + 56 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_12;
      }

      if (*(v9 + 36) != v13)
      {
        goto LABEL_13;
      }

      memcpy(v19, (*(v9 + 48) + 72 * v11), 0x48uLL);
      sub_10001C174(v19, v18);
      sub_1002BA484();
      sub_1002F6EC4(v19);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 = sub_1003081B4(v11, v13, v15 & 1, v9);
      v13 = v16;
      v15 = v17;
      if (!--v10)
      {

        sub_100010000(v11, v13, v15 & 1);
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  __break(1u);
}

void sub_100012E44(void *a1, void *a2)
{
  if (a1 != a2 && a1[2] == a2[2])
  {
    v4 = 0;
    sub_100007990();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      v13 = v10 | (v4 << 6);
      v14 = (a1[6] + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(a1[7] + 8 * v13);

      v18 = v17;
      v19 = sub_100005208(v15, v16);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      sub_100016F14();
      v22 = *(a2[7] + 8 * v19);
      v23 = static NSObject.== infix(_:_:)();

      if ((v23 & 1) == 0)
      {
        return;
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
        return;
      }

      v12 = a1[v4 + 8];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_100012FA0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10000A82C(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * v5) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_10000E710(v6, v10);
  }
}

void sub_100012FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{
  sub_10000D698();
  sub_100015AD8(v13, v14, v15);
  sub_100008598();
  if (v16)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10000C464();
  v17 = sub_100007D68();
  if (v17)
  {
    v21 = sub_100008988();
    sub_100005208(v21, v10);
    sub_100008BC4();
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  if (v12)
  {
    sub_100007794(v17, v18, v19, v20, *v11);
    sub_100006048();
  }

  else
  {
    v25 = sub_100018FA4();
    a10(v25);
    sub_100006048();
  }
}

BOOL sub_100013094()
{
  sub_100016114();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

id sub_1000131A8()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

void *sub_10001321C(void *a1, void *a2, void *a3, char a4)
{
  v5 = [a1 callContainer];
  swift_getObjectType();
  v6 = sub_100015E24();
  swift_unknownObjectRelease();
  v7 = sub_1000163A4();
  swift_getObjectType();
  v8 = sub_100015E24();
  swift_unknownObjectRelease();
  v9 = sub_1000163A4();
  swift_getObjectType();
  v10 = sub_100015E24();
  swift_unknownObjectRelease();
  v11 = sub_1000163A4();
  swift_getObjectType();
  v12 = sub_100015E24();
  swift_unknownObjectRelease();
  v13 = sub_1000163A4();
  swift_getObjectType();
  v14 = sub_100015E24();
  swift_unknownObjectRelease();
  v15 = sub_1000163A4();
  swift_getObjectType();
  v16 = sub_100015E24();
  swift_unknownObjectRelease();
  v17 = sub_1000163A4();
  swift_getObjectType();
  v18 = sub_100015E24();
  swift_unknownObjectRelease();
  v19 = v6;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000104F8();
  if (v20)
  {
    sub_10000AA44();
  }

  sub_10000FF04();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v21 = v8;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000104F8();
  if (v20)
  {
    sub_10000AA44();
  }

  sub_10000FF04();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v22 = v10;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000104F8();
  if (v20)
  {
    sub_10000AA44();
  }

  sub_10000FF04();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v23 = v12;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000104F8();
  if (v20)
  {
    sub_10000AA44();
  }

  sub_10000FF04();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v24 = v14;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000104F8();
  if (v20)
  {
    sub_10000AA44();
  }

  sub_10000FF04();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v25 = v16;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000104F8();
  if (v20)
  {
    sub_10000AA44();
  }

  sub_10000FF04();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (a4 == 2)
  {
    if ((sub_10002EAD0() & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_17:
    v26 = v18;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_1000104F8();
    if (v20)
    {
      sub_10000AA44();
    }

    sub_10000FF04();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_20;
  }

  if (a4)
  {
    goto LABEL_17;
  }

LABEL_20:
  v27 = a3;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v28 = _swiftEmptyArrayStorage[2];
  v29 = 4;
  do
  {
    if (!v28)
    {

      goto LABEL_31;
    }

    v30 = _swiftEmptyArrayStorage[v29++];
    --v28;
  }

  while (!v30);
  v31 = v30;

  v32 = v31;
  if (![v32 isEndpointOnCurrentDevice] || objc_msgSend(v32, "status") != 4 && objc_msgSend(v32, "isTTY") && objc_msgSend(a2, "transportMethod") == 2)
  {

    v25 = v23;
    v24 = v22;
    v23 = v21;
    v22 = v19;
    v21 = v32;
    v19 = v32;
LABEL_31:

    v33 = 0;
    v34 = v18;
    goto LABEL_38;
  }

  v35 = [v32 isScreening];

  if (v35)
  {
    v34 = v32;
  }

  else
  {
    v34 = v18;
  }

  if (v35)
  {
    v33 = v18;
  }

  else
  {
    v33 = v30;
  }

LABEL_38:

  return v33;
}

void *sub_1000136D0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 16);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (a1)
    {
      v11 = a1;
      if (sub_100031608())
      {
        v12 = v11;
      }

      else
      {

        a1 = 0;
      }
    }

    v13 = sub_10001321C(*(v2 + 24), *(v2 + 32), a1, *(v2 + 88));

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013858@<X0>(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v312 = a3;
  v6 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  v7 = sub_100007BF0(v6);
  __chkstk_darwin(v7);
  v305 = &v280 - v8;
  v9 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v10 = sub_100007BF0(v9);
  __chkstk_darwin(v10);
  v302 = &v280 - v11;
  sub_10000D414();
  v303 = type metadata accessor for Date();
  sub_100007FEC();
  v299 = v12;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v298 = v15 - v14;
  v16 = sub_10000D414();
  v17 = type metadata accessor for SoundDescriptor(v16);
  v18 = sub_100007BF0(v17);
  __chkstk_darwin(v18);
  sub_100007BAC();
  v301 = (v19 - v20);
  __chkstk_darwin(v21);
  v304 = (&v280 - v22);
  v23 = sub_10000D414();
  v24 = type metadata accessor for SoundDescriptorAction(v23);
  v25 = sub_100007BF0(v24);
  __chkstk_darwin(v25);
  sub_100007BAC();
  v309 = (v26 - v27);
  __chkstk_darwin(v28);
  v308 = &v280 - v29;
  v30 = sub_10026D814(&qword_1006A61F0, &unk_10057D920);
  v31 = sub_100007BF0(v30);
  __chkstk_darwin(v31);
  sub_100007BAC();
  v307 = (v32 - v33);
  __chkstk_darwin(v34);
  *&v300 = &v280 - v35;
  v36 = sub_10026D814(&unk_1006A2B60, &qword_100581170);
  v37 = sub_100007BF0(v36);
  __chkstk_darwin(v37);
  v306 = &v280 - v38;
  v39 = sub_10000D414();
  v313 = type metadata accessor for AudioDescriptor(v39);
  sub_100008070();
  __chkstk_darwin(v40);
  sub_100007BAC();
  v43 = v41 - v42;
  __chkstk_darwin(v44);
  v46 = &v280 - v45;
  v47 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v49 = v48;
  __chkstk_darwin(v50);
  sub_100007FDC();
  v53 = (v52 - v51);
  v54 = v3[2];
  *(v52 - v51) = v54;
  (*(v49 + 104))(v52 - v51, enum case for DispatchPredicate.onQueue(_:), v47);
  v55 = v54;
  LOBYTE(v54) = _dispatchPreconditionTest(_:)();
  (*(v49 + 8))(v53, v47);
  if ((v54 & 1) == 0)
  {
    __break(1u);
LABEL_128:
    sub_100008720(&qword_1006A0B30);
LABEL_14:
    v74 = type metadata accessor for Logger();
    sub_10000AF9C(v74, qword_1006BA610);
    v75 = v53;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v316[0] = v79;
      *v78 = *(a2 + 460);
      v80 = [v75 uniqueProxyIdentifier];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v320[0] = v81;
      v320[1] = v83;
      v84 = String.init<A>(reflecting:)();
      v86 = sub_10002741C(v84, v85, v316);

      *(v78 + 4) = v86;
      sub_100005FCC(&_mh_execute_header, v87, v88, "Unable to create interruption descriptor for call with proxy identifier %s");
      sub_100009B7C(v79);
      sub_100005F40(v79);
      sub_100005F40(v78);

      goto LABEL_106;
    }

    goto LABEL_104;
  }

  v56 = v3[12];
  v310 = v43;
  *&v311 = v56;
  v57 = 0;
  v58 = 0;
  if ([v56 dualSIMRingtoneEnabled] && a1)
  {
    v59 = [a1 ringtoneSubscriptionIdentifier];
    if (v59)
    {
      v60 = v59;
      v61 = sub_100010B20(v59);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_10057D690;
      *(v62 + 56) = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
      *(v62 + 64) = sub_1003E0A9C();
      *(v62 + 32) = v60;
      v63 = a2;
      v64 = v60;
      v65 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Got following subscriptionIdentifier from call: %@", 50, 2, &_mh_execute_header, v61, v65, v62);

      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v66;

      a2 = v63;
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }
  }

  v67 = sub_1000136D0(a1);
  if (!v67)
  {

LABEL_106:
    sub_100007928();
    return sub_10000AF74(v258, v259, v260, v261);
  }

  v68 = v67;
  v294 = v3[10];
  v69 = [v294 hasInEarRouteInTipiWithCompanionWatch];
  v296 = v3;
  v297 = a2;
  if (v69)
  {
    v70 = [v68 provider];
    v71 = [v70 isSystemProvider];

    v72 = v71 ^ 1;
  }

  else
  {
    v72 = 0;
  }

  v73 = [objc_allocWithZone(TUFeatureFlags) init];
  v53 = v68;
  sub_100042148(v53, v72, v73, v322);
  memcpy(v321, v322, sizeof(v321));
  memcpy(v323, v322, 0xA8uLL);
  a2 = "com.apple.callservicesd.shareplay-session-server-terminated";
  if (sub_100043014(v323) == 1)
  {

    if (qword_1006A0B30 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_128;
  }

  v89 = LOBYTE(v323[1]);
  v90 = v323[0];
  v325 = BYTE1(v323[1]);
  memcpy(v324, &v323[1] + 2, sizeof(v324));
  if ([v311 nonInterruptingCalls])
  {
    if ([v53 status] == 4 && (objc_msgSend(v53, "hasAudioInterruption") & 1) == 0)
    {
      v91 = v296[9];
      v295 = v296[8];
      sub_100009B14(v296 + 5, v295);
      if ((*(v91 + 48))(v295, v91))
      {

        if (qword_1006A0B30 != -1)
        {
          sub_100008720(&qword_1006A0B30);
        }

        v92 = type metadata accessor for Logger();
        sub_10000AF9C(v92, qword_1006BA610);
        v75 = v53;
        v76 = Logger.logObject.getter();
        v93 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v76, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          *&v316[0] = v95;
          *v94 = 136315138;
          v96 = [v75 uniqueProxyIdentifier];
          v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v99 = v98;

          v320[0] = v97;
          v320[1] = v99;
          v100 = String.init<A>(reflecting:)();
          v102 = sub_10002741C(v100, v101, v316);

          *(v94 + 4) = v102;
          sub_100005FCC(&_mh_execute_header, v103, v104, "Other session requested no ringtone interruption, ending currentDescriptor(context:) method for call with unique proxy identifier %s");
          sub_100009B7C(v95);
          sub_100005F40(v95);
          sub_100005F40(v94);

          sub_100009A04(v322, &unk_1006A41A0, &qword_10057EFE0);
LABEL_105:

          goto LABEL_106;
        }

        sub_100009A04(v322, &unk_1006A41A0, &qword_10057EFE0);
LABEL_104:

        goto LABEL_105;
      }
    }
  }

  v293 = a1;
  v105 = v90 | (v89 << 32);
  v106 = v46;
  v107 = v313;
  v108 = v313[5];
  v109 = type metadata accessor for AudioInterruptionDeferredEndDescriptor(0);
  v285 = v108;
  sub_100007928();
  sub_10000AF74(v110, v111, v112, v109);
  v113 = &v106[v107[6]];
  *(v113 + 26) = 0u;
  *v113 = 0u;
  *(v113 + 1) = 0u;
  v281 = v113;
  v114 = v107[7];
  v295 = v53;
  v115 = &v106[v114];
  v287 = type metadata accessor for RingtoneDescriptor(0);
  v288 = v115;
  sub_100007928();
  sub_10000AF74(v116, v117, v118, v119);
  v120 = v107[8];
  v289 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v290 = v120;
  sub_10000AF74(&v106[v120], 1, 2, v289);
  v121 = &v106[v107[9]];
  *v121 = 0;
  v121[1] = 0;
  v286 = v121;
  v121[2] = 0;
  v282 = v107[10];
  v106[v282] = 1;
  v283 = v107[11];
  v122 = &v106[v283];
  v122[6] = 3;
  *(v122 + 2) = 0;
  *v122 = 0;
  v123 = v107[12];
  type metadata accessor for CallTranslationDisclosureDescriptor(0);
  v284 = v123;
  v124 = v295;
  sub_100007928();
  sub_10000AF74(v125, v126, v127, v128);
  v129 = v107[13];
  v130 = v106;
  v291 = v129;
  v292 = v105;
  v106[v129] = 1;
  v106[4] = BYTE4(v105);
  *v106 = v105;
  v106[5] = v325;
  memcpy(v106 + 6, v324, 0xA2uLL);
  memcpy(v320, v321, sizeof(v320));
  sub_100042F60(v320, v316);
  if (sub_100031608())
  {
    v131 = [v124 uniqueProxyIdentifierUUID];
    v132 = v306;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100007C20();
    sub_10000AF74(v133, v134, v135, v109);
    sub_1003E0A3C(v132, v130 + v285, &unk_1006A2B60, &qword_100581170);
  }

  v136 = v296;
  LODWORD(v306) = *(v296 + 88);
  if (v306 != 1)
  {
    goto LABEL_34;
  }

  v137 = v124;
  v109 = [v137 provider];
  v138 = [v109 supportsRinging];

  if ((v138 & 1) == 0 || [v137 resolvedCallStatus] != 4)
  {

    goto LABEL_33;
  }

  v109 = [v137 shouldSuppressRingtone];

  if (v109)
  {
LABEL_33:

LABEL_34:

    goto LABEL_35;
  }

  v139 = [v294 hasInEarRouteInTipiWithAndSmartRoutedToCompanionWatch];
  v140 = v288;
  if (v139)
  {
    v141 = [v137 provider];
    v142 = [v141 isSystemProvider];
  }

  else
  {
    v142 = 0;
  }

  v262 = v137;
  v263 = v300;
  sub_1003D4668(v262, v142, v300);
  sub_100007C20();
  v264 = v287;
  sub_10000AF74(v265, v266, v267, v287);
  sub_1003E0A3C(v263, v140, &qword_1006A61F0, &unk_10057D920);
  if ([v311 dualSIMRingtoneEnabled])
  {
    if (!v58)
    {
      goto LABEL_113;
    }

    if (!sub_100015468(v140, 1, v264))
    {
      v279 = (v140 + *(v264 + 24));
      *v279 = v57;
      v279[1] = v58;
    }
  }

LABEL_113:
  v268 = sub_1003E09D0(v262, &selRef_announceProviderIdentifier);
  v109 = v269;
  v270 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v109)
  {
    if (v268 == v270 && v109 == v271)
    {
    }

    else
    {
      v273 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v124 = v295;
      if ((v273 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    sub_1003B613C(v262, v316);
    v311 = v316[0];
    v300 = v316[1];
    v274 = v317;
    if (v319)
    {
      v275 = 256;
    }

    else
    {
      v275 = 0;
    }

    v276 = v275 | v318;
    v277 = v281;
    sub_10005081C(*v281, *(v281 + 1), *(v281 + 2), *(v281 + 3), *(v281 + 4));
    v278 = v300;
    *v277 = v311;
    *(v277 + 1) = v278;
    *(v277 + 4) = v274;
    *(v277 + 20) = v276;
  }

  else
  {
  }

  v124 = v295;
LABEL_35:
  if (v293)
  {
    v143 = v293;
    v144 = v308;
    sub_100043300(v143, v297, v308);
    v145 = v290;
    sub_100045A3C(v144, v130 + v290);
    v146 = v130 + v145;
    v147 = v309;
    sub_100045AA0(v146, v309, type metadata accessor for SoundDescriptorAction);
    if (sub_100015468(v147, 2, v289))
    {

      sub_100017368();
      v149 = v147;
    }

    else
    {
      v162 = v147;
      v163 = v304;
      sub_10004A258(v162, v304, type metadata accessor for SoundDescriptor);
      v164 = *v163;
      if (*v163 > 0x11 || ((1 << v164) & 0x22300) == 0)
      {
        sub_10000A420();
        sub_100045B54(v163, v257);

        goto LABEL_39;
      }

      v165 = v136 + OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundType;
      if (!sub_1003E06B0(*(v136 + OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundType), *(v136 + OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundType + 8), *v163) || (v166 = OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundDate, swift_beginAccess(), !sub_100015468(v136 + v166, 1, v303)) && (v167 = v299, v168 = v136 + v166, v169 = v298, v170 = v303, (*(v299 + 16))(v298, v168, v303), Date.timeIntervalSinceNow.getter(), v172 = v171, (*(v167 + 8))(v169, v170), fabs(v172) >= 2.0))
      {
        *v165 = v164;
        *(v165 + 8) = 0;
        v251 = v302;
        Date.init()();

        sub_10000A420();
        sub_100045B54(v304, v252);
        sub_100007C20();
        sub_10000AF74(v253, v254, v255, v303);
        v256 = OBJC_IVAR____TtC13callservicesd13AudioResolver_lastPlayedSoundDate;
        swift_beginAccess();
        sub_1003E0A3C(v251, v136 + v256, &qword_1006A3C70, &unk_10057EA80);
        swift_endAccess();
        goto LABEL_39;
      }

      sub_100017368();
      v173 = v290;
      sub_100045B54(v130 + v290, v174);
      sub_10000AF74(v130 + v173, 1, 2, v289);
      if (qword_1006A0B30 != -1)
      {
        sub_100008720(&qword_1006A0B30);
      }

      v175 = type metadata accessor for Logger();
      sub_10000AF9C(v175, qword_1006BA610);
      v176 = v304;
      v177 = v301;
      sub_100045AA0(v304, v301, type metadata accessor for SoundDescriptor);
      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        *&v311 = v178;
        v181 = v180;
        v182 = swift_slowAlloc();
        v314[0] = v182;
        *v181 = 136315138;
        v315 = *v177;
        type metadata accessor for TUCallSoundPlayerSoundType(0);
        v183 = String.init<A>(reflecting:)();
        v185 = v184;
        sub_10000A420();
        v309 = v186;
        sub_100045B54(v177, v187);
        v188 = sub_10002741C(v183, v185, v314);

        *(v181 + 4) = v188;
        v189 = v311;
        _os_log_impl(&_mh_execute_header, v311, v179, "Not playing sound %s because the same sound was played less than 2s ago", v181, 0xCu);
        sub_100009B7C(v182);
        sub_100005F40(v182);
        sub_100005F40(v181);

        v149 = v304;
        v148 = v309;
      }

      else
      {

        sub_100045B54(v177, type metadata accessor for SoundDescriptor);
        v149 = v176;
        v148 = type metadata accessor for SoundDescriptor;
      }
    }

    sub_100045B54(v149, v148);
LABEL_39:
    v150 = v143;
    v151 = sub_100045BAC(v150, v297);
    v153 = v152;
    v109 = v154;

    v155 = v286;
    *v286 = v151;
    v155[1] = v153;
    v155[2] = v109;
    v124 = v295;
  }

  v156 = v124;
  if ([v156 wantsHoldMusic] && objc_msgSend(v156, "status") == 1 && objc_msgSend(v156, "isConnected"))
  {
    *(v130 + v282) = 0;
    LODWORD(v311) = 1;
  }

  else
  {
    LODWORD(v311) = 0;
  }

  v157 = [v156 recordingSession];
  if (v157)
  {
    v158 = v157;
    if ([v157 recordingState] == 2 || sub_10000FB08() == 4 || sub_10000FB08() == 3 && (objc_msgSend(v158, "isRedisclosing") & 1) != 0)
    {
      v314[3] = &OBJC_PROTOCOL___CSDCallAudioInjecting;
      v159 = swift_dynamicCastObjCProtocolConditional();
      if (v159)
      {
        if ([v159 isInjectingAudio])
        {
          v160 = sub_1000114D8();
          v161 = sub_10029CD38(v160);
          sub_10000EB40(v161);
          goto LABEL_64;
        }
      }
    }
  }

  v109 = 0x3000000000000;
LABEL_64:
  v190 = [v156 podcastRecordingSession];
  if (v190)
  {
    v191 = v190;
    if ([v190 recordingState] == 2 || sub_10000FB08() == 4 || sub_10000FB08() == 3 && (objc_msgSend(v191, "isRedisclosing") & 1) != 0)
    {
      v314[4] = &OBJC_PROTOCOL___CSDCallAudioInjecting;
      v192 = swift_dynamicCastObjCProtocolConditional();
      if (v192)
      {
        v193 = [v192 isInjectingAudio];
        v194 = v310;
        if (v193)
        {
          v195 = sub_1000114D8();
          v196 = sub_10029D080(v195);
          sub_10000EB40(v196);
        }

        else
        {
        }

        goto LABEL_75;
      }
    }
  }

  v194 = v310;
LABEL_75:
  v197 = [v156 translationSession];
  if (v197)
  {
    v198 = v197;
    if ([v197 translationState] == 2 || objc_msgSend(v198, "translationState") == 4)
    {
      v199 = v325;
      v200 = v156;
      LOBYTE(v314[0]) = v199;
      v201 = v292 & 0xFFFFFFFFFFLL | (v199 << 40);
      v202 = v305;
      sub_100449A94(v200, v198, v201, v305);
      sub_100009A04(v322, &unk_1006A41A0, &qword_10057EFE0);
      sub_1003E0A3C(v202, v130 + v284, &unk_1006A2B50, &unk_1005811A0);
    }

    else
    {
      sub_100009A04(v322, &unk_1006A41A0, &qword_10057EFE0);
    }
  }

  else
  {
    sub_100009A04(v322, &unk_1006A41A0, &qword_10057EFE0);
  }

  v203 = [v156 smartHoldingSession];
  if (v203)
  {
    v204 = v203;
    if ([v203 state] == 3)
    {
      v205 = v156;
      v206 = v307;
      sub_1003D4668(v205, 0, v307);

      sub_100007C20();
      sub_10000AF74(v207, v208, v209, v287);
      sub_1003E0A3C(v206, v288, &qword_1006A61F0, &unk_10057D920);
    }

    else
    {
    }
  }

  if ([v156 receptionistState] == 3 && objc_msgSend(v156, "isScreening"))
  {
    v210 = v156;
    v211 = v307;
    sub_1003D4668(v210, 0, v307);
    sub_100007C20();
    sub_10000AF74(v212, v213, v214, v287);
    sub_1003E0A3C(v211, v288, &qword_1006A61F0, &unk_10057D920);
  }

  v215 = [v156 status];

  if (v215 == 1 || [v156 status] == 3)
  {
    *(v130 + v291) = 0;
  }

  sub_100045AA0(v130, v194, type metadata accessor for AudioDescriptor);
  v216 = sub_100046910(v156, v194);
  sub_100045B54(v194, type metadata accessor for AudioDescriptor);
  if (v216)
  {
    if (qword_1006A0B30 != -1)
    {
      sub_100008720(&qword_1006A0B30);
    }

    v217 = type metadata accessor for Logger();
    sub_10000AF9C(v217, qword_1006BA610);
    v218 = v156;

    v219 = Logger.logObject.getter();
    v220 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v219, v220))
    {
      LODWORD(v309) = (v109 & 0xFF000000000000) != 0x3000000000000;
      v221 = swift_slowAlloc();
      v310 = swift_slowAlloc();
      v315 = v310;
      *v221 = 136316162;
      v222 = [v218 uniqueProxyIdentifier];
      v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v225 = v224;

      v314[0] = v223;
      v314[1] = v225;
      v226 = String.init<A>(reflecting:)();
      v228 = sub_10002741C(v226, v227, &v315);

      *(v221 + 4) = v228;
      *(v221 + 12) = 2080;
      LOBYTE(v314[0]) = v306;
      v229 = sub_10000C844();
      v231 = sub_10002741C(v229, v230, &v315);

      *(v221 + 14) = v231;
      *(v221 + 22) = 2080;
      LOBYTE(v314[0]) = [v218 shouldSuppressRingtone];
      v232 = sub_10000C844();
      v234 = sub_10002741C(v232, v233, &v315);

      *(v221 + 24) = v234;
      *(v221 + 32) = 2080;
      LOBYTE(v314[0]) = v311;
      v235 = sub_10000C844();
      v237 = sub_10002741C(v235, v236, &v315);

      *(v221 + 34) = v237;
      *(v221 + 42) = 2080;
      LOBYTE(v314[0]) = v309;
      v238 = sub_10000C844();
      v240 = sub_10002741C(v238, v239, &v315);

      *(v221 + 44) = v240;
      _os_log_impl(&_mh_execute_header, v219, v220, "Not creating interruption for call with upi:%s, deviceSupportsRingtone: %s shouldSuppressRingtone: %s  holdMusicDescriptor: %s  hasDisclosureDescriptor: %s", v221, 0x34u);
      v241 = v310;
      swift_arrayDestroy();
      sub_100005F40(v241);
      sub_100005F40(v221);
    }

    else
    {
    }

    sub_100007928();
    sub_10000AF74(v246, v247, v248, v249);
    v245 = v130;
  }

  else
  {

    sub_100045AA0(v130, v312, type metadata accessor for AudioDescriptor);
    sub_100007C20();
    sub_10000AF74(v242, v243, v244, v313);
    v245 = v130;
  }

  return sub_100045B54(v245, type metadata accessor for AudioDescriptor);
}

uint64_t sub_100015050(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10001507C()
{
  v2 = *(v0 - 112);
  *(v0 - 192) = *(v0 - 128);
  *(v0 - 176) = v2;
  *(v0 - 167) = *(v0 - 103);

  return swift_isUniquelyReferenced_nonNull_native();
}

void *sub_10001514C(void *a1)
{

  return memcpy(a1, (v1 + 80), 0xA8uLL);
}

uint64_t sub_100015184(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000151A4(uint64_t a1)
{

  return swift_once();
}

void sub_100015268(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_100015290()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  String.append(_:)(*&v2);
}

void sub_1000152CC(uint64_t a1)
{
  v3 = v1;

  String.append(_:)(*&a1);
}

NSString sub_100015304()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100015354(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id sub_100015370()
{

  return sub_100433778(v0, v1, 0xD00000000000001ALL, v2 | 0x8000000000000000);
}

uint64_t sub_1000153C4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100015418()
{

  return swift_task_alloc();
}

id sub_100015430()
{
  v3 = *(v1 + 1160);

  return [v0 v3];
}

uint64_t sub_100015448()
{
}

uint64_t sub_1000154A4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10026D814(&unk_1006A2B60, &qword_100581170);
    sub_1000182F8();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_10026D814(&qword_1006A61F0, &unk_10057D920);
      sub_1000182F8();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        type metadata accessor for SoundDescriptorAction(0);
        sub_1000182F8();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[8];
        }

        else
        {
          v10 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
          v11 = a4[12];
        }
      }
    }

    return sub_10000AF74(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_10001561C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A9D4(&unk_10062D030);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_10000A9D4(&unk_10062D058);
  *(v7 + 16) = sub_10002E61C;
  *(v7 + 24) = v6;
  v26 = sub_10002E4B4;
  v27 = v7;
  sub_10000A204();
  sub_100008740();
  v24 = v8;
  v25 = &unk_10062D070;
  v9 = _Block_copy(v23);

  v10 = [v3 callPassingTest:v9];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
LABEL_6:
    v7 = sub_10000A9D4(&unk_10062D0A8);
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v14 = sub_10000A9D4(&unk_10062D0D0);
    *(v14 + 16) = sub_1003C714C;
    *(v14 + 24) = v7;
    v26 = sub_1003C7170;
    v27 = v14;
    sub_10000A204();
    sub_100008740();
    v24 = v15;
    v25 = &unk_10062D0E8;
    v16 = _Block_copy(v23);

    v17 = [v3 bargeCallsPassingTest:v16];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_100015958();
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!sub_10000B6F4(v19))
      {

        v12 = 0;
LABEL_13:
        v13 = sub_1003C714C;
        goto LABEL_14;
      }

      sub_10039C390(0, (v19 & 0xC000000000000001) == 0, v19);
      if ((v19 & 0xC000000000000001) == 0)
      {
        v20 = *(v19 + 32);
        goto LABEL_10;
      }

LABEL_17:
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
      v21 = v20;

      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();

      if (!v12)
      {
      }

      goto LABEL_13;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    goto LABEL_6;
  }

  v12 = v11;

  v13 = 0;
  v7 = 0;
LABEL_14:
  sub_1000051F8(v13, v7);
  return v12;
}

unint64_t sub_100015958()
{
  result = qword_1006A3AB0;
  if (!qword_1006A3AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A3AB0);
  }

  return result;
}

void sub_10001599C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t sub_1000159D4(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_100015A18(uint64_t a2, ...)
{

  return swift_beginAccess();
}

__n128 sub_100015A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 48) + 40 * a1;
  result = *a2;
  v6 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v6;
  *(v4 + 32) = *(a2 + 32);
  return result;
}

uint64_t sub_100015A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return swift_dynamicCast();
}

uint64_t sub_100015A90(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

unint64_t sub_100015AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100005208(a2, a3);
}

uint64_t sub_100015B14()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100015B34@<X0>(uint64_t a1@<X8>)
{

  return sub_1000099A4(v1 + a1, v2, v3);
}

uint64_t sub_100015B50(uint64_t a1)
{

  return static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_100015B70()
{
  v3 = *(v1 + 3312);
  v4 = *(v0 + 24);

  return [v4 v3];
}

uint64_t sub_100015BB0(uint64_t a1, uint64_t a2)
{
  sub_10000AF9C(a1, a2);

  return swift_errorRetain();
}

void sub_100015C24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_100015C58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

uint64_t sub_100015C8C()
{
}

void sub_100015CC0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_100015CEC()
{
  *(v0 + 368) = *(v2 + 16);
  *(v0 + 376) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

id sub_100015D18(uint64_t a1)
{

  return sub_10022AE64(a1);
}

uint64_t sub_100015D30()
{

  return swift_allocObject();
}

id sub_100015D50()
{
  v3 = *(v1 + 1376);

  return [v0 v3];
}

uint64_t sub_100015D80(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return os_log(_:dso:log:type:_:)(a1, 41, 2, a4, v6, a6, v7);
}

uint64_t sub_100015DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return sub_100343100(v19 - 88, va, v17, v18);
}

uint64_t sub_100015DF0()
{

  return swift_task_alloc();
}

uint64_t sub_100015E24()
{

  return sub_10001561C(v0, 0);
}

BOOL sub_100015E3C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100015E64(uint64_t a1)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100015E8C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

id sub_100015EE0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_100015EF8()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  _StringGuts.grow(_:)(16);
}

uint64_t sub_100015F38(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

uint64_t sub_100015F5C(uint64_t result)
{
  *(v4 - 104) = result;
  *(v4 - 96) = v2;
  *(v4 - 128) = v3;
  *(v4 - 88) = v1;
  return result;
}

uint64_t sub_100015FB0(uint64_t a1)
{

  return sub_100015468(a1, 1, v1);
}

uint64_t *sub_100016058()
{
  *(v1 - 136) = v0;

  return sub_1002A1D5C((v1 - 160));
}

uint64_t sub_10001607C()
{

  return swift_slowAlloc();
}

uint64_t sub_100016098()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_1000160B0()
{
  v3 = *(v1 + 2216);

  return [v0 v3];
}

uint64_t sub_1000160C8()
{

  return String.init<A>(reflecting:)();
}

void sub_1000160E0(uint64_t a1@<X8>)
{
  *(v7 + v1) |= v2;
  v8 = (v4[6] + 16 * a1);
  *v8 = v5;
  v8[1] = v6;
  *(v4[7] + 8 * a1) = v3;
  ++v4[2];
}

uint64_t sub_100016140(uint64_t a1)
{

  return swift_allocObject();
}

id sub_10001619C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = [v4 initWithUniqueIdentifier:v5 name:v6];

  return v7;
}

void sub_100016224(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x2Au);
}

uint64_t sub_100016270(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_1000162A8(uint64_t a1@<X8>)
{
  v1[12] = sub_100334A24;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t sub_1000162C0()
{

  return type metadata accessor for Locale();
}

void sub_100016310(void *a1, uint64_t a2, os_log_type_t a3)
{
  v7 = *(v5 - 160);

  _os_log_impl(a1, v4, a3, v7, v3, 0x1Cu);
}

uint64_t sub_10001634C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_100016364(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_100016384()
{

  return type metadata accessor for DispatchPredicate();
}

id sub_1000163A4()
{
  v3 = *(v1 + 544);

  return [v0 v3];
}

uint64_t sub_1000163FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016480(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_10026D814(&unk_1006A2B60, &qword_100581170);
    sub_1000182F8();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      sub_10026D814(&qword_1006A61F0, &unk_10057D920);
      sub_1000182F8();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        type metadata accessor for SoundDescriptorAction(0);
        sub_1000182F8();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[8];
        }

        else
        {
          v10 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
          v11 = a3[12];
        }
      }
    }

    return sub_100015468(a1 + v11, a2, v10);
  }
}

uint64_t sub_1000165EC()
{
  sub_10000EA30();
  v1 = type metadata accessor for Notification();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_1000166CC(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v8 = v7 - v6;
  v27 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100007FDC();
  v21 = v20 - v19;
  v22 = *(v1 + 16);
  *(v20 - v19) = v22;
  (*(v17 + 104))(v20 - v19, enum case for DispatchPredicate.notOnQueue(_:), v15);
  v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v17 + 8))(v21, v15);
  if (v22)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    *(v24 + 24) = a1 & 1;
    aBlock[4] = sub_100016E5C;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062DDE0;
    v25 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);
    (*(v4 + 8))(v8, v2);
    (*(v10 + 8))(v14, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100016A2C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100016A64(void *a1, const char *a2, int a3)
{
  v30 = a3;
  v31 = a1;
  v32 = a2;
  v4 = type metadata accessor for AudioDescriptor(0);
  __chkstk_darwin(v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10026D814(&qword_1006A9E68, &unk_100585F20);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v29[-v9];
  v11 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v29[-v16];
  v18 = __chkstk_darwin(v15);
  v20 = &v29[-v19];
  __chkstk_darwin(v18);
  v22 = &v29[-v21];
  v23 = OBJC_IVAR____TtC13callservicesd13AudioResolver_resolvedDescriptor;
  swift_beginAccess();
  sub_1000163FC(v3 + v23, v22);
  sub_100013858(v31, v32, v20);
  v24 = *(v8 + 56);
  sub_1000163FC(v22, v10);
  sub_1000163FC(v20, &v10[v24]);
  if (sub_100015468(v10, 1, v4) == 1)
  {
    if (sub_100015468(&v10[v24], 1, v4) == 1)
    {
      sub_100009A04(v10, &unk_1006A2BF0, &unk_100585F10);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1000163FC(v10, v17);
  if (sub_100015468(&v10[v24], 1, v4) == 1)
  {
    sub_100045B54(v17, type metadata accessor for AudioDescriptor);
LABEL_6:
    sub_100009A04(v10, &qword_1006A9E68, &unk_100585F20);
    goto LABEL_9;
  }

  sub_10004A258(&v10[v24], v6, type metadata accessor for AudioDescriptor);
  v25 = sub_1003CF57C(v17, v6);
  sub_100045B54(v6, type metadata accessor for AudioDescriptor);
  sub_100045B54(v17, type metadata accessor for AudioDescriptor);
  sub_100009A04(v10, &unk_1006A2BF0, &unk_100585F10);
  if (v25)
  {
LABEL_8:
    if ((v30 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_9:
  sub_1000163FC(v20, v14);
  swift_beginAccess();
  sub_1003E0A3C(v14, v3 + v23, &unk_1006A2BF0, &unk_100585F10);
  swift_endAccess();
  v26 = *(v3 + OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler);
  if (v26)
  {
    v27 = *(v3 + OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler + 8);

    v26(v22, v20, v30 & 1);
    sub_1000051F8(v26, v27);
  }

LABEL_11:
  sub_100009A04(v20, &unk_1006A2BF0, &unk_100585F10);
  return sub_100009A04(v22, &unk_1006A2BF0, &unk_100585F10);
}

uint64_t type metadata accessor for AudioDescriptor(uint64_t a1)
{
  result = qword_1006A93D0;
  if (!qword_1006A93D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016ECC()
{

  return + infix(_:_:)();
}

unint64_t sub_100016F14()
{
  result = qword_1006A2C28;
  if (!qword_1006A2C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2C28);
  }

  return result;
}

void sub_100016F8C()
{
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;

  _StringGuts.grow(_:)(19);
}

uint64_t sub_100017030()
{
  v5 = *(v0 + 8);
  v4 = v0 + 8;
  *(v2 + 1040) = v5;
  *(v2 + 1048) = v4 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  *(v3 - 120) = v5;
  *(v3 - 112) = v4;
  return result;
}

uint64_t sub_100017088(uint64_t a1, ...)
{

  return String.hash(into:)();
}

char *sub_1000170A4()
{
  v2 = *(v0 + 16) + 1;

  return sub_10039A300(0, v2, 1);
}

uint64_t sub_1000170DC(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1000170F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
}

uint64_t sub_10001711C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _NativeDictionary._delete(at:)();
}

uint64_t sub_100017138(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000171B4(unint64_t *a1)
{

  return sub_10000EF18(a1, v1, &unk_100582F54);
}

uint64_t sub_1000171DC(uint64_t a1)
{

  return sub_100015468(v1, 2, a1);
}

uint64_t sub_1000171FC(uint64_t a1)
{

  return sub_100015468(v1, 1, a1);
}

uint64_t sub_10001725C()
{

  return sub_10002741C(v0, v1, (v2 - 112));
}

id sub_1000172C0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void *sub_1000172D8(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v1;
  return result;
}

uint64_t sub_1000172E8()
{

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100017340(uint64_t a1)
{
  *(v3 - 112) = v1;
  *(v3 - 88) = a1;

  return Notification.init(name:object:userInfo:)(v2, v3 - 112, 0);
}

void sub_100017380(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_1000173CC()
{
}

uint64_t sub_1000173F4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_1000051F8(v4, v5);
}

uint64_t sub_100017418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return swift_getObjectType();
}

uint64_t type metadata accessor for SoundDescriptor(uint64_t a1)
{
  result = qword_1006A7F88;
  if (!qword_1006A7F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SoundDescriptorAction(uint64_t a1)
{
  result = qword_1006A6098;
  if (!qword_1006A6098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001756C(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___CSDRouteController_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    goto LABEL_25;
  }

  v10 = *(v2 + OBJC_IVAR___CSDRouteController_routeProviders);
  if (*(v10 + 16))
  {
    v11 = 0;
    v12 = v10 + 32;
    v31 = *(v10 + 16);
    v32 = v10;
    v30 = v10 + 32;
LABEL_4:
    if (v11 >= *(v10 + 16))
    {
      goto LABEL_26;
    }

    v13 = (v12 + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    v33 = v11 + 1;
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 8);
    swift_unknownObjectRetain();
    v34 = v15;
    v35 = v14;
    v18 = v17(ObjectType, v15);
    v19 = sub_10000B6F4(v18);
    for (i = 0; ; ++i)
    {
      if (v19 == i)
      {
        swift_unknownObjectRelease();

        v10 = v32;
        v11 = v33;
        v12 = v30;
        if (v33 != v31)
        {
          goto LABEL_4;
        }

        return;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v21 = *(v18 + 8 * i + 32);
      }

      v22 = v21;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v23 = [v21 uniqueIdentifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      if (v24 == a1 && v26 == v36)
      {

LABEL_22:

        return;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_100017840()
{
  sub_1000115C0();
  if ((v4 & 1) == 0 || (sub_10000A27C(), v5 == v6))
  {
LABEL_6:
    sub_10000ABE4();
    if (v3)
    {
      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      v7 = sub_100008B38();
      j__malloc_size(v7);
      sub_1000103FC();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = sub_10000F95C();
        sub_100060528(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_10000FFF4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_10000E7FC();
  if (!v5)
  {
    sub_10000862C();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_100017900(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___CSDRouteController_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v46 = v2;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v45 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v17;
    if (!v15)
    {
      break;
    }

LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = (*(a2 + 48) + ((v17 << 10) | (16 * v20)));
    v23 = *v21;
    v22 = v21[1];
    v24 = *(a1 + 16);

    if (v24 && (sub_100005208(v23, v22), (v25 & 1) != 0))
    {
    }

    else
    {
      sub_10001756C(v23, v22);
      if (v26)
      {
        v28 = v27;

        sub_10026D814(&qword_1006A8D18, &qword_100584DA8);
        if (swift_dynamicCastClass())
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100017840();
            v45 = v39;
          }

          v31 = v45[2];
          v30 = v45[3];
          v43 = v31 + 1;
          if (v31 >= v30 >> 1)
          {
            sub_100017840();
            v45 = v40;
          }

          result = swift_unknownObjectRelease();
          v32 = v45;
          v45[2] = v43;
          v33 = &v32[2 * v31];
          goto LABEL_25;
        }
      }

      else
      {
        v28 = 0;
      }

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v44 = v28;
      if ((v34 & 1) == 0)
      {
        sub_100017840();
        v18 = v37;
      }

      v36 = v18[2];
      v35 = v18[3];
      v43 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_100017840();
        v18 = v38;
      }

      result = swift_unknownObjectRelease();
      v18[2] = v43;
      v33 = &v18[2 * v36];
LABEL_25:
      v33[4] = v23;
      v33[5] = v22;
    }
  }

  while (1)
  {
    v17 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v17 >= v16)
    {
      break;
    }

    v15 = *(a2 + 64 + 8 * v17);
    ++v19;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  if (*(v46 + OBJC_IVAR___CSDRouteController__intelligentRoutingManager))
  {
    sub_1000192A8();
    v42 = v41;
    sub_1003D5A2C();
  }
}

uint64_t sub_100017CAC(uint64_t a1, unint64_t a2)
{
  sub_100009B7C((v2 - 168));

  return sub_10002741C(a1, a2, (v2 - 176));
}

id sub_100017D10(uint64_t a1, const char *a2)
{
  v7 = *(v5 - 328);
  v8 = *(v5 - 312);

  return [v2 a2];
}

void sub_100017D70(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, os_log_type_t a15)
{

  _os_log_impl(a1, v15, a15, a4, v16, 0xCu);
}

id sub_100017D94()
{
  v3 = *(v1 + 680);

  return [v0 v3];
}

id sub_100017DAC(void *a1)
{
  v4 = *(v2 + 344);

  return [a1 v4];
}

uint64_t sub_100017DC4(uint64_t a1, uint64_t a2)
{

  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100017DEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100335188(v4 + v5, v6 - 120, a3, a4);
}

uint64_t sub_100017E7C()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100017ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 56) + 16 * v8);
  result = v9[1];
  *v9 = v7;
  v9[1] = v6;
  return result;
}

void sub_100017EF8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100017F18(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_100017FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100018040(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10026DCB4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1000180D4@<X0>(unint64_t a1@<X8>)
{

  return sub_10039A300((a1 > 1), v1, 1);
}

void sub_100018124(uint64_t a1@<X8>)
{
  v1[12] = sub_100463158;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t sub_100018204(uint64_t a1)
{

  return sub_100015468(v1, 1, a1);
}

uint64_t sub_100018288()
{

  return sub_10026D814(v1, v0);
}

uint64_t sub_1000182CC(unint64_t *a1)
{

  return sub_10001000C(a1, v1, v2, &protocol conformance descriptor for [A]);
}

uint64_t sub_100018324(uint64_t a1)
{

  return static NSObject.== infix(_:_:)();
}

void sub_100018350(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

void sub_100018388(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_1000183FC(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void sub_10001841C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ((sub_100018B9C(a2, a3, a4) & 1) == 0)
    {
LABEL_12:

      return;
    }

    if (a2)
    {
      v9 = a2;
      if ([v9 isReceiver])
      {

LABEL_8:
        v13 = &v8[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
        *v13 = 0;
        *(v13 + 1) = 0;
LABEL_11:

        v16 = sub_100010B20(v15);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_10057D690;
        v18 = &v8[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
        v19 = *&v8[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
        v20 = *&v8[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier + 8];

        v21 = sub_10001E478(v19, v20);
        v23 = v22;

        *(v17 + 56) = &type metadata for String;
        *(v17 + 64) = sub_100009D88();
        *(v17 + 32) = v21;
        *(v17 + 40) = v23;
        v24 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Picked route changed to: %@", 27, 2, &_mh_execute_header, v16, v24, v17);

        v25 = *v18;
        v26 = v18[1];

        sub_10045BAD0(v25, v26);

        goto LABEL_12;
      }

      v12 = [v9 isSpeaker];

      if (v12)
      {
        goto LABEL_8;
      }

      v10 = sub_10045B6CC();
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v14 = &v8[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
    *v14 = v10;
    v14[1] = v11;
    goto LABEL_11;
  }
}

id sub_10001866C(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v2;
  *v3 = v2;

  return v2;
}

void HandoffAudioController.routesChanged(for:)()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v40 = v8 - v7;
  v9 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v39 = v10;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v38 = v13 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100007FDC();
  v20 = v19 - v18;
  v21 = *(v0 + OBJC_IVAR___CSDHandoffAudioController_callCenterQueue);
  *(v19 - v18) = v21;
  (*(v16 + 104))(v19 - v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v20, v14);
  if (v23)
  {
    v24 = [v2 receiverRoute];
    v37 = v5;
    v25 = [v2 speakerRoute];
    v26 = [v2 pickedRoute];
    sub_100006890();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v26;
    v28[4] = v24;
    v28[5] = v25;
    v41[4] = sub_100018608;
    v41[5] = v28;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v41[2] = v29;
    v41[3] = &unk_100631318;
    v36 = v9;
    v30 = _Block_copy(v41);

    v35 = v26;
    v31 = v24;
    v32 = v25;
    static DispatchQoS.unspecified.getter();
    sub_10000AB3C();
    sub_100017FB0(v33, v34, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v37 + 8))(v40, v3);
    (*(v39 + 8))(v38, v36);

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100018A98()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0);
}

uint64_t sub_100018ACC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100018B9C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR___CSDHandoffAudioController_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (a1)
    {
      v14 = a1;
      if ([v14 isBluetooth])
      {
        v15 = *(v3 + OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier + 8);
        if (v15)
        {
          v16 = *(v3 + OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier);

          if (v16 != sub_10045B6CC() || v15 != v17)
          {
            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v19)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

LABEL_36:
          v30 = 0;
          return v30 & 1;
        }

LABEL_35:
        v30 = 1;
        return v30 & 1;
      }
    }

    v20 = (v3 + OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier);
    v21 = *(v3 + OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier + 8);
    if (!v21)
    {
      goto LABEL_36;
    }

    v22 = *v20;
    if (a2)
    {

      if (v22 == sub_10045B6CC() && v21 == v23)
      {
LABEL_28:

        goto LABEL_36;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_36;
      }

      v22 = *v20;
      v21 = v20[1];
    }

    if (a3)
    {

      v26 = sub_10045B6CC();
      if (v21)
      {
        if (v27)
        {
          if (v22 != v26 || v21 != v27)
          {
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v30 = v29 ^ 1;
            return v30 & 1;
          }

          goto LABEL_28;
        }
      }

      else if (!v27)
      {
        goto LABEL_36;
      }
    }

    else
    {

      if (!v21)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018EF0(uint64_t a1, void *a2)
{
  *a2 = v2;

  return _swift_continuation_throwingResumeWithError(v3, a1);
}

uint64_t sub_100018F10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

uint64_t sub_100018F34()
{
}

uint64_t sub_100018F58()
{
}

uint64_t sub_100018FD0()
{

  return swift_slowAlloc();
}

uint64_t sub_10001917C()
{
  sub_10026D814(&qword_1006A8D08, &qword_100584DA0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t sub_1000191FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR___CSDRouteController__routesByUniqueIdentifier;
  swift_beginAccess();
  *a2 = *(a1 + v4);
}

void sub_1000192A8()
{
  v1 = OBJC_IVAR___CSDRouteController__intelligentRoutingManager;
  v2 = *&v0[OBJC_IVAR___CSDRouteController__intelligentRoutingManager];
  if (v2)
  {
    goto LABEL_4;
  }

  sub_1003B7458();
  v4 = v3;
  v5 = [objc_allocWithZone(type metadata accessor for SharedConversationServerBag()) init];
  v6 = objc_allocWithZone(type metadata accessor for IntelligentRoutingManager());
  v7 = sub_1003BB044(v4, 0, 0, 0, 0, v5, v6);
  v8 = *&v0[v1];
  *&v0[v1] = v7;
  v9 = v7;

  sub_1003BAAB0(v0, v9);
  v10 = *&v0[v1];
  if (v10)
  {
    v10;
    v2 = 0;
LABEL_4:
    v11 = v2;
    return;
  }

  __break(1u);
}

uint64_t sub_100019378()
{
  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

void *sub_1000197C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v21 = *(result + *((swift_isaMask & *result) + 0x60));
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v13;
    aBlock[4] = sub_100019BE8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062CA40;
    v15 = _Block_copy(aBlock);
    v20 = v8;
    v16 = v15;
    v17 = a1;
    v19 = v13;
    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v20);
  }

  return result;
}

uint64_t sub_100019AF4()
{
  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

void sub_100019B34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100019BB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_100019BF4(void (*a1)(uint64_t), void *a2)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v4 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D690;
  v26 = a1;
  sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
  v6 = a1;
  v7 = String.init<A>(reflecting:)();
  v9 = v8;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100009D88();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Device changed: %@", 18, 2, &_mh_execute_header, v4, v10, v5);

  v11 = [v6 effectiveIdentifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = sub_10001A9F0();
    v17 = *((swift_isaMask & *a2) + 0x78);
    if (v16)
    {
      swift_beginAccess();
      v18 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100379364(v18, v12, v14, isUniquelyReferenced_nonNull_native, v20, v21, v22, v23, *(a2 + v17), v26);
      *(a2 + v17) = v25;

      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      v24 = sub_10001B760(v12, v14);
      swift_endAccess();
    }

    sub_10001B630();
  }

  else
  {
  }
}

uint64_t sub_100019E3C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + qword_1006A4D40);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_75;
  }

  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v8 = qword_1006BA380;
    v128 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v9 = swift_allocObject();
    v126 = xmmword_10057D690;
    *(v9 + 16) = xmmword_10057D690;
    sub_10001B3D0();
    v152[0] = v10;
    sub_10026D814(&qword_1006A2210, &qword_10057CBA0);
    v11 = String.init<A>(reflecting:)();
    v13 = v12;
    *(v9 + 56) = &type metadata for String;
    v127 = sub_100009D88();
    *(v9 + 64) = v127;
    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
    v14 = static os_log_type_t.default.getter();
    v129 = v8;
    os_log(_:dso:log:type:_:)("Updating nearby device routes using devices: %@", 47, 2, &_mh_execute_header, v8, v14, v9);

    v137 = &_swiftEmptySetSingleton;
    v15 = *(v1 + qword_1006A4D28);

    v17 = v15(v16);

    v18 = *(v1 + qword_1006A4D30);

    v20 = v18(v19);

    v21 = *(v1 + qword_1006A4D80);
    v22 = &off_1006A4000;
    v23 = &selRef_pseudonymPropertiesWithFeatureID_scopeID_expiryDurationInSeconds_;
    if (v21 != 1 || (v17 & 1) == 0 || (v20 & 1) == 0)
    {
      v96 = v21 ^ 1;
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_10057D6A0;
      LOBYTE(v152[0]) = v96;
      v98 = String.init<A>(reflecting:)();
      v99 = v127;
      *(v97 + 56) = &type metadata for String;
      *(v97 + 64) = v99;
      *(v97 + 32) = v98;
      *(v97 + 40) = v100;
      LOBYTE(v152[0]) = (v17 & 1) == 0;
      v101 = String.init<A>(reflecting:)();
      *(v97 + 96) = &type metadata for String;
      *(v97 + 104) = v99;
      *(v97 + 72) = v101;
      *(v97 + 80) = v102;
      v103 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Current calls do not support nearby devices (%@) or device doesn't support primary calling (%@)", 95, 2, &_mh_execute_header, v129, v103, v97);
      goto LABEL_59;
    }

    sub_10001B3D0();
    v25 = v24;
    result = sub_10000B6F4(v24);
    if (result)
    {
      break;
    }

LABEL_59:

    v104 = *(v22[430] + v1);
    if (!v104)
    {
      return sub_10001B388(v137);
    }

    v105 = [v104 v23[144]];
    if (!v105)
    {
      return sub_10001B388(v137);
    }

    v106 = 0;
    v107 = 1 << v137[32];
    v108 = -1;
    if (v107 < 64)
    {
      v108 = ~(-1 << v107);
    }

    v109 = v108 & *(v137 + 7);
    v110 = (v107 + 63) >> 6;
    while (v109)
    {
      v111 = v106;
LABEL_70:
      v112 = __clz(__rbit64(v109));
      v109 &= v109 - 1;
      if (*(*(v137 + 6) + 72 * (v112 | (v111 << 6)) + 40))
      {

        return sub_10001B388(v137);
      }
    }

    while (1)
    {
      v111 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        break;
      }

      if (v111 >= v110)
      {
        v113 = v105;
        sub_1002BA89C(v113, v138);
        v147 = *v138;
        v148 = *&v138[16];
        v149 = *&v138[32];
        v150 = 1;
        *v151 = *&v138[41];
        *&v151[15] = *&v138[56];
        sub_10001C174(&v147, v136);
        sub_10001C1D0(v134, &v147);

        memcpy(v135, v134, 0x48uLL);
        sub_1002F6EC4(v135);
        *v136 = *v138;
        *&v136[16] = *&v138[16];
        *&v136[32] = *&v138[32];
        v136[40] = 1;
        *&v136[41] = *&v138[41];
        *&v136[56] = *&v138[56];
        sub_1002F6EC4(v136);
        return sub_10001B388(v137);
      }

      v109 = *&v137[8 * v111 + 56];
      ++v106;
      if (v109)
      {
        v106 = v111;
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  if (result >= 1)
  {
    v27 = result;
    v28 = 0;
    v29 = (v1 + qword_1006A4D38);
    v131 = qword_1006A4D78;
    v132 = v25 & 0xC000000000000001;
    v125 = qword_1006A4D58;
    v122 = qword_1006A4D70;
    v130 = result;
    while (1)
    {
      if (v132)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v25 + 8 * v28 + 32);
      }

      v31 = v30;
      if (*(v1 + v131) != 1 || (v32 = sub_10001B8C8(v30, &selRef_idsDeviceIdentifier), v33) && (v34 = v32, v35 = v33, v36 = *v29, , v37 = v36(v34, v35), v27 = v130, v38 = v37, , , v38) && (v39 = [v38 canReceiveRelayedGFTCalls], v38, v39))
      {
        v40 = sub_10001B8C8(v31, &selRef_idsDeviceIdentifier);
        if (v41)
        {
          v42 = v40;
          v43 = v41;
          v44 = *v29;

          v45 = v44(v42, v43);
          v27 = v130;
          v46 = v45;

          if (v46)
          {
            v47 = [v46 canReceiveRelayedCalls];

            if ((v47 & 1) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        if (!sub_1003B6DD8())
        {
          sub_100009AB0(v1 + v125, &v147);
          v59 = sub_10001B928(&v147);
          sub_100009B7C(&v147);
          if (v59)
          {
            v60 = v31;
            v61 = v59;
            sub_10001BA88(v60, v61, &v139);
            v124 = v140;
            if (v140)
            {
              v62 = v139;
              v63 = v142;
              v64 = v143;
              v65 = v145;
              v135[0] = v141;
              v133[0] = *v144;
              *(v133 + 3) = *&v144[3];
              v134[0] = v146;
              if (v142 == 13)
              {
                v66 = v61;
                v67 = v145;
                v68 = v25;
                v69 = v29;
                v70 = v1;
                v71 = v143;

                *&v147 = v62;
                *(&v147 + 1) = v124;
                v148 = v141;
                v149 = 13;
                v150 = v71;
                v1 = v70;
                v29 = v69;
                v25 = v68;
                *v151 = *v144;
                *&v151[3] = *&v144[3];
                *&v151[7] = v67;
                v72 = v146;
                goto LABEL_54;
              }

              v79 = *(v1 + v122);
              v123 = v145;
              v120 = v60;
              v121 = v61;
              if (v79)
              {
                v118 = v143;
                v119 = v142;
                v80 = [v79 remoteDevice];
                if (!v80)
                {
                  goto LABEL_44;
                }

                v81 = v80;
                v115 = sub_10001B8C8(v60, &selRef_idsDeviceIdentifier);
                v117 = v82;
                v83 = [v81 uniqueIDOverride];
                if (v83)
                {
                  v84 = v83;
                  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v116 = v85;

                  if (v117)
                  {
                    if (v116)
                    {
                      if (v115 != v114 || v117 != v116)
                      {
                        v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v87)
                        {
LABEL_52:
                          v64 = 1;
                          v65 = v123;
                          v63 = v119;
                          goto LABEL_53;
                        }

LABEL_44:
                        v88 = *(v1 + v122);
                        if (v88)
                        {
                          v89 = [v88 remoteDestination];
                          v65 = v123;
                          v63 = v119;
                          v64 = v118;
                          if (v89)
                          {
                            v90 = v89;
                            sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
                            v91 = static NSObject.== infix(_:_:)();

                            v63 = v119;
                            v65 = v123;
                            if (v91)
                            {
                              v64 = 1;
                            }

                            else
                            {
                              v64 = v118;
                            }
                          }
                        }

                        else
                        {
                          v65 = v123;
                          v63 = v119;
                          v64 = v118;
                        }

                        goto LABEL_53;
                      }

LABEL_51:

                      goto LABEL_52;
                    }

LABEL_41:
                  }

                  else
                  {

                    if (!v116)
                    {
                      goto LABEL_52;
                    }
                  }

                  goto LABEL_44;
                }

                if (!v117)
                {
                  goto LABEL_51;
                }

                goto LABEL_41;
              }

LABEL_53:
              v92 = v124;
              v152[0] = v62;
              v152[1] = v124;
              v153 = v135[0];
              v154 = v63;
              v155 = v64;
              *v156 = v133[0];
              *&v156[3] = *(v133 + 3);
              v157 = v65;
              v158 = v134[0];
              v93 = v62;
              v94 = v63;
              v95 = v64;
              sub_10001C174(v152, v138);
              sub_10001C1D0(v136, v152);

              memcpy(v138, v136, sizeof(v138));
              sub_1002F6EC4(v138);
              *&v147 = v93;
              *(&v147 + 1) = v92;
              v148 = v135[0];
              v149 = v94;
              v150 = v95;
              *v151 = v133[0];
              *&v151[3] = *(v133 + 3);
              *&v151[7] = v123;
              v72 = v134[0];
LABEL_54:
              *&v151[15] = v72;
              sub_1002F6EC4(&v147);
            }

            else
            {
              v73 = static os_log_type_t.error.getter();
              v74 = swift_allocObject();
              *(v74 + 16) = v126;
              *&v147 = v60;
              sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
              v75 = v60;
              v76 = String.init<A>(reflecting:)();
              v77 = v127;
              *(v74 + 56) = &type metadata for String;
              *(v74 + 64) = v77;
              *(v74 + 32) = v76;
              *(v74 + 40) = v78;
              os_log(_:dso:log:type:_:)("Could not convert NearbyDevice to NearbyDeviceRoute: %@", 55, 2, &_mh_execute_header, v129, v73, v74);
            }

            v27 = v130;
            goto LABEL_56;
          }

LABEL_27:

          goto LABEL_56;
        }

        v48 = swift_allocObject();
        *(v48 + 16) = v126;
        *&v147 = v31;
        sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
        v49 = v31;
        v50 = String.init<A>(reflecting:)();
        v51 = v127;
        *(v48 + 56) = &type metadata for String;
        *(v48 + 64) = v51;
        *(v48 + 32) = v50;
        *(v48 + 40) = v52;
        v53 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("filtering out device: %@", 24, 2, &_mh_execute_header, v129, v53, v48);
      }

      else
      {
        v54 = swift_allocObject();
        *(v54 + 16) = v126;
        *&v147 = v31;
        sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
        v49 = v31;
        v55 = String.init<A>(reflecting:)();
        v56 = v127;
        *(v54 + 56) = &type metadata for String;
        *(v54 + 64) = v56;
        *(v54 + 32) = v55;
        *(v54 + 40) = v57;
        v58 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("filtering out device: %@ because it does not support GFT", 56, 2, &_mh_execute_header, v129, v58, v54);
      }

LABEL_56:
      if (v27 == ++v28)
      {
        v23 = &selRef_pseudonymPropertiesWithFeatureID_scopeID_expiryDurationInSeconds_;
        v22 = &off_1006A4000;
        goto LABEL_59;
      }
    }
  }

  __break(1u);
  return result;
}