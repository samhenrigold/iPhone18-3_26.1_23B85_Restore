uint64_t sub_10001A9F0()
{
  v1 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = [v0 effectiveIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || ([v0 flags] & 1) != 0 && (objc_msgSend(v0, "flags") & 2) == 0)
  {
    return ([v0 flags] >> 9) & 1;
  }

  if (([v0 flags] & 1) != 0 && ((objc_msgSend(v0, "flags") & 4) != 0 || (objc_msgSend(v0, "flags") & 8) != 0))
  {
    return ([v0 flags] >> 9) & 1;
  }

  sub_10001D2B4(v3);
  v9 = type metadata accessor for UUID();
  v10 = 1;
  v11 = sub_100015468(v3, 1, v9);
  sub_10001D334(v3);
  if (v11 != 1)
  {
    return ([v0 flags] >> 9) & 1;
  }

  return v10;
}

uint64_t sub_10001AB58(unint64_t *a1)
{

  return sub_100274E3C(a1, v1, v2);
}

uint64_t sub_10001AB88(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

uint64_t sub_10001ABE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return v3;
}

uint64_t sub_10001ABF4()
{

  return sub_100049528(v0 & 0xFFFFFFFF00000001, v2, v1);
}

uint64_t sub_10001AC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t sub_10001AC80()
{

  return static _DictionaryStorage.allocate(capacity:)();
}

uint64_t sub_10001AC9C(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = _NSConcreteStackBlock;
  return result;
}

void sub_10001ACBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[2] = &_swiftEmptySetSingleton;
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_100006AF0(0, &qword_1006A99B0, IRCandidate_ptr);
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      swift_bridgeObjectRetain_n();
      v10 = sub_1003D67BC();
      sub_1003D84CC(v8, v9, v10);
      sub_1003968BC(v29, v10);

      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    sub_100006AF0(0, &qword_1006A99B0, IRCandidate_ptr);
    v12 = a2 + 40;
    do
    {

      v13 = sub_1003D67BC();
      sub_1003968BC(v29, v13);

      v12 += 16;
      --v11;
    }

    while (v11);
  }

  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v14 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10057D6A0;
  sub_100006AF0(0, &qword_1006A99B0, IRCandidate_ptr);
  sub_10000CE3C(&unk_1006A99E0, &qword_1006A99B0, IRCandidate_ptr);
  v29[0] = Set.description.getter();
  v29[1] = v16;
  v17 = String.init<A>(reflecting:)();
  v19 = v18;
  *(v15 + 56) = &type metadata for String;
  v20 = sub_100009D88();
  *(v15 + 64) = v20;
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v21 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession;
  v29[0] = *(a3 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession);
  v22 = v29[0];
  sub_10026D814(&unk_1006A99B8, &unk_100585928);
  v23 = String.init<A>(describing:)();
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v20;
  *(v15 + 72) = v23;
  *(v15 + 80) = v24;
  v25 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating candidates %@ for session %@", 37, 2, &_mh_execute_header, v14, v25, v15);

  v26 = *(a3 + v21);
  if (v26)
  {
    v27 = v26;
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v27 updateCandidates:isa];
  }

  else
  {
  }
}

void sub_10001AFD0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100010060();
    if (*(v4 + 16) == *(v5 + 16))
    {
      v6 = 0;
      v7 = v3;
      sub_10002F730();
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & v8;
      v12 = (v9 + 63) >> 6;
      v13 = v2 + 56;
LABEL_7:
      if (v11)
      {
        v14 = __clz(__rbit64(v11));
        v31 = (v11 - 1) & v11;
        v32 = v12;
        goto LABEL_14;
      }

      v15 = v6;
      do
      {
        v6 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          return;
        }

        if (v6 >= v12)
        {
          return;
        }

        ++v15;
      }

      while (!*(v7 + 8 * v6));
      v32 = v12;
      sub_100007C8C();
      v31 = v17 & v16;
LABEL_14:
      memcpy(__dst, (*(v3 + 48) + 72 * (v14 | (v6 << 6))), 0x48uLL);
      Hasher.init(_seed:)();
      sub_10001C174(__dst, v33);
      sub_1002BA708(v34);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      if ((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v29 = v7;
        v30 = v3;
        v21 = ~v19;
        v22 = __dst[0];
        v23 = __dst[1];
        while (1)
        {
          memcpy(v34, (*(v2 + 48) + 72 * v20), sizeof(v34));
          v24 = v34[0] == v22 && v34[1] == v23;
          if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_39;
          }

          v25 = v34[2] == __dst[2] && v34[3] == __dst[3];
          if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v34[4] != __dst[4] || LOBYTE(v34[5]) != (__dst[5] & 1))
          {
            goto LABEL_39;
          }

          sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
          sub_10001C174(v34, v33);
          if ((static NSObject.== infix(_:_:)() & 1) == 0)
          {
            break;
          }

          v26 = __dst[8];
          if (v34[8])
          {
            if (!__dst[8])
            {
              break;
            }

            if (v34[7] == __dst[7] && v34[8] == __dst[8])
            {
              sub_1002F6EC4(v34);
              sub_1002F6EC4(__dst);
              v7 = v29;
              v3 = v30;
              v11 = v31;
              v12 = v32;
              goto LABEL_7;
            }

            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1002F6EC4(v34);
            if (v28)
            {
              goto LABEL_41;
            }
          }

          else
          {
            sub_1002F6EC4(v34);
            if (!v26)
            {
LABEL_41:
              sub_1002F6EC4(__dst);
              v7 = v29;
              v3 = v30;
              v11 = v31;
              v12 = v32;
              goto LABEL_7;
            }
          }

LABEL_39:
          v20 = (v20 + 1) & v21;
          if (((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        sub_1002F6EC4(v34);
        goto LABEL_39;
      }

LABEL_44:
      sub_1002F6EC4(__dst);
    }
  }
}

uint64_t sub_10001B2E0(uint64_t a1)
{

  sub_10001AFD0(v3, a1);
  LOBYTE(a1) = v4;

  if ((a1 & 1) == 0)
  {
    v6 = *(v1 + qword_1006A4D10);
    if (v6)
    {
      v7 = *(v1 + qword_1006A4D10 + 8);

      v6(v8);

      return sub_1000051F8(v6, v7);
    }
  }

  return result;
}

uint64_t sub_10001B388(uint64_t a1)
{
  v2 = *(v1 + qword_1006A4D68);
  *(v1 + qword_1006A4D68) = a1;
  sub_10001B2E0(v2);
}

void sub_10001B3D0()
{
  v1 = *((swift_isaMask & *v0) + 0x68);
  swift_beginAccess();
  v2 = [*(v0 + v1) localDevice];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 flags];

    v5 = (v4 & 0x20) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *((swift_isaMask & *v0) + 0x78);
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_12:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(v7 + 56) + ((v13 << 9) | (8 * v14)));
    if (([v15 flags] & 1) == 0 || v5)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      sub_10001B2B4(_swiftEmptyArrayStorage);
      return;
    }

    v10 = *(v7 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10001B5D0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100019E3C();
  }
}

void sub_10001B630()
{
  v1 = v0 + *((swift_isaMask & *v0) + 0x70);
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 1);

    v2(v4);

    sub_1000051F8(v2, v3);
  }
}

void *sub_10001B784(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_10001B8C8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id sub_10001B928(void *a1)
{
  v2 = v1;
  v4 = sub_10001B8C8(v1, &selRef_idsDeviceIdentifier);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = a1[3];
    v9 = a1[4];
    sub_100009B14(a1, v8);
    v10 = (*(v9 + 8))(v6, v7, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_10001B8C8(v2, &selRef_publicIdentifier);
  if (v12)
  {
    v13 = v12;
    if (v10)
    {
    }

    else
    {
      v14 = v11;
      sub_100006AF0(0, &qword_1006A5C40, IDSDestination_ptr);
      return sub_10001BA24(v14, v13);
    }
  }

  return v10;
}

id sub_10001BA24(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();

  v3 = [swift_getObjCClassFromMetadata() destinationWithRapportPublicIdentifier:v2];

  return v3;
}

uint64_t sub_10001BA88@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v34[3] = sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
  v34[4] = &off_10062E588;
  v34[0] = a1;
  if ((sub_10001A9F0() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_10001D2B4(v8);
  v9 = type metadata accessor for UUID();
  v10 = sub_100015468(v8, 1, v9);
  sub_10001D334(v8);
  if (v10 != 1)
  {
    v15 = sub_10001BEF4();
    if (v15 <= 0x1B && ((1 << v15) & 0x8400040) != 0 && ([a1 flags] & 0x200) != 0)
    {
      sub_100009AB0(v34, v32);
      v25 = sub_10001BDB8(v32, v33);
      __chkstk_darwin(v25);
      v27 = (&v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v28 + 16))(v27);
      sub_1003BA7A0(*v27, a2, v35);
      goto LABEL_10;
    }

LABEL_7:

    v16 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  sub_100009AB0(v34, v32);
  v11 = sub_10001BDB8(v32, v33);
  __chkstk_darwin(v11);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  sub_10001BE08(*v13, a2, v35);
LABEL_10:
  v16 = v35[0];
  v17 = v35[1];
  v18 = v35[2];
  v19 = v35[3];
  v20 = v35[4];
  v31 = v36;
  v21 = v37;
  v22 = v38;
  v23 = v39;
  sub_100009B7C(v32);
  if (v17)
  {
    v24 = v31 & 1;
    goto LABEL_12;
  }

  v16 = 0;
LABEL_8:
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
LABEL_12:
  result = sub_100009B7C(v34);
  *a3 = v16;
  a3[1] = v17;
  a3[2] = v18;
  a3[3] = v19;
  a3[4] = v20;
  a3[5] = v24;
  a3[6] = v21;
  a3[7] = v22;
  a3[8] = v23;
  return result;
}

uint64_t sub_10001BDB8(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_10001BE08(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10001B8C8(a1, &selRef_name);
  v8 = v7;
  if (v7)
  {
    v9 = v6;
    v10 = [a1 effectiveIdentifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10001BEF4();
    v15 = sub_10001B8C8(a1, &selRef_model);
    v17 = v16;
  }

  else
  {

    v11 = 0;
    v13 = 0;
    v9 = 0;
    v14 = 0;
    a2 = 0;
    v15 = 0;
    v17 = 0;
  }

  *a3 = v11;
  a3[1] = v13;
  a3[2] = v9;
  a3[3] = v8;
  a3[4] = v14;
  a3[5] = 0;
  a3[6] = a2;
  a3[7] = v15;
  a3[8] = v17;
}

uint64_t sub_10001BEF4()
{
  v1 = sub_10001B8C8(v0, &selRef_model);
  if (v2)
  {

    return sub_10001BF50(v1, v2);
  }

  else if (([v0 flags] & 2) != 0)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001BF50(uint64_t a1, uint64_t a2)
{
  v8._object = 0x8000000100564E00;
  v8._countAndFlagsBits = 0xD000000000000011;
  if (sub_10000A004(v8))
  {
    v4 = 22;
  }

  else
  {
    v9._countAndFlagsBits = 0x6363416F69647541;
    v9._object = 0xEE0079726F737365;
    if (sub_10000A004(v9))
    {
      v4 = 6;
    }

    else
    {
      v10._countAndFlagsBits = 1685016681;
      v10._object = 0xE400000000000000;
      if (sub_10000A004(v10))
      {
        v4 = 7;
      }

      else
      {
        v11._countAndFlagsBits = 0x3864615069;
        v11._object = 0xE500000000000000;
        if (sub_10000A004(v11))
        {
          v4 = 15;
        }

        else
        {
          v12._countAndFlagsBits = 1684099177;
          v12._object = 0xE400000000000000;
          if (sub_10000A004(v12))
          {
            v4 = 8;
          }

          else
          {
            v13._countAndFlagsBits = 1667321193;
            v13._object = 0xE400000000000000;
            if (sub_10000A004(v13))
            {
              v4 = 9;
            }

            else
            {
              v14._countAndFlagsBits = 0x6B6F6F4263614DLL;
              v14._object = 0xE700000000000000;
              if (sub_10000A004(v14))
              {
                v4 = 10;
              }

              else
              {
                v15._countAndFlagsBits = 0x696E696D63614DLL;
                v15._object = 0xE700000000000000;
                if (sub_10000A004(v15))
                {
                  v4 = 11;
                }

                else
                {
                  v16._countAndFlagsBits = 0x6F725063614DLL;
                  v16._object = 0xE600000000000000;
                  if (sub_10000A004(v16))
                  {
                    v4 = 12;
                  }

                  else
                  {
                    v17._countAndFlagsBits = 0x6863746157;
                    v17._object = 0xE500000000000000;
                    if (sub_10000A004(v17))
                    {
                      v4 = 13;
                    }

                    else
                    {
                      v18._countAndFlagsBits = 0x447974696C616552;
                      v18._object = 0xED00006563697665;
                      if (sub_10000A004(v18))
                      {
                        v4 = 37;
                      }

                      else
                      {
                        v4 = 0;
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
  }

  v5 = a1 == 0x312C363163614DLL && a2 == 0xE700000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 10;
  }

  v19._object = 0x8000000100564E20;
  v19._countAndFlagsBits = 0xD000000000000011;
  v6 = sub_10000A004(v19);

  if (v6)
  {
    return 27;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001C1D0(void *a1, uint64_t *a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_1002BA708(__dst);
  Hasher._finalize()();
  sub_1000052DC();
  v7 = v6 & ~v5;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_27:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *v19;
    sub_10001C174(a2, __dst);
    sub_10001C454(a2, v7, isUniquelyReferenced_nonNull_native);
    *v19 = v22[0];
    memcpy(a1, a2, 0x48uLL);
    return 1;
  }

  v8 = ~v5;
  v9 = *a2;
  v10 = a2[1];
  while (1)
  {
    memcpy(__dst, (*(v4 + 48) + 72 * v7), 0x48uLL);
    v11 = __dst[0] == v9 && __dst[1] == v10;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_26;
    }

    v12 = __dst[2] == a2[2] && __dst[3] == a2[3];
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || __dst[4] != a2[4] || LOBYTE(__dst[5]) != (a2[5] & 1))
    {
      goto LABEL_26;
    }

    sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
    sub_10001C174(__dst, v22);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
LABEL_24:
      sub_1002F6EC4(__dst);
      goto LABEL_26;
    }

    v13 = a2[8];
    if (__dst[8])
    {
      break;
    }

    sub_1002F6EC4(__dst);
    if (!v13)
    {
      goto LABEL_30;
    }

LABEL_26:
    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (!v13)
  {
    goto LABEL_24;
  }

  if (__dst[7] != a2[7] || __dst[8] != v13)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1002F6EC4(__dst);
    if (v15)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  sub_1002F6EC4(__dst);
LABEL_30:
  sub_1002F6EC4(a2);
  v18 = (*(v4 + 48) + 72 * v7);
  memcpy(v22, v18, sizeof(v22));
  memcpy(a1, v18, 0x48uLL);
  sub_10001C174(v22, v21);
  return 0;
}

void *sub_10001C454(uint64_t *__src, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10001CA20(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_100398D98();
        goto LABEL_34;
      }

      sub_10001C6E0(v6 + 1);
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    sub_1002BA708(__dst);
    v9 = Hasher._finalize()();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      v12 = *__src;
      v13 = __src[1];
      do
      {
        memcpy(__dst, (*(v8 + 48) + 72 * a2), 0x48uLL);
        v14 = __dst[0] == v12 && __dst[1] == v13;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v15 = __dst[2] == __src[2] && __dst[3] == __src[3];
          if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && __dst[4] == __src[4] && LOBYTE(__dst[5]) == (__src[5] & 1))
          {
            sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
            sub_10001C174(__dst, v25);
            if ((static NSObject.== infix(_:_:)() & 1) == 0)
            {
              goto LABEL_31;
            }

            v16 = __src[8];
            if (!__dst[8])
            {
              sub_1002F6EC4(__dst);
              if (!v16)
              {
                goto LABEL_38;
              }

              goto LABEL_33;
            }

            if (v16)
            {
              if (__dst[7] == __src[7] && __dst[8] == v16)
              {
                goto LABEL_37;
              }

              v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_1002F6EC4(__dst);
              if (v18)
              {
                goto LABEL_38;
              }
            }

            else
            {
LABEL_31:
              sub_1002F6EC4(__dst);
            }
          }
        }

LABEL_33:
        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_34:
  v19 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v19 + 48) + 72 * a2), __src, 0x48uLL);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_37:
    sub_1002F6EC4(__dst);
LABEL_38:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_10001C6E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10026D814(&unk_1006A7B80, &qword_100583460);
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
        memcpy(__dst, (*(v3 + 48) + 72 * (v12 | (v6 << 6))), 0x48uLL);
        Hasher.init(_seed:)();
        sub_10001C174(__dst, v23);
        String.hash(into:)();
        String.hash(into:)();
        Hasher._combine(_:)(__dst[4]);
        Hasher._combine(_:)(__dst[5]);
        NSObject.hash(into:)();
        if (__dst[8])
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        result = Hasher._finalize()();
        v15 = -1 << *(v5 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = memcpy((*(v5 + 48) + 72 * v18), __dst, 0x48uLL);
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v11 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_24;
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
          goto LABEL_28;
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

LABEL_28:
    *v2 = v5;
  }

  return result;
}

void sub_10001C9AC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

Swift::Int sub_10001CA20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10026D814(&unk_1006A7B80, &qword_100583460);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_30:
    v36 = v5;

    *v2 = v36;
    return result;
  }

  v6 = 0;
  v39 = (v3 + 56);
  v40 = v3;
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
  v37 = v1;
  v38 = (v7 + 63) >> 6;
  v10 = result + 56;
  v41 = result;
  if (!v9)
  {
LABEL_7:
    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v38)
      {
        break;
      }

      v13 = v39[v6];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      v35 = v5;
      sub_100396044(0, (v34 + 63) >> 6, v39);
      v5 = v35;
    }

    else
    {
      *v39 = -1 << v34;
    }

    v2 = v37;
    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v11 = __clz(__rbit64(v9));
    v42 = (v9 - 1) & v9;
LABEL_12:
    v14 = *(v3 + 48) + 72 * (v11 | (v6 << 6));
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 32);
    v20 = *(v14 + 40);
    *v45 = *(v14 + 41);
    *&v45[3] = *(v14 + 44);
    v21 = *(v14 + 48);
    v44 = *(v14 + 56);
    v22 = *(v14 + 64);
    Hasher.init(_seed:)();
    v43 = v16;
    v23 = v17;
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v19);
    Hasher._combine(_:)(v20 & 1);
    NSObject.hash(into:)();
    if (v22)
    {
      Hasher._combine(_:)(1u);
      v24 = v44;
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
      v24 = v44;
    }

    result = Hasher._finalize()();
    v5 = v41;
    v25 = -1 << *(v41 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v10 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v10 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v10 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v41 + 48) + 72 * v28;
    *v33 = v15;
    *(v33 + 8) = v43;
    *(v33 + 16) = v23;
    *(v33 + 24) = v18;
    *(v33 + 32) = v19;
    *(v33 + 40) = v20;
    *(v33 + 41) = *v45;
    *(v33 + 44) = *&v45[3];
    *(v33 + 48) = v21;
    *(v33 + 56) = v24;
    *(v33 + 64) = v22;
    ++*(v41 + 16);
    v3 = v40;
    v9 = v42;
    if (!v42)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v10 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

id sub_10001CD68()
{
  sub_100006AF0(0, &unk_1006A4E40, off_1006166A0);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 deviceWithUniqueID:v1];

  return v2;
}

void sub_10001CF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001D130()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 deviceWithUniqueID:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_opt_self() destinationWithDevice:v2];

  return v3;
}

BOOL sub_10001D214()
{
  sub_100006AF0(0, &unk_1006A4E40, off_1006166A0);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 service];

  v2 = [v1 iCloudAccount];
  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_10001D2B4@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 mediaSystemIdentifier];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();

  return sub_10000AF74(a1, v5, 1, v6);
}

uint64_t sub_10001D334(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001D9D8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a1)
  {
    v7 = sub_10001E1D4();
    v9 = v8;
  }

  else
  {
    if (qword_1006A0C50 != -1)
    {
      sub_10000AB54(&qword_1006A0C50);
    }

    v7 = qword_1006AC3A0;
    v9 = *algn_1006AC3A8;
  }

  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  sub_100008BA8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10057D690;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  if (a4)
  {
    sub_1004615A4();
  }

  else
  {
    v11 = sub_10001DAF4(v10, a2, a3);
  }

  v12 = v11;

  return v12 & 1;
}

uint64_t sub_10001DAC4(uint64_t a1)
{
  sub_1000115CC(a1, v1);

  return static DispatchQoS.unspecified.getter();
}

uint64_t sub_10001DAF4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
  sub_100005298(v3 + OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier, v40);
  v5 = *(v3 + v4);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_100006884();
  v8 = sub_100005208(v6, v7);
  if (v9)
  {
    v10 = *(*(v5 + 56) + 8 * v8);

    isa = Array._bridgeToObjectiveC()().super.isa;
    v39 = v10;
    v12 = [v10 allowableByContactsHandles:isa];

    v38 = v12;
    v13 = [v12 allowedByScreenTime];
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134(&qword_1006A0AA0);
    }

    v37 = qword_1006BA380;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10057CA70;
    if (v13)
    {
      v15 = 0x6465776F6C6C61;
    }

    else
    {
      v15 = 0x6F6C6C6120746F6ELL;
    }

    if (v13)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xEB00000000646577;
    }

    v17 = v16;
    String.append(_:)(*&v15);

    v18 = String.init<A>(reflecting:)();
    v20 = v19;
    *(v14 + 56) = &type metadata for String;
    v21 = sub_100009D88();
    *(v14 + 64) = v21;
    *(v14 + 32) = v18;
    *(v14 + 40) = v20;
    v22 = Array._bridgeToObjectiveC()().super.isa;
    v23 = TULoggableStringForHandles();

    if (v23)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = v13 ^ 1;
    v28 = sub_10001E478(v24, v26);
    v30 = v29;

    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v21;
    *(v14 + 72) = v28;
    *(v14 + 80) = v30;
    v31 = String.init<A>(reflecting:)();
    *(v14 + 136) = &type metadata for String;
    *(v14 + 144) = v21;
    *(v14 + 112) = v31;
    *(v14 + 120) = v32;

    v33 = String.init<A>(reflecting:)();
    *(v14 + 176) = &type metadata for String;
    *(v14 + 184) = v21;
    *(v14 + 152) = v33;
    *(v14 + 160) = v34;
    v35 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Screen time: Policy %@ for handles: %@ (%@) with bundle identifier: %@", 70, 2, &_mh_execute_header, v37, v35, v14);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

uint64_t sub_10001E1D4()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 value];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v14[0] = v6;
  v14[1] = v8;
  static CharacterSet.controlCharacters.getter();
  sub_10001E364();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  (*(v2 + 8))(v4, v1);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    if (qword_1006A0C50 != -1)
    {
      swift_once();
    }

    v9 = qword_1006AC3A0;
  }

  return v9;
}

unint64_t sub_10001E364()
{
  result = qword_1006AC390;
  if (!qword_1006AC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AC390);
  }

  return result;
}

uint64_t sub_10001E41C()
{
  v3 = *(v1 + 168);

  return sub_1002DB564(v0, v3);
}

uint64_t sub_10001E450()
{

  return static _DictionaryStorage.resize(original:capacity:move:)();
}

uint64_t sub_10001E478(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_1000359E0();
  }

  return String.init<A>(reflecting:)();
}

uint64_t sub_10001E4BC()
{
  v1 = [v0 handles];
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10001E558(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_10001E594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  sub_100018168();
  if (!v12)
  {
    if (v11)
    {
      sub_100008B14();
      v37 = __CocoaSet.element(at:)();
      v13 = sub_100006AF0(0, a5, a6);
      sub_100008338(v13, v14, v15, v13, v16, v17, v18, v19, v37, v38);
      swift_dynamicCast();
      sub_100008348();
      return;
    }

    goto LABEL_23;
  }

  if (v11)
  {
    sub_100006AF0(0, a5, a6);
    sub_100008B14();
    if (__CocoaSet.Index.age.getter() == *(v6 + 36))
    {
      sub_100008B14();
      v20 = __CocoaSet.Index.element.getter();
      sub_100008338(v20, v21, v22, v23, v24, v25, v26, v27, v20, v38);
      swift_dynamicCast();
      a5 = v39;
      NSObject._rawHashValue(seed:)(*(v6 + 40));
      sub_10001512C();
      while (1)
      {
        sub_100010288();
        if ((v28 & 1) == 0)
        {
          goto LABEL_22;
        }

        v29 = *(*(v6 + 48) + 8 * v8);
        v30 = static NSObject.== infix(_:_:)();

        if (v30)
        {
          goto LABEL_15;
        }
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v8 < 0 || (sub_100017158(), v31 ^ v32 | v12))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_10000E684();
  if ((v33 & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(v6 + 36) != v7)
  {
    __break(1u);
LABEL_15:
  }

  sub_100008348();

  v36 = v34;
}

uint64_t sub_10001E728(void *a1)
{
  v1 = [a1 siriDisplayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10001E84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10000B8E8();
  v34 = v33;
  v36 = v35;
  sub_10039C460();
  String.hash(into:)();
  Hasher._finalize()();
  sub_1000052DC();
  v39 = ~v38;
  while (1)
  {
    v40 = v37 & v39;
    if (((1 << (v37 & v39)) & *(v32 + 56 + (((v37 & v39) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v41 = (*(v32 + 48) + 16 * v40);
    v42 = *v41 == v36 && v41[1] == v34;
    if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v43 = (*(v32 + 48) + 16 * v40);
      v44 = v43[1];
      *v30 = *v43;
      v30[1] = v44;

      goto LABEL_11;
    }

    v37 = v40 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v31;

  sub_10001E96C(v36, v34, v40, isUniquelyReferenced_nonNull_native);
  *v31 = v46;
  *v30 = v36;
  v30[1] = v34;
LABEL_11:
  sub_1000089B0();
}

void sub_10001E96C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100396BF8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10002D314(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1003989F8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

id sub_10001EAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String._bridgeToObjectiveC()();

  isa = Set._bridgeToObjectiveC()().super.isa;

  v6 = [v3 initWithDisplayName:v4 handles:isa];

  return v6;
}

id sub_10001EB80(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100006AF0(0, &unk_1006A3CE0, SCAParticipant_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [a3 interventionRequiredFor:isa callType:a2];

  return v6;
}

uint64_t sub_10001EC50()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000200D4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000200A4;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002007C;
  aBlock[3] = &unk_10062A6D8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_10001EDB4()
{
  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

uint64_t sub_10001F254()
{
  v1 = [v0 provider];
  v2 = [v1 isTelephonyProvider];

  if (v2)
  {
    return 3;
  }

  if ([v0 isVideo])
  {
    return 1;
  }

  return 4;
}

uint64_t sub_10001FAAC(void *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  v18[3] = sub_100006AF0(0, a2, a3);
  v18[4] = a4;
  v18[0] = a1;
  if (([a1 bypassIntervention] & 1) != 0 || (v7 = v4 + OBJC_IVAR___CSDDialingInterventionController_interventionProvider, v8 = *(v4 + OBJC_IVAR___CSDDialingInterventionController_interventionProvider + 24), v9 = *(v4 + OBJC_IVAR___CSDDialingInterventionController_interventionProvider + 32), v10 = sub_100007624(), sub_100009B14(v10, v11), ((*(v9 + 8))(v18, v8, v9) & 1) == 0))
  {
    v16 = 0;
  }

  else
  {
    v12 = *(v7 + 24);
    v13 = *(v7 + 32);
    v14 = sub_100007624();
    sub_100009B14(v14, v15);
    (*(v13 + 16))(v18, v12, v13);
    v16 = 1;
  }

  sub_100009B7C(v18);
  return v16;
}

uint64_t sub_10001FB8C(void *a1)
{
  sub_100009B14(a1, a1[3]);
  v1 = sub_100007624();
  v3 = v2(v1);
  v4 = sub_10001E550();
  if (v4)
  {
    v5 = v4;
    v47 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_10001E578();
    v44 = result;
    v45 = v7;
    v46 = v8 & 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v41 = v3 & 0xC000000000000001;
      v39 = v5;
      v40 = v3;
      while (!__OFADD__(v9, 1))
      {
        v10 = v45;
        v11 = v46;
        v42 = v44;
        sub_10001E580(v44, v45, v46, v3);
        v13 = v12;
        v14 = sub_10001E728(v12);
        if (v15)
        {
          v16 = v14;
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = 0xE000000000000000;
        }

        sub_10026D814(&qword_1006A4760, &unk_10057EA60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10057D690;
        v19 = [v13 value];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        *(inited + 32) = v20;
        *(inited + 40) = v22;
        v23 = sub_10001E78C(inited);
        v24 = objc_allocWithZone(SCAParticipant);
        sub_10001EAD4(v16, v17, v23);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v41)
        {
          result = v42;
          v3 = v40;
          if (!v11)
          {
            goto LABEL_23;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v30 = v39;
          v31 = v9 + 1;
          sub_10026D814(&unk_1006A2650, &qword_10057D170);
          v32 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v32(v43, 0);
        }

        else
        {
          v25 = sub_1003081B0(v42, v10, v11, v40);
          v27 = v26;
          v29 = v28;
          result = sub_100010000(v42, v10, v11);
          v44 = v25;
          v45 = v27;
          v46 = v29 & 1;
          v3 = v40;
          v30 = v39;
          v31 = v9 + 1;
        }

        ++v9;
        if (v31 == v30)
        {

          sub_100010000(v44, v45, v46);
          v33 = v47;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
LABEL_20:
    v34 = a1[3];
    v35 = a1[4];
    sub_100009B14(a1, v34);
    v36 = (*(v35 + 40))(v34, v35);
    return sub_10001EB80(v33, v36, v38) & 1;
  }

  return result;
}

uint64_t sub_10002001C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t sub_100020104(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

BOOL sub_100020114(_BOOL8 result)
{
  if (result != 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_100020128(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100020148(uint64_t result, uint64_t *a2)
{
  if (*(result + OBJC_IVAR___CSDScreenSharingActivityManager_session))
  {

    if (GroupSession.isLocallyInitiated.getter())
    {
    }

    else
    {
      GroupSession.activity.getter();

      if (v4)
      {
        v3 = [objc_allocWithZone(TUScreenShareAttributes) initWithAttributes:v4];

        *a2 = v3;
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_100020228(uint64_t result)
{
  if ((result - 1) >= 0x15)
  {
    return 0;
  }

  return result;
}

void sub_10002028C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CSDCallController_dataSources);
  v4 = sub_10000B6F4(v3);
  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v9 = [v7 shouldRegisterCall:a1];

    v5 = v6 + 1;
  }

  while (!v9);
}

void sub_10002156C()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  sub_100007FEC();
  v48 = v5;
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v12 = sub_100021AEC([v3 provider]);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
    sub_100005298(v1 + OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier, &v51);
    v17 = *&v16[v1];

    sub_100023E48(v14, v15, v17);
    sub_10000C768();

    if (v16)
    {
      v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = v4;
      sub_100021B9C();
      v18 = [v3 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100025F58(v3);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v20 = [v16 allowableByContactsHandles:isa];

      v46 = v16;
      v21 = OBJC_IVAR___CSDScreenTimeCallFilter_contextsForCallIdentifier;
      sub_1000170DC(v1 + OBJC_IVAR___CSDScreenTimeCallFilter_contextsForCallIdentifier);
      v22 = v20;
      swift_isUniquelyReferenced_nonNull_native();
      sub_100007E74();
      sub_100022190(v22, v11, v23);
      *(v1 + v21) = v49;
      swift_endAccess();
      if (qword_1006A0AA0 != -1)
      {
        sub_100008134(&qword_1006A0AA0);
      }

      v43 = qword_1006BA380;
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_10057D6A0;
      v50 = v22;
      sub_100006AF0(0, &unk_1006A7560, STConversationContext_ptr);
      v25 = v22;
      v44 = v25;
      v26 = String.init<A>(reflecting:)();
      v28 = v27;
      *(v24 + 56) = &type metadata for String;
      v29 = sub_100009D88();
      *(v24 + 64) = v29;
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      v50 = *(v1 + v21);

      sub_10026D814(&unk_1006AC450, qword_100588308);
      v30 = String.init<A>(reflecting:)();
      *(v24 + 96) = &type metadata for String;
      *(v24 + 104) = v29;
      *(v24 + 72) = v30;
      *(v24 + 80) = v31;
      v32 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Screen time: Started monitoring screen time context %@. All contexts are %@", 75, 2, &_mh_execute_header, v43, v32, v24);

      v50 = v25;
      swift_getKeyPath();
      sub_100006890();
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = v47;
      v35 = v48;
      v36 = v45;
      (*(v48 + 16))(v45, v11, v47);
      v37 = (*(v35 + 80) + 24) & ~*(v35 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v33;
      (*(v35 + 32))(v38 + v37, v36, v34);
      v39 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      v40 = OBJC_IVAR___CSDScreenTimeCallFilter_observationForCallIdentifier;
      sub_1000170DC(v1 + OBJC_IVAR___CSDScreenTimeCallFilter_observationForCallIdentifier);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100007E74();
      sub_1000226E0(v39, v11, v41);
      *(v1 + v40) = v49;
      swift_endAccess();

      (*(v35 + 8))(v11, v34);
    }
  }

  sub_100005EDC();
}

id sub_1000219CC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowedByScreenTime];
  *a2 = result;
  return result;
}

uint64_t sub_100021A00()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0);
}

uint64_t sub_100021A34()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_100021AEC(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100021B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005208(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_10000C5FC(v4);
  return v3;
}

void sub_100021B9C()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v36 = type metadata accessor for UUID();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = [v3 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = OBJC_IVAR___CSDScreenTimeCallFilter_observationForCallIdentifier;
  sub_100005298(v1 + OBJC_IVAR___CSDScreenTimeCallFilter_observationForCallIdentifier, &v38);
  v12 = *(v1 + v11);

  v13 = sub_100025C58(v9, v12);

  if (v13)
  {
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  sub_1000170DC(v1 + OBJC_IVAR___CSDScreenTimeCallFilter_contextsForCallIdentifier);
  sub_100025CA0(v9, v14, v15, v16, v17, v18, v19, v20, v35, v36);
  v22 = v21;
  swift_endAccess();

  sub_1000170DC(v1 + v11);
  sub_100025F30();
  v24 = v23;
  swift_endAccess();

  if (qword_1006A0AA0 != -1)
  {
    sub_100008134(&qword_1006A0AA0);
  }

  v25 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10057D6A0;
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v27 = v3;
  v28 = String.init<A>(reflecting:)();
  v30 = v29;
  *(v26 + 56) = &type metadata for String;
  v31 = sub_100009D88();
  *(v26 + 64) = v31;
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;

  sub_10026D814(&unk_1006AC450, qword_100588308);
  v32 = String.init<A>(reflecting:)();
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v31;
  *(v26 + 72) = v32;
  *(v26 + 80) = v33;
  v34 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Screen time: Stopped monitoring screen time context for call %@. Remaining contexts are %@", 90, 2, &_mh_execute_header, v25, v34, v26);

  (*(v5 + 8))(v9, v37);
  sub_100005EDC();
}

void sub_100021E24()
{
  sub_1000066C8();
  type metadata accessor for UUID();
  sub_10000EDB0(&qword_1006A3BE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_10000C3E4();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1000515FC();
  sub_100025DBC();
}

__n128 *sub_100021EF0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u32[0] = -1;
  result[2].n128_u64[1] = 0;
  return result;
}

uint64_t sub_100021F04()
{

  return swift_beginAccess();
}

uint64_t sub_100021F34()
{

  return swift_slowAlloc();
}

uint64_t sub_100021F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 96) = a6;
  *(v6 - 88) = a1;

  return type metadata accessor for UUID();
}

void sub_100021FC8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_100021FE0()
{

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

id sub_100022004()
{
  v2 = *(v0 + 472);

  return objc_allocWithZone(v2);
}

uint64_t sub_10002201C()
{

  return type metadata accessor for ActivitySessionCreationRequestResult(0);
}

uint64_t sub_100022048()
{

  return sub_100049D70(v1, v0);
}

void sub_10002208C()
{
  sub_100010094();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1000113F0();
  sub_100021E24();
  if (v9)
  {
    v10 = sub_10000FAAC();
    sub_100017278();
    v12 = *(v11 + 24);
    sub_10026D814(v8, v6);
    sub_10000EAB8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v12);
    sub_10000D75C();
    v13 = type metadata accessor for UUID();
    sub_100008070();
    (*(v14 + 8))(v1 + *(v14 + 72) * v2, v13);
    v4(0);
    sub_1000085E4();
    sub_100033024(v15, v16, &protocol conformance descriptor for UUID);
    sub_10000609C();
    sub_100006844();
    _NativeDictionary._delete(at:)();
    *v0 = v6;
  }

  sub_100008348();
}

void sub_1000221B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100008498(a1, a2, a3, a4);
  v7 = sub_10001629C();
  v8(v7);
  sub_100010300();
  v9 = sub_100015D68();
  v10(v9);
  *(*(v4 + 56) + 8 * v6) = v5;
  sub_100017180();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v11;
  }
}

void sub_100022234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v26 = v5;
    sub_10026D814(&qword_1006AC460, &qword_100588350);
    NSKeyValueObservedChange.newValue.getter();
    v16 = aBlock[0];
    if (LOBYTE(aBlock[0]) == 2)
    {
    }

    else
    {
      v25 = [v15 queue];
      (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v11);
      v17 = *(v12 + 80);
      v27 = v4;
      v18 = (v17 + 25) & ~v17;
      v19 = swift_allocObject();
      *(v19 + 16) = v15;
      *(v19 + 24) = v16 & 1;
      (*(v12 + 32))(v19 + v18, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      aBlock[4] = sub_100024E08;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004CEC;
      aBlock[3] = &unk_100631638;
      v20 = _Block_copy(aBlock);
      v21 = v15;
      static DispatchQoS.unspecified.getter();
      v30 = _swiftEmptyArrayStorage;
      sub_100461DBC(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      v22 = v27;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v23 = v25;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v20);

      (*(v26 + 8))(v7, v22);
      (*(v28 + 8))(v10, v29);
    }
  }
}

uint64_t sub_100022628()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 25) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

void sub_100022780(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR___CSDDirtyCallManager_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v4);
  if (v10)
  {
    if (sub_100022A44())
    {
      sub_100024140();
    }

    swift_beginAccess();

    sub_10002455C();
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      v15 = sub_100004778(v14);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10057D690;
      *(v16 + 56) = sub_100024570();
      *(v16 + 64) = sub_100022AC8(&qword_1006A3520, sub_100024570, &protocol conformance descriptor for NSObject);
      *(v16 + 32) = a1;
      v17 = a1;
      v18 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Adding call %@ to dirty calls pool", 34, 2, &_mh_execute_header, v15, v18, v16);

      v19 = OBJC_IVAR___CSDDirtyCallManager_dirtyCallsArray;
      swift_beginAccess();
      v20 = v17;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100022C0C(*((*(v2 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10));
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      swift_beginAccess();
      sub_100022C38(&v22, v20);
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_100022A44()
{
  v1 = OBJC_IVAR___CSDDirtyCallManager_dirtyCallsSet;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return v3 == 0;
}

uint64_t sub_100022AC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100022B10()
{
  sub_100005EF4();
  v4 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = v0;
    __CocoaSet.contains(_:)();
  }

  else if (*(v1 + 16))
  {
    sub_100006AF0(0, v2, v3);
    NSObject._rawHashValue(seed:)(*(v4 + 40));
    sub_1000052DC();
    v8 = ~v7;
    do
    {
      v9 = v6 & v8;
      if (((1 << (v6 & v8)) & *(v4 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v10 = *(*(v4 + 48) + 8 * v9);
      v11 = static NSObject.== infix(_:_:)();

      v6 = v9 + 1;
    }

    while ((v11 & 1) == 0);
  }

  sub_100005EDC();
}

uint64_t sub_100022C0C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

uint64_t sub_100022CBC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100022CD8()
{

  return sub_100022DDC(v0);
}

id sub_100022D0C()
{
  v3 = *(v1 + 184);

  return [v0 v3];
}

uint64_t sub_100022D5C(uint64_t a1, uint64_t a2)
{
  sub_10000AF9C(a1, a2);

  return Logger.logObject.getter();
}

uint64_t sub_100022DC4()
{
}

uint64_t sub_100022E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(va, a21);
  v25 = va_arg(va1, void);

  return sub_100285FC4(va1, va, v21, v22);
}

uint64_t sub_100022F70()
{
  v1 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + OBJC_IVAR___CSDDirtyCallManager_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = sub_100004778(result);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D690;
  v12 = OBJC_IVAR___CSDDirtyCallManager_dirtyCallsArray;
  swift_beginAccess();
  v13 = *(v0 + v12);
  *(v11 + 56) = sub_10026D814(&unk_1006A7C20, &qword_1005834D0);
  *(v11 + 64) = sub_10001000C(&qword_1006A53B8, &unk_1006A7C20, &qword_1005834D0, &protocol conformance descriptor for [A]);
  *(v11 + 32) = v13;

  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Draining pool with dirty calls: %@", 34, 2, &_mh_execute_header, v10, v14, v11);

  result = sub_100022A44();
  if (result)
  {
    return result;
  }

  v15 = *(v0 + v12);
  *(v0 + v12) = _swiftEmptyArrayStorage;
  v16 = OBJC_IVAR___CSDDirtyCallManager_dirtyCallsSet;
  swift_beginAccess();
  *(v0 + v16) = &_swiftEmptySetSingleton;

  v17 = *(v0 + OBJC_IVAR___CSDDirtyCallManager_callChanged);
  if (!v17)
  {
  }

  v18 = *(v0 + OBJC_IVAR___CSDDirtyCallManager_callChanged + 8);
  result = sub_10000B6F4(v15);
  if (!result)
  {
  }

  v19 = result;
  if (result < 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  for (i = 0; i != v19; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(v15 + 8 * i + 32);
    }

    v22 = v21;
    v17();
  }

  return sub_1000051F8(v17, v18);
}

void sub_100023294(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v6 = *(Strong + OBJC_IVAR___CSDCallController_callChanged);
    v5 = *(Strong + OBJC_IVAR___CSDCallController_callChanged + 8);
    sub_1000115CC(v6, v5);

    if (v6)
    {
      v6(a1);
      sub_1000051F8(v6, v5);
    }
  }
}

uint64_t sub_1000233F8(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

void sub_100023490(uint64_t a1)
{
  sub_10002028C(a1);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR___CSDCallController_dataSources);
    v5 = sub_10000B6F4(v4);
    if (v5)
    {
      v6 = v5;
      if (v5 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v4 + 8 * i + 32);
        }

        v9 = v8;
        [v8 registerCall:a1];
      }
    }

    v10 = *(v1 + OBJC_IVAR___CSDCallController_dirtyCallManager);

    [v10 add:a1];
  }
}

void sub_100023E50()
{
  sub_100005EF4();
  sub_100021F50(v3, v4, v5, v6, v7, v8);
  sub_100007FEC();
  __chkstk_darwin(v9);
  sub_100007FDC();
  sub_10000607C();
  sub_100008598();
  if (v10)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10003A5C0();
  sub_10026D814(v1, v0);
  if (sub_100007D68())
  {
    sub_10000D374();
    sub_100021E24();
    sub_100022D24();
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  if (v2)
  {
    sub_1000276EC();
    sub_100005EDC();
  }

  else
  {
    v14 = sub_10000FC44();
    v15(v14);
    v16 = sub_10000534C();
    v17(v16);
    sub_100005EDC();
  }
}

uint64_t sub_100024140()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v0[OBJC_IVAR___CSDDirtyCallManager_queue];
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v19[1] = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = sub_100004778(result);
    v15 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Asked to dispatch drain the pool", 32, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);

    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    aBlock[4] = sub_100023258;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_100626A68;
    v17 = _Block_copy(aBlock);
    v18 = v0;
    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_100022AC8(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v2 + 8))(v4, v1);
    (*(v5 + 8))(v7, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100024524()
{

  return _swift_deallocObject(v0);
}

unint64_t sub_100024570()
{
  result = qword_1006A34B0;
  if (!qword_1006A34B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A34B0);
  }

  return result;
}

uint64_t sub_1000245B4(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = v6;
  v12 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v13 = *v6;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;

    v15 = __CocoaSet.member(for:)();

    if (v15)
    {

      sub_100006AF0(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v30;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_100396A28(v13, result + 1);
        v24 = v23;
        v31 = v23;
        if (*(v23 + 24) <= *(v23 + 16))
        {
          sub_100397DE8();
          v24 = v31;
        }

        v25 = v14;
        sub_100397F38();

        *v9 = v24;
        *a1 = v25;
        return 1;
      }
    }
  }

  else
  {
    sub_100006AF0(0, a3, a4);
    NSObject._rawHashValue(seed:)(*(v12 + 40));
    sub_1000052DC();
    v19 = ~v18;
    while (1)
    {
      v20 = v17 & v19;
      if (((*(v12 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v32 = *v9;
        v26 = a2;
        sub_10002480C();
        *v9 = v32;
        *a1 = v26;
        return 1;
      }

      v21 = *(*(v12 + 48) + 8 * v20);
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        break;
      }

      v17 = v20 + 1;
    }

    v27 = *(*(v12 + 48) + 8 * v20);
    *a1 = v27;
    v28 = v27;
    return 0;
  }

  return result;
}

void sub_10002480C()
{
  sub_10000D698();
  v3 = v2;
  sub_10039C3E8();
  if (!(!v8 & v7) || (v4 & 1) == 0)
  {
    if (v4)
    {
      sub_10000BA78(v5);
      sub_100397DE8();
      goto LABEL_9;
    }

    if (v6 <= v5)
    {
      sub_10000BA78(v5);
      sub_100024934();
LABEL_9:
      v9 = *v1;
      NSObject._rawHashValue(seed:)(*(*v1 + 40));
      sub_1000052DC();
      v12 = ~v11;
      while (1)
      {
        v3 = v10 & v12;
        if (((*(v9 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v12)) & 1) == 0)
        {
          goto LABEL_13;
        }

        v13 = sub_100008AB0();
        sub_100006AF0(v13, v14, v15);
        v16 = *(*(v9 + 48) + 8 * v3);
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {
          goto LABEL_16;
        }

        v10 = v3 + 1;
      }
    }

    sub_1003993FC();
  }

LABEL_13:
  sub_10039C3D4();
  *(v19 + 8 * v3) = v0;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
    sub_100006048();
  }
}

void sub_100024934()
{
  sub_10000D698();
  sub_10000FE58(v2, v3, v4);
  sub_10001140C();
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v1 + 16))
  {
    v27 = v0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        sub_10039C410();
LABEL_12:
        v17 = *(v6 + 40);
        v18 = *(*(v1 + 48) + 8 * (v13 | (v7 << 6)));
        v19 = NSObject._rawHashValue(seed:)(v17) & ~(-1 << *(v6 + 32));
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        sub_10000FE84();
LABEL_22:
        sub_100007DC0();
        *(v12 + v24) |= v25;
        *(*(v6 + 48) + 8 * v26) = v18;
        sub_10003FB9C();
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      sub_10000E7C0();
      while (1)
      {
        sub_100007A0C();
        if (v23)
        {
          if (v21)
          {
            break;
          }
        }

        if (v20 == v22)
        {
          v20 = 0;
        }

        if (*(v12 + 8 * v20) != -1)
        {
          sub_10000A950();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v0 = v27;
          goto LABEL_26;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v7))
        {
          sub_100007C8C();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_26:
    *v0 = v6;
    sub_100006048();
  }
}

unint64_t sub_100024C98()
{
  result = qword_1006A5980;
  if (!qword_1006A5980)
  {
    sub_10026DCB4(&unk_1006A7C20, &qword_1005834D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5980);
  }

  return result;
}

uint64_t sub_100024CFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10000A90C(a1, a2, a3);
  if (v4)
  {
    v5 = sub_1000076E4();
  }

  else
  {
    sub_100008B14();
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v5;
  return sub_100018FB8();
}

unint64_t sub_100024D54(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void *sub_100024E08()
{
  type metadata accessor for UUID();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_100024E70(v1, v2);
}

void *sub_100024E70(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v5 screenTimeCallFilter:a1 didChangeAllowed:a2 & 1 forCallUUID:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100024F0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

BOOL sub_100025AD4(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [(TUCall *)v2 status]== 2 || [(TUCall *)v2 status]== 1 || [(TUCall *)v2 status]== 3;

  return v3;
}

uint64_t sub_100025BB8(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

id sub_100025BF0@<X0>(uint64_t a1@<X8>)
{

  return sub_10031E958(0xD000000000000011, ((a1 - 32) | 0x8000000000000000));
}

void sub_100025C30(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, os_log_t log, os_log_type_t a22)
{

  _os_log_impl(a1, log, a22, a4, v22, 0x2Au);
}

uint64_t sub_100025C60(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100021E24();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_10000C5FC(v3);
  return v2;
}

void sub_100025CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000D698();
  v13 = v12;
  v15 = v14;
  sub_1000113F0();
  sub_100021E24();
  if (v16)
  {
    sub_10000FAAC();
    sub_100018288();
    sub_10000EAB8();
    sub_100006BE4();
    v17 = *(a10 + 48);
    v18 = type metadata accessor for UUID();
    sub_100008070();
    (*(v19 + 8))(v17 + *(v19 + 72) * v11, v18);
    sub_100006AF0(0, v15, v13);
    sub_1000085E4();
    sub_100033024(v20, v21, &protocol conformance descriptor for UUID);
    sub_10000609C();
    sub_100009F18();
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_100006048();
}

void sub_100025DBC()
{
  sub_100005EF4();
  v17 = v2;
  v18 = v3;
  v16 = v4;
  v6 = v5;
  v8 = v7(0);
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10001C9C4();
  sub_1000052DC();
  v13 = ~v12;
  for (i = v6 & ~v12; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v10 + 16))(v1, *(v0 + 48) + *(v10 + 72) * i, v8);
    sub_10000EDB0(v16, v17, v18);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v1, v8);
    if (v15)
    {
      break;
    }
  }

  sub_100005EDC();
}

void *sub_100025F58(void *a1)
{
  if ([a1 isConversation])
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 activeConversationForCall:a1];

    if (v3)
    {
      v4 = [v3 activeRemoteParticipants];
      sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10045DB80(v5);
      v7 = v6;

      if (v7[2])
      {
LABEL_6:

        return v7;
      }
    }

    v8 = [a1 remoteParticipantHandles];
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10045D880(v9);
    v7 = v10;

    goto LABEL_6;
  }

  v11 = [a1 handle];
  if (v11)
  {
    v12 = v11;
    v13 = sub_10001E1D4();
    v15 = v14;
  }

  else
  {
    if (qword_1006A0C50 != -1)
    {
      sub_10000AB54(&qword_1006A0C50);
    }

    v13 = qword_1006AC3A0;
    v15 = *algn_1006AC3A8;
  }

  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  sub_100008BA8();
  v7 = swift_allocObject();
  *(v7 + 1) = xmmword_10057D690;
  v7[4] = v13;
  v7[5] = v15;
  return v7;
}

void sub_1000261C8()
{
  type metadata accessor for UUID();
  v0 = sub_100006884();

  sub_100022234(v0, v1, v2, v3);
}

uint64_t sub_10002625C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000268BC(uint64_t result)
{
  if (result >= 0xA)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100026924(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

char *sub_100026974(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  if (*(a1 + 16) != 3)
  {

    return 0;
  }

  sub_1003F68CC(1);
  v4 = sub_1003EF398(0xD000000000000020, 0x8000000100575070);

  return v4;
}

Swift::Void __swiftcall ConversationCallCoordinationManager.handleCallChanged(call:)(CSDCall *call)
{
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v3[5] = call;

  v4 = call;
  _s14CopresenceCore16OperationManagerC7performyyyyYaYbYAcF();
}

uint64_t sub_100026BA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

void sub_100026BEC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004778(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) handle];
    v6 = TUCopyIDSCanonicalAddressForHandle();
    v7 = [NSNumber numberWithInteger:a2];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "faceTimeIDSStatus for destinationID: %@ is: %@", &v8, 0x16u);
  }

  if (a2 <= 2)
  {
    [*(a1 + 32) setFaceTimeIDStatus:dword_10057A200[a2]];
  }
}

BOOL sub_100026DA4()
{
  sub_100009B14((v0 + OBJC_IVAR___CSDProtectedAppsUtilities_protectedAppsObserver), *(v0 + OBJC_IVAR___CSDProtectedAppsUtilities_protectedAppsObserver + 24));
  sub_100026E38();
  v1 = sub_100013094();

  return v1;
}

void sub_100026E38()
{
  v0 = [objc_opt_self() hiddenApplications];
  type metadata accessor for APApplication();
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = sub_10000B6F4(v1);
  if (!v2)
  {
LABEL_10:

    sub_100006048();
    return;
  }

  v3 = v2;
  sub_100008804(v2);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 bundleIdentifier];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_10039A2E0(v11 > 1, v12 + 1, 1);
      }

      ++v4;
      *(v14 + 16) = v12 + 1;
      v13 = v14 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

BOOL sub_1000271D8(uint64_t a1, uint64_t a2)
{
  if ([*(v2 + OBJC_IVAR___CSDProtectedAppsUtilities_tuFeatureFlags) appProtectionEnabled])
  {
    sub_100006884();
    if (sub_100026DA4() && (v3 = sub_100006884(), (sub_1003B5D30(v3, v4) & 1) == 0))
    {
      v8 = sub_1003B5F30();
      v9 = sub_100006884();
      v11 = sub_1004226B4(v9, v10, v8);

      v5 = !v11;
    }

    else
    {
      v5 = 0;
    }

    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);

    v12 = static OS_os_log.default.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v14 = 67109378;
      *(v14 + 4) = v5;
      *(v14 + 8) = 2080;
      v15 = sub_100006884();
      *(v14 + 10) = sub_10002741C(v15, v16, v17);
      _os_log_impl(&_mh_execute_header, v12, v13, "ProtectedAppsUtilities: shouldBlockCall returning %{BOOL}d for originating call app of Bundle Identifier [%s]. We should block a call only if the originating app is hidden and not foregrounded.", v14, 0x12u);
      sub_100009B7C(v19);
    }
  }

  else
  {
    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
    v6 = static OS_os_log.default.getter();
    v7 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ProtectedAppsUtilities: Protected apps feature flag switched off, not checking for protectes status.", 100, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);

    return 0;
  }

  return v5;
}

uint64_t sub_10002741C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_100007BBC();
  v9 = sub_1000274DC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_100006A94(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_100009B7C(v14);
  return v10;
}

unint64_t sub_1000274DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10004D26C(a5, a6);
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

uint64_t sub_1000275DC()
{
  sub_10000C698();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v1[1] = sub_100035FE0;
  sub_100007624();

  return sub_10003D384();
}

uint64_t sub_100027698(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1000276D0()
{

  return UUID.init(uuidString:)();
}

uint64_t sub_1000276EC()
{
  v3 = *(v0 + 56);
  result = *(v3 + 8 * v1);
  *(v3 + 8 * v1) = *(v2 - 88);
  return result;
}

uint64_t sub_100027704()
{
}

void sub_100027748(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100027768()
{
  sub_100006810();
  v1[29] = v2;
  v1[30] = v0;
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v3);
  v1[31] = sub_100005E9C();
  v4 = type metadata accessor for UUID();
  v1[32] = v4;
  sub_100005EB4(v4);
  v1[33] = v5;
  v1[34] = sub_100015418();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v6, v7, v8, &protocol conformance descriptor for ConversationCallCoordinationManager);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  v1[40] = v9;
  v1[41] = v10;
  v11 = sub_100286804();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100027954(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v10 = type metadata accessor for Notification();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a1;
  sub_100027A50(v15, a4, a5, a6);

  return (*(v12 + 8))(v15, v10);
}

void sub_100027A50(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  type metadata accessor for Notification();
  sub_100007FEC();
  __chkstk_darwin(v6);
  Notification.object.getter();
  if (!v30)
  {
    sub_10004975C(v29);
    goto LABEL_10;
  }

  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134(&qword_1006A0AA0);
    }

    v20 = qword_1006BA380;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v21 = swift_allocObject();
    v22 = sub_10000A680(v21, xmmword_10057D690);
    v23(v22);
    v24 = String.init<A>(reflecting:)();
    v26 = v25;
    v21[3].n128_u64[1] = &type metadata for String;
    v21[4].n128_u64[0] = sub_100009D88();
    v21[2].n128_u64[0] = v24;
    v21[2].n128_u64[1] = v26;
    v27 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Call not specified in notification %@", 37, 2, &_mh_execute_header, v20, v27, v21);
    goto LABEL_13;
  }

  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = *a3;
  v8 = Notification.name.getter();
  v9 = sub_100027DE0(v8, v7);
  v11 = v10;

  if (v11)
  {
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134(&qword_1006A0AA0);
    }

    v12 = qword_1006BA380;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v13 = swift_allocObject();
    v14 = sub_10000A680(v13, xmmword_10057D690);
    v15(v14);
    v16 = String.init<A>(reflecting:)();
    v18 = v17;
    v13[3].n128_u64[1] = &type metadata for String;
    v13[4].n128_u64[0] = sub_100009D88();
    v13[2].n128_u64[0] = v16;
    v13[2].n128_u64[1] = v18;
    v19 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Received notification %@ for unrecognized trigger", 49, 2, &_mh_execute_header, v12, v19, v13);

LABEL_13:

    return;
  }

  sub_100027FF8(v28, v9);
}

unint64_t sub_100027D50(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  sub_1000112D0();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100027F00(a1, v2);
}

uint64_t sub_100027DE0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_100027D50(a1);
  if (v3)
  {
    return sub_100018F28(v2);
  }

  else
  {
    return 0;
  }
}

id sub_100027E4C(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t sub_100027E68()
{

  return sub_100022DDC(v0);
}

unint64_t sub_100027F00(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      return i;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

void *sub_100027FF8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector:"callCenterObserver:callChanged:"])
    {
      [v6 callCenterObserver:v2 callChanged:a1];
    }

    else if ([v6 respondsToSelector:"callsChangedForCallCenterObserver:"])
    {
      [v6 callsChangedForCallCenterObserver:v2];
    }

    result = swift_unknownObjectRelease();
  }

  v7 = *(v2 + OBJC_IVAR___CSDCallCenterObserver_callChanged);
  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR___CSDCallCenterObserver_callChanged + 8);

    v7(a1, a2);

    return sub_1000051F8(v7, v8);
  }

  return result;
}

void sub_100028100(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10002817C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ([a1 isEmergency] && objc_msgSend(a1, "status") == 6)
    {
      static DispatchQoS.default.getter();
      static DispatchWorkItemFlags.barrier.getter();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      aBlock[4] = sub_1002A7158;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004CEC;
      aBlock[3] = &unk_100623060;
      v15 = _Block_copy(aBlock);
      v16 = v13;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v15);
      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v11, v8);
    }

    else
    {
    }
  }
}

uint64_t sub_100028408()
{
  v1 = sub_100008184();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000285D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000285E8(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_100028614(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028624(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028634(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028644(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028654(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028664(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028674(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028684(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028694(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000286A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000286B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000286C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000286D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000286E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000286F4(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_100028720(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028730(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028750(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028760(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000288B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000288C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[9])
  {
    v3 = [v2 _devicesArrayHasPairedDevice];
    v2 = *(a1 + 32);
    if (v3)
    {
      [v2 _update];
      v2 = *(a1 + 32);
    }
  }

  v4 = v2[9];
  v5 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v5, v4);
}

void sub_10002CD00()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v7);
  sub_10000A330();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v8);
  sub_10000E4F4();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = v6;
  v21[4] = v4;
  v21[5] = v9;
  sub_100009FE4();
  v21[1] = 1107296256;
  sub_10000A600();
  v21[2] = v10;
  v21[3] = v2;
  v11 = _Block_copy(v21);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v13, v14, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v15, &unk_1006A2960, &unk_10057D6E0, v16);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  v17 = sub_100015A08();
  v18(v17);
  v19 = sub_100007C7C();
  v20(v19);

  sub_100005EDC();
}

uint64_t sub_10002D004()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_10002D20C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_10002D06C(void *a1, uint64_t a2)
{

  v3 = [*(a2 + 24) currentAudioAndVideoCalls];
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10000B6F4(v4);
  v6 = 0;
  v16 = &_swiftEmptySetSingleton;
  while (1)
  {
    if (v5 == v6)
    {

      *a1 = v16;
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = sub_100021AEC([v7 provider]);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057D690;
      *(inited + 32) = v11;
      *(inited + 40) = v12;
      v14 = sub_10001E78C(inited);
      v16 = sub_10002D228(v14, v16);
    }

    ++v6;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

Swift::Int sub_10002D314(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10026D814(&unk_1006A7A40, &unk_100583390);
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

void sub_10002D550(uint64_t a1, uint64_t a2)
{
  sub_1000192A8();
  v4 = v3;
  sub_10002D5B0(a2);
}

void sub_10002D5B0(uint64_t a1)
{
  v2 = sub_10000B6F4(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if ([v4 status] == 6)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }
  }

  v6 = sub_10000B6F4(_swiftEmptyArrayStorage);

  sub_10003EE24(v6 != 0);
}

void sub_10002D6F8(uint64_t a1, id a2)
{
  v2 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession;
  v3 = *(a1 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession);
  if (v3)
  {
    v6 = v3;
    v7 = [v6 configuration];
    if (v7)
    {
      v25 = v7;
      v8 = [v7 mode];
      sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
      v9 = static OS_os_log.default.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = os_log_type_enabled(v9, v10);
      if (v8 != a2)
      {
        if (v11)
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v26 = v20;
          *v19 = 136315138;
          type metadata accessor for IRConfigurationUpdateMode(0);
          v21 = String.init<A>(reflecting:)();
          v23 = sub_10002741C(v21, v22, &v26);

          *(v19 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v9, v10, "Setting IRSession mode to %s", v19, 0xCu);
          sub_100009B7C(v20);
        }

        [v25 setMode:a2];
        v24 = *(a1 + v2);
        if (!v24)
        {
          goto LABEL_13;
        }

        v9 = v24;
        [v9 runWithConfiguration:v25];
LABEL_12:

LABEL_13:
        return;
      }

      if (v11)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v26 = v13;
        *v12 = 136315138;
        type metadata accessor for IRConfigurationUpdateMode(0);
        v14 = String.init<A>(reflecting:)();
        v16 = sub_10002741C(v14, v15, &v26);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v9, v10, "IRSession mode is already %s", v12, 0xCu);
        sub_100009B7C(v13);

        goto LABEL_12;
      }
    }

    else
    {
      sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
      v25 = static OS_os_log.default.getter();
      v18 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("No configuration stored on IRSession so not updating configuration", 66, 2, &_mh_execute_header, v25, v18, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("No IRSession active so not updating configuration", 49, 2, &_mh_execute_header, v25, v17, _swiftEmptyArrayStorage);
  }
}

void sub_10002DA78(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_10002DB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_msgSend(*(Strong + qword_1006A4D48) "callContainer")];
    swift_unknownObjectRelease();
    if (v5)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v5;
      }
    }

    else
    {
      v6 = 0;
    }

    sub_10002DBE8(v6);
  }
}

uint64_t sub_10002DBE8(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 relayClientTransport];
  if (a1)
  {
    v10 = a1;
    if ([v10 isHostedOnCurrentDevice] && objc_msgSend(v10, "hasRelaySupport:", 2))
    {
      v11 = [v10 provider];
      v12 = [v11 isSystemProvider];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v10 needsConversationOrVideoRelaySupport];
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v12;
  *(v14 + 25) = v13;
  *(v14 + 32) = v9;
  aBlock[4] = sub_10003F8AC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062C8D8;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  v17 = v9;
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);
}

uint64_t sub_10002DF84()
{

  return _swift_deallocObject(v0);
}

void sub_10002E090()
{
  sub_100005EF4();
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
  if (sub_10002E324())
  {
    sub_100005EDC();
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v0;
    v24[4] = sub_10003F8F0;
    v24[5] = v17;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v24[2] = v18;
    v24[3] = &unk_10062E470;
    v19 = _Block_copy(v24);
    v20 = v0;
    static DispatchQoS.unspecified.getter();
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10000826C();
    sub_10001000C(v21, v22, &unk_10057D6E0, v23);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v3 + 8))(v7, v1);
    (*(v10 + 8))(v14, v8);

    sub_100005EDC();
  }
}

uint64_t sub_10002E2EC()
{

  return _swift_deallocObject(v0);
}

void *sub_10002E324()
{
  type metadata accessor for AudioResolver(0);
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callCenterObserver);
  result = sub_10001321C(v1, *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_ttyProviderObserver), 0, 2);
  if (!result)
  {
    v3 = [objc_msgSend(v1 "callContainer")];
    swift_unknownObjectRelease();
    if (v3 || (v3 = [objc_msgSend(v1 "callContainer")], swift_unknownObjectRelease(), v3))
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

  return result;
}

uint64_t type metadata accessor for AudioResolver(uint64_t a1)
{
  result = qword_1006A9D00;
  if (!qword_1006A9D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E470(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_10002E4E8(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = a2(v7);

    return v9 & 1;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    v11 = [a1 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10002E66C(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isSystemProvider];

  if (v3 && [a1 status] == 1)
  {
    result = [a1 isConnecting];
    if (!result)
    {
      return result;
    }

    if (([a1 isConnected] & 1) == 0)
    {
      return [a1 isVideo];
    }
  }

  return 0;
}

id sub_10002E71C(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isSystemProvider];

  if (v3 && [a1 status] == 1)
  {
    result = [a1 isConnecting];
    if (!result)
    {
      return result;
    }

    if (([a1 isConnected] & 1) == 0)
    {
      return ([a1 isVideo] ^ 1);
    }
  }

  return 0;
}

id sub_10002E7D0(void *a1)
{
  if ([a1 status] != 1)
  {
    return 0;
  }

  result = [a1 isConnected];
  if (result)
  {
    return [a1 isVideo];
  }

  return result;
}

id sub_10002E830(void *a1)
{
  if ([a1 status] != 1)
  {
    return 0;
  }

  result = [a1 isConnected];
  if (result)
  {
    return ([a1 isVideo] ^ 1);
  }

  return result;
}

id sub_10002E894(void *a1)
{
  if ([a1 status] == 3)
  {
    return [a1 hasStartedOutgoing];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002E8E0(void *a1)
{
  if ([a1 status] == 2)
  {
    return [a1 isPTT] ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002E930()
{
  v1 = [v0 smartHoldingSession];
  if (v1)
  {
    v2 = v1;
    if ([v1 state] == 3)
    {
      v3 = [v0 shouldSuppressRingtone];

      if ((v3 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  if ([v0 receptionistState] == 3 && (objc_msgSend(v0, "isScreening") & 1) != 0)
  {
    return 1;
  }

  v4 = [v0 provider];
  v5 = [v4 supportsCurrentPlatform];

  if (!v5)
  {
    return 0;
  }

  if ([v0 status] == 4)
  {
    return 1;
  }

  v7 = [v0 provider];
  v8 = [v7 isSystemProvider];

  if ((v8 & 1) != 0 || [v0 status] != 1)
  {
    return 0;
  }

  result = [v0 isConnecting];
  if (result)
  {
    return [v0 isConnected] ^ 1;
  }

  return result;
}

id sub_10002EAD0()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result deviceType];

    return (v2 != 7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002EB7C()
{
  v1 = OBJC_IVAR___CSDRouteController_currentPickedRoute;
  if (!*(v0 + OBJC_IVAR___CSDRouteController_currentPickedRoute))
  {
    return;
  }

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 currentAudioAndVideoCalls];

  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10000B6F4(v4);
  if (!v5)
  {

    return;
  }

  v6 = v5;
  v17 = v1;
  v7 = 0;
  v8 = 0;
LABEL_4:
  v18 = v7;
  v9 = v8;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v10 = *(v4 + 8 * v9 + 32);
    }

    v11 = v10;
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v12 = [v10 isActive];

    if (v12)
    {
      v7 = 1;
      if (v8 != v6)
      {
        goto LABEL_4;
      }

      v13 = v17;
LABEL_16:
      sub_1000192A8();
      v15 = *(v0 + v13);
      if (v15)
      {
        v16 = v14;
        v19 = v15;
        sub_1003D5C40(v19);

        return;
      }

LABEL_26:
      __break(1u);
      return;
    }

    ++v9;
  }

  while (v8 != v6);

  v13 = v17;
  if (v18)
  {
    goto LABEL_16;
  }
}

char *sub_10002ED94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v19[1] = *&result[OBJC_IVAR___CSDAnsweringMachineController_queue];
    sub_100009AB0(a4, v23);
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a1;
    v16[4] = a2;
    sub_10002F0C8(v23, (v16 + 5));
    aBlock[4] = sub_1000399EC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_100626A18;
    v17 = _Block_copy(aBlock);
    v19[0] = v15;
    v18 = a1;
    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_10031699C(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v8 + 8))(v10, v7);
    (*(v11 + 8))(v13, v20);
  }

  return result;
}

uint64_t sub_10002F0C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002F0E0()
{
  sub_100009B7C((v0 + 40));

  return _swift_deallocObject(v0);
}

uint64_t sub_10002F13C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002F19C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

void sub_10002F1FC()
{
  v3 = v0;
  sub_10000691C();
  v4 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_100007FDC();
  sub_10003DC14(v6);
  v7 = sub_10000F3CC();
  v8(v7);
  v9 = v2;
  _dispatchPreconditionTest(_:)();
  v10 = sub_100007A40();
  v11(v10);
  if ((v2 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ([v0 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37[0] = v35;
  v37[1] = v36;
  if (!*(&v36 + 1))
  {
    sub_1000099A4(v37, &unk_1006A2D10, &unk_10057D940);
    return;
  }

  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  if (swift_dynamicCast())
  {
    v4 = v34;
    v12 = v0[26];
    if (!v12)
    {
LABEL_34:

      return;
    }

    v13 = *&v12[OBJC_IVAR___CSDAudioCallRecordingSession_callUUID];
    v14 = *&v12[OBJC_IVAR___CSDAudioCallRecordingSession_callUUID + 8];
    v1 = v12;

    v4 = v34;
    v15 = [v4 uniqueProxyIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v13 == v16 && v14 == v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v21 = [v4 status] == 2 || objc_msgSend(v4, "status") == 1 || objc_msgSend(v4, "status") == 3;
    v22 = [v4 recordingSession];
    if (!v22 || (v22, ([v4 isRecordingAllowed] & 1) != 0))
    {
      if (!v21 || (v20 & 1) != 0)
      {

        goto LABEL_34;
      }

      if (qword_1006A0B40 != -1)
      {
        sub_1000080FC(&qword_1006A0B40);
      }

      v29 = type metadata accessor for Logger();
      sub_1000075F0(v29, qword_1006BA640);
      v24 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();
      v28 = 2;
      if (!sub_10000BB44(v30))
      {
LABEL_33:

        v33 = [objc_allocWithZone(TUCallStopRecordingRequest) initWithCall:v4];
        sub_1003E4474(v33, v4, v28, v3);

        goto LABEL_34;
      }

      v31 = sub_100006DC4();
      sub_100018630(v31);
      sub_10000F9C8(&_mh_execute_header, v32, v30, "Ending call recording session because another call went active");
LABEL_31:
      sub_100005F64();
      goto LABEL_33;
    }

    if (qword_1006A0B40 == -1)
    {
LABEL_25:
      v23 = type metadata accessor for Logger();
      sub_1000075F0(v23, qword_1006BA640);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (!sub_10000BB44(v25))
      {
        v28 = 1;
        goto LABEL_33;
      }

      v26 = sub_100006DC4();
      sub_100018630(v26);
      sub_10000F9C8(&_mh_execute_header, v27, v25, "Ending call recording session because recording is no longer allowed based on the call properties");
      v28 = 1;
      goto LABEL_31;
    }

LABEL_37:
    sub_1000080FC(&qword_1006A0B40);
    goto LABEL_25;
  }
}

uint64_t sub_10002F5E8()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_10002F608(float a1)
{
  *v3 = a1;
  *(v2 + 152) = v1;

  return swift_errorRetain();
}

id sub_10002F6B8()
{
  v2 = *(v0 + 472);

  return objc_allocWithZone(v2);
}

uint64_t sub_10002F700()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10002F718(uint64_t a1, uint64_t a2)
{

  return sub_10003A1C8();
}

uint64_t sub_10002F780(uint64_t a1, uint64_t a2)
{

  return sub_100285FC4(a1, a2, v2, v3);
}

void sub_10002F798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{

  sub_10004FDE0(a1, 0xD000000000000010, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_10002F7B0()
{

  return swift_slowAlloc();
}

void sub_10002F834()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000E598();
  v9 = *(v2 + OBJC_IVAR___CSDCallTranslationController_queue);
  *v1 = v9;
  v10 = sub_10000D6F4();
  v11(v10);
  v12 = v9;
  _dispatchPreconditionTest(_:)();
  v13 = sub_100022CA0();
  v14(v13, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ([v4 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
    if (sub_1000052B0())
    {
      v15 = *(v2 + OBJC_IVAR___CSDCallTranslationController_translationSession);
      if (v15)
      {
        v7 = *&v15[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID];
        v16 = *&v15[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID + 8];
        v1 = v15;

        v9 = v28;
        v17 = [v9 uniqueProxyIdentifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (v7 == v18 && v16 == v20)
        {
        }

        else
        {
          v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v7 & 1) == 0)
          {

LABEL_19:
            sub_100033B54(v4);
LABEL_20:

            goto LABEL_21;
          }
        }

        v22 = [v9 status];

        if (v22 != 1 || sub_1002A41F0())
        {
          goto LABEL_19;
        }

        if (qword_1006A0B58 == -1)
        {
LABEL_23:
          v23 = type metadata accessor for Logger();
          sub_1000075F0(v23, qword_1006BA688);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.info.getter();
          if (sub_10000689C(v25))
          {
            v26 = sub_100006DC4();
            sub_100018630(v26);
            sub_10000F9C8(&_mh_execute_header, v27, v4, "Start call translation for active call");
            sub_100005F40(v7);
          }

          sub_1002A9A84(v9, v2);
          goto LABEL_20;
        }

LABEL_27:
        sub_1000081B4(&qword_1006A0B58);
        goto LABEL_23;
      }
    }
  }

  else
  {
    sub_100009A04(v31, &unk_1006A2D10, &unk_10057D940);
  }

LABEL_21:
  sub_100005EDC();
}

char *sub_10002FB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v16[1] = *&result[OBJC_IVAR___CSDAudioStateHandler_queue];
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    aBlock[4] = sub_10003B3EC;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062CFA8;
    v14 = _Block_copy(aBlock);
    v15 = v12;
    static DispatchQoS.unspecified.getter();
    v16[2] = _swiftEmptyArrayStorage;
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_10002FDE8()
{

  return _swift_deallocObject(v0);
}

void sub_10003006C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100030AB8(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

BOOL sub_100030DD4(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [(TUCall *)v2 smartHoldingSession];
  if (v3 && (v4 = v3, -[TUCall smartHoldingSession](v2, "smartHoldingSession"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 state], v5, v4, v6 == 3))
  {
    LOBYTE(v7) = 1;
  }

  else if ([(TUCall *)v2 status]== 4)
  {
    v7 = [(TUCall *)v2 shouldSuppressRingtone]^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

BOOL sub_1000311E4(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isVideo])
  {
    v3 = [(TUCall *)v2 status]== 3 || [(TUCall *)v2 status]== 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_100031248(id a1, TUCall *a2)
{
  v2 = a2;
  if (([(TUCall *)v2 isScreening]& 1) != 0 || ![(TUCall *)v2 isEndpointOnCurrentDevice]|| ([(TUCall *)v2 isRTT]& 1) != 0 || ([(TUCall *)v2 isTTY]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(TUCall *)v2 provider];
    if ([v5 supportsCurrentPlatform])
    {
      v3 = [(TUCall *)v2 status]== 1 || [(TUCall *)v2 status]== 2 || [(TUCall *)v2 status]== 5 || [(TUCall *)v2 status]== 3;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_1000313D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100031608()
{
  if ([v0 status] != 6)
  {
    return 0;
  }

  [v0 callDuration];
  if (v1 <= 0.0 && ([v0 isOutgoing] & 1) == 0 && objc_msgSend(v0, "disconnectedReason") != 14)
  {
    return 0;
  }

  if ([v0 hasAudioFinished])
  {
    return 0;
  }

  v3 = [v0 provider];
  v2 = [v3 isSystemProvider];

  return v2;
}

void sub_1000316D0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR___CSDPowerAssertionManager_routeController);
    if (v6)
    {
      v7 = [v6 pickedRoute];
      if (!v7)
      {
LABEL_13:
        v23 = *&v5[OBJC_IVAR___CSDPowerAssertionManager_releasePowerAssertionHandler];
        if (v23)
        {
          v24 = *&v5[OBJC_IVAR___CSDPowerAssertionManager_releasePowerAssertionHandler + 8];

          v23(v25);
          sub_1000051F8(v23, v24);
        }

        v8 = v5;
        goto LABEL_16;
      }

      v8 = v7;
      if (![v7 isHomePodFamily])
      {
LABEL_12:

        goto LABEL_13;
      }

      v9 = *&v5[OBJC_IVAR___CSDPowerAssertionManager_callCenterObserver];
      if (!v9)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v10 = [v9 callContainer];
      aBlock[4] = sub_1002B7618;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002E470;
      aBlock[3] = &unk_1006239E0;
      v11 = _Block_copy(aBlock);

      v12 = [v10 callsPassingTest:v11];
      swift_unknownObjectRelease();
      _Block_release(v11);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = sub_10000B6F4(v13);

        if (v14)
        {
          v16 = sub_100004778(v15);
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_10057D690;
          *(v17 + 56) = sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
          *(v17 + 64) = sub_1002B79E8();
          *(v17 + 32) = a1;
          v18 = a1;
          v19 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("PowerAssertionManager: Call relayed to HomePod, call=%@", 55, 2, &_mh_execute_header, v16, v19, v17);

          if (!*&v5[OBJC_IVAR___CSDPowerAssertionManager_powerAssertion])
          {
            v20 = *&v5[OBJC_IVAR___CSDPowerAssertionManager_acquirePowerAssertionHandler];
            if (v20)
            {
              v21 = *&v5[OBJC_IVAR___CSDPowerAssertionManager_acquirePowerAssertionHandler + 8];

              v20(v22);
              sub_1000051F8(v20, v21);
            }
          }

LABEL_16:
          return;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_1000319E4(uint64_t a1)
{
  v2 = sub_100004778(a1);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10057D690;
  v4 = OBJC_IVAR___CSDPowerAssertionManager_powerAssertion;
  v5 = *(a1 + OBJC_IVAR___CSDPowerAssertionManager_powerAssertion);
  v6 = v5;
  v7 = sub_100031B38(v5);
  v9 = v8;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100009D88();
  *(v3 + 32) = v7;
  *(v3 + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("releasing PowerAssertion %@", 27, 2, &_mh_execute_header, v2, v10, v3);

  v11 = *(a1 + v4);
  *(a1 + v4) = 0;
}

uint64_t sub_100031AEC(uint64_t a1)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  v2 = sub_100018620();
  sub_100006AF0(v2, v3, v4);
  v5 = v1;
  return String.init<A>(reflecting:)();
}

void sub_10003216C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 160), 8);
  _Block_object_dispose((v32 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1000322E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100032304(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_100006AF0(0, &qword_1006A34B8, _LTLanguageStatusObservation_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

void sub_10003238C(uint64_t a1, char *a2, char **a3)
{
  if (qword_1006A0B58 != -1)
  {
LABEL_34:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006BA688);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29[0] = v9;
    *v8 = 136315138;
    v28 = a1;

    sub_10026D814(&qword_1006A34C0, &qword_10057E298);
    v10 = String.init<A>(describing:)();
    v12 = sub_10002741C(v10, v11, v29);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "get observations: %s", v8, 0xCu);
    sub_100009B7C(v9);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a1)
    {
      v27 = a3;
      v28 = _swiftEmptyArrayStorage;
      v15 = sub_10000B6F4(a1);
      v16 = 0;
      a3 = &selRef_setWindowed_;
      while (v15 != v16)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v17 = *(a1 + 8 * v16 + 32);
        }

        v18 = v17;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if ([v17 status] == 2)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v16;
      }

      v19 = v28;
      v20 = sub_10000B6F4(v28);
      v21 = 0;
      a1 = 0;
      a3 = (v19 & 0xC000000000000001);
      while (v20 != v21)
      {
        if (a3)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v19 + 16))
          {
            goto LABEL_33;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_32;
        }

        v28 = v22;
        sub_1002AB48C(&v28);

        ++v21;
      }

      a3 = v27;
    }

    swift_beginAccess();
    v24 = a3[2];
    if (v24)
    {
      v25 = v24;
      [v25 cancel];
    }

    swift_beginAccess();
    v26 = a3[2];
    a3[2] = 0;
  }
}

void sub_1000326FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got updated list of %zu language status", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001CA750;
  v8[3] = &unk_10061DD58;
  v8[4] = *(a1 + 32);
  v5 = sub_100004778([v3 enumerateObjectsUsingBlock:v8]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cancel languageStatusListener", buf, 2u);
  }

  [*(*(*(a1 + 40) + 8) + 40) cancel];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100032D88()
{
  sub_100005EF4();
  v2 = v1;
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v3);
  sub_100007FDC();
  v6 = v5 - v4;
  if (qword_1006A0AA0 != -1)
  {
    sub_100008134(&qword_1006A0AA0);
  }

  v7 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D690;
  *&v23[0] = v2;
  sub_100006AF0(0, &qword_1006AC448, NSNotification_ptr);
  v9 = v2;
  v10 = String.init<A>(reflecting:)();
  v12 = v11;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100009D88();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v13 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Screen time: Handling call remote participants changed: %@", 58, 2, &_mh_execute_header, v7, v13, v8);

  if ([v9 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (*(&v22 + 1))
  {
    sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
    if (swift_dynamicCast())
    {
      v14 = [v20 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = OBJC_IVAR___CSDScreenTimeCallFilter_contextsForCallIdentifier;
      sub_100005298(v0 + OBJC_IVAR___CSDScreenTimeCallFilter_contextsForCallIdentifier, v23);
      v16 = *(v0 + v15);

      v17 = sub_100025C58(v6, v16);

      v18 = sub_100006884();
      v19(v18);
      if (v17)
      {

        sub_10002156C();
      }
    }
  }

  else
  {
    sub_10004975C(v23);
  }

  sub_100005EDC();
}

uint64_t sub_100033024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100033108()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  sub_100007CD8();
  sub_100007FEC();
  __chkstk_darwin(v8);
  sub_100007FDC();
  sub_10000C4C4();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v0;
  v18[4] = sub_100033798;
  v18[5] = v9;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v18[2] = v10;
  v18[3] = &unk_10062D6D0;
  v11 = _Block_copy(v18);

  v12 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v13, v14, &unk_10057D6E0, v15);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v6 + 8))(v1, v4);
  v16 = sub_100007C7C();
  v17(v16);

  sub_100005EDC();
}

uint64_t sub_10003330C()
{

  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

BOOL sub_100033378()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100033390(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000333DC(uint64_t a1, uint64_t a2)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v4 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D690;
  *(v5 + 56) = sub_10026D814(&qword_1006A9978, &unk_100585908);
  *(v5 + 64) = sub_10001000C(&unk_1006A9980, &qword_1006A9978, &unk_100585908, &protocol conformance descriptor for [A : B]);
  *(v5 + 32) = a1;

  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("IR - didUpdateContext called with contexts: %@", 46, 2, &_mh_execute_header, v4, v6, v5);

  *(a2 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_sessionFailureCount) = 0;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = sub_100023E48(v7, v8, a1);

  if (v9)
  {
    v10 = [v9 candidateResults];
    sub_100006AF0(0, &unk_1006A43A0, IRCandidateResult_ptr);
    sub_10000CE3C(&qword_1006A99A0, &unk_1006A43A0, IRCandidateResult_ptr);
    v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = sub_100033808(v11, a1);
    sub_1003D56C8(v12);
    v14 = v13;

    *(a2 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager__topOfListRoutesUniqueIdentifiers) = v14;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10057D6A0;

  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  v16 = String.init<A>(reflecting:)();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100009D88();
  *(v15 + 64) = v19;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v20 = String.init<A>(reflecting:)();
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v19;
  *(v15 + 72) = v20;
  *(v15 + 80) = v21;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("got IRContextMediaRouteKey in available contexts, updating top of list candidates %@, count %@", 94, 2, &_mh_execute_header, v4, v22, v15);

  v23 = [*(a2 + OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_recommendationsObservers) allObjects];
  sub_10026D814(&unk_1006A9990, &qword_100585918);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000B6F4(v24);
  if (!result)
  {
  }

  v26 = result;
  if (result >= 1)
  {
    for (i = 0; i != v26; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v24 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v28 didUpdateRouteRecommendations];
      swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100033808(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = &_swiftEmptySetSingleton;

    __CocoaSet.makeIterator()();
    while (1)
    {
      while (1)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          swift_bridgeObjectRelease_n();

          return v4;
        }

        sub_100006AF0(0, &unk_1006A43A0, IRCandidateResult_ptr);
        swift_dynamicCast();
        if (qword_1006A0AA0 != -1)
        {
          swift_once();
        }

        v5 = qword_1006BA380;
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_10057D690;
        *(v6 + 56) = sub_10026D814(&qword_1006A9978, &unk_100585908);
        *(v6 + 64) = sub_10001000C(&unk_1006A9980, &qword_1006A9978, &unk_100585908, &protocol conformance descriptor for [A : B]);
        *(v6 + 32) = a2;

        v7 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("IR - didUpdateContext called with contexts: %@", 46, 2, &_mh_execute_header, v5, v7, v6);

        if ([v19 classification] == 2 || objc_msgSend(v19, "classification") == 3 || objc_msgSend(v19, "classification") == 4)
        {
          break;
        }
      }

      v8 = *(&_swiftEmptySetSingleton + 2);
      if (*(&_swiftEmptySetSingleton + 3) <= v8)
      {
        sub_100397C48(v8 + 1);
      }

      v4 = &_swiftEmptySetSingleton;
      result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
      v10 = &_swiftEmptySetSingleton + 56;
      v11 = -1 << *(&_swiftEmptySetSingleton + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(&_swiftEmptySetSingleton + (v12 >> 6) + 7)) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(&_swiftEmptySetSingleton + (v12 >> 6) + 7))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
      *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
      *(*(&_swiftEmptySetSingleton + 6) + 8 * v14) = v19;
      ++*(&_swiftEmptySetSingleton + 2);
    }

    v15 = 0;
    v16 = (63 - v11) >> 6;
    while (++v13 != v16 || (v15 & 1) == 0)
    {
      v17 = v13 == v16;
      if (v13 == v16)
      {
        v13 = 0;
      }

      v15 |= v17;
      v18 = *&v10[8 * v13];
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {

    v4 = sub_1003D7E4C(a1, a2);

    return v4;
  }

  return result;
}

void sub_100033B54(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000E598();
  v9 = *(v3 + OBJC_IVAR___CSDCallTranslationController_queue);
  *v2 = v9;
  v10 = sub_10000D6F4();
  v11(v10);
  v12 = v9;
  _dispatchPreconditionTest(_:)();
  v13 = sub_100022CA0();
  v14(v13, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38[0] = v36;
  v38[1] = v37;
  if (!*(&v37 + 1))
  {
    sub_100009A04(v38, &unk_1006A2D10, &unk_10057D940);
    return;
  }

  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  if (swift_dynamicCast())
  {
    v5 = v35;
    v15 = *(v3 + OBJC_IVAR___CSDCallTranslationController_translationSession);
    if (!v15 || !sub_1002A41F0())
    {
      goto LABEL_34;
    }

    v17 = *&v15[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID];
    v16 = *&v15[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID + 8];
    v2 = v15;

    v5 = v35;
    v18 = [v5 uniqueProxyIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v20;

    if (v17 == v19 && v16 == v7)
    {
      v22 = 1;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v23 = [v5 status] == 2 || objc_msgSend(v5, "status") == 1 || objc_msgSend(v5, "status") == 3;
    v24 = [v5 translationSession];
    if (!v24 || (v24, [v5 translationAvailability] == 3))
    {
      if (!v23 || (v22 & 1) != 0)
      {

LABEL_34:
        return;
      }

      if (qword_1006A0B58 != -1)
      {
        sub_1000081B4(&qword_1006A0B58);
      }

      v30 = type metadata accessor for Logger();
      sub_1000075F0(v30, qword_1006BA688);
      v26 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      if (sub_10000BB44(v31))
      {
        v32 = sub_100006DC4();
        sub_100018630(v32);
        sub_10000F9C8(&_mh_execute_header, v33, v31, "Ending call translation session because another call went active");
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (qword_1006A0B58 == -1)
    {
LABEL_26:
      v25 = type metadata accessor for Logger();
      sub_1000075F0(v25, qword_1006BA688);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (sub_10000BB44(v27))
      {
        v28 = sub_100006DC4();
        sub_100018630(v28);
        sub_10000F9C8(&_mh_execute_header, v29, v27, "Ending call translation session because translation is no longer allowed based on the call properties");
LABEL_32:
        sub_100005F40(v7);
      }

LABEL_33:

      v34 = [objc_allocWithZone(TUCallTranslationStopRequest) initWithCall:v5];
      sub_1002ADC8C();

      goto LABEL_34;
    }

LABEL_37:
    sub_1000081B4(&qword_1006A0B58);
    goto LABEL_26;
  }
}

void sub_100033FFC()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_10000A330();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v6);
  sub_10000E4F4();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v19[4] = v4;
  v19[5] = v7;
  sub_100009FE4();
  v19[1] = 1107296256;
  sub_10000A600();
  v19[2] = v8;
  v19[3] = v2;
  v9 = _Block_copy(v19);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v11, v12, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v13, &unk_1006A2960, &unk_10057D6E0, v14);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  v15 = sub_100015A08();
  v16(v15);
  v17 = sub_100007C7C();
  v18(v17);

  sub_100005EDC();
}

void sub_100034200(void *a1)
{
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  v52[0] = v50;
  v52[1] = v51;
  if (!*(&v51 + 1))
  {
    sub_1000099A4(v52, &unk_1006A2D10, &unk_10057D940);
    goto LABEL_22;
  }

  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC(&qword_1006A0B40);
    }

    v29 = type metadata accessor for Logger();
    sub_1000075F0(v29, qword_1006BA640);
    v3 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (sub_10000A648(v30))
    {
      v31 = sub_100006DC4();
      sub_100008944(v31);
      sub_100008A90(&_mh_execute_header, v32, v33, "No call is on media tokens changed notification");
      sub_100005F40(v1);
    }

    goto LABEL_29;
  }

  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v2 = type metadata accessor for Logger();
  sub_1000075F0(v2, qword_1006BA640);
  v3 = v49;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100005274();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "handleMediaTokensChanged %@", v6, 0xCu);
    sub_1000099A4(v7, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v7);
    sub_100005F64();
  }

  v9 = v1[26];
  if (!v9)
  {
    v22 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (sub_10000689C(v34))
    {
      v35 = sub_100006DC4();
      sub_100017D04(v35);
      sub_10000A154();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      sub_100008AE8();
    }

    goto LABEL_28;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = v9;
  if (!Strong)
  {
LABEL_18:
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (sub_10000689C(v23))
    {
      v24 = sub_100006DC4();
      sub_10000D6E8(v24);
      sub_10000C1F8();
      sub_10000BAC8(v25, v26, v27, v28);
      sub_100006868();
    }

LABEL_28:
    goto LABEL_29;
  }

  v12 = [Strong uniqueProxyIdentifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v3 uniqueProxyIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v13 == v17 && v15 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {

      goto LABEL_18;
    }
  }

  v41 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  swift_beginAccess();
  if (v41[v11] - 2 > 5)
  {
    sub_100009B14(v1 + 9, v1[12]);
    sub_1004074AC();

    v3 = Strong;
  }

  else
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (sub_10000689C(v43))
    {
      v44 = sub_100006DC4();
      sub_100018630(v44);
      sub_10000C1F8();
      _os_log_impl(v45, v46, v47, v48, v41, 2u);
      sub_100005F64();
    }
  }

LABEL_29:
}

uint64_t sub_100034668()
{
  v341 = v0;
  v1 = [*(v0 + 232) callUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10034B594();
  sub_1000276D0();

  sub_10000EA40();
  if (v2)
  {
    sub_1000099A4(*(v0 + 248), &unk_1006A3DD0, &unk_10057C9D0);
    goto LABEL_53;
  }

  v3 = *(v0 + 240);
  v4 = *(v0 + 232);
  (*(*(v0 + 264) + 32))(*(v0 + 312), *(v0 + 248), *(v0 + 256));
  sub_100005298(v3 + 112, v0 + 16);

  v5 = sub_100005ED0();
  v7 = sub_1000357C8(v5, v6);

  v8 = [v4 status];
  v9 = [v4 isEndpointOnCurrentDevice];
  v10 = [v4 isHostedOnCurrentDevice];
  v11 = [v4 isConferenced];
  v12 = [v4 isScreening];
  v13 = v7 & 0xFF00000000;
  if ((v7 & 0xFF00000000) == 0x200000000)
  {
    v14 = 0x100000000000000;
    if (!v12)
    {
      v14 = 0;
    }

    v15 = 0x1000000000000;
    if (!v11)
    {
      v15 = 0;
    }

    v16 = 0x10000000000;
    if (!v10)
    {
      v16 = 0;
    }

    v17 = &_mh_execute_header;
    if (!v9)
    {
      v17 = 0;
    }

    v18 = v17 | v8 | v16 | v15 | v14;
  }

  else
  {
    v19 = 0x100000000000000;
    if (!v12)
    {
      v19 = 0;
    }

    v20 = 0x1000000000000;
    if (!v11)
    {
      v20 = 0;
    }

    v21 = 0x10000000000;
    if (!v10)
    {
      v21 = 0;
    }

    v22 = &_mh_execute_header;
    if (!v9)
    {
      v22 = 0;
    }

    v18 = v22 | v8 | v21 | v20 | v19;
    if (sub_100049F58(v7 & 0x1010101FFFFFFFFLL, v18))
    {
      if (qword_1006A0B78 != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 232);
      v24 = type metadata accessor for Logger();
      sub_1000075F0(v24, qword_1006BA6E8);
      v25 = v23;
      v26 = Logger.logObject.getter();
      LOBYTE(v23) = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v23))
      {
        v27 = *(v0 + 232);
        v28 = sub_100005274();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        *(v28 + 4) = v27;
        *v29 = v27;
        v30 = v27;
        sub_10000B940(&_mh_execute_header, v31, v32, "[CSDConversationCallCoordinationManager] Call status did not update: %@");
        sub_1000099A4(v29, &unk_1006A2630, &qword_10057CB40);
        sub_100006868();
        sub_100005F40(v28);
      }

      goto LABEL_36;
    }
  }

  LODWORD(v330) = v11;
  v33 = v9;
  v34 = *(v0 + 312);
  v35 = *(v0 + 240);
  sub_100008D34(v3 + 112, v0 + 40);
  swift_isUniquelyReferenced_nonNull_native();
  v340 = *(v3 + 112);
  sub_100035868();
  *(v3 + 112) = v340;
  swift_endAccess();
  sub_100005298(v35 + 120, v0 + 64);
  v335 = v35;
  v36 = *(v35 + 120);

  sub_100035F94(v34, v36);
  v38 = v37;

  if (v38 != 4)
  {
    v63 = sub_100006B3C();
    sub_10034B1A8(v63, v64);
LABEL_36:
    v65 = sub_100007624();
    v66(v65);
    goto LABEL_53;
  }

  if (![*(*(v0 + 240) + 88) sharePlayTelephonyEnabled])
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8(&qword_1006A0AA8);
    }

    v67 = *(v0 + 256);
    v68 = type metadata accessor for Logger();
    sub_10000AF9C(v68, qword_1006A6290);
    v69 = sub_10000F6DC();
    v70(v69);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    v73 = sub_10000BA5C(v72);
    v75 = *(v0 + 264);
    v74 = *(v0 + 272);
    if (v73)
    {
      sub_100005274();
      sub_10000681C();
      sub_100035788();
      *v7 = 136315138;
      sub_1000084F8();
      sub_10003D434(v76, 255, v77, &protocol conformance descriptor for UUID);
      sub_10000D35C();
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10000C130();
      HIDWORD(v318) = v67;
      v79 = *(v75 + 8);
      v78 = (v75 + 8);
      v80 = sub_10001721C();
      v81 = v79(v80);
      sub_100006E04(v81, v82, v83, v84, v85, v86, v87, v88, v280, v287, v295, v302, v310, v318, v330, v335);
      sub_10000C3CC();
      *(v7 + 4) = v74;
      sub_100017D70(&_mh_execute_header, v89, v90, "[CSDConversationCallCoordinationManager] Ignoring call due to server-bag disablement, callUUID: %s", v91, v92, v93, v94, v281, v288, v296, v303, v311, v319, v326);
      sub_10000E764();
      sub_100006868();
    }

    else
    {

      v145 = *(v75 + 8);
      v146 = sub_10001721C();
      v95 = v145(v146);
      v78 = v145;
    }

    v147 = sub_100005320(v95, v96, v97, v98, v99, v100, v101, v102, v280, v287, v295, v302, v310, v318, v330, v335);
    sub_100008D34(v147, v0 + 88);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100035B28();
    sub_100379BB4();
    sub_100017EC0(v148, v149, v150, v151, v152, v153, v154, v155, v283, v290, v298, v305, v313, v321, v331, v336, v340);
    goto LABEL_50;
  }

  v39 = [*(v0 + 232) provider];
  v40 = [v39 isFaceTimeProvider];

  if (v40)
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8(&qword_1006A0AA8);
    }

    v41 = *(v0 + 256);
    v42 = type metadata accessor for Logger();
    sub_10000AF9C(v42, qword_1006A6290);
    v43 = sub_10000F6DC();
    v44(v43);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = sub_10000BA5C(v46);
    v48 = *(v0 + 264);
    if (v47)
    {
      sub_100005274();
      sub_10000681C();
      sub_100035788();
      *v7 = 136315138;
      sub_1000084F8();
      sub_10003D434(v49, 255, v50, &protocol conformance descriptor for UUID);
      sub_10000D35C();
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      v54 = *(v48 + 8);
      v55 = sub_100006B3C();
      v54(v55);
      v56 = sub_10002741C(v51, v53, &v340);

      *(v7 + 4) = v56;
      sub_100017D70(&_mh_execute_header, v57, v58, "[CSDConversationCallCoordinationManager] Ignoring FaceTime call, callUUID: %s", v59, v60, v61, v62, v280, v287, v295, v302, v310, v318, v41);
      sub_10000E764();
      sub_100006868();
    }

    else
    {

      v54 = *(v48 + 8);
      v157 = sub_100006B3C();
      v54(v157);
    }

    v158 = *(v0 + 312);
    v159 = *(v0 + 256);
    v160 = [*(v0 + 232) provider];
    v161 = [v160 identifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100008D34(v335 + 120, v0 + 208);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100035B28();
    sub_100379BB4();
    sub_100017EC0(v162, v163, v164, v165, v166, v167, v168, v169, v280, v287, v295, v302, v310, v318, v330, v335, v340);
    swift_endAccess();
    (v54)(v158, v159);
LABEL_53:
    sub_100035E24();

    sub_100009EF4();
    sub_10000C638();

    __asm { BRAA            X1, X16 }
  }

  v103 = [objc_opt_self() sharedInstance];
  if (!v103)
  {
    __break(1u);
    return _swift_task_switch(v103, v104, v105);
  }

  v106 = v103;
  v107 = *(v0 + 232);
  v108 = [v103 deviceType];

  v109 = v33;
  if ([v107 isHostedOnCurrentDevice] && v108 != 2)
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8(&qword_1006A0AA8);
    }

    v110 = *(v0 + 256);
    v111 = type metadata accessor for Logger();
    sub_10000AF9C(v111, qword_1006A6290);
    v112 = sub_10000F6DC();
    v113(v112);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    v116 = sub_10000BA5C(v115);
    v117 = *(v0 + 296);
    v118 = *(v0 + 264);
    if (v116)
    {
      sub_100005274();
      sub_10000681C();
      sub_100035788();
      *v7 = 136315138;
      sub_1000084F8();
      sub_10003D434(v119, 255, v120, &protocol conformance descriptor for UUID);
      sub_10000D35C();
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10000C130();
      HIDWORD(v318) = v110;
      v121 = *(v118 + 8);
      v78 = (v118 + 8);
      v122 = sub_10001721C();
      v123 = v121(v122);
      sub_100006E04(v123, v124, v125, v126, v127, v128, v129, v130, v280, v287, v295, v302, v310, v318, v330, v335);
      sub_10000C3CC();
      *(v7 + 4) = v117;
      sub_100017D70(&_mh_execute_header, v131, v132, "[CSDConversationCallCoordinationManager] Ignoring Thumper call, callUUID: %s", v133, v134, v135, v136, v282, v289, v297, v304, v312, v320, v327);
      sub_10000E764();
      sub_100006868();
    }

    else
    {

      v177 = *(v118 + 8);
      v178 = sub_10001721C();
      v137 = v177(v178);
      v78 = v177;
    }

    v179 = sub_100005320(v137, v138, v139, v140, v141, v142, v143, v144, v280, v287, v295, v302, v310, v318, v330, v335);
    sub_100008D34(v179, v0 + 184);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100035B28();
    sub_100379BB4();
    sub_100017EC0(v180, v181, v182, v183, v184, v185, v186, v187, v284, v291, v299, v306, v314, v322, v332, v337, v340);
LABEL_50:
    swift_endAccess();
    v156 = sub_100007624();
    v78(v156);
    goto LABEL_53;
  }

  if ((*(*(v0 + 240) + 80) & 1) == 0 && ([*(v0 + 232) isHostedOnCurrentDevice] & 1) == 0)
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8(&qword_1006A0AA8);
    }

    v193 = *(v0 + 256);
    v194 = type metadata accessor for Logger();
    sub_10000AF9C(v194, qword_1006A6290);
    v195 = sub_10000F6DC();
    v196(v195);
    v197 = Logger.logObject.getter();
    v198 = static os_log_type_t.default.getter();
    v199 = sub_10000BA5C(v198);
    v200 = *(v0 + 288);
    v201 = *(v0 + 264);
    if (v199)
    {
      sub_100005274();
      sub_10000681C();
      sub_100035788();
      *v7 = 136315138;
      sub_1000084F8();
      sub_10003D434(v202, 255, v203, &protocol conformance descriptor for UUID);
      sub_10000D35C();
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10000C130();
      HIDWORD(v318) = v193;
      v204 = *(v201 + 8);
      v78 = (v201 + 8);
      v205 = sub_10001721C();
      v206 = v204(v205);
      sub_100006E04(v206, v207, v208, v209, v210, v211, v212, v213, v280, v287, v295, v302, v310, v318, v330, v335);
      sub_10000C3CC();
      *(v7 + 4) = v200;
      sub_100017D70(&_mh_execute_header, v214, v215, "[CSDConversationCallCoordinationManager] Ignoring calls on relay device-type, callUUID: %s", v216, v217, v218, v219, v285, v292, v300, v307, v315, v323, v328);
      sub_10000E764();
      sub_100006868();
    }

    else
    {

      v230 = *(v201 + 8);
      v231 = sub_10001721C();
      v220 = v230(v231);
      v78 = v230;
    }

    v232 = sub_100005320(v220, v221, v222, v223, v224, v225, v226, v227, v280, v287, v295, v302, v310, v318, v330, v335);
    sub_100008D34(v232, v0 + 112);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100035B28();
    sub_100379BB4();
    sub_100017EC0(v233, v234, v235, v236, v237, v238, v239, v240, v286, v293, v301, v308, v316, v325, v333, v338, v340);
    goto LABEL_50;
  }

  if ([*(v0 + 232) status] == 1 && (objc_msgSend(*(v0 + 232), "isScreening") & 1) == 0)
  {
    if (v13 == 0x200000000)
    {
      v228 = 0;
      v324 = 0;
      v329 = v33;
      v229 = v330;
      goto LABEL_83;
    }

    v229 = v330;
    if ((v7 & 0x100000000) != 0)
    {
      v243 = 0;
      v228 = 0;
      v241 = v33 ^ 1;
      v242 = v33;
      v324 = v33 ^ 1;
      v329 = 0;
      if ((v7 & 0x1000000000000) == 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v241 = 0;
      v242 = 0;
      v228 = 0;
      v324 = 0;
      v329 = v33;
      v243 = v33;
      v109 = 0;
      if ((v7 & 0x1000000000000) == 0)
      {
LABEL_83:
        v339 = v228;
        v334 = v229;
        if (qword_1006A0AA8 != -1)
        {
          sub_10000A1D8(&qword_1006A0AA8);
        }

        v244 = *(v0 + 312);
        v245 = *(v0 + 280);
        v247 = *(v0 + 256);
        v246 = *(v0 + 264);
        v248 = type metadata accessor for Logger();
        sub_10000AF9C(v248, qword_1006A6290);
        (*(v246 + 16))(v245, v244, v247);
        v249 = Logger.logObject.getter();
        v250 = static os_log_type_t.default.getter();
        v251 = os_log_type_enabled(v249, v250);
        v252 = *(v0 + 280);
        v254 = *(v0 + 256);
        v253 = *(v0 + 264);
        if (v251)
        {
          v309 = v250;
          v317 = v249;
          v255 = swift_slowAlloc();
          v340 = swift_slowAlloc();
          *v255 = 136316930;
          sub_1000084F8();
          sub_10003D434(v256, 255, v257, &protocol conformance descriptor for UUID);
          v294 = dispatch thunk of CustomStringConvertible.description.getter();
          v259 = v258;
          (*(v253 + 8))(v252, v254);
          v260 = sub_10002741C(v294, v259, &v340);

          *(v255 + 4) = v260;
          *(v255 + 12) = 2080;
          v261 = sub_100343520(v18);
          v263 = sub_10002741C(v261, v262, &v340);

          *(v255 + 14) = v263;
          *(v255 + 22) = 2080;
          if (v13 == 0x200000000)
          {
            v264 = 0xE300000000000000;
            v265 = 7104878;
          }

          else
          {
            *(v0 + 416) = v7;
            v268 = vdupq_n_s64(v7);
            *v268.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v268, xmmword_100580760), vshlq_u64(v268, xmmword_100580750))), 0x1000100010001);
            *(v0 + 420) = vuzp1_s8(*v268.i8, *v268.i8).u32[0];
            v265 = String.init<A>(reflecting:)();
            v264 = v269;
          }

          v266 = v334;
          v267 = v339;
          v270 = sub_10002741C(v265, v264, &v340);

          *(v255 + 24) = v270;
          *(v255 + 32) = 1024;
          *(v255 + 34) = v109;
          *(v255 + 38) = 1024;
          *(v255 + 40) = v329;
          *(v255 + 44) = 1024;
          *(v255 + 46) = v324;
          *(v255 + 50) = 1024;
          *(v255 + 52) = v334;
          *(v255 + 56) = 1024;
          *(v255 + 58) = v339;
          _os_log_impl(&_mh_execute_header, v317, v309, "[CSDConversationCallCoordinationManager] Processing active call, callUUID: %s, \ncurrentCallState: %s, \npreviousCallState: %s callAlreadyOnMe: %{BOOL}d callMovedToMe: %{BOOL}d callMovedAwayFromMe: %{BOOL}d callBecameConferenced: %{BOOL}d callBecameNonConferenced: %{BOOL}d", v255, 0x3Eu);
          swift_arrayDestroy();
          sub_100007CBC();
          sub_100005F40(v255);
        }

        else
        {

          (*(v253 + 8))(v252, v254);
          v266 = v334;
          v267 = v339;
        }

        if (v266)
        {
          *(v0 + 336) = *(*(v0 + 240) + 48);
        }

        else if (v267)
        {
          *(v0 + 352) = *(*(v0 + 240) + 48);
        }

        else
        {
          if (((v109 | v329) & 1) == 0)
          {
            if (v324)
            {
              v277 = swift_task_alloc();
              *(v0 + 392) = v277;
              *v277 = v0;
              sub_100015FC8(v277);
              goto LABEL_62;
            }

            goto LABEL_103;
          }

          sub_100005298(*(v0 + 240) + 136, v0 + 160);
          sub_10034B57C();
          v272 = sub_100005ED0();
          v274 = sub_10004A1E8(v272, v273);
          *(v0 + 368) = v274;

          if (v274)
          {
            type metadata accessor for ConversationCallCoordinator(0);
            sub_100018224();
            sub_10003D434(v275, 255, v276, &protocol conformance descriptor for ConversationCallCoordinator);
            sub_10034B558();
            dispatch thunk of Actor.unownedExecutor.getter();
            sub_100006B5C();
          }

          else
          {
            *(v0 + 376) = *(*(v0 + 240) + 48);
          }
        }

LABEL_95:
        sub_10000C638();

        return _swift_task_switch(v103, v104, v105);
      }
    }

    v228 = v330 ^ 1;
    v324 = v241;
    v329 = v243;
    v109 = v242;
    v229 = 0;
    goto LABEL_83;
  }

  v172 = [*(v0 + 232) status];
  v173 = *(v0 + 232);
  if (v172 != 6)
  {
    if ([v173 status] == 2)
    {
      sub_100005298(*(v0 + 240) + 136, v0 + 136);
      sub_10034B57C();
      v188 = sub_100005ED0();
      v190 = sub_10004A1E8(v188, v189);
      *(v0 + 408) = v190;

      if (v190)
      {
        type metadata accessor for ConversationCallCoordinator(0);
        sub_100018224();
        sub_10003D434(v191, 255, v192, &protocol conformance descriptor for ConversationCallCoordinator);
        sub_10034B558();
        dispatch thunk of Actor.unownedExecutor.getter();
        sub_100006B5C();
        goto LABEL_95;
      }
    }

LABEL_103:
    v278 = sub_100010078();
    v279(v278);
    goto LABEL_53;
  }

  [v173 disconnectedReason];
  v174 = swift_task_alloc();
  *(v0 + 400) = v174;
  *v174 = v0;
  v174[1] = sub_100345BBC;
  sub_10000795C(*(v0 + 232));
LABEL_62:
  sub_10000C638();

  return sub_100347960();
}

uint64_t sub_100035720(float a1)
{
  *v1 = a1;
  v4 = *(v2 - 208) | 0x8000000000000000;

  return sub_10002741C(0xD00000000000003ALL, v4, (v2 - 120));
}

uint64_t sub_100035748()
{

  return sub_10000AF74(v1, 0, 1, v0);
}

void sub_100035768(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000357AC(uint64_t *a1, void *a2, unint64_t *a3)
{

  return sub_1000245B4(a1, a2, a3, v4, v5, v3);
}

uint64_t sub_1000357C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0x200000000;
  }

  sub_100021E24();
  if ((v4 & 1) == 0)
  {
    return 0x200000000;
  }

  v5 = (*(a2 + 56) + 8 * v3);
  v6 = *v5;
  v7 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = v5[7];
  v11 = v7 == 0;
  v12 = &_mh_execute_header;
  if (v11)
  {
    v12 = 0;
  }

  v13 = v12 | v6;
  v14 = 0x10000000000;
  if (!v8)
  {
    v14 = 0;
  }

  v15 = 0x1000000000000;
  if (!v9)
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15;
  v11 = v10 == 0;
  v17 = 0x100000000000000;
  if (v11)
  {
    v17 = 0;
  }

  return v16 | v17;
}

void sub_100035868()
{
  sub_100005EF4();
  sub_10000E798();
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_10000F714();
  sub_100021E24();
  sub_100008598();
  if (v6)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(&qword_1006A6F98, &unk_100582760);
  v7 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v7, v8))
  {
    sub_100010088();
    sub_100021E24();
    sub_10000D4BC();
    if (!v10)
    {
      goto LABEL_11;
    }

    v3 = v9;
  }

  v11 = *v1;
  if (v4)
  {
    v12 = (*(v11 + 56) + 8 * v3);
    *v12 = v0;
    v13 = vdupq_n_s64(v0);
    *v13.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v13, xmmword_100580760), vshlq_u64(v13, xmmword_100580750))), 0x1000100010001);
    v12[1] = vuzp1_s8(*v13.i8, *v13.i8).u32[0];
  }

  else
  {
    v14 = sub_100015DCC();
    v15(v14);
    sub_100035EE4(v3, v2, v0 & 0x1010101FFFFFFFFLL, v11);
  }

  sub_100005EDC();
}

uint64_t sub_1000359F0(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a23, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a24)
{
  *(v24 - 96) = a1;
  a24 = a2;

  return sub_100052980(v24 - 96, &a13);
}

uint64_t sub_100035A38@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t sub_100035A64()
{

  return swift_allocObject();
}

void sub_100035A80()
{
  v4 = *(v2 - 280);

  sub_10031E2A8(v1, v4, v0);
}

uint64_t sub_100035AA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (*(a6 + 48) + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (*(a6 + 56) + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  return result;
}

uint64_t sub_100035AD4(uint64_t result)
{
  v1[89] = result;
  v1[41] = result;
  v1[34] = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100035AF8()
{
}

id sub_100035B3C@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = v2;
  v6 = *(v4 + 952);

  return [v3 v6];
}

uint64_t sub_100035B68()
{

  return swift_slowAlloc();
}

__n128 sub_100035B84(uint64_t a1)
{
  *(v1 + 56) = a1;
  result = *(v1 + 40);
  v3 = *(v1 + 24);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100035C34(float a1)
{
  *v3 = a1;
  *(v2 + 80) = v1;

  return swift_errorRetain();
}

uint64_t sub_100035CFC()
{

  return static _DictionaryStorage.allocate(capacity:)();
}

uint64_t sub_100035D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return sub_100285FC4(a1, va, v16, v15);
}

void sub_100035D4C()
{

  sub_10039A2E0(0, v0, 0);
}

uint64_t sub_100035D9C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_10002741C(0xD000000000000020, (a1 - 32) | 0x8000000000000000, va);
}

id sub_100035DEC(uint64_t a1, const char *a2)
{
  v8 = *(v6 - 224);

  return [v3 a2];
}

uint64_t sub_100035E24()
{
}

void sub_100035E78(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100035EA8()
{

  return type metadata accessor for Logger();
}

void sub_100035EE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100008498(a1, a2, a3, a4);
  sub_10001629C();
  type metadata accessor for UUID();
  sub_100010300();
  v7 = sub_100015D68();
  v8(v7);
  v9 = (*(v4 + 56) + 8 * v6);
  *v9 = v5;
  v10 = vdupq_n_s64(v5);
  *v10.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v10, xmmword_100580760), vshlq_u64(v10, xmmword_100580750))), 0x1000100010001);
  v9[1] = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
  sub_100017180();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v11;
  }
}

uint64_t sub_100035F94(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_100021E24();
    if (v2)
    {
      sub_100015CDC();
      v3 = sub_100006B30();
      sub_1002DB5C8(v3, v4);
    }
  }

  return sub_100006B30();
}

uint64_t sub_100035FE4()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  sub_100009EF4();

  return v3();
}

void sub_100036140()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  __chkstk_darwin(v6);
  sub_10000E4F4();
  sub_100008D68(OBJC_IVAR___CSDRTCReporter_queue);
  sub_100007934();
  v7 = swift_allocObject();
  v7[2] = v0;
  v7[3] = v2;
  v7[4] = v4;
  v25[4] = sub_1000391C4;
  v25[5] = v7;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v25[2] = v8;
  v25[3] = &unk_1006248A8;
  v9 = _Block_copy(v25);
  v10 = v0;
  v11 = v2;
  v12 = v4;
  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v13, v14, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v15, v16, &unk_10057D6E0, v17);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = sub_100008AB0();
  sub_100018F10(v18, v19, v20);
  _Block_release(v9);
  v21 = sub_100007764();
  v22(v21);
  v23 = sub_100007C7C();
  v24(v23);

  sub_100005EDC();
}

uint64_t sub_1000363E0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v2;
  aBlock[4] = sub_100055A80;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006231E0;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  v19 = v2;
  static DispatchQoS.unspecified.getter();
  v21[1] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v6 + 8))(v9, v4);
  (*(v12 + 8))(v15, v10);
}

uint64_t sub_100036640()
{

  return _swift_deallocObject(v0);
}

void sub_1000366FC(void *a1, id a2)
{
  v4 = v2;
  v5 = a2;
  if ([a2 status] != 6 || !objc_msgSend(v5, "isEndpointOnCurrentDevice"))
  {
    v41 = [v5 provider];
    v42 = [v41 isTelephonyProvider];

    if (!v42)
    {
      return;
    }

    v43 = OBJC_IVAR___CSDAnalyticsReporter_callToStartTransportType;
    swift_beginAccess();
    v44 = *(v4 + v43);

    v45 = sub_100036ED4(v5, v44);

    if (v45)
    {

      return;
    }

    if (sub_100036F90(v5))
    {
      sub_10000C8EC();
      v80 = v62;
      v81 = v63;
      AnyHashable.init<A>(_:)();
      sub_100006600();

      sub_100006780(v82);
      if (*(&v84 + 1))
      {
        sub_10003EBF0(&v83, v82);
        type metadata accessor for AnalyticsReporter();
        sub_100006A94(v82, &v83);
        v64 = sub_100457574(&v83);
        sub_1000099A4(&v83, &unk_1006A2D10, &unk_10057D940);
        v65 = [objc_allocWithZone(NSNumber) initWithInteger:v64];
        sub_100008D34(v4 + v43, &v83);
        if (v65)
        {
          v66 = sub_10000F2EC();
          sub_100457800(v66, v67);
        }

        else
        {
        }

        swift_endAccess();
        sub_100009B7C(v82);
        goto LABEL_38;
      }
    }

    else
    {
      v83 = 0u;
      v84 = 0u;
    }

    sub_1000099A4(&v83, &unk_1006A2D10, &unk_10057D940);
LABEL_38:
    v68 = [v5 callCenter];
    v69 = v68;
    if (v68)
    {
      v70 = [v68 routeController];

      v69 = [v70 pickedRoute];
    }

    type metadata accessor for AnalyticsReporter();
    sub_100037034(v69);
    sub_10000FA2C();

    v71 = OBJC_IVAR___CSDAnalyticsReporter_callToAudioRoutesTracker;
    sub_100008D34(v4 + OBJC_IVAR___CSDAnalyticsReporter_callToAudioRoutesTracker, v82);
    swift_isUniquelyReferenced_nonNull_native();
    *&v83 = *(v4 + v71);
    v72 = sub_100006718();
    sub_1000371E0(v72, v73, v5);
    *(v4 + v71) = v83;
    swift_endAccess();
    return;
  }

  type metadata accessor for AnalyticsReporter();
  v7 = OBJC_IVAR___CSDAnalyticsReporter_callToStartTransportType;
  swift_beginAccess();
  v8 = *(v2 + v7);

  sub_100036ED4(v5, v8);
  sub_10000AB30();

  v9 = OBJC_IVAR___CSDAnalyticsReporter_callToAudioRoutesTracker;
  swift_beginAccess();
  v10 = *(v2 + v9);

  v11 = sub_10004DF50(v5, v10);
  v13 = v12;

  sub_10004E238(v5, v3, v11, v13);
  v15 = v14;

  if (qword_1006A0B10 != -1)
  {
LABEL_43:
    sub_1000085AC(&qword_1006A0B10);
  }

  v16 = type metadata accessor for Logger();
  sub_1000075F0(v16, qword_1006BA5B0);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_100005274();
    v77 = v19;
    v78 = sub_100005E84();
    v85[0] = v78;
    *v19 = 136315138;
    sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
    v20 = Dictionary.description.getter();
    LOBYTE(v19) = v18;
    v22 = v7;
    v23 = sub_10002741C(v20, v21, v85);

    v24 = v77;
    *(v77 + 4) = v23;
    v7 = v22;
    _os_log_impl(&_mh_execute_header, v17, v19, "Logging end call to core analytics: %s", v24, 0xCu);
    v25 = v78;
    sub_100009B7C(v78);
    sub_100005F40(v25);
    sub_100005F64();
  }

  sub_1000517AC(0xD000000000000025, 0x8000000100578EB0, v15);

  sub_100008D34(v4 + v7, v85);
  v26 = sub_1000519C0(v5);
  swift_endAccess();

  v78 = _swiftEmptyArrayStorage;
  v80 = _swiftEmptyArrayStorage;
  v27 = [a1 calls];
  v77 = sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(v4 + v9) + 64;
  sub_100007990();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;
  v75 = v33;

  v15 = 0;
  v5 = 0;
  while (1)
  {
    v35 = v15;
    if (!v30)
    {
      break;
    }

LABEL_11:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v85[0] = *(*(v75 + 48) + ((v15 << 9) | (8 * v36)));
    __chkstk_darwin(v34);
    a1 = v74;
    v74[2] = v85;
    v38 = v37;
    sub_100051B88(sub_100458278, v74, v76);
    if (v39)
    {
    }

    else
    {
      v40 = v38;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a1 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v78 = v80;
    }
  }

  while (1)
  {
    v15 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v15 >= v32)
    {
      break;
    }

    v30 = *(v7 + 8 * v15);
    ++v35;
    if (v30)
    {
      goto LABEL_11;
    }
  }

  v46 = v78;
  v47 = sub_10000B6F4(v78);
  if (!v47)
  {
    goto LABEL_29;
  }

  v48 = v47;
  if (v47 >= 1)
  {
    v49 = 0;
    v50 = v46 & 0xC000000000000001;
    do
    {
      if (v50)
      {
        sub_100006C30();
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v51 = *(v46 + 8 * v49 + 32);
      }

      v52 = v51;
      sub_100008D34(v4 + v9, v85);
      v53 = v52;
      sub_10003719C();
      if (v55)
      {
        v56 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = *(v4 + v9);
        v58 = v79;
        *(v4 + v9) = 0x8000000000000000;
        v59 = *(v58 + 24);
        sub_10026D814(&unk_1006A6EC8, &qword_1005880B0);
        v60 = isUniquelyReferenced_nonNull_native;
        v46 = v78;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v60, v59);
        v61 = v79;

        sub_100051C70();
        _NativeDictionary._delete(at:)();

        *(v4 + v9) = v61;
      }

      else
      {
      }

      ++v49;
      swift_endAccess();
    }

    while (v48 != v49);
LABEL_29:

    return;
  }

  __break(1u);
}

uint64_t sub_100036ED4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v2 = __CocoaDictionary.lookup(_:)();

    if (v2)
    {
      sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
      swift_dynamicCast();
      return v7;
    }
  }

  else if (*(a2 + 16) && (sub_10003719C(), (v5 & 1) != 0))
  {
    sub_10000C5FC(v4);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_100036F90(void *a1)
{
  v1 = [a1 providerContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_DWORD *initializeBufferWithCopyOfBuffer for DisclosureDescriptor(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t sub_100037034(void *a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E55;
  }

  v1 = a1;
  if ([v1 isBluetooth])
  {

    return 0x746F6F7465756C42;
  }

  else if ([v1 isSpeaker])
  {

    return 0x72656B61657053;
  }

  else if ([v1 isReceiver])
  {

    return 0x7265766965636552;
  }

  else if (([v1 isWiredHeadset] & 1) != 0 || objc_msgSend(v1, "isWiredHeadphones"))
  {

    return 0x6465726957;
  }

  else
  {
    v3 = [v1 isAuxiliary];

    if (v3)
    {
      return 0x7261696C69787541;
    }

    else
    {
      return 0x726568744FLL;
    }
  }
}

void sub_10003719C()
{
  v0 = sub_100016F64();
  NSObject._rawHashValue(seed:)(v0);
  sub_1000515FC();
  sub_100037318();
}

id sub_1000371E0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10003719C();
  sub_100008598();
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  sub_10026D814(&unk_1006A6EC8, &qword_1005880B0);
  v11 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v11, v12))
  {
    sub_10003719C();
    sub_10000C758();
    if (!v14)
    {
      goto LABEL_14;
    }

    v9 = v13;
  }

  v15 = *v3;
  if (v10)
  {
    v16 = (*(v15 + 56) + 16 * v9);
    *v16 = a1;
    v16[1] = a2;
  }

  else
  {
    sub_1000373D4(v9, a3, a1, a2, v15);

    return a3;
  }
}

void sub_100037318()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = v0 + 64;
  sub_1000052DC();
  v8 = ~v7;
  for (i = v9 & ~v7; ((1 << i) & *(v6 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    sub_100006AF0(0, v4, v2);
    v11 = *(*(v5 + 48) + 8 * i);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      break;
    }
  }

  sub_100005EDC();
}

void sub_1000373D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10000F690(a1, a2, a3, a4, a5);
  *(v6[6] + 8 * v5) = v7;
  v8 = (v6[7] + 16 * v5);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_10000E710(v6, v13);
  }
}

uint64_t sub_100037484(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = a2;
  sub_10000A0F0(v18);
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v25 = v19;
  v26 = &unk_100626D08;
  v20 = _Block_copy(aBlock);
  v21 = v2;
  v22 = a2;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v17, v11);
}

uint64_t sub_100037694()
{

  return _swift_deallocObject(v0);
}

void sub_1000376D4(char *a1, void (*a2)(char *, uint64_t), void *a3)
{
  v226 = a3;
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v6 = __chkstk_darwin(v5 - 8);
  v231 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v230 = (&v209 - v8);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v209 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for DispatchQoS();
  v240 = *(v238 - 8);
  __chkstk_darwin(v238);
  v237 = &v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for DispatchTimeInterval();
  v242 = *(v235 - 8);
  __chkstk_darwin(v235);
  v234 = (&v209 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for DispatchTime();
  v243 = *(v15 - 8);
  v244 = v15;
  v16 = __chkstk_darwin(v15);
  v233 = &v209 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v236 = &v209 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v227 = &v209 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v209 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v209 - v27;
  v29 = __chkstk_darwin(v26);
  v228 = &v209 - v30;
  __chkstk_darwin(v29);
  v229 = &v209 - v31;
  if ((sub_1000391D0(a2) & 1) == 0)
  {
    return;
  }

  v221 = v12;
  v223 = v10;
  v222 = v9;
  v220 = v25;
  v232 = v20;
  v241 = v28;
  v239 = v19;
  v224 = a2;
  v32 = [a2 status];
  v33 = v32;
  v34 = sub_10003D4D0(v32);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10057D6A0;
  v36 = OBJC_IVAR___CSDRTCReporter_callUUIDToCallReportingSessions;
  swift_beginAccess();
  v219 = v36;
  aBlock = *&a1[v36];

  sub_10026D814(&qword_1006A39D0, &qword_10057E8C8);
  v37 = String.init<A>(reflecting:)();
  v38 = a1;
  v40 = v39;
  *(v35 + 56) = &type metadata for String;
  v41 = sub_100009D88();
  *(v35 + 64) = v41;
  *(v35 + 32) = v37;
  *(v35 + 40) = v40;
  v225 = v33;
  LODWORD(aBlock) = v33;
  type metadata accessor for TUCallStatus(0);
  v42 = String.init<A>(reflecting:)();
  *(v35 + 96) = &type metadata for String;
  *(v35 + 104) = v41;
  *(v35 + 72) = v42;
  *(v35 + 80) = v43;
  v44 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("callUUIDToCallReportingSessions=%@, callStatus: %@", 50, 2, &_mh_execute_header, v34, v44, v35);

  v46 = sub_10003D4D0(v45);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10057D690;
  v48 = OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions;
  swift_beginAccess();
  v49 = v38;
  aBlock = *&v38[v48];

  v50 = String.init<A>(reflecting:)();
  *(v47 + 56) = &type metadata for String;
  *(v47 + 64) = v41;
  *(v47 + 32) = v50;
  *(v47 + 40) = v51;
  v52 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("callUUIDToGFTCallReportingSessions=%@", 37, 2, &_mh_execute_header, v46, v52, v47);

  v53 = v224;
  if ([v224 disconnectedReason])
  {
    v54 = [v53 disconnectedReason] == 6;
    if ((v225 - 3) >= 2)
    {
      v55 = v239;
      v56 = v241;
      v57 = v232;
      if (v225 != 1)
      {
        v58 = v38;
        if (v225 != 6)
        {
          return;
        }

        goto LABEL_11;
      }

LABEL_17:
      v251 = 0;
      v78 = [objc_opt_self() sharedInstance];
      v79 = [v78 queue];

      v80 = swift_allocObject();
      *(v80 + 16) = &v251;
      *(v80 + 24) = v53;
      v81 = swift_allocObject();
      *(v81 + 16) = sub_1002C7C48;
      *(v81 + 24) = v80;
      v249 = sub_1002C7C44;
      v250 = v81;
      aBlock = _NSConcreteStackBlock;
      v246 = 1107296256;
      v247 = sub_10002007C;
      v248 = &unk_100624920;
      v82 = _Block_copy(&aBlock);
      v83 = v53;

      dispatch_sync(v79, v82);

      _Block_release(v82);
      LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

      if ((v79 & 1) == 0)
      {
        if (v251)
        {
          v84 = v251;
          v85 = sub_10003D4D0(v84);
          v86 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("This is a GFT call", 18, 2, &_mh_execute_header, v85, v86, _swiftEmptyArrayStorage);

          v87 = [v83 uniqueProxyIdentifierUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v88 = v57[1];
          v88(v56, v55);
          v89 = v49;
          v90 = [v83 uniqueProxyIdentifierUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          swift_beginAccess();
          sub_100383A0C(v56, v91, v92, v93, v94, v95, v96, v97, v209, v210);
          v99 = v98;
          v88(v56, v55);
          swift_endAccess();

          v100 = [v84 groupUUID];
          v101 = v227;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v102 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
          swift_beginAccess();
          v103 = sub_100025C58(v101, *&v89[v102]);
          if (v103)
          {
            v104 = v103;
            swift_endAccess();
            v88(v101, v55);
            sub_100446668(v83);
          }

          else
          {
            swift_endAccess();
            v88(v101, v55);
          }

          v206 = [v84 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          swift_beginAccess();
          v207 = sub_1003838E8(v56);
          swift_endAccess();
          v88(v56, v55);
          if (v207)
          {
            nw_activity_complete_with_reason();
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v105 = [v83 provider];
          v106 = [v105 isFaceTimeProvider];

          if (v106)
          {
            v108 = sub_10003D4D0(v107);
            v109 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("This is a FT1:1 call", 20, 2, &_mh_execute_header, v108, v109, _swiftEmptyArrayStorage);

            v110 = [v83 uniqueProxyIdentifierUUID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            swift_beginAccess();
            v111 = sub_1003838E8(v56);
            swift_endAccess();
            (v57[1])(v56, v55);
            if (v111)
            {
              nw_activity_complete_with_reason();
              swift_unknownObjectRelease();
            }
          }
        }

LABEL_55:
        v208 = v251;

        return;
      }

      goto LABEL_58;
    }

LABEL_14:
    v251 = 0;
    v66 = [objc_opt_self() sharedInstance];
    v67 = [v66 queue];

    v68 = swift_allocObject();
    *(v68 + 16) = &v251;
    *(v68 + 24) = v53;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1002C7B58;
    *(v69 + 24) = v68;
    v249 = sub_1002C7C44;
    v250 = v69;
    aBlock = _NSConcreteStackBlock;
    v246 = 1107296256;
    v247 = sub_10002007C;
    v248 = &unk_100624998;
    v70 = _Block_copy(&aBlock);
    v71 = v53;

    dispatch_sync(v67, v70);

    _Block_release(v70);
    LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

    v72 = v239;
    v73 = v241;
    v74 = v232;
    if ((v67 & 1) == 0)
    {
      if (!v251)
      {

        return;
      }

      v75 = v251;
      v76 = [v71 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = sub_1002BE79C(v75, v73);
      v74[1](v73, v72);
      goto LABEL_55;
    }

    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  if ((v225 - 3) < 2)
  {
    goto LABEL_14;
  }

  v55 = v239;
  v56 = v241;
  v57 = v232;
  if (v225 == 1)
  {
    goto LABEL_17;
  }

  if (v225 != 6)
  {
    return;
  }

  v58 = v38;
  v54 = 1;
LABEL_11:
  v225 = v54;
  v59 = [v53 callGroupUUID];
  if (v59)
  {
    v60 = v59;
    v61 = v228;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = v229;
    (v57[4])(v229, v61, v55);
    v63 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
    swift_beginAccess();
    v64 = sub_100025C58(v62, *&v58[v63]);
    if (v64)
    {
      v65 = v64;
      swift_endAccess();
      sub_100446668(v53);
    }

    else
    {
      swift_endAccess();
    }

    (v57[1])(v62, v55);
  }

  v229 = sub_10003D53C(v53);
  v227 = *&v58[OBJC_IVAR___CSDRTCReporter_queue];
  v112 = v233;
  static DispatchTime.now()();
  v113 = v53;
  v114 = v234;
  *v234 = 5;
  v115 = v242;
  v116 = *(v242 + 104);
  v217 = enum case for DispatchTimeInterval.seconds(_:);
  v117 = v235;
  v218 = v242 + 104;
  v216 = v116;
  v116(v114);
  v118 = v236;
  + infix(_:_:)();
  v119 = *(v115 + 8);
  v242 = v115 + 8;
  v215 = v119;
  v119(v114, v117);
  v120 = v243 + 8;
  v121 = *(v243 + 8);
  v121(v112, v244);
  v122 = swift_allocObject();
  *(v122 + 16) = v58;
  *(v122 + 24) = v113;
  v249 = sub_1002C7B74;
  v250 = v122;
  aBlock = _NSConcreteStackBlock;
  v246 = 1107296256;
  v247 = sub_100004CEC;
  v248 = &unk_1006249E8;
  v123 = _Block_copy(&aBlock);
  v219 = v58;
  v228 = v113;
  v124 = v237;
  static DispatchQoS.unspecified.getter();
  v251 = _swiftEmptyArrayStorage;
  v125 = sub_10000ED20(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v126 = sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  v127 = sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
  v128 = v221;
  v213 = v126;
  v212 = v127;
  v129 = v222;
  v214 = v125;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v123);
  v130 = *(v223 + 8);
  v223 += 8;
  v211 = v130;
  v130(v128, v129);
  v131 = v240 + 8;
  v132 = v124;
  v133 = v228;
  v134 = v219;
  v210 = *(v240 + 8);
  v210(v132, v238);
  v135 = v239;
  v243 = v120;
  v224 = v121;
  v121(v118, v244);

  v136 = [v133 uniqueProxyIdentifierUUID];
  v137 = v241;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v138 = v230;
  sub_10000AF74(v230, 1, 1, v135);
  swift_beginAccess();
  sub_10003D99C(v138, v137);
  swift_endAccess();
  v139 = v133;
  v140 = v133;
  v141 = v135;
  v142 = v232;
  v143 = [v140 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v144 = v231;
  sub_10003DC5C(v137, v145, v146, v147, v148, v149, v150, v151, v209, v210);
  swift_endAccess();
  v152 = v137;
  v153 = v142[1];
  v153(v152, v135);
  if (sub_100015468(v144, 1, v135) != 1)
  {
    v230 = v153;
    v240 = v131;
    v157 = v220;
    (v142[4])(v220, v144, v135);
    swift_beginAccess();
    sub_100383A30(v157, v158, v159, v160, v161, v162, v163, v164, v209, v210);
    v232 = v165;
    swift_endAccess();
    LODWORD(v231) = v134[OBJC_IVAR___CSDRTCReporter_userScoreEnabled];
    if (v231 == 1)
    {
      v166 = [v139 callUUID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v167 = objc_allocWithZone(type metadata accessor for RTCCSDCallInfo(0));
      v168 = v232;
      v169 = v232;
      v170 = v139;
      sub_100040584(v170, v168);
      v171 = OBJC_IVAR___CSDRTCReporter_callInfosPendingScoreForCallUUIDs;
      swift_beginAccess();
      v172 = v229;
      swift_isUniquelyReferenced_nonNull_native();
      v251 = *&v134[v171];
      sub_100378A8C();
      *&v134[v171] = v251;

      swift_endAccess();
      v173 = v233;
      static DispatchTime.now()();
      v174 = v234;
      *v234 = 120;
      v175 = v235;
      v216(v174, v217, v235);
      v176 = v134;
      v177 = v236;
      + infix(_:_:)();
      v215(v174, v175);
      v178 = v224;
      v224(v173, v244);
      v179 = swift_allocObject();
      v179[2] = v176;
      v179[3] = v170;
      v180 = v226;
      v179[4] = v226;
      v249 = sub_1002C7B7C;
      v250 = v179;
      aBlock = _NSConcreteStackBlock;
      v246 = 1107296256;
      v247 = sub_100004CEC;
      v248 = &unk_100624A38;
      v181 = _Block_copy(&aBlock);
      v182 = v176;
      v183 = v170;
      v184 = v180;
      v185 = v237;
      static DispatchQoS.unspecified.getter();
      v251 = _swiftEmptyArrayStorage;
      v186 = v221;
      v187 = v222;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v181);
      v211(v186, v187);
      v210(v185, v238);
      v139 = v228;
      v141 = v239;
      v178(v177, v244);
    }

    swift_beginAccess();
    v188 = v220;
    v189 = sub_1003838E8(v220);
    swift_endAccess();
    if (v189)
    {
      [v139 disconnectedReason];
      nw_activity_complete_with_reason_and_underlying_error();
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v190 = sub_1003838E8(v188);
    swift_endAccess();
    if (v190)
    {
      [v139 disconnectedReason];
      nw_activity_complete_with_reason_and_underlying_error();
      swift_unknownObjectRelease();
    }

    v191 = [v139 uniqueProxyIdentifierUUID];
    v192 = v241;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v193 = sub_1003838E8(v192);
    swift_endAccess();
    v194 = v230;
    v230(v192, v141);
    if (v193)
    {
      [v139 disconnectedReason];
      nw_activity_complete_with_reason_and_underlying_error();
      swift_unknownObjectRelease();
    }

    v194(v188, v141);
    v156 = v229;
    v195 = v232;
    v196 = v231;
    goto LABEL_46;
  }

  sub_1000099A4(v144, &unk_1006A3DD0, &unk_10057C9D0);
  v154 = [v139 provider];
  v155 = [v154 isTelephonyProvider];

  if (v155)
  {
    v156 = sub_10003DE80(v139);
  }

  else
  {
    v197 = [v139 provider];
    v198 = [v197 isFaceTimeProvider];

    v156 = v229;
    if (v198)
    {
      v199 = [v139 uniqueProxyIdentifierUUID];
      v200 = v241;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v201 = sub_1003838E8(v200);
      swift_endAccess();
      v153(v200, v135);
      if (v201)
      {
        [v139 disconnectedReason];
        nw_activity_complete_with_reason_and_underlying_error();
        swift_unknownObjectRelease();
      }

      v202 = [v139 uniqueProxyIdentifierUUID];
      v203 = v241;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v204 = sub_1003838E8(v203);
      swift_endAccess();
      v153(v203, v135);
      if (v204)
      {
        [v139 disconnectedReason];
        nw_activity_complete_with_reason_and_underlying_error();
        swift_unknownObjectRelease();
      }

      v196 = 0;
      v195 = 0;
      v156 = v229;
      goto LABEL_46;
    }
  }

  v196 = 0;
  v195 = 0;
LABEL_46:
  if (v156)
  {
    if (v196)
    {
    }

    else
    {
      v205 = sub_10003FCD0(v139, v195);
      sub_100055190(v156, v205);
    }
  }
}

uint64_t sub_10003912C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100039178()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000391D0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR___CSDRTCReporter_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 queue];

    __chkstk_darwin(v12);
    *&v13[-16] = a1;
    OS_dispatch_queue.sync<A>(execute:)();

    return v13[15];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100039390(char *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (Strong, (v13 = swift_unknownObjectWeakLoadStrong()) != 0) && (v14 = v13, sub_100006AF0(0, &qword_1006A34B0, off_1006165E0), v15 = a2, v16 = static NSObject.== infix(_:_:)(), v14, v15, (v16 & 1) != 0))
  {
    if ([a2 status] == 1 && objc_msgSend(a2, "isScreening") && objc_msgSend(a2, "isConnected") && objc_msgSend(a2, "isEndpointOnCurrentDevice"))
    {
      v17 = [a2 smartHoldingSession];
      if (!v17)
      {
        if (qword_1006A0B28 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_10000AF9C(v39, qword_1006BA5F8);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v58[0] = v43;
          *v42 = 136315138;
          v57 = a3;
          type metadata accessor for Triggers(0);
          v44 = String.init<A>(reflecting:)();
          v46 = sub_10002741C(v44, v45, v58);

          *(v42 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v40, v41, "creating answering machine for new call, triggers: %s", v42, 0xCu);
          sub_100009B7C(v43);
        }

        v47 = type metadata accessor for URL();
        sub_10000AF74(v10, 1, 1, v47);
        sub_1003087A4();
        sub_100009A04(v10, &unk_1006A52C0, &unk_10057D930);
        if (qword_1006A0BC8 != -1)
        {
          swift_once();
        }

        v48 = qword_1006BA780;
        *(qword_1006BA780 + 24) = &off_100626408;
        swift_unknownObjectWeakAssign();
        v49 = *(v48 + 48);
        if (v49)
        {
          sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
          v50 = a2;
          v51 = v49;
          v52 = static NSObject.== infix(_:_:)();

          if (v52)
          {
            return;
          }

          v53 = *(v48 + 48);
        }

        else
        {
          v53 = 0;
        }

        *(v48 + 48) = a2;

        v54 = a2;
        sub_1003D33E0();
        return;
      }
    }

    sub_1000399FC();
    v18 = OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine;
    v19 = *&a1[OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine];
    if (v19)
    {
      v20 = v19;
      sub_10042F01C();

      v19 = *&a1[v18];
    }

    *&a1[v18] = 0;

    if (qword_1006A0BC8 != -1)
    {
      swift_once();
    }

    sub_10003A864();
    if ([a2 status] == 6)
    {
      v21 = &a1[OBJC_IVAR___CSDAnsweringMachineController_greetingsDataSource];
      swift_beginAccess();
      v22 = *(*sub_100009B14(v21, *(v21 + 3)) + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_speechAssetManager);
      sub_100009B14(a4, a4[3]);
      v23 = v22;
      v24 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
      v26 = v25;
      v28 = v27;
      v58[0] = Locale.identifier.getter();
      v58[1] = v29;
      v58[2] = v24;
      v58[3] = v26;
      v58[4] = v28;
      sub_100051D0C();
    }
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000AF9C(v30, qword_1006BA5F8);
    v31 = a1;
    v56 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58[0] = v34;
      *v33 = 136315138;
      v57 = *&a1[v11];
      type metadata accessor for AnsweringMachineState(0);

      v35 = String.init<A>(reflecting:)();
      v37 = sub_10002741C(v35, v36, v58);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v56, v32, "Ignoring second call because we are already screening: %s", v33, 0xCu);
      sub_100009B7C(v34);
    }

    else
    {
      v38 = v56;
    }
  }
}

uint64_t sub_1000399FC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v4 = (v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchTime();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = v43 - v9;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_4;
  }

  v43[1] = v16;
  v16 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v18 = *(v1 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  swift_beginAccess();
  sub_10003A220(v18 + 16, &aBlock, &qword_1006A52D0, &unk_100580040);
  if (!v51)
  {
    sub_100009A04(&aBlock, &qword_1006A52D0, &unk_100580040);
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000AF9C(v26, qword_1006BA5F8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "not destroying answering machine because we don't have one active", v29, 2u);
    }

    type metadata accessor for AnsweringMachineState(0);
    v30 = swift_allocObject();
    sub_10003A308();
    *&v16[v1] = v30;
  }

  sub_10002F0C8(&aBlock, v54);
  if (qword_1006A0B28 != -1)
  {
    goto LABEL_21;
  }

LABEL_4:
  v19 = type metadata accessor for Logger();
  sub_10000AF9C(v19, qword_1006BA5F8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "stopping answering machine", v22, 2u);
  }

  if (*(*&v16[v1] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isStopping))
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "we are already stopping, not calling stop again", v25, 2u);
    }

    return sub_100009B7C(v54);
  }

  sub_10003A72C();

  *(*&v16[v1] + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isStopping) = 1;
  v32 = v55;
  v33 = v56;
  sub_100009B14(v54, v55);
  (*(v33 + 32))(v32, v33);
  v34 = *&v16[v1];
  *&aBlock = 0;
  sub_10031699C(&qword_1006A52B8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  dispatch thunk of OptionSet.init(rawValue:)();
  v35 = swift_allocObject();
  *(v35 + 16) = v1;
  v52 = sub_1003169EC;
  v53 = v35;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v50 = sub_100004CEC;
  v51 = &unk_100626518;
  _Block_copy(&aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v36 = v1;
  v37 = DispatchWorkItem.init(flags:block:)();

  *(v34 + 72) = v37;

  static DispatchTime.now()();
  if (qword_1006A0A08 != -1)
  {
    swift_once();
  }

  *v4 = qword_1006A4C30;
  v39 = v45;
  v38 = v46;
  (*(v45 + 104))(v4, enum case for DispatchTimeInterval.seconds(_:), v46);
  v40 = v44;
  + infix(_:_:)();
  (*(v39 + 8))(v4, v38);
  v41 = v48;
  v42 = *(v47 + 8);
  result = v42(v8, v48);
  if (*(*&v16[v1] + 72))
  {

    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v42(v40, v41);
    return sub_100009B7C(v54);
  }

  __break(1u);
  return result;
}

uint64_t sub_10003A18C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10003A1C8()
{
  sub_100007710();
  sub_10026D814(v1, v2);
  sub_100008070();
  v3 = sub_100006B30();
  v4(v3);
  return v0;
}

uint64_t sub_10003A220(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100007674(a1, a2, a3, a4);
  sub_100008070();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_10003A270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100007674(a1, a2, a3, a4);
  sub_100008070();
  v5 = sub_100006B30();
  v6(v5);
  return v4;
}

uint64_t type metadata accessor for AnsweringMachineState(uint64_t a1)
{
  result = qword_1006A4E78;
  if (!qword_1006A4E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003A308()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100008070();
  __chkstk_darwin(v1);
  sub_100007FDC();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  type metadata accessor for Date();
  sub_100007928();
  sub_10000AF74(v2, v3, v4, v5);
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isProcessingGibberish) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasReceivedAudio) = 0;
  v6 = (v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeHandle);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_calleeLabelID);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_lastCaptions) = 0;
  v8 = (v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_customMessage);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_hasFinishedAnnouncement) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoAudioURLs) = _swiftEmptyArrayStorage;
  v9 = v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoDuration;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoUtterances) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isStopping) = 0;
  v10 = OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailTimeoutBlock;
  sub_10000841C();
  sub_10031699C(v11, v12, &protocol conformance descriptor for DispatchWorkItemFlags);
  dispatch thunk of OptionSet.init(rawValue:)();
  aBlock[4] = sub_100308310;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100626428;
  _Block_copy(aBlock);
  sub_10000691C();
  v13 = type metadata accessor for DispatchWorkItem();
  sub_1000076B4(v13);
  *(v0 + v10) = DispatchWorkItem.init(flags:block:)();
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_voicemailAudioURLs) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t sub_10003A558()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

BOOL sub_10003A574()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10003A5FC(uint64_t a1)
{
  sub_10003A72C();
  sub_100009A04(v1 + 16, &qword_1006A52D0, &unk_100580040);

  swift_unknownObjectWeakDestroy();

  sub_100009A04(v1 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_startRecordingTime, &qword_1006A3C70, &unk_10057EA80);

  return v1;
}

uint64_t sub_10003A72C()
{
  if (*(v0 + 72))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  dispatch thunk of DispatchWorkItem.cancel()();

  if (*(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoTimeoutBlock))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  if (*(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_callerInfoPauseTimeoutBlock))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  if (*(v0 + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_ringingTimeoutBlock))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  return result;
}

uint64_t sub_10003A80C(uint64_t a1)
{
  sub_10003A5FC(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

void sub_10003A864()
{
  sub_10003A920(1);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B7B0(_swiftEmptyArrayStorage);
    v3 = v2;
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  swift_beginAccess();
  *(v0 + 40) = v3;

  v4 = *(v0 + 48);
  *(v0 + 48) = 0;

  [*(v0 + 56) invalidate];
  v5 = *(v0 + 56);
  *(v0 + 56) = 0;
}

void sub_10003A920(char a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = [v2 utterances];
    if (v3)
    {
      v4 = v3;
      sub_100006AF0(0, &qword_1006A7A78, RTTUtterance_ptr);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }
}

void sub_10003AC84(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___CSDAudioStateHandler_callCenterObserver);
  if (v2)
  {
    v3 = [objc_msgSend(v2 "callContainer")];
    swift_unknownObjectRelease();
    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        if ([v4 status] != 6)
        {
          v14 = OBJC_IVAR___CSDAudioStateHandler_currentCall;
          v15 = *(a1 + OBJC_IVAR___CSDAudioStateHandler_currentCall);
          p_vtable = _TtC13callservicesd37AVAudioClientMuteStateHandlerProvider.vtable;
          if (v15)
          {
            sub_100024570();
            v13 = v3;
            v17 = v15;
            v18 = static NSObject.== infix(_:_:)();

            if (v18)
            {
              v19 = [v5 audioInterruptionProviderType];
              v20 = OBJC_IVAR___CSDAudioStateHandler_audioStateObserver;
              swift_beginAccess();
              sub_10003B3F4(a1 + v20, &v59);
              v21 = *(&v60 + 1);
              if (*(&v60 + 1))
              {
                v22 = v61;
                v23 = sub_100009B14(&v59, *(&v60 + 1));
                v55 = v19;
                v24 = *(v21 - 8);
                __chkstk_darwin(v23);
                v26 = v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
                (*(v24 + 16))(v26);
                sub_10003B464(&v59);
                v27 = (*(v22 + 32))(v21, v22);
                (*(v24 + 8))(v26, v21);
                v28 = v55 == v27;
                p_vtable = (_TtC13callservicesd37AVAudioClientMuteStateHandlerProvider + 24);
                if (v28)
                {

LABEL_14:
                  return;
                }
              }

              else
              {
                sub_10003B464(&v59);
              }
            }
          }

          else
          {
            v29 = v3;
          }

          if (qword_1006A0B30 != -1)
          {
            swift_once();
          }

          v30 = type metadata accessor for Logger();
          v31 = sub_10000AF9C(v30, qword_1006BA610);
          v13 = v3;
          v55 = v31;
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            *&v59 = v35;
            *v34 = 136315138;
            v56[0] = v5;
            sub_100024570();
            v36 = v13;
            v37 = String.init<A>(reflecting:)();
            v39 = sub_10002741C(v37, v38, &v59);

            *(v34 + 4) = v39;
            _os_log_impl(&_mh_execute_header, v32, v33, "Frontmost call changed or underlying audio session changed, configuring audio session observer for call: %s", v34, 0xCu);
            sub_100009B7C(v35);
            p_vtable = _TtC13callservicesd37AVAudioClientMuteStateHandlerProvider.vtable;
          }

          v40 = p_vtable[57];
          swift_beginAccess();
          sub_10003B3F4(v40 + a1, &v59);
          if (*(&v60 + 1))
          {
            sub_100009AB0(&v59, v56);
            sub_10003B464(&v59);
            v41 = v57;
            v42 = v58;
            sub_100009B14(v56, v57);
            (*(v42 + 48))(v41, v42);
            sub_100009B7C(v56);
          }

          else
          {
            sub_10003B464(&v59);
          }

          v43 = *(a1 + v14);
          *(a1 + v14) = v5;

          sub_100009B14((a1 + OBJC_IVAR___CSDAudioStateHandler_factory), *(a1 + OBJC_IVAR___CSDAudioStateHandler_factory + 24));
          sub_10003B4CC(v5, &v59);
          swift_beginAccess();
          sub_10003BA6C(&v59, v40 + a1);
          swift_endAccess();
          v45 = sub_10003BADC(&v59);
          v46 = *(v44 + 24);
          if (v46)
          {
            v47 = *(v44 + 32);
            sub_10001BDB8(v44, *(v44 + 24));
            v48 = *(v47 + 16);
            v49 = swift_unknownObjectRetain();
            v48(v49, &off_10062CF20, v46, v47);
          }

          (v45)(&v59, 0);
          sub_10003B3F4(v40 + a1, &v59);
          if (*(&v60 + 1))
          {
            sub_100009AB0(&v59, v56);
            sub_10003B464(&v59);
            v50 = v57;
            v51 = v58;
            sub_100009B14(v56, v57);
            (*(v51 + 40))(v50, v51);
            sub_100009B7C(v56);
          }

          else
          {
            sub_10003B464(&v59);
          }

          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v52, v53, "Began observing audioStateObserver!", v54, 2u);
          }

          goto LABEL_14;
        }
      }
    }

    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AF9C(v6, qword_1006BA610);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "No active calls on the device, removing observers", v9, 2u);
    }

    v10 = OBJC_IVAR___CSDAudioStateHandler_audioStateObserver;
    swift_beginAccess();
    sub_10003B3F4(a1 + v10, &v59);
    if (*(&v60 + 1))
    {
      sub_100009AB0(&v59, v56);
      sub_10003B464(&v59);
      v11 = v57;
      v12 = v58;
      sub_100009B14(v56, v57);
      (*(v12 + 48))(v11, v12);
      sub_100009B7C(v56);
    }

    else
    {
      sub_10003B464(&v59);
    }

    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    swift_beginAccess();
    sub_10003BA6C(&v59, a1 + v10);
    swift_endAccess();
    v13 = *(a1 + OBJC_IVAR___CSDAudioStateHandler_currentCall);
    *(a1 + OBJC_IVAR___CSDAudioStateHandler_currentCall) = 0;
    goto LABEL_14;
  }

  __break(1u);
}