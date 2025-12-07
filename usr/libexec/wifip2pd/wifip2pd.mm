uint64_t sub_100001F20(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, const char *a7, uint64_t (*a8)(uint64_t, void, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a1;
  sub_100001FCC(a3, a6, v14, a7, a8);
}

uint64_t sub_100001FCC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t (*a5)(uint64_t, void, uint64_t, uint64_t))
{
  v35 = a5;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v17)
  {
    v34 = a4;
    v19 = v5;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = a3;
      v33 = a2;
      v25 = v24;
      v36 = v24;
      *v22 = 138412546;
      v26 = *&v19[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
      *(v22 + 4) = v26;
      *v23 = v26;
      *(v22 + 12) = 2080;
      v27 = v26;
      v28 = WiFiP2PSPITransactionType.description.getter(a1);
      v30 = sub_100002320(v28, v29, &v36);

      *(v22 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, v34, v22, 0x16u);
      sub_10000BB28(v23);

      sub_100002A00(v25);
      a3 = v32;
      a2 = v33;
    }

    return v35(a1, *&v19[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session], a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *OS_dispatch_queue.p2p.unsafeMutableAddressor()
{
  if (qword_10058AA38 != -1)
  {
    swift_once();
  }

  return &static OS_dispatch_queue.p2p;
}

unint64_t sub_100002320(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000028FC(v11, 0, 0, 1, a1, a2);
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
    sub_100002B30(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100002A00(v11);
  return v7;
}

unint64_t WiFiP2PSPITransactionType.description.getter(uint64_t a1)
{
  result = 0x6B63696B65646953;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 11:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x726F462053544143;
      break;
    case 3:
      result = 0x6361422053544143;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x2079616C50726143;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7265666E6F435641;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x4620657669746341;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0xD000000000000027;
      break;
    case 17:
      result = 0xD000000000000022;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x6C5020616964654DLL;
      break;
    default:
      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      v4._countAndFlagsBits = 41;
      v4._object = 0xE100000000000000;
      String.append(_:)(v4);
      result = 0x286E776F6E6B6E55;
      break;
  }

  return result;
}

void *sub_100002728(uint64_t a1, uint64_t a2)
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

  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_100002798(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000027E4(a1, a2);
  sub_100002A4C(&off_100550FD0);
  return v3;
}

void *sub_1000027E4(uint64_t a1, unint64_t a2)
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
    result = sub_100002728(v5, 0);
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

        v9 = result + 4;
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

        v9 = v7 + 4;
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

unint64_t sub_1000028FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002798(a5, a6);
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

uint64_t sub_100002A00(void *a1)
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

uint64_t sub_100002A4C(uint64_t result)
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

    result = sub_10005DD54(result, v7, 1, v3);
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

uint64_t sub_100002B30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t sub_100002BFC(unsigned int a1, _BYTE *a2, unsigned int a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t), uint64_t a5, void *a6, uint64_t a7)
{
  v13 = *(type metadata accessor for Data.Deallocator() - 8);
  v15 = __chkstk_darwin();
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3 || !a2)
  {
    return (a4)(a1, 0, 0xC000000000000000, v15);
  }

  if (a6)
  {
    v18 = a3;
    if (a7 - a6 >= a3)
    {
      v19 = v14;
      memcpy(a6, a2, a3);
      (*(v13 + 104))(v17, enum case for Data.Deallocator.none(_:), v19);
      v20 = sub_100002DE8(a6, a3, v17);
      v22 = v21;
      a4(a1, v20, v21);
      return sub_1000124C8(v20, v22);
    }
  }

  else
  {
    v18 = a3;
  }

  v24 = a1;
  v25 = sub_1002AAFAC(a2, v18);
  v27 = v26;
  a4(v24, v25, v26);

  return sub_1000124C8(v25, v27);
}

unint64_t sub_100002DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v10 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == enum case for Data.Deallocator.none(_:))
    {
      v11 = __DataStorage._capacity.modify();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_100003020(v10, a2);
  }

  else
  {
    v13 = Data.Deallocator._deallocator.getter();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

unint64_t sub_100003020(unint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = __DataStorage._length.getter();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_10000AD84(v3, v7);

  return v8;
}

uint64_t sub_100003124(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = *(type metadata accessor for DriverEvent(0) - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032A0();
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = &v8[(*(v5 + 80) + 32) & ~*(v5 + 80)];
    v11 = *(v5 + 72);
    do
    {
      sub_10001251C(v10, v7, type metadata accessor for DriverEvent);
      a4(v7);
      sub_100012468(v7, type metadata accessor for DriverEvent);
      v10 += v11;
      --v9;
    }

    while (v9);
  }
}

char *sub_1000032A0()
{
  __chkstk_darwin();
  v567 = v1;
  v568 = v0;
  v3 = v2;
  v552 = type metadata accessor for DNSRecords.SRV(0);
  __chkstk_darwin();
  v550 = &v530 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v551 = &v530 - v5;
  sub_10005DC58(&qword_10058C7E0, &unk_100486B30);
  __chkstk_darwin();
  v556 = &v530 - v6;
  v7 = type metadata accessor for AWDLActionFrame.Header(0);
  v554 = *(v7 - 8);
  v555 = v7;
  __chkstk_darwin();
  v553 = &v530 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058C7E8, &unk_100481FF0);
  __chkstk_darwin();
  v560 = &v530 - v9;
  v10 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  v558 = *(v10 - 8);
  v559 = v10;
  __chkstk_darwin();
  v557 = &v530 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v566.i64[0] = type metadata accessor for Logger();
  *&v565 = *(v566.i64[0] - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  *&v562 = &v530 - v12;
  __chkstk_darwin();
  *&v561 = &v530 - v13;
  __chkstk_darwin();
  v15 = &v530 - v14;
  __chkstk_darwin();
  v17 = &v530 - v16;
  __chkstk_darwin();
  v19 = &v530 - v18;
  __chkstk_darwin();
  v21 = &v530 - v20;
  __chkstk_darwin();
  v23 = &v530 - v22;
  __chkstk_darwin();
  v25 = &v530 - v24;
  __chkstk_darwin();
  __chkstk_darwin();
  v27 = &v530 - v26;
  __chkstk_darwin();
  *&v564 = &v530 - v28;
  __chkstk_darwin();
  v40 = &v530 - v39;
  result = _swiftEmptyArrayStorage;
  *&v563 = v3;
  switch(v3)
  {
    case 1:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v42 = *(type metadata accessor for DriverEvent(0) - 8);
      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      v45 = v44 + v43;
      *v45 = 0u;
      *(v45 + 16) = 0u;
      *(v45 + 25) = 0u;
      goto LABEL_110;
    case 2:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v216 = *(type metadata accessor for DriverEvent(0) - 8);
      v217 = (*(v216 + 80) + 32) & ~*(v216 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      v45 = v44 + v217;
      v218 = 2;
      goto LABEL_109;
    case 3:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v264 = *(type metadata accessor for DriverEvent(0) - 8);
      v265 = (*(v264 + 80) + 32) & ~*(v264 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      v45 = v44 + v265;
      v218 = 3;
      goto LABEL_109;
    case 9:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000ADFA4(v46, v47, v826);
      if (sub_1000B2340(v826) == 1)
      {
        goto LABEL_213;
      }

      memcpy(v825, v826, 0x1D4uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v258 = *(type metadata accessor for DriverEvent(0) - 8);
      v259 = (*(v258 + 80) + 32) & ~*(v258 + 80);
      v27 = swift_allocObject();
      *(v27 + 1) = xmmword_100480F40;
      v260 = &v27[v259];
      *v260 = sub_100113168();
      *(v260 + 1) = v262;
      *(v260 + 2) = v263;
      *(v260 + 3) = v261;
      v260[41] = 4;
      goto LABEL_131;
    case 11:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v305 = *(type metadata accessor for DriverEvent(0) - 8);
      v306 = (*(v305 + 80) + 32) & ~*(v305 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      v45 = v44 + v306;
      v218 = 1;
LABEL_109:
      *v45 = v218;
      *(v45 + 24) = 0u;
      *(v45 + 8) = 0u;
      *(v45 + 40) = 0;
LABEL_110:
      *(v45 + 41) = 10;
      swift_storeEnumTagMultiPayload();
      return v44;
    case 46:
    case 65:
    case 195:
    case 235:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      type metadata accessor for DriverEvent(0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_125;
    case 47:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_10004B588(v46, v47, v826);
      if (BYTE4(v826[4]))
      {
        goto LABEL_213;
      }

      if (DWORD2(v826[0]) != 1)
      {
        goto LABEL_217;
      }

      v167.i32[0] = v826[0];
      v566 = vmovl_u8(v167);
      v168 = BYTE4(v826[0]);
      v169 = BYTE5(v826[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v170 = *(type metadata accessor for DriverEvent(0) - 8);
      v171 = (*(v170 + 80) + 32) & ~*(v170 + 80);
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_100480F40;
      v173 = v172 + v171;
      *v173 = vuzp1_s8(*v566.i8, *v566.i8).u32[0];
      *(v173 + 4) = v168;
      *(v173 + 5) = v169;
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_179;
    case 48:
      v47 = v567;
      v174 = v567 >> 62;
      if ((v567 >> 62) > 1)
      {
        v46 = v568;
        if (v174 != 2)
        {
          sub_10000AB0C(v568, v567);
LABEL_213:
          v49 = v564;
          goto LABEL_214;
        }

        v452 = *(v568 + 16);
        v175 = v452 + 72;
        v49 = v564;
        if (__OFADD__(v452, 72))
        {
          goto LABEL_251;
        }

        v453 = *(v568 + 24);
      }

      else
      {
        v46 = v568;
        if (!v174)
        {
          v49 = v564;
          if ((v567 & 0xFF000000000000) >= 0x48000000000001)
          {
            v175 = 72;
            goto LABEL_228;
          }

LABEL_211:
          sub_10000AB0C(v46, v567);
          goto LABEL_214;
        }

        v175 = v568 + 72;
        v453 = v568 >> 32;
        v49 = v564;
      }

      if (v175 >= v453)
      {
        goto LABEL_211;
      }

      if (v174 == 2)
      {
        v470 = *(v46 + 16);
      }

      else
      {
        v470 = v46;
      }

      if (v175 >= v470)
      {
LABEL_228:
        sub_10000AB0C(v46, v567);
        v486 = Data._Representation.subscript.getter();
        v488 = v487;
        sub_100030E20(v486, v487, v825);
        sub_1000124C8(v486, v488);
        v826[2] = v825[2];
        v826[3] = v825[3];
        *&v826[4] = v825[4].i64[0];
        v826[0] = v825[0];
        v826[1] = v825[1];
        v489 = v556;
        sub_100112D70(v556);
        if ((*(v554 + 48))(v489, 1, v555) == 1)
        {
          sub_100016290(v489, &qword_10058C7E0, &unk_100486B30);
LABEL_214:
          Logger.init(subsystem:category:)();
          sub_10000AB0C(v46, v47);
          v471 = Logger.logObject.getter();
          v472 = static os_log_type_t.error.getter();
          sub_1000124C8(v46, v47);
          if (os_log_type_enabled(v471, v472))
          {
            v473 = swift_slowAlloc();
            v474 = swift_slowAlloc();
            *&v827[0] = v474;
            *v473 = 134218242;
            *(v473 + 4) = v563;
            *(v473 + 12) = 2080;
            v475 = Data.hexString.getter(v46, v47);
            v477 = sub_100002320(v475, v476, v827);

            *(v473 + 14) = v477;
            _os_log_impl(&_mh_execute_header, v471, v472, "Failed to parse event[%ld]: %s", v473, 0x16u);
            sub_100002A00(v474);
          }

          (*(v565 + 8))(v49, v566.i64[0]);
LABEL_217:
          sub_1000124C8(v46, v47);
          return _swiftEmptyArrayStorage;
        }

        sub_100016DFC(v489, v553, type metadata accessor for AWDLActionFrame.Header);
        if (v174)
        {
          if (v174 == 2)
          {
            v494 = *(v46 + 16);
            v495 = __OFADD__(v494, v175);
            v175 += v494;
            if (!v495)
            {
              v496 = *(v46 + 24);
LABEL_243:
              if (v175 < v496)
              {
                v499 = sub_100033A48(v175, v46, v47);
                v501 = v500;
                v502 = sub_100033AA8(_swiftEmptyArrayStorage);
                v503 = type metadata accessor for BinaryDecoder();
                swift_allocObject();
                v504 = BinaryDecoder.init(data:userInfo:)(v499, v501, v502);
                v825[1].i64[1] = v503;
                v825[2].i64[0] = sub_10001F8F4(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
                v825[0].i64[0] = v504;
                sub_10000AB0C(v499, v501);

                LOBYTE(v502) = sub_10003132C(v825);
                v506 = v505;
                v508 = v507;
                v510 = v509;

                sub_1000124C8(v499, v501);
                sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
                v511 = *(type metadata accessor for DriverEvent(0) - 8);
                v512 = (*(v511 + 80) + 32) & ~*(v511 + 80);
                v513 = swift_allocObject();
                *(v513 + 16) = xmmword_100480F40;
                v514 = v513 + v512;
                v515 = *(sub_10005DC58(&qword_10058C7C8, &unk_100481FE0) + 48);
                *v514 = v502;
                *(v514 + 8) = v506;
                *(v514 + 16) = v508;
                *(v514 + 24) = v510;
                v516 = v553;
                sub_10001251C(v553, v513 + v512 + v515, type metadata accessor for AWDLActionFrame.Header);
                type metadata accessor for DriverEvent.AWDL(0);
                swift_storeEnumTagMultiPayload();
                swift_storeEnumTagMultiPayload();
                sub_1000124C8(v568, v47);
                sub_100012468(v516, type metadata accessor for AWDLActionFrame.Header);
                return v513;
              }

              sub_100012468(v553, type metadata accessor for AWDLActionFrame.Header);
              goto LABEL_214;
            }

            __break(1u);
          }

          else
          {
            v495 = __OFADD__(v175, v46);
            v175 += v46;
            if (!v495)
            {
              v496 = v46 >> 32;
              goto LABEL_243;
            }
          }

          __break(1u);
LABEL_255:
          __break(1u);
          JUMPOUT(0x10000A6D8);
        }

        v496 = BYTE6(v47);
        goto LABEL_243;
      }

      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      swift_once();
LABEL_199:
      LODWORD(v455) = static Channel.nanPrimary;
      LOBYTE(v456) = byte_10059B634;
      LOBYTE(v457) = byte_10059B635;
LABEL_222:
      v826[0] = *&v830[4];
      v826[1] = *&v830[20];
      v826[2] = *&v830[36];
      BYTE8(v826[3]) = v47;
      *&v826[3] = *&v830[52];
      *&v826[4] = v565;
      DWORD2(v826[4]) = v455;
      BYTE12(v826[4]) = v456;
      BYTE13(v826[4]) = v457;
      *&v826[5] = v566.i64[0];
      *(&v826[5] + 1) = v46 | (v564 << 32);
      sub_1000B24C8(v826);
      memcpy(&v27[v174], v826, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      sub_100016290(v825, &unk_10058C820, &qword_100482060);
      v317 = v567;
      v316 = v568;
LABEL_132:
      sub_1000124C8(v316, v317);
      return v27;
    case 49:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      v243 = sub_1000ADEE8(v46, v47, sub_10003462C);
      v49 = v564;
      if ((v243 & 0x100000000) != 0)
      {
        goto LABEL_214;
      }

      v244 = v243;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v245 = *(type metadata accessor for DriverEvent(0) - 8);
      v246 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      *(v60 + v246) = v244 == 1;
      goto LABEL_155;
    case 55:
      v219 = v38;
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000ADDC4(v46, v47, v826);
      if (sub_1000B235C(v826) == 1)
      {
        goto LABEL_213;
      }

      v220 = v826[1];
      if (!DWORD2(v826[0]) || LODWORD(v826[1]) != -528345085)
      {
        Logger.init(subsystem:category:)();
        v478 = Logger.logObject.getter();
        v479 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v478, v479))
        {
          v480 = swift_slowAlloc();
          v481 = swift_slowAlloc();
          v825[0].i64[0] = v481;
          *v480 = 136315394;
          *(v480 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v825[0].i64);
          *(v480 + 12) = 1024;
          *(v480 + 14) = v220;
          _os_log_impl(&_mh_execute_header, v478, v479, "nan_event: %s APPLE80211_M_DRIVER_AVAILABLE with powerOn false %d", v480, 0x12u);
          sub_100002A00(v481);
        }

        (*(v565 + 8))(v219, v566.i64[0]);
        goto LABEL_217;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v221 = *(type metadata accessor for DriverEvent(0) - 8);
      v222 = (*(v221 + 80) + 32) & ~*(v221 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      *(v44 + v222) = 4;
LABEL_187:
      swift_storeEnumTagMultiPayload();
      v151 = v46;
      v152 = v47;
LABEL_188:
      sub_1000124C8(v151, v152);
      return v44;
    case 59:
    case 224:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      type metadata accessor for DriverEvent(0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      swift_storeEnumTagMultiPayload();
      return v44;
    case 66:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000AE074(v46, v47, v825);
      if (v825[1].i8[8])
      {
        goto LABEL_213;
      }

      v566.i64[0] = v825[1].i64[0];
      v123 = v825[0].i64[1];
      v124 = v825[0].i64[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v125 = *(type metadata accessor for DriverEvent(0) - 8);
      v126 = (*(v125 + 80) + 32) & ~*(v125 + 80);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_100480F40;
      v128 = v127 + v126;
      sub_100113290(v124, v123, v566.i64[0], v826);
      v129 = BYTE8(v826[2]);
      *v128 = LOWORD(v826[0]);
      *(v128 + 8) = *(v826 + 8);
      *(v128 + 24) = *(&v826[1] + 8);
      *(v128 + 40) = v129;
      *(v128 + 41) = 5;
      goto LABEL_58;
    case 67:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v332 = *(type metadata accessor for DriverEvent(0) - 8);
      v333 = (*(v332 + 80) + 32) & ~*(v332 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      *(v44 + v333) = 1;
      goto LABEL_124;
    case 68:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v247 = *(type metadata accessor for DriverEvent(0) - 8);
      v248 = (*(v247 + 80) + 32) & ~*(v247 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      *(v44 + v248) = 0;
LABEL_124:
      type metadata accessor for DriverEvent.AWDL(0);
LABEL_125:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      return v44;
    case 74:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000AE140(v46, v47, v826);
      if (BYTE8(v826[6]))
      {
        goto LABEL_213;
      }

      v249 = WORD2(v826[0]);
      v250 = v826[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v251 = *(type metadata accessor for DriverEvent(0) - 8);
      v252 = (*(v251 + 80) + 32) & ~*(v251 + 80);
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_100480F40;
      v253 = v172 + v252;
      v254 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v250 & 0x1FF);
      if (v254 == 55)
      {
        v255 = 1;
      }

      else
      {
        v255 = v254;
      }

      v256 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v249 & 0x1FF);
      if (v256 == 34)
      {
        v257 = 1;
      }

      else
      {
        v257 = v256;
      }

      *v253 = v255 | (v257 << 8);
      *(v253 + 8) = 0u;
      *(v253 + 24) = 0u;
      *(v253 + 40) = 1792;
      goto LABEL_180;
    case 78:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      v318 = sub_1000AE22C(v46, v47, sub_1002AB53C);
      v49 = v564;
      if (v319)
      {
        goto LABEL_214;
      }

      v320 = v318;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v321 = *(type metadata accessor for DriverEvent(0) - 8);
      v322 = (*(v321 + 80) + 32) & ~*(v321 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100480F40;
      v323 = v52 + v322;
      v324 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v320 & 0x1FF);
      if (v324 == 55)
      {
        v325 = 1;
      }

      else
      {
        v325 = v324;
      }

      v326 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(WORD2(v320) & 0x1FF);
      if (v326 == 34)
      {
        v327 = 1;
      }

      else
      {
        v327 = v326;
      }

      *v323 = v325 | (v327 << 8);
      *(v323 + 8) = 0u;
      *(v323 + 24) = 0u;
      *(v323 + 40) = 1536;
      goto LABEL_151;
    case 82:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      v291 = sub_1000AE2D8(v46, v47, sub_1002AB588);
      v49 = v564;
      if ((v292 & 0x100000000) != 0)
      {
        goto LABEL_214;
      }

      v293 = v292;
      v294 = HIDWORD(v291);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v295 = *(type metadata accessor for DriverEvent(0) - 8);
      v296 = (*(v295 + 80) + 32) & ~*(v295 + 80);
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_100480F40;
      v297 = v172 + v296;
      *v297 = sub_100032064(v294, v293) & 0xFFFFFFFFFFFFLL;
      *(v297 + 8) = 0u;
      *(v297 + 24) = 0u;
      *(v297 + 40) = 2048;
      goto LABEL_180;
    case 95:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v345 = Logger.logObject.getter();
      v346 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v345, v346))
      {
        v347 = swift_slowAlloc();
        v348 = swift_slowAlloc();
        *&v826[0] = v348;
        *v347 = 136315138;
        *(v347 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v345, v346, "nan_event: %s APPLE80211_M_NAN_DEVICE_ROLE_CHANGED", v347, 0xCu);
        sub_100002A00(v348);
      }

      (*(v565 + 8))(v27, v566.i64[0]);
      v49 = v564;
      v349 = sub_1000AD250(v46, v47);
      if ((v350 & 0x100000000) != 0)
      {
        goto LABEL_214;
      }

      v351 = v349;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v352 = *(type metadata accessor for DriverEvent(0) - 8);
      v353 = (*(v352 + 80) + 32) & ~*(v352 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_100480F40;
      LOBYTE(v826[0]) = sub_100112350(v351);
      *(&v826[0] + 1) = v354;
      sub_1000B2580(v826);
      memcpy((v89 + v353), v826, 0x16AuLL);
      goto LABEL_139;
    case 97:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v176 = Logger.logObject.getter();
      v177 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        *&v826[0] = v179;
        *v178 = 136315138;
        *(v178 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v176, v177, "nan_event: %s APPLE80211_M_NAN_CLUSTER_CHANGED", v178, 0xCu);
        sub_100002A00(v179);
      }

      (*(v565 + 8))(v40, v566.i64[0]);
      v49 = v564;
      v180 = sub_10000AE64(v46, v47, sub_100012368);
      if ((v180 & 0x1000000000000) != 0)
      {
        goto LABEL_214;
      }

      v181 = v180 >> 8;
      v182 = v180 >> 16;
      v183 = v180 >> 24;
      v184 = HIDWORD(v180);
      v566.i64[0] = v180 >> 40;
      v185 = v180;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v186 = *(type metadata accessor for DriverEvent(0) - 8);
      v187 = v47;
      v188 = (*(v186 + 80) + 32) & ~*(v186 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      LOBYTE(v826[0]) = v185;
      BYTE1(v826[0]) = v181;
      BYTE2(v826[0]) = v182;
      BYTE3(v826[0]) = v183;
      BYTE4(v826[0]) = v184;
      BYTE5(v826[0]) = v566.i8[0];
      sub_1000B258C(v826);
      memcpy((v44 + v188), v826, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v151 = v568;
      v152 = v187;
      goto LABEL_188;
    case 98:
      swift_getKeyPath();
      swift_getKeyPath();
      v341 = v567;
      v342 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000ACEA4(v342, v341, v825);

      v343 = v825[0].u32[2];
      v344 = v825[0].u32[3];
      v46 = v825[1].u32[2];
      *v830 = *(&v825[1] + 12);
      *&v830[16] = *(&v825[2] + 12);
      *&v830[32] = *(&v825[3] + 12);
      *&v830[44] = *(&v825[4] + 8);
      LOBYTE(v47) = v825[5].i8[8];
      if (v825[5].u8[8] == 252)
      {
        v47 = v567;
        v46 = v568;
        goto LABEL_213;
      }

      *&v564 = v825[1].u32[1];
      *&v565 = v825[0].i32[0];
      v566.i64[0] = v825[1].u8[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v454 = *(type metadata accessor for DriverEvent(0) - 8);
      v174 = (*(v454 + 80) + 32) & ~*(v454 + 80);
      v27 = swift_allocObject();
      *(v27 + 1) = xmmword_100480F40;
      v827[2] = v825[2];
      v827[3] = v825[3];
      v827[4] = v825[4];
      *(&v827[4] + 9) = *(&v825[4] + 9);
      v827[0] = v825[0];
      v827[1] = v825[1];
      sub_100012400(v827, v826, &qword_10058C818, &qword_100482058);
      v455 = sub_100032064(v343, v344);
      if ((v455 & 0xFF00000000) != 0x300000000)
      {
        v456 = HIDWORD(v455);
        v457 = v455 >> 40;
        goto LABEL_222;
      }

      if (qword_10058AAA8 != -1)
      {
        goto LABEL_252;
      }

      goto LABEL_199;
    case 99:
      v47 = v567;
      v46 = v568;
      v79 = v33;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v826[0] = v83;
        *v82 = 136315138;
        *(v82 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v80, v81, "nan_event: %s APPLE80211_M_NAN_FOLLOW_UP_TX_COMPLETE", v82, 0xCu);
        sub_100002A00(v83);
      }

      (*(v565 + 8))(v79, v566.i64[0]);
      sub_1000AD4B0(v46, v47, v825);
      v49 = v564;
      if (v825[1].i8[4])
      {
        goto LABEL_214;
      }

      v84 = v825[1].u32[0];
      v85 = v825[0].u64[1];
      v86 = v825[0].i16[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v87 = *(type metadata accessor for DriverEvent(0) - 8);
      v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_100480F40;
      *&v826[0] = sub_100112548(v86, v85, v84);
      BYTE8(v826[0]) = v90;
      sub_1000B24D4(v826);
      memcpy((v89 + v88), v826, 0x16AuLL);
      goto LABEL_139;
    case 100:
      v153 = v29;
      swift_getKeyPath();
      swift_getKeyPath();
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000AC8BC(v46, v47, sub_1002AB5D4, v825);

      if (!v825[2].i64[0])
      {
        goto LABEL_213;
      }

      v559 = v825[2].u64[0];
      v558 = v825[0].u64[1];
      v154 = v825[0].i64[0];
      v155 = v825[0].i64[0] >> 24;
      v156 = HIBYTE(v825[0].i64[0]);
      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v157 = swift_allocObject();
      *(v157 + 16) = xmmword_1004817D0;
      *(v157 + 56) = &type metadata for UInt8;
      *(v157 + 64) = &protocol witness table for UInt8;
      v560 = v154 >> 16;
      *&v561 = v154 >> 24;
      *(v157 + 32) = BYTE2(v154);
      *(v157 + 96) = &type metadata for UInt8;
      *(v157 + 104) = &protocol witness table for UInt8;
      *(v157 + 72) = v155;
      *(v157 + 136) = &type metadata for UInt8;
      *(v157 + 144) = &protocol witness table for UInt8;
      *&v562 = HIDWORD(v154);
      *(v157 + 112) = BYTE4(v154);
      *(v157 + 176) = &type metadata for UInt8;
      *(v157 + 184) = &protocol witness table for UInt8;
      *&v563 = v154 >> 40;
      *(v157 + 152) = BYTE5(v154);
      *(v157 + 216) = &type metadata for UInt8;
      *(v157 + 224) = &protocol witness table for UInt8;
      *&v564 = HIWORD(v154);
      *(v157 + 192) = BYTE6(v154);
      *(v157 + 256) = &type metadata for UInt8;
      *(v157 + 264) = &protocol witness table for UInt8;
      *(v157 + 232) = v156;
      v158 = String.init(format:_:)();
      v160 = v159;
      v161 = v153;
      Logger.init(subsystem:category:)();

      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v557 = HIBYTE(v154);
        *&v826[0] = v165;
        *v164 = 136315394;
        *(v164 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        *(v164 + 12) = 2080;
        v166 = sub_100002320(v158, v160, v826);

        *(v164 + 14) = v166;
        _os_log_impl(&_mh_execute_header, v162, v163, "nan_event: %s APPLE80211_M_NAN_DISCOVERY_RESULT_RECEIVED from %s", v164, 0x16u);
        swift_arrayDestroy();
        LOBYTE(v156) = v557;
      }

      else
      {
      }

      (*(v565 + 8))(v161, v566.i64[0]);
      v468 = v559;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v469 = *(type metadata accessor for DriverEvent(0) - 8);
      v378 = (*(v469 + 80) + 32) & ~*(v469 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      LOWORD(v826[0]) = v154;
      BYTE2(v826[0]) = v560;
      BYTE3(v826[0]) = v561;
      BYTE4(v826[0]) = v562;
      BYTE5(v826[0]) = v563;
      BYTE6(v826[0]) = v564;
      BYTE7(v826[0]) = v156;
      *(&v826[0] + 1) = v558;
      *&v826[1] = v468;
      sub_1000B2574(v826);
      goto LABEL_204;
    case 102:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *&v826[0] = v103;
        *v102 = 136315138;
        *(v102 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v100, v101, "nan_event: %s APPLE80211_M_NAN_PUBLISH_REPLIED_PRIVATE", v102, 0xCu);
        sub_100002A00(v103);
      }

      (*(v565 + 8))(v25, v566.i64[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000AB1E8(v46, v47, v825);

      v104 = v825[2].i64[0];
      v49 = v564;
      if (!v825[2].i64[0])
      {
        goto LABEL_214;
      }

      v105 = v825[0].i8[0];
      v106 = v825[0].i64[0] >> 8;
      v566.i64[0] = v825[0].i8[8];
      v107 = v825[0].i64[0] >> 16;
      *&v562 = v825[0].i64[0] >> 24;
      *&v563 = HIDWORD(v825[0].i64[0]);
      *&v564 = v825[0].i64[0] >> 40;
      *&v565 = HIWORD(v825[0].i64[0]);
      v108 = HIBYTE(v825[0].i64[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v109 = *(type metadata accessor for DriverEvent(0) - 8);
      v110 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      LOBYTE(v826[0]) = v105;
      BYTE1(v826[0]) = v108;
      BYTE2(v826[0]) = v106;
      BYTE3(v826[0]) = v107;
      BYTE4(v826[0]) = v562;
      BYTE5(v826[0]) = v563;
      BYTE6(v826[0]) = v564;
      BYTE7(v826[0]) = v565;
      *(&v826[0] + 1) = v566.i64[0];
      *&v826[1] = v104;
      sub_1000B2568(v826);
      memcpy((v60 + v110), v826, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v111 = v46;
      v112 = v567;
      goto LABEL_206;
    case 104:
      v47 = v567;
      v46 = v568;
      v223 = v35;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v224 = Logger.logObject.getter();
      v225 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v224, v225))
      {
        v226 = swift_slowAlloc();
        v227 = swift_slowAlloc();
        *&v826[0] = v227;
        *v226 = 136315138;
        *(v226 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v224, v225, "nan_event: %s APPLE80211_M_NAN_PUBLISH_TERMINATED", v226, 0xCu);
        sub_100002A00(v227);
      }

      (*(v565 + 8))(v223, v566.i64[0]);
      v49 = v564;
      if ((sub_100028650(v46, v47, sub_1000285B8) & 0x10000) != 0)
      {
        goto LABEL_214;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v228 = *(type metadata accessor for DriverEvent(0) - 8);
      v97 = (*(v228 + 80) + 32) & ~*(v228 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      LOBYTE(v826[0]) = sub_10011AFE0();
      *(&v826[0] + 1) = v229;
      LOBYTE(v826[1]) = v230;
      sub_1000B24EC(v826);
      goto LABEL_73;
    case 105:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      v91 = v562;
      Logger.init(subsystem:category:)();
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v826[0] = v95;
        *v94 = 136315138;
        *(v94 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v92, v93, "nan_event: %s APPLE80211_M_NAN_SUBSCRIBE_TERMINATED", v94, 0xCu);
        sub_100002A00(v95);
      }

      (*(v565 + 8))(v91, v566.i64[0]);
      v49 = v564;
      if ((sub_100028650(v46, v47, sub_1000285B8) & 0x10000) != 0)
      {
        goto LABEL_214;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v96 = *(type metadata accessor for DriverEvent(0) - 8);
      v97 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      LOBYTE(v826[0]) = sub_10011AFE0();
      *(&v826[0] + 1) = v98;
      LOBYTE(v826[1]) = v99;
      sub_1000B24F8(v826);
LABEL_73:
      memcpy((v60 + v97), v826, 0x16AuLL);
      goto LABEL_155;
    case 106:
      v47 = v567;
      v46 = v568;
      v367 = v34;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v368 = Logger.logObject.getter();
      v369 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v368, v369))
      {
        v370 = swift_slowAlloc();
        v371 = swift_slowAlloc();
        *&v826[0] = v371;
        *v370 = 136315138;
        *(v370 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v368, v369, "nan_event: %s APPLE80211_M_NAN_FOLLOW_UP_RECEIVED", v370, 0xCu);
        sub_100002A00(v371);
      }

      (*(v565 + 8))(v367, v566.i64[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000AC8BC(v46, v47, sub_1002AB5D4, v825);

      v372 = v825[2].i64[0];
      v49 = v564;
      if (!v825[2].i64[0])
      {
        goto LABEL_214;
      }

      v373 = v825[0].i8[0];
      *&v562 = v825[0].i64[0] >> 8;
      v566.i64[0] = v825[0].i8[8];
      v374 = v825[0].i64[0] >> 16;
      v375 = v825[0].i64[0] >> 24;
      v376 = HIDWORD(v825[0].i64[0]);
      *&v563 = v825[0].i64[0] >> 40;
      *&v564 = HIWORD(v825[0].i64[0]);
      *&v565 = HIBYTE(v825[0].i64[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v377 = *(type metadata accessor for DriverEvent(0) - 8);
      v378 = (*(v377 + 80) + 32) & ~*(v377 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      LOBYTE(v826[0]) = v373;
      BYTE1(v826[0]) = v562;
      BYTE2(v826[0]) = v374;
      BYTE3(v826[0]) = v375;
      BYTE4(v826[0]) = v376;
      BYTE5(v826[0]) = v563;
      BYTE6(v826[0]) = v564;
      BYTE7(v826[0]) = v565;
      *(&v826[0] + 1) = v566.i64[0];
      *&v826[1] = v372;
      sub_1000B24E0(v826);
LABEL_204:
      memcpy((v60 + v378), v826, 0x16AuLL);
      goto LABEL_205;
    case 112:
      v46 = v568;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v355 = Logger.logObject.getter();
      v356 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v355, v356))
      {
        v357 = swift_slowAlloc();
        v358 = swift_slowAlloc();
        *&v826[0] = v358;
        *v357 = 136315138;
        *(v357 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v355, v356, "nan_event: %s APPLE80211_M_NAN_DP_REQ_RECVD", v357, 0xCu);
        sub_100002A00(v358);
      }

      (*(v565 + 8))(v23, v566.i64[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      v47 = v567;
      sub_1000AB7CC(v46, v567, v825);

      v359 = v825[1].i64[1];
      v49 = v564;
      if (!v825[1].i64[1])
      {
        goto LABEL_214;
      }

      v360 = v825[0].i8[8];
      v361 = v825[0].i8[0];
      v362 = v825[0].i64[0] >> 8;
      v363 = v825[0].i64[0] >> 24;
      v364 = HIDWORD(v825[0].i64[0]);
      v558 = v825[0].i64[0] >> 40;
      v559 = HIWORD(v825[0].i64[0]);
      v560 = HIBYTE(v825[0].i64[0]);
      *&v561 = v825[0].i64[1] >> 8;
      *&v562 = v825[0].i64[1] >> 16;
      *&v563 = v825[0].i64[1] >> 24;
      *&v564 = HIDWORD(v825[0].i64[1]);
      *&v565 = v825[0].i64[1] >> 40;
      v566.i64[0] = HIWORD(v825[0].i64[1]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v365 = *(type metadata accessor for DriverEvent(0) - 8);
      v366 = (*(v365 + 80) + 32) & ~*(v365 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      LOBYTE(v826[0]) = v361;
      BYTE1(v826[0]) = v362;
      BYTE2(v826[0]) = v363;
      BYTE3(v826[0]) = v364;
      BYTE4(v826[0]) = v558;
      BYTE5(v826[0]) = v559;
      BYTE6(v826[0]) = v560;
      BYTE7(v826[0]) = v360;
      BYTE8(v826[0]) = v561;
      BYTE9(v826[0]) = v562;
      BYTE10(v826[0]) = v563;
      BYTE11(v826[0]) = v564;
      BYTE12(v826[0]) = v565;
      BYTE13(v826[0]) = v566.i8[0];
      *&v826[1] = v359;
      sub_1000B255C(v826);
      memcpy((v60 + v366), v826, 0x16AuLL);
LABEL_205:
      swift_storeEnumTagMultiPayload();
      v112 = v567;
      v111 = v568;
      goto LABEL_206;
    case 113:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        *&v826[0] = v133;
        *v132 = 136315138;
        *(v132 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v130, v131, "nan_event: %s APPLE80211_M_NAN_DP_RSP_RECVD", v132, 0xCu);
        sub_100002A00(v133);
      }

      (*(v565 + 8))(v21, v566.i64[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000ABD74(v46, v47, v825);

      v134 = v825[1].i64[1];
      v49 = v564;
      if (!v825[1].i64[1])
      {
        goto LABEL_214;
      }

      v135 = v825[1].i8[0];
      v136 = v825[1].i64[0] >> 8;
      v137 = v825[1].i64[0] >> 16;
      v566.i64[0] = v825[1].i64[0] >> 24;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v138 = *(type metadata accessor for DriverEvent(0) - 8);
      v139 = (*(v138 + 80) + 32) & ~*(v138 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      v140 = vdupq_lane_s64(v825[0].i64[0], 0);
      LOBYTE(v826[0]) = v825[0].i8[0];
      *(v826 + 1) = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v140, xmmword_1004817A0), vshlq_u64(v140, xmmword_100481790)), vuzp1q_s32(vshlq_u64(v140, xmmword_1004817C0), vshlq_u64(v825[0], xmmword_1004817B0))));
      BYTE9(v826[0]) = v825[0].i8[15];
      BYTE10(v826[0]) = v135;
      BYTE11(v826[0]) = v136;
      BYTE12(v826[0]) = v137;
      BYTE13(v826[0]) = v566.i8[0];
      *(v826 + 14) = v825[0].i32[2];
      WORD1(v826[1]) = v825[0].i16[6];
      *(&v826[1] + 1) = v134;
      sub_1000B2550(v826);
      memcpy((v60 + v139), v826, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v111 = v568;
      goto LABEL_156;
    case 114:
      v47 = v567;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        *&v826[0] = v192;
        *v191 = 136315138;
        *(v191 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v189, v190, "nan_event: %s APPLE80211_M_NAN_DP_CONFIRM_RECVD", v191, 0xCu);
        sub_100002A00(v192);
      }

      (*(v565 + 8))(v19, v566.i64[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      v46 = v568;
      sub_1000AC324(v568, v47, v825);

      v193 = v825[1].i64[0];
      v49 = v564;
      if (!v825[1].i64[0])
      {
        goto LABEL_214;
      }

      v194 = v825[0].i64[1];
      v195 = v825[0].i16[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v196 = *(type metadata accessor for DriverEvent(0) - 8);
      v197 = (*(v196 + 80) + 32) & ~*(v196 + 80);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_100480F40;
      v198 = sub_100112384(v193, v195, v194);
      v200 = v199;
      v202 = v201;

      *&v826[0] = v198;
      *(&v826[0] + 1) = v200;
      *&v826[1] = v202;
      sub_1000B2544(v826);
      memcpy((v127 + v197), v826, 0x16AuLL);
LABEL_58:
      swift_storeEnumTagMultiPayload();
      v203 = v46;
      v204 = v47;
      goto LABEL_63;
    case 117:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v266 = Logger.logObject.getter();
      v267 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v266, v267))
      {
        v268 = swift_slowAlloc();
        v269 = swift_slowAlloc();
        *&v826[0] = v269;
        *v268 = 136315138;
        *(v268 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v266, v267, "nan_event: %s APPLE80211_M_NAN_DP_ESTABLISHED", v268, 0xCu);
        sub_100002A00(v269);
      }

      (*(v565 + 8))(v17, v566.i64[0]);
      sub_1000AD30C(v46, v47, v826);
      v270 = sub_1000B251C(v826);
      v49 = v564;
      if (v270 == 1)
      {
        goto LABEL_214;
      }

      memcpy(v825, v826, 0x820uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v271 = *(type metadata accessor for DriverEvent(0) - 8);
      v272 = (*(v271 + 80) + 32) & ~*(v271 + 80);
      v27 = swift_allocObject();
      *(v27 + 1) = xmmword_100480F40;
      *&v827[0] = sub_1001123DC();
      DWORD2(v827[0]) = v273;
      WORD6(v827[0]) = v274;
      sub_1000B2538(v827);
      goto LABEL_130;
    case 118:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v205 = Logger.logObject.getter();
      v206 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        *&v826[0] = v208;
        *v207 = 136315138;
        *(v207 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v205, v206, "nan_event: %s APPLE80211_M_NAN_DP_END", v207, 0xCu);
        sub_100002A00(v208);
      }

      (*(v565 + 8))(v15, v566.i64[0]);
      sub_1000AD3DC(v46, v47, v825);
      v49 = v564;
      if (v825[1].i8[12])
      {
        goto LABEL_214;
      }

      v209 = v825[0].i8[8];
      v210 = v825[0].i64[0];
      v211 = v825[0].i64[1] >> 8;
      *&v563 = v825[0].i64[1] >> 16;
      *&v564 = v825[0].i64[1] >> 24;
      *&v565 = HIDWORD(v825[0].i64[1]);
      v566.i64[0] = v825[0].i64[1] >> 40;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v212 = *(type metadata accessor for DriverEvent(0) - 8);
      v213 = (*(v212 + 80) + 32) & ~*(v212 + 80);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_100480F40;
      v214 = sub_10011463C(HIDWORD(v210));
      v215 = sub_10011465C(HIDWORD(v210));
      LOBYTE(v826[0]) = v210;
      BYTE1(v826[0]) = v209;
      BYTE2(v826[0]) = v211;
      BYTE3(v826[0]) = v563;
      BYTE4(v826[0]) = v564;
      BYTE5(v826[0]) = v565;
      WORD3(v826[0]) = v566.u8[0];
      *(&v826[0] + 1) = v214;
      LOBYTE(v826[1]) = v215;
      sub_1000B2510(v826);
      memcpy((v127 + v213), v826, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v204 = v567;
      v203 = v568;
LABEL_63:
      sub_1000124C8(v203, v204);
      return v127;
    case 122:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000AD710(v46, v47, v826);
      if (BYTE8(v826[4]))
      {
        goto LABEL_213;
      }

      v566.i64[0] = WORD1(v826[4]);
      v393 = LOWORD(v826[4]);
      v394 = DWORD1(v826[3]);
      v395 = LODWORD(v826[3]);
      v396 = HIDWORD(v826[3]);
      v397 = DWORD2(v826[3]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v398 = *(type metadata accessor for DriverEvent(0) - 8);
      v399 = (*(v398 + 80) + 32) & ~*(v398 + 80);
      v27 = swift_allocObject();
      *(v27 + 1) = xmmword_100480F40;
      v400 = v394 | (v395 << 32);
      v401 = sub_10003B238(v393);
      if ((v401 & 0xFF00000000) == 0x300000000)
      {
        if (qword_10058AAA8 != -1)
        {
          swift_once();
        }

        LODWORD(v401) = static Channel.nanPrimary;
        LOBYTE(v402) = byte_10059B634;
        LOBYTE(v403) = byte_10059B635;
      }

      else
      {
        v402 = HIDWORD(v401);
        v403 = v401 >> 40;
      }

      v482 = v567;
      v483 = v568;
      *&v826[0] = v566.i64[0];
      *(&v826[0] + 1) = v400;
      *&v826[1] = v396 | (v397 << 32);
      DWORD2(v826[1]) = v401;
      BYTE12(v826[1]) = v402;
      BYTE13(v826[1]) = v403;
      sub_1000B2488(v826);
      memcpy(&v27[v399], v826, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v316 = v483;
      v317 = v482;
      goto LABEL_132;
    case 124:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000AE398(v46, v47, v826);
      if (sub_1000B2318(v826) == 1)
      {
        goto LABEL_213;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v566.i64[0] = type metadata accessor for DriverEvent(0);
      v113 = (*(*(v566.i64[0] - 8) + 80) + 32) & ~*(*(v566.i64[0] - 8) + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      v114 = sub_100032064(DWORD1(v826[0]), DWORD2(v826[0]));
      v115 = sub_100032064(v826[1], DWORD1(v826[1]));
      if ((v115 & 0xFF00000000) == 0x300000000)
      {
        goto LABEL_255;
      }

      v116 = v115;
      v117 = HIDWORD(v115);
      v118 = v115 >> 40;
      v119 = HIDWORD(v826[1]) | (DWORD2(v826[1]) << 32);
      memcpy(v825, &v826[7], 0x290uLL);
      v564 = v826[3];
      v565 = v826[2];
      v562 = v826[5];
      v563 = v826[4];
      v561 = v826[6];
      v120 = sub_100119AF8(v825);
      WORD2(v827[0]) = WORD2(v114);
      LODWORD(v827[0]) = v114;
      DWORD2(v827[0]) = v116;
      BYTE12(v827[0]) = v117;
      BYTE13(v827[0]) = v118;
      *(&v827[1] + 8) = v565;
      *(&v827[2] + 8) = v564;
      *(&v827[3] + 8) = v563;
      *(&v827[4] + 8) = v562;
      *(&v827[5] + 8) = v561;
      *&v827[1] = v119;
      *(&v827[6] + 1) = v120;
      *&v827[7] = v121;
      *(&v827[7] + 1) = v122;
      sub_1000B2334(v827);
      memcpy((v44 + v113), v827, 0x16AuLL);
      goto LABEL_187;
    case 125:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_10000AF20(v46, v47, v826);
      v328 = sub_1000114C8(v826);
      v49 = v564;
      if (v328 == 1)
      {
        goto LABEL_214;
      }

      memcpy(v825, v826, 0x323uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v329 = *(type metadata accessor for DriverEvent(0) - 8);
      v330 = (*(v329 + 80) + 32) & ~*(v329 + 80);
      v27 = swift_allocObject();
      *(v27 + 1) = xmmword_100480F40;
      v331 = &v27[v330];
      *v331 = sub_1000114E4();
      *(v331 + 8) = 0u;
      *(v331 + 24) = 0u;
      *(v331 + 20) = 256;
      goto LABEL_131;
    case 126:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      v389 = sub_100028650(v46, v47, sub_1000285B8);
      v49 = v564;
      if ((v389 & 0x10000) != 0)
      {
        goto LABEL_214;
      }

      v390 = v389;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v391 = *(type metadata accessor for DriverEvent(0) - 8);
      v392 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      v61 = v60 + v392;
      *v61 = v390;
      *(v61 + 24) = 0u;
      *(v61 + 8) = 0u;
      *(v61 + 40) = 0;
      v62 = 2;
      goto LABEL_154;
    case 127:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      v66 = sub_1000AE2D8(v46, v47, sub_1002AB588);
      v49 = v564;
      if ((v67 & 0x100000000) != 0)
      {
        goto LABEL_214;
      }

      v68 = sub_100032064(HIDWORD(v66), v67);
      if ((v68 & 0xFF00000000) == 0x300000000)
      {
        goto LABEL_214;
      }

      v69 = v68;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v70 = *(type metadata accessor for DriverEvent(0) - 8);
      v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      v61 = v60 + v71;
      *v61 = v69 & 0xFFFFFFFFFFFFLL;
      *(v61 + 24) = 0u;
      *(v61 + 8) = 0u;
      *(v61 + 40) = 0;
      v62 = 3;
      goto LABEL_154;
    case 129:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      v281 = v561;
      Logger.init(subsystem:category:)();
      v282 = Logger.logObject.getter();
      v283 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v282, v283))
      {
        v284 = swift_slowAlloc();
        v285 = swift_slowAlloc();
        *&v826[0] = v285;
        *v284 = 136315138;
        *(v284 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v282, v283, "nan_event: %s APPLE80211_M_NAN_DP_HOST_ASSIST_REQUEST", v284, 0xCu);
        sub_100002A00(v285);
      }

      (*(v565 + 8))(v281, v566.i64[0]);
      sub_1000AD4B0(v46, v47, v825);
      v49 = v564;
      if (v825[1].i8[4])
      {
        goto LABEL_214;
      }

      v286 = v825[0].u64[1];
      v287 = v825[0].i16[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v288 = *(type metadata accessor for DriverEvent(0) - 8);
      v289 = (*(v288 + 80) + 32) & ~*(v288 + 80);
      v27 = swift_allocObject();
      *(v27 + 1) = xmmword_100480F40;
      *&v826[0] = sub_10011243C(v287, v286);
      *(&v826[0] + 1) = v290;
      sub_1000B2504(v826);
      memcpy(&v27[v289], v826, 0x16AuLL);
      goto LABEL_131;
    case 142:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000AD8C4(v46, v47, v827);
      memcpy(v825, v827, 0x658uLL);
      if (sub_1000B242C(v825) == 1)
      {
        v64 = v558;
        v63 = v559;
        v65 = v560;
        (*(v558 + 56))(v560, 1, 1, v559);
      }

      else
      {
        memcpy(v826, v827, 0x658uLL);
        v65 = v560;
        sub_10011298C(v826, v560);
        v64 = v558;
        v63 = v559;
      }

      v448 = (*(v64 + 48))(v65, 1, v63);
      v49 = v564;
      if (v448 == 1)
      {
        sub_100016290(v65, &qword_10058C7E8, &unk_100481FF0);
        goto LABEL_214;
      }

      v449 = v557;
      sub_100016DFC(v65, v557, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v450 = *(type metadata accessor for DriverEvent(0) - 8);
      v451 = (*(v450 + 80) + 32) & ~*(v450 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      sub_10001251C(v449, v44 + v451, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1000124C8(v46, v47);
      sub_100012468(v449, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      return v44;
    case 149:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000AD994(v46, v47, v827);
      v825[10] = v827[10];
      v825[11] = v827[11];
      v825[12] = v827[12];
      v825[6] = v827[6];
      v825[7] = v827[7];
      v825[8] = v827[8];
      v825[9] = v827[9];
      v825[2] = v827[2];
      v825[3] = v827[3];
      v825[4] = v827[4];
      v825[5] = v827[5];
      v825[0] = v827[0];
      v825[1] = v827[1];
      if (sub_1000B2410(v825) == 1)
      {
        goto LABEL_213;
      }

      v826[10] = v827[10];
      v826[11] = v827[11];
      v826[12] = v827[12];
      v826[6] = v827[6];
      v826[7] = v827[7];
      v826[8] = v827[8];
      v826[9] = v827[9];
      v826[2] = v827[2];
      v826[3] = v827[3];
      v826[4] = v827[4];
      v826[5] = v827[5];
      v826[0] = v827[0];
      v826[1] = v827[1];
      sub_100119410(v826, v830);
      v48 = v832;
      v49 = v564;
      if (!v832)
      {
        goto LABEL_214;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v50 = *(type metadata accessor for DriverEvent(0) - 8);
      v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100480F40;
      v53 = v52 + v51;
      v54 = v831;
      *(v53 + 48) = *&v830[48];
      *(v53 + 64) = v54;
      v55 = *&v830[32];
      *(v53 + 16) = *&v830[16];
      *(v53 + 32) = v55;
      *v53 = *v830;
      *(v53 + 80) = v48;
      *(v53 + 88) = v833;
      *(v53 + 104) = v834;
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_150;
    case 157:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000AD7F4(v46, v47, v825);
      memcpy(v826, v825, sizeof(v826));
      if (sub_1000B2448(v826) == 1)
      {
        goto LABEL_213;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v566.i64[0] = type metadata accessor for DriverEvent(0);
      *&v565 = (*(*(v566.i64[0] - 8) + 80) + 32) & ~*(*(v566.i64[0] - 8) + 80);
      *&v564 = swift_allocObject();
      *(v564 + 16) = xmmword_100480F40;
      LODWORD(v552) = v826[0];
      LODWORD(v551) = BYTE4(v826[0]);
      LODWORD(v550) = BYTE5(v826[0]);
      LODWORD(v549) = BYTE6(v826[0]);
      LODWORD(v555) = LOBYTE(v826[1]);
      LODWORD(v554) = BYTE1(v826[1]);
      LODWORD(v553) = BYTE2(v826[1]);
      LODWORD(v558) = BYTE4(v826[2]);
      LODWORD(v557) = BYTE5(v826[2]);
      LODWORD(v556) = BYTE6(v826[2]);
      LODWORD(v559) = v826[3];
      *&v563 = *(&v826[11] + 1);
      *&v562 = *&v826[12];
      v560 = *(&v826[16] + 1);
      *&v561 = *&v826[16];
      v806 = *&v826[18];
      v808 = *(&v826[19] + 1);
      v810 = *&v826[21];
      v812 = *(&v826[22] + 1);
      v814 = *&v826[24];
      v816 = *(&v826[25] + 1);
      v818 = *&v826[27];
      v547 = *(&v826[12] + 1);
      v548 = *(&v826[13] + 1);
      v807 = *(&v826[18] + 8);
      v809 = v826[20];
      v811 = *(&v826[21] + 8);
      v813 = v826[23];
      v815 = *(&v826[24] + 8);
      v817 = v826[26];
      v819 = *(&v826[27] + 8);
      v820 = *(&v826[28] + 1);
      v821 = v826[29];
      v823 = *(&v826[30] + 8);
      v805 = v826[17];
      v822 = *&v826[30];
      v824 = *(&v826[31] + 1);
      v545 = *(&v826[5] + 8);
      v546 = *(&v826[3] + 8);
      v541 = *(&v826[6] + 8);
      v542 = *(&v826[4] + 8);
      v543 = *(&v826[9] + 8);
      v544 = *(&v826[7] + 8);
      v539 = *(&v826[10] + 8);
      v540 = *(&v826[8] + 8);
      v141 = *(&v826[2] + 1);
      v142 = *(&v826[1] + 4);
      v143 = *(&v826[0] + 1);
      v536 = v826[2];
      v537 = HIDWORD(v826[1]);
      v538 = sub_100115324(&v805);
      v785 = v826[47];
      v787 = *(&v826[48] + 8);
      v786 = *&v826[48];
      v788 = *(&v826[49] + 1);
      v789 = v826[50];
      v791 = *(&v826[51] + 8);
      v790 = *&v826[51];
      v792 = *(&v826[52] + 1);
      v793 = v826[53];
      v795 = *(&v826[54] + 8);
      v794 = *&v826[54];
      v796 = *(&v826[55] + 1);
      v797 = v826[56];
      v799 = *(&v826[57] + 8);
      v798 = *&v826[57];
      v800 = *(&v826[58] + 1);
      v801 = v826[59];
      v803 = *(&v826[60] + 8);
      v802 = *&v826[60];
      v804 = *(&v826[61] + 1);
      v535 = sub_100115324(&v785);
      v765 = v826[62];
      v767 = *(&v826[63] + 8);
      v766 = *&v826[63];
      v768 = *(&v826[64] + 1);
      v769 = v826[65];
      v771 = *(&v826[66] + 8);
      v770 = *&v826[66];
      v772 = *(&v826[67] + 1);
      v773 = v826[68];
      v775 = *(&v826[69] + 8);
      v774 = *&v826[69];
      v776 = *(&v826[70] + 1);
      v777 = v826[71];
      v779 = *(&v826[72] + 8);
      v778 = *&v826[72];
      v780 = *(&v826[73] + 1);
      v781 = v826[74];
      v783 = *(&v826[75] + 8);
      v782 = *&v826[75];
      v784 = *(&v826[76] + 1);
      v534 = sub_100115324(&v765);
      v745 = v826[77];
      v747 = *(&v826[78] + 8);
      v746 = *&v826[78];
      v748 = *(&v826[79] + 1);
      v749 = v826[80];
      v751 = *(&v826[81] + 8);
      v750 = *&v826[81];
      v752 = *(&v826[82] + 1);
      v753 = v826[83];
      v755 = *(&v826[84] + 8);
      v754 = *&v826[84];
      v756 = *(&v826[85] + 1);
      v757 = v826[86];
      v759 = *(&v826[87] + 8);
      v758 = *&v826[87];
      v760 = *(&v826[88] + 1);
      v761 = v826[89];
      v763 = *(&v826[90] + 8);
      v762 = *&v826[90];
      v764 = *(&v826[91] + 1);
      v533 = sub_100115324(&v745);
      v725 = v826[92];
      v727 = *(&v826[93] + 8);
      v726 = *&v826[93];
      v728 = *(&v826[94] + 1);
      v729 = v826[95];
      v731 = *(&v826[96] + 8);
      v730 = *&v826[96];
      v732 = *(&v826[97] + 1);
      v733 = v826[98];
      v735 = *(&v826[99] + 8);
      v734 = *&v826[99];
      v736 = *(&v826[100] + 1);
      v737 = v826[101];
      v739 = *(&v826[102] + 8);
      v738 = *&v826[102];
      v740 = *(&v826[103] + 1);
      v741 = v826[104];
      v743 = *(&v826[105] + 8);
      v742 = *&v826[105];
      v744 = *(&v826[106] + 1);
      v532 = sub_100115324(&v725);
      v705 = *(&v826[156] + 8);
      v707 = v826[158];
      v706 = *(&v826[157] + 1);
      v708 = *&v826[159];
      v709 = *(&v826[159] + 8);
      v711 = v826[161];
      v710 = *(&v826[160] + 1);
      v712 = *&v826[162];
      v713 = *(&v826[162] + 8);
      v715 = v826[164];
      v714 = *(&v826[163] + 1);
      v716 = *&v826[165];
      v717 = *(&v826[165] + 8);
      v719 = v826[167];
      v718 = *(&v826[166] + 1);
      v720 = *&v826[168];
      v721 = *(&v826[168] + 8);
      v723 = v826[170];
      v722 = *(&v826[169] + 1);
      v724 = *&v826[171];
      v531 = sub_100115324(&v705);
      v693 = v826[107];
      v695 = *(&v826[108] + 8);
      v694 = *&v826[108];
      v696 = *(&v826[109] + 1);
      v697 = v826[110];
      v699 = *(&v826[111] + 8);
      v698 = *&v826[111];
      v700 = *(&v826[112] + 1);
      v701 = v826[113];
      v703 = *(&v826[114] + 8);
      v702 = *&v826[114];
      v704 = *(&v826[115] + 1);
      v530 = sub_1001154AC(&v693);
      v675 = v826[116];
      v677 = *(&v826[117] + 8);
      v676 = *&v826[117];
      v678 = *(&v826[118] + 1);
      v679 = v826[119];
      v681 = *(&v826[120] + 8);
      v680 = *&v826[120];
      v682 = *(&v826[121] + 1);
      v683 = v826[122];
      v685 = *(&v826[123] + 8);
      v684 = *&v826[123];
      v686 = *(&v826[124] + 1);
      v687 = v826[125];
      v689 = *(&v826[126] + 8);
      v688 = *&v826[126];
      v690 = *(&v826[127] + 1);
      v691 = v826[128];
      v692 = *&v826[129];
      v144 = sub_1001156EC(&v675);
      v657 = *(&v826[129] + 8);
      v659 = v826[131];
      v658 = *(&v826[130] + 1);
      v660 = *&v826[132];
      v661 = *(&v826[132] + 8);
      v663 = v826[134];
      v662 = *(&v826[133] + 1);
      v664 = *&v826[135];
      v665 = *(&v826[135] + 8);
      v667 = v826[137];
      v666 = *(&v826[136] + 1);
      v668 = *&v826[138];
      v669 = *(&v826[138] + 8);
      v671 = v826[140];
      v670 = *(&v826[139] + 1);
      v672 = *&v826[141];
      v673 = *(&v826[141] + 8);
      v674 = *(&v826[142] + 1);
      v145 = sub_1001156EC(&v657);
      v637 = v826[176];
      v639 = *(&v826[177] + 8);
      v638 = *&v826[177];
      v640 = *(&v826[178] + 1);
      v641 = v826[179];
      v643 = *(&v826[180] + 8);
      v642 = *&v826[180];
      v644 = *(&v826[181] + 1);
      v645 = v826[182];
      v647 = *(&v826[183] + 8);
      v646 = *&v826[183];
      v648 = *(&v826[184] + 1);
      v649 = v826[185];
      v651 = *(&v826[186] + 8);
      v650 = *&v826[186];
      v652 = *(&v826[187] + 1);
      v653 = v826[188];
      v655 = *(&v826[189] + 8);
      v654 = *&v826[189];
      v656 = *(&v826[190] + 1);
      v146 = sub_100115324(&v637);
      v617 = v826[191];
      v619 = *(&v826[192] + 8);
      v618 = *&v826[192];
      v620 = *(&v826[193] + 1);
      v621 = v826[194];
      v623 = *(&v826[195] + 8);
      v622 = *&v826[195];
      v624 = *(&v826[196] + 1);
      v625 = v826[197];
      v627 = *(&v826[198] + 8);
      v626 = *&v826[198];
      v628 = *(&v826[199] + 1);
      v629 = v826[200];
      v631 = *(&v826[201] + 8);
      v630 = *&v826[201];
      v632 = *(&v826[202] + 1);
      v633 = v826[203];
      v635 = *(&v826[204] + 8);
      v634 = *&v826[204];
      v636 = *(&v826[205] + 1);
      v147 = sub_100115324(&v617);
      v597 = v826[206];
      v599 = *(&v826[207] + 8);
      v598 = *&v826[207];
      v600 = *(&v826[208] + 1);
      v601 = v826[209];
      v603 = *(&v826[210] + 8);
      v602 = *&v826[210];
      v604 = *(&v826[211] + 1);
      v605 = v826[212];
      v607 = *(&v826[213] + 8);
      v606 = *&v826[213];
      v608 = *(&v826[214] + 1);
      v609 = v826[215];
      v611 = *(&v826[216] + 8);
      v610 = *&v826[216];
      v612 = *(&v826[217] + 1);
      v613 = v826[218];
      v615 = *(&v826[219] + 8);
      v614 = *&v826[219];
      v616 = *(&v826[220] + 1);
      v148 = sub_100115324(&v597);
      v577 = v826[221];
      v579 = *(&v826[222] + 8);
      v578 = *&v826[222];
      v580 = *(&v826[223] + 1);
      v581 = v826[224];
      v583 = *(&v826[225] + 8);
      v582 = *&v826[225];
      v584 = *(&v826[226] + 1);
      v585 = v826[227];
      v587 = *(&v826[228] + 8);
      v586 = *&v826[228];
      v588 = *(&v826[229] + 1);
      v589 = v826[230];
      v591 = *(&v826[231] + 8);
      v590 = *&v826[231];
      v592 = *(&v826[232] + 1);
      v593 = v826[233];
      v595 = *(&v826[234] + 8);
      v594 = *&v826[234];
      v596 = *(&v826[235] + 1);
      v149 = sub_100115324(&v577);
      v569 = v826[236];
      v570 = *&v826[237];
      v571 = *(&v826[237] + 8);
      v572 = *(&v826[238] + 1);
      v573 = v826[239];
      v574 = *&v826[240];
      v575 = *(&v826[240] + 8);
      v576 = *(&v826[241] + 1);
      v150 = sub_100115864(&v569);
      LODWORD(v827[0]) = v552;
      BYTE4(v827[0]) = v551;
      BYTE5(v827[0]) = v550;
      BYTE6(v827[0]) = v549;
      *(&v827[0] + 1) = v143;
      LOBYTE(v827[1]) = v555;
      BYTE1(v827[1]) = v554;
      WORD1(v827[1]) = v553;
      *(&v827[1] + 4) = v142;
      HIDWORD(v827[1]) = v537;
      LODWORD(v827[2]) = v536;
      BYTE4(v827[2]) = v558;
      BYTE5(v827[2]) = v557;
      BYTE6(v827[2]) = v556;
      *(&v827[2] + 1) = v141;
      LODWORD(v827[3]) = v559;
      *(&v827[4] + 8) = v542;
      *(&v827[3] + 8) = v546;
      *(&v827[6] + 8) = v541;
      *(&v827[5] + 8) = v545;
      *(&v827[8] + 8) = v540;
      *(&v827[7] + 8) = v544;
      *(&v827[10] + 8) = v539;
      *(&v827[9] + 8) = v543;
      *(&v827[11] + 1) = v563;
      *&v827[12] = v562;
      *(&v827[12] + 1) = v547;
      *&v827[13] = v561;
      *(&v827[13] + 1) = v560;
      *&v827[14] = v548;
      *(&v827[14] + 1) = v538;
      *&v827[15] = v535;
      *(&v827[15] + 1) = v534;
      *&v827[16] = v533;
      *(&v827[16] + 1) = v532;
      *&v827[17] = v531;
      *(&v827[17] + 1) = v530;
      *&v827[18] = v144;
      *(&v827[18] + 1) = v145;
      *&v827[19] = v146;
      *(&v827[19] + 1) = v147;
      *&v827[20] = v148;
      *(&v827[20] + 1) = v149;
      v827[21] = v150;
      *&v827[22] = 0;
      BYTE8(v827[22]) = 0;
      sub_1000B2464(v827);
      v44 = v564;
      memcpy((v564 + v565), v827, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v152 = v567;
      v151 = v568;
      goto LABEL_188;
    case 158:
      v47 = v567;
      v46 = v568;
      v231 = v32;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v232 = Logger.logObject.getter();
      v233 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v232, v233))
      {
        v234 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        *&v826[0] = v235;
        *v234 = 136315138;
        *(v234 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v232, v233, "nan_event: %s APPLE80211_M_NAN_OOB_AF_TX_STATUS", v234, 0xCu);
        sub_100002A00(v235);
      }

      (*(v565 + 8))(v231, v566.i64[0]);
      v49 = v564;
      v236 = sub_1000AD57C(v46, v47);
      if ((v237 & 0x10000) != 0)
      {
        goto LABEL_214;
      }

      v566.i64[0] = v236 >> 16;
      v238 = HIWORD(v236) | (v237 << 16);
      v239 = v236;
      v240 = v237;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v241 = *(type metadata accessor for DriverEvent(0) - 8);
      v242 = (*(v241 + 80) + 32) & ~*(v241 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_100480F40;
      LOWORD(v826[0]) = v239;
      *(v826 + 2) = __PAIR64__(v238, v566.u32[0]);
      LODWORD(v826[0]) = sub_100112578(*&v826[0], v240);
      sub_1000B24BC(v826);
      memcpy((v89 + v242), v826, 0x16AuLL);
      goto LABEL_139;
    case 159:
      v47 = v567;
      v46 = v568;
      v334 = v31;
      sub_10000AB0C(v568, v567);
      Logger.init(subsystem:category:)();
      v335 = Logger.logObject.getter();
      v336 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v335, v336))
      {
        v337 = swift_slowAlloc();
        v338 = swift_slowAlloc();
        *&v826[0] = v338;
        *v337 = 136315138;
        *(v337 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v335, v336, "nan_event: %s APPLE80211_M_NAN_OOB_AF_RX", v337, 0xCu);
        sub_100002A00(v338);
      }

      (*(v565 + 8))(v334, v566.i64[0]);
      sub_1000AD640(v46, v47, v826);
      v339 = sub_1000B2494(v826);
      v49 = v564;
      if (v339 == 1)
      {
        goto LABEL_214;
      }

      memcpy(v825, v826, 0x3E5uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v340 = *(type metadata accessor for DriverEvent(0) - 8);
      v272 = (*(v340 + 80) + 32) & ~*(v340 + 80);
      v27 = swift_allocObject();
      *(v27 + 1) = xmmword_100480F40;
      sub_1001125C0(v827);
      sub_1000B24B0(v827);
LABEL_130:
      memcpy(&v27[v272], v827, 0x16AuLL);
LABEL_131:
      swift_storeEnumTagMultiPayload();
      v316 = v46;
      v317 = v47;
      goto LABEL_132;
    case 172:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      v433 = sub_1000ADB70(v46, v47);
      v49 = v564;
      if (v435)
      {
        goto LABEL_214;
      }

      v436 = v433;
      v437 = v434;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v438 = *(type metadata accessor for DriverEvent(0) - 8);
      v439 = (*(v438 + 80) + 32) & ~*(v438 + 80);
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_100480F40;
      v440 = v172 + v439;
      v441 = sub_10003B238(v437);
      *v440 = HIDWORD(v436) != 0;
      *(v440 + 4) = v441;
      *(v440 + 8) = WORD2(v441);
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_179;
    case 179:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000ADC20(v46, v47, v826);
      if (sub_1000B2378(v826) == 1)
      {
        goto LABEL_213;
      }

      v72 = DWORD1(v826[0]);
      v49 = v564;
      if (DWORD1(v826[0]) >= 0x100)
      {
        goto LABEL_214;
      }

      v825[12] = *(&v826[12] + 8);
      v825[13] = *(&v826[13] + 8);
      v825[14] = *(&v826[14] + 8);
      v825[15] = *(&v826[15] + 8);
      v825[8] = *(&v826[8] + 8);
      v825[9] = *(&v826[9] + 8);
      v825[10] = *(&v826[10] + 8);
      v825[11] = *(&v826[11] + 8);
      v825[4] = *(&v826[4] + 8);
      v825[5] = *(&v826[5] + 8);
      v825[6] = *(&v826[6] + 8);
      v825[7] = *(&v826[7] + 8);
      v825[0] = *(v826 + 8);
      v825[1] = *(&v826[1] + 8);
      v825[2] = *(&v826[2] + 8);
      v825[3] = *(&v826[3] + 8);
      v73 = sub_10005DC58(&qword_10058C7F8, &unk_100482000);
      *&v830[24] = v73;
      *&v830[32] = sub_1000B2394();
      v74 = swift_allocObject();
      *v830 = v74;
      v74[2] = 0;
      v74[3] = v72;
      v74[4] = v825;
      v74[5] = &v825[16];
      v75 = sub_100029B34(v830, v73);
      v76 = v75[1];
      v827[102] = *v75;
      v827[103] = v76;
      Slice<>.withUnsafeBytes<A>(_:)();
      v77 = v828;
      v78 = v829;
      sub_100002A00(v830);
      static DNSRecords.createRecord(with:value:)(v77, v78, 0, 0xF000000000000000, v827);
      sub_1000124C8(v77, v78);
      sub_10005DC58(&unk_100595FD0, &qword_100486B50);
      v490 = swift_dynamicCast();
      if (v490)
      {
        v492 = v825[0].i64[1];
        v491 = v825[0].i64[0];
        v493 = v825[1].i8[0];
      }

      else if (swift_dynamicCast())
      {
        v492 = v825[1].i64[1];
        v491 = v825[1].i64[0];
        v493 = v825[2].i8[0];
      }

      else
      {
        v497 = v551;
        if (swift_dynamicCast())
        {
          v498 = v550;
          sub_100016DFC(v497, v550, type metadata accessor for DNSRecords.SRV);
          v491 = *(v498 + 16);
          v492 = *(v498 + 24);
          v493 = *(v498 + 32);

          sub_100012468(v498, type metadata accessor for DNSRecords.SRV);
        }

        else
        {
          if (!swift_dynamicCast())
          {
            sub_100002A00(v827);
            goto LABEL_214;
          }

          v492 = v825[1].i64[1];
          v491 = v825[1].i64[0];
          v493 = v825[2].i8[0];
          v517 = v825[2].i64[1];
          v518 = v825[3].u64[0];

          sub_1000124C8(v517, v518);
        }
      }

      sub_100002A00(v827);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v566.i64[0] = type metadata accessor for DriverEvent(0);
      v519 = (*(*(v566.i64[0] - 8) + 80) + 32) & ~*(*(v566.i64[0] - 8) + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_100480F40;
      v520 = v89 + v519;
      v825[0].i64[0] = 0xD000000000000015;
      v825[0].i64[1] = 0x80000001004B8110;
      DNSRecords.Identifier.description.getter(v491, v492, v493);
      v522 = v521;
      v524 = v523;

      v525._countAndFlagsBits = v522;
      v525._object = v524;
      String.append(_:)(v525);

      v526._countAndFlagsBits = 0x2064656B61654C20;
      v526._object = 0xE90000000000005BLL;
      String.append(_:)(v526);
      LODWORD(v827[0]) = v826[0];
      v527._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v527);

      v528._countAndFlagsBits = 93;
      v528._object = 0xE100000000000000;
      String.append(_:)(v528);
      v529 = v825[0].i64[1];
      *v520 = v825[0].i64[0];
      *(v520 + 8) = v529;
      *(v520 + 16) = 0xD000000000000096;
      *(v520 + 24) = 0x80000001004B8130;
      *(v520 + 32) = 1;
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
LABEL_139:
      swift_storeEnumTagMultiPayload();
      sub_1000124C8(v46, v47);
      return v89;
    case 182:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      v275 = sub_100028650(v46, v47, sub_1000285B8);
      v49 = v564;
      if ((v275 & 0x10000) != 0)
      {
        goto LABEL_214;
      }

      v276 = v275 >> 8;
      v277 = v275;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v278 = *(type metadata accessor for DriverEvent(0) - 8);
      v279 = (*(v278 + 80) + 32) & ~*(v278 + 80);
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_100480F40;
      v280 = (v172 + v279);
      *v280 = v277;
      v280[1] = v276;
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_179;
    case 197:
      *&v562 = v37;
      v560 = v36;
      v47 = v567;
      v46 = v568;
      v404 = v30;
      sub_10000AB0C(v568, v567);
      *&v561 = &unk_1004B4EC0;
      Logger.init(subsystem:category:)();
      v405 = Logger.logObject.getter();
      v406 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v405, v406))
      {
        v407 = swift_slowAlloc();
        v408 = swift_slowAlloc();
        *&v826[0] = v408;
        *v407 = 136315138;
        *(v407 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v826);
        _os_log_impl(&_mh_execute_header, v405, v406, "nan_event: %s APPLE80211_M_NAN_PREFERRED_CHANNELS_CHANGED", v407, 0xCu);
        sub_100002A00(v408);
      }

      (*(v565 + 8))(v404, v566.i64[0]);
      sub_1000AD3DC(v46, v47, v825);
      v49 = v564;
      if (v825[1].i8[12])
      {
        goto LABEL_214;
      }

      v409 = v825[0].i8[8];
      v410 = HIDWORD(v825[0].i64[0]);
      v411 = v825[0].i64[0] >> 40;
      v412 = v825[1].i8[8];
      v413 = HIWORD(v825[0].i64[0]);
      v414 = v825[1].i8[0];
      v415 = HIBYTE(v825[0].i64[0]);
      *&v546 = v825[0].i64[1] >> 8;
      v547 = v825[0].i64[1] >> 16;
      v548 = v825[0].i64[1] >> 24;
      v549 = HIDWORD(v825[0].i64[1]);
      v550 = v825[0].i64[1] >> 40;
      v551 = HIWORD(v825[0].i64[1]);
      v552 = HIBYTE(v825[0].i64[1]);
      v553 = v825[1].i64[0] >> 8;
      v554 = v825[1].i64[0] >> 16;
      v555 = v825[1].i64[0] >> 24;
      v556 = HIDWORD(v825[1].i64[0]);
      v557 = v825[1].i64[0] >> 40;
      v558 = HIWORD(v825[1].i64[0]);
      v559 = HIBYTE(v825[1].i64[0]);
      v416 = v825[1].i32[2] >> 8;
      LODWORD(v564) = HIWORD(v825[1].i32[2]);
      LODWORD(v563) = HIBYTE(v825[1].i32[2]);
      sub_10005DC58(&qword_10058C810, &qword_100482010);
      v417 = swift_allocObject();
      v417[32] = v410;
      v417[33] = v411;
      v417[34] = v413;
      v417[35] = v415;
      v417[36] = v409;
      v417[37] = v546;
      v418 = v548;
      v417[38] = v547;
      v417[39] = v418;
      v419 = v550;
      v417[40] = v549;
      v417[41] = v419;
      v420 = v552;
      v417[42] = v551;
      v417[43] = v420;
      v417[44] = v414;
      v417[45] = v553;
      v417[46] = v554;
      v417[47] = v555;
      v417[48] = v556;
      v417[49] = v557;
      v417[50] = v558;
      v417[51] = v559;
      v417[52] = v412;
      v417[53] = v416;
      v417[54] = v564;
      v417[55] = v563;
      v421 = swift_allocObject();
      v422 = 0;
      *&v564 = v421;
      v423 = _swiftEmptyArrayStorage;
      *(v421 + 16) = _swiftEmptyArrayStorage;
      *&v563 = v421 + 16;
      v424 = (v565 + 8);
      do
      {
        v426 = v417[v422 + 32];
        if (v417[v422 + 32])
        {
          v427 = v417[v422 + 34];
          if (v427 >= 3)
          {
            Logger.init(subsystem:category:)();
            v428 = Logger.logObject.getter();
            v429 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v428, v429))
            {
              v430 = swift_slowAlloc();
              *v430 = 0;
              _os_log_impl(&_mh_execute_header, v428, v429, "Invalid channel_band in preferred channel list", v430, 2u);
            }

            (*v424)(v562, v566.i64[0]);
            LOBYTE(v427) = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v423 = sub_100011C2C(0, *(v423 + 2) + 1, 1, v423);
          }

          v432 = *(v423 + 2);
          v431 = *(v423 + 3);
          if (v432 >= v431 >> 1)
          {
            v423 = sub_100011C2C((v431 > 1), v432 + 1, 1, v423);
          }

          *(v423 + 2) = v432 + 1;
          v425 = &v423[8 * v432];
          *(v425 + 8) = v426;
          v425[36] = v427;
          v425[37] = 3;
        }

        v422 += 3;
      }

      while (v422 != 24);
      *(v564 + 16) = v423;
      swift_setDeallocating();
      swift_deallocClassInstance();
      v458 = v560;
      Logger.init(subsystem:category:)();

      v459 = Logger.logObject.getter();
      v460 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v459, v460))
      {
        v461 = swift_slowAlloc();
        *&v565 = swift_slowAlloc();
        *&v826[0] = v565;
        *v461 = 136315138;
        swift_beginAccess();

        v462 = Array.description.getter();
        v464 = v463;

        v465 = sub_100002320(v462, v464, v826);

        *(v461 + 4) = v465;
        _os_log_impl(&_mh_execute_header, v459, v460, "Received preferred channels: %s", v461, 0xCu);
        sub_100002A00(v565);
      }

      (*v424)(v458, v566.i64[0]);
      v466 = v567;
      v467 = v568;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v484 = *(type metadata accessor for DriverEvent(0) - 8);
      v485 = (*(v484 + 80) + 32) & ~*(v484 + 80);
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_100480F40;
      swift_beginAccess();
      *&v826[0] = *(v564 + 16);
      sub_1000B247C(v826);
      memcpy((v172 + v485), v826, 0x16AuLL);
      swift_storeEnumTagMultiPayload();

      v442 = v467;
      v443 = v466;
      goto LABEL_181;
    case 200:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000ADCF0(v46, v47, v826);
      if (BYTE8(v826[2]))
      {
        goto LABEL_213;
      }

      v825[0] = v826[0];
      v825[1] = v826[1];
      v825[2].i64[0] = *&v826[2];
      v298 = sub_100119A30(v825);
      v49 = v564;
      if (!v298)
      {
        goto LABEL_214;
      }

      v300 = v298;
      v301 = v299;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v302 = *(type metadata accessor for DriverEvent(0) - 8);
      v303 = (*(v302 + 80) + 32) & ~*(v302 + 80);
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_100480F40;
      v304 = v172 + v303;
      *v304 = v300;
      *(v304 + 8) = v301;
      type metadata accessor for DriverEvent.AWDL(0);
LABEL_179:
      swift_storeEnumTagMultiPayload();
LABEL_180:
      swift_storeEnumTagMultiPayload();
      v442 = v46;
      v443 = v47;
LABEL_181:
      sub_1000124C8(v442, v443);
      return v172;
    case 215:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      v56 = sub_10000AE64(v46, v47, sub_100012368);
      v49 = v564;
      if ((v56 & 0x1000000000000) != 0)
      {
        goto LABEL_214;
      }

      v57 = v56;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v58 = *(type metadata accessor for DriverEvent(0) - 8);
      v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100480F40;
      v61 = v60 + v59;
      *v61 = v57 & 0xFFFFFFFFFFFFLL;
      *(v61 + 24) = 0u;
      *(v61 + 8) = 0u;
      *(v61 + 40) = 0;
      v62 = 9;
LABEL_154:
      *(v61 + 41) = v62;
LABEL_155:
      swift_storeEnumTagMultiPayload();
      v111 = v46;
LABEL_156:
      v112 = v47;
LABEL_206:
      sub_1000124C8(v111, v112);
      return v60;
    case 225:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      v444 = sub_1000ADEE8(v46, v47, sub_10003462C);
      v49 = v564;
      if ((v444 & 0x100000000) != 0)
      {
        goto LABEL_214;
      }

      if (v444 >= 4)
      {
        v445 = 1;
      }

      else
      {
        v445 = 0x2010001u >> (8 * v444);
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v446 = *(type metadata accessor for DriverEvent(0) - 8);
      v447 = (*(v446 + 80) + 32) & ~*(v446 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100480F40;
      LOBYTE(v826[0]) = v445;
      sub_1000B2470(v826);
      memcpy((v44 + v447), v826, 0x16AuLL);
      goto LABEL_187;
    case 234:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      v379 = sub_1000AE22C(v46, v47, sub_1002AB53C);
      v49 = v564;
      if (v380)
      {
        goto LABEL_214;
      }

      v566.i64[0] = HIDWORD(v379);
      v381 = v379;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v382 = *(type metadata accessor for DriverEvent(0) - 8);
      v383 = (*(v382 + 80) + 32) & ~*(v382 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100480F40;
      v384 = v52 + v383;
      *(v52 + v383) = v381;
      v385 = enum case for DispatchTimeInterval.milliseconds(_:);
      v386 = type metadata accessor for DispatchTimeInterval();
      v387 = *(*(v386 - 8) + 104);
      v387(v384, v385, v386);
      v388 = *(type metadata accessor for AWDLIdleActivity(0) + 20);
      *(v384 + v388) = v566.i64[0];
      v387(v384 + v388, v385, v386);
      type metadata accessor for DriverEvent.AWDL(0);
LABEL_150:
      swift_storeEnumTagMultiPayload();
LABEL_151:
      swift_storeEnumTagMultiPayload();
      sub_1000124C8(v46, v47);
      return v52;
    case 243:
      v47 = v567;
      v46 = v568;
      sub_10000AB0C(v568, v567);
      sub_1000ADAA8(v46, v47, v826);
      if (BYTE14(v826[3]) == 2)
      {
        goto LABEL_213;
      }

      v307 = WORD6(v826[3]);
      v308 = DWORD2(v826[3]);
      v309 = BYTE14(v826[3]) & 1;
      v566.i32[0] = BYTE8(v826[4]) & 1;
      LODWORD(v565) = BYTE9(v826[4]) & 1;
      LODWORD(v564) = BYTE7(v826[4]) & 1;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v310 = *(type metadata accessor for DriverEvent(0) - 8);
      v311 = v47;
      v312 = (*(v310 + 80) + 32) & ~*(v310 + 80);
      v27 = swift_allocObject();
      *(v27 + 1) = xmmword_100480F40;
      v313 = &v27[v312];
      v314 = v826[1];
      *v313 = v826[0];
      *(v313 + 1) = v314;
      *(v313 + 2) = v826[2];
      *(v313 + 6) = *&v826[3];
      *(v313 + 14) = v308;
      *(v313 + 30) = v307;
      v313[62] = v309;
      *v315.i8 = vand_s8(*(&v826[3] + 15), 0x101010101010101);
      v315.i64[1] = v315.i64[0];
      *(v313 + 63) = vqtbl1_s8(v315, 0x607050403020100);
      v313[71] = v566.i8[0];
      v313[72] = v565;
      v313[73] = v564;
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v316 = v568;
      v317 = v311;
      goto LABEL_132;
    default:
      return result;
  }
}

uint64_t sub_10000AAB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AB0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_10000AB60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v4 = v4;
        goto LABEL_7;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_8:
    sub_10000B02C();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v4 < 803)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v10 = a3;
    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      __DataStorage._length.getter();
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v14))
    {
      v15 = v11 - v14 + v13;
      __DataStorage._length.getter();
      if (!v15)
      {
        goto LABEL_25;
      }

LABEL_18:
      v20 = *(v15 + 12);
      memcpy(__dst, (v15 + 14), sizeof(__dst));
      *v10 = *v15;
      *(v10 + 8) = *(v15 + 8);
      *(v10 + 12) = v20;
      return memcpy((v10 + 14), __dst, 0x315uLL);
    }

    goto LABEL_22;
  }

  v16 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = a3;
  v17 = __DataStorage._bytes.getter();
  if (!v17)
  {
LABEL_26:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v19))
  {
LABEL_23:
    __break(1u);
  }

  v15 = v16 - v19 + v18;
  result = __DataStorage._length.getter();
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DNSRecords.SRV(uint64_t a1)
{
  result = qword_10058EF68;
  if (!qword_10058EF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000AD84(_BYTE *a1, _BYTE *a2)
{
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_10000AE44(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_10000AE44(unint64_t result)
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

unint64_t sub_10000AE64(unint64_t result, unint64_t a2, uint64_t (*a3)(unint64_t))
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 != 6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (BYTE6(a2) != 6)
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = a3(result);
      v9 = 0;
      v10 = v8 & 0xFFFFFFFFFFFFLL;
      return v10 | (v9 << 48);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 6)
      {
        goto LABEL_11;
      }

LABEL_12:
      v10 = 0;
      v9 = 1;
      return v10 | (v9 << 48);
    }
  }

  __break(1u);
  return result;
}

void *sub_10000AF20@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v7 = result[2];
    v6 = result[3];
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    LODWORD(v5) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v5 = v5;
LABEL_7:
      if (v5 == 803)
      {
        sub_10000AB60(result, a2, v10);
        memcpy(__dst, v10, 0x323uLL);
        sub_1000114C0(__dst);
        memcpy(__src, __dst, sizeof(__src));
        return memcpy(a3, __src, 0x324uLL);
      }

LABEL_9:
      sub_1000B274C(__src);
      return memcpy(a3, __src, 0x324uLL);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000AFF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000B02C()
{
  result = qword_100595280;
  if (!qword_100595280)
  {
    result = swift_getWitnessTable("a%\n", &type metadata for WiFiError, v0, v1);
    atomic_store(result, &qword_100595280);
  }

  return result;
}

void sub_10000B08C(void *a1, void (*a2)(id *), uint64_t a3, char a4)
{
  v7 = *v4;
  v8 = (v4 + 8);
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = *(v4 + 40);
  v14 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v36 = a1;
      sub_10000C060(a2, a3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1003A72D4(0, v9[2] + 1, 1, v9);
      }

      v20 = v9[2];
      v19 = v9[3];
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1003A72D4((v19 > 1), v20 + 1, 1, v9);
      }

      v9[2] = v20 + 1;
      v21 = &v9[4 * v20];
      v21[4] = v36;
      v21[5] = a2;
      v21[6] = a3;
      *(v21 + 56) = a4 & 1;
      v18 = v11 | 0x8000000000000000;
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (!v14)
  {
    v35 = a1;
    sub_10000C060(a2, a3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1003A72D4(0, v9[2] + 1, 1, v9);
    }

    v16 = v9[2];
    v15 = v9[3];
    if (v16 >= v15 >> 1)
    {
      v9 = sub_1003A72D4((v15 > 1), v16 + 1, 1, v9);
    }

    v9[2] = v16 + 1;
    v17 = &v9[4 * v16];
    v17[4] = v35;
    v17[5] = a2;
    v17[6] = a3;
    *(v17 + 56) = a4 & 1;
    v18 = v11;
LABEL_14:
    *v4 = v7;
    *(v4 + 8) = v9;
    *(v4 + 16) = v10;
    *(v4 + 24) = v18;
    *(v4 + 32) = v12;
    *(v4 + 40) = v13;
    return;
  }

  v41 = *v4;
  if (!*(v7 + 16))
  {
LABEL_21:
    sub_10000B02C();
    v30 = swift_allocError();
    *v31 = xmmword_100481800;
    *(v31 + 16) = 1;
    sub_1002CEBBC(v30, a2, a3, a4 & 1);

    return;
  }

  v37 = v4;

  v22 = sub_10000B448(a1);
  if ((v23 & 1) == 0)
  {
    sub_10000BCEC(v7, v9, v10, v11, v12, v13);
    goto LABEL_21;
  }

  v24 = v22;
  v25 = v12;
  v26 = *(v7 + 36);
  sub_10000BCEC(v7, v9, v10, v11, v25, v13);

  v27 = v40 - 1;
  if (__OFSUB__(v40, 1))
  {
    __break(1u);
  }

  else
  {
    if (v40 == 1)
    {
      sub_10000BDAC(&v40, v24, v26);

      v29 = v41;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v7;
      sub_1003E1968(v27, a1, isUniquelyReferenced_nonNull_native);
      v29 = v40;
    }

    if (*(v29 + 16))
    {
      *v37 = v29;
      *v8 = 0;
      v8[1] = 0;
      *(v37 + 24) = xmmword_1004AECA0;
      *(v37 + 40) = 0;
      v40 = 0;
      a2(&v40);
    }

    else
    {

      sub_10005DC58(&unk_100598780, &qword_1004AF198);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100480F40;
      *(v33 + 32) = a1;
      *(v33 + 40) = a2;
      *(v33 + 48) = a3;
      *(v33 + 56) = a4 & 1;
      *v37 = _swiftEmptyArrayStorage;
      *(v37 + 8) = v33;
      *(v37 + 16) = xmmword_1004AECB0;
      *(v37 + 32) = 0;
      *(v37 + 40) = -1;
      v34 = a1;
      sub_10000C060(a2, a3);
    }
  }
}

unint64_t sub_10000B448(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000B4D4(a1, v4);
}

uint64_t sub_10000B48C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000B4D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for XPCSession(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10000B598(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v10 = qword_100594E48;
  v11 = v7[10];
  v8[2] = v11;
  v12 = v7[11];
  v8[3] = v12;
  v13 = v7[12];
  v8[4] = v13;
  v14 = v7[13];
  v8[5] = v14;
  v15 = v7[14];
  v8[6] = v15;
  v35 = v9;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  swift_beginAccess();
  v16 = swift_allocObject();
  *&v17 = v11;
  *(&v17 + 1) = v12;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v33 = v18;
  v34 = v17;
  *(v16 + 16) = v17;
  *(v16 + 32) = v18;
  *(v16 + 48) = v15;
  *(v16 + 56) = sub_10000EC90;
  *(v16 + 64) = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v5 + v10);
  v20 = v41;
  *(v5 + v10) = 0x8000000000000000;
  sub_10000B8DC(a1);
  v22 = *(v20 + 16);
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v21;
    type metadata accessor for WiFiP2PSPITransactionType(255);
    v39[0] = v34;
    v39[1] = v33;
    v40 = v15;
    _s16P2PActivityStateOMa(255, v39);
    sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType, byte_1004AE430);
    type metadata accessor for _NativeDictionary();
    v26 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24);
    v27 = v41;
    if (!v26)
    {
      v28 = a1;
      *(v5 + v10) = v41;
      if (v25)
      {
LABEL_8:
        sub_10000B08C(a2, sub_1000104E0, v35, 0);
        v31 = v30;
        swift_endAccess();

        sub_10000C068(v28, v31);
      }

LABEL_7:
      (*(v16 + 56))(v39);
      v41 = v28;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    v28 = a1;
    sub_10000B8DC(a1);
    if ((v25 & 1) == (v29 & 1))
    {
      *(v5 + v10) = v27;
      if (v25)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10000B924()
{
  _StringGuts.grow(_:)(20);

  if (*(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID);
    v2 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8);
  }

  else
  {
    v2 = 0x80000001004BF150;
    v1 = 0xD000000000000012;
  }

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 58;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  if (*(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_processName + 8))
  {
    v5 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_processName);
    v6 = *(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_processName + 8);
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) processIdentifier];
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v7;
  }

  v8._countAndFlagsBits = v5;
  v8._object = v6;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  type metadata accessor for UUID();
  sub_10000BAD0();
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 93;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0x6973736553435058;
}

unint64_t sub_10000BAD0()
{
  result = qword_100597520;
  if (!qword_100597520)
  {
    v3 = type metadata accessor for UUID();
    result = swift_getWitnessTable(&protocol conformance descriptor for UUID, v3, v0, v1);
    atomic_store(result, &qword_100597520);
  }

  return result;
}

uint64_t sub_10000BB28(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058B780, &qword_100480AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000BBB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10000BC00(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return sub_10000BC68(a1, v2);
}

unint64_t sub_10000BC68(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_10000BCEC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v8 = a4;
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return;
    }
  }

  else if (v10)
  {

    return;
  }

  sub_10000FF64(a3, v8);

  sub_10000FF64(a5, v6);
}

void sub_10000BDAC(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10046B0EC();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    *a1 = *(*(v9 + 56) + 8 * a2);
    sub_10000BED4(a2, v9);
    *v4 = v9;
    return;
  }

LABEL_10:
  __break(1u);
}

void *sub_10000BE7C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_10000BED4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_10000C068(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = a2;
  v7 = *v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v8 - 8);
  __chkstk_darwin();
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v53 = v11;
    v55 = v12;
    v15 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v63 = sub_10000D3C8;
    v64 = v17;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v54 = &v61;
    v61 = sub_10000C8B8;
    v62 = &unk_100573CA0;
    v52 = v7[10];
    *(v17 + 16) = v52;
    v51 = v7[11];
    *(v17 + 24) = v51;
    v49 = v7[12];
    *(v17 + 32) = v49;
    v48 = v7[13];
    *(v17 + 40) = v48;
    v50 = v7[14];
    *(v17 + 48) = v50;
    *(v17 + 56) = v16;
    *(v17 + 64) = a1;
    *(v17 + 72) = a2;
    v18 = _Block_copy(&aBlock);
    v47 = a2;
    v19 = v18;
    v20 = v15;

    static DispatchQoS.unspecified.getter();
    *&v57[0] = _swiftEmptyArrayStorage;
    v21 = sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v42[1] = v3;
    v46 = v21;
    v43 = a1;
    v45 = sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    v44 = sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    v22 = *(v56 + 8);
    v56 += 8;
    v22(v10, v8);
    v23 = *(v55 + 8);
    v55 += 8;
    v24 = v53;
    v23(v14, v53);

    v25 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *&v28 = v52;
    *(&v28 + 1) = v51;
    *&v29 = v49;
    *(&v29 + 1) = v48;
    *(v27 + 16) = v28;
    *(v27 + 32) = v29;
    *(v27 + 48) = v50;
    *(v27 + 56) = v26;
    *(v27 + 64) = v47;
    *(v27 + 72) = v43;
    v63 = sub_10000DFE4;
    v64 = v27;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_10000C8B8;
    v62 = &unk_100573CF0;
    v30 = _Block_copy(&aBlock);
    v31 = v25;

    static DispatchQoS.unspecified.getter();
    *&v57[0] = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    v22(v10, v8);
    v23(v14, v24);
  }

  else
  {
    v32 = qword_100594E48;
    swift_beginAccess();
    if (*(*(v3 + v32) + 16))
    {
      sub_10000B8DC(a1);
      if (v33)
      {
        type metadata accessor for WiFiP2PSPITransactionType(0);
        v34 = v7[14];

        v35 = *(v7 + 6);
        v57[0] = *(v7 + 5);
        v57[1] = v35;
        v58 = v34;
        _s16P2PActivityStateOMa(0, v57);
        sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType, byte_1004AE430);
        Dictionary.subscript.getter();

        v36 = aBlock;
        v37 = v60;
        v38 = v61;
        v39 = v62;
        v40 = v63;
        v41 = v64;
        if (v62 >> 62 == 3 && !v64 && v62 == 0xC000000000000000 && !(v60 | aBlock | v61 | v63))
        {
          swift_beginAccess();
          type metadata accessor for Dictionary();
          Dictionary.remove(at:)();
          swift_endAccess();
          v36 = aBlock;
          v37 = v60;
          v38 = v61;
          v39 = v62;
          v40 = v63;
          v41 = v64;
        }

        sub_10000BCEC(v36, v37, v38, v39, v40, v41);
      }
    }
  }
}

uint64_t sub_10000C780()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10000C7B8()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000C8B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000C8FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C90C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C92C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C93C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C94C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C95C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C96C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C97C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C98C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *OS_dispatch_queue.nan.unsafeMutableAddressor()
{
  if (qword_10058AA28 != -1)
  {
    swift_once();
  }

  return &static OS_dispatch_queue.nan;
}

uint64_t sub_10000CADC(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10005DD04(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CB24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10005DD04(a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CB78(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a6;
  v70 = a7;
  v67 = a4;
  v68 = a5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v65 = a2;
    v62 = v14;
    v63 = v15;
    v61 = v16;
    v60 = result;
    v64 = a1;
    v59 = a8;
    v66 = a3;
    if (a2 != 16)
    {
      sub_10000B02C();
      v30 = swift_allocError();
      *v31 = xmmword_100481800;
      *(v31 + 16) = 1;
      swift_willThrow();
      v78 = v30;
      swift_errorRetain();
      sub_10005DC58(&qword_10058C830, &qword_1004821F0);
      if (swift_dynamicCast())
      {
        if (v74 == 1)
        {
          if (aBlock == 2)
          {

            sub_10000B02C();
            v30 = swift_allocError();
            *v33 = xmmword_100481800;
            v34 = 1;
            *(v33 + 16) = 1;
            swift_errorRetain();

LABEL_30:
            v50 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
            v51 = swift_allocObject();
            v52 = v68;
            *(v51 + 16) = v67;
            *(v51 + 24) = v52;
            v53 = v70;
            *(v51 + 32) = v69;
            *(v51 + 40) = v53;
            *(v51 + 48) = v59;
            *(v51 + 56) = a1;
            *(v51 + 64) = v65;
            *(v51 + 72) = v66;
            *(v51 + 80) = v30;
            *(v51 + 88) = v34;
            v76 = sub_10000F480;
            v77 = v51;
            aBlock = _NSConcreteStackBlock;
            v73 = 1107296256;
            v74 = sub_10000C8B8;
            v75 = &unk_100573DE0;
            v54 = _Block_copy(&aBlock);
            v55 = v50;

            static DispatchQoS.unspecified.getter();
            v78 = _swiftEmptyArrayStorage;
            sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            v56 = v18;
            sub_10005DC58(&unk_100595270, &unk_1004AEC80);
            sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
            v57 = v62;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v54);

            sub_10000EBB8(v30, v34);

            (*(v71 + 8))(v57, v12);
            (*(v61 + 8))(v56, v63);
          }
        }

        else
        {
          sub_1000B2594(aBlock, v73, v74);
        }
      }

      swift_errorRetain();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v37 = 136315650;
        if (v66 == 1)
        {
          v39 = 0x6574617669746361;
        }

        else
        {
          v39 = 0x6176697463616564;
        }

        if (v66 == 1)
        {
          v40 = 0xE800000000000000;
        }

        else
        {
          v40 = 0xEA00000000006574;
        }

        v41 = v12;
        v42 = sub_100002320(v39, v40, &aBlock);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2080;
        v43 = WiFiP2PSPITransactionType.description.getter(v65);
        v45 = sub_100002320(v43, v44, &aBlock);

        *(v37 + 14) = v45;
        v12 = v41;
        *(v37 + 22) = 2112;
        swift_errorRetain();
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 24) = v46;
        *v38 = v46;
        _os_log_impl(&_mh_execute_header, v35, v36, "Failed to %s transaction %s because %@", v37, 0x20u);
        sub_10000BB28(v38);

        swift_arrayDestroy();
      }

      swift_errorRetain();
      v34 = 1;
LABEL_29:
      a1 = v64;
      goto LABEL_30;
    }

    v20 = sub_10000EC3C(sub_10001BDD0);
    if (a3 == 1)
    {
      if (v20)
      {
        sub_10040CFF0(16, v21);
      }

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_28;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136315138;
      v26 = WiFiP2PSPITransactionType.description.getter(16);
      v28 = sub_100002320(v26, v27, &aBlock);

      *(v24 + 4) = v28;
      v29 = "Successfully activated transaction for NAN: %s";
    }

    else
    {
      if (v20)
      {
        sub_10040D088(16);
      }

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_28;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136315138;
      v47 = WiFiP2PSPITransactionType.description.getter(16);
      v49 = sub_100002320(v47, v48, &aBlock);

      *(v24 + 4) = v49;
      v29 = "Successfully deactivated transaction for NAN: %s";
    }

    _os_log_impl(&_mh_execute_header, v22, v23, v29, v24, 0xCu);
    sub_100002A00(v25);

LABEL_28:

    v30 = 0;
    v34 = 0;
    goto LABEL_29;
  }

  return result;
}

uint64_t *OS_dispatch_queue.awdl.unsafeMutableAddressor()
{
  if (qword_10058AA30 != -1)
  {
    swift_once();
  }

  return &static OS_dispatch_queue.awdl;
}

uint64_t sub_10000D454(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a6;
  v55 = a8;
  v52 = a4;
  v53 = a5;
  v56 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v44[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v49 = v12;
    v50 = v11;
    v51 = a2;
    v20 = sub_10000EC3C(sub_10000DFFC);
    v47 = v14;
    v48 = v15;
    v46 = v16;
    v45 = a7;
    if (a2 == 1)
    {
      if (v20)
      {
        sub_100010E4C(v56);
      }

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_12;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      v25 = WiFiP2PSPITransactionType.description.getter(v56);
      v27 = sub_100002320(v25, v26, aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Successfully activated transaction for AWDL: %s", v23, 0xCu);
      sub_100002A00(v24);
    }

    else
    {
      if (v20)
      {
        sub_10000E094(v56);
      }

      v21 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v21, v28))
      {
        goto LABEL_12;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      v31 = WiFiP2PSPITransactionType.description.getter(v56);
      v33 = sub_100002320(v31, v32, aBlock);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v21, v28, "Successfully deactivated transaction for AWDL: %s", v29, 0xCu);
      sub_100002A00(v30);
    }

LABEL_12:

    v34 = v51;
    v35 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
    v36 = swift_allocObject();
    v37 = v53;
    *(v36 + 16) = v52;
    *(v36 + 24) = v37;
    v38 = v45;
    *(v36 + 32) = v54;
    *(v36 + 40) = v38;
    v39 = v56;
    *(v36 + 48) = v55;
    *(v36 + 56) = a1;
    *(v36 + 64) = v39;
    *(v36 + 72) = v34;
    *(v36 + 80) = 0;
    *(v36 + 88) = 0;
    aBlock[4] = sub_100010554;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100573D40;
    v40 = _Block_copy(aBlock);
    v41 = v35;

    static DispatchQoS.unspecified.getter();
    v57 = _swiftEmptyArrayStorage;
    sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
    v42 = v47;
    v43 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    sub_10000EBB8(0, 0);

    (*(v49 + 8))(v42, v43);
    (*(v46 + 8))(v18, v48);
  }

  return result;
}

uint64_t sub_10000DC44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v10 = qword_100594E48;
  v11 = v7[10];
  v8[2] = v11;
  v12 = v7[11];
  v8[3] = v12;
  v13 = v7[12];
  v8[4] = v13;
  v14 = v7[13];
  v8[5] = v14;
  v15 = v7[14];
  v8[6] = v15;
  v34 = v9;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  swift_beginAccess();
  v16 = swift_allocObject();
  *&v17 = v11;
  *(&v17 + 1) = v12;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v32 = v18;
  v33 = v17;
  *(v16 + 16) = v17;
  *(v16 + 32) = v18;
  *(v16 + 48) = v15;
  *(v16 + 56) = sub_10000EC8C;
  *(v16 + 64) = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v5 + v10);
  v20 = v40;
  *(v5 + v10) = 0x8000000000000000;
  sub_10000B8DC(a1);
  v22 = *(v20 + 16);
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v21;
    type metadata accessor for WiFiP2PSPITransactionType(255);
    v38[0] = v33;
    v38[1] = v32;
    v39 = v15;
    _s16P2PActivityStateOMa(255, v38);
    sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType, byte_1004AE430);
    type metadata accessor for _NativeDictionary();
    v26 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24);
    v27 = v40;
    if (!v26)
    {
      v28 = a1;
      *(v5 + v10) = v40;
      if (v25)
      {
LABEL_8:
        v30 = sub_10000ECAC(a2, sub_1000104B4, v34, 0);
        swift_endAccess();

        sub_10000C068(v28, v30);
      }

LABEL_7:
      (*(v16 + 56))(v38);
      v40 = v28;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    v28 = a1;
    sub_10000B8DC(a1);
    if ((v25 & 1) == (v29 & 1))
    {
      *(v5 + v10) = v27;
      if (v25)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10000DF9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_10000DFFC()
{
  v1 = *(*v0 + 176);
  v2 = *(v0 + v1);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100380CC8();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_10000E074(v4);
  }

  sub_10000E084(v2);
  return v3;
}

uint64_t sub_10000E074(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10000E084(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_10000E094(uint64_t a1)
{
  swift_beginAccess();
  sub_10000EAAC(a1);
  swift_endAccess();
  if (a1 > 16)
  {
    if (a1 == 17)
    {
      swift_unownedRetainStrong();
      sub_1003EFCC0(0);

      v4 = 17;
      goto LABEL_11;
    }

    if (a1 == 19)
    {
      swift_unownedRetainStrong();
      v3 = sub_10047575C(&off_100572AC0);
      sub_1003EED68(0, v3);

      v4 = 19;
LABEL_11:
      sub_10000E3C4(v4, 0);
      return;
    }

LABEL_8:
    v4 = a1;
    goto LABEL_11;
  }

  if (a1 != 15)
  {
    if (a1 == 16)
    {
      sub_10000B02C();
      swift_allocError();
      *v2 = xmmword_100481800;
      *(v2 + 16) = 1;
      swift_willThrow();
      return;
    }

    goto LABEL_8;
  }
}

unint64_t sub_10000E21C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_10000E3C4(uint64_t a1, int a2)
{
  v32 = a2;
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *(*v2 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v26 - v11;
  if (a1 == 9)
  {
    v13 = *(v4 + 96);
    swift_beginAccess();
    (*(v8 + 16))(v12, v2 + v13, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 112))(v32 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v8 + 8))(v12, AssociatedTypeWitness);
    return;
  }

  v30 = v6;
  v31 = v5;
  v27 = v32 & (a1 == 17);
  v15 = *(v4 + 96);
  swift_beginAccess();
  v29 = v8;
  v16 = v10;
  (*(v8 + 16))(v10, v2 + v15, AssociatedTypeWitness);
  v28 = WiFiP2PSPITransactionType.serviceIdentifier.getter(a1);
  v17 = WiFiAddress.zero.unsafeMutableAddressor();
  v18 = *v17;
  v19 = v17[1];
  v26 = *(v17 + 2) << 16;
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v20 = 4;
        goto LABEL_17;
      case 18:
        v20 = 6;
        goto LABEL_17;
      case 12:
        v20 = 5;
        goto LABEL_17;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_17;
  }

  if (a1 == 1)
  {
    v20 = 1;
    goto LABEL_17;
  }

  if (a1 == 2)
  {
    v20 = 2;
    goto LABEL_17;
  }

  if (a1 != 3)
  {
    goto LABEL_14;
  }

  v20 = 3;
LABEL_17:
  v21 = v32;
  v23 = v28;
  v22 = v29;
  v24 = swift_getAssociatedConformanceWitness();
  v25 = *(v24 + 72);
  v33 = 1;
  v25(v23, v18 | (v19 << 8) | v26, v20, 0, 0, v27, 0x1000000000000, v21 & 1, AssociatedTypeWitness, v24);
  (*(v22 + 8))(v16, AssociatedTypeWitness);
}

id WiFiP2PSPITransactionType.serviceIdentifier.getter(uint64_t a1)
{
  if ((a1 - 5) > 0xC)
  {
    return AWDLTrafficRegistrationServiceCentralizedAirTimeSchedulerPolicy;
  }

  else
  {
    return **(&off_1005667D0 + a1 - 5);
  }
}

uint64_t sub_10000E778(uint64_t a1, uint64_t a2, int a3, __int16 a4, __int16 a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  memset(&v28[4], 0, 164);
  *v28 = 1;
  HIDWORD(v29) = 0;
  *&v28[168] = a8 & 1;
  *&v28[172] = sub_10000F23C(a6);
  LOWORD(v29) = a4;
  WORD1(v29) = a5;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  KeyPath = swift_getKeyPath();

  v19 = sub_10000F344(v15, v17, v28, KeyPath, 0x80uLL);

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v20 = 127;
  if (v19 < 0x7F)
  {
    v20 = v19;
  }

  *&v28[12] = v20;
  *&v28[144] = a3;
  *&v28[4] = a2;
  v28[6] = BYTE2(a2);
  v28[7] = BYTE3(a2);
  v28[8] = BYTE4(a2);
  v28[9] = BYTE5(a2);
  if ((a7 & 0x1000000000000) == 0)
  {
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1004817D0;
    *(v21 + 32) = a7;
    *(v21 + 34) = BYTE2(a7);
    *(v21 + 35) = BYTE3(a7);
    *(v21 + 36) = BYTE4(a7);
    *(v21 + 37) = BYTE5(a7);
    v22 = sub_10002D874(v21);
    v24 = v23;

    *&v30[0] = v22;
    *(&v30[0] + 1) = v24;
    sub_1000BA0A4();
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(*&v30[0], *(&v30[0] + 1));
  }

  v30[8] = *&v28[128];
  v30[9] = *&v28[144];
  v30[10] = *&v28[160];
  v31 = v29;
  v30[4] = *&v28[64];
  v30[5] = *&v28[80];
  v30[6] = *&v28[96];
  v30[7] = *&v28[112];
  v30[0] = *v28;
  v30[1] = *&v28[16];
  v30[2] = *&v28[32];
  v30[3] = *&v28[48];
  v25 = *(v9 + 16);
  v26 = *(v9 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0xA4uLL, v30, v32, 0, v25, v26);
}

uint64_t sub_10000EAAC(Swift::UInt a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10037DA54();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_10000E21C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_10000EBB8(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10000EC00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EC3C(uint64_t (*a1)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = a1();

    return v3;
  }

  return result;
}

double sub_10000EC90@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = -2.0;
  *(a1 + 24) = xmmword_1004AECC0;
  *(a1 + 40) = 0;
  return result;
}

unint64_t sub_10000ECAC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(isUniquelyReferenced_nonNull_native) = a4;
  v10 = *(type metadata accessor for Logger() - 8);
  __chkstk_darwin();
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v15 = *(v5 + 8);
  v16 = *(v5 + 16);
  v17 = *(v5 + 24);
  v18 = *(v5 + 32);
  v19 = *(v5 + 40);
  v20 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v70 = *(v5 + 8);
      v36 = v16;
      v37 = v18;
      v69 = v19;
      v68 = a1;
      sub_10000C060(a2, a3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1003A72D4(0, v14[2] + 1, 1, v14);
      }

      v39 = v14[2];
      v38 = v14[3];
      v40 = v70;
      if (v39 >= v38 >> 1)
      {
        v60 = sub_1003A72D4((v38 > 1), v39 + 1, 1, v14);
        v40 = v70;
        v42 = v36;
        v41 = v37;
        v14 = v60;
      }

      else
      {
        v41 = v37;
        v42 = v36;
      }

      result = 0;
      v14[2] = v39 + 1;
      v43 = &v14[4 * v39];
      v43[4] = v68;
      v43[5] = a2;
      v43[6] = a3;
      *(v43 + 56) = isUniquelyReferenced_nonNull_native & 1;
      *v5 = v14;
      *(v5 + 8) = v40;
      *(v5 + 16) = v42;
      *(v5 + 24) = v17 | 0x8000000000000000;
      *(v5 + 32) = v41;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  LODWORD(v68) = isUniquelyReferenced_nonNull_native;
  if (!v20)
  {
    v70 = v15;
    v64 = v16;
    v65 = v18;
    v69 = v19;
    v66 = a3;
    v67 = v11;
    Logger.init(subsystem:category:)();
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v63 = a2;
      v25 = v24;
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v21;
      *v26 = v21;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "%@ activationInProgress ", v25, 0xCu);
      sub_10000BB28(v26);

      a2 = v63;
    }

    (*(v10 + 8))(v13, v67);
    v28 = v21;
    v29 = v68;
    v30 = v66;
    sub_10000C060(a2, v66);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1003A72D4(0, v14[2] + 1, 1, v14);
    }

    v32 = v14[2];
    v31 = v14[3];
    if (v32 >= v31 >> 1)
    {
      v14 = sub_1003A72D4((v31 > 1), v32 + 1, 1, v14);
    }

    result = 0;
    v14[2] = v32 + 1;
    v34 = &v14[4 * v32];
    v34[4] = v28;
    v34[5] = a2;
    v34[6] = v30;
    *(v34 + 56) = v29 & 1;
    v35 = v70;
    *v5 = v14;
    *(v5 + 8) = v35;
    *(v5 + 16) = v64;
    *(v5 + 24) = v17;
    *(v5 + 32) = v65;
LABEL_16:
    *(v5 + 40) = v69;
    return result;
  }

  v44 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v14;
  result = sub_10000B448(a1);
  v46 = v14[2];
  v47 = (v45 & 1) == 0;
  v48 = __OFADD__(v46, v47);
  v49 = v46 + v47;
  if (v48)
  {
    __break(1u);
    goto LABEL_30;
  }

  a2 = v45;
  if (v14[3] >= v49)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    sub_100011258(v49, isUniquelyReferenced_nonNull_native);
    v14 = v71;
    result = sub_10000B448(a1);
    if ((a2 & 1) != (v50 & 1))
    {
      type metadata accessor for XPCSession(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_21:
      sub_10005DC58(&unk_100598780, &qword_1004AF198);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100480F40;
      *(v51 + 32) = a1;
      *(v51 + 40) = a2;
      *(v51 + 48) = a3;
      *(v51 + 56) = isUniquelyReferenced_nonNull_native & 1;
      *v5 = v51;
      *(v5 + 8) = _swiftEmptyArrayStorage;
      *(v5 + 16) = xmmword_1004AEC90;
      *(v5 + 32) = 0;
      *(v5 + 40) = -1;
      v52 = a1;
      sub_10000C060(a2, a3);
      return 1;
    }
  }

  if (a2)
  {
    goto LABEL_26;
  }

LABEL_24:
  v14[(result >> 6) + 8] |= 1 << result;
  *(v14[6] + 8 * result) = a1;
  *(v14[7] + 8 * result) = 0;
  v53 = v14[2];
  v48 = __OFADD__(v53, 1);
  v54 = v53 + 1;
  if (v48)
  {
    __break(1u);
  }

  else
  {
    v55 = result;
    v14[2] = v54;
    v56 = a1;
    result = v55;
LABEL_26:
    while (1)
    {
      v57 = v14[7];
      v58 = *(v57 + 8 * result);
      v48 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (!v48)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      v61 = result;
      sub_10046B0EC();
      result = v61;
      v14 = v71;
      if ((a2 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    *(v57 + 8 * result) = v59;
    *v5 = v14;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = xmmword_1004AECA0;
    *(v5 + 40) = 0;
    v71 = 0;
    v44(&v71);
    return 0;
  }

  return result;
}

__n128 sub_10000F228(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000F23C(uint64_t a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 10;
      if ((a1 & 0x100000000) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v1 = 2;
      if ((a1 & 0x100000000) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      v1 = 0;
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v1 = 8;
    if ((a1 & 0x100000000) != 0)
    {
LABEL_4:
      v1 = v1 | 0x20;
    }
  }

LABEL_5:
  if ((a1 & 0x80000000) == 0)
  {
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v1 = v1 | 0x80;
    if ((a1 & 0x20000000) == 0)
    {
      return v1;
    }

    return v1 | 0x200;
  }

  v1 = v1 | 0x40;
  if ((a1 & 0x40000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((a1 & 0x20000000) != 0)
  {
    return v1 | 0x200;
  }

  return v1;
}

uint64_t sub_10000F2A4@<X0>(const char *a1@<X0>, size_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = swift_modifyAtWritableKeyPath();
  v8 = strlcpy(v7, a1, v5);
  result = v6(&v10, 0);
  *a2 = v8;
  return result;
}

uint64_t sub_10000F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_7;
  }

  v5 = a5;
  if ((a2 & 0x2000000000000000) != 0)
  {
    *__source = a1;
    v15 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = swift_modifyAtWritableKeyPath();
    v5 = strlcpy(v11, __source, v5);
    v10(v13, 0);
    return v5;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_7:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v6)
    {
      return v16;
    }
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFFFFLL;
    v8 = swift_modifyAtWritableKeyPath();
    v5 = strlcpy(v9, (v7 + 32), v5);
    v8(v13, 0);
  }

  return v5;
}

uint64_t sub_10000F474(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_10000F51C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(void, uint64_t, void, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v22 = result;
  v43 = a3;
  v44 = a5;
  v45 = a4;
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a7;
  v23[4] = a8;
  v23[5] = a9;
  v23[6] = a10;
  v24 = qword_100594E48;
  swift_beginAccess();
  v25 = swift_allocObject();
  v26 = a8;
  v27 = v25;
  v25[2] = a6;
  v25[3] = a7;
  v42 = v26;
  v25[4] = v26;
  v25[5] = a9;
  v25[6] = a10;
  v25[7] = a13;
  v25[8] = v23;
  isUnique = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v22 + v24);
  v28 = v48;
  *(v22 + v24) = 0x8000000000000000;
  v46 = a2;
  sub_10000B8DC(a2);
  v30 = *(v28 + 16);
  v31 = (v29 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    __break(1u);
    goto LABEL_12;
  }

  v40 = v29;
  type metadata accessor for WiFiP2PSPITransactionType(255);
  v47[0] = a6;
  v47[1] = a7;
  v47[2] = v42;
  v47[3] = a9;
  v47[4] = a10;
  v33 = _s16P2PActivityStateOMa(255, v47);
  sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType, byte_1004AE430);
  type metadata accessor for _NativeDictionary();
  v34 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v32);
  v35 = v48;
  if (v34)
  {
    v36 = v46;
    sub_10000B8DC(v46);
    v38 = v40;
    if ((v40 & 1) == (v37 & 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v36 = v46;
  v38 = v40;
LABEL_7:
  *(v22 + v24) = v35;
  if ((v38 & 1) == 0)
  {
    (v27[7])(v47);
    v48 = v36;
    _NativeDictionary._insert(at:key:value:)();
  }

  v39 = a14(v43, v45, v44 & 1, v33);
  swift_endAccess();
  sub_10000C068(v36, v39);
}

uint64_t sub_10000F7E8(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v59 = a5;
  v64 = a3;
  v7 = *(v5 + 24);
  if (v7 >> 62 == 2)
  {
    v8 = a4;
    v11 = *(v6 + 8);
    v58 = (v6 + 8);
    v12 = *(v6 + 16);
    v13 = *(v6 + 32);
    v14 = ~a2;
    v15 = *(v6 + 40);
    v60 = *v6;

    v62 = v11;

    sub_10000FF4C(v12, v7);
    v63 = v13;
    v61 = v15;
    sub_10000FF4C(v13, v15);
    if (v14)
    {
      sub_10000FF64(v12, v7);
      v16 = a1;
      v17 = a2;
    }

    else
    {
      v16 = v12;
      v17 = v7;
    }

    sub_10000FF4C(a1, a2);
    sub_10000FF4C(v16, v17);
    v18 = v63;
    v19 = v61;
    v20 = v17;
    if (v8 != 0xFF)
    {
      sub_10000FF64(v63, v61);
      v18 = v64;
      v19 = v8;
    }

    v21 = v62;
    if (v17 == 0xFF)
    {
      v23 = v18;
      v24 = v19;
      sub_10000FF4C(v64, v8);
    }

    else
    {
      if (v19 != 0xFF)
      {
        v53 = v12;
        v54 = v18;
        v57 = v19;
        v56 = v16;
        if (v17)
        {
          sub_10000FF4C(v64, v8);
          if (v57)
          {
            v22 = 1;
            v64 = v16;
            goto LABEL_17;
          }
        }

        else
        {
          sub_10000FF4C(v64, v8);
        }

        sub_10000FF64(v16, v17);
        v64 = 0;
        v22 = 0;
LABEL_17:
        v55 = v17;
        v26 = *(v62 + 16);
        if (v26)
        {
          v27 = (v62 + 56);
          do
          {
            v29 = *(v27 - 3);
            v30 = *(v27 - 2);
            v31 = *(v27 - 1);
            v32 = *v27;
            if (v22)
            {
              v28 = v29;
              sub_10000C060(v30, v31);
              sub_1002CEBBC(v64, v30, v31, v32);
            }

            else
            {
              v65[0] = 0;
              v33 = v29;
              sub_10000C060(v30, v31);
              v30(v65);
            }

            sub_100010500(v30, v31);
            v27 += 32;
            --v26;
          }

          while (v26);
          v34 = v60;
          sub_10000BCEC(v60, v62, v53, v7, v63, v61);
          *v6 = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = xmmword_1004AECC0;
          *(v6 + 40) = 0;
          if (v22)
          {
            *v6 = sub_1002DE67C(_swiftEmptyArrayStorage);
            v35 = v58;
            *v58 = 0;
            v35[1] = 0;
            *(v6 + 24) = xmmword_1004AECA0;
            *(v6 + 40) = 0;
            __chkstk_darwin();
            v36 = *(v59 + 32);
            v48 = *(v59 + 16);
            v49 = v36;
            v50 = *(v59 + 48);
            v51 = v6;
            sub_100448094(sub_1002DF69C, &v47, v34);
            v37 = *(v6 + 24);
            if (v37 >> 62 == 1)
            {
              v38 = *v6;
              v39 = *(v6 + 8);
              v40 = *(v6 + 16);
              v41 = *(v6 + 32);
              v42 = *(v6 + 40);
              v43 = *(*v6 + 16);
              sub_10000FF64(v54, v57);
              sub_10000FF64(v56, v55);

              sub_10000EBB8(v64, 1);
              if (!v43)
              {
                sub_10000BCEC(v38, v39, v40, v37, v41, v42);
                *v6 = _swiftEmptyArrayStorage;
                *(v6 + 8) = _swiftEmptyArrayStorage;
                *(v6 + 16) = xmmword_1004AECB0;
                *(v6 + 32) = 0;
                *(v6 + 40) = -1;
                return 2;
              }
            }

            else
            {
              sub_10000FF64(v54, v57);
              sub_10000FF64(v56, v55);

              sub_10000EBB8(v64, 1);
            }

            return 0;
          }
        }

        else
        {
          v34 = v60;
          sub_10000BCEC(v60, v62, v53, v7, v63, v61);
          *v6 = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = xmmword_1004AECC0;
          *(v6 + 40) = 0;
          if (v22)
          {
            if (*(v34 + 16))
            {
              sub_10000FF64(v54, v57);
              sub_10000FF64(v56, v55);

              sub_10000EBB8(v64, 1);
              result = 1;
              *v6 = v34;
              *(v6 + 8) = _swiftEmptyArrayStorage;
              *(v6 + 16) = xmmword_1004AEC90;
              *(v6 + 32) = 0;
              *(v6 + 40) = -1;
              return result;
            }

            sub_10000EBB8(v64, 1);

            sub_10000FF64(v56, v55);
            sub_10000FF64(v54, v57);
            return 0;
          }
        }

        v64 = &v52;
        v67 = v34;
        v66 = 0;
        __chkstk_darwin();
        v44 = *(v59 + 24);
        *&v48 = *(v59 + 16);
        *(&v48 + 1) = v44;
        v45 = *(v59 + 40);
        *&v49 = *(v59 + 32);
        *(&v49 + 1) = v45;
        v46 = *(v59 + 48);
        v51 = v6;

        sub_10005DC58(&qword_100595288, &qword_1004AF190);
        v65[0] = v48;
        v65[1] = v44;
        v65[2] = v49;
        v65[3] = v45;
        v65[4] = v46;
        _s16P2PActivityStateO14ActionRequiredOMa(0, v65);
        sub_10000CADC(&unk_100595290, &qword_100595288, &qword_1004AF190, &protocol conformance descriptor for [A]);
        Sequence.reduce<A>(_:_:)();
        sub_10000FF64(v54, v57);
        sub_10000FF64(v56, v55);

        swift_bridgeObjectRelease_n();
        return LOBYTE(v65[0]);
      }

      v23 = v18;
      v24 = -1;
      sub_10000FF4C(v64, v8);
      sub_10000FF64(v16, v20);
    }

    sub_10000BCEC(v60, v62, v12, v7, v63, v61);
    result = 0;
    *v6 = v60;
    *(v6 + 8) = v21;
    *(v6 + 16) = v16;
    *(v6 + 24) = v20 | 0x8000000000000000;
    *(v6 + 32) = v23;
    *(v6 + 40) = v24;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000FEC8(uint64_t result, uint64_t *a2, char a3, void *a4)
{
  v6 = *(v4 + 24);
  if (v6 >> 62 == 3)
  {
    v7 = !*(v4 + 40) && v6 == 0xC000000000000000;
    if (v7 && (*(v4 + 16) | *(v4 + 32) | *(v4 + 8) | *v4) == 0)
    {
      return 0;
    }
  }

  if (result)
  {
    v9 = a3 & 1;
    if (result == 1)
    {
      return sub_100010598(0, 0xFFuLL, a2, v9, a4);
    }

    else
    {
      return sub_10000F7E8(0, 0xFFuLL, a2, v9, a4);
    }
  }

  return result;
}

uint64_t sub_10000FF4C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10000F474(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10000FF64(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10000EBB8(result, a2 & 1);
  }

  return result;
}

void sub_10000FF94(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7, uint64_t (*a8)(void, __int128 *))
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  KeyPath = swift_getKeyPath();

  sub_10000F344(a5, a6, &v29, KeyPath, 0x10uLL);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(a1))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  LODWORD(v30) = a1;
  if (a4)
  {
    DWORD2(v30) = 0;
    goto LABEL_11;
  }

  v16 = a3 - a2;
  if (!a2)
  {
    v16 = 0;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if (HIDWORD(v16))
  {
    goto LABEL_23;
  }

  DWORD2(v30) = v16;
  if (a2)
  {
    v31 = a2;
    goto LABEL_12;
  }

LABEL_11:
  v31 = 0;
LABEL_12:
  if (a1 == 0xFFFFFFFF)
  {
    DWORD1(v30) = a7;
  }

  v17 = *(v8 + 24);
  os_unfair_lock_lock(*(v17 + 16));
  swift_beginAccess();
  v18 = *(v8 + 32);
  if (*(v18 + 16) && (v19 = sub_1000102E8(a5, a6), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
    v22 = *(v17 + 16);

    os_unfair_lock_unlock(v22);
    v23 = a8(*(v21 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_reference), &v29);
    if (v23)
    {
      v24 = v23;
      sub_10000B02C();
      swift_allocError();
      *v25 = v24;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    swift_endAccess();
    sub_10000B02C();
    swift_allocError();
    *v26 = xmmword_100481800;
    *(v26 + 16) = 1;
    swift_willThrow();
    os_unfair_lock_unlock(*(v17 + 16));
  }
}

uint64_t sub_100010254(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t sub_100010314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000103CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000103F0()
{

  sub_10000EBB8(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_100010434(uint64_t result, uint64_t a2, char a3, void *a4)
{
  v6 = *(v4 + 24);
  if (v6 >> 62 == 3)
  {
    v7 = !*(v4 + 40) && v6 == 0xC000000000000000;
    if (v7 && (*(v4 + 16) | *(v4 + 32) | *(v4 + 8) | *v4) == 0)
    {
      return 0;
    }
  }

  if (result)
  {
    v9 = a3 & 1;
    if (result == 1)
    {
      return sub_100010598(a2, v9, 0, 255, a4);
    }

    else
    {
      return sub_10000F7E8(a2, v9, 0, 255, a4);
    }
  }

  return result;
}

uint64_t sub_100010520(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100010530(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100010598(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void *a5)
{
  LODWORD(v73) = a4;
  v70 = a3;
  isUniquelyReferenced_nonNull_native = *(v5 + 8);
  v64 = (v5 + 8);
  v65 = a5;
  v7 = *v5;
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  if (v8 >> 62)
  {
    goto LABEL_52;
  }

  v14 = ~a2;

  v71 = isUniquelyReferenced_nonNull_native;

  sub_10000FF4C(v9, v8);
  v67 = v10;
  sub_10000FF4C(v10, v11);
  v15 = v11;
  v66 = v8;
  if (v14)
  {
    sub_10000FF64(v9, v8);
    v16 = a1;
    v8 = a2;
  }

  else
  {
    v16 = v9;
  }

  LOBYTE(v11) = v70;
  sub_10000FF4C(a1, a2);
  v68 = v8;
  sub_10000FF4C(v16, v8);
  v17 = v67;
  v18 = v15;
  if (v73 != 0xFF)
  {
    sub_10000FF64(v67, v15);
    v17 = v70;
    v18 = v73;
  }

  isUniquelyReferenced_nonNull_native = v68;
  if (v68 == 0xFF)
  {
    sub_10000FF4C(v70, v73);
LABEL_14:
    v19 = v71;
    sub_10000BCEC(v7, v71, v9, v66, v67, v15);
    result = 0;
    *v5 = v7;
    *(v5 + 8) = v19;
    *(v5 + 16) = v16;
    *(v5 + 24) = isUniquelyReferenced_nonNull_native;
    *(v5 + 32) = v17;
    *(v5 + 40) = v18;
    return result;
  }

  if (v18 == 0xFF)
  {
    sub_10000FF4C(v70, v73);
    sub_10000FF64(v16, v68);
    goto LABEL_14;
  }

  if ((v68 & 1) == 0)
  {
    sub_10000FF4C(v70, v73);
    goto LABEL_16;
  }

  sub_10000FF4C(v70, v73);
  if ((v18 & 1) == 0)
  {
LABEL_16:
    sub_10000FF64(v16, v68);
    v70 = 0;
    LODWORD(v73) = 0;
    goto LABEL_17;
  }

  LODWORD(v73) = 1;
  v70 = v16;
LABEL_17:
  v58 = v17;
  v59 = v18;
  v60 = v9;
  v61 = v15;
  v62 = v16;
  v63 = v5;
  v21 = *(v7 + 16);
  v72 = v7;
  v10 = 0;
  if (!v21)
  {
    v9 = &_swiftEmptyDictionarySingleton;
LABEL_36:
    if (v73)
    {
      v39 = *(v71 + 16);
      if (v39)
      {
        v8 = 0;
        v40 = v71 + 56;
        while (v8 < *(v71 + 16))
        {
          v41 = *(v40 - 24);
          v42 = *(v40 - 16);
          v43 = *(v40 - 8);
          v75 = 0;
          isUniquelyReferenced_nonNull_native = v41;
          sub_10000C060(v42, v43);
          v42(&v75);

          sub_100010500(v42, v43);
          ++v8;
          v40 += 32;
          if (v39 == v8)
          {
            goto LABEL_44;
          }
        }

        goto LABEL_49;
      }

LABEL_44:
      sub_10000FF64(v58, v59);
      sub_10000FF64(v62, v68);

      sub_10000EBB8(v70, 1);

      sub_10000BCEC(v7, v71, v60, v66, v67, v61);
      sub_100010520(v10, 0);
      result = 0;
      v53 = v63;
      *v63 = 0;
      v53[1] = 0;
      v53[2] = 0;
      *(v53 + 3) = xmmword_1004AECC0;
      *(v53 + 40) = 0;
    }

    else
    {
      v44 = v67;
      if (v9[2])
      {

        v45 = v71;
        sub_10000BCEC(v7, v71, v60, v66, v44, v61);
        v73 = &v57;
        v47 = v63;
        v46 = v64;
        *v63 = v9;
        *v46 = 0;
        v46[1] = 0;
        *(v47 + 3) = xmmword_1004AECA0;
        *(v47 + 40) = 0;
        v81 = v45;
        v74 = 0;
        __chkstk_darwin();
        v48 = v65[2];
        v49 = v65[3];
        v51 = v65[4];
        v50 = v65[5];
        v52 = v65[6];

        v70 = sub_10005DC58(&qword_100595288, &qword_1004AF190);
        v75 = v48;
        v76 = v49;
        v77 = v51;
        v78 = v50;
        v79 = v52;
        _s16P2PActivityStateO14ActionRequiredOMa(0, &v75);
        sub_10000CADC(&unk_100595290, &qword_100595288, &qword_1004AF190, &protocol conformance descriptor for [A]);
        Sequence.reduce<A>(_:_:)();

        sub_10000FF64(v62, v68);
        sub_10000FF64(v58, v59);

        swift_bridgeObjectRelease_n();
        sub_100010520(v10, 0);
        return v75;
      }

      else
      {

        sub_10000FF64(v58, v59);
        sub_10000FF64(v62, v68);

        v54 = v71;
        sub_10000BCEC(v7, v71, v60, v66, v67, v61);
        sub_100010520(v10, 0);
        v55 = v63;
        *v63 = _swiftEmptyArrayStorage;
        v55[1] = v54;
        *(v55 + 1) = xmmword_1004AECB0;
        v55[4] = 0;
        *(v55 + 40) = -1;
        return 2;
      }
    }

    return result;
  }

  v8 = 0;
  v22 = (v7 + 56);
  v9 = &_swiftEmptyDictionarySingleton;
  v69 = v21;
  while (v8 < *(v7 + 16))
  {
    v23 = *(v22 - 2);
    v7 = *(v22 - 1);
    LOBYTE(v11) = *v22;
    v24 = *(v22 - 3);
    isUniquelyReferenced_nonNull_native = v24;
    if (v73)
    {
      sub_10000C060(v23, v7);
      sub_1002CEBBC(v70, v23, v7, v11);

      sub_100010500(v23, v7);
      goto LABEL_20;
    }

    v25 = v24;
    sub_10000C060(v23, v7);
    sub_100010520(v10, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v9;
    v26 = sub_10000B448(v25);
    v28 = v9[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_47;
    }

    v10 = v27;
    if (v9[3] < v31)
    {
      sub_100011258(v31, isUniquelyReferenced_nonNull_native);
      isUniquelyReferenced_nonNull_native = type metadata accessor for XPCSession(0);
      v9 = v75;
      v26 = sub_10000B448(v25);
      if ((v10 & 1) != (v32 & 1))
      {
        goto LABEL_51;
      }

LABEL_28:
      if ((v10 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = v26;
    sub_10046B0EC();
    v26 = isUniquelyReferenced_nonNull_native;
    v9 = v75;
    if ((v10 & 1) == 0)
    {
LABEL_29:
      v9[(v26 >> 6) + 8] |= 1 << v26;
      *(v9[6] + 8 * v26) = v25;
      *(v9[7] + 8 * v26) = 0;
      v33 = v9[2];
      v30 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v30)
      {
        goto LABEL_50;
      }

      v9[2] = v34;
      isUniquelyReferenced_nonNull_native = v26;
      v35 = v25;
      v26 = isUniquelyReferenced_nonNull_native;
    }

LABEL_31:
    v36 = v9[7];
    v37 = *(v36 + 8 * v26);
    v30 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v30)
    {
      goto LABEL_48;
    }

    *(v36 + 8 * v26) = v38;

    v75 = 0;
    v23(&v75);

    sub_100010500(v23, v7);
    v10 = sub_10005D584;
    v21 = v69;
LABEL_20:
    ++v8;
    v22 += 32;
    v7 = v72;
    if (v21 == v8)
    {
      goto LABEL_36;
    }
  }

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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_52:
  v75 = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v81 = v75;
  v82 = v76;
  v56._object = 0x80000001004BEB10;
  v56._countAndFlagsBits = 0xD00000000000003DLL;
  String.append(_:)(v56);
  v75 = v7;
  v76 = isUniquelyReferenced_nonNull_native;
  v77 = v9;
  v78 = v8;
  v79 = v10;
  v80 = v11;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100010E4C(uint64_t a1)
{
  if (a1 > 16)
  {
    if (a1 == 17)
    {
      sub_10000E3C4(17, 1);
      if (v1)
      {
        return;
      }

      swift_unownedRetainStrong();
      sub_1003EFCC0(1);
    }

    else
    {
      if (a1 != 19)
      {
        goto LABEL_8;
      }

      swift_unownedRetainStrong();
      v4 = sub_10047575C(&off_100572A98);
      sub_1003EED68(1, v4);
    }
  }

  else if (a1 != 15)
  {
    if (a1 == 16)
    {
      sub_10000B02C();
      swift_allocError();
      *v3 = xmmword_100481800;
      *(v3 + 16) = 1;
      swift_willThrow();
      return;
    }

LABEL_8:
    sub_10000E3C4(a1, 1);
    if (v1)
    {
      return;
    }
  }

  swift_beginAccess();
  sub_100011004(&v5, a1);
  swift_endAccess();
}

uint64_t sub_100011004(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1000110FC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_1000110FC(Swift::UInt result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100470690(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_10037DA54();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100473440(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(result);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for WiFiP2PSPITransactionType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_100011258(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10005DC58(&qword_1005952A0, &qword_1004AF1A0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000114C8(uint64_t a1)
{
  if (*(a1 + 803))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

char *sub_1000114E4()
{
  v1 = v0[800];
  v50 = v0[801];
  memcpy(__dst, v0, sizeof(__dst));
  v2 = &__dst[v1];
  if (v1)
  {
    v3 = _swiftEmptyArrayStorage;
    v4 = __dst;
    while (1)
    {
      v6 = IEEE80211Frame.Management.Authentication.AuthenticationAlgorithm.rawValue.getter(*v4);
      if (qword_10058AA78 != -1)
      {
        swift_once();
      }

      v7 = off_100591860;
      if (*(off_100591860 + 2) && (v8 = static Hasher._hash(seed:bytes:count:)(), v9 = -1 << *(v7 + 32), v10 = v8 & ~v9, ((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10) & 1) != 0))
      {
        v11 = ~v9;
        while (*(v7[6] + 4 * v10) != v6)
        {
          v10 = (v10 + 1) & v11;
          if (((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v22 = 0;
        v23 = 3;
      }

      else
      {
LABEL_12:
        if (qword_10058AA80 != -1)
        {
          swift_once();
        }

        v12 = off_100591868;
        if (*(off_100591868 + 2) && (v13 = static Hasher._hash(seed:bytes:count:)(), v14 = -1 << *(v12 + 32), v15 = v13 & ~v14, ((*(v12 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v15) & 1) != 0))
        {
          v16 = ~v14;
          while (*(v12[6] + 4 * v15) != v6)
          {
            v15 = (v15 + 1) & v16;
            if (((*(v12 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v15) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          v22 = 1;
          v23 = 4;
        }

        else
        {
LABEL_19:
          if (qword_10058AA88 != -1)
          {
            swift_once();
          }

          v17 = off_100591870;
          if (!*(off_100591870 + 2))
          {
            goto LABEL_4;
          }

          v18 = static Hasher._hash(seed:bytes:count:)();
          v19 = -1 << v17[32];
          v20 = v18 & ~v19;
          if (((*&v17[((v20 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v20) & 1) == 0)
          {
            goto LABEL_4;
          }

          v21 = ~v19;
          while (*(*(v17 + 6) + 4 * v20) != v6)
          {
            v20 = (v20 + 1) & v21;
            if (((*&v17[((v20 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v20) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v22 = 2;
          v23 = 5;
        }
      }

      v51 = v22;
      v53 = v23;
      sub_1000276D8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100011C2C(0, *(v3 + 2) + 1, 1, v3);
      }

      v25 = *(v3 + 2);
      v24 = *(v3 + 3);
      if (v25 >= v24 >> 1)
      {
        v3 = sub_100011C2C((v24 > 1), v25 + 1, 1, v3);
      }

      *(v3 + 2) = v25 + 1;
      v5 = &v3[8 * v25];
      *(v5 + 8) = v6;
      v5[36] = v51;
      v5[37] = v53;
LABEL_4:
      if (++v4 == v2)
      {
        goto LABEL_35;
      }
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_35:
  if (v50)
  {
    v26 = &v2[v50];
    v27 = _swiftEmptyArrayStorage;
    while (1)
    {
      v29 = IEEE80211Frame.Management.Authentication.AuthenticationAlgorithm.rawValue.getter(*v2);
      if (qword_10058AA78 != -1)
      {
        swift_once();
      }

      v30 = off_100591860;
      if (*(off_100591860 + 2) && (v31 = static Hasher._hash(seed:bytes:count:)(), v32 = -1 << *(v30 + 32), v33 = v31 & ~v32, ((*(v30 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) != 0))
      {
        v34 = ~v32;
        while (*(v30[6] + 4 * v33) != v29)
        {
          v33 = (v33 + 1) & v34;
          if (((*(v30 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v33) & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        v45 = 0;
        v46 = 3;
      }

      else
      {
LABEL_46:
        if (qword_10058AA80 != -1)
        {
          swift_once();
        }

        v35 = off_100591868;
        if (*(off_100591868 + 2) && (v36 = static Hasher._hash(seed:bytes:count:)(), v37 = -1 << *(v35 + 32), v38 = v36 & ~v37, ((*(v35 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v38) & 1) != 0))
        {
          v39 = ~v37;
          while (*(v35[6] + 4 * v38) != v29)
          {
            v38 = (v38 + 1) & v39;
            if (((*(v35 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v38) & 1) == 0)
            {
              goto LABEL_53;
            }
          }

          v45 = 1;
          v46 = 4;
        }

        else
        {
LABEL_53:
          if (qword_10058AA88 != -1)
          {
            swift_once();
          }

          v40 = off_100591870;
          if (!*(off_100591870 + 2))
          {
            goto LABEL_38;
          }

          v41 = static Hasher._hash(seed:bytes:count:)();
          v42 = -1 << v40[32];
          v43 = v41 & ~v42;
          if (((*&v40[((v43 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v43) & 1) == 0)
          {
            goto LABEL_38;
          }

          v44 = ~v42;
          while (*(*(v40 + 6) + 4 * v43) != v29)
          {
            v43 = (v43 + 1) & v44;
            if (((*&v40[((v43 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v43) & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          v45 = 2;
          v46 = 5;
        }
      }

      v52 = v45;
      v54 = v46;
      sub_1000276D8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100011C2C(0, *(v27 + 2) + 1, 1, v27);
      }

      v48 = *(v27 + 2);
      v47 = *(v27 + 3);
      if (v48 >= v47 >> 1)
      {
        v27 = sub_100011C2C((v47 > 1), v48 + 1, 1, v27);
      }

      *(v27 + 2) = v48 + 1;
      v28 = &v27[8 * v48];
      *(v28 + 8) = v29;
      v28[36] = v52;
      v28[37] = v54;
LABEL_38:
      if (++v2 == v26)
      {
        goto LABEL_69;
      }
    }
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_69:
  sub_100011B40(v27);
  return v3;
}

uint64_t sub_100011B40(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100011C2C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100011C2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_1005987D0, &qword_1004B0740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_100011D2C(uint64_t a1)
{
  v2 = v1;
  v59 = a1;
  v3 = *v1;
  v61 = sub_10005DC58(&qword_1005995E8, &unk_1004B3040);
  __chkstk_darwin();
  v60 = &v58 - v4;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v58 - v9;
  __chkstk_darwin();
  v12 = &v58 - v11;
  sub_10001B3C8(1);
  (*(v6 + 16))(v12, v1 + *(*v1 + 528), v5);
  v13 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = *(v3 + 432);
  v15[3] = *(v3 + 440);
  v15[4] = v14;
  v16 = *(v6 + 104);
  v16(v10, enum case for DispatchTimeInterval.never(_:), v5);
  *v8 = 100;
  v16(v8, enum case for DispatchTimeInterval.milliseconds(_:), v5);
  type metadata accessor for P2PTimer(0);
  swift_allocObject();
  v17 = v13;
  v18 = v8;
  v19 = v59;
  *(v2 + *(*v2 + 536)) = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v12, v17, v10, v18, sub_1003F2D30, v15);

  v20 = v2 + *(*v2 + 592);
  swift_beginAccess();
  v21 = v20 + *(v61 + 36);
  v22 = *(v21 + 16);
  v23 = *(v21 + 20);
  v24 = *(v21 + 24);
  v25 = *(v21 + 28);
  v63 = *v21;
  v65 = v23;
  v64 = v22;
  v66 = v24;
  v67 = v25;
  v26 = *(v19 + 16);
  if (v26)
  {
    v58 = v20;
    v27 = (v19 + 37);
    v28 = _swiftEmptyArrayStorage;
    v29 = v26;
    do
    {
      if (!*(v27 - 1))
      {
        v33 = *(v27 - 5);
        v34 = *v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100027CF0(0, v28[2] + 1, 1);
          v28 = v62;
        }

        v31 = v28[2];
        v30 = v28[3];
        if (v31 >= v30 >> 1)
        {
          sub_100027CF0((v30 > 1), v31 + 1, 1);
          v28 = v62;
        }

        v28[2] = v31 + 1;
        v32 = &v28[v31];
        *(v32 + 8) = v33;
        *(v32 + 36) = 0;
        *(v32 + 37) = v34;
      }

      v27 += 8;
      --v29;
    }

    while (v29);
    v36 = v28[2];

    *&v63 = v36;
    v37 = (v19 + 37);
    v38 = _swiftEmptyArrayStorage;
    do
    {
      if (*(v37 - 1) == 1)
      {
        v42 = *(v37 - 5);
        v43 = *v37;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v62 = v38;
        if ((v44 & 1) == 0)
        {
          sub_100027CF0(0, v38[2] + 1, 1);
          v38 = v62;
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          sub_100027CF0((v39 > 1), v40 + 1, 1);
          v38 = v62;
        }

        v38[2] = v40 + 1;
        v41 = &v38[v40];
        *(v41 + 8) = v42;
        *(v41 + 36) = 1;
        *(v41 + 37) = v43;
      }

      v37 += 8;
      --v26;
    }

    while (v26);
    v20 = v58;
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
    v36 = _swiftEmptyArrayStorage[2];

    *&v63 = v36;
  }

  v45 = v38[2];

  *(&v63 + 1) = v45;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134218240;
    *(v48 + 4) = v36;
    *(v48 + 12) = 2048;
    *(v48 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v46, v47, "Infra scan started (2.4GHz: %ld 5GHz: %ld)", v48, 0x16u);
  }

  swift_beginAccess();
  v49 = v63;
  v50 = v64;
  v51 = v65;
  v52 = v66;
  v53 = v67;
  v54 = v20;
  v55 = v60;
  sub_100012400(v54, v60, &qword_1005995E8, &unk_1004B3040);
  v56 = v55 + *(v61 + 36);
  *v56 = v49;
  *(v56 + 20) = v51;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
  *(v56 + 28) = v53;
  return sub_10001C638(v55);
}

uint64_t sub_1000122F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001232C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012400(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10005DC58(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100012468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000124C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001251C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100012584(uint64_t a1)
{
  if ((*(a1 + 41) & 0xFu) <= 9)
  {
    return *(a1 + 41) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

void sub_1000125CC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1000128EC(a1);
    }

    else
    {
      sub_1000133C4(a1, v4);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        v16 = DriverEvent.shortDescription.getter();
        v18 = v17;
        sub_1003F2D3C(v4);
        v19 = sub_100002320(v16, v18, &v20);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "Failed to dispatch event %s because the InfrastructureWiFiInterface was deallocated before the event was received from the driver", v14, 0xCu);
        sub_100002A00(v15);
      }

      else
      {

        sub_1003F2D3C(v4);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100012864(uint64_t a1)
{
  type metadata accessor for Logger();
  v3 = *(v1 + 32);

  sub_1000125CC(a1, v3);
}

void sub_1000128EC(uint64_t a1)
{
  v3 = *v1;
  v92 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  __chkstk_darwin();
  v5 = &v90 - v4;
  v96 = v1;
  v93 = *(v3 + 432);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = *(AssociatedTypeWitness - 8);
  v95 = AssociatedTypeWitness;
  __chkstk_darwin();
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v90 - v9;
  __chkstk_darwin();
  v12 = &v90 - v11;
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v90 - v15;
  sub_1000133C4(a1, &v90 - v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      v42 = v12;
      v44 = *v16;
      v43 = *(v16 + 1);
      v45 = *(v16 + 2);
      v46 = *(v16 + 3);
      v47 = *(v16 + 4);
      v48 = v16[40];
      v49 = v16[41];
      if (v49 <= 4)
      {
        if (v16[41] <= 1u)
        {
          if (v16[41])
          {

            sub_100011D2C(v58);
            sub_10001CF6C(v44, v43, v45, v46, v47, v48, 1);
            sub_10001CF6C(v44, v43, v45, v46, v47, v48, 1);
          }

          else
          {
            sub_1003EB284(v44 & 1);
          }
        }

        else if (v49 == 2)
        {
          sub_1000288C0(*v16);
        }

        else if (v49 == 3)
        {
          sub_1003ECD6C(v44 & 0xFFFFFFFFFFFFLL);
        }

        else
        {

          sub_1003ED770(v57, v43, v45);
          sub_10001CF6C(v44, v43, v45, v46, v47, v48, 4);
          sub_10001CF6C(v44, v43, v45, v46, v47, v48, 4);
        }
      }

      else if (v16[41] > 7u)
      {
        if (v49 != 8)
        {
          if (v49 == 9)
          {
            v51 = v96;
            v52 = *(*v96 + 96);
            swift_beginAccess();
            v53 = v94;
            v54 = v51 + v52;
            v55 = v95;
            (*(v94 + 16))(v42, v54, v95);
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            (*(*(AssociatedConformanceWitness + 8) + 24))(v44 & 0xFFFFFFFFFFFFLL, v55);
            (*(v53 + 8))(v42, v55);
          }

          else
          {
            if (v45 | v43 | v44 | v46 | v47)
            {
              v59 = 0;
            }

            else
            {
              v59 = v48 == 0;
            }

            if (v59)
            {
              v75 = v96;
              v76 = *(*v96 + 96);
              swift_beginAccess();
              v77 = v94;
              v78 = v75 + v76;
              v79 = v95;
              (*(v94 + 16))(v42, v78, v95);
              v80 = swift_getAssociatedConformanceWitness();
              v81 = (*(v80 + 72))(v79, v80);
              (*(v77 + 8))(v42, v79);
              sub_1003EAF94(v81 & 1);
            }

            else
            {
              if (v16[40])
              {
                v60 = 0;
              }

              else
              {
                v60 = v44 == 1;
              }

              if (v60 && (v45 | v43 | v46 | v47) == 0)
              {
                v82 = v96;
                v83 = *(*v96 + 96);
                swift_beginAccess();
                v85 = v94;
                v84 = v95;
                (*(v94 + 16))(v10, &v82[v83], v95);
                v86 = swift_getAssociatedConformanceWitness();
                v87 = (*(v86 + 88))(v84, v86);
                (*(v85 + 8))(v10, v84);
                if ((v87 & 0x10000) != 0)
                {
                  v89 = CountryCode.unknown.unsafeMutableAddressor();
                  LOBYTE(v87) = *v89;
                  LOWORD(v88) = *(v89 + 1);
                }

                else
                {
                  v88 = v87 >> 8;
                }

                sub_1003EB95C(v87 | (v88 << 8));
              }

              else
              {
                v62 = v96;
                v63 = *(*v96 + 96);
                swift_beginAccess();
                v64 = v94;
                v65 = v95;
                v66 = v94 + 16;
                v92 = *(v94 + 16);
                (v92)(v42, v62 + v63, v95);
                v67 = swift_getAssociatedConformanceWitness();
                v93 = (*(v67 + 80))(v65, v67);
                v90 = v69;
                v91 = v68;
                v71 = v70;
                v72 = *(v64 + 8);
                v72(v42, v65);
                sub_1003EB184(v93, v91, v90, v71 & 0xFFFFFFFFFFFFLL);
                v91 = v63;
                v93 = v66;
                (v92)(v42, v62 + v63, v65);
                v94 = v67;
                (*(*(v67 + 8) + 32))(v65);
                v72(v42, v65);
                v73 = *(v62 + *(*v62 + 632));
                if (v73 != 3)
                {
                  v74 = v95;
                  (v92)(v42, v96 + v91, v95);
                  (*(v94 + 32))(v73, v74);
                  v72(v42, v74);
                }
              }
            }
          }
        }
      }

      else if (v49 == 5)
      {
        sub_1003F2D98(*v16, *(v16 + 1), *(v16 + 2), *(v16 + 3), *(v16 + 4), v16[40], 5);
        sub_1003F2B34();
        sub_10001CF6C(v44, v43, v45, v46, v47, v48, 5);
        sub_10001CF6C(v44, v43, v45, v46, v47, v48, 5);
      }

      else if (v49 == 6)
      {
        sub_1003EDDB4(*v16);
      }

      else
      {
        sub_1003F2C14(EnumCaseMultiPayload);
      }
    }

    else
    {
      sub_1003F2D3C(v16);
      sub_1000133C4(a1, v14);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v97[0] = swift_slowAlloc();
        *v33 = 136315394;
        v34 = WiFiInterface.description.getter();
        v36 = v35;

        v37 = sub_100002320(v34, v36, v97);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2080;
        v38 = DriverEvent.description.getter();
        v40 = v39;
        sub_1003F2D3C(v14);
        v41 = sub_100002320(v38, v40, v97);

        *(v33 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v31, v32, "%s received an unexpected %s", v33, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1003F2D3C(v14);
      }
    }
  }

  else if ((EnumCaseMultiPayload - 3) >= 2 && EnumCaseMultiPayload == 5)
  {
    v19 = v96;
    v20 = *(*v96 + 96);
    swift_beginAccess();
    v21 = v94;
    v22 = v19 + v20;
    v23 = v95;
    (*(v94 + 16))(v8, v22, v95);
    v24 = swift_getAssociatedConformanceWitness();
    v25 = (*(v24 + 64))(v23, v24);
    (*(v21 + 8))(v8, v23);
    WiFiInterface.$macAddress.getter(v5);
    if ((v25 & 0x1000000000000) != 0)
    {
      v30 = *(v92 + 40);
      LOBYTE(v25) = v5[v30];
      v26.i32[0] = *&v5[v30 + 1];
      v28 = vmovl_u8(v26).u64[0];
      LOBYTE(v29) = v5[v30 + 5];
    }

    else
    {
      v27 = vdupq_n_s64(v25);
      v28 = vmovn_s32(vuzp1q_s32(vshlq_u64(v27, xmmword_1004817A0), vshlq_u64(v27, xmmword_100481790)));
      v29 = v25 >> 40;
      v30 = *(v92 + 40);
    }

    v50 = &v5[v30];
    *v50 = v25;
    *(v50 + 1) = vuzp1_s8(v28, v28).u32[0];
    v50[5] = v29;
    WiFiInterface.$macAddress.setter(v5);
  }
}

uint64_t sub_1000133C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013428(uint64_t a1, objc_class *a2, uint64_t a3)
{
  v5 = (a2 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);
  *v5 = NANBitmap.Channel.operatingClass.getter;
  v5[1] = 0;

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100013518(a1, a2);
  }

  return result;
}

void sub_100013518(uint64_t a1, objc_class *a2)
{
  v339 = a2;
  *&v337 = *v2;
  v4 = v337;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v336 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v325 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = type metadata accessor for DispatchQoS();
  v333 = *(v334 - 1);
  __chkstk_darwin();
  v9 = &v325 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v335 = &v325 - v10;
  v338 = *(v4 + 80);
  v332 = *(v338 - 1);
  __chkstk_darwin();
  v12 = &v325 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v331 = &v325 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  __chkstk_darwin();
  v17 = (&v325 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  switch(*(a1 + 40))
  {
    case 1:
      __chkstk_darwin();
      v25 = v339;
      v323 = v186;
      v324 = v339;
      v27 = sub_100388BA0;
      goto LABEL_37;
    case 2:
      __chkstk_darwin();
      v25 = v339;
      v323 = v122;
      v324 = v339;
      v27 = sub_100388B74;
      goto LABEL_37;
    case 3:
      v153 = v15;
      v330 = v18;
      v329 = v19;
      v154 = v2;
      v155 = sub_10001BDD0();
      if (!v155)
      {
        v234 = 0;
LABEL_128:
        v157 = v339;
        goto LABEL_129;
      }

      v156 = v155;
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v157 = v339;
      v158 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v159 = OS_dispatch_queue.nan.unsafeMutableAddressor();
      v160 = *v159;
      v161 = static NSObject.== infix(_:_:)();

      if ((v161 & 1) == 0 || (v162 = sub_100019B10(), v163 = NANBitmap.Channel.init(channel:)(v162 & 0xFFFFFFFFFFFFLL), (v164 & 0x100) != 0))
      {

        v234 = 0;
LABEL_129:
        v330(v234);

        v317 = &v157[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v318 = *&v157[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v319 = *&v157[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
        *v317 = 0;
        *(v317 + 1) = 0;
        sub_100010520(v318, v319);
        return;
      }

      v165 = v163;
      v327 = v156;
      v166 = *v159;
      *v17 = v166;
      (*(v153 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
      v167 = v166;
      LOBYTE(v166) = _dispatchPreconditionTest(_:)();
      (*(v153 + 8))(v17, v14);
      if ((v166 & 1) == 0)
      {
        goto LABEL_139;
      }

      v168 = v327;
      swift_retain_n();
      swift_retain_n();
      v169 = Logger.logObject.getter();
      v170 = static os_log_type_t.debug.getter();
      v171 = os_log_type_enabled(v169, v170);
      v326 = v165;
      if (v171)
      {
        v172 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v172 = 136316162;
        v173 = WiFiInterface.description.getter();
        v175 = sub_100002320(v173, v174, &aBlock);

        *(v172 + 4) = v175;
        *(v172 + 12) = 2080;
        v176 = sub_100019F94();

        if (v176)
        {
          v177 = 0x64656C62616E65;
        }

        else
        {
          v177 = 0x64656C6261736964;
        }

        if (v176)
        {
          v178 = 0xE700000000000000;
        }

        else
        {
          v178 = 0xE800000000000000;
        }

        v179 = sub_100002320(v177, v178, &aBlock);

        *(v172 + 14) = v179;
        *(v172 + 22) = 1024;
        v180 = *(v154 + 24);

        *(v172 + 24) = v180;

        *(v172 + 28) = 1024;
        v181 = *(v168 + *(*v168 + 744));

        *(v172 + 30) = v181;

        *(v172 + 34) = 1024;
        swift_unownedRetainStrong();
        v182 = v154;
        LOBYTE(v179) = sub_10001A54C();

        *(v172 + 36) = v179 & 1;

        _os_log_impl(&_mh_execute_header, v169, v170, "%s state: %s, wasNANCapQueriedEver:%{BOOL}d configuredNAN:%{BOOL}d wifi power: %{BOOL}d", v172, 0x28u);
        swift_arrayDestroy();
      }

      else
      {

        v182 = v154;
      }

      v245 = *(v182 + 24);
      v333 = v168 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      if (v245 == 1)
      {
        goto LABEL_99;
      }

      v246 = *(*v168 + 744);
      if (*(v168 + v246) != 1)
      {
        goto LABEL_90;
      }

      if (sub_100019F94())
      {
        v247 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v168 = v327;
        if ((v247 & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      else
      {

        v168 = v327;
      }

LABEL_90:

      v254 = Logger.logObject.getter();
      v255 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v254, v255))
      {
        v256 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        aBlock = v257;
        *v256 = 136315138;
        v258 = WiFiInterface.description.getter();
        v260 = v259;

        v261 = sub_100002320(v258, v260, &aBlock);

        *(v256 + 4) = v261;
        _os_log_impl(&_mh_execute_header, v254, v255, "%s state is disabled and first time queriying capabilities. Toggling before querying capabilities.", v256, 0xCu);
        sub_100002A00(v257);
      }

      else
      {
      }

      sub_10040E940(1);
      sub_10040E940(0);
LABEL_94:
      if (*(v168 + v246) == 1)
      {

        v262 = Logger.logObject.getter();
        v263 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v262, v263))
        {
          v264 = swift_slowAlloc();
          v265 = swift_slowAlloc();
          aBlock = v265;
          *v264 = 136315138;
          v266 = WiFiInterface.description.getter();
          v268 = v267;

          v269 = sub_100002320(v266, v268, &aBlock);

          *(v264 + 4) = v269;
          _os_log_impl(&_mh_execute_header, v262, v263, "%s Setting wasNANCapQueriedEver to true.", v264, 0xCu);
          sub_100002A00(v265);
        }

        else
        {
        }

        *(v154 + 24) = 1;
      }

LABEL_99:
      sub_10005DC58(&unk_100598020, &qword_1004B2120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100480F40;
      v271 = (v168 + *(*v168 + 736));
      swift_beginAccess();
      v325 = type metadata accessor for NANDriverCapabilities(0);
      v272 = *(v325 + 64);
      v328 = v271;
      *(inited + 32) = *(v271 + v272);
      v273 = sub_100475E58(inited);
      swift_setDeallocating();
      v274 = *(v273 + 2);
      if (!v274)
      {

        v289 = _swiftEmptyArrayStorage;
LABEL_118:
        sub_100475B70(v289);

        sub_100019B10();
        isa = UInt32._bridgeToObjectiveC()().super.super.isa;
        v291.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
        v292 = *(v328[1] + 16);
        v336 = isa;
        v335 = v291.super.super.isa;
        if (v292)
        {
          v342[0] = _swiftEmptyArrayStorage;

          specialized ContiguousArray.reserveCapacity(_:)();
          v293 = 32;
          do
          {
            UInt8._bridgeToObjectiveC()();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v293;
            --v292;
          }

          while (v292);
        }

        v294 = *(*v168 + 96);
        swift_beginAccess();
        v295 = v332;
        v296 = v331;
        v297 = v338;
        v332[2](v331, (v168 + v294), v338);
        v298 = *(*(v337 + 88) + 8);
        v299 = *(v298 + 8);

        v300 = v299(v297, v298);
        (v295[1])(v296, v297);
        v341 = *WiFiDriverCapabilities.supportsDualBand.unsafeMutableAddressor();
        v340 = v300;
        sub_1000C2A14();

        LODWORD(v296) = dispatch thunk of SetAlgebra.isSuperset(of:)();

        v301 = *v328;
        v302 = *(*v328 + 16);
        LODWORD(v338) = v296;
        v303 = 0;
        if (v302)
        {
          v304 = (v301 + 32);
          v305 = v325;
          do
          {
            v306 = *v304++;
            v303 |= 0x801004u >> (8 * v306);
            --v302;
          }

          while (v302);
        }

        else
        {
          v305 = v325;
        }

        v307 = v305[12];
        *&v337 = *(v328 + v305[11]);
        v308 = v305[10];
        v334 = *(v328 + v305[9]);
        v333 = *(v328 + v308);
        v309 = *(v328 + v307);
        v310 = objc_allocWithZone(WiFiAwareDeviceCapabilities);
        sub_100018AB4(0, &qword_1005974C0, NSNumber_ptr);
        sub_100388B0C();
        v311 = Set._bridgeToObjectiveC()().super.isa;

        v312 = Array._bridgeToObjectiveC()().super.isa;

        v313 = String._bridgeToObjectiveC()();

        v323 = v309;
        v314 = v336;
        v315 = v335;
        v234 = [v310 initWithSupportedFeatures:v311 operatingChannel:v336 operatingClass:v335 supportedCipherSuites:v312 supportsDataTransfer:v338 & 1 supportedBands:v303 discoveryInterfaceName:v313 maxPeers:v337 maxPublishers:v334 maxSubscribers:v333 maxDatapaths:v323];

        v316 = v234;
        goto LABEL_128;
      }

      v342[0] = _swiftEmptyArrayStorage;
      v336 = v273;
      specialized ContiguousArray.reserveCapacity(_:)();
      v275 = v336;
      v276 = v336 + 56;
      v277 = _HashTable.startBucket.getter();
      v278 = 0;
      v334 = v275 + 64;
      v335 = v274;
      while ((v277 & 0x8000000000000000) == 0 && v277 < 1 << v275[32])
      {
        v280 = v277 >> 6;
        if ((*&v276[8 * (v277 >> 6)] & (1 << v277)) == 0)
        {
          goto LABEL_131;
        }

        v281 = *(v275 + 9);
        Int._bridgeToObjectiveC()();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v275 = v336;
        v279 = 1 << v336[32];
        if (v277 >= v279)
        {
          goto LABEL_132;
        }

        v282 = *&v276[8 * v280];
        if ((v282 & (1 << v277)) == 0)
        {
          goto LABEL_133;
        }

        if (v281 != *(v336 + 9))
        {
          goto LABEL_134;
        }

        v283 = v282 & (-2 << (v277 & 0x3F));
        if (v283)
        {
          v279 = __clz(__rbit64(v283)) | v277 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v284 = v280 << 6;
          v285 = v280 + 1;
          v286 = &v334[8 * v280];
          while (v285 < (v279 + 63) >> 6)
          {
            v288 = *v286++;
            v287 = v288;
            v284 += 64;
            ++v285;
            if (v288)
            {
              sub_10002BEB8(v277, v281, 0);
              v279 = __clz(__rbit64(v287)) + v284;
              goto LABEL_115;
            }
          }

          sub_10002BEB8(v277, v281, 0);
LABEL_115:
          v275 = v336;
        }

        ++v278;
        v277 = v279;
        if (v278 == v335)
        {

          v289 = v342[0];
          v168 = v327;
          goto LABEL_118;
        }
      }

      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return;
    case 4:
      v330 = *a1;
      v329 = v19;
      v57 = objc_opt_self();
      v58 = [v57 wifip2pExportedXPCInterfaceFor:&OBJC_PROTOCOL___WiFiAwarePairedDevicesXPC];
      v59 = v339;
      v60 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
      [v60 setExportedInterface:v58];

      v61 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiAwarePairedDevicesXPCDelegate];
      [v60 setRemoteObjectInterface:v61];

      v62 = *&v59[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8];
      if (v62)
      {
        v63 = *&v59[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID];
        swift_bridgeObjectRetain_n();
        v64 = v59;
        v328 = v2;
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.info.getter();

        v67 = os_log_type_enabled(v65, v66);
        v336 = v57;
        v334 = v63;
        if (v67)
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          aBlock = v70;
          *v68 = 136315394;
          *(v68 + 4) = sub_100002320(v63, v62, &aBlock);
          *(v68 + 12) = 2112;
          *(v68 + 14) = v64;
          *v69 = v64;
          v71 = v64;
          _os_log_impl(&_mh_execute_header, v65, v66, "Creating Pairing Store Instance for: %s, XPC Session: %@", v68, 0x16u);
          sub_10000BB28(v69);

          sub_100002A00(v70);
        }

        v72 = v337;
        v73 = *(v337 + 96);
        v74 = v338;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        type metadata accessor for WiFiAwarePairingStoreInstance(0, AssociatedTypeWitness, AssociatedConformanceWitness, v77);
        v78 = v328;
        v79 = v78 + *(*v78 + 136);
        v339 = *(v72 + 88);
        aBlock = v74;
        *&v80 = v339;
        *(&v80 + 1) = v73;
        v337 = *(v72 + 104);
        v344 = v80;
        v345 = v337;
        v81 = *&v79[*(type metadata accessor for P2PController.Components(0, &aBlock) + 80)];

        v82 = v60;
        v83 = v334;
        v84 = sub_100307A34(v81, v334, v62, v82);
        v85 = type metadata accessor for TaskPriority();
        v86 = v335;
        (*(*(v85 - 8) + 56))(v335, 1, 1, v85);
        v87 = swift_allocObject();
        v87[2] = 0;
        v87[3] = 0;
        v87[4] = v78;
        v87[5] = v83;
        v87[6] = v62;
        v87[7] = v64;

        v88 = v64;
        sub_1003ACB3C(0, 0, v86, &unk_1004B2118, v87);

        v89 = [v336 weakExportedObjectProxy:v84];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100301920(&aBlock);
        v90 = swift_allocObject();
        swift_weakInit();
        v91 = swift_allocObject();
        v92 = v339;
        *(v91 + 16) = v74;
        *(v91 + 24) = v92;
        *(v91 + 32) = v73;
        *(v91 + 40) = v337;
        *(v91 + 56) = v90;
        *(v91 + 64) = v88;
        *(v91 + 72) = v84;
        *(v91 + 80) = v83;
        *(v91 + 88) = v62;
        v93 = &v88[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v94 = *&v88[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
        v95 = *&v88[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
        *v93 = sub_100387C90;
        v93[1] = v91;
        v96 = v88;

        sub_100010520(v94, v95);

        v330(0);

        return;
      }

      v235 = v59;
      v236 = Logger.logObject.getter();
      v237 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v236, v237))
      {
        v238 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        *v238 = 138412290;
        *(v238 + 4) = v235;
        *v239 = v235;
        v240 = v235;
        _os_log_impl(&_mh_execute_header, v236, v237, "Failed to create pairing store instance for %@: No Client BundleID", v238, 0xCu);
        sub_10000BB28(v239);
      }

      v241 = 2;
      goto LABEL_73;
    case 5:
      v195 = *(a1 + 16);
      v196 = *a1;
      v329 = *(a1 + 8);
      v197 = swift_allocObject();
      *(v197 + 16) = 0;
      v198 = sub_10001BDD0();
      if (v198)
      {
        v199 = v198;
        v338 = (v195 >> 40);
        *&v337 = HIDWORD(v195);
        v336 = (v195 >> 24);
        v334 = (v195 >> 16);
        v200 = type metadata accessor for TaskPriority();
        v201 = v335;
        (*(*(v200 - 8) + 56))(v335, 1, 1, v200);
        v202 = swift_allocObject();
        *(v202 + 16) = 0;
        *(v202 + 24) = 0;
        *(v202 + 32) = v197;
        *(v202 + 40) = v199;
        *(v202 + 48) = v196;
        *(v202 + 56) = v329;
        *(v202 + 64) = v195;
        *(v202 + 66) = v334;
        *(v202 + 67) = v336;
        *(v202 + 68) = v337;
        *(v202 + 69) = v338;
        *(v202 + 72) = v21;
        *(v202 + 80) = v22;
        v203 = v339;
        *(v202 + 88) = v339;
        v204 = v203;

        sub_100387750(a1, &aBlock);
        sub_1003ACB3C(0, 0, v201, &unk_1004B2108, v202);
      }

      goto LABEL_72;
    case 6:
      aBlock = v338;
      v344 = *(v337 + 88);
      v345 = *(v337 + 104);
      v222 = v18;
      v223 = v19;
      v224 = v20;
      type metadata accessor for P2PController.Components(0, &aBlock);

      sub_1002D0E10(v339, v222, v223, v224);
LABEL_72:

      return;
    case 7:
      __chkstk_darwin();
      v28 = &v321;
      v30 = v339;
      v323 = v339;
      v324 = v184;
      v33 = sub_100387A84;
      v29 = v185;
      goto LABEL_54;
    case 8:
      __chkstk_darwin();
      v324 = v230;
      __chkstk_darwin();
      v29 = &v320;
      v30 = v339;
      v321 = v339;
      v322 = v231;
      v323 = v232;
      v33 = sub_1003879BC;
      v34 = sub_100387A18;
      goto LABEL_53;
    case 9:
      __chkstk_darwin();
      __chkstk_darwin();
      v29 = &v320;
      v30 = v339;
      v321 = v339;
      v322 = v120;
      v323 = v121;
      v33 = sub_100387928;
      v34 = sub_100387950;
      goto LABEL_53;
    case 0xA:
      __chkstk_darwin();
      __chkstk_darwin();
      v29 = &v320;
      v321 = v30;
      v322 = v228;
      v323 = v229;
      v33 = sub_100387884;
      v34 = sub_1003878B8;
      goto LABEL_53;
    case 0xB:
      __chkstk_darwin();
      v324 = v54;
      __chkstk_darwin();
      v29 = &v320;
      v30 = v339;
      v321 = v339;
      v322 = v55;
      v323 = v56;
      v33 = sub_10038785C;
      v34 = sub_100387878;
      goto LABEL_53;
    case 0xC:
      v97 = *a1;
      v98 = *(a1 + 8);
      v328 = v2;
      v99 = v339;
      v100 = &v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v101 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v102 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
      *v100 = 0;
      *(v100 + 1) = 0;
      sub_100010520(v101, v102);
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v103 = *&v99[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v104 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
      v105 = static NSObject.== infix(_:_:)();

      if (v105)
      {
        v106 = swift_allocObject();
        *(v106 + 16) = 0;
        v107 = swift_allocObject();
        *(v107 + 16) = 0;
        v108 = v107;
        v326 = v107;
        v109 = swift_allocObject();
        *(v109 + 16) = &_swiftEmptyDictionarySingleton;
        v338 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
        v110 = swift_allocObject();
        v110[2] = v328;
        v110[3] = v109;
        v331 = v106;
        v110[4] = v106;
        v110[5] = v108;
        v330 = v97;
        v110[6] = v97;
        v110[7] = v98;
        v329 = v98;
        *(&v345 + 1) = sub_100387738;
        v346 = v110;
        aBlock = _NSConcreteStackBlock;
        *&v344 = 1107296256;
        v339 = &v344 + 8;
        *(&v344 + 1) = sub_10000C8B8;
        *&v345 = &unk_100577D70;
        v111 = _Block_copy(&aBlock);

        sub_100387750(a1, v342);
        v112 = v338;

        v113 = v326;

        static DispatchQoS.unspecified.getter();
        v342[0] = _swiftEmptyArrayStorage;
        v338 = sub_10001CF14();
        *&v337 = sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        v335 = sub_10005DCA0();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v111);

        v114 = *(v336 + 1);
        v336 += 8;
        v332 = v114;
        (v114)(v7, v5);
        v333 = *(v333 + 8);
        (v333)(v9, v334);

        v327 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v115 = swift_allocObject();
        v115[2] = v328;
        v115[3] = v109;
        v116 = v331;
        v115[4] = v113;
        v115[5] = v116;
        v117 = v329;
        v115[6] = v330;
        v115[7] = v117;
        *(&v345 + 1) = sub_1003877AC;
        v346 = v115;
        aBlock = _NSConcreteStackBlock;
        *&v344 = 1107296256;
        *(&v344 + 1) = sub_10000C8B8;
        *&v345 = &unk_100577DC0;
        v118 = _Block_copy(&aBlock);

        sub_100387750(a1, v342);

        v119 = v327;
        static DispatchQoS.unspecified.getter();
        v342[0] = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v118);

        (v332)(v7, v5);
        (v333)(v9, v334);
      }

      else
      {
        sub_1000827F8(_swiftEmptyArrayStorage);
        (v97)();
      }

      return;
    case 0xD:
      v205 = v15;
      v330 = *a1;
      v206 = v19;
      v207 = v339;
      v208 = &v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v209 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v210 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
      *v208 = 0;
      *(v208 + 1) = 0;
      sub_100010520(v209, v210);
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v211 = *&v207[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v212 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
      v213 = *v212;
      v214 = static NSObject.== infix(_:_:)();

      if ((v214 & 1) == 0)
      {
        v339 = Int32._bridgeToObjectiveC()().super.super.isa;
        v206();
        v233 = v339;

        return;
      }

      v215 = *v212;
      *v17 = *v212;
      (*(v205 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
      v216 = v215;
      LOBYTE(v215) = _dispatchPreconditionTest(_:)();
      (*(v205 + 8))(v17, v14);
      if ((v215 & 1) == 0)
      {
        goto LABEL_138;
      }

      if (!sub_10000DFFC())
      {
        goto LABEL_88;
      }

      v217 = [v330 uniqueIdentifier];
      v218 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v220 = v219;
      if (v218 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v220 == v221)
      {
        goto LABEL_48;
      }

      v242 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v242 & 1) == 0)
      {
        v217 = [v330 uniqueIdentifier];
        v248 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v250 = v249;
        if (v248 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v250 == v251)
        {
LABEL_48:
        }

        else
        {
          v252 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v252 & 1) == 0)
          {

LABEL_88:
            v253 = Int32._bridgeToObjectiveC()().super.super.isa;
            v206();

            return;
          }
        }
      }

      v243 = [v330 peerAddress];
      sub_10044DE80(v243);

      v244 = Int32._bridgeToObjectiveC()().super.super.isa;
      v206();

      return;
    case 0xE:
      v35 = v15;
      v36 = v18;
      v37 = v2;
      v38 = v339;
      v39 = &v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v40 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v41 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
      *v39 = 0;
      *(v39 + 1) = 0;
      sub_100010520(v40, v41);
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v42 = *&v38[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v43 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
      v44 = *v43;
      v45 = static NSObject.== infix(_:_:)();

      if (v45)
      {
        v46 = *v43;
        *v17 = v46;
        (*(v35 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
        v47 = v46;
        LOBYTE(v46) = _dispatchPreconditionTest(_:)();
        (*(v35 + 8))(v17, v14);
        if ((v46 & 1) == 0)
        {
          goto LABEL_135;
        }

        v48 = v37 + *(*v37 + 136);
        aBlock = v338;
        v344 = *(v337 + 88);
        v345 = *(v337 + 104);
        v49 = *(*&v48[*(type metadata accessor for P2PController.Components(0, &aBlock) + 72)] + qword_10059B860);

        v50 = sub_1002CF94C();

        v51 = sub_100380430(v50);

        v52 = sub_1003010C0(v51, v49);

        v53 = sub_1002CE998(v52);

        v36(v53);
      }

      else
      {
        v36(_swiftEmptyArrayStorage);
      }

      return;
    case 0xF:
      v123 = v15;
      v330 = *a1;
      v329 = v19;
      v124 = v339;
      v125 = &v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v126 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v127 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
      *v125 = 0;
      *(v125 + 1) = 0;
      sub_100010520(v126, v127);
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v128 = *&v124[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v129 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
      v130 = *v129;
      v131 = static NSObject.== infix(_:_:)();

      if ((v131 & 1) == 0)
      {
        goto LABEL_56;
      }

      v132 = *v129;
      *v17 = *v129;
      (*(v123 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
      v133 = v132;
      LOBYTE(v132) = _dispatchPreconditionTest(_:)();
      (*(v123 + 8))(v17, v14);
      if ((v132 & 1) == 0)
      {
        goto LABEL_136;
      }

      v134 = sub_10000DFFC();
      if (v134)
      {
        v138 = v134;
        sub_10004D020(v134, v135, v136, v137);
        sub_100374870(&aBlock);

        v342[0] = aBlock;
        v139 = v337;
        WitnessTable = swift_getWitnessTable(byte_1004B20C8, v337);
        type metadata accessor for AWDLDiscoveryEngine.Browse(255, v139, WitnessTable, v141);
        sub_10006153C();
        v142 = type metadata accessor for Dictionary.Keys();
        swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v142);
        v143 = Set.init<A>(_:)();

        sub_10002B550(&aBlock);

        v144 = sub_10002BEC4(aBlock, v143);

        v145 = sub_10002BC6C(v144);

        v146 = *(*v138 + 96);
        swift_beginAccess();
        v147 = v332;
        v148 = v338;
        v332[2](v12, &v138[v146], v338);
        v149 = (*(*(v139 + 88) + 64))(v148);
        (v147[1])(v12, v148);
        v150 = *(v149 + 16);
        if (v150)
        {
          v342[0] = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v151 = 32;
          do
          {
            [objc_allocWithZone(NSNumber) initWithUnsignedShort:*(v149 + v151)];
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v151 += 2;
            --v150;
          }

          while (v150);

          v152 = v342[0];
        }

        else
        {

          v152 = _swiftEmptyArrayStorage;
        }

        (v330)(v145, v152);
      }

      else
      {
LABEL_56:
        (v330)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
      }

      return;
    case 0x10:
      __chkstk_darwin();
      __chkstk_darwin();
      v29 = &v320;
      v30 = v339;
      v321 = v339;
      v322 = v31;
      v323 = v32;
      v33 = sub_1003877DC;
      v34 = sub_1003877F8;
LABEL_53:
      v183 = v34;
LABEL_54:
      sub_1003851B4(v33, v28, v183, v29, v30, v2);
      return;
    case 0x11:
      v187 = v15;
      v330 = *a1;
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v188 = v339;
      v189 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v190 = OS_dispatch_queue.nan.unsafeMutableAddressor();
      v191 = *v190;
      v192 = static NSObject.== infix(_:_:)();

      if (v192)
      {
        v193 = *v190;
        *v17 = *v190;
        (*(v187 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
        v194 = v193;
        LOBYTE(v193) = _dispatchPreconditionTest(_:)();
        (*(v187 + 8))(v17, v14);
        if ((v193 & 1) == 0)
        {
          goto LABEL_137;
        }

        sub_1003815A8(v188);
        v241 = 0;
      }

      else
      {
        v241 = 2;
      }

LABEL_73:
      v330(v241);
      return;
    case 0x12:
      v225 = &v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v226 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v227 = *&v339[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
      *v225 = 0;
      *(v225 + 1) = 0;
      sub_100010520(v226, v227);
      v21(2);
      return;
    default:
      __chkstk_darwin();
      v25 = v339;
      v323 = v26;
      v324 = v339;
      v27 = sub_100388BCC;
LABEL_37:
      sub_100384E48(v27, &v321, v23, v24, v25);
      return;
  }
}

uint64_t sub_1000160E8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016120()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016158()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016190()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000161E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100016238()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100016290(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10005DC58(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000162F0@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  result = if_nametoindex(a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for RoutingSocket(uint64_t a1)
{
  result = qword_100591318;
  if (!qword_100591318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001636C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 56);
  v7 = swift_checkMetadataState();
  return v6(a1 & 1, v7, AssociatedConformanceWitness);
}

unint64_t sub_100016444(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 6)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 6)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 6uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 == 2)
  {
LABEL_18:
    v15 = *(a1 + 16);
    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v17 = v16;
    v18 = __DataStorage._offset.getter();
    if (!__OFSUB__(v15, v18))
    {
      v13 = v15 - v18 + v17;
      __DataStorage._length.getter();
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v2 != 1)
  {
    v19 = a1 >> 8;
    v20 = vdupq_n_s64(a1);
    *v20.i8 = vmovn_s32(vuzp1q_s32(vshlq_u64(v20, xmmword_1004841E0), vshlq_u64(v20, xmmword_1004841F0)));
    goto LABEL_23;
  }

  v9 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v10 = __DataStorage._bytes.getter();
  if (v10)
  {
    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
      goto LABEL_28;
    }

    v13 = v9 - v12 + v11;
    a1 = __DataStorage._length.getter();
    if (v13)
    {
LABEL_21:
      LOBYTE(a1) = *v13;
      LOBYTE(v19) = *(v13 + 1);
      v14.i32[0] = *(v13 + 2);
      v20 = vmovl_u8(v14);
LABEL_23:
      v21 = vmovl_u16((v20.i64[0] & 0xFF00FF00FF00FFLL));
      v22.i64[0] = v21.u32[0];
      v22.i64[1] = v21.u32[1];
      v23 = v22;
      v22.i64[0] = v21.u32[2];
      v22.i64[1] = v21.u32[3];
      v24 = vorrq_s8(vshlq_u64(v23, xmmword_1004AD2A0), vshlq_u64(v22, xmmword_1004AD290));
      return *&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | (v19 << 8) | a1;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_100016670(uint64_t result)
{
  if (*(*(*v1 + 40) + 128))
  {
    v2 = result;

    sub_1000166E0(v2 & 0xFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_1000166E0(uint64_t a1)
{
  v2 = v1;
  sub_10005DC58(&qword_10058BC88, &unk_1004818B0);
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = type metadata accessor for RoutingSocket(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012400(v2 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A14GatewayMonitor_routingSocket, v5, &qword_10058BC88, &unk_1004818B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v10 = &qword_10058BC88;
    v11 = &unk_1004818B0;
    v12 = v5;
  }

  else
  {
    sub_100016DFC(v5, v9, type metadata accessor for RoutingSocket);
    RoutingSocket.ipAddress(for:)(a1 & 0xFFFFFFFFFFFFLL, v34);
    v30 = v34[1];
    v31 = v34[0];
    v28 = v34[3];
    v29 = v34[2];
    sub_100012400(v34, v33, &unk_10058C790, qword_100481FB8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    sub_100016290(v34, &unk_10058C790, qword_100481FB8);
    if (os_log_type_enabled(v14, v15))
    {
      v27 = v15;
      v16 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33[0] = v26;
      *v16 = 136315394;
      v17 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v19 = sub_100002320(v17, v18, v33);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      if (v35)
      {
        v20 = IPv6Address.description.getter(v31, v30, v29, v28);
        v22 = v21;
      }

      else
      {
        v23 = swift_slowAlloc();
        v32[0] = v31;
        inet_ntop(2, v32, v23, 0x10u);
        v20 = String.init(cString:)();
        v22 = v24;
      }

      v25 = sub_100002320(v20, v22, v33);

      *(v16 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v14, v27, "Infra peer (%s) has IP address %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10002B6E0(a1 & 0xFFFFFFFFFFFFLL, v34, 0x1C3uLL);
    sub_100012468(v9, type metadata accessor for RoutingSocket);
    v10 = &unk_10058C790;
    v11 = qword_100481FB8;
    v12 = v34;
  }

  return sub_100016290(v12, v10, v11);
}

uint64_t sub_100016C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
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

uint64_t sub_100016D44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100016DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void RoutingSocket.ipAddress(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005DC58(&qword_10058D690, &qword_1004872F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004817D0;
  *(inited + 32) = xmmword_100498810;
  *(inited + 48) = 0x40000000002;
  __size = 0;
  v5 = sysctl((inited + 32), 6u, 0, &__size, 0, 0);
  if (v5 < 0)
  {
    v28 = v5;

    v29 = v28;
    if (v28 == -1)
    {
      v29 = errno.getter();
    }

    v30 = v29;
    sub_10000B02C();
    swift_allocError();
    *v31 = v30;
    *(v31 + 8) = 0;
    goto LABEL_38;
  }

  v6 = malloc(__size);
  if (!v6)
  {

    sub_10000B02C();
    swift_allocError();
    *v31 = xmmword_100481830;
LABEL_38:
    *(v31 + 16) = 0;
    swift_willThrow();
    return;
  }

  v7 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    inited = sub_10011686C(0, 6, 0, inited);
  }

  v8 = sysctl((inited + 32), 6u, v7, &__size, 0, 0);

  if ((v8 & 0x80000000) != 0)
  {
    if (v8 == -1)
    {
      v8 = errno.getter();
    }

    sub_10000B02C();
    swift_allocError();
    *v33 = v8;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
LABEL_42:
    swift_willThrow();
    free(v7);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v13 = __size;
  v14 = 92;
  while (v13 >= v14)
  {
    v15 = *&v7[v9];
    v27 = __OFADD__(v9, v15);
    v9 += v15;
    if (v27)
    {
      goto LABEL_46;
    }

    if (v13 < v9)
    {
      break;
    }

    if (v15 < 0x6C || (v16 = v15 - 92, v17 = v7[v14], v16 < v17 + 20))
    {
      v14 = v9 + 92;
      if (__OFADD__(v9, 92))
      {
        goto LABEL_45;
      }
    }

    else
    {
      v39 = v11;
      v27 = __OFADD__(v14, v17);
      v18 = v14 + v17;
      if (v27)
      {
        __break(1u);
      }

      v19 = v10;
      v36 = &v7[v14];
      v37 = v7[v14 + 1];
      v38 = v12;
      v20 = v7[v18 + 5];
      v21 = v7[v18 + 6];
      v42 = *&v7[v18 + 8];
      v43 = *&v7[v18 + 16];
      if (v21)
      {
        if (v21 <= 0xE)
        {
          memset(__dst, 0, sizeof(__dst));
          v41 = v21;
          memcpy(__dst, &v42 + v20, v21);
          v23 = *__dst;
          v24 = v35 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v41 << 16)) << 32);
          v35 = v24;
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          v22 = __DataStorage.init(bytes:length:)();
          v23 = v21 << 32;
          v24 = v22 | 0x4000000000000000;
        }
      }

      else
      {
        v23 = 0;
        v24 = 0xC000000000000000;
      }

      v10 = v19;
      v25 = sub_1000172CC(v23, v24);
      v11 = v39;
      if ((v25 & 0x1000000000000) == 0)
      {
        *__dst = v25;
        __dst[4] = BYTE4(v25);
        __dst[5] = BYTE5(v25);
        LOWORD(v42) = a1;
        BYTE2(v42) = BYTE2(a1);
        BYTE3(v42) = BYTE3(a1);
        BYTE4(v42) = BYTE4(a1);
        BYTE5(v42) = BYTE5(a1);
        if (v25 == v42 && *&__dst[4] == WORD2(v42))
        {
          if (v37 == 30)
          {
            v12 = 0;
            v11 = *(v36 + 1);
            v10 = *(v36 + 2);
            v27 = __OFADD__(v9, 92);
            v14 = v9 + 92;
            goto LABEL_28;
          }

          if (v37 == 2)
          {
            goto LABEL_47;
          }
        }
      }

      v27 = __OFADD__(v9, 92);
      v14 = v9 + 92;
      v12 = v38;
LABEL_28:
      if (v27)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        v10 = 0;
        v34 = 0;
        v11 = *(v36 + 1);
        goto LABEL_44;
      }
    }
  }

  if (v12)
  {
    sub_10000B02C();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 2;
    goto LABEL_42;
  }

  v34 = 1;
LABEL_44:
  free(v7);
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v34;
}