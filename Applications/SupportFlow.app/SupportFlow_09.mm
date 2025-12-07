void sub_1000DF74C(char a1, char a2, uint64_t a3)
{
  if (qword_1001882C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C2D4(v6, qword_1001A5858);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "isMessagesSettingsEnabled: %{BOOL}d", v9, 8u);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "isIDSNetworkFailure: %{BOOL}d", v12, 8u);
  }

  *(a3 + qword_1001A5878) = a1 & 1;
  v13 = qword_1001A5880;
  *(a3 + qword_1001A5880) = a2 & 1;
  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950)
  {
    KeyPath = swift_getKeyPath();
    v15 = sub_1000FBFA4(KeyPath);

    if (v15)
    {
      *(a3 + v13) = 1;
    }
  }
}

uint64_t sub_1000DF978()
{
  sub_100025A94();
  *(v1 + 72) = v0;
  v2 = type metadata accessor for MainActor();
  *(v1 + 80) = sub_10006F3C8(v2);
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  v3 = sub_100062F00();

  return _swift_task_switch(v3, v4, v5);
}

void sub_1000DF9F8()
{
  v1 = sub_1000DD3E4();
  if (!v1)
  {

LABEL_8:
    sub_1000E2A30();

    v5(v6 | v7);
    return;
  }

  v2 = v1;
  v3 = sub_1000E2554(v1);
  if (!v3)
  {

    goto LABEL_7;
  }

  v4 = v3;
  if (sub_1000DD1E8(v3))
  {

LABEL_7:

    goto LABEL_8;
  }

  v30 = v2;
  if ((v4 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_1000E25F0();
    sub_1000E266C(&qword_100191578, sub_1000E25F0, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v8 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[6];
  }

  else
  {
    sub_1000E2A0C();
    v9 = v4 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(v13 << v15);
    }

    else
    {
      v16 = v13;
    }

    v12 = v16 & *(v4 + 56);

    v10 = 0;
    v8 = v4;
  }

  v17 = 0;
  v18 = (v11 + 64) >> 6;
  v19 = 1;
  v31 = v8;
  if (v8 < 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v20 = v10;
  v21 = v12;
  v22 = v10;
  if (v12)
  {
LABEL_22:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v8 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v24)
    {
LABEL_38:
      sub_100077BA0(v31);

      goto LABEL_8;
    }

    while (1)
    {
      v19 &= [v24 registrationStatus] == -1;
      v17 |= ([v24 registrationError] & 0xFFFFFFFE) == 28;
      v26 = [v24 accountType];
      if (v26 == 1)
      {
        if ((sub_1000DFD84() & 1) == 0)
        {
          goto LABEL_35;
        }

        if ([v24 isActive])
        {
          if ([v24 registrationStatus] == 5)
          {
            goto LABEL_35;
          }

          v27 = sub_1000E24E8(v24);
          if (!v27)
          {
            goto LABEL_40;
          }

          v28 = *(v27 + 16);

          if (!v28)
          {
LABEL_35:

            v17 = 1;
            goto LABEL_36;
          }
        }

        v29 = sub_1000DFDE0(1);

        v17 |= v29;
      }

      else
      {
        if (!v26)
        {
          goto LABEL_35;
        }
      }

LABEL_36:
      v10 = v22;
      v12 = v23;
      v8 = v31;
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_24:
      v25 = __CocoaSet.Iterator.next()();
      if (v25)
      {
        v0[8] = v25;
        sub_1000E25F0();
        swift_dynamicCast();
        v24 = v0[7];
        v22 = v10;
        v23 = v12;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_38;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
      goto LABEL_38;
    }

    v21 = *(v9 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_1000DFD84()
{
  result = sub_1000E24E8(v0);
  if (result)
  {
    v2 = *(result + 16);

    if (v2)
    {

      return sub_1000DFDE0(0);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DFDE0(int a1)
{
  v2 = v1;
  v24 = a1;
  v28 = type metadata accessor for CharacterSet();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  result = sub_1000E2490(v2);
  if (result)
  {
    v7 = result;
    v26 = *(result + 16);
    if (!v26)
    {
LABEL_17:

      return 0;
    }

    v8 = 0;
    v25 = "_actionPerformedSteps";
    v27 = (v3 + 8);
    v21 = result;
    v22 = kFZServiceDefaultsSentinelAlias;
    v9 = result + 40;
    while (v8 < *(v7 + 16))
    {
      v29 = String.lowercased()();
      static CharacterSet.whitespaces.getter();
      sub_10000AC24();
      v10 = StringProtocol.trimmingCharacters(in:)();
      v12 = v11;
      v13 = *v27;
      (*v27)(v5, v28);

      v14._object = (v25 | 0x8000000000000000);
      v14._countAndFlagsBits = 0xD000000000000017;
      if (String.hasSuffix(_:)(v14))
      {
      }

      else
      {
        if ((v24 & 1) == 0)
        {

LABEL_19:

          return 1;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = String.lowercased()();

        v29 = v15;
        static CharacterSet.whitespaces.getter();
        v16 = StringProtocol.trimmingCharacters(in:)();
        v18 = v17;
        v13(v5, v28);

        if (v10 == v16 && v12 == v18)
        {
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        result = [v23 isActive];
        v7 = v21;
        if (result)
        {
          goto LABEL_19;
        }
      }

      ++v8;
      v9 += 16;
      if (v26 == v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E0164()
{
  sub_1000E03E4(*(v0 + qword_1001910A0));
  sub_10003F68C(*(v0 + qword_1001A58A8));

  v1 = qword_1001910B0;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1000E01F0()
{
  v0 = sub_100105A10();
  sub_1000E03E4(*(v0 + qword_1001910A0));
  sub_10003F68C(*(v0 + qword_1001A58A8));

  v1 = qword_1001910B0;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1000E027C()
{
  v0 = sub_1000E01F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MessagesFlowViewModel(uint64_t a1)
{
  result = qword_1001910E0;
  if (!qword_1001910E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E031C(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000E03E4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000E03F4()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10000C30C();
  v6 = v5 - v4;
  v7 = type metadata accessor for Logger();
  sub_10000C270(v7, qword_1001A5858);
  sub_10000C2D4(v7, qword_1001A5858);
  (*(v2 + 104))(v6, enum case for SupportFlowIdentifier.messages(_:), v0);
  return Logger.init(flowId:)();
}

id sub_1000E04E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithService:v3];

  return v4;
}

uint64_t sub_1000E0548()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  v2 = sub_100056A10(v1);
  *v2 = v3;
  sub_100062F48(v2);

  return sub_1000DE914(v0);
}

uint64_t sub_1000E05CC()
{
  sub_100025A94();
  v2 = v1;
  sub_10004622C();
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  sub_1000E2A30();

  return v5(v2);
}

uint64_t sub_1000E06B4()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  v2 = sub_100056A10(v1);
  *v2 = v3;
  sub_100062F48(v2);

  return sub_1000DE9B4(v0);
}

uint64_t sub_1000E0738()
{
  sub_100025A94();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100062F48(v1);

  return sub_1000DEA54();
}

uint64_t sub_1000E07BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100191560, &qword_10012F7C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1000E082C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepContentOption(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  sub_10000C30C();
  v8 = v7 - v6;
  v21 = v2;
  v9 = *v2;
  Hasher.init(_seed:)();
  v10 = a2;
  sub_1000FF33C();
  Hasher._finalize()();
  sub_1000E2A0C();
  v13 = ~v12;
  while (1)
  {
    v14 = v11 & v13;
    v15 = (1 << (v11 & v13)) & *(v9 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000E28C4(v10, v8);
      v23 = *v21;
      sub_1000E13F0(v8, v14, isUniquelyReferenced_nonNull_native);
      *v21 = v23;
      sub_1000E2984(v10, a1);
      return v15 == 0;
    }

    v16 = *(v5 + 72) * v14;
    sub_1000E28C4(*(v9 + 48) + v16, v8);
    sub_1000FEB64();
    v18 = v17;
    sub_1000E2928(v8);
    if (v18)
    {
      break;
    }

    v11 = v14 + 1;
  }

  sub_1000E2928(v10);
  sub_1000E28C4(*(v9 + 48) + v16, a1);
  return v15 == 0;
}

BOOL sub_1000E09E4(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  Hasher.init(_seed:)();
  sub_100058C3C(v16, a2);
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16[0] = *v3;
      sub_1000136E0(a2);
      sub_1000E15DC(a2, v8, isUniquelyReferenced_nonNull_native);
      *v3 = v16[0];
      *a1 = a2;
      return v9 == 0;
    }

    v10 = *(*(v5 + 48) + 8 * v8);
    sub_1000136E0(v10);
    v11 = sub_100058B18(v10, a2);
    sub_10003F67C(v10);
    if (v11)
    {
      break;
    }

    v6 = v8 + 1;
  }

  sub_10003F67C(a2);
  v13 = *(*(v5 + 48) + 8 * v8);
  *a1 = v13;
  sub_1000136E0(v13);
  return v9 == 0;
}

BOOL sub_1000E0B24(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_1000E2A0C();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_1000E1738(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

Swift::Int sub_1000E0C6C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FlowStepContentOption(0);
  v31 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100003768(&qword_100191590, &unk_10012F8B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return result;
  }

  v30 = v1;
  v9 = 0;
  v10 = (v6 + 56);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 56);
  v14 = (v11 + 63) >> 6;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      sub_1000E18A0(0, (v28 + 63) >> 6, v6 + 56);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v31 + 72);
    sub_1000E2984(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5);
    Hasher.init(_seed:)();
    sub_1000FF33C();
    result = Hasher._finalize()();
    v20 = -1 << *(v8 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_1000E2984(v5, *(v8 + 48) + v23 * v19);
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v15 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_1000E0F48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003768(&qword_100191580, &qword_10012F8A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1000E18A0(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    sub_100058C3C(v26, v16);
    result = Hasher._finalize()();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_1000E1194(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003768(&qword_100191588, &qword_10012F8A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1000E18A0(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000E13F0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FlowStepContentOption(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000E0C6C(v12 + 1);
      goto LABEL_10;
    }

    if (v13 <= v12)
    {
      sub_1000E1D8C(v12 + 1);
LABEL_10:
      v19 = *v4;
      Hasher.init(_seed:)();
      sub_1000FF33C();
      v20 = Hasher._finalize()();
      v21 = ~(-1 << *(v19 + 32));
      while (1)
      {
        a2 = v20 & v21;
        if (((*(v19 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1000E28C4(*(v19 + 48) + *(v9 + 72) * a2, v11);
        sub_1000FEB64();
        v23 = v22;
        sub_1000E2928(v11);
        if (v23)
        {
          goto LABEL_15;
        }

        v20 = a2 + 1;
      }
    }

    sub_1000E1904();
  }

LABEL_7:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1000E2984(a1, *(v14 + 48) + *(v9 + 72) * a2);
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

unint64_t sub_1000E15DC(unint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000E0F48(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_1000E2038(v7 + 1);
LABEL_10:
      v13 = *v3;
      Hasher.init(_seed:)();
      sub_100058C3C(v17, v6);
      result = Hasher._finalize()();
      v14 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v13 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v15 = *(*(v13 + 48) + 8 * a2);
        sub_1000136E0(v15);
        v16 = sub_100058B18(v15, v6);
        sub_10003F67C(v15);
        if (v16)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1000E1AE4();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

unint64_t sub_1000E1738(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1000E1194(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1000E225C(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1000E1C34();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1000E18A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10012F730;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1000E1904()
{
  v1 = v0;
  v2 = type metadata accessor for FlowStepContentOption(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003768(&qword_100191590, &unk_10012F8B0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1000E28C4(*(v6 + 48) + v21, v5);
        result = sub_1000E2984(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void *sub_1000E1AE4()
{
  v1 = v0;
  sub_100003768(&qword_100191580, &qword_10012F8A0);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1000136E0(v18);
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

void *sub_1000E1C34()
{
  v1 = v0;
  sub_100003768(&qword_100191588, &qword_10012F8A8);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

Swift::Int sub_1000E1D8C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FlowStepContentOption(0);
  v29 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100003768(&qword_100191590, &unk_10012F8B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v29 + 72);
        sub_1000E28C4(*(v6 + 48) + v18 * (v15 | (v9 << 6)), v5);
        Hasher.init(_seed:)();
        sub_1000FF33C();
        result = Hasher._finalize()();
        v19 = -1 << *(v8 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        result = sub_1000E2984(v5, *(v8 + 48) + v22 * v18);
        ++*(v8 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v9 >= v13)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v17 = *(v6 + 56 + 8 * v9);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v8;
  }

  return result;
}

Swift::Int sub_1000E2038(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003768(&qword_100191580, &qword_10012F8A0);
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        sub_1000136E0(v15);
        sub_100058C3C(v24, v15);
        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1000E225C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003768(&qword_100191588, &qword_10012F8A8);
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000E2490(void *a1)
{
  v1 = [a1 aliasStrings];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000E24E8(void *a1)
{
  v1 = [a1 aliases];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100003768(&qword_10018B580, &unk_100128EB0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000E2554(void *a1)
{
  v1 = [a1 accounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000E25F0();
  sub_1000E266C(&qword_100191578, sub_1000E25F0, &protocol conformance descriptor for NSObject);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1000E25F0()
{
  result = qword_100191570;
  if (!qword_100191570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100191570);
  }

  return result;
}

uint64_t sub_1000E263C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DD47C();
  *a1 = result;
  return result;
}

uint64_t sub_1000E266C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E26B4()
{
  if (*(v0 + 16) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E26F4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v18 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v19 = (v7 - 1) & v7;
LABEL_13:
      v12 = *(*(result + 48) + 8 * (v9 | (v3 << 6)));
      Hasher.init(_seed:)();
      sub_1000136E0(v12);
      sub_100058C3C(v20, v12);
      v13 = Hasher._finalize()();
      v14 = ~(-1 << *(a2 + 32));
      do
      {
        v15 = v13 & v14;
        if (((*(a2 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          sub_10003F67C(v12);
          return 0;
        }

        v16 = *(*(a2 + 48) + 8 * v15);
        sub_1000136E0(v16);
        v17 = sub_100058B18(v16, v12);
        sub_10003F67C(v16);
        v13 = v15 + 1;
      }

      while ((v17 & 1) == 0);
      sub_10003F67C(v12);
      result = v18;
      v7 = v19;
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v19 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_1000E28B4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1000E28C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepContentOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E2928(uint64_t a1)
{
  v2 = type metadata accessor for FlowStepContentOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E2984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepContentOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E2A18()
{

  return swift_slowAlloc();
}

void sub_1000E2A3C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 8u);
}

void sub_1000E2A5C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

_BYTE *storeEnumTagSinglePayload for AirPodsStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x1000E2B48);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000E2BAC(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E2C24()
{
  sub_1000E8A44();
  v1 = v0 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  sub_1000E8B48();
  v5 = v4;
  v6 = v3;
  v7 = v1;
  switch(v5)
  {
    case 1:
      v7 = 0xE600000000000000;
      v6 = 0x776569766572;
      break;
    case 2:
      v7 = 0xE600000000000000;
      v6 = 0x796669726576;
      break;
    case 3:
      sub_1000E8B9C();
      sub_1000E8C08();
      v7 = v1 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      v1 = 0xE600000000000000;
      v3 = 0x776569766572;
      break;
    case 2:
      v1 = 0xE600000000000000;
      v3 = 0x796669726576;
      break;
    case 3:
      sub_1000E8AFC();
      sub_1000E89EC();
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8AC4(v6, v2, v3);
  }

  return v9 & 1;
}

uint64_t sub_1000E2D58(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x73694C6575737369;
  v4 = a1;
  v5 = 0x73694C6575737369;
  v6 = 0xE900000000000074;
  switch(v4)
  {
    case 1:
      v5 = 0x655364656B636F6CLL;
      v6 = 0xEE00797469727563;
      break;
    case 2:
      v5 = sub_1000E8CC8();
      v6 = 0x64726F7773;
      goto LABEL_6;
    case 3:
      sub_1000E8CA0();
      sub_1000E8BC8();
LABEL_6:
      v6 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 4:
      v5 = 0xD000000000000015;
      v6 = 0x8000000100133110;
      break;
    case 5:
      v5 = 0x52746E756F636361;
      v6 = 0xEF797265766F6365;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      sub_1000E8DF0();
      break;
    case 2:
      sub_1000E8B48();
      sub_1000E8A44();
      goto LABEL_13;
    case 3:
      sub_1000E8B5C();
      v2 = 0x746E756F63;
LABEL_13:
      v2 = v2 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 4:
      sub_1000E8AB8();
      break;
    case 5:
      sub_1000E8C40();
      sub_1000E8DD0();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8AC4(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1000E2F24(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6F666E4961746562;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6F666E4961746562;
  switch(v4)
  {
    case 1:
      sub_1000E8CDC();
      sub_1000E8A34();
      v3 = 0xEF73000000000000;
      break;
    case 2:
      sub_1000E8D94();
      break;
    case 3:
      v5 = sub_1000E8BE8(16);
      break;
    case 4:
      v5 = 0x6F53676E696D6F63;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 5:
      sub_1000E8D58();
      v5 = v6 | 6;
      break;
    case 6:
      v5 = 0x68744F726F727265;
      v3 = 0xEA00000000007265;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      sub_1000E8D30();
      sub_1000E8BF8();
      v7 = 0xEF73000000000000;
      break;
    case 2:
      v2 = 0x7641657461647075;
      v7 = 0xEF656C62616C6961;
      break;
    case 3:
      sub_1000E8C50();
      break;
    case 4:
      v2 = 0x6F53676E696D6F63;
      v7 = 0xEA00000000006E6FLL;
      break;
    case 5:
      sub_1000E8DE4();
      v2 = 0xD000000000000016;
      break;
    case 6:
      v2 = 0x68744F726F727265;
      v7 = 0xEA00000000007265;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8A54(v5, a2, v2);
  }

  return v9 & 1;
}

uint64_t sub_1000E3128(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x676F6C616964;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x676F6C616964;
  switch(v4)
  {
    case 1:
      sub_1000E8CC8();
      sub_1000E8A44();
      goto LABEL_5;
    case 2:
      v5 = 0x706574537478656ELL;
      v3 = 0xE900000000000073;
      break;
    case 3:
      v5 = sub_1000E8CA0();
      v3 = 0x746E756F63;
LABEL_5:
      v3 = v3 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      sub_1000E8B48();
      v6 = 0x64726F7773;
      goto LABEL_10;
    case 2:
      v2 = 0x706574537478656ELL;
      v6 = 0xE900000000000073;
      break;
    case 3:
      sub_1000E8B5C();
      sub_1000E8BC8();
LABEL_10:
      v6 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E3274()
{
  sub_1000A03E4();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x616470556F747561;
  }

  if (v3)
  {
    v5 = 0xEB00000000736574;
  }

  else
  {
    v5 = v1;
  }

  if (v0)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x616470556F747561;
  }

  if (v0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0xEB00000000736574;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8A54(v4, v0, v6);
  }

  return v9 & 1;
}

uint64_t sub_1000E3328()
{
  sub_1000E8C60();
  sub_1000E8C40();
  v4 = v3 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
  v5 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v6 = 0x73656369766564;
    }

    else
    {
      v6 = 0x63416B636F6C6E75;
    }

    if (v5 == 1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xED0000746E756F63;
    }
  }

  else
  {
    v6 = v4;
    v7 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v4 = 0x73656369766564;
    }

    else
    {
      v4 = 0x63416B636F6C6E75;
    }

    if (v2 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xED0000746E756F63;
    }
  }

  if (v6 == v4 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8AC4(v6, v2, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000E3424(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000022;
  v3 = "M";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000002ALL;
    }

    else
    {
      v5 = 0xD00000000000002CLL;
    }

    if (v4 == 1)
    {
      v6 = "USTED_PHONE_ACCESS";
    }

    else
    {
      v6 = "USTED_PHONE_START_RECOVERY";
    }
  }

  else
  {
    v5 = 0xD000000000000022;
    v6 = "M";
  }

  if (a2)
  {
    v3 = "USTED_PHONE_ACCESS";
    v2 = a2 == 1 ? 0xD00000000000002ALL : 0xD00000000000002CLL;
    if (a2 != 1)
    {
      v3 = "USTED_PHONE_START_RECOVERY";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E34FC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000022;
  v3 = "Sharing";
  v4 = "Sharing";
  v5 = a1;
  v6 = 0xD000000000000022;
  switch(v5)
  {
    case 1:
      v4 = "UNT_PASSWORD_RESET";
      v6 = 0xD000000000000026;
      break;
    case 2:
      v4 = "UNT_REVIEW_INFORMATION";
      break;
    case 3:
      v4 = "UNT_VERIFY_DEVICES";
      v6 = 0xD00000000000001ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "UNT_PASSWORD_RESET";
      v2 = 0xD000000000000026;
      break;
    case 2:
      v3 = "UNT_REVIEW_INFORMATION";
      break;
    case 3:
      v3 = "UNT_VERIFY_DEVICES";
      v2 = 0xD00000000000001ELL;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54(v6, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E3630(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7265735561746562;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x7265735561746562;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1701736302;
      break;
    case 2:
      v5 = sub_1000E8BE8(16);
      break;
    case 3:
      sub_1000E8D58();
      v5 = v6 | 2;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE400000000000000;
      v2 = 1701736302;
      break;
    case 2:
      sub_1000E8C50();
      break;
    case 3:
      sub_1000E8DE4();
      v2 = 0xD000000000000012;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8A54(v5, a2, v2);
  }

  return v9 & 1;
}

uint64_t sub_1000E37B0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC0000004F464E49;
  v3 = 0x5F415445425F5553;
  v4 = a1;
  v5 = "SU_UPDATES_AVAILABLE";
  v6 = "SU_ERROR_INSUFFICIENT_SPACE";
  v7 = 0x5F415445425F5553;
  v8 = 0xEC0000004F464E49;
  v9 = "SU_COMING_SOON_AUTO_UPDATES";
  switch(v4)
  {
    case 1:
      sub_1000E8CDC();
      sub_1000E8BF8();
      v8 = 0xEF7300004F464E49;
      break;
    case 2:
      v7 = 0x4E494D4F435F5553;
      v11 = 0x4E4F4F535F47;
      goto LABEL_8;
    case 3:
      v7 = 0xD00000000000001BLL;
      v10 = "es";
      goto LABEL_6;
    case 4:
      v7 = 0xD00000000000001BLL;
      v10 = "SU_COMING_SOON_AUTO_UPDATES";
LABEL_6:
      v8 = v10 | 0x8000000000000000;
      break;
    case 5:
      v7 = 0x524F5252455F5553;
      v11 = 0x524548544F5FLL;
LABEL_8:
      v8 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 6:
      v8 = 0x8000000100132C80;
      v7 = 0xD000000000000014;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      sub_1000E8D30();
      sub_1000E8A34();
      v2 = 0xEF7300004F464E49;
      break;
    case 2:
      v3 = 0x4E494D4F435F5553;
      v13 = 0x4E4F4F535F47;
      goto LABEL_17;
    case 3:
      v3 = 0xD00000000000001BLL;
      v12 = v9 - 32;
      goto LABEL_15;
    case 4:
      v3 = 0xD00000000000001BLL;
      v12 = v6 - 32;
LABEL_15:
      v2 = v12 | 0x8000000000000000;
      break;
    case 5:
      v3 = 0x524F5252455F5553;
      v13 = 0x524548544F5FLL;
LABEL_17:
      v2 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 6:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v2)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1000E8AC4(v7, a2, v3);
  }

  return v15 & 1;
}

uint64_t sub_1000E39D8()
{
  sub_1000E89A0();
  sub_1000E8B5C();
  v5 = v4;
  v6 = v2;
  v7 = v0;
  switch(v5)
  {
    case 1:
      v7 = 0x8000000100133170;
      v6 = 0xD000000000000015;
      break;
    case 2:
      v7 = 0x8000000100133190;
      v6 = v3 + 5;
      break;
    case 3:
      break;
    default:
      v7 = 0x8000000100133150;
      v6 = v3 + 1;
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x8000000100133170;
      v2 = 0xD000000000000015;
      break;
    case 2:
      v0 = 0x8000000100133190;
      v2 = v3 + 5;
      break;
    case 3:
      break;
    default:
      v0 = 0x8000000100133150;
      v2 = v3 + 1;
      break;
  }

  if (v6 == v2 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8AC4(v6, v1, v2);
  }

  return v9 & 1;
}

uint64_t sub_1000E3B24()
{
  sub_1000E8D80();
  v3 = "reportUnavailable";
  v4 = 1701736302;
  v5 = "insightsAvailable";
  switch(v6)
  {
    case 1:
      v4 = 0x6574746142776F6CLL;
      v0 = 0xEA00000000007972;
      break;
    case 2:
      sub_1000E8E04();
      break;
    case 3:
      v4 = 0xD000000000000011;
      v7 = "wBattery";
      goto LABEL_6;
    case 4:
      v4 = 0xD000000000000011;
      v7 = "insightsAvailable";
LABEL_6:
      v0 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v8 = 0xE400000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x6574746142776F6CLL;
      v8 = 0xEA00000000007972;
      break;
    case 2:
      v2 = 0x61426C616D726F6ELL;
      v8 = 0xED00007972657474;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v9 = v5 - 32;
      goto LABEL_12;
    case 4:
      v2 = 0xD000000000000011;
      v9 = v3 - 32;
LABEL_12:
      v8 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v4 == v2 && v0 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000E8A54(v4, v1, v2);
  }

  return v11 & 1;
}

uint64_t sub_1000E3CD0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x64656C6261736964;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x64656C6261736964;
  switch(v4)
  {
    case 1:
      v5 = 0x656E6E6F63736964;
      v3 = 0xEC00000064657463;
      break;
    case 2:
      v5 = sub_1000E8BE8(18);
      break;
    case 3:
      v5 = 0x6E6769536B616577;
      v3 = 0xEA00000000006C61;
      break;
    case 4:
      sub_1000E8DA8();
      break;
    case 5:
      v5 = 0x63657465446E7076;
      v3 = 0xEB00000000646574;
      break;
    case 6:
      v3 = 0x8000000100132970;
      v5 = 0xD000000000000014;
      break;
    case 7:
      sub_1000E8A34();
      goto LABEL_10;
    case 8:
      v5 = sub_1000E8B9C();
      v3 = 0x74726F707075;
LABEL_10:
      v3 = v3 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x656E6E6F63736964;
      v6 = 0xEC00000064657463;
      break;
    case 2:
      sub_1000E8C50();
      break;
    case 3:
      v2 = 0x6E6769536B616577;
      v6 = 0xEA00000000006C61;
      break;
    case 4:
      v2 = 0x4474726174736572;
      v6 = 0xED00006563697665;
      break;
    case 5:
      v2 = 0x63657465446E7076;
      v6 = 0xEB00000000646574;
      break;
    case 6:
      sub_1000E8DE4();
      v2 = 0xD000000000000014;
      break;
    case 7:
      sub_1000E8D1C();
      sub_1000E8BF8();
      goto LABEL_20;
    case 8:
      sub_1000E8AFC();
      sub_1000E8C08();
LABEL_20:
      v6 = 0xEE00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E3F5C()
{
  v0 = 1702196083;
  sub_1000E8D10();
  sub_1000E8C40();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
  v5 = v4;
  v6 = v3;
  v7 = 1702196083;
  switch(v5)
  {
    case 1:
      sub_1000E8BC8();
      v7 = 0xED00000065757373;
      break;
    case 2:
      sub_1000E8B9C();
      sub_1000E8C08();
      v7 = 0xEE00000065757373;
      break;
    case 3:
      v6 = 0x756F636341646461;
      v7 = 0xEA0000000000746ELL;
      break;
    case 4:
      v6 = 0x75516E6F6D6D6F63;
      v7 = 0xEF736E6F69747365;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_1000E89A0();
      break;
    case 2:
      sub_1000E8AFC();
      sub_1000E89EC();
      break;
    case 3:
      v3 = 0x756F636341646461;
      v0 = 0xEA0000000000746ELL;
      break;
    case 4:
      sub_1000E8CFC();
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8AC4(v6, v1, v3);
  }

  return v9 & 1;
}

uint64_t sub_1000E40F8()
{
  sub_1000E8B88();
  v3 = 0x615065676E616863;
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x6573616863727570;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001001329E0;
    }

    else
    {
      v6 = 0xEF79726F74736948;
    }
  }

  else
  {
    v5 = 0x615065676E616863;
    v6 = v0;
  }

  if (v2)
  {
    sub_1000A03E4();
    if (v8 == 1)
    {
      v3 = v9;
    }

    else
    {
      v3 = 0x6573616863727570;
    }

    if (v8 == 1)
    {
      v0 = v7;
    }

    else
    {
      v0 = 0xEF79726F74736948;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000E8AC4(v5, v2, v3);
  }

  return v11 & 1;
}

uint64_t sub_1000E4228()
{
  sub_1000E8D80();
  v3 = 1701736302;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v3 = 0x6F507269416C6C61;
      v0 = 0xEA00000000007364;
      break;
    case 3:
      v3 = 0x507269416F6D6564;
      v0 = 0xEB0000000073646FLL;
      break;
    case 4:
      v0 = 1685016690;
      sub_1000E8D10();
      break;
    default:
      v3 = 0xD000000000000018;
      v0 = 0x8000000100133060;
      break;
  }

  v5 = 0xE400000000000000;
  switch(v1)
  {
    case 1:
      break;
    case 2:
      v2 = 0x6F507269416C6C61;
      v5 = 0xEA00000000007364;
      break;
    case 3:
      v2 = 0x507269416F6D6564;
      v5 = 0xEB0000000073646FLL;
      break;
    case 4:
      v2 = 0x6941656C676E6973;
      v5 = 0xED000073646F5072;
      break;
    default:
      sub_1000E8DE4();
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000E8A54(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_1000E4408(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000011;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x53656761726F7473;
    }

    if (v3 == 1)
    {
      v5 = 0x8000000100132970;
    }

    else
    {
      v5 = 0xEF73676E69747465;
    }
  }

  else
  {
    v5 = 0x8000000100133430;
    v4 = 0xD000000000000011;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0x53656761726F7473;
    }

    if (a2 == 1)
    {
      v6 = 0x8000000100132970;
    }

    else
    {
      v6 = 0xEF73676E69747465;
    }
  }

  else
  {
    v6 = 0x8000000100133430;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E44F4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6E496E676973;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x65526E496E676973;
    }

    else
    {
      v4 = 0x7361507465736572;
    }

    if (v3 == 1)
    {
      v5 = 0xEE00797265766F63;
    }

    else
    {
      v5 = 0xED000064726F7773;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6E496E676973;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x65526E496E676973;
    }

    else
    {
      v2 = 0x7361507465736572;
    }

    if (a2 == 1)
    {
      v6 = 0xEE00797265766F63;
    }

    else
    {
      v6 = 0xED000064726F7773;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E4628(char a1, uint64_t a2)
{
  v3 = 0xD00000000000001BLL;
  v4 = "openApp";
  v5 = "openApp";
  switch(a1)
  {
    case 1:
      v5 = "BATTERY_NORMAL_USAGE_REVIEW";
      goto LABEL_5;
    case 2:
      v5 = "BATTERY_NORMAL_SUGGESTIONS";
      v3 = 0xD000000000000017;
      break;
    case 3:
      v5 = "BATTERY_SERVICE_SUPPORT";
LABEL_5:
      v3 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  v6 = 0xD00000000000001BLL;
  switch(a2)
  {
    case 1:
      v4 = "BATTERY_NORMAL_USAGE_REVIEW";
      goto LABEL_10;
    case 2:
      v4 = "BATTERY_NORMAL_SUGGESTIONS";
      v6 = 0xD000000000000017;
      break;
    case 3:
      v4 = "BATTERY_SERVICE_SUPPORT";
LABEL_10:
      v6 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54(v3, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_1000E4780(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x73746E756F636361;
  }

  else
  {
    v3 = 0x53746E756F636361;
  }

  if (v2)
  {
    v4 = 0xEF73676E69747465;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x73746E756F636361;
  }

  else
  {
    v5 = 0x53746E756F636361;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEF73676E69747465;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E4868(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000E8A54(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_1000E48F8()
{
  sub_1000A03E4();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0xD00000000000001BLL;
  }

  else
  {
    v4 = 0x676E697461657263;
  }

  if (v3)
  {
    v5 = 0xEC00000065736143;
  }

  else
  {
    v5 = v1;
  }

  if (v0)
  {
    v6 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = 0x676E697461657263;
  }

  if (v0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0xEC00000065736143;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000E8A54(v4, v0, v6);
  }

  return v9 & 1;
}

uint64_t sub_1000E4994(uint64_t a1, uint64_t a2)
{
  v5 = 1701736270;
  type metadata accessor for SupportFlowIdentifier();
  sub_10007B688();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000C30C();
  v11 = v10 - v9;
  v12 = type metadata accessor for DefaultFlowOverride(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  sub_10002CE08(a1, &v30 - v16);
  sub_100096960(v17);
  if (v27)
  {
    v20 = 0xE400000000000000;
    v18 = 1701736270;
  }

  else
  {
    (*(v7 + 32))(v11, v17, v2);
    v18 = SupportFlowIdentifier.rawValue.getter();
    v20 = v19;
    v21 = sub_100052F8C();
    v22(v21);
  }

  sub_10002CE08(a2, v15);
  sub_100096960(v15);
  if (v27)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    (*(v7 + 32))(v11, v15, v2);
    v5 = SupportFlowIdentifier.rawValue.getter();
    v24 = v23;
    v25 = sub_100052F8C();
    v26(v25);
  }

  v27 = v18 == v5 && v20 == v24;
  if (v27)
  {
    v28 = 1;
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v28 & 1;
}

uint64_t sub_1000E4BB0(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x73676E6974746573;
  }

  else
  {
    v3 = 0x7070416E65706FLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x73676E6974746573;
  }

  else
  {
    v5 = 0x7070416E65706FLL;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E8A54(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E4C44()
{
  type metadata accessor for SupportFlowIdentifier();
  sub_1000E88A8(&qword_100191630, &type metadata accessor for SupportFlowIdentifier, &protocol conformance descriptor for SupportFlowIdentifier);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000E8AC4(v6, v0, v4);
  }

  return v2 & 1;
}

Swift::Int sub_1000E4DE4(uint64_t a1)
{
  v1 = sub_1000E8BB0(a1);
  sub_1000E8A24(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E4EB0(uint64_t a1)
{
  v1 = sub_1000E8BB0(a1);
  sub_1000E8A24(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E4F44(uint64_t a1)
{
  sub_1000E8BB0(a1);
  v1 = sub_1000680C0();
  sub_1000E8A94(v1, v2, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000E5004(uint64_t a1)
{
  v1 = a1;
  sub_1000E8BB0(a1);
  Hasher._combine(_:)(v1 - 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000E5048(uint64_t a1)
{
  v1 = sub_1000E8BB0(a1);
  sub_1000E8A24(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1000E8CF0();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E50BC(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1000E8BB0(a1);
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000E51B8(uint64_t a1)
{
  v1 = sub_1000E8BB0(a1);
  sub_1000E8A24(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E5254(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1000E8BB0(a1);
  v4 = a2(a1);
  sub_1000E8A94(v4, v5, v6);

  return Hasher._finalize()();
}

Swift::Int sub_1000E52C4(uint64_t a1, uint64_t a2)
{
  sub_1000E8BB0(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E530C(uint64_t a1)
{
  v1 = a1;
  sub_1000E8BB0(a1);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000E5374()
{
  sub_1000E8A00();
  switch(v0)
  {
    case 3:
      sub_1000E89EC();
      sub_1000E8B34();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5418(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1000E8DF0();
      break;
    case 2:
      sub_1000E8A00();
      break;
    case 3:
      sub_1000E89A0();
      sub_1000E8B20();
      break;
    case 4:
      sub_1000E8AB8();
      break;
    case 5:
      sub_1000E8DD0();
      sub_1000E8B10();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E54F8()
{
  sub_1000E8DBC();
  switch(v0)
  {
    case 1:
      sub_1000E8A34();
      sub_1000E8C88();
      break;
    case 2:
      sub_1000E8D94();
      break;
    case 3:
    case 5:
      sub_1000E8AB8();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E560C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1000E8A00();
      break;
    case 3:
      sub_1000E89A0();
      sub_1000E8B20();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E56B8()
{
  sub_1000A03E4();
  String.hash(into:)();
}

uint64_t sub_1000E5744(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_1000E8C60();
    sub_1000E8B10();
  }

  String.hash(into:)();
}

uint64_t sub_1000E57D4(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1000E585C(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1000E5914()
{
  sub_1000E8DBC();
  switch(v0)
  {
    case 1:
      sub_1000E8C18();
      break;
    case 2:
    case 3:
      sub_1000E8AB8();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5A0C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1000E8A34();
      sub_1000E8C88();
      break;
    case 3:
    case 4:
    case 6:
      sub_1000E8AB8();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5B5C(uint64_t a1)
{
  sub_1000E89A0();
  sub_1000E8B20();
  switch(v1)
  {
    case 3:
      break;
    default:
      sub_1000E8AB8();
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5C38(uint64_t a1, uint64_t a2)
{
  sub_1000E8C18();
  switch(v2)
  {
    case 2:
      sub_1000E8E04();
      break;
    case 3:
    case 4:
      sub_1000E8CF0();
      sub_1000E8AB8();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5D1C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 6:
      sub_1000E8AB8();
      break;
    case 4:
      sub_1000E8DA8();
      break;
    case 7:
      sub_1000E8A34();
      break;
    case 8:
      sub_1000E89EC();
      sub_1000E8B34();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5E98(uint64_t a1)
{
  sub_1000E8D10();
  sub_1000E8B10();
  switch(v1)
  {
    case 1:
      sub_1000E89A0();
      break;
    case 2:
      sub_1000E89EC();
      sub_1000E8B34();
      break;
    case 4:
      sub_1000E8CFC();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E5FAC(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1000E89B4();
  }

  else
  {
    sub_1000E8B88();
    sub_1000E8D44();
  }

  String.hash(into:)();
}

uint64_t sub_1000E6054(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1000E60C0(uint64_t a1, uint64_t a2)
{
  sub_1000E8C18();
  switch(v2)
  {
    case 1:
    case 2:
    case 3:
      break;
    case 4:
      sub_1000E8D10();
      break;
    default:
      sub_1000E8AB8();
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1000E61D8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1000E8A70();
    sub_1000E8AE0();
  }

  else
  {
    sub_1000E8CF0();
    sub_1000E8AB8();
  }

  String.hash(into:)();
}

uint64_t sub_1000E625C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_1000E8D6C();
  }

  String.hash(into:)();
}

uint64_t sub_1000E6308(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1000E63DC(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1000E64E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  String.hash(into:)();
}

uint64_t sub_1000E6538()
{
  sub_1000A03E4();
  String.hash(into:)();
}

uint64_t sub_1000E65AC(uint64_t a1)
{
  v3 = v1;
  type metadata accessor for SupportFlowIdentifier();
  sub_10007B688();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000C30C();
  v9 = v8 - v7;
  v10 = type metadata accessor for DefaultFlowOverride(0);
  __chkstk_darwin(v10 - 8);
  sub_10000C30C();
  v13 = v12 - v11;
  sub_10002CE08(v3, v12 - v11);
  sub_100096960(v13);
  if (!v14)
  {
    (*(v5 + 32))(v9, v13, v2);
    SupportFlowIdentifier.rawValue.getter();
    v15 = sub_100052F8C();
    v16(v15);
  }

  String.hash(into:)();
}

Swift::Int sub_1000E6700(uint64_t a1)
{
  Hasher.init(_seed:)();
  v1 = sub_1000680C0();
  sub_1000E8A94(v1, v2, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000E6744(uint64_t a1, uint64_t a2)
{
  sub_1000E8C28(a1, a2);
  sub_1000A03E4();
  if (v2)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0x676E697461657263;
  }

  sub_1000E8C70(v3, v5, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1000E6804(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_1000E8A24(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E6854(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E8C28(a1, a2);
  if (v2)
  {
    v5 = 0x73746E756F636361;
  }

  else
  {
    v5 = 0x53746E756F636361;
  }

  sub_1000E8C70(v3, v5, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1000E6918(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E8C28(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x65526E496E676973;
    }

    else
    {
      v5 = 0x7361507465736572;
    }
  }

  else
  {
    sub_1000E8D6C();
  }

  sub_1000E8C70(v3, v5, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1000E69C8(uint64_t a1, uint64_t a2)
{
  sub_1000E8C28(a1, a2);
  if (v2)
  {
    sub_1000E8A70();
    sub_1000E8AE0();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    sub_1000E8CF0();
    sub_1000E8AB8();
  }

  sub_1000E8C70(v3, v8, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1000E6A80(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E8C28(a1, a2);
  if (v2)
  {
    v5 = 0x73676E6974746573;
  }

  else
  {
    v5 = 0x7070416E65706FLL;
  }

  sub_1000E8C70(v3, v5, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1000E6B38(uint64_t a1, uint64_t a2)
{
  sub_1000E8C28(a1, a2);
  if (v2)
  {
    sub_1000E89B4();
    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    sub_1000E8B88();
    sub_1000E8D44();
  }

  sub_1000E8C70(v3, v8, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1000E6B9C(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_1000E8A24(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1000E8CF0();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E6C04(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 - 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000E6C64(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_1000E8A24(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E6CF8(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_1000E8A24(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E6D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E6E58(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000E6EF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E8C28(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x73656369766564;
    }

    else
    {
      v5 = 0x63416B636F6C6E75;
    }
  }

  else
  {
    sub_1000E8C60();
    sub_1000E8B10();
    v5 = v6 & 0xFFFFFFFFFFFFLL | 0x4974000000000000;
  }

  sub_1000E8C70(v3, v5, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1000E6FA0(uint64_t a1, uint64_t a2)
{
  sub_1000E8C28(a1, a2);
  sub_1000A03E4();
  if (v2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x616470556F747561;
  }

  sub_1000E8C70(v3, v5, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1000E7060(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  sub_1000E8A94(v5, v6, v7);

  return Hasher._finalize()();
}

Swift::Int sub_1000E70CC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a3(v6, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000E7118(uint64_t a1, uint64_t a2)
{
  sub_1000E8C28(a1, a2);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000E7154()
{
  sub_1000A03E4();
  if (v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x676E697461657263;
  }
}

unint64_t sub_1000E7240(char a1)
{
  result = 0x5349445F49464957;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6E6769536B616577;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x63657465446E7076;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000E7430(char a1)
{
  if (a1)
  {
    sub_1000E8A70();
    sub_1000E8AE0();
  }

  else
  {
    sub_10009E06C();
  }
}

void sub_1000E7488(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
      return;
    default:
      sub_10009E06C();
      break;
  }
}

uint64_t sub_1000E7610(char a1)
{
  if (!a1)
  {
    return 0x615065676E616863;
  }

  sub_1000E89B4();
  if (v3)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_1000E76A0(uint64_t a1)
{
  sub_1000E8CA0();
  switch(v1)
  {
    case 1:
      sub_10009E06C();
      break;
    default:
      return;
  }
}

void sub_1000E7770(char a1)
{
  switch(a1)
  {
    case 1:
      sub_1000E8CDC();
      break;
    case 3:
    case 4:
      sub_10009E06C();
      break;
    default:
      return;
  }
}

void sub_1000E7888(uint64_t a1)
{
  sub_1000E8CA0();
  switch(v1)
  {
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
      return;
    case 3:
      sub_1000E8CB4(27);
      break;
    default:
      sub_10009E06C();
      break;
  }
}

uint64_t sub_1000E7A20(char a1)
{
  if (!a1)
  {
    return 0x49746E756F636361;
  }

  if (a1 == 1)
  {
    return 0x73656369766564;
  }

  return 0x63416B636F6C6E75;
}

uint64_t sub_1000E7A8C()
{
  sub_1000A03E4();
  if (v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x616470556F747561;
  }
}

void sub_1000E7ADC(char a1)
{
  switch(a1)
  {
    case 1:
    case 10:
    case 11:
    case 13:
      sub_10009E06C();
      break;
    case 5:
    case 6:
      sub_1000E8CB4(16);
      break;
    case 9:
      sub_1000E8B70();
      break;
    default:
      return;
  }
}

uint64_t sub_1000E7CC0(char a1)
{
  sub_1000E8140(a1);
  v3 = v2;
  if (v1 == 0xD000000000000014 && 0x8000000100133300 == v2)
  {

    goto LABEL_13;
  }

  v5 = v1;
  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
LABEL_13:
    v45 = 0;
    sub_100003768(&qword_10018BFB0, &qword_100126DB0);
    sub_100057D3C();
    sub_100065C4C();
    sub_1000E8E18();
    _ConditionalContent<>.init(storage:)();
    v11 = &qword_100191610;
    v12 = &qword_10012FA48;
    sub_1000E8E18();
    sub_100006578(v13, v14, v15, v16);
    v46 = 0;
    v17 = sub_100052F8C();
    sub_100003768(v17, v18);
    sub_100003768(&qword_100191618, &qword_10012FA50);
    sub_1000E8798();
    sub_1000E8824();
    sub_1000E8BD8();
    _ConditionalContent<>.init(storage:)();
    v19 = &v32;
    return sub_10001D724(v19, v11, v12);
  }

  sub_1000E8D1C();
  if (v5 == v8 && v3 == v7)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      sub_100003768(&qword_100191610, &qword_10012FA48);
      sub_100003768(&qword_100191618, &qword_10012FA50);
      sub_1000E8798();
      sub_1000E8824();
      sub_1000E8BD8();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  v41 = &type metadata for AirPodsStepProvider;
  v42 = sub_100004C8C();
  v40[0] = 11;
  sub_1000E8E18();
  sub_100006578(v20, v21, v22, v23);
  type metadata accessor for FlowViewDataProvider(0);
  sub_1000E88A8(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  v32 = Environment.init<A>(_:)();
  v33 = v24 & 1;
  v34 = 0xD000000000000018;
  v35 = 0x8000000100133320;
  v36 = 2;
  v37 = 1;
  v38 = 0;
  v39 = 0;
  sub_10000B5A8(&v32, v44);
  v44[104] = 1;
  sub_10000B604();
  sub_10000B658();
  _ConditionalContent<>.init(storage:)();
  sub_10000B6AC(&v32);
  sub_10001D724(v40, &qword_100189310, &qword_1001221A0);
  v11 = &qword_10018BFB0;
  v12 = &qword_100126DB0;
  sub_1000E8E18();
  sub_100006578(v25, v26, v27, v28);
  v45 = 1;
  v29 = sub_100052F8C();
  sub_100003768(v29, v30);
  sub_100057D3C();
  sub_100065C4C();
  _ConditionalContent<>.init(storage:)();
  sub_100006578(&v32, v44, &qword_100191610, &qword_10012FA48);
  v46 = 0;
  sub_100003768(&qword_100191610, &qword_10012FA48);
  sub_100003768(&qword_100191618, &qword_10012FA50);
  sub_1000E8798();
  sub_1000E8824();
  sub_1000E8BD8();
  _ConditionalContent<>.init(storage:)();
  sub_10001D724(&v32, &qword_100191610, &qword_10012FA48);
  v19 = &v43;
  return sub_10001D724(v19, v11, v12);
}

unint64_t sub_1000E80F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100177030, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

void sub_1000E8140(char a1)
{
  switch(a1)
  {
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
      return;
    case 14:
      sub_1000E8B9C();
      break;
    default:
      sub_10009E06C();
      break;
  }
}

unint64_t sub_1000E8428@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E80F4(*a1);
  *a2 = result;
  return result;
}

void sub_1000E8458(void *a1@<X8>)
{
  sub_1000E8140(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1000E84D0()
{
  result = qword_100191598;
  if (!qword_100191598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191598);
  }

  return result;
}

unint64_t sub_1000E8524()
{
  result = qword_1001915A0;
  if (!qword_1001915A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001915A0);
  }

  return result;
}

uint64_t sub_1000E85E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_1001915B0, &qword_10012F948);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E865C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000E8698()
{
  result = qword_1001915F8;
  if (!qword_1001915F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001915F8);
  }

  return result;
}

unint64_t sub_1000E86EC()
{
  result = qword_100191600;
  if (!qword_100191600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191600);
  }

  return result;
}

unint64_t sub_1000E8744()
{
  result = qword_100191608;
  if (!qword_100191608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191608);
  }

  return result;
}

unint64_t sub_1000E8798()
{
  result = qword_100191620;
  if (!qword_100191620)
  {
    sub_100004D48(&qword_100191610, &qword_10012FA48);
    sub_100057D3C();
    sub_100065C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191620);
  }

  return result;
}

unint64_t sub_1000E8824()
{
  result = qword_100191628;
  if (!qword_100191628)
  {
    sub_100004D48(&qword_100191618, &qword_10012FA50);
    sub_100004984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191628);
  }

  return result;
}

uint64_t sub_1000E88A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000E88F4()
{
  result = qword_100191638;
  if (!qword_100191638)
  {
    sub_100004D48(&qword_100191640, &qword_10012FA58);
    sub_1000E8798();
    sub_1000E8824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191638);
  }

  return result;
}

uint64_t sub_1000E8A54(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000E8A94(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_1000E8AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *sub_1000E8BB0(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

void *sub_1000E8C28(uint64_t a1, uint64_t a2, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1000E8C70(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_1000E8E48()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = type metadata accessor for ActionInfoType(0);
  __chkstk_darwin(v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (qword_1001882D0 != -1)
  {
    swift_once();
  }

  v10 = unk_100191650;
  v23 = qword_100191648;
  v11 = qword_1001882D8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_100191658;
  v13 = unk_100191660;
  type metadata accessor for ActionInfo(0);
  swift_storeEnumTagMultiPayload();

  v14 = sub_1000ED69C(v9, 1, 0, 0);
  v15 = qword_1001882E0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for FlowImage(0);
  v17 = sub_10000C2D4(v16, qword_100191668);
  sub_100053ED8(v17, v6);
  sub_100003CE8(v6, 0, 1, v16);
  v25 = &type metadata for BatteryPlacardInfoItemType;
  v26 = sub_1000E94FC();
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v1 + 8))(v3, v0);
  type metadata accessor for PlacardInfoItem(0);
  swift_allocObject();
  v21 = sub_1000F04E8(0, v18, v20, v6, v23, v10, v12, v13, v14, v24);

  return v21;
}

BOOL sub_1000E9168(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001771B8, v2);

  return v3 != 0;
}

BOOL sub_1000E91BC@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E9168(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000E91F0@<X0>(void *a1@<X8>)
{
  result = sub_1000E7684();
  *a1 = 0xD000000000000014;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000E9220@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000E7684();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000E9248()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191648 = result;
  unk_100191650 = v3;
  return result;
}

uint64_t sub_1000E9350()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191658 = result;
  unk_100191660 = v3;
  return result;
}

uint64_t sub_1000E9458()
{
  v0 = type metadata accessor for FlowImage(0);
  sub_10000C270(v0, qword_100191668);
  v1 = sub_10000C2D4(v0, qword_100191668);
  v1->i64[0] = 0xD000000000000023;
  v1->i64[1] = 0x8000000100136D00;
  v1[1].i8[0] = 0;
  v1[1].i64[1] = 0;
  v1[2].i64[0] = 0;
  v1[2].i8[8] = 1;
  v1[3] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000E94FC()
{
  result = qword_100191680;
  if (!qword_100191680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191680);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BatteryPlacardInfoItemType(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1000E95ECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000E9628()
{
  result = qword_100191688;
  if (!qword_100191688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191688);
  }

  return result;
}

unint64_t sub_1000E967C(uint64_t a1)
{
  result = sub_1000E96A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E96A4()
{
  result = qword_100191690;
  if (!qword_100191690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191690);
  }

  return result;
}

id sub_1000E96F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtCV11SupportFlow22AppleAccountSignInView11Coordinator_dismissAction;
  v9 = type metadata accessor for DismissAction();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a1, v9);
  v11 = &v3[OBJC_IVAR____TtCV11SupportFlow22AppleAccountSignInView11Coordinator_onSuccess];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "init");
  (*(v10 + 8))(a1, v9);
  return v12;
}

id sub_1000E982C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E990C(uint64_t a1)
{
  result = type metadata accessor for DismissAction();
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

id sub_1000E99A8()
{
  v1 = type metadata accessor for DismissAction();
  __chkstk_darwin(v1 - 8);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000C9028(v3);
  v4 = (v0 + *(type metadata accessor for AppleAccountSignInView(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  objc_allocWithZone(type metadata accessor for AppleAccountSignInView.Coordinator(0));

  return sub_1000E96F8(v3, v5, v6);
}

id sub_1000E9A5C()
{
  v0 = [objc_allocWithZone(AAUISignInController) init];
  sub_100003768(&qword_1001917F8, &qword_10012FC98);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v0 setDelegate:v2];

  return v0;
}

id sub_1000E9AF4@<X0>(void *a1@<X8>)
{
  result = sub_1000E99A8();
  *a1 = result;
  return result;
}

uint64_t sub_1000E9B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EA118(&qword_1001917F0, &unk_10012FBD0);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000E9B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EA118(&qword_1001917F0, &unk_10012FBD0);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000E9C1C(uint64_t a1)
{
  sub_1000EA118(&qword_1001917F0, &unk_10012FBD0);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void sub_1000E9C60()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = sub_100083BC4();

  if (v1)
  {
    if ([v1 success])
    {
      (*(v0 + OBJC_IVAR____TtCV11SupportFlow22AppleAccountSignInView11Coordinator_onSuccess))();
    }
  }

  DismissAction.callAsFunction()();
}

unint64_t sub_1000E9E10()
{
  result = qword_100191738;
  if (!qword_100191738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100191738);
  }

  return result;
}

uint64_t sub_1000E9E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100191740, &qword_10012DA50);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000E9F34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_100191740, &qword_10012DA50);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1000EA008(uint64_t a1)
{
  sub_1000EA08C(319);
  if (v1 <= 0x3F)
  {
    sub_100082404();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000EA08C(uint64_t a1)
{
  if (!qword_1001917B0[0])
  {
    type metadata accessor for DismissAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, qword_1001917B0);
    }
  }
}

uint64_t sub_1000EA118(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppleAccountSignInView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000EA188(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

double sub_1000EA2C8@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  v10 = sub_1000EA340(a1, a2 & 1, a3, a4);
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = v10;
  result = 0.0;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  return result;
}

id *sub_1000EA340(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v52 = type metadata accessor for UUID();
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  __chkstk_darwin(v8 - 8);
  v50 = &v40 - v9;
  v10 = type metadata accessor for AirPodsDeviceInfo(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v48 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v13;
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  v53 = a1;
  sub_1000EA188(a1, a2 & 1);
  v16 = sub_10010BB4C();

  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v59 = _swiftEmptyArrayStorage;
    v18 = *(v16 + 16);
    if (v18)
    {
      v47 = *(v10 + 40);
      v19 = *(v11 + 80);
      v40 = v16;
      v20 = v16 + ((v19 + 32) & ~v19);
      v45 = *(v11 + 72);
      v46 = v19;
      v44 = (v19 + 48) & ~v19;
      v43 = (v6 + 8);
      v42 = vdupq_n_s64(0x4046000000000000uLL);
      v41 = a2 & 1;
      do
      {
        v58 = v18;
        sub_1000EA940(v20, v15);
        v21 = type metadata accessor for ImageResource();
        v22 = v50;
        (*(*(v21 - 8) + 16))(v50, &v15[v47], v21);
        v23 = type metadata accessor for FlowAsset(0);
        *(v22 + *(v23 + 20)) = v42;
        *(v22 + *(v23 + 24)) = 0;
        v24 = type metadata accessor for FlowImage(0);
        swift_storeEnumTagMultiPayload();
        sub_100003CE8(v22, 0, 1, v24);
        v25 = *(v15 + 1);
        v26 = *(v15 + 2);
        v27 = *(v15 + 4);
        v56 = *(v15 + 3);
        v57 = v25;
        v28 = v48;
        sub_1000EA940(v15, v48);
        v29 = v44;
        v30 = swift_allocObject();
        *(v30 + 16) = v53;
        *(v30 + 24) = v41;
        v31 = v55;
        *(v30 + 32) = v54;
        *(v30 + 40) = v31;
        sub_1000EAABC(v28, v30 + v29);

        v32 = v51;
        UUID.init()();
        v33 = UUID.uuidString.getter();
        v35 = v34;
        (*v43)(v32, v52);
        type metadata accessor for OptionInfoItem(0);
        v36 = swift_allocObject();
        v37 = v36 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep;
        *(v36 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep + 24) = &type metadata for AirPodsStepProvider;
        *(v37 + 32) = sub_100004C8C();
        *v37 = 3;
        v38 = (v36 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
        *v38 = sub_1000EAB20;
        v38[1] = v30;
        sub_1000EBC54(v33, v35, v22, v57, v26, v56, v27);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        sub_1000EAB94(v15);
        v20 += v45;
        v18 = v58 - 1;
      }

      while (v58 != 1);
      v17 = v59;
    }
  }

  return v17;
}

uint64_t sub_1000EA7F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003768(&qword_100191860, &qword_100131D50);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  sub_1000EA188(a1, a2 & 1);
  sub_1000EA940(a5, v10);
  v11 = type metadata accessor for AirPodsDeviceInfo(0);
  sub_100003CE8(v10, 0, 1, v11);
  sub_10010CD58(v10);

  sub_1000EA188(a1, a2 & 1);

  v13 = *(a5 + 72);
  v12 = *(a5 + 80);

  sub_10008ADD4(v13, v12);
}

uint64_t sub_1000EA940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsDeviceInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EA9A4()
{
  v1 = (type metadata accessor for AirPodsDeviceInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  v6 = type metadata accessor for ImageResource();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000EAABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsDeviceInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EAB20()
{
  v1 = *(type metadata accessor for AirPodsDeviceInfo(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_1000EA7F4(v2, v3, v4, v5, v6);
}

uint64_t sub_1000EAB94(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsDeviceInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MessagesStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x1000EACBCLL);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void sub_1000EAD10(char a1)
{
  switch(a1)
  {
    case 1:
    case 9:
      sub_10009E06C();
      break;
    case 2:
      sub_1000EB5AC();
      break;
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
      return;
    case 4:
      sub_1000B184C(0x6F53u);
      break;
    default:
      sub_1000EB5C4(10);
      break;
  }
}

uint64_t sub_1000EAE94@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  result = result;
  switch(result)
  {
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = swift_allocObject();
      *(result + 16) = 2;
      break;
    case 10:
      result = 9;
      break;
    default:
      break;
  }

  *a2 = result;
  return result;
}

unint64_t sub_1000EAF70(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001771F0, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

void sub_1000EAFBC(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
      return;
    case 2:
      sub_1000EB5AC();
      break;
    case 4:
      sub_1000B184C(0x6F73u);
      break;
    case 7:
      sub_1000EB5C4(5);
      break;
    default:
      sub_10009E06C();
      break;
  }
}

unint64_t sub_1000EB174@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EAF70(*a1);
  *a2 = result;
  return result;
}

void sub_1000EB1A4(void *a1@<X8>)
{
  sub_1000EAFBC(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1000EB21C()
{
  result = qword_100191868;
  if (!qword_100191868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191868);
  }

  return result;
}

unint64_t sub_1000EB270()
{
  result = qword_100191870;
  if (!qword_100191870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191870);
  }

  return result;
}

uint64_t sub_1000EB32C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_100191880, &qword_10012FE20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000EB3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000EB3E4()
{
  result = qword_1001918C8;
  if (!qword_1001918C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001918C8);
  }

  return result;
}

unint64_t sub_1000EB438()
{
  result = qword_1001918D0;
  if (!qword_1001918D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001918D0);
  }

  return result;
}

unint64_t sub_1000EB490()
{
  result = qword_1001918D8;
  if (!qword_1001918D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001918D8);
  }

  return result;
}

uint64_t sub_1000EB4E4()
{
  if (*(v0 + 16) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000EB528()
{
  result = qword_1001918E0;
  if (!qword_1001918E0)
  {
    sub_100004D48(&qword_1001918E8, &unk_10012FF20);
    sub_100058F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001918E0);
  }

  return result;
}

uint64_t sub_1000EB6B0()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = sub_10000ED84(v2);
  __chkstk_darwin(v3);
  sub_10000C30C();
  sub_100003768(&qword_100190B70, &qword_10012E1C0);
  type metadata accessor for WelcomeListItem();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100128690;
  sub_10001ECEC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100017B50();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10001ECEC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100017B50();
  String.init(localized:table:bundle:locale:comment:)();
  Image.init(systemName:)();
  sub_1000EBC40();
  WelcomeListItem.init(title:description:image:)();
  sub_10001ECEC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100017B50();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10001ECEC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100017B50();
  String.init(localized:table:bundle:locale:comment:)();
  Image.init(systemName:)();
  WelcomeListItem.init(title:description:image:)();
  sub_10001ECEC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100017B50();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10001ECEC();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100017B50();
  String.init(localized:table:bundle:locale:comment:)();
  Image.init(_internalSystemName:)();
  sub_1000EBC40();
  WelcomeListItem.init(title:description:image:)();
  return v4;
}

uint64_t sub_1000EBA1C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = sub_10000ED84(v2);
  __chkstk_darwin(v3);
  sub_10000C30C();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = sub_10000ED84(v4);
  __chkstk_darwin(v5);
  sub_10000C30C();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  static WelcomeAction.primary(title:)();

  v6 = type metadata accessor for WelcomeAction();
  return sub_100003CE8(a1, 0, 1, v6);
}

unint64_t sub_1000EBBB8@<X0>(void *a1@<X8>)
{
  result = sub_1000EB5E4();
  *a1 = 0xD000000000000014;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000EBBEC()
{
  result = qword_1001918F0;
  if (!qword_1001918F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001918F0);
  }

  return result;
}

uint64_t sub_1000EBC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1000B2398(a3, v7 + OBJC_IVAR____TtC11SupportFlow8InfoItem_image);
  v12 = (v7 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title);
  *v12 = a4;
  v12[1] = a5;
  v13 = (v7 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description);
  *v13 = a6;
  v13[1] = a7;
  return v7;
}

uint64_t sub_1000EBCCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000EBD04()
{

  sub_1000B2330(v0 + OBJC_IVAR____TtC11SupportFlow8InfoItem_image);

  return v0;
}

uint64_t sub_1000EBD5C()
{
  sub_1000EBD04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for InfoItem(uint64_t a1)
{
  result = qword_100191920;
  if (!qword_100191920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EBE08(uint64_t a1)
{
  sub_100029144(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

Swift::Int sub_1000EBEB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EBEF4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

Swift::Int sub_1000EBF4C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000EBCFC(v2);
  return Hasher._finalize()();
}

unint64_t sub_1000EBFB4()
{
  result = qword_1001919D0;
  if (!qword_1001919D0)
  {
    type metadata accessor for InfoItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001919D0);
  }

  return result;
}

uint64_t sub_1000EC00C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A58D8 = result;
  qword_1001A58E0 = v3;
  return result;
}

uint64_t sub_1000EC12C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A58E8 = result;
  qword_1001A58F0 = v3;
  return result;
}

unint64_t sub_1000EC24C(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 3:
    case 5:
      result = 0x1000000000000016;
      break;
    case 4:
      result = 0x1000000000000010;
      break;
    case 6:
    case 11:
      result = 0x100000000000001FLL;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000EC344(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175668, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000EC390(char a1)
{
  result = 21825;
  switch(a1)
  {
    case 1:
      result = 1094939238;
      break;
    case 2:
      result = 16707;
      break;
    case 3:
      result = 18499;
      break;
    case 4:
      result = 20035;
      break;
    case 5:
      result = 17732;
      break;
    case 6:
      result = 21317;
      break;
    case 7:
      result = 16967;
      break;
    case 8:
      result = 17737;
      break;
    case 9:
      result = 20041;
      break;
    case 10:
      result = 21577;
      break;
    case 11:
      result = 22605;
      break;
    case 12:
      result = 23118;
      break;
    case 13:
      result = 18259;
      break;
    case 14:
      result = 21333;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000EC498@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EC344(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceActivationServiceProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x1000EC594);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000EC5CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EC390(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000EC5FC()
{
  result = qword_1001919D8;
  if (!qword_1001919D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001919D8);
  }

  return result;
}

uint64_t sub_1000EC6A0()
{
  sub_1000086BC((v0 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep));
  v1 = *(v0 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
  v2 = *(v0 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected + 8);

  return sub_1000068F8(v1, v2);
}

uint64_t sub_1000EC6E4()
{
  v0 = sub_1000EBD04();
  sub_1000086BC((v0 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep));
  sub_1000068F8(*(v0 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected), *(v0 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected + 8));
  return v0;
}

uint64_t sub_1000EC730()
{
  v0 = sub_1000EC6E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for OptionInfoItem(uint64_t a1)
{
  result = qword_100191A08;
  if (!qword_100191A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EC824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = (a11 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep);
  v19[3] = a12;
  v19[4] = a13;
  v20 = sub_10003EE2C(v19);
  (*(*(a12 - 8) + 32))(v20, a8, a12);
  v21 = (a11 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
  *v21 = a9;
  v21[1] = a10;
  return sub_1000EBC54(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1000EC900()
{
  v0 = sub_1000FB2E4();
  switch(v0)
  {
    case 4:
      sub_100003768(&qword_1001909C0, &qword_10012DFF8);
      v14 = type metadata accessor for AirPodsDeviceInfo(0);
      sub_100052F6C(v14);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100121620;
      sub_1000ECB8C(v6 + v16);
      break;
    case 3:
      sub_100003768(&qword_1001909C0, &qword_10012DFF8);
      v8 = type metadata accessor for AirPodsDeviceInfo(0);
      sub_100052F6C(v8);
      v10 = *(v9 + 72);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100128690;
      v13 = v6 + v12;
      sub_1000ECB8C(v13);
      sub_1000ED384(xmmword_100130270);
      sub_1000ECF54(v13 + 2 * v10);
      break;
    case 2:
      sub_100003768(&qword_1001909C0, &qword_10012DFF8);
      v1 = type metadata accessor for AirPodsDeviceInfo(0);
      sub_100052F6C(v1);
      v3 = *(v2 + 72);
      v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100130280;
      v7 = v6 + v5;
      sub_1000ECB8C(v7);
      sub_1000ED384(xmmword_100130270);
      sub_1000ECC78(8217, 0xE900000000000034, v7 + 2 * v3, xmmword_100130290);
      sub_1000ECD88(v7 + 3 * v3);
      sub_1000ECE78(v7 + 4 * v3);
      sub_1000ECF54(v7 + 5 * v3);
      sub_1000ED040(v7 + 6 * v3);
      sub_1000ED12C(v7 + 7 * v3);
      sub_1000ED208(v7 + 8 * v3);
      break;
    default:
      return 0;
  }

  return v6;
}

uint64_t sub_1000ECB8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100188410 != -1)
  {
    swift_once();
  }

  v3 = sub_1000ED3C4();
  sub_1000ED3E0(v3, qword_1001A5A88);
  sub_1000ED374(8231);
  *(a1 + 8) = v4;
  *(a1 + 16) = v1;
  sub_1000ED2E4();
  *(a1 + 24) = v5;
  *(a1 + 32) = 0xED000033206F7250;
  *(a1 + 40) = xmmword_100130270;
  *(a1 + 56) = xmmword_1001302A0;
  sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8();
  v7 = sub_1000ED324(v6);

  return v8(v7);
}

uint64_t sub_1000ECC78@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  if (qword_1001883E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for ImageResource();
  v8 = sub_10000C2D4(v7, qword_1001A5A10);
  *a3 = a1;
  sub_1000ED30C();
  *(a3 + 8) = v10;
  *(a3 + 16) = v9 & 0xFFFF0000FFFFLL | 0xEC00000034200000;
  sub_1000ED2E4();
  *(a3 + 24) = v11;
  *(a3 + 32) = a2;
  *(a3 + 40) = a4;
  *(a3 + 56) = xmmword_1001302A0;
  v12 = sub_1000ED3AC(xmmword_1001302B0);
  v13 = *(*(v7 - 8) + 16);
  v14 = a3 + *(v12 + 40);

  return v13(v14, v8, v7);
}

uint64_t sub_1000ECD88@<X0>(uint64_t a1@<X8>)
{
  if (qword_100188408 != -1)
  {
    sub_1000ED354(&qword_100188408);
  }

  v2 = type metadata accessor for ImageResource();
  sub_1000ED3E0(v2, qword_1001A5A70);
  sub_1000ED374(8228);
  *(a1 + 8) = v3;
  *(a1 + 16) = 0x8000000100139B60;
  *(a1 + 24) = v3 | 3;
  *(a1 + 32) = 0x8000000100137580;
  *(a1 + 40) = xmmword_1001302C0;
  *(a1 + 56) = xmmword_1001302A0;
  sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8();
  v5 = sub_1000ED324(v4);

  return v6(v5);
}

uint64_t sub_1000ECE78@<X0>(uint64_t a1@<X8>)
{
  if (qword_100188408 != -1)
  {
    sub_1000ED354(&qword_100188408);
  }

  v3 = sub_1000ED3C4();
  sub_1000ED3E0(v3, qword_1001A5A70);
  sub_1000ED374(8212);
  *(a1 + 8) = v4;
  *(a1 + 16) = v1;
  sub_1000ED2E4();
  *(a1 + 24) = v5;
  *(a1 + 32) = 0xED000032206F7250;
  *(a1 + 40) = xmmword_1001302D0;
  *(a1 + 56) = xmmword_1001302A0;
  sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8();
  v7 = sub_1000ED324(v6);

  return v8(v7);
}

uint64_t sub_1000ECF54@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001883D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ImageResource();
  sub_1000ED3E0(v2, qword_1001A59E0);
  *a1 = 8211;
  sub_1000ED30C();
  *(a1 + 8) = v4;
  *(a1 + 16) = v3 & 0xFFFF0000FFFFLL | 0xEC00000033200000;
  sub_1000ED2E4();
  *(a1 + 24) = v5;
  *(a1 + 32) = 0xE900000000000033;
  *(a1 + 40) = xmmword_1001302E0;
  *(a1 + 56) = xmmword_1001302A0;
  sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8();
  v7 = sub_1000ED324(v6);

  return v8(v7);
}

uint64_t sub_1000ED040@<X0>(uint64_t a1@<X8>)
{
  if (qword_100188400 != -1)
  {
    swift_once();
  }

  v3 = sub_1000ED3C4();
  sub_1000ED3E0(v3, qword_1001A5A58);
  sub_1000ED374(8206);
  *(a1 + 8) = v4;
  *(a1 + 16) = v1;
  sub_1000ED2E4();
  *(a1 + 24) = v5;
  *(a1 + 32) = 0xED000031206F7250;
  *(a1 + 40) = xmmword_1001302F0;
  *(a1 + 56) = xmmword_1001302A0;
  sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8();
  v7 = sub_1000ED324(v6);

  return v8(v7);
}

uint64_t sub_1000ED12C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001883D0 != -1)
  {
    sub_1000ED334(&qword_1001883D0);
  }

  v2 = type metadata accessor for ImageResource();
  sub_1000ED3E0(v2, qword_1001A59C8);
  *a1 = 8207;
  sub_1000ED30C();
  *(a1 + 8) = v4;
  *(a1 + 16) = v3 & 0xFFFF0000FFFFLL | 0xEC00000032200000;
  sub_1000ED2E4();
  *(a1 + 24) = v5;
  *(a1 + 32) = 0xE900000000000032;
  *(a1 + 40) = xmmword_100130300;
  *(a1 + 56) = xmmword_1001302A0;
  sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8();
  v7 = sub_1000ED324(v6);

  return v8(v7);
}

uint64_t sub_1000ED208@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001883D0 != -1)
  {
    sub_1000ED334(&qword_1001883D0);
  }

  v2 = type metadata accessor for ImageResource();
  sub_1000ED3E0(v2, qword_1001A59C8);
  *a1 = 8194;
  sub_1000ED30C();
  *(a1 + 8) = v4;
  *(a1 + 16) = v3 & 0xFFFF0000FFFFLL | 0xEC00000031200000;
  sub_1000ED2E4();
  *(a1 + 24) = v5;
  *(a1 + 32) = 0xE900000000000031;
  *(a1 + 40) = xmmword_100130310;
  *(a1 + 56) = xmmword_1001302A0;
  sub_1000ED3AC(xmmword_1001302B0);
  sub_1000ED2F8();
  v7 = sub_1000ED324(v6);

  return v8(v7);
}

uint64_t sub_1000ED334(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000ED354(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000ED384(__n128 a1)
{

  return sub_1000ECC78(8219, 0xEF29434E41282034, v1 + v2, a1);
}

uint64_t sub_1000ED3AC(__n128 a1)
{
  *(v1 + 72) = a1;

  return type metadata accessor for AirPodsDeviceInfo(0);
}

uint64_t sub_1000ED3C4()
{

  return type metadata accessor for ImageResource();
}

uint64_t sub_1000ED3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  type metadata accessor for ActionInfoDestination(0);
  sub_10000AF7C();
  __chkstk_darwin(v6);
  sub_10000C30C();
  v9 = v8 - v7;
  v10 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v30[-v11 - 8];
  v13 = type metadata accessor for URL();
  sub_100008780();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_10000C30C();
  v19 = v18 - v17;
  URL.init(string:)();
  if (sub_10000E5F0(v12, 1, v13) == 1)
  {
    sub_10000ABCC(v12, &qword_100188EE0, &unk_100122AE0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    (*(v15 + 32))(v19, v12, v13);
    (*(v15 + 16))(v9, v19, v13);
    swift_storeEnumTagMultiPayload();
    sub_1000EE2AC(a5, v30);
    type metadata accessor for ActionInfo(0);
    v20 = swift_allocObject();
    sub_1000EE3EC();
    sub_1000EDD44(v21, v22, v23, v24, v25, v26, v27);
    sub_10000ABCC(a5, &qword_10018E4C0, &qword_10012A2E0);
    (*(v15 + 8))(v19, v13);
    return v20;
  }

  return result;
}

uint64_t sub_1000ED69C(char *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for SupportActionInfoType(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  type metadata accessor for ActionInfoType(0);
  sub_10000AF7C();
  __chkstk_darwin(v15);
  sub_10000C30C();
  v18 = (v17 - v16);
  sub_1000EE1FC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000B64FC(*v18);
      goto LABEL_9;
    case 2u:
      sub_100063154(*v18);
      goto LABEL_9;
    case 3u:
      sub_100003040(*v18);
      goto LABEL_9;
    case 4u:
      sub_10001BFE4(*v18);
      goto LABEL_9;
    case 5u:
      sub_1000EE1A4();
      sub_1000EE1FC();
      sub_10003E8A8(v12);
      sub_1000EE3B8();
      sub_1000EE254(a1, v19);
      v20 = type metadata accessor for SupportActionInfoType;
      v21 = v14;
      goto LABEL_10;
    case 6u:
      sub_1000D8D88();
      goto LABEL_9;
    default:
      sub_1000D4F58(*v18);
LABEL_9:
      sub_1000EE3B8();
      v21 = a1;
LABEL_10:
      sub_1000EE254(v21, v20);
      *(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_displayLinkSymbol) = a2 & 1;
      v22 = (v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
      v23 = *(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
      v24 = *(v4 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler + 8);
      *v22 = a3;
      v22[1] = a4;

      sub_100006568(a3, a4);
      sub_1000068F8(v23, v24);
      sub_1000068F8(a3, a4);

      return v4;
  }
}

uint64_t sub_1000ED910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ActionInfoDestination(0);
  sub_10000AF7C();
  __chkstk_darwin(v10);
  sub_10000C30C();
  if (a4)
  {
    sub_1000EE2AC(a5, v20);
    v11 = sub_1000ED3F8(a1, a2, a3, a4, v20);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000EE2AC(a5, v20);
    type metadata accessor for ActionInfo(0);
    v11 = swift_allocObject();
    sub_100096B28();
    sub_1000EE3EC();
    sub_1000EDD44(v12, v13, v14, v15, v16, v17, v18);
  }

  sub_10000ABCC(a5, &qword_10018E4C0, &qword_10012A2E0);
  return v11;
}

uint64_t sub_1000EDA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActionInfo(0);

  v6 = sub_100096B28();
  return sub_1000ED3F8(v6, v7, a3, a4, v8);
}

uint64_t sub_1000EDA9C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ActionInfoDestination(0);
  sub_10000AF7C();
  __chkstk_darwin(v2);
  sub_10000C30C();
  v5 = v4 - v3;
  v6 = type metadata accessor for URL();
  sub_100008780();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000C30C();
  v12 = v11 - v10;
  sub_1000EE1FC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1000EE3D4();
      sub_1000EE254(v5, v17);
      v14 = 1;
      break;
    case 4:
      return sub_100003CE8(a1, v14, 1, v6);
    default:
      v15 = *(v8 + 32);
      v16 = sub_100096B28();
      v15(v16);
      (v15)(a1, v12, v6);
      v14 = 0;
      break;
  }

  return sub_100003CE8(a1, v14, 1, v6);
}

uint64_t sub_1000EDC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10004620C();
  type metadata accessor for ActionInfoDestination(v4);
  sub_10000AF7C();
  __chkstk_darwin(v5);
  sub_10000C30C();
  v8 = v7 - v6;
  type metadata accessor for URL();
  sub_10000AF7C();
  (*(v9 + 16))(v8, a3);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ActionInfo(0);
  v10 = swift_allocObject();

  sub_1000EE3EC();
  sub_1000EDD44(v11, v12, v13, v14, v15, v16, v17);
  return v10;
}

uint64_t sub_1000EDD44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = type metadata accessor for UUID();
  sub_100008780();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000C30C();
  v18 = v17 - v16;
  v19 = (v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
  *v19 = 0;
  v19[1] = 0;
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v14 + 8))(v18, v12);
  *(v8 + 16) = v20;
  *(v8 + 24) = v22;
  sub_1000EE1A4();
  v23 = (v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_text);
  *v23 = a2;
  v23[1] = a3;
  *(v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_displayLinkSymbol) = a4;
  v24 = v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_typeProvider;
  *(v24 + 32) = *(a5 + 32);
  v25 = *(a5 + 16);
  *v24 = *a5;
  *(v24 + 16) = v25;
  v26 = (v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
  v27 = *(v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
  v28 = *(v8 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler + 8);
  *v26 = a6;
  v26[1] = a7;
  v29 = sub_100096B28();
  sub_100006568(v29, v30);
  sub_1000068F8(v27, v28);
  v31 = sub_100096B28();
  sub_1000068F8(v31, v32);
  return v8;
}

uint64_t sub_1000EDEE4()
{

  sub_1000EE3D4();
  sub_1000EE254(v0 + v1, v2);

  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_typeProvider, &qword_10018E4C0, &qword_10012A2E0);
  sub_1000068F8(*(v0 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler), *(v0 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler + 8));
  return v0;
}

uint64_t sub_1000EDF60()
{
  sub_1000EDEE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000EDFE0(uint64_t a1)
{
  result = type metadata accessor for ActionInfoDestination(319);
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

uint64_t sub_1000EE0BC(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000EE12C()
{
  result = qword_100191C90;
  if (!qword_100191C90)
  {
    type metadata accessor for ActionInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191C90);
  }

  return result;
}

uint64_t sub_1000EE1A4()
{
  v2 = sub_10004620C();
  v3(v2);
  sub_10000AF7C();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1000EE1FC()
{
  v2 = sub_10004620C();
  v3(v2);
  sub_10000AF7C();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000EE254(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000AF7C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000EE2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018E4C0, &qword_10012A2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EE31C(uint64_t a1)
{
  result = type metadata accessor for SupportActionInfoType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppleAccountPlacardInfoItemType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x1000EE4C8);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000EE500(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100177348, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000EE570@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EE500(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000EE5A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E7A20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000EE5CC(uint64_t a1)
{
  result = sub_1000EE5F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EE5F4()
{
  result = qword_100191E08;
  if (!qword_100191E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191E08);
  }

  return result;
}

unint64_t sub_1000EE64C()
{
  result = qword_100191E10;
  if (!qword_100191E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191E10);
  }

  return result;
}

uint64_t sub_1000EE6A0(char a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for FlowImage(0);
  __chkstk_darwin(v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = v2;
  if (a1)
  {
    if (a1 == 1)
    {
      v31[0] = 0;
      v30 = 1;
      v11->i64[0] = 0xD00000000000001BLL;
      v11->i64[1] = 0x8000000100139C50;
      v11[1].i8[0] = 0;
      v11[1].i64[1] = 0;
      v11[2].i64[0] = 0;
      v11[2].i8[8] = 1;
      v11[3] = vdupq_n_s64(0x4046000000000000uLL);
      swift_storeEnumTagMultiPayload();
      if (qword_100188310 != -1)
      {
        swift_once();
      }

      v12 = *algn_100191D78;
      v28 = qword_100191D70;
      v13 = qword_100188318;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = qword_100191D80;
      v15 = *algn_100191D88;
      v16 = qword_100188340;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = qword_100191DC8;
    }

    else
    {
      if (qword_100188358 != -1)
      {
        swift_once();
      }

      v21 = sub_10000C2D4(v9, qword_100191DF0);
      sub_100053ED8(v21, v11);
      if (qword_100188328 != -1)
      {
        swift_once();
      }

      v12 = *algn_100191DA8;
      v28 = qword_100191DA0;
      v22 = qword_100188348;

      if (v22 != -1)
      {
        swift_once();
      }

      v14 = 0;
      v15 = 0;
      v17 = qword_100191DD0;
    }
  }

  else
  {
    if (qword_100188350 != -1)
    {
      swift_once();
    }

    v18 = sub_10000C2D4(v9, qword_100191DD8);
    sub_100053ED8(v18, v11);
    if (qword_1001882F8 != -1)
    {
      swift_once();
    }

    v12 = *algn_100191D48;
    v28 = qword_100191D40;
    v19 = qword_100188300;

    if (v19 != -1)
    {
      swift_once();
    }

    v14 = qword_100191D50;
    v15 = *algn_100191D58;
    v20 = qword_100188338;

    if (v20 != -1)
    {
      swift_once();
    }

    v17 = qword_100191DC0;
  }

  sub_100053ED8(v11, v8);
  sub_100003CE8(v8, 0, 1, v9);
  v32 = &type metadata for AppleAccountPlacardInfoItemType;
  v33 = sub_1000EF7D8();
  v31[0] = a1;
  swift_retain_n();
  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  (*(v3 + 8))(v5, v29);
  type metadata accessor for PlacardInfoItem(0);
  swift_allocObject();
  v26 = sub_1000F04E8(0, v23, v25, v8, v28, v12, v14, v15, v17, v31);

  sub_1000EF82C(v11);
  return v26;
}

uint64_t sub_1000EEBDC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191D40 = result;
  *algn_100191D48 = v3;
  return result;
}

uint64_t sub_1000EECE4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191D50 = result;
  *algn_100191D58 = v3;
  return result;
}

uint64_t sub_1000EEDEC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191D60 = result;
  *algn_100191D68 = v3;
  return result;
}

uint64_t sub_1000EEEF4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191D70 = result;
  *algn_100191D78 = v3;
  return result;
}

uint64_t sub_1000EEFFC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191D80 = result;
  *algn_100191D88 = v3;
  return result;
}

uint64_t sub_1000EF104()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191D90 = result;
  *algn_100191D98 = v3;
  return result;
}

uint64_t sub_1000EF20C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191DA0 = result;
  *algn_100191DA8 = v3;
  return result;
}

uint64_t sub_1000EF314()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100191DB0 = result;
  *algn_100191DB8 = v3;
  return result;
}

uint64_t sub_1000EF41C()
{
  type metadata accessor for ActionInfo(0);
  if (qword_100188308 != -1)
  {
    swift_once();
  }

  v0 = qword_100191D60;
  v1 = *algn_100191D68;

  v2 = sub_1000EDA28(v0, v1, 0xD00000000000004BLL, 0x8000000100139C70);

  qword_100191DC0 = v2;
  return result;
}

uint64_t sub_1000EF4C8()
{
  type metadata accessor for ActionInfo(0);
  if (qword_100188320 != -1)
  {
    swift_once();
  }

  v0 = qword_100191D90;
  v1 = *algn_100191D98;

  v2 = sub_1000EDA28(v0, v1, 0xD000000000000043, 0x8000000100139E60);

  qword_100191DC8 = v2;
  return result;
}

uint64_t sub_1000EF574()
{
  type metadata accessor for ActionInfo(0);
  if (qword_100188330 != -1)
  {
    swift_once();
  }

  v0 = qword_100191DB0;
  v1 = *algn_100191DB8;

  v2 = sub_1000EDA28(v0, v1, 0xD000000000000019, 0x800000010013A030);

  qword_100191DD0 = v2;
  return result;
}

uint64_t sub_1000EF620()
{
  v0 = type metadata accessor for FlowImage(0);
  sub_10000C270(v0, qword_100191DD8);
  v1 = sub_10000C2D4(v0, qword_100191DD8);
  v2 = type metadata accessor for FlowSymbol(0);
  static SymbolRenderingMode.multicolor.getter();
  v3 = v2[6];
  v4 = enum case for Image.Scale.medium(_:);
  v5 = type metadata accessor for Image.Scale();
  (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  *v1 = 0x656968732E79656BLL;
  *(v1 + 1) = 0xEF6C6C69662E646CLL;
  *&v1[v2[7]] = 0;
  *&v1[v2[8]] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000EF734()
{
  v0 = type metadata accessor for FlowImage(0);
  sub_10000C270(v0, qword_100191DF0);
  v1 = sub_10000C2D4(v0, qword_100191DF0);
  v1->i64[0] = 0xD00000000000001ELL;
  v1->i64[1] = 0x800000010013A130;
  v1[1].i8[0] = 0;
  v1[1].i64[1] = 0;
  v1[2].i64[0] = 0;
  v1[2].i8[8] = 1;
  v1[3] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000EF7D8()
{
  result = qword_100191E18;
  if (!qword_100191E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191E18);
  }

  return result;
}

uint64_t sub_1000EF82C(uint64_t a1)
{
  v2 = type metadata accessor for FlowImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EF8B4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

unint64_t sub_1000EF9F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_100058208(a3);
  v10 = v9;
  sub_1000EF8B4(a1, a2 & 1);
  v11 = sub_1000DEC54(a3, 0);

  result = sub_10001362C();
  *a4 = v8;
  a4[1] = v10;
  a4[2] = v11;
  a4[5] = &type metadata for MessagesStepProvider;
  a4[6] = result;
  return result;
}

unint64_t sub_1000EFACC@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v10 = sub_10010C0C0();
  v20 = v11;
  v21 = v10;

  sub_100003768(&qword_1001888B8, &unk_100121B70);
  v12 = *(type metadata accessor for FlowStepContentOption(0) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100121620;

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  sub_10010BF80(v14 + v13);

  swift_storeEnumTagMultiPayload();
  v16 = sub_1000FF880(v14);
  *(a3 + 40) = &type metadata for AirPodsStepProvider;
  result = sub_100004C8C();
  *(a3 + 16) = 9;
  v18 = v20;
  *a3 = v21;
  *(a3 + 8) = v18;
  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  *(a3 + 64) = v16;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

uint64_t sub_1000EFDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100192008, &qword_100130898);
  v7 = sub_10000ED84(v6);
  __chkstk_darwin(v7);
  v8 = sub_1000F0C04();
  v9 = type metadata accessor for SupportPlacardInfoItemType(v8);
  v10 = sub_10000ED84(v9);
  v11 = __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for PlacardInfoItemType(0);
  sub_10000AF7C();
  __chkstk_darwin(v17);
  sub_10000C30C();
  v20 = (v19 - v18);
  v21 = sub_1000F0B5C();
  sub_1000F0AFC(v21, v20, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = sub_1000533FC(*v20);
      goto LABEL_8;
    case 2u:
      sub_1000F0A9C(v20, v15, type metadata accessor for SupportPlacardInfoItemType);
      sub_1000F0AFC(v15, v13, type metadata accessor for SupportPlacardInfoItemType);
      v24 = sub_1000B1A80(v13);
      sub_1000B244C(v15);
      goto LABEL_9;
    case 3u:
      v23 = sub_1000E8E48();
      goto LABEL_8;
    case 4u:
      v23 = sub_100119788();
      goto LABEL_8;
    case 5u:
      v23 = sub_100083E78();
      goto LABEL_8;
    default:
      v23 = sub_1000EE6A0(*v20);
LABEL_8:
      v24 = v23;
LABEL_9:
      v25 = sub_1000F0B5C();
      sub_1000F0A9C(v25, v3, v26);
      sub_100003CE8(v3, 0, 1, v16);
      v27 = OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_type;
      swift_beginAccess();

      sub_1000F0A2C(v3, v24 + v27);
      swift_endAccess();
      v28 = *(v24 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action);
      if (v28)
      {

        v29 = (v28 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
        v30 = *(v28 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler);
        v31 = *(v28 + OBJC_IVAR____TtC11SupportFlow10ActionInfo_actionHandler + 8);
        *v29 = a2;
        v29[1] = a3;
        sub_100006568(a2, a3);
        sub_1000068F8(v30, v31);

        sub_1000068F8(a2, a3);
      }

      else
      {
        sub_1000068F8(a2, a3);
      }

      return v24;
  }
}

uint64_t sub_1000F0088@<X0>(int64x2_t *a1@<X8>)
{
  a1->i64[0] = 0xD00000000000001BLL;
  a1->i64[1] = 0x8000000100139C50;
  a1[1].i8[0] = 0;
  *(&a1[1] + 8) = 0uLL;
  a1[2].i8[8] = 1;
  a1[3] = vdupq_n_s64(0x4046000000000000uLL);
  v2 = type metadata accessor for FlowImage(0);
  swift_storeEnumTagMultiPayload();

  return sub_100003CE8(a1, 0, 1, v2);
}

uint64_t sub_1000F012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v51 = a7;
  v52 = a8;
  v48 = a5;
  v49 = a1;
  v50 = a2;
  type metadata accessor for ActionInfoDestination(0);
  sub_10000AF7C();
  __chkstk_darwin(v14);
  sub_10000C30C();
  v15 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v16 = sub_10000ED84(v15);
  __chkstk_darwin(v16);
  v18 = (v47 - v17);
  v19 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v20 = sub_10000ED84(v19);
  __chkstk_darwin(v20);
  sub_1000F0C04();
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  sub_10000C30C();
  v25 = v24 - v23;
  URL.init(string:)();
  if (sub_10000E5F0(v12, 1, v21) == 1)
  {
    sub_10000ABCC(v12, &qword_100188EE0, &unk_100122AE0);
    return 0;
  }

  else
  {
    v47[1] = a11;
    v47[2] = a9;
    (*(v22 + 32))(v25, v12, v21);
    if (a6)
    {
      v54 = 0;
      v53 = 1;
      v18->i64[0] = v48;
      v18->i64[1] = a6;
      v47[0] = a10;
      v18[1].i8[0] = 0;
      v18[1].i64[1] = 0;
      v18[2].i64[0] = 0;
      v18[2].i8[8] = 1;
      v18[3] = vdupq_n_s64(0x4046000000000000uLL);
      v27 = type metadata accessor for FlowImage(0);
      swift_storeEnumTagMultiPayload();
      sub_100003CE8(v18, 0, 1, v27);
      v28 = sub_1000F0BEC();
      v29(v28);
      swift_storeEnumTagMultiPayload();
      v30 = type metadata accessor for ActionInfo(0);
      sub_1000F0B78(v30);

      v31 = sub_1000F0BBC();
      v32 = type metadata accessor for PlacardInfoItem(0);
      sub_1000F0B78(v32);
      v46 = v31;
      v33 = sub_1000F0B9C();
      v40 = v47[0];
    }

    else
    {
      v41 = sub_1000F0BEC();
      v42(v41);
      swift_storeEnumTagMultiPayload();
      v43 = type metadata accessor for ActionInfo(0);
      sub_1000F0B78(v43);

      v44 = sub_1000F0BBC();
      v56 = 0;
      memset(v55, 0, sizeof(v55));
      sub_1000F0088(v18);
      type metadata accessor for PlacardInfoItem(0);
      swift_allocObject();
      v46 = v44;
      v33 = sub_1000F0B9C();
      v40 = a10;
    }

    v26 = sub_1000F04E8(v33, v34, v35, v36, v37, v38, v39, v40, v46, v55);
    (*(v22 + 8))(v25, v21);
  }

  return v26;
}

uint64_t sub_1000F04E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_type;
  v18 = type metadata accessor for PlacardInfoItemType(0);
  sub_100003CE8(v10 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action;
  *(v10 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action) = 0;
  *(v10 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_style) = a1 & 1;
  v20 = v10 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_typeProvider;
  v21 = *(a10 + 16);
  *v20 = *a10;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a10 + 32);
  *(v10 + v19) = a9;

  return sub_1000EBC54(a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1000F05D4()
{
  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_typeProvider, &qword_10018E4C0, &qword_10012A2E0);
  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_type, &qword_100192008, &qword_100130898);
}

uint64_t sub_1000F0644()
{
  v0 = sub_1000EBD04();
  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_typeProvider, &qword_10018E4C0, &qword_10012A2E0);
  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_type, &qword_100192008, &qword_100130898);

  return v0;
}

uint64_t sub_1000F06BC()
{
  v0 = sub_1000F0644();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_1000F0738(uint64_t a1)
{
  sub_1000F07E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000F07E4(uint64_t a1)
{
  if (!qword_100191E58)
  {
    type metadata accessor for PlacardInfoItemType(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100191E58);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PlacardInfoItemStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000F0928);
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

uint64_t sub_1000F0960(uint64_t a1)
{
  result = type metadata accessor for SupportPlacardInfoItemType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000F09D8()
{
  result = qword_100192000;
  if (!qword_100192000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192000);
  }

  return result;
}

uint64_t sub_1000F0A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100192008, &qword_100130898);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F0A9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000AF7C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000F0AFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000AF7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000F0B78(uint64_t a1)
{
  *(v1 - 128) = 0u;
  *(v1 - 112) = 0u;
  *(v1 - 96) = 0;

  return swift_allocObject();
}

uint64_t sub_1000F0BBC()
{
  v4 = *(v2 - 200);

  return sub_1000EDD44(v0, v4, v1, 1, v2 - 128, 0, 0);
}

double sub_1000F0C44@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActionInfoType(0);
  sub_10000AF7C();
  v5 = __chkstk_darwin(v4);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - v14;
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  v18 = *v1;
  v26 = v1[1];
  v27 = v18;
  *(&v24 - v16) = 1;
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v17, 0, 1, v3);
  sub_10000EC9C((v1 + 2), v30, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v17, v15, &qword_10018ADD0, &unk_1001256A0);
  sub_10000EC9C(v30, v28, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v15, v12, &qword_10018ADD0, &unk_1001256A0);
  if (sub_10000E5F0(v12, 1, v3) == 1)
  {
    v19 = v26;

    sub_10000ABCC(v15, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v30, &qword_100189310, &qword_1001221A0);
    sub_10000ABCC(v17, &qword_10018ADD0, &unk_1001256A0);
    v20 = 0;
  }

  else
  {
    sub_10003F558(v12, v8);
    type metadata accessor for ActionInfo(0);
    v21 = v25;
    sub_10003F5BC(v8, v25);
    v19 = v26;

    v20 = sub_1000ED69C(v21, 1, 0, 0);
    sub_10003F620(v8);
    sub_10000ABCC(v15, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v30, &qword_100189310, &qword_1001221A0);
    sub_10000ABCC(v17, &qword_10018ADD0, &unk_1001256A0);
  }

  *a1 = v27;
  *(a1 + 8) = v19;
  *(a1 + 64) = 0;
  *(a1 + 72) = v20;
  result = *v28;
  v23 = v28[1];
  *(a1 + 16) = v28[0];
  *(a1 + 32) = v23;
  *(a1 + 48) = v29;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SoftwareUpdateStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1000F1028);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

void sub_1000F107C(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
      sub_10009E06C();
      break;
    default:
      return;
  }
}

uint64_t sub_1000F116C(uint64_t a1)
{
  v2 = a1 - 2;
  if ((a1 - 2) > 4u)
  {
    v3 = 0;
    LOBYTE(v4) = -1;
  }

  else
  {
    v3 = qword_100130B18[(a1 - 2)];
    v4 = 0x10101uLL >> (8 * (v2 & 0x1Fu));
  }

  return sub_1000F11B0(v3, v4, a1);
}

uint64_t sub_1000F11B0(uint64_t a1, char a2, uint64_t a3)
{
  if (a2 == -1)
  {
    sub_1000F15C4(a3);
    v8 = v7;
    if (v6 == 0x726F466B63656863 && v7 == 0xEF73657461647055)
    {
    }

    else
    {
      v10 = v6;
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        if (v10 == 0x6F666E4961746562 && v8 == 0xE800000000000000)
        {
        }

        else
        {
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v13 & 1) == 0)
          {
            v16[0] = 256;
LABEL_20:
            sub_10002D58C();
            _ConditionalContent<>.init(storage:)();
            sub_100003768(&qword_100192088, &qword_100130AF0);
            sub_100003768(&qword_100192090, &qword_100130AF8);
            sub_1000F1A68();
            sub_1000F1AF4();
            return _ConditionalContent<>.init(storage:)();
          }
        }

        v16[0] = 0;
        goto LABEL_20;
      }
    }

    v19 = 1;
    sub_100003768(&qword_10018BFB0, &qword_100126DB0);
    sub_100065C4C();
    sub_100057D3C();
    _ConditionalContent<>.init(storage:)();
    v3 = &qword_100192088;
    v4 = &qword_100130AF0;
    sub_100006578(v16, v17, &qword_100192088, &qword_100130AF0);
    v20 = 0;
    sub_100003768(&qword_100192088, &qword_100130AF0);
    sub_100003768(&qword_100192090, &qword_100130AF8);
    sub_1000F1A68();
    sub_1000F1AF4();
    _ConditionalContent<>.init(storage:)();
    v5 = v16;
    return sub_10001D724(v5, v3, v4);
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_10000B2C0(0, 0, v17, 0, 0, a1, a2 & 1);
  sub_10001D724(v17, &qword_100189310, &qword_1001221A0);
  v3 = &qword_10018BFB0;
  v4 = &qword_100126DB0;
  sub_100006578(v15, v17, &qword_10018BFB0, &qword_100126DB0);
  v19 = 0;
  sub_100003768(&qword_10018BFB0, &qword_100126DB0);
  sub_100065C4C();
  sub_100057D3C();
  _ConditionalContent<>.init(storage:)();
  sub_100006578(v16, v17, &qword_100192088, &qword_100130AF0);
  v20 = 0;
  sub_100003768(&qword_100192088, &qword_100130AF0);
  sub_100003768(&qword_100192090, &qword_100130AF8);
  sub_1000F1A68();
  sub_1000F1AF4();
  _ConditionalContent<>.init(storage:)();
  sub_10001D724(v16, &qword_100192088, &qword_100130AF0);
  v5 = v15;
  return sub_10001D724(v5, v3, v4);
}

unint64_t sub_1000F1578(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001773B0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_1000F15C4(char a1)
{
  switch(a1)
  {
    case 3:
      sub_10009E06C();
      break;
    default:
      return;
  }
}

unint64_t sub_1000F16F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F1578(*a1);
  *a2 = result;
  return result;
}

void sub_1000F1728(void *a1@<X8>)
{
  sub_1000F15C4(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1000F17A0()
{
  result = qword_100192010;
  if (!qword_100192010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192010);
  }

  return result;
}

unint64_t sub_1000F17F4()
{
  result = qword_100192018;
  if (!qword_100192018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192018);
  }

  return result;
}

uint64_t sub_1000F18B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_100192028, &qword_1001309F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000F1968()
{
  result = qword_100192070;
  if (!qword_100192070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192070);
  }

  return result;
}

unint64_t sub_1000F19BC()
{
  result = qword_100192078;
  if (!qword_100192078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192078);
  }

  return result;
}

unint64_t sub_1000F1A14()
{
  result = qword_100192080;
  if (!qword_100192080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192080);
  }

  return result;
}

unint64_t sub_1000F1A68()
{
  result = qword_100192098;
  if (!qword_100192098)
  {
    sub_100004D48(&qword_100192088, &qword_100130AF0);
    sub_100065C4C();
    sub_100057D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192098);
  }

  return result;
}

unint64_t sub_1000F1AF4()
{
  result = qword_1001920A0;
  if (!qword_1001920A0)
  {
    sub_100004D48(&qword_100192090, &qword_100130AF8);
    sub_10002D58C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001920A0);
  }

  return result;
}

unint64_t sub_1000F1B84()
{
  result = qword_1001920A8;
  if (!qword_1001920A8)
  {
    sub_100004D48(&qword_1001920B0, &qword_100130B00);
    sub_1000F1C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001920A8);
  }

  return result;
}

unint64_t sub_1000F1C08()
{
  result = qword_1001920B8;
  if (!qword_1001920B8)
  {
    sub_100004D48(&qword_1001920C0, &unk_100130B08);
    sub_1000F1A68();
    sub_1000F1AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001920B8);
  }

  return result;
}

__n128 sub_1000F1C94(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000F1CA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F1CFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000F1D70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F1DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000F1E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = qword_100188380;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1001A5980;
  v9 = *algn_1001A5988;
  *(a4 + 40) = &type metadata for TrustedPhoneNumberStepProvider;
  v11 = sub_1000BC544();
  *(a4 + 16) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 48) = v11;
  *(a4 + 56) = v10;
  *(a4 + 64) = v9;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
}

uint64_t sub_1000F1F14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SymbolRenderingMode();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for Image.Scale();
      v10 = *(a3 + 24);
    }

    return sub_10000E5F0(a1 + v10, a2, v9);
  }
}

uint64_t sub_1000F1FF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SymbolRenderingMode();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for Image.Scale();
      v10 = *(a4 + 24);
    }

    return sub_100003CE8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for FlowSymbol(uint64_t a1)
{
  result = qword_100192120;
  if (!qword_100192120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F2108(uint64_t a1)
{
  type metadata accessor for SymbolRenderingMode();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Image.Scale();
    if (v2 <= 0x3F)
    {
      sub_1000ADD64();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000F21E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100192168, &qword_100130D18);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000F22AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_100192168, &qword_100130D18);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for RemoteAlertView(uint64_t a1)
{
  result = qword_1001921C8;
  if (!qword_1001921C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F23AC(uint64_t a1)
{
  sub_1000F2430(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RemoteAlertViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F2430(uint64_t a1)
{
  if (!qword_1001921D8)
  {
    type metadata accessor for PresentationDetent();
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1001921D8);
    }
  }
}

uint64_t sub_1000F24A4@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for RemoteAlertView(0);
  v30 = *(v1 - 8);
  v29 = *(v30 + 64);
  __chkstk_darwin(v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003768(&qword_100192208, &qword_100130D88);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v28 = swift_allocBox();
  v12 = v11;
  type metadata accessor for RemoteAlertViewModel(0);
  sub_1000F3300(&qword_100190EA0, type metadata accessor for RemoteAlertViewModel, &unk_10012E958);

  Bindable<A>.init(wrappedValue:)();
  v13 = static Color.clear.getter();
  v14 = static SafeAreaRegions.all.getter();
  v15 = static Edge.Set.all.getter();
  v32 = v13;
  v33 = v14;
  v34 = v15;
  (*(v5 + 16))(v8, v12, v4);
  Bindable.projectedValue.getter();
  v16 = *(v5 + 8);
  v16(v8, v4);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v16(v10, v4);
  v17 = v27;
  sub_1000F2E0C(v27, v3);
  v18 = *(v30 + 80);
  v19 = swift_allocObject();
  sub_1000F2F60(v3, v19 + ((v18 + 16) & ~v18));
  sub_1000F2E0C(v17, v3);
  v20 = (v18 + 24) & ~v18;
  v21 = swift_allocObject();
  v22 = v28;
  *(v21 + 16) = v28;
  sub_1000F2F60(v3, v21 + v20);

  sub_100003768(&qword_100192210, &qword_100130DB8);
  sub_100003768(&qword_100192218, &qword_100130DC0);
  sub_1000F3190();
  sub_1000F3214();
  v23 = v31;
  View.sheet<A>(isPresented:onDismiss:content:)();

  result = sub_100003768(&qword_100192230, &qword_100130DC8);
  v25 = (v23 + *(result + 36));
  *v25 = sub_1000F3348;
  v25[1] = v22;
  v25[2] = 0;
  v25[3] = 0;
  return result;
}

id sub_1000F28AC(uint64_t a1)
{
  v1 = *(*(a1 + *(type metadata accessor for RemoteAlertView(0) + 20)) + 16);

  return [v1 invalidate];
}

uint64_t sub_1000F28F8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v4 = sub_100003768(&qword_100192238, &qword_100130DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_100003768(&qword_10018A310, &unk_1001241F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_100003768(&qword_100192208, &qword_100130D88);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = type metadata accessor for RootView(0);
  __chkstk_darwin(v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_projectBox();
  (*(v14 + 16))(v16, v20, v13);
  Bindable.wrappedValue.getter();
  (*(v14 + 8))(v16, v13);
  sub_1000D5EDC(v12);

  v21 = type metadata accessor for DeepLinkContext(0);
  sub_100003CE8(v9, 1, 1, v21);
  sub_1000F350C(v12, v9, v19);
  sub_100003768(&qword_100192240, &qword_100130DD8);
  type metadata accessor for PresentationDetent();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100122C90;
  static PresentationDetent.medium.getter();
  static PresentationDetent.large.getter();
  sub_100067030(v22);
  sub_100003768(&qword_100192168, &qword_100130D18);
  State.projectedValue.getter();
  sub_1000F3300(&qword_10018A318, type metadata accessor for RootView, &unk_100130E40);
  View.presentationDetents(_:selection:)();

  sub_1000F3350(v6);
  sub_1000F33B8(v19);
  v23 = static SafeAreaRegions.all.getter();
  LOBYTE(v6) = static Edge.Set.all.getter();
  result = sub_100003768(&qword_100192218, &qword_100130DC0);
  v25 = a3 + *(result + 36);
  *v25 = v23;
  *(v25 + 8) = v6;
  return result;
}

uint64_t sub_1000F2CF0(uint64_t a1)
{
  v1 = sub_100003768(&qword_100192208, &qword_100130D88);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  Bindable.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  sub_1000D6680(1);
}

uint64_t sub_1000F2E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F2E70()
{
  type metadata accessor for RemoteAlertView(0);
  sub_100046168();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v5 = *(v4 + 64);
  type metadata accessor for PresentationDetent();
  sub_10000C31C();
  (*(v6 + 8))(v0 + v3);
  sub_100003768(&qword_100192168, &qword_100130D18);

  return _swift_deallocObject(v0, v3 + v5, v2 | 7);
}

uint64_t sub_1000F2F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000F2FC4()
{
  v1 = *(type metadata accessor for RemoteAlertView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000F28AC(v2);
}

uint64_t sub_1000F3024()
{
  type metadata accessor for RemoteAlertView(0);
  sub_100046168();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v5 = *(v4 + 64);

  type metadata accessor for PresentationDetent();
  sub_10000C31C();
  (*(v6 + 8))(v0 + v3);
  sub_100003768(&qword_100192168, &qword_100130D18);

  return _swift_deallocObject(v0, v3 + v5, v2 | 7);
}

uint64_t sub_1000F311C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteAlertView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1000F28F8(v4, a1);
}

unint64_t sub_1000F3190()
{
  result = qword_100192220;
  if (!qword_100192220)
  {
    sub_100004D48(&qword_100192210, &qword_100130DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192220);
  }

  return result;
}

unint64_t sub_1000F3214()
{
  result = qword_100192228;
  if (!qword_100192228)
  {
    sub_100004D48(&qword_100192218, &qword_100130DC0);
    type metadata accessor for RootView(255);
    sub_1000F3300(&qword_10018A318, type metadata accessor for RootView, &unk_100130E40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192228);
  }

  return result;
}

uint64_t sub_1000F3300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F3350(uint64_t a1)
{
  v2 = sub_100003768(&qword_100192238, &qword_100130DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F33B8(uint64_t a1)
{
  v2 = type metadata accessor for RootView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000F3418()
{
  result = qword_100192248;
  if (!qword_100192248)
  {
    sub_100004D48(&qword_100192230, &qword_100130DC8);
    sub_100004D48(&qword_100192210, &qword_100130DB8);
    sub_100004D48(&qword_100192218, &qword_100130DC0);
    sub_1000F3190();
    sub_1000F3214();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192248);
  }

  return result;
}

uint64_t sub_1000F350C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[1] = a1;
  v31 = a2;
  v5 = sub_100003768(&qword_10018A310, &unk_1001241F0);
  sub_10000ED84(v5);
  sub_10000ED78();
  __chkstk_darwin(v6);
  v8 = v30 - v7;
  sub_1000FA050();
  sub_10000AF7C();
  v10 = __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = v30 - v11;
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v13 = type metadata accessor for RootView(0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for SupportFlowIdentifier();
  sub_100003CE8(v12, 1, 1, v15);
  sub_1000FA07C();
  State.init(wrappedValue:)();
  sub_1000FA000();
  sub_10000ABCC(v16, v17, v18);
  sub_10000EC9C(a1, v12, &unk_10018A300, &unk_1001241E0);
  sub_10000ABCC(a3 + v14, &qword_100192250, &qword_100130E20);
  sub_1000FA07C();
  State.init(wrappedValue:)();
  sub_1000FA000();
  sub_10000ABCC(v19, v20, v21);
  v22 = v31;
  sub_10000EC9C(v31, v8, &qword_10018A310, &unk_1001241F0);
  type metadata accessor for FlowViewDataProvider(0);
  swift_allocObject();
  sub_1000F9E84();
  sub_100089078();
  v23 = (a3 + *(v13 + 24));
  v32 = v24;
  State.init(wrappedValue:)();
  sub_10000ABCC(v22, &qword_10018A310, &unk_1001241F0);
  sub_1000FA000();
  result = sub_10000ABCC(v25, v26, v27);
  v29 = v34;
  *v23 = v33;
  v23[1] = v29;
  return result;
}

uint64_t sub_1000F3744@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v85 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v3);
  sub_10003DC84();
  v84 = v4;
  v5 = type metadata accessor for RootView(0);
  v77 = *(v5 - 8);
  v89 = *(v77 + 64);
  v6 = v5 - 8;
  v73 = v5 - 8;
  __chkstk_darwin(v5 - 8);
  v74 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003768(&qword_10018B248, &qword_100125920);
  sub_10000ED84(v8);
  sub_10000ED78();
  __chkstk_darwin(v9);
  v75 = sub_100003768(&qword_100192310, &qword_100130E90);
  sub_100008780();
  v76 = v10;
  sub_10000ED78();
  __chkstk_darwin(v11);
  sub_10003DC84();
  v71 = v12;
  v78 = sub_100003768(&qword_100192318, &qword_100130E98);
  sub_100008780();
  v79 = v13;
  sub_10000ED78();
  __chkstk_darwin(v14);
  sub_10003DC84();
  v72 = v15;
  v80 = sub_100003768(&qword_100192320, &qword_100130EA0);
  sub_100008780();
  v81 = v16;
  sub_10000ED78();
  __chkstk_darwin(v17);
  sub_10003DC84();
  v87 = v18;
  sub_100003768(&qword_100192328, &qword_100130EA8);
  sub_100008780();
  v82 = v19;
  v83 = v20;
  sub_10000ED78();
  __chkstk_darwin(v21);
  sub_10003DC84();
  v88 = v22;
  v23 = (v1 + *(v6 + 32));
  v25 = *v23;
  v24 = v23[1];
  v97 = v25;
  v98 = v24;
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.projectedValue.getter();
  v26 = v91;
  v27 = v92;
  v28 = v93;
  swift_getKeyPath();
  v97 = v26;
  v98 = v27;
  v99 = v28;
  sub_100003768(&qword_100192338, &qword_100130EE0);
  Binding.subscript.getter();

  v90 = v1;
  v70 = sub_100003768(&qword_100192340, &qword_100130EE8);
  v29 = sub_100004D48(&qword_100192348, &qword_100130EF0);
  v30 = type metadata accessor for FlowViewDataProvider(255);
  v31 = sub_100004D48(&qword_100192350, &qword_100130EF8);
  v32 = sub_100004D48(&qword_100192358, &qword_100130F00);
  v33 = type metadata accessor for URL();
  v34 = type metadata accessor for SafariView(255);
  v35 = sub_1000F8564();
  v36 = sub_1000F9718(&qword_100192558, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v37 = sub_1000F9718(&qword_10018B6A0, type metadata accessor for SafariView, &unk_100126494);
  v91 = v32;
  v92 = v33;
  v93 = v34;
  v94 = v35;
  v95 = v36;
  v96 = v37;
  v38 = sub_1000F9FE4();
  v39 = sub_1000F93A4();
  v91 = v31;
  v92 = &type metadata for FirstLaunchWelcomeView;
  v93 = v38;
  v94 = v39;
  v40 = sub_1000F9FE4();
  v41 = sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  v91 = v29;
  v92 = v30;
  v93 = v40;
  v94 = v41;
  sub_1000F9FE4();
  v42 = v71;
  NavigationStack.init<>(path:root:)();
  v43 = v2;
  v44 = v74;
  sub_1000F93F8(v2, v74);
  v77 = *(v77 + 80);
  v45 = (v77 + 16) & ~v77;
  v46 = swift_allocObject();
  sub_1000F9460(v44, v46 + v45);
  sub_1000F9F80();
  v49 = sub_10000AAEC(v47, &qword_100192310, &qword_100130E90, v48);
  v50 = v72;
  v51 = v75;
  View.onLoad(perform:)();

  (*(v76 + 8))(v42, v51);
  sub_1000F93F8(v2, v44);
  v52 = swift_allocObject();
  v53 = v44;
  sub_1000F9460(v44, v52 + v45);
  v91 = v51;
  v92 = v49;
  sub_1000F9FB0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v78;
  View.onBackground(perform:)();

  (*(v79 + 8))(v50, v55);
  sub_100003768(&qword_100192250, &qword_100130E20);
  v69 = v43;
  v56 = v84;
  State.wrappedValue.getter();
  sub_1000F93F8(v43, v44);
  v57 = swift_allocObject();
  sub_1000F9460(v44, v57 + v45);
  v91 = v55;
  v92 = OpaqueTypeConformance2;
  sub_1000F9F98();
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_1000F9664();
  v60 = v87;
  v61 = v56;
  v62 = v80;
  v63 = v85;
  View.onChange<A>(of:initial:_:)();

  sub_10000ABCC(v61, &unk_10018A300, &unk_1001241E0);
  (*(v81 + 8))(v60, v62);
  sub_1000F93F8(v69, v53);
  v64 = swift_allocObject();
  sub_1000F9460(v53, v64 + v45);
  v91 = v62;
  v92 = v63;
  v93 = v58;
  v94 = v59;
  sub_1000F9F68();
  swift_getOpaqueTypeConformance2();
  v65 = v82;
  v66 = v88;
  View.onOpenSupportFlowURL(perform:)();

  return (*(v83 + 8))(v66, v65);
}

uint64_t sub_1000F404C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for RootView(0);
  v4 = v3 - 8;
  v47 = *(v3 - 8);
  v45 = *(v47 + 64);
  __chkstk_darwin(v3);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_100192578, &qword_100131028);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v42 = sub_100003768(&qword_100192358, &qword_100130F00);
  __chkstk_darwin(v42);
  v10 = &v38 - v9;
  v46 = sub_100003768(&qword_100192350, &qword_100130EF8);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v54 = &v38 - v11;
  v12 = sub_100003768(&qword_100192348, &qword_100130EF0);
  v13 = *(v12 - 8);
  v49 = v12;
  v50 = v13;
  __chkstk_darwin(v12);
  v43 = &v38 - v14;
  v41 = a1;
  sub_1000F4718(v10);
  v15 = (a1 + *(v4 + 32));
  v17 = *v15;
  v16 = v15[1];
  v52 = v17;
  v53 = v16;
  v61 = v17;
  v62 = v16;
  v40 = sub_100003768(&qword_100192330, &qword_100130EB0);
  State.projectedValue.getter();
  v18 = v55;
  v19 = v56;
  v20 = v57;
  swift_getKeyPath();
  v55 = v18;
  v56 = v19;
  v57 = v20;
  sub_100003768(&qword_100192338, &qword_100130EE0);
  Binding.subscript.getter();

  v39 = type metadata accessor for URL();
  v38 = type metadata accessor for SafariView(0);
  v21 = sub_1000F8564();
  v22 = sub_1000F9718(&qword_100192558, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v23 = sub_1000F9718(&qword_10018B6A0, type metadata accessor for SafariView, &unk_100126494);
  v24 = v42;
  View.sheet<A, B>(item:onDismiss:content:)();
  sub_10000ABCC(v8, &qword_100192578, &qword_100131028);
  sub_1000F97CC(v10);
  v61 = v52;
  v62 = v53;
  State.projectedValue.getter();
  v25 = v55;
  v26 = v56;
  v27 = v57;
  swift_getKeyPath();
  v61 = v25;
  v62 = v26;
  v63 = v27;
  Binding.subscript.getter();

  v28 = v44;
  sub_1000F93F8(v41, v44);
  v29 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v30 = swift_allocObject();
  sub_1000F9460(v28, v30 + v29);
  v55 = v24;
  v56 = v39;
  v57 = v38;
  v58 = v21;
  v59 = v22;
  v60 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_1000F93A4();
  v32 = v43;
  v33 = v46;
  v34 = v54;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v48 + 8))(v34, v33);
  v55 = v52;
  v56 = v53;
  State.wrappedValue.getter();
  type metadata accessor for FlowViewDataProvider(0);
  v55 = v33;
  v56 = &type metadata for FirstLaunchWelcomeView;
  v57 = OpaqueTypeConformance2;
  v58 = v37;
  swift_getOpaqueTypeConformance2();
  sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  v35 = v49;
  View.environment<A>(_:)();

  return (*(v50 + 8))(v32, v35);
}

uint64_t sub_1000F4718@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v107 = a1;
  v3 = type metadata accessor for RootView(0);
  v95 = *(v3 - 8);
  __chkstk_darwin(v3);
  v101 = v4;
  v96 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100003768(&qword_100192510, &qword_100130FE8);
  __chkstk_darwin(v108);
  v6 = &v87 - v5;
  v104 = sub_100003768(&qword_100192500, &qword_100130FD8);
  v97 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v87 - v7;
  v105 = sub_100003768(&qword_1001924F0, &qword_100130FC8);
  v99 = *(v105 - 8);
  __chkstk_darwin(v105);
  v98 = &v87 - v8;
  v106 = sub_100003768(&qword_100192580, &qword_100131080);
  v9 = *(v106 - 8);
  __chkstk_darwin(v106);
  v11 = &v87 - v10;
  v103 = sub_100003768(&qword_100192588, &qword_100131088);
  __chkstk_darwin(v103);
  v13 = &v87 - v12;
  v14 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v87 - v15;
  v17 = type metadata accessor for SupportFlowIdentifier();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003768(&qword_100192250, &qword_100130E20);
  State.wrappedValue.getter();
  v21 = sub_10000E5F0(v16, 1, v17);
  v100 = v13;
  if (v21 == 1)
  {
    sub_10000ABCC(v16, &unk_10018A300, &unk_1001241E0);
    v22 = type metadata accessor for FlowViewDataProvider(0);
    v91 = sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
    v90 = v22;
    v23 = Environment.init<A>(_:)();
    v25 = v24;
    v114 = 0;
    sub_100003768(&qword_100192590, &qword_100131090);
    State.init(wrappedValue:)();
    v89 = v17;
    v26 = v109;
    v27 = static Alignment.center.getter();
    v29 = v28;
    v30 = *(v108 + 36);
    v93 = v9;
    v31 = &v6[v30];
    sub_1000F6F84(v2, &v6[v30]);
    v32 = &v31[*(sub_100003768(&qword_100192538, &qword_100130FF8) + 36)];
    *v32 = v27;
    v32[1] = v29;
    *v6 = v23;
    v6[8] = v25 & 1;
    *(v6 + 1) = v26;
    v33 = sub_1000AAFE0();
    v92 = v11;
    v34 = v33;
    v35 = v96;
    sub_1000F93F8(v2, v96);
    v94 = v2;
    v36 = (*(v95 + 80) + 16) & ~*(v95 + 80);
    v37 = swift_allocObject();
    sub_1000F9460(v35, v37 + v36);
    v95 = sub_100003768(&qword_100192518, &qword_100130FF0);
    v88 = sub_1000F9188();
    v38 = sub_1000F9718(&qword_100192540, sub_1000AAFE0, &protocol conformance descriptor for NSObject);
    v39 = sub_1000F9294();
    v87 = v34;
    v40 = v108;
    View.navigationDestination<A, B>(for:destination:)();

    sub_10000ABCC(v6, &qword_100192510, &qword_100130FE8);
    sub_1000F93F8(v94, v35);
    v41 = swift_allocObject();
    sub_1000F9460(v35, v41 + v36);
    v42 = sub_100003768(&qword_100192508, &qword_100130FE0);
    *&v109 = v40;
    *(&v109 + 1) = v87;
    v110 = v95;
    v111 = v88;
    v112 = v38;
    v113 = v39;
    v96 = &opaque type descriptor for <<opaque return type of View.navigationDestination<A, B>(for:destination:)>>;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = sub_1000F9718(&qword_10018E498, &type metadata accessor for SupportFlowIdentifier, &protocol conformance descriptor for SupportFlowIdentifier);
    v45 = sub_100004D48(&qword_100192370, &qword_100130F08);
    v108 = v45;
    v101 = sub_1000F88AC();
    *&v109 = v45;
    *(&v109 + 1) = v90;
    v110 = v101;
    v111 = v91;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = v98;
    v48 = v89;
    v49 = v104;
    v50 = v42;
    v51 = v102;
    View.navigationDestination<A, B>(for:destination:)();

    (*(v97 + 8))(v51, v49);
    v52 = sub_1000F75D4();
    LODWORD(v97) = v52;
    v102 = &v87;
    __chkstk_darwin(v52);
    v53 = sub_100003768(&qword_1001924F8, &qword_100130FD0);
    *&v109 = v49;
    *(&v109 + 1) = v48;
    v110 = v50;
    v111 = OpaqueTypeConformance2;
    v112 = v44;
    v113 = v46;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = sub_100004D48(&qword_100192550, &qword_100131000);
    v56 = sub_10000AC24();
    v57 = v105;
    *&v109 = v105;
    *(&v109 + 1) = &type metadata for String;
    v110 = v54;
    v111 = v56;
    v58 = swift_getOpaqueTypeConformance2();
    *&v109 = v55;
    *(&v109 + 1) = &type metadata for String;
    v110 = v58;
    v111 = &protocol witness table for String;
    v59 = swift_getOpaqueTypeConformance2();
    v60 = v92;
    v61 = v53;
    View.when<A>(_:_:)();
    (*(v99 + 8))(v47, v57);
    v62 = v93;
    v63 = v106;
    (*(v93 + 16))(v100, v60, v106);
    swift_storeEnumTagMultiPayload();
    *&v109 = v57;
    *(&v109 + 1) = v61;
    v110 = v54;
    v111 = v59;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v62 + 8))(v60, v63);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    sub_1000F635C(&v109);
    v65 = v110;
    v66 = BYTE2(v110);
    v67 = BYTE3(v110);
    *v13 = v109;
    v13[18] = v66;
    *(v13 + 8) = v65;
    v13[19] = v67;
    swift_storeEnumTagMultiPayload();
    v68 = sub_100003768(&qword_100192370, &qword_100130F08);
    v69 = sub_1000F88AC();
    v103 = sub_100004D48(&qword_1001924F8, &qword_100130FD0);
    v70 = sub_100004D48(&qword_100192508, &qword_100130FE0);
    v71 = sub_1000AAFE0();
    v72 = sub_100004D48(&qword_100192518, &qword_100130FF0);
    v73 = sub_1000F9188();
    v74 = sub_1000F9718(&qword_100192540, sub_1000AAFE0, &protocol conformance descriptor for NSObject);
    v75 = sub_1000F9294();
    *&v109 = v108;
    *(&v109 + 1) = v71;
    v110 = v72;
    v111 = v73;
    v112 = v74;
    v113 = v75;
    v76 = swift_getOpaqueTypeConformance2();
    v77 = sub_1000F9718(&qword_10018E498, &type metadata accessor for SupportFlowIdentifier, &protocol conformance descriptor for SupportFlowIdentifier);
    v78 = type metadata accessor for FlowViewDataProvider(255);
    v79 = sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
    *&v109 = v68;
    *(&v109 + 1) = v78;
    v110 = v69;
    v111 = v79;
    v80 = swift_getOpaqueTypeConformance2();
    *&v109 = v104;
    *(&v109 + 1) = v17;
    v110 = v70;
    v111 = v76;
    v112 = v77;
    v113 = v80;
    v81 = swift_getOpaqueTypeConformance2();
    v82 = sub_100004D48(&qword_100192550, &qword_100131000);
    v83 = sub_10000AC24();
    v84 = v105;
    *&v109 = v105;
    *(&v109 + 1) = &type metadata for String;
    v110 = v81;
    v111 = v83;
    v85 = swift_getOpaqueTypeConformance2();
    *&v109 = v82;
    *(&v109 + 1) = &type metadata for String;
    v110 = v85;
    v111 = &protocol witness table for String;
    v86 = swift_getOpaqueTypeConformance2();
    *&v109 = v84;
    *(&v109 + 1) = v103;
    v110 = v81;
    v111 = v86;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_1000F5408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1000F5474(uint64_t a1)
{
  v2 = type metadata accessor for ClientFlowPresentationState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(type metadata accessor for RootView(0) + 24));
  v12 = *v10;
  v11 = v10[1];
  v19 = v12;
  v20 = v11;
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  v13 = sub_10008A98C();

  if ((v13 & 1) == 0)
  {
    v15 = *a1;
    v16 = *(a1 + 8);

    if ((v16 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      j__swift_release(v15);
      result = (*(v7 + 8))(v9, v6);
      v15 = v19;
    }

    if (v15)
    {
      (*(v3 + 104))(v5, enum case for ClientFlowPresentationState.cancelled(_:), v2);
      SupportFlowSceneHostingClientManager.flowState.setter();
    }
  }

  return result;
}

uint64_t sub_1000F56C8@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for FlowViewDataProvider(0);
  sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  result = Environment.init<A>(_:)();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = v4 & 1;
  return result;
}