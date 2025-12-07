uint64_t sub_10001A504(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v40 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100098B80 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003420(v13, qword_1000A1AC8);
  (*(v10 + 16))(v12, a2, v9);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v37 = a2;
    v38 = a5;
    v39 = a4;
    v16 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v16 = 136315394;
    sub_10001B6E0(&unk_100099C80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v10 + 8))(v12, v9);
    v20 = sub_100014C58(v17, v19, v43);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    if (a3)
    {
      v42 = a3;
      swift_errorRetain();
      sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      v21 = swift_dynamicCast();
      v22 = v41;
      if (!v21)
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v42 = v22;
    sub_10000FC6C(qword_100099CA0, &qword_100075DE0);
    v23 = String.init<A>(describing:)();
    v25 = sub_100014C58(v23, v24, v43);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "Finished connection request to device with identifier: [%s]. Error: [%s].", v16, 0x16u);
    swift_arrayDestroy();

    a4 = v39;
    a2 = v37;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  swift_beginAccess();
  sub_10003C180(a2, v26, v27, v28, v29, v30, v31, v32, v36, v37);
  swift_endAccess();

  if (a3)
  {
    sub_10001B2C0();
    v33 = swift_allocError();
    *v34 = a3;
    swift_errorRetain();
    swift_errorRetain();
    a4(v33);
  }

  else
  {
    a4(0);
  }

  return sub_10001ADD8();
}

uint64_t sub_10001A90C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v65 = a3;
  v64 = a2;
  v4 = type metadata accessor for UUID();
  sub_100011C54();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10001B850();
  v63 = v8;
  __chkstk_darwin(v9);
  v11 = &v57 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  sub_100011C54();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100011CD4();
  v18 = (v17 - v16);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  *v18 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v12);
  if (v19)
  {
    if (qword_100098B80 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10001B874(&qword_100098B80);
LABEL_3:
  v20 = type metadata accessor for Logger();
  v21 = sub_100003420(v20, qword_1000A1AC8);
  v22 = *(v6 + 16);
  v22(v11, a1, v4);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v61 = v6;
  if (v25)
  {
    v26 = sub_10001B910();
    v59 = v22;
    v60 = v21;
    v27 = v26;
    v58 = swift_slowAlloc();
    v68[0] = v58;
    *v27 = 136315138;
    sub_10001B800();
    sub_10001B6E0(v28, v29, &protocol conformance descriptor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = a1;
    v32 = v31;
    v33 = *(v6 + 8);
    v33(v11, v4);
    v34 = sub_100014C58(v30, v32, v68);
    a1 = v62;

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Received a request to disconnect the remote display session with device with identifier: [%s].", v27, 0xCu);
    v35 = v58;
    sub_100003458(v58);
    sub_100003534(v35);
    v36 = v27;
    v22 = v59;
    sub_100003534(v36);
  }

  else
  {

    v33 = *(v6 + 8);
    v33(v11, v4);
  }

  v37 = v66;
  swift_beginAccess();
  v38 = *(v37 + 32);

  v39 = sub_100020BC0(a1, v38);

  if (v39)
  {
    v22(v63, a1, v4);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (sub_10001B8CC(v41))
    {
      sub_10001B910();
      v42 = sub_10001B894();
      v62 = a1;
      v43 = v42;
      v67 = v42;
      *v24 = 136315138;
      sub_10001B800();
      sub_10001B6E0(v44, v45, &protocol conformance descriptor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = sub_10001B97C();
      (v33)(v49);
      v50 = sub_100014C58(v46, v48, &v67);

      *(v24 + 4) = v50;
      sub_10001B830(&_mh_execute_header, v51, v52, "Before disconnecting, will cancel in-flight connection request to device with identifier: [%s]");
      sub_100003458(v43);
      sub_100003534(v43);
      sub_10001B8B0();
    }

    else
    {

      v53 = sub_10001B97C();
      (v33)(v53);
    }

    CompanionLinkClient.cancel()();
  }

  v54 = *(v66 + 48);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v54 closeDisplayServiceSessionsWithPeerIdentifier:isa];

  return v64(0);
}

uint64_t sub_10001ADD8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.utf8CString.getter();

  notify_post((v0 + 32));
}

void *sub_10001AE34()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10001AE7C()
{
  sub_10001AE34();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_10001AED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v43 = &v32 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v32 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v39 = v5 + 32;
  v41 = a2 + 56;
  v42 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v32 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (2)
    {
      v21 = __clz(__rbit64(v18));
      v38 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v40 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v40 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v43, v13, v4);
      sub_10001B6E0(&unk_100099180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = a2;
      v28 = ~(-1 << *(a2 + 32));
      do
      {
        v29 = v26 & v28;
        if (((*(v41 + (((v26 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v28)) & 1) == 0)
        {
          (*v20)(v43, v4);
          return 0;
        }

        v25(v8, *(v27 + 48) + v29 * v40, v4);
        sub_10001B6E0(&qword_10009A940, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *v20;
        (*v20)(v8, v4);
        v26 = v29 + 1;
      }

      while ((v30 & 1) == 0);
      result = (v31)(v43, v4);
      a2 = v27;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v38;
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v38 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001B258(uint64_t a1)
{
  v2 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001B2C0()
{
  result = qword_100099C90;
  if (!qword_100099C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099C90);
  }

  return result;
}

uint64_t sub_10001B314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionLinkDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B378(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  sub_100011C54();
  v5 = v4;
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);

  (*(v5 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2);
}

uint64_t sub_10001B448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  sub_10001B8E8(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = *(v2 + 16);
  v11 = (v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_10001A130(a1, v10, v2 + v9, v12, v13);
}

uint64_t sub_10001B4E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  sub_100011C54();
  v5 = v4;
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);

  (*(v5 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2);
}

uint64_t sub_10001B5CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  sub_10001B8E8(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + 16);
  v11 = *(v2 + v9);
  v12 = v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_10001A504(v10, v2 + v8, v11, v13, v14);
}

uint64_t sub_10001B664(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001B67C()
{
  result = qword_10009A9B0;
  if (!qword_10009A9B0)
  {
    sub_10000FD4C(&unk_100099AD0, &qword_100075D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A9B0);
  }

  return result;
}

uint64_t sub_10001B6E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001B728(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10001B740(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001B794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void sub_10001B830(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_10001B874(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10001B894()
{

  return swift_slowAlloc();
}

uint64_t sub_10001B8B0()
{
}

BOOL sub_10001B8CC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10001B910()
{

  return swift_slowAlloc();
}

unint64_t sub_10001B928()
{

  return sub_100014C58(v0, v1, (v2 - 136));
}

uint64_t sub_10001B95C()
{
  result = v0;
  *(v2 - 216) = *(v1 + 8);
  return result;
}

uint64_t sub_10001B990(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_10001B9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10001B9E4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10001BA38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10001BABC(void *a1, uint64_t a2)
{
  v4 = a1;

  return sub_10001BAFC(a1, a2);
}

uint64_t sub_10001BAFC(void *a1, uint64_t a2)
{
  swift_getTupleTypeMetadata2();
  v4 = static Array._allocateUninitialized(_:)();
  v15 = v4;
  if (!a1)
  {
    v12 = v4;
    v11 = 0;
    v7 = 0;
    goto LABEL_5;
  }

  v5 = a1;
  Count = SidecarMapTableGetCount();
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(Count);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = &v15;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10001C09C;
  *(v8 + 24) = v7;
  aBlock[4] = sub_10001C0A4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BD84;
  aBlock[3] = &unk_10008EA68;
  v9 = _Block_copy(aBlock);

  SidecarMapTableIterateObjects();

  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    v11 = sub_10001C09C;
    v12 = v15;
LABEL_5:
    aBlock[0] = v12;
    type metadata accessor for Array();

    swift_getWitnessTable();
    v13 = ArraySlice.init<A>(_:)();

    sub_100010FE8(v11, v7);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001BD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v7[3] = swift_getObjectType();
  v7[0] = a3;
  swift_unknownObjectRetain();
  v5(a2, v7);
  return sub_100003458(v7);
}

uint64_t sub_10001BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = __chkstk_darwin(TupleTypeMetadata2);
  v10 = &v16[-v9];
  v11 = *(a4 - 8);
  __chkstk_darwin(v8);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100011020(a2, v16);
  swift_dynamicCast();
  v14 = *(TupleTypeMetadata2 + 48);
  *v10 = a1;
  (*(v11 + 32))(&v10[v14], v13, a4);
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t sub_10001BF68(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  v1 = type metadata accessor for ArraySlice();
  WitnessTable = swift_getWitnessTable();

  return Collection<>.popFirst()(v1, WitnessTable);
}

void sub_10001BFF8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = sub_10001BABC(v4, *(a1 + 16));
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
}

uint64_t sub_10001C0CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10001C150(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10001C190(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_10001C1EC(uint64_t a1, uint64_t a2)
{
  sub_1000033E0(0, &unk_1000991F0, SidecarDisplaySendingDeviceSessionState_ptr);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    _convertErrorToNSError(_:)();
  }

  v4 = sub_10001E410();
  v5(v4);
}

void sub_10001C284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (a3)
  {
    _convertErrorToNSError(_:)();
  }

  v5 = sub_10001E410();
  v6(v5);
}

uint64_t sub_10001C2F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = a3;
  v5(v7, v9, a3);

  sub_100003388(v7, v9);
}

uint64_t sub_10001C3A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_100099DB0);
  sub_100003420(v0, qword_100099DB0);
  return Logger.init(subsystem:category:)();
}

id sub_10001C420()
{
  if (qword_100098B88 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003420(v0, qword_100099DB0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100014C58(0xD000000000000033, 0x800000010007A930, &v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100003458(v4);
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_10001E468(v5, v6, -999, 0xD000000000000033, 0x800000010007A930, 0);
}

id sub_10001C5C0()
{

  sub_100015694();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidecarRelayIntermediateDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10001C728(void *a1)
{
  ObjectType = swift_getObjectType();
  *(v1 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_relayProxy) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = *(v1 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_companionLinkDeviceDetector);
  type metadata accessor for RemoteDisplaySendingDevicesManager();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_remoteDisplaySendingDevicesManager) = sub_100018C98(v4, a1);
  swift_unknownObjectRetain();

  sub_10001203C();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v8[4] = sub_10001E37C;
  v8[5] = v6;
  sub_100011C68();
  v8[1] = 1107296256;
  v8[2] = sub_10001CA30;
  v8[3] = &unk_10008EC50;
  v7 = _Block_copy(v8);

  [a1 setDisplayServiceSessionsChangedListener:v7];
  _Block_release(v7);
}

void sub_10001C890(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(a1 + 16);
    if (qword_100098B88 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003420(v6, qword_100099DB0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v5 != 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "The set of remote display sessions has changed.  Sessions exist: [%{BOOL}d]", v9, 8u);
    }

    [v4 setRemoteDisplaySessionExists:v5 != 0];
    if (*&v4[OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_remoteDisplaySendingDevicesManager])
    {

      sub_100018EB0(v10);
    }

    else
    {
      sub_10001C420();
    }
  }
}

uint64_t sub_10001CA30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for UUID();
  sub_10001E384(&unk_100099180, &protocol conformance descriptor for UUID);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_10001CB34()
{
  v1 = v0;
  if (qword_100098B88 != -1)
  {
    sub_10001E3E4(&qword_100098B88);
  }

  v2 = type metadata accessor for Logger();
  sub_100003420(v2, qword_100099DB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Relay initialized", v5, 2u);
    sub_100003534(v5);
  }

  v6 = *&v1[OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_companionLinkDeviceDetector];
  type metadata accessor for CompanionLinkDeviceDiscoveryProxy();
  v7 = swift_allocObject();

  v8 = v1;
  *&v8[OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_companionLinkDeviceDiscoveryProxy] = sub_10001E1DC(v6, v8, v7);
}

void sub_10001CCA8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  sub_100011C54();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_10001E140;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100025214;
  aBlock[3] = &unk_10008EBD8;
  v14 = _Block_copy(aBlock);

  [v2 ignoreDetectionOfAnchorWithIdentifier:isa completion:v14];
  _Block_release(v14);
}

void sub_10001CE78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100098B88 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003420(v8, qword_100099DB0);
  (*(v5 + 16))(v7, a2, v4);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v11 = 136315394;
    sub_10001E384(&unk_100099C80, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_100014C58(v13, v15, &v20);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    if (a1)
    {
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v11 + 14) = v17;
    *v12 = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error encountered while trying to ignore detection of anchor with identifier [%s].  Error: [%@]", v11, 0x16u);
    sub_10001538C(v12);

    sub_100003458(v19);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10001D304(char *a1)
{
  v2 = XPC_EVENT_KEY_NAME.getter();
  if (!xpc_dictionary_get_string(a1, v2))
  {
    if (qword_100098B88 != -1)
    {
      sub_10001E3E4(&qword_100098B88);
    }

    v14 = type metadata accessor for Logger();
    sub_100003420(v14, qword_100099DB0);
    swift_unknownObjectRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136315394;
      sub_10000FC6C(&qword_100099168, &unk_100075750);
      v19 = String.init<A>(describing:)();
      v21 = sub_100014C58(v19, v20, &v35);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      swift_unknownObjectRetain();
      sub_10000FC6C(&qword_100099E80, &qword_100076018);
      v22 = String.init<A>(describing:)();
      v24 = sub_100014C58(v22, v23, &v35);

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not find [%s] in event [%s]", v17, 0x16u);
      swift_arrayDestroy();
      sub_100003534(v18);
      sub_100003534(v17);
    }

    return 0;
  }

  v4 = String.init(cString:)() == 0xD000000000000036 && 0x800000010007A9B0 == v3;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (qword_100098B88 != -1)
    {
      sub_10001E3E4(&qword_100098B88);
    }

    v26 = type metadata accessor for Logger();
    sub_100003420(v26, qword_100099DB0);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      v32 = sub_10001E448(4.8149e-34, v30, v31);

      *(v29 + 4) = v32;
      sub_10001E428(&_mh_execute_header, v33, v34, "Unrecognized event name: [%s]");
      sub_100003458(v30);
      sub_100003534(v30);
      sub_100003534(v29);
    }

    else
    {
    }

    return 0;
  }

  if (qword_100098B88 != -1)
  {
    sub_10001E3E4(&qword_100098B88);
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_100099DB0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    v11 = sub_10001E448(4.8149e-34, v9, v10);

    *(v8 + 4) = v11;
    sub_10001E428(&_mh_execute_header, v12, v13, "Received event: [%s]");
    sub_100003458(v9);
    sub_100003534(v9);
    sub_100003534(v8);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_10001D74C(void (*a1)(uint64_t, uint64_t))
{
  if (*(v1 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_remoteDisplaySendingDevicesManager))
  {

    v3 = sub_100018EF0();
    a1(v3, 0);
  }

  else
  {
    swift_getObjectType();
    v5 = sub_10001C420();
    a1(_swiftEmptyArrayStorage, v5);
  }
}

uint64_t sub_10001D8E4(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t, void (*)(void), uint64_t))
{
  if (*(v4 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_remoteDisplaySendingDevicesManager))
  {

    a4(a1, a2, a3);
  }

  else
  {
    swift_getObjectType();
    sub_10001C420();
    a2();
  }
}

uint64_t sub_10001D9E0(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, void (*a6)(void), void (*a7)(uint64_t, void (*)(void), uint64_t))
{
  v11 = type metadata accessor for UUID();
  sub_100011C54();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001203C();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = a1;
  sub_10001D8E4(v16, a6, v18, a7);

  return (*(v13 + 8))(v16, v11);
}

void sub_10001DB14(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = *(a2 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_loadedRelayDelegate);
  if ([v4 respondsToSelector:"ignoreDetectionForAnchorIdentifier:"])
  {
    swift_unknownObjectRetain();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v4 ignoreDetectionForAnchorIdentifier:isa];
    swift_unknownObjectRelease();
  }

  a3[2](a3, 0);

  _Block_release(a3);
}

uint64_t sub_10001DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_loadedRelayDelegate);
  result = [v7 respondsToSelector:"sendDataRequest:completion:"];
  if (result)
  {
    swift_unknownObjectRetain();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11[4] = a3;
    v11[5] = a4;
    sub_100011C68();
    v11[1] = 1107296256;
    v11[2] = sub_10001C2F8;
    v11[3] = &unk_10008EB10;
    v10 = _Block_copy(v11);

    [v7 sendDataRequest:isa completion:v10];
    _Block_release(v10);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001DEA8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12SidecarRelay32SidecarRelayIntermediateDelegate_loadedRelayDelegate);
  if ([v2 respondsToSelector:"overridePresenterLaunchOptions:"])
  {
    swift_unknownObjectRetain();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v4 = [v2 overridePresenterLaunchOptions:isa];

    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    return v5;
  }

  else
  {
  }
}

uint64_t sub_10001E060()
{
  _Block_release(*(v0 + 16));
  sub_10001203C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10001E094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001E0AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return _swift_deallocObject(v2);
}

void sub_10001E140(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_10001CE78(a1, v5);
}

uint64_t sub_10001E1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CompanionLinkDevice(0);
  *(a3 + 16) = Dictionary.init(dictionaryLiteral:)();
  *(a3 + 24) = &_swiftEmptySetSingleton;
  *(a3 + 40) = 0;
  if (qword_100098B60 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_100099610);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Loading", v8, 2u);
  }

  *(a3 + 32) = a2;
  return a3;
}

uint64_t sub_10001E310()
{
  swift_unknownObjectWeakDestroy();
  sub_10001203C();

  return _swift_deallocObject(v0);
}

uint64_t sub_10001E344()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10001E384(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001E3E4(uint64_t a1)
{

  return swift_once();
}

void sub_10001E428(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_10001E448(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_100014C58(v4, v3, va);
}

id sub_10001E468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Dictionary.init(dictionaryLiteral:)();
  if (a5)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v32 = &type metadata for String;
    *&v31 = a4;
    *(&v31 + 1) = a5;
    sub_100011558(&v31, v28);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10001E770();
    sub_10003D158(v12, v9, v11, v13);
  }

  if (a6)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    swift_getErrorValue();
    v17 = v29;
    v18 = v30;
    v32 = v30;
    v19 = sub_10001E710(&v31);
    (*(*(v18 - 1) + 16))(v19, v17, v18);
    sub_100011558(&v31, v28);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10001E770();
    sub_10003D158(v20, v14, v16, v21);
  }

  v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v23 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = [v22 initWithDomain:v23 code:a3 userInfo:isa];

  return v25;
}

uint64_t *sub_10001E710(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t SidecarPacketType.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 1801675054;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 1801547310;
      break;
    case 2:
      result = 0x7463656E6E6F632ELL;
      break;
    case 3:
      result = 0x6E6E6F637369642ELL;
      break;
    case 4:
      result = 0x65726975716E692ELL;
      break;
    case 5:
      result = 0x7375746174732ELL;
      break;
    case 6:
      result = 0x6567617373656D2ELL;
      break;
    default:
      result = dispatch thunk of CustomStringConvertible.description.getter();
      break;
  }

  return result;
}

id sub_10001E8B0(uint64_t a1)
{
  *&v25 = Int._bridgeToObjectiveC()();
  sub_1000033E0(0, &qword_100099E98, NSNumber_ptr);
  sub_10001FE44();
  AnyHashable.init<A>(_:)();
  sub_1000209D8(a1, &v25, v24);
  v2 = sub_10001FDF0(v24);
  if (v26)
  {
    sub_100020164(v2, v3, v4, &type metadata for Data);
  }

  else
  {
    sub_10001FD0C(&v25);
  }

  v22.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  AnyHashable.init<A>(_:)();
  sub_1000209D8(a1, &v25, v24);

  v5 = sub_10001FDF0(v24);
  if (v26)
  {
    if (sub_100020164(v5, v6, v7, &type metadata for Data))
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      v9 = OPACKDecodeData();
      sub_100003388(v22.super.super.isa, v23);

      if (v9)
      {
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          return v10;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_10001FD0C(&v25);
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  sub_100020130();
  v17 = sub_10001E674(v11, v12, v13, v14, v15, v16, 75);
  if (qword_100098BB0 != -1)
  {
    sub_1000200E0(&qword_100098BB0);
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100003420(v18, qword_1000A1AE8);
  __chkstk_darwin(v19);
  sub_100016F18(sub_10001EB84, 0, sub_100011C20);
  v20 = [objc_allocWithZone(NSDictionary) init];

  return v20;
}

uint64_t sub_10001EBA0()
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v1 = sub_100020184(isa, "objectForKey:");

  if (v1 && (sub_100020098(v2, v3, v4, &type metadata for Int, v5, v6, v7, v8, v10), swift_dynamicCast()))
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

id sub_10001EC24()
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v1 = sub_100020184(isa, "objectForKey:");

  if (v1)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  v5[0] = v1;
  v5[3] = ObjectType;
  v3 = sub_10001ECAC(v5);
  sub_10001FD0C(v5);
  return v3;
}

id sub_10001ECAC(uint64_t a1)
{
  sub_10001FD74(a1, v17);
  if (!v18)
  {
    sub_10001FD0C(v17);
    return 0;
  }

  sub_10000FC6C(&qword_100099E88, &qword_100076080);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = *&v19[0];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3 = RPDecodeNSError();

  if (v3 && (sub_10001FDE4() & 1) != 0)
  {
    *&v15 = 7169375;
    *(&v15 + 1) = 0xE300000000000000;
    AnyHashable.init<A>(_:)();
    sub_1000209D8(v1, &v15, v17);

    sub_10001FDF0(v17);
    if (v16)
    {
      sub_100011558(&v15, v19);
      v4 = [v3 domain];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = [v3 code];
      sub_10000FC6C(&qword_100099E90, &qword_100076088);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000759A0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v10;
      sub_100011020(v19, inited + 48);
      v11 = Dictionary.init(dictionaryLiteral:)();
      v12 = objc_allocWithZone(NSError);
      v13 = sub_10001FC44(v5, v7, v8, v11);

      sub_100003458(v19);
      return v13;
    }

    else
    {
      sub_10001FD0C(&v15);
    }
  }

  else
  {
  }

  return v3;
}

uint64_t sub_10001EEF0()
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v1 = sub_100020184(isa, "objectForKey:");

  if (!v1)
  {
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  return 0;
}

uint64_t sub_10001EF88()
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v1 = sub_100020184(isa, "objectForKey:");

  if (!v1)
  {
    return 0;
  }

  sub_100020098(v2, v3, v4, &type metadata for Double, v5, v6, v7, v8, v18);
  v9 = swift_dynamicCast();
  return sub_100020100(v9, v10, v11, v12, v13, v14, v15, v16, v19);
}

uint64_t sub_10001F00C(void *a1)
{
  v2 = 2;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v4 = [a1 objectForKey:isa];

  if (v4)
  {
    sub_100020098(v5, v6, v7, &type metadata for Int, v8, v9, v10, v11, v13);
    if (swift_dynamicCast())
    {
      return v14;
    }

    else
    {
      return 2;
    }
  }

  return v2;
}

uint64_t sub_10001F0B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v7 = [a1 objectForKey:isa];

  if (!v7)
  {
    return 0;
  }

  sub_100020098(v8, v9, v10, v11, v12, v13, v14, v15, v25);
  v16 = swift_dynamicCast();
  return sub_100020100(v16, v17, v18, v19, v20, v21, v22, v23, v26);
}

uint64_t sub_10001F14C(void *a1, uint64_t a2, unint64_t a3)
{
  v95 = 2683;
  v96 = 0xE200000000000000;
  strcpy(&v94, "  type: ");
  BYTE1(v94._object) = 0;
  WORD1(v94._object) = 0;
  HIDWORD(v94._object) = -402653184;
  v5 = sub_10001F00C(a1);
  v97._countAndFlagsBits = SidecarPacketType.description.getter(v5);
  sub_100020118(v97);

  sub_1000200A8();
  sub_1000200C4(v6, v7, v8, v9, v10, v11, v12, v13, v86, v90, v94._countAndFlagsBits, v94._object);

  strcpy(&v94, "  flags: 0x");
  HIDWORD(v94._object) = -352321536;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v15 = [a1 objectForKey:isa];

  if (v15 && (sub_100020098(v16, v17, v18, &type metadata for UInt, v19, v20, v21, v22, v87), swift_dynamicCast()))
  {
    v23 = v87;
  }

  else
  {
    v23 = 0;
  }

  v91 = v23;
  sub_100010ED0();
  v98._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  sub_100020118(v98);

  sub_1000200A8();
  sub_1000200C4(v24, v25, v26, v27, v28, v29, v30, v31, v87, v91, v94._countAndFlagsBits, v94._object);

  strcpy(&v94, "  channel: ");
  HIDWORD(v94._object) = -352321536;
  v92 = sub_10001EBA0();
  sub_100010C84();
  v99._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  sub_100020118(v99);

  sub_1000200A8();
  sub_1000200C4(v32, v33, v34, v35, v36, v37, v38, v39, v88, v92, v94._countAndFlagsBits, v94._object);

  v40 = sub_10001EEF0();
  if (v41)
  {
    strcpy(&v94, "  service: ");
    HIDWORD(v94._object) = -352321536;
    String.append(_:)(*&v40);

    sub_1000200A8();
    sub_1000200C4(v43, v44, v45, v46, v47, v48, v49, v50, v89, v93, v94._countAndFlagsBits, v94._object);
  }

  v51 = sub_10001F0B8(a1, v41, v42, 6, &type metadata for UInt64);
  if ((v52 & 1) == 0)
  {
    v53 = v51;
    _StringGuts.grow(_:)(16);

    strcpy(&v94, "  timestamp: ");
    HIWORD(v94._object) = -4864;
    v100._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    sub_100020118(v100);

    sub_1000200A8();
    sub_1000200C4(v54, v55, v56, v57, v58, v59, v60, v61, v89, v53, v94._countAndFlagsBits, v94._object);
  }

  sub_10001EF88();
  if ((v62 & 1) == 0)
  {
    strcpy(&v94, "  activity: ");
    BYTE5(v94._object) = 0;
    HIWORD(v94._object) = -5120;
    v101._countAndFlagsBits = Double.description.getter();
    sub_100020118(v101);

    sub_1000200A8();
    sub_1000200C4(v63, v64, v65, v66, v67, v68, v69, v70, v89, v93, v94._countAndFlagsBits, v94._object);
  }

  if (sub_10001EC24())
  {
    v71 = _convertErrorToNSError(_:)();

    strcpy(&v94, "  error: ");
    WORD1(v94._object) = 0;
    HIDWORD(v94._object) = -385875968;
    v72 = [v71 debugDescription];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    v76._countAndFlagsBits = v73;
    v76._object = v75;
    String.append(_:)(v76);

    sub_1000200A8();
    String.append(_:)(v94);
  }

  v77 = sub_10001EEF0();
  if (v78)
  {
    strcpy(&v94, "  version: ");
    HIDWORD(v94._object) = -352321536;
    String.append(_:)(*&v77);

    sub_1000200A8();
    String.append(_:)(v94);
  }

  if (a3 >> 60 != 15)
  {
    strcpy(&v94, "  body: ");
    BYTE1(v94._object) = 0;
    WORD1(v94._object) = 0;
    HIDWORD(v94._object) = -402653184;
    v79 = sub_100011E98();
    sub_10001FCF8(v79, v80);
    sub_100011E98();
    v81._countAndFlagsBits = Data.description.getter();
    String.append(_:)(v81);

    sub_1000200A8();
    String.append(_:)(v94);

    v82 = sub_100011E98();
    sub_100011358(v82, v83);
  }

  v84._countAndFlagsBits = 125;
  v84._object = 0xE100000000000000;
  String.append(_:)(v84);
  return v95;
}

void sub_10001F5BC()
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v2 = *v0;
  v3 = Int._bridgeToObjectiveC()().super.super.isa;
  [v2 setObject:isa forKeyedSubscript:v3];
}

id sub_10001F628(uint64_t a1)
{
  if (a1)
  {
    v1 = _convertErrorToNSError(_:)();
    v2 = [objc_allocWithZone(NSMutableDictionary) init];
    v3 = v1;
    v4 = _convertErrorToNSError(_:)();

    sub_100011E98();
    RPEncodeNSError();

    if (sub_10001FDE4())
    {
      v5 = [v3 userInfo];
      v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100020974(v6, &v9);

      if (v10)
      {
        sub_100011558(&v9, &v11);
        sub_10000FCB4(&v11, v12);
        v7 = _bridgeAnythingToObjectiveC<A>(_:)();
        *&v9 = 7169375;
        *(&v9 + 1) = 0xE300000000000000;
        [v2 __swift_setObject:v7 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_100003458(&v11);
      }

      else
      {

        sub_10001FD0C(&v9);
      }
    }

    else
    {
    }

    return v2;
  }

  else
  {
    sub_1000033E0(0, &qword_100099EA8, NSDictionary_ptr);
    return NSDictionary.init(dictionaryLiteral:)();
  }
}

void sub_10001F7E4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *v2;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v3 removeObjectForKey:?];
  }

  else
  {
    v4 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v5 = *v2;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v5 setObject:v4 forKeyedSubscript:?];
  }
}

uint64_t sub_10001F87C(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  sub_10001FCF8(a2, a3);
  v6 = sub_10001F14C(v5, a2, a3);

  sub_100011358(a2, a3);
  return v6;
}

uint64_t sub_10001F8F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v23 = Dictionary.init(dictionaryLiteral:)();
  sub_10000FC6C(&qword_100099E88, &qword_100076080);
  Dictionary.reserveCapacity(_:)(2);
  Data = OPACKEncoderCreateData();
  if (Data)
  {
    v6 = Data;
    Int._bridgeToObjectiveC()();
    sub_1000033E0(0, &qword_100099E98, NSNumber_ptr);
    sub_10001FE44();
    sub_100020144();
    type metadata accessor for CFData(0);
    v26 = v18;
    *&v25 = v6;
    sub_100011558(&v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003D268(v24, v27, isUniquelyReferenced_nonNull_native);
    v16 = v23;
    sub_10001FDF0(v27);
    if (a3 >> 60 != 15)
    {
      v20 = sub_100011E98();
      sub_100010E78(v20, v21);
      *&v25 = Int._bridgeToObjectiveC()();
      sub_100020144();
      v26 = &type metadata for Data;
      *&v25 = a2;
      *(&v25 + 1) = a3;
      sub_100011558(&v25, v24);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003D268(v24, v27, v22);
      v16 = v23;
      sub_10001FDF0(v27);
    }
  }

  else
  {

    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    sub_100020130();
    v13 = sub_10001E674(v7, v8, v9, v10, v11, v12, 238);
    if (qword_100098BB0 != -1)
    {
      sub_1000200E0(&qword_100098BB0);
    }

    v14 = type metadata accessor for Logger();
    v15 = sub_100003420(v14, qword_1000A1AE8);
    __chkstk_darwin(v15);
    sub_100016F18(sub_10001FBDC, 0, sub_10001132C);
    v16 = Dictionary.init(dictionaryLiteral:)();
  }

  return v16;
}

uint64_t sub_10001FC04()
{
  v1 = *(v0 + 8);
  sub_10001FCF8(v1, *(v0 + 16));
  return v1;
}

id sub_10001FC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

uint64_t sub_10001FCF8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010E78(result, a2);
  }

  return result;
}

uint64_t sub_10001FD0C(uint64_t a1)
{
  v2 = sub_10000FC6C(&qword_10009B0C0, &qword_100075790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001FD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_10009B0C0, &qword_100075790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001FE44()
{
  result = qword_100099EA0;
  if (!qword_100099EA0)
  {
    sub_1000033E0(255, &qword_100099E98, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099EA0);
  }

  return result;
}

uint64_t sub_10001FEAC(uint64_t a1)
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

uint64_t sub_10001FEC8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10001FF18(uint64_t a1)
{
  result = sub_10001FF40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001FF40()
{
  result = qword_100099EB0;
  if (!qword_100099EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099EB0);
  }

  return result;
}

unint64_t sub_10001FF94(uint64_t a1)
{
  result = sub_10001FFBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001FFBC()
{
  result = qword_100099EB8;
  if (!qword_100099EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099EB8);
  }

  return result;
}

unint64_t sub_100020010(uint64_t a1)
{
  result = sub_100020038();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100020038()
{
  result = qword_100099EC0;
  if (!qword_100099EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099EC0);
  }

  return result;
}

void sub_1000200A8()
{
  v1 = 10;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

void sub_1000200C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  String.append(_:)(*&a11);
}

uint64_t sub_1000200E0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100020100(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    return a9;
  }

  else
  {
    return 0;
  }
}

void sub_100020118(Swift::String a1)
{

  String.append(_:)(a1);
}

void *sub_100020144()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100020164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id sub_100020184(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_10002019C()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_100099EC8);
  sub_100003420(v0, qword_100099EC8);
  return Logger.init(subsystem:category:)();
}

void *sub_10002021C(void *a1)
{
  v1[2] = a1;
  v1[3] = 0;
  type metadata accessor for EnhancedDiscoveryController();
  v3 = swift_allocObject();
  *(v3 + 32) = 1;
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  v1[4] = v3;
  v4 = a1;
  return v1;
}

void sub_10002026C(uint64_t a1, uint64_t a2, void (*a3)(void, void, id), uint64_t a4)
{
  v7 = *v4;
  v27 = type metadata accessor for DispatchPredicate();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100098B90 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003420(v11, qword_100099EC8);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[1] = v7;
    v15 = v14;
    v29 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = Dictionary.description.getter();
    v18 = sub_100014C58(v16, v17, &v29);
    v26 = a3;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v28 = a2;

    sub_10000FC6C(&qword_100099FB8, &qword_100076318);
    v20 = String.init<A>(describing:)();
    v22 = sub_100014C58(v20, v21, &v29);
    a3 = v26;

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Handling remote initiation request. Request: [%s. Options: [%s]", v15, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  *v10 = static OS_dispatch_queue.main.getter();
  v23 = v27;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v27);
  v24 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v23);
  if (v24)
  {
    sub_1000205C8(-999, 0xD000000000000042, 0x800000010007AB20, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000205C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, id))
{
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = sub_10001E468(v8, v10, a1, a2, a3, 0);
  if (qword_100098B90 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003420(v12, qword_100099EC8);
  v13 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error encountered: [%@].", v16, 0xCu);
    sub_10001538C(v17);
  }

  v19 = v13;
  a4(0, 0, v13);
}

uint64_t sub_1000207D0()
{

  return v0;
}

uint64_t sub_100020800()
{
  sub_1000207D0();

  return _swift_deallocClassInstance(v0, 40, 7);
}

void sub_10002087C()
{
  sub_100049F48();
  sub_100011E50();
  swift_beginAccess();
  v1 = sub_10003A1F4(v0);
  swift_endAccess();
  if (v1)
  {

    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    sub_100048324();
    sub_10004A140();
    swift_allocError();
    *v2 = 0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    v5 = sub_100049F8C(v3, v4, -101, 17, 0x800000010007B240);
    v6 = sub_100049AA4();
    sub_10002F534(v6, v7, 1);
  }
}

double sub_100020974@<D0>(uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1000391EC(), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100011020(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1000209D8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_10003925C(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_100011020(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100020A3C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1000392A0();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100020A8C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, Swift::UInt a3@<X0>, uint64_t a4@<X1>, uint64_t a5@<X2>)
{
  v6 = 0uLL;
  if (*(a1 + 16))
  {
    v8 = sub_100039568(a3, a4, a5);
    if (v9)
    {
      v10 = *(a1 + 56) + 40 * v8;
      v14 = *v10;
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);

      v6 = v14;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      result = 0;
      v6 = 0uLL;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    result = 0;
  }

  *a2 = v6;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_100020B28(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_100039668(a1, a2), (v3 & 1) != 0))
  {
    v4 = _s7SessionC8IdentityVMa(0);
    sub_100011D00();
    sub_100049760();
    sub_10003E75C();
    v5 = sub_100049BFC();
    v8 = v4;
  }

  else
  {
    _s7SessionC8IdentityVMa(0);
    v5 = sub_100049BE8();
  }

  return sub_10001137C(v5, v6, v7, v8);
}

uint64_t sub_100020BD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  a3(a1);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100020C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_1000391EC(), (v4 & 1) != 0))
  {
    v5 = type metadata accessor for CompanionLinkDevice(0);
    sub_100011D00();
    sub_10003E75C();
    v6 = sub_100049BFC();
    v9 = v5;
  }

  else
  {
    type metadata accessor for CompanionLinkDevice(0);
    v6 = sub_100049BE8();
  }

  return sub_10001137C(v6, v7, v8, v9);
}

uint64_t sub_100020CD4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_10003925C(a1);
  if (v2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100020D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000391EC();
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void sub_100020D74()
{
  sub_100011FF4();
  v2 = v1;
  v21 = v3;
  v22 = v4;
  v5 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v6 = sub_10001B8E8(v5);
  __chkstk_darwin(v6);
  sub_100011D10();
  v19[1] = v7 - v8;
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  v12 = 0;
  v23 = *(v2 + 16);
  v20 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v23 == v12)
    {

LABEL_14:
      sub_100011FBC();
      return;
    }

    if (v12 >= *(v2 + 16))
    {
      break;
    }

    sub_100048658();
    v13 = v21(v11);
    if (v0)
    {
      sub_100048978(v11, &qword_10009A850);

      goto LABEL_14;
    }

    if (v13)
    {
      sub_10004871C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v20;
      v24 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10003EC7C(0, v20[2] + 1, 1);
        v15 = v24;
      }

      v17 = v15[2];
      v16 = v15[3];
      v18 = (v17 + 1);
      if (v17 >= v16 >> 1)
      {
        v20 = (v17 + 1);
        v19[0] = v17;
        sub_10003EC7C(v16 > 1, v17 + 1, 1);
        v18 = v20;
        v15 = v24;
      }

      ++v12;
      v15[2] = v18;
      v20 = v15;
      sub_10004871C();
    }

    else
    {
      sub_100048978(v11, &qword_10009A850);
      ++v12;
    }
  }

  __break(1u);
}

BOOL sub_100020FF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

const char *sub_100021034(uint64_t a1)
{
  v2 = RapportStreamSession.streamID.getter();
  if (v3 && (v20 = 58, v21 = 0xE100000000000000, __chkstk_darwin(v2), sub_100011DA8(), *(v4 - 16) = &v20, v8 = sub_100038434(1, 0, sub_1000496CC, v5, v6, v7, v4), sub_100035E08(v8), sub_10004A080(), v10 = v9, , v10))
  {
    v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_10004A074();
    static String._fromSubstring(_:)();
    sub_10004A080();

    sub_10004A074();
    v12 = String._bridgeToObjectiveC()();

    v13 = *(a1 + 16);
    sub_100049CB8();
    v16 = [v14 v15];
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v16 = "Activation Failed: ";
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_10001E468(v17, v18, -1001, 0xD000000000000022, 0x800000010007B210, 0);
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_10002120C()
{
  sub_100049C50();
  if ((static UUID.== infix(_:_:)() & 1) != 0 && (v2 = _s7SessionC8IdentityVMa(0), *(v1 + *(v2 + 20)) == *(v0 + *(v2 + 20))))
  {
    v3 = *(v1 + *(v2 + 24)) ^ *(v0 + *(v2 + 24)) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_100021270()
{
  sub_100011D50();
  swift_beginAccess();

  sub_100023B5C(v1);
  sub_100049AC8();

  return v0;
}

void sub_1000216C0()
{
  sub_100011DD0();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for SidecarIdentity(0);
  v12 = sub_1000499EC(v11);
  __chkstk_darwin(v12);
  sub_100049818();
  v75 = _s7SessionC8IdentityVMa(0);
  sub_100011D00();
  __chkstk_darwin(v13);
  sub_100011D10();
  __chkstk_darwin(v14);
  sub_100049AEC();
  __chkstk_darwin(v15);
  sub_100049D4C();
  v16 = _TtC12SidecarRelay15ServiceProvider;
  v79 = v6;
  v78 = v17;
  if (v8)
  {
    swift_errorRetain();
    if (qword_100098BB0 != -1)
    {
      sub_100049734();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100049AD4(v18, qword_1000A1AE8);
    sub_100049FCC();
    __chkstk_darwin(v19);
    sub_100011DA8();
    *(v20 - 16) = v8;
    sub_100016F18(sub_100043BCC, v10, sub_100011C20);

    if (v6)
    {
LABEL_5:
      sub_1000292B0(v8, v21, v22, v23);
    }
  }

  else
  {
    if (qword_100098BB0 != -1)
    {
      sub_100049734();
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100049AD4(v51, qword_1000A1AE8);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      sub_100049C18();
      v54 = swift_slowAlloc();
      sub_100049A30();
      v80 = swift_slowAlloc();
      v83 = v80;
      *v54 = 136446210;
      sub_100027DA0();
      v57 = v1;
      v58 = v2;
      v59 = sub_100014C58(v55, v56, &v83);

      *(v54 + 4) = v59;
      v2 = v58;
      v1 = v57;
      v4 = v0;
      _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: Close Session", v54, 0xCu);
      sub_100003458(v80);
      sub_100011CF4();

      v6 = v79;
      sub_100011CF4();
    }

    v16 = _TtC12SidecarRelay15ServiceProvider;
    if (v6)
    {
      goto LABEL_5;
    }
  }

  sub_1000293FC();
  sub_10002EEEC(v10);
  sub_10002EC10(v10 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity);
  sub_100049760();
  sub_10003E75C();
  sub_100011D50();
  swift_beginAccess();
  v24 = *(v4 + 152);
  v25 = &off_100075000;
  if (!*(v24 + 16))
  {
    goto LABEL_29;
  }

  v26 = v16;

  v27 = sub_1000393BC(v3);
  if ((v28 & 1) == 0)
  {

    goto LABEL_29;
  }

  v29 = v27;
  v30 = *(v24 + 36);

  sub_10002F010(v1, v29, v30, 0, *(v4 + 152));
  v32 = v31;
  sub_100049748();
  sub_10003E708(v1);
  if (*(v32 + OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_allowsReconnect) != 1)
  {
    sub_100011E50();
    swift_beginAccess();
    sub_10000FC6C(&qword_10009A768, &qword_100076970);
    Dictionary._Variant.remove(at:)();

    swift_endAccess();
    sub_100049748();
    sub_10003E708(v1);
    v16 = v26;
LABEL_28:
    v25 = &off_100075000;
    goto LABEL_29;
  }

  v16 = v26;
  if (v26[74].info != -1)
  {
    sub_100049734();
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100049AD4(v33, qword_1000A1AE8);
  sub_100049760();
  sub_10003E75C();
  v34 = v32;
  v35 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  v36 = sub_100049D00();
  if (!os_log_type_enabled(v36, v37))
  {

    sub_100049748();
    sub_10003E708(v78);
    goto LABEL_28;
  }

  sub_10004A14C();
  v70 = swift_slowAlloc();
  sub_100049A30();
  v72 = swift_slowAlloc();
  v81 = v72;
  *v70 = 136446466;
  v71 = v35;
  v38 = sub_100052008();
  v69 = v39;
  v40 = *(v78 + *(v75 + 24)) == 0;
  v76 = v2;
  if (v40)
  {
    v41 = 0x6C61636F6CLL;
  }

  else
  {
    v41 = 0x65746F6D6572;
  }

  if (v40)
  {
    v42 = 0xE500000000000000;
  }

  else
  {
    v42 = 0xE600000000000000;
  }

  sub_100010ED0();
  sub_100011EB0();
  v43 = String.init<A>(_:radix:uppercase:)();
  v74 = v3;
  v45 = v44;
  v82[0] = v38;
  v82[1] = v69;
  v46._countAndFlagsBits = sub_100049ABC();
  String.append(_:)(v46);
  v47._countAndFlagsBits = v41;
  v2 = v76;
  v47._object = v42;
  String.append(_:)(v47);
  v16 = v26;

  v48._countAndFlagsBits = sub_100049ABC();
  String.append(_:)(v48);
  v49._countAndFlagsBits = v43;
  v49._object = v45;
  String.append(_:)(v49);
  v3 = v74;

  sub_100049748();
  sub_10003E708(v78);
  v50 = sub_100014C58(v38, v69, &v81);

  *(v70 + 4) = v50;
  *(v70 + 12) = 1024;
  LODWORD(v50) = *&v34[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

  *(v70 + 14) = v50;
  _os_log_impl(&_mh_execute_header, v71, v73, "%{public}s: Allow Session Reconnect to Service Provider PID %d", v70, 0x12u);
  sub_100003458(v72);
  sub_100011CF4();

  sub_100011CF4();

  v25 = &off_100075000;
LABEL_29:
  if (v16[74].info != -1)
  {
    sub_100049734();
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_100049AD4(v60, qword_1000A1AE8);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    sub_10004A14C();
    v63 = swift_slowAlloc();
    sub_100049A30();
    v77 = v2;
    v64 = swift_slowAlloc();
    v82[0] = v64;
    *v63 = *(v25 + 172);
    sub_100027DA0();
    sub_100014C58(v65, v66, v82);
    sub_10004A228();
    *(v63 + 4) = v3;
    *(v63 + 12) = 1024;
    *(v63 + 14) = v79 & 1;
    _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s: Close Session (Send Disconnect: %{BOOL}d)", v63, 0x12u);
    sub_100003458(v64);
    v2 = v77;
    sub_100011CF4();

    sub_100011CF4();
  }

  sub_10002F0DC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v68 = Strong;
    swift_weakAssign();
    sub_10002C578(v68);
    sub_100049760();
    sub_10003E75C();
    sub_1000497A4();
    sub_100049AB0();
    sub_1000469E4();
    sub_100049F3C();
    sub_10002E6DC();

    sub_10004971C();
    sub_10003E708(v2);
  }

  sub_100049748();
  sub_10003E708(v3);
  sub_100011DB8();
}

uint64_t sub_100021EBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v38 = a7;
  type metadata accessor for RapportStreamSession();
  v14 = RapportStreamSession.__allocating_init()();
  RapportStreamSession.delegatedProcessUPID.setter(a4);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v36 = type metadata accessor for RapportRemoteDisplaySession();
    v37 = &protocol witness table for RapportRemoteDisplaySession;
    v34 = v16;

    RapportStreamSession.messenger.setter(&v34);

    v17 = a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity;
    v34 = *(v17 + *(_s7SessionC8IdentityVMa(0) + 20));
    sub_100010C84();
    sub_100011EB0();
    v34 = String.init<A>(_:radix:uppercase:)();
    v35 = v18;

    v19._countAndFlagsBits = sub_100049ABC();
    String.append(_:)(v19);

    v20._countAndFlagsBits = a5;
    v20._object = a6;
    String.append(_:)(v20);

    RapportStreamSession.streamID.setter(v34, v35);
    if ((a2 - 1) < 3)
    {
      v21 = a2;
    }

    else
    {
      v21 = 0;
    }

    RapportStreamSession.streamType.setter(v21);
    v22 = RapportStreamSession.streamFlags.getter();
    v23 = 0;
    if ((a3 & 2) != 0)
    {
      v23 = *RapportStreamFlags.lowLatency.unsafeMutableAddressor();
    }

    RapportStreamSession.streamFlags.setter(v23 | v22);
    v24 = RapportStreamSession.trafficFlags.getter();
    RapportStreamSession.trafficFlags.setter(v24 & 0xFFFFBDFF);
    v25 = swift_allocObject();
    v25[2] = v38;
    v25[3] = a8;
    v25[4] = v14;

    RapportStreamSession.prepare(completion:)(sub_1000487A8, v25);
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_1000497EC();
    sub_10001E468(v26, v27, v28, v29, v30, v31);
    swift_willThrow();
  }
}

void sub_100022124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004A2B0();
  sub_100049E34();
  v5 = sub_100049CDC();
  v6 = _s7SessionC8IdentityVMa(v5);
  v7 = sub_1000499EC(v6);
  __chkstk_darwin(v7);
  sub_100011CD4();
  v8 = sub_10004998C();
  v9 = type metadata accessor for SidecarIdentity(v8);
  v10 = sub_1000499EC(v9);
  __chkstk_darwin(v10);
  sub_100049818();
  sub_100049760();
  sub_10003E75C();
  sub_1000497A4();
  sub_1000469E4();
  sub_100049E28();
  swift_beginAccess();
  sub_1000498A0();
  v13 = sub_100020BD8(v4, v11, v12);
  swift_endAccess();
  if (!v13)
  {
    type metadata accessor for Domain();
    swift_allocObject();
    Domain.init()();
    sub_100011E50();
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v3 + 136);
    sub_100049BB0();
    sub_10003DC84();
    *(v3 + 136) = v16;
    swift_endAccess();
  }

  v14 = sub_100049BBC();
  Domain.allocate(completion:)(v14, v15);
  sub_100029624();

  sub_10004971C();
  sub_10003E708(v4);
  sub_10004A164();
}

void sub_1000222B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100011DD0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v255 = sub_10000FC6C(&qword_10009A810, &qword_1000769F8);
  sub_100011D00();
  __chkstk_darwin(v27);
  sub_100011D10();
  sub_10001B864();
  __chkstk_darwin(v28);
  sub_100049E58();
  sub_10001B864();
  __chkstk_darwin(v29);
  sub_100049E58();
  sub_10001B864();
  __chkstk_darwin(v30);
  sub_100049C80();
  sub_10004A068(v31);
  v259 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  sub_100011D00();
  __chkstk_darwin(v32);
  sub_100011D10();
  sub_10001B864();
  __chkstk_darwin(v33);
  sub_100049E58();
  sub_10001B864();
  __chkstk_darwin(v34);
  sub_100049E58();
  sub_10001B864();
  __chkstk_darwin(v35);
  sub_100049C80();
  sub_10004A068(v36);
  v273 = sub_10000FC6C(&qword_10009A780, &qword_100076980);
  sub_100011D00();
  __chkstk_darwin(v37);
  sub_100011D10();
  sub_10001B864();
  __chkstk_darwin(v38);
  sub_10004A0B8();
  __chkstk_darwin(v39);
  sub_100049E58();
  sub_10001B864();
  __chkstk_darwin(v40);
  sub_100049C80();
  sub_10004A068(v41);
  v269 = sub_10000FC6C(&qword_10009A9E0, &qword_100076B18);
  sub_100011C54();
  v260 = v42;
  __chkstk_darwin(v43);
  sub_100011D10();
  sub_10001B864();
  __chkstk_darwin(v44);
  sub_100049C80();
  sub_10004A068(v45);
  sub_100011D50();
  swift_beginAccess();
  v251 = v20;
  v46 = v20[20];
  v47 = *(v46 + 16);
  v276 = v22;
  v249 = v26;
  if (v47)
  {
    *&v282[0] = _swiftEmptyArrayStorage;

    sub_10003ED7C(0, v47, 0);
    sub_10004A03C();
    sub_10004A030(v48);
    v51 = sub_100046A7C(v46);
    v52 = 0;
    v53 = v46 + 64;
    v264 = v47;
    if ((v51 & 0x8000000000000000) == 0)
    {
      while (v51 < 1 << *(v46 + 32))
      {
        v54 = v51 >> 6;
        if ((*(v53 + 8 * (v51 >> 6)) & (1 << v51)) == 0)
        {
          goto LABEL_127;
        }

        if (*(v46 + 36) != v49)
        {
          goto LABEL_128;
        }

        LODWORD(v270) = v50;
        v274 = v49;
        v55 = (*(v46 + 48) + 16 * v51);
        v47 = v55[1];
        v275 = *v55;
        v56 = *(*(v46 + 56) + 8 * v51);
        if (v56 >> 62)
        {
          v57 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_10004A004();
        *&v282[0] = v58;
        v60 = *(v58 + 16);
        v59 = *(v58 + 24);

        if (v60 >= v59 >> 1)
        {
          sub_10003ED7C((v59 > 1), v60 + 1, 1);
          sub_10004A03C();
          sub_10004A030(v73);
        }

        sub_10004A004();
        *(v61 + 16) = v60 + 1;
        v62 = (v61 + 24 * v60);
        v62[4] = v275;
        v62[5] = v47;
        v62[6] = v57;
        v21 = 1 << *(v46 + 32);
        if (v51 >= v21)
        {
          goto LABEL_129;
        }

        v53 = v46 + 64;
        if ((*(v46 + 64 + 8 * v54) & (1 << v51)) == 0)
        {
          goto LABEL_130;
        }

        if (*(v46 + 36) != v274)
        {
          goto LABEL_131;
        }

        sub_100049B80();
        if (v174)
        {
          v64 = v54 << 6;
          v65 = v54 + 1;
          v66 = (v46 + 72 + 8 * v54);
          v22 = v276;
          while (v65 < (v21 + 63) >> 6)
          {
            v68 = *v66++;
            v67 = v68;
            v64 += 64;
            ++v65;
            if (v68)
            {
              sub_100049C44();
              sub_100010FDC(v51, v69, v70);
              v21 = __clz(__rbit64(v67)) + v64;
              goto LABEL_20;
            }
          }

          sub_100049C44();
          sub_100010FDC(v51, v71, v72);
        }

        else
        {
          sub_100049FE4();
          v21 = v63 | v51 & 0x7FFFFFFFFFFFFFC0;
          v22 = v276;
        }

LABEL_20:
        ++v52;
        LODWORD(v47) = v264;
        if (v52 == v264)
        {

          goto LABEL_26;
        }

        v50 = 0;
        v49 = *(v46 + 36);
        v51 = v21;
        if (v21 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v277 = _swiftEmptyArrayStorage;
LABEL_26:
  v74 = sub_1000240C8(v277, &qword_10009AAA0, &qword_100076BD8, sub_1000404A4);
  sub_100049D1C(v74, v281);
  sub_100011D50();
  swift_beginAccess();

  *&v282[0] = sub_10003EB3C(v75);
  sub_10003816C(v282);

  v76 = *&v282[0];
  v46 = *(*&v282[0] + 16);
  if (v46)
  {
    *&v282[0] = _swiftEmptyArrayStorage;
    sub_10003ED5C(0, v46, 0);
    v77 = *&v282[0];
    LODWORD(v275) = v76;
    v78 = v76 + ((*(v260 + 80) + 32) & ~*(v260 + 80));
    sub_10004A030(*(v260 + 72));
    v47 = &qword_10009A9E0;
    do
    {
      sub_100048658();
      sub_100048658();
      v79 = RapportRemoteDisplayDiscovery.description.getter();
      v81 = v80;

      sub_100048978(v267, &qword_10009A9E0);
      sub_10004971C();
      sub_10003E708(v268);
      *&v282[0] = v77;
      v83 = v77[2];
      v82 = v77[3];
      if (v83 >= v82 >> 1)
      {
        v86 = sub_100011EBC(v82);
        sub_10003ED5C(v86, v83 + 1, 1);
        v77 = *&v282[0];
      }

      v77[2] = v83 + 1;
      v84 = &v77[2 * v83];
      v84[4] = v79;
      v84[5] = v81;
      sub_10004A004();
      v78 += v85;
      --v46;
    }

    while (v46);
    v248 = v77;

    v22 = v276;
  }

  else
  {

    v248 = _swiftEmptyArrayStorage;
  }

  sub_100011D50();
  swift_beginAccess();
  v21 = v251[12];
  v87 = *(v21 + 16);
  if (v87)
  {
    v284 = _swiftEmptyArrayStorage;

    v88 = sub_100049D3C();
    sub_10003ED3C(v88, v89, v90);
    sub_10004A030(v284);
    v47 = sub_100046A7C(v21);
    v92 = 0;
    v93 = v21 + 64;
    v261 = v91;
    v250 = v21 + 72;
    v266 = v21;
    v262 = v87;
    v265 = v21 + 64;
    while ((v47 & 0x8000000000000000) == 0 && v47 < 1 << *(v21 + 32))
    {
      if ((*(v93 + 8 * (v47 >> 6)) & (1 << v47)) == 0)
      {
        goto LABEL_133;
      }

      if (*(v21 + 36) != v91)
      {
        goto LABEL_134;
      }

      v274 = v47 >> 6;
      v269 = v91;
      v94 = sub_100049FC0();
      type metadata accessor for Relay.RapportSessionKey(v94);
      sub_100049D2C();
      sub_10003E75C();
      v95 = *(*(v21 + 56) + 8 * v47);
      sub_1000469E4();
      *(v271 + *(v273 + 48)) = v95;
      sub_100048658();

      v96 = *(v22 + *(v87 + 28));
      v268 = v92;
      v270 = 1 << v47;
      if (v96)
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        sub_100010F24(isa);

        v98 = 0xE400000000000000;
        sub_100049C30();
        *(&v282[0] + 1) = 0xE400000000000000;
        sub_10004A158();
        sub_100010C84();
        sub_100049924();
        v99._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v99);

        sub_10004A03C();
        *&v282[0] = v100;
        v101._countAndFlagsBits = sub_100049ABC();
        String.append(_:)(v101);
        switch(v96)
        {
          case 1:
            v102 = 1279547201;
            break;
          case 2:
            v98 = 0xE300000000000000;
            v102 = 4346709;
            break;
          case 3:
            v102 = 1229343063;
            break;
          default:
            v102 = 0;
            v98 = 0xE000000000000000;
            break;
        }

        v104 = v98;
      }

      else
      {
        v103 = UUID._bridgeToObjectiveC()().super.isa;
        sub_100010F24(v103);

        sub_100049C30();
        *(&v282[0] + 1) = 0xE400000000000000;
        sub_10004A158();
        sub_100010C84();
        sub_100049924();
        v102 = String.init<A>(_:radix:uppercase:)();
      }

      String.append(_:)(*&v102);

      sub_10004A03C();
      v275 = v105;
      v106 = *(&v282[0] + 1);
      sub_10003E708(v22);
      v46 = v271;
      sub_100048658();
      v107 = RapportRemoteDisplaySession.description.getter();
      v109 = v108;

      v110 = sub_100049F30();
      sub_100048978(v110, v111);
      sub_10003E708(v263);
      v112 = v277;
      v284 = v277;
      v114 = v277[2];
      v113 = v277[3];
      if (v114 >= v113 >> 1)
      {
        v128 = sub_100011EBC(v113);
        sub_10003ED3C(v128, v114 + 1, 1);
        v112 = v284;
      }

      v112[2] = v114 + 1;
      v115 = &v112[4 * v114];
      v115[4] = v275;
      v115[5] = v106;
      v115[6] = v107;
      v115[7] = v109;
      v21 = v266;
      v87 = 1 << *(v266 + 32);
      if (v47 >= v87)
      {
        goto LABEL_135;
      }

      v93 = v265;
      if ((*(v265 + 8 * v274) & v270) == 0)
      {
        goto LABEL_136;
      }

      v277 = v112;
      if (*(v266 + 36) != v269)
      {
        goto LABEL_137;
      }

      sub_100049B80();
      if (v174)
      {
        v120 = v116 << 6;
        v121 = v116 + 1;
        v122 = (v250 + 8 * v116);
        v22 = v276;
        v118 = v262;
        v119 = v268;
        while (v121 < (v87 + 63) >> 6)
        {
          v123 = *v122++;
          v46 = v123;
          v120 += 64;
          ++v121;
          if (v123)
          {
            sub_100049C44();
            sub_100010FDC(v47, v124, v125);
            v87 = __clz(__rbit64(v46)) + v120;
            goto LABEL_61;
          }
        }

        sub_100049C44();
        sub_100010FDC(v47, v126, v127);
      }

      else
      {
        sub_100049FE4();
        v87 = v117 | v47 & 0x7FFFFFFFFFFFFFC0;
        v22 = v276;
        v118 = v262;
        v119 = v268;
      }

LABEL_61:
      v92 = v119 + 1;
      v47 = v87;
      v91 = v261;
      if (v92 == v118)
      {

        goto LABEL_63;
      }
    }

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
    goto LABEL_138;
  }

LABEL_63:
  sub_100049938();
  v268 = sub_1000240C8(v129, v130, v131, v132);
  v21 = v251[13];
  v133 = *(v21 + 16);
  v134 = _swiftEmptyArrayStorage;
  if (v133)
  {
    *&v282[0] = _swiftEmptyArrayStorage;

    sub_10003ED3C(0, v133, 0);
    v134 = *&v282[0];
    v137 = sub_100046A7C(v21);
    v138 = 0;
    v47 = v21 + 64;
    v270 = v135;
    v269 = v21 + 72;
    v272 = v133;
    v273 = v21 + 64;
    while ((v137 & 0x8000000000000000) == 0 && v137 < 1 << *(v21 + 32))
    {
      v46 = v137 >> 6;
      v87 = 1 << v137;
      if ((*(v47 + 8 * (v137 >> 6)) & (1 << v137)) == 0)
      {
        goto LABEL_139;
      }

      if (*(v21 + 36) != v135)
      {
        goto LABEL_140;
      }

      v276 = v135;
      LODWORD(v274) = v136;
      v275 = v138;
      v284 = *(*(v21 + 48) + 8 * v137);

      v278 = String.init<A>(describing:)();
      v140 = v139;
      v47 = RapportStreamServer.description.getter();
      v142 = v141;

      *&v282[0] = v134;
      v144 = v134[2];
      v143 = v134[3];
      v145 = v134;
      if (v144 >= v143 >> 1)
      {
        v156 = sub_100011EBC(v143);
        sub_10003ED3C(v156, v144 + 1, 1);
        v145 = *&v282[0];
      }

      v145[2] = v144 + 1;
      v146 = &v145[4 * v144];
      v146[4] = v278;
      v146[5] = v140;
      v146[6] = v47;
      v146[7] = v142;
      v147 = 1 << *(v21 + 32);
      if (v137 >= v147)
      {
        goto LABEL_141;
      }

      v47 = v21 + 64;
      if ((*(v273 + 8 * v46) & v87) == 0)
      {
        goto LABEL_142;
      }

      v134 = v145;
      if (*(v21 + 36) != v276)
      {
        goto LABEL_143;
      }

      sub_100049B80();
      if (v174)
      {
        v87 = v46 << 6;
        v149 = v46 + 1;
        v150 = (v269 + 8 * v46);
        v133 = v272;
        while (v149 < (v147 + 63) >> 6)
        {
          v151 = *v150++;
          v46 = v151;
          v87 += 64;
          ++v149;
          if (v151)
          {
            sub_100049C44();
            sub_100010FDC(v137, v152, v153);
            v147 = __clz(__rbit64(v46)) + v87;
            goto LABEL_81;
          }
        }

        sub_100049C44();
        sub_100010FDC(v137, v154, v155);
      }

      else
      {
        sub_100049FE4();
        v147 = v148 | v137 & 0x7FFFFFFFFFFFFFC0;
        v133 = v272;
      }

LABEL_81:
      v136 = 0;
      v138 = v275 + 1;
      v137 = v147;
      v135 = v270;
      if (v275 + 1 == v133)
      {

        goto LABEL_83;
      }
    }

LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

LABEL_83:
  sub_100049938();
  v160 = sub_1000240C8(v134, v157, v158, v159);
  sub_100049D1C(v160, &v286);
  sub_100011D50();
  swift_beginAccess();
  v21 = *(v87 + 120);
  v161 = *(v21 + 16);
  v162 = _swiftEmptyArrayStorage;
  if (v161)
  {
    v283 = _swiftEmptyArrayStorage;

    v163 = sub_100049D3C();
    sub_10003ED1C(v163, v164, v165);
    v162 = v283;
    v47 = sub_100046A7C(v21);
    sub_100049EAC();
    if ((v47 & 0x8000000000000000) == 0)
    {
      do
      {
        sub_100049EA0();
        if (v47 >= v166)
        {
          break;
        }

        sub_10004A0E4();
        if (((v168 >> v47) & 1) == 0)
        {
          goto LABEL_145;
        }

        if (*(v21 + 36) != v46)
        {
          goto LABEL_146;
        }

        v274 = v167;
        LODWORD(v275) = v133;
        v276 = v46;
        v279 = v162;
        v169 = sub_100049FC0();
        _s7SessionC8IdentityVMa(v169);
        sub_100049D2C();
        sub_100049760();
        sub_10003E75C();
        v170 = *(*(v21 + 56) + 8 * v47);
        sub_1000497D4();
        sub_1000469E4();
        *(v256 + *(v259 + 48)) = v170;
        sub_100048658();

        v171 = UUID._bridgeToObjectiveC()().super.isa;
        sub_100010F24(v171);

        sub_100049C30();
        *(&v282[0] + 1) = 0xE400000000000000;
        sub_100010C84();
        sub_100049924();
        v172._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v172);

        v173 = *(&v282[0] + 1);
        v174 = *(v257 + *(v161 + 32)) == 0;
        if (*(v257 + *(v161 + 32)))
        {
          v175 = 0x65746F6D6572;
        }

        else
        {
          v175 = 0x6C61636F6CLL;
        }

        if (v174)
        {
          v21 = 0xE500000000000000;
        }

        else
        {
          v21 = 0xE600000000000000;
        }

        sub_100010ED0();
        sub_100049924();
        v176 = String.init<A>(_:radix:uppercase:)();
        v178 = v177;
        sub_10004A158();
        v281[0] = v173;
        v179._countAndFlagsBits = sub_100049ABC();
        String.append(_:)(v179);
        v180._countAndFlagsBits = v175;
        v180._object = v21;
        String.append(_:)(v180);

        v181._countAndFlagsBits = sub_100049ABC();
        String.append(_:)(v181);
        v182._countAndFlagsBits = v176;
        v182._object = v178;
        String.append(_:)(v182);

        sub_100049A3C();
        sub_10003E708(v257);
        sub_100048658();
        sub_100036650();
        v162 = v279;

        sub_100048978(v256, &qword_10009A760);
        sub_10003E708(v258);
        v283 = v279;
        v184 = v279[2];
        v183 = v279[3];
        v161 = v184 + 1;
        if (v184 >= v183 >> 1)
        {
          v193 = sub_100011EBC(v183);
          sub_10003ED1C(v193, v184 + 1, 1);
          v162 = v283;
        }

        v162[2] = v161;
        v185 = &v162[10 * v184];
        v185[4] = v21;
        v185[5] = v176;
        v186 = v282[0];
        v187 = v282[1];
        v188 = v282[3];
        *(v185 + 5) = v282[2];
        *(v185 + 6) = v188;
        *(v185 + 3) = v186;
        *(v185 + 4) = v187;
        sub_100049C44();
        v190 = sub_10004A208(v47, v189, &a12);
        v47 = v190;
        v46 = v191;
        LODWORD(v133) = v192;
        if (!v274)
        {

          sub_100010FDC(v47, v46, v133 & 1);
          goto LABEL_100;
        }
      }

      while ((v190 & 0x8000000000000000) == 0);
    }

LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

LABEL_100:
  v194 = sub_1000240C8(v162, &qword_10009AA50, &qword_100076B88, sub_10003FE68);
  sub_100049D1C(v194, &v285);
  sub_100011D50();
  swift_beginAccess();
  v21 = *(v161 + 152);
  v195 = *(v21 + 16);
  v196 = _swiftEmptyArrayStorage;
  if (!v195)
  {
LABEL_116:
    sub_1000240C8(v196, &qword_10009AA30, &qword_100076B68, sub_10003FB94);
    sub_100011D50();
    swift_beginAccess();

    sub_100023D6C(v229);
    v276 = v230;

    LODWORD(v275) = dword_100099FE0;
    if (v251[3])
    {

      v274 = RapportRemoteDisplayDiscovery.description.getter();
      v273 = v231;
    }

    else
    {
      v274 = 0;
      v273 = 0;
    }

    LODWORD(v47) = getpid();
    v21 = v251[22];
    if (v21)
    {
      LODWORD(v46) = *(v21 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);
    }

    else
    {
      LODWORD(v46) = 0;
    }

    if (qword_100098BE8 == -1)
    {
      goto LABEL_123;
    }

    goto LABEL_150;
  }

  v283 = _swiftEmptyArrayStorage;

  v197 = sub_100049D3C();
  sub_10003ECFC(v197, v198, v199);
  v196 = v283;
  v200 = sub_100046A7C(v21);
  sub_100049EAC();
  while ((v200 & 0x8000000000000000) == 0)
  {
    sub_100049EA0();
    if (v200 >= v201)
    {
      break;
    }

    sub_10004A0E4();
    if (((v202 >> v200) & 1) == 0)
    {
      goto LABEL_148;
    }

    if (*(v21 + 36) != v46)
    {
      goto LABEL_149;
    }

    LODWORD(v274) = v133;
    LODWORD(v275) = v46;
    v280 = v195;
    v276 = v196;
    v203 = sub_100049FC0();
    _s7SessionC8IdentityVMa(v203);
    sub_100049D2C();
    sub_100049760();
    sub_10003E75C();
    v204 = *(*(v21 + 56) + 8 * v200);
    sub_1000497D4();
    sub_1000469E4();
    LODWORD(v47) = v255;
    *(v252 + *(v255 + 48)) = v204;
    sub_100048658();
    v205 = *(v253 + *(v255 + 48));
    v206 = v204;

    v207 = UUID._bridgeToObjectiveC()().super.isa;
    v208 = sub_100010F24(v207);

    v281[0] = 0xE400000000000000;
    v281[2] = v208;
    sub_100010C84();
    sub_100011EB0();
    v209._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v209);

    v210 = v281[0];
    v211 = *(v253 + *(v195 + 32)) == 0;
    if (*(v253 + *(v195 + 32)))
    {
      v212 = 0x65746F6D6572;
    }

    else
    {
      v212 = 0x6C61636F6CLL;
    }

    if (v211)
    {
      v213 = 0xE500000000000000;
    }

    else
    {
      v213 = 0xE600000000000000;
    }

    sub_100010ED0();
    sub_100049924();
    v214 = String.init<A>(_:radix:uppercase:)();
    v21 = v215;
    sub_10004A158();
    v281[0] = v210;
    v216._countAndFlagsBits = sub_100049ABC();
    String.append(_:)(v216);
    v217._countAndFlagsBits = v212;
    v217._object = v213;
    String.append(_:)(v217);

    v218._countAndFlagsBits = sub_100049ABC();
    String.append(_:)(v218);
    v219._countAndFlagsBits = v214;
    v219._object = v21;
    String.append(_:)(v219);

    sub_100049A3C();
    sub_10003E708(v253);
    sub_10004871C();
    v220 = *(v254 + *(v255 + 48));
    v221 = *&v220[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    v196 = v276;
    sub_10003E708(v254);
    v283 = v276;
    v223 = v276[2];
    v222 = v276[3];
    if (v223 >= v222 >> 1)
    {
      v228 = sub_100011EBC(v222);
      sub_10003ECFC(v228, v223 + 1, 1);
      v196 = v283;
    }

    v196[2] = v223 + 1;
    v224 = &v196[3 * v223];
    v224[4] = v21;
    v224[5] = v213;
    *(v224 + 12) = v221;
    sub_100049C44();
    v200 = sub_10004A208(v200, v225, &a11);
    v46 = v226;
    LODWORD(v133) = v227;
    v195 = v280 - 1;
    if (v280 == 1)
    {

      sub_100010FDC(v200, v46, v133 & 1);
      goto LABEL_116;
    }
  }

LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  swift_once();
LABEL_123:

  v232 = sub_1000529E4();

  v233 = sub_100027724();
  v234 = RPErrorFlagsCopyDescription(v233);
  v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v237 = v236;

  v238 = v251[11];
  v239 = String.init(cString:)();
  v241 = v240;
  if (qword_100098BF0 != -1)
  {
    sub_1000498E0(&qword_100098BF0);
  }

  v242 = v21 == 0;
  sub_1000563B0();
  LOBYTE(v283) = v242;
  *v249 = v276;
  *(v249 + 8) = v275;
  *(v249 + 16) = v274;
  *(v249 + 24) = v273;
  *(v249 + 32) = v247;
  *(v249 + 40) = v47;
  *(v249 + 44) = v46;
  *(v249 + 48) = v242;
  *(v249 + 49) = v232 & 1;
  *(v249 + 56) = v248;
  *(v249 + 64) = v235;
  *(v249 + 72) = v237;
  *(v249 + 80) = v268;
  *(v249 + 88) = v270;
  *(v249 + 96) = v269;
  sub_10004A004();
  *(v244 + 104) = v243;
  *(v244 + 112) = v238 != 0;
  *(v244 + 120) = v239;
  *(v244 + 128) = v241;
  *(v244 + 136) = v245;
  *(v244 + 144) = v246;
  sub_100011DB8();
}

void sub_100023B5C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = sub_100046A7C(v1);
    v6 = v5;
    v7 = 0;
    v8 = v1 + 64;
    v21 = v5;
    v22 = v1;
    v20 = v1 + 72;
    v9 = 1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < v9 << *(v1 + 32))
    {
      v10 = v4 >> 6;
      v11 = v9 << v4;
      if ((*(v8 + 8 * (v4 >> 6)) & (v9 << v4)) == 0)
      {
        goto LABEL_20;
      }

      if (*(v1 + 36) != v6)
      {
        goto LABEL_21;
      }

      v23 = v3;
      v24 = v7;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v22;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 = 1 << *(v22 + 32);
      if (v4 >= v12)
      {
        goto LABEL_22;
      }

      if ((*(v8 + 8 * v10) & v11) == 0)
      {
        goto LABEL_23;
      }

      if (*(v22 + 36) != v6)
      {
        goto LABEL_24;
      }

      sub_100049B80();
      if (v13)
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v12 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_100010FDC(v4, v6, v23 & 1);
            v9 = 1;
            v12 = __clz(__rbit64(v18)) + v15;
            goto LABEL_17;
          }
        }

        sub_100010FDC(v4, v6, v23 & 1);
        v9 = 1;
      }

      else
      {
        sub_100049FE4();
        v12 = v14 | v4 & 0x7FFFFFFFFFFFFFC0;
      }

LABEL_17:
      v3 = 0;
      v7 = v24 + 1;
      v4 = v12;
      v6 = v21;
      if (v24 + 1 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_100023D6C(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v47 = _swiftEmptyArrayStorage;
    sub_10003ECDC(0, v2 & ~(v2 >> 63), 0);
    v42 = _swiftEmptyArrayStorage;
    v44 = sub_100046F1C(v1);
    v45 = v3;
    v46 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v36 = v1 + 56;
      v35 = v1 + 64;
      v37 = v2;
      v38 = v1;
      while (1)
      {
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          break;
        }

        v8 = v44;
        v9 = v46;
        v40 = v7;
        v41 = v45;
        sub_100046F7C(v44, v45, v46, v1);
        v11 = v10;
        v12 = sub_10000FE50();
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v19 = v42;
        v47 = v42;
        v21 = v42[2];
        v20 = v42[3];
        if (v21 >= v20 >> 1)
        {
          sub_10003ECDC((v20 > 1), v21 + 1, 1);
          v19 = v47;
        }

        v19[2] = v21 + 1;
        v22 = &v19[4 * v21];
        v22[4] = v12;
        *(v22 + 10) = v14;
        v22[6] = v16;
        v22[7] = v18;
        v42 = v19;
        if (v39)
        {
          v1 = v38;
          if (!v9)
          {
            goto LABEL_36;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v27 = v37;
          sub_10000FC6C(&qword_10009A9F0, &qword_100076B28);
          v28 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v28(v43, 0);
        }

        else
        {
          v1 = v38;
          if (v9)
          {
            goto LABEL_37;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v23 = 1 << *(v38 + 32);
          if (v8 >= v23)
          {
            goto LABEL_32;
          }

          v24 = v8 >> 6;
          v25 = *(v36 + 8 * (v8 >> 6));
          if (((v25 >> v8) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v38 + 36) != v41)
          {
            goto LABEL_34;
          }

          v26 = v25 & (-2 << (v8 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v27 = v37;
          }

          else
          {
            v29 = v24 << 6;
            v30 = v24 + 1;
            v31 = (v35 + 8 * v24);
            v27 = v37;
            while (v30 < (v23 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                sub_100010FDC(v8, v41, 0);
                v23 = __clz(__rbit64(v32)) + v29;
                goto LABEL_27;
              }
            }

            sub_100010FDC(v8, v41, 0);
          }

LABEL_27:
          v34 = *(v38 + 36);
          v44 = v23;
          v45 = v34;
          v46 = 0;
        }

        v5 = v40;
        if (v40 == v27)
        {
          sub_100010FDC(v44, v45, v46);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

void *sub_1000240C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void **))
{
  if (*(a1 + 16))
  {
    v5 = sub_100049C74(a1, a2);
    sub_10000FC6C(v5, v6);
    sub_100049F00();
    v7 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v7 = &_swiftEmptyDictionarySingleton;
  }

  v10 = v7;

  a4(v8, 1, &v10);

  return v10;
}

void sub_100024174(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000FC6C(&qword_10009A840, &qword_100076A18);
    sub_100049F00();
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = v10[1];
    *&v29[0] = *v10;
    *(&v29[0] + 1) = v11;

    swift_dynamicCast();
    swift_dynamicCast();
    v25 = v21;
    v26 = v22;
    v27 = v23;
    sub_100011558(&v24, v28);
    v21 = v25;
    v22 = v26;
    v23 = v27;
    sub_100011558(v28, v29);
    v12 = AnyHashable._rawHashValue(seed:)(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v12) & ~*&v7[8 * (v12 >> 6)]) == 0)
    {
      sub_100049B24();
      while (++v13 != v15 || (v14 & 1) == 0)
      {
        v16 = v13 == v15;
        if (v13 == v15)
        {
          v13 = 0;
        }

        v14 |= v16;
        if (*&v7[8 * v13] != -1)
        {
          sub_100049B10();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_100049B38();
LABEL_21:
    v5 &= v5 - 1;
    sub_100049AFC();
    *&v7[v17] |= v18;
    v20 = v2[6] + 40 * v19;
    *v20 = v21;
    *(v20 + 16) = v22;
    *(v20 + 32) = v23;
    sub_100011558(v29, (v2[7] + 32 * v19));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

Swift::Int sub_100024404(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000FC6C(&qword_10009A878, &unk_100076A40);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_100047A60(*(a1 + 48) + 40 * v11, __src);
    sub_100011020(*(a1 + 56) + 32 * v11, &__src[2] + 8);
    memcpy(__dst, __src, sizeof(__dst));
    v21 = __src[0];
    v22 = __src[1];
    v23 = *&__src[2];
    sub_100011558(&__dst[5], &v25);
    swift_dynamicCast();
    v26 = v23;
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*&v7[8 * (v13 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v14];
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*&v7[8 * (v13 >> 6)])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
    v20 = v2[6] + 40 * v15;
    *v20 = v21;
    *(v20 + 16) = v22;
    *(v20 + 32) = v23;
    *(v2[7] + 8 * v15) = v24;
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000246A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000FC6C(&qword_10009A840, &qword_100076A18);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_100047A60(*(a1 + 48) + 40 * v11, v33);
    v35 = *(*(a1 + 56) + 8 * v11);
    v21 = v33[0];
    v23 = v33[1];
    v25 = v34;
    *&v32[0] = v35;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    v28 = v21;
    v29 = v23;
    v30 = v25;
    sub_100011558(&v27, v31);
    v22 = v28;
    v24 = v29;
    v26 = v30;
    sub_100011558(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*&v7[8 * (v13 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v14];
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*&v7[8 * (v13 >> 6)])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
    v20 = v2[6] + 40 * v15;
    *v20 = v22;
    *(v20 + 16) = v24;
    *(v20 + 32) = v26;
    result = sub_100011558(v32, (v2[7] + 32 * v15));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_100024958(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a7 | a4))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a5)
  {
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = objc_allocWithZone(_DiagnosticsHandler);
    v11 = sub_100038258(a2, a5, sub_100048908, v9);
    swift_beginAccess();
    objc_setAssociatedObject(v11, &unk_100099738, v11, 0x301);
    swift_endAccess();

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100024A48(uint64_t a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v1 = dispatch thunk of PropertyListEncoder.outputFormat.setter();
  sub_1000222B8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5]);
  sub_100010DD0();
  v9 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  memcpy(__dst, __src, 0x98uLL);
  sub_100010E24(__dst);

  return v9;
}

uint64_t sub_100024C10(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v34 = sub_10000FC6C(&qword_10009A780, &qword_100076980);
  v3 = __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v32 = &v28 - v6;
  __chkstk_darwin(v5);
  v31 = &v28 - v7;
  result = sub_100046A7C(a1);
  v10 = result;
  v11 = a1 + 64;
  v29 = a1 + 72;
  v30 = a1 + 64;
  if (v12)
  {
    __break(1u);
LABEL_20:
    v10 = 0;
LABEL_21:

    return v10;
  }

  else
  {
    while (1)
    {
      v13 = *(a1 + 36);
      if (v13 != v9)
      {
        break;
      }

      v14 = 1 << *(a1 + 32);
      if (v10 == v14)
      {
        goto LABEL_20;
      }

      if (v10 < 0 || v10 >= v14)
      {
        goto LABEL_23;
      }

      if ((*(v11 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v10 >> 6;
      v37 = v13;
      v36 = v9;
      type metadata accessor for Relay.RapportSessionKey(0);
      sub_10003E75C();
      v15 = *(*(a1 + 56) + 8 * v10);
      v16 = v32;
      sub_1000469E4();
      v17 = v33;
      v18 = v34;
      *(v16 + *(v34 + 48)) = v15;
      sub_100048658();
      v19 = *(v17 + *(v18 + 48));

      sub_10003E708(v17);
      result = sub_100048978(v16, &qword_10009A780);
      if (v19 == v35)
      {
        goto LABEL_21;
      }

      v20 = 1 << *(a1 + 32);
      if (v10 >= v20)
      {
        goto LABEL_25;
      }

      v11 = v30;
      v21 = *(v30 + 8 * v38);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v37)
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v38 << 6;
        v24 = v38 + 1;
        v25 = (v29 + 8 * v38);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_100010FDC(v10, v36, 0);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_18;
          }
        }

        result = sub_100010FDC(v10, v36, 0);
      }

LABEL_18:
      v9 = *(a1 + 36);
      v10 = v20;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_100024F78()
{
  sub_100011DD0();
  sub_10004A024();
  v2 = type metadata accessor for UUID();
  sub_100011C54();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100049818();
  if (*(v0 + 16))
  {
    sub_10004978C();
    sub_100035114(v6);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v7 = v0 + 56;
    v13 = v0;
    sub_100049C5C();
    v10 = ~v9;
    do
    {
      v11 = v8 & v10;
      if (((1 << (v8 & v10)) & *(v7 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v4 + 16))(v1, *(v13 + 48) + *(v4 + 72) * v11, v2);
      sub_10004978C();
      sub_100035114(&qword_10009A940);
      v12 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v4 + 8))(v1, v2);
      v8 = v11 + 1;
    }

    while ((v12 & 1) == 0);
  }

  sub_100011DB8();
}

BOOL sub_100025128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_100025214(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100025280()
{
  type metadata accessor for Relay();
  swift_allocObject();
  result = sub_100025384();
  qword_1000A1AE0 = result;
  return result;
}

uint64_t sub_1000252DC()
{
  sub_1000033E0(0, &qword_10009A880, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_100099FD8 = result;
  return result;
}

uint64_t sub_100025384()
{
  v1 = v0;
  v0[2] = [objc_allocWithZone(type metadata accessor for Relay.MachService()) init];
  v0[6] = 0;
  type metadata accessor for SidecarIdentity(0);
  type metadata accessor for RapportRemoteDisplayDevice();
  sub_100035114(&unk_10009A738);
  v0[3] = 0;
  v0[4] = 0;
  v0[9] = Dictionary.init(dictionaryLiteral:)();
  v0[10] = &_swiftEmptyDictionarySingleton;
  v0[11] = 0;
  type metadata accessor for Relay.RapportSessionKey(0);
  type metadata accessor for RapportRemoteDisplaySession();
  sub_100035114(&unk_10009AAF8);
  v0[12] = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for RapportStreamServer();
  v0[13] = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for Relay.ConnectedSessionKey(0);
  type metadata accessor for Relay.Session(0);
  sub_100035114(&unk_10009AB00);
  v0[14] = Dictionary.init(dictionaryLiteral:)();
  _s7SessionC8IdentityVMa(0);
  sub_100035114(&unk_10009A7B0);
  v0[15] = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for Domain();
  v0[17] = Dictionary.init(dictionaryLiteral:)();
  v0[18] = &_swiftEmptySetSingleton;
  type metadata accessor for ServiceProvider();
  v0[19] = Dictionary.init(dictionaryLiteral:)();
  sub_10000FC6C(&qword_10009A800, &qword_1000769E8);
  v2 = Dictionary.init(dictionaryLiteral:)();
  v0[21] = 0;
  v0[22] = 0;
  v0[20] = v2;
  sub_10000FC6C(&qword_10009A798, &qword_100076998);
  swift_allocObject();
  v0[16] = PassthroughSubject.init()();
  type metadata accessor for CompanionLinkServer();
  swift_allocObject();
  v0[5] = sub_1000120E0();
  v3 = objc_allocWithZone(type metadata accessor for SidecarRelayNullDelegate());
  v0[7] = sub_1000023DC(0);
  sub_10000FC6C(&qword_10009AB08, &qword_100076C28);
  swift_allocObject();
  v0[8] = PassthroughSubject.init()();
  v4 = objc_allocWithZone(type metadata accessor for Relay.RelayProxy());

  v6 = sub_10002A588(v5);
  v0[6] = v6;
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = v0[7];
  if ([v8 respondsToSelector:"setRelayProxy:"])
  {
    [v8 setRelayProxy:v7];
  }

  sub_100024958(v1, "com.apple.sidecar", 17, 2, "relay", 5, 2);
  sub_10002587C();
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = 0xD00000000000001ALL;
  v10[4] = 0x800000010007B260;
  v13[4] = sub_100048838;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100026074;
  v13[3] = &unk_10008F308;
  v11 = _Block_copy(v13);

  xpc_set_event_stream_handler("com.apple.rapport.matching", v9, v11);
  _Block_release(v11);

  if ([*(v1 + 56) respondsToSelector:"relayInitialized"])
  {
    [swift_unknownObjectRetain() relayInitialized];
    swift_unknownObjectRelease();
  }

  return v1;
}

void sub_10002587C()
{
  if (!*(v0 + 24))
  {
    v1 = v0;
    type metadata accessor for RapportRemoteDisplayDiscovery();
    v2 = RapportRemoteDisplayDiscovery.__allocating_init()();
    *(v1 + 24) = v2;

    swift_beginAccess();
    *(v2 + 32) = &off_10008F078;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;

    RapportRemoteDisplayDiscovery.activate(completion:)(sub_100048844, v3);
  }
}

void sub_100025960(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = XPC_EVENT_KEY_NAME.getter();
  if (xpc_dictionary_get_string(a1, v8))
  {
    v9 = String.init(cString:)();
    v11 = v10;
    if (qword_100098BB0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003420(v12, qword_1000A1AE8);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = a1;
      v16 = a2;
      v17 = a4;
      v18 = a3;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_100014C58(v9, v11, &v32);
      _os_log_impl(&_mh_execute_header, v13, v14, "=== %{public}s ===", v19, 0xCu);
      sub_100003458(v20);

      a3 = v18;
      a4 = v17;
      a2 = v16;
      a1 = v15;
    }

    v21 = v9 == 0xD000000000000021 && 0x800000010007B2A0 == v11;
    if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_10002587C();
    }

    else
    {
      v22 = v9 == 0xD00000000000001ELL && 0x800000010007B2D0 == v11;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_100025DCC();
      }

      else
      {
        v23 = v9 == 0xD00000000000002DLL && 0x800000010007B2F0 == v11;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          sub_1000124B4();

          sub_100025EB0(a1);
        }

        else
        {
          v24 = *(a2 + 56);
          if ([v24 respondsToSelector:"handleRapportEvent:"])
          {
            [v24 handleRapportEvent:a1];
          }

          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *v27 = 136315650;
            v28 = sub_100014C58(v9, v11, &v32);

            *(v27 + 4) = v28;
            *(v27 + 12) = 2080;
            *(v27 + 14) = sub_100014C58(a3, a4, &v32);
            *(v27 + 22) = 2080;
            sub_10000FC6C(&qword_10009AB10, &qword_100076C30);
            v29 = String.init<A>(describing:)();
            v31 = sub_100014C58(v29, v30, &v32);

            *(v27 + 24) = v31;
            _os_log_impl(&_mh_execute_header, v25, v26, "Encountered XPC event with name [%s] from stream with name [%s].  Handled by the relay delegate: [%s]", v27, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_100025DCC()
{
  if (!*(v0 + 32))
  {
    v1 = v0;
    type metadata accessor for RapportRemoteDisplayServer();
    v2 = RapportRemoteDisplayServer.__allocating_init()();
    *(v1 + 32) = v2;

    swift_beginAccess();
    *(v2 + 32) = &off_10008F050;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;

    RapportRemoteDisplayServer.activate(completion:)(sub_100048844, v3);
  }
}

void sub_100025EB0(void *a1)
{
  if (!xpc_dictionary_get_BOOL(a1, "replyRequired"))
  {
    if (qword_100098BB0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003420(v2, qword_1000A1AE8);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_15;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No Reply Requested for Rapport XPC Event (Unexpected)";
    goto LABEL_14;
  }

  if (xpc_dictionary_create_reply(a1))
  {
    xpc_dictionary_send_reply();

    swift_unknownObjectRelease();
    return;
  }

  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003420(v6, qword_1000A1AE8);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Failed to Create Reply to Rapport XPC Event";
LABEL_14:
    _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);
  }

LABEL_15:
}

uint64_t sub_100026074(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000260D4()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100026194()
{
  sub_1000260D4();

  return _swift_deallocClassInstance(v0, 184, 7);
}

void sub_1000261C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100098BB0 != -1)
    {
      sub_100049734();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003420(v10, qword_1000A1AE8);
    sub_100049FCC();
    __chkstk_darwin(v11);
    sub_100011DA8();
    *(v12 - 16) = a1;
    sub_100016F18(a4, a3, a5);
  }

  else
  {
    if (qword_100098BB0 != -1)
    {
      sub_100049734();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003420(v14, qword_1000A1AE8);
    sub_100049AC8();

    v20 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v15))
    {
      sub_100049C18();
      v16 = swift_slowAlloc();
      sub_100049A30();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136446210;
      v18 = a6();
      sub_100014C58(v18, v19, &v21);
      sub_100049AC8();

      *(v16 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v20, v15, "%{public}s: Activated", v16, 0xCu);
      sub_100003458(v17);
      sub_100011CF4();

      sub_100049960();
    }

    else
    {
    }
  }
}

void (*sub_1000263BC())(uint64_t, uint64_t)
{
  sub_10004A024();
  _StringGuts.grow(_:)(21);
  v0(v1, v2);
  sub_100049CD0();

  v3._object = 0x800000010007B320;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  return v0;
}

uint64_t sub_100026444()
{
  sub_10000FC6C(&qword_10009A730, &qword_100076950);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000759A0;
  v1 = getuid();
  *(v0 + 56) = &type metadata for UInt32;
  *(v0 + 64) = &protocol witness table for UInt32;
  *(v0 + 32) = v1;
  v2 = String.init(format:_:)();
  v4 = v3;
  type metadata accessor for DarwinNotification();
  swift_allocObject();
  result = DarwinNotification.init(check:)(v2, v4);
  qword_100099FE8 = result;
  return result;
}

uint64_t sub_100026504()
{
  swift_beginAccess();
  if (*(*(v0 + 72) + 16))
  {
    ++dword_100099FE0;
    result = getpid();
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    v2 = dword_100099FE0 | (result << 32);
  }

  else
  {
    v2 = 0;
  }

  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003420(v3, qword_1000A1AE8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "Device Generation: %llx", v6, 0xCu);
  }

  if (qword_100098BB8 != -1)
  {
    swift_once();
  }

  v7 = DarwinNotification.token.getter();
  notify_set_state(v7, v2);
  PassthroughSubject.send(_:)();
  DarwinNotification.name.getter();
  v8 = String.utf8CString.getter();

  notify_post((v8 + 32));
}

void sub_1000266CC()
{
  sub_100011DD0();
  sub_100049F48();
  v6 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  sub_1000499EC(v6);
  sub_100049C0C();
  __chkstk_darwin(v7);
  v8 = sub_10004998C();
  type metadata accessor for SidecarIdentity(v8);
  sub_100011D00();
  __chkstk_darwin(v9);
  sub_100011D10();
  sub_100049AEC();
  __chkstk_darwin(v10);
  v11 = sub_10004A1E8();
  sub_100051C8C(v11, v1);
  sub_100049E70();
  if (v12)
  {
    sub_100048978(v1, &qword_10009A718);
  }

  else
  {
    sub_1000497A4();
    sub_10004A0D8();
    sub_1000469E4();
    if (qword_100098BA0 != -1)
    {
      sub_100049778();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100049AD4(v13, qword_100099FC0);
    sub_1000497BC();
    sub_10004A098();
    sub_10003E75C();

    v14 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    v15 = sub_100049EE8();
    if (os_log_type_enabled(v15, v16))
    {
      sub_100011DE8();
      swift_slowAlloc();
      sub_100049B90();
      v40[0] = swift_slowAlloc();
      *v5 = 136446466;
      v17 = sub_100052008();
      v19 = v18;
      sub_10004971C();
      sub_10003E708(v4);
      sub_100014C58(v17, v19, v40);
      sub_10004A258();
      sub_100049D6C();
      v20 = RapportRemoteDisplayDiscovery.description.getter();
      sub_100014C58(v20, v21, v40);
      sub_100049FA8();
      *(v5 + 14) = v4;
      sub_1000499D8();
      _os_log_impl(v22, v23, v24, v25, v26, v27);
      sub_100049F54();
      sub_100011CF4();

      sub_100049950();
    }

    else
    {

      sub_10004971C();
      sub_10003E708(v4);
    }

    sub_100011E50();
    swift_beginAccess();
    sub_1000498B8();
    v28 = sub_10004A098();
    sub_10003BDFC(v28, v29, &unk_100076948, v30, v31, v32, v33, v34, v38, v40[0]);
    swift_endAccess();

    sub_100049FD8();
    sub_100011E50();
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v0 + 72);
    sub_100049AA4();
    sub_10003DC84();
    *(v0 + 72) = v39;
    swift_endAccess();
    v40[0] = v2;
    v35 = type metadata accessor for RapportRemoteDisplayDevice();

    v36 = RapportEndpoint.idsDeviceIdentifier.getter(v35, &protocol witness table for RapportRemoteDisplayDevice);
    sub_100017D58(v36, v37);

    sub_100026504();
    sub_10004971C();
    sub_10003E708(v3);
  }

  sub_100011DB8();
}

void sub_1000269F0()
{
  sub_100011DD0();
  v3 = v0;
  v5 = v4;
  v6 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  sub_1000499EC(v6);
  sub_100049C0C();
  __chkstk_darwin(v7);
  v8 = sub_10004998C();
  type metadata accessor for SidecarIdentity(v8);
  sub_100011D00();
  __chkstk_darwin(v9);
  sub_100011D10();
  sub_100049AEC();
  __chkstk_darwin(v10);
  v12 = &v41[-1] - v11;

  sub_100051C8C(v13, v0);
  sub_100049E70();
  if (v14)
  {
    sub_100048978(v0, &qword_10009A718);
  }

  else
  {
    sub_1000497A4();
    sub_1000469E4();
    if (qword_100098BA0 != -1)
    {
      sub_100049778();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100049AD4(v15, qword_100099FC0);
    sub_1000497BC();
    sub_100049F30();
    sub_10003E75C();

    v16 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    v17 = sub_100049EE8();
    if (os_log_type_enabled(v17, v18))
    {
      sub_100011DE8();
      swift_slowAlloc();
      sub_100049B90();
      v41[0] = swift_slowAlloc();
      *v2 = 136446466;
      v19 = sub_100052008();
      v21 = v20;
      sub_10004971C();
      sub_10003E708(v1);
      sub_100014C58(v19, v21, v41);
      sub_10004A258();
      sub_100049D6C();
      v22 = RapportRemoteDisplayDiscovery.description.getter();
      sub_100014C58(v22, v23, v41);
      sub_100049FA8();
      *(v2 + 14) = v1;
      sub_1000499D8();
      _os_log_impl(v24, v25, v26, v27, v28, v29);
      sub_100049F54();
      sub_100011CF4();

      sub_100049950();
    }

    else
    {

      sub_10004971C();
      sub_10003E708(v1);
    }

    if (sub_100026D4C(v12, 0))
    {

      sub_100011E50();
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v3 + 80);
      sub_100049BBC();
      sub_10003DC84();
      *(v3 + 80) = v40;
      swift_endAccess();
    }

    else
    {
      sub_100049FD8();
      sub_100011E50();
      swift_beginAccess();
      sub_1000498B8();
      sub_10003BDFC(v12, v30, v31, v32, v33, v34, v35, v36, v40, v41[0]);
      swift_endAccess();

      v41[0] = v5;
      v37 = type metadata accessor for RapportRemoteDisplayDevice();

      v38 = RapportEndpoint.idsDeviceIdentifier.getter(v37, &protocol witness table for RapportRemoteDisplayDevice);
      sub_100017FEC(v38, v39);

      sub_100026504();
    }

    sub_10004971C();
    sub_10003E708(v12);
  }

  sub_100011DB8();
}

uint64_t sub_100026D4C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for Relay.RapportSessionKey(0);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_10000FC6C(&unk_10009A740, &qword_100076958);
    v8 = swift_allocObject();
    *(v8 + 1) = xmmword_1000759A0;
    v8[4] = a2;
    v9 = 1;
  }

  else
  {
    v8 = &off_10008D980;
    v9 = 4;
  }

  for (i = 4; ; ++i)
  {
    v11 = v8[i];
    sub_10003E75C();
    *&v7[*(v5 + 20)] = v11;
    swift_beginAccess();
    v12 = *(v3 + 96);
    if (*(v12 + 16))
    {
      v13 = sub_10003949C(v7);
      if (v14)
      {
        break;
      }
    }

    swift_endAccess();
    sub_10003E708(v7);
    if (!--v9)
    {

      return 0;
    }
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  swift_endAccess();

  sub_10003E708(v7);
  return v15;
}

void sub_100026F18()
{
  sub_100011DD0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  sub_1000499EC(v7);
  sub_100049C0C();
  __chkstk_darwin(v8);
  v9 = sub_10004998C();
  type metadata accessor for SidecarIdentity(v9);
  sub_100011D00();
  __chkstk_darwin(v10);
  sub_100011D10();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v15 = sub_10004A1E8();
  sub_100051C8C(v15, v0);
  sub_100049E70();
  if (v16)
  {
    sub_100048978(v0, &qword_10009A718);
LABEL_14:
    sub_100011DB8();
    return;
  }

  sub_1000497A4();
  sub_10004A0D8();
  sub_1000469E4();
  if (qword_100098BA0 != -1)
  {
    sub_100049778();
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100049AD4(v17, qword_100099FC0);
  sub_1000497BC();
  sub_10003E75C();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = sub_100049EE8();
  if (!os_log_type_enabled(v20, v21))
  {

    sub_10004971C();
    sub_10003E708(v13);
    goto LABEL_10;
  }

  sub_100049A30();
  v22 = swift_slowAlloc();
  v41[0] = swift_slowAlloc();
  *v22 = 136446722;
  sub_100052008();
  v39 = v4;
  sub_10004971C();
  sub_10003E708(v13);
  v23 = sub_100049E64();
  sub_100014C58(v23, v24, v25);
  sub_10001B944();

  sub_100049D6C();
  type metadata accessor for RapportRemoteDisplayDevice();
  v26 = RapportEndpoint.statusFlags.getter();
  v27 = RPStatusFlagsCopyDescription(v26);
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  sub_100014C58(v28, v30, v41);
  sub_10004A258();
  *(v22 + 14) = v27;
  *(v22 + 22) = 2082;
  if (!HIDWORD(v39))
  {
    v31 = RPDeviceChangeFlagsCopyDescription(v39);
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    sub_100014C58(v32, v34, v41);
    sub_10004A258();
    *(v22 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: Device Changed <%{public}s [%{public}s]>", v22, 0x20u);
    swift_arrayDestroy();
    sub_100011CF4();

    sub_100049950();

LABEL_10:
    sub_100049FD8();
    sub_100049E28();
    swift_beginAccess();
    sub_1000498A0();
    v37 = sub_100020BD8(v1, v35, v36);
    swift_endAccess();
    sub_100049FD8();
    sub_100011E50();
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v2 + 72);
    sub_100049AA4();
    sub_10003DC84();
    *(v2 + 72) = v40;
    swift_endAccess();
    if (v37 && (, v38 = sub_1000272E0(v6), , (v38 & 1) != 0))
    {
      sub_10004971C();
      sub_10003E708(v1);
    }

    else
    {
      sub_100026504();

      sub_10004971C();
      sub_10003E708(v1);
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1000272E0(uint64_t a1)
{
  v2 = *v1;
  if ([*(v1 + 16) isEqual:*(a1 + 16)])
  {
    return 1;
  }

  v4 = RapportEndpoint.cameraState.getter();
  if (v4 != RapportEndpoint.cameraState.getter())
  {
    v6 = 0;
    goto LABEL_19;
  }

  if (RapportRemoteDisplayDevice.cameraCapabilities.getter())
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  if (RapportRemoteDisplayDevice.cameraCapabilities.getter())
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (v5.super.isa)
    {
      if (v7.super.isa)
      {
        sub_1000033E0(0, &qword_100099EA8, NSDictionary_ptr);
        v6 = static NSObject.== infix(_:_:)();

LABEL_14:
        v7.super.isa = v5.super.isa;
LABEL_15:

        goto LABEL_19;
      }

LABEL_13:
      v6 = 0;
      goto LABEL_14;
    }

    if (v7.super.isa)
    {
      v6 = 0;
      goto LABEL_15;
    }
  }

  else if (v5.super.isa)
  {
    goto LABEL_13;
  }

  v6 = 1;
LABEL_19:
  v8 = RapportEndpoint.identifier.getter(v2, &protocol witness table for RapportRemoteDisplayDevice);
  v10 = v9;
  if (v8 == RapportEndpoint.identifier.getter(v2, &protocol witness table for RapportRemoteDisplayDevice) && v10 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = RapportEndpoint.idsDeviceIdentifier.getter(v2, &protocol witness table for RapportRemoteDisplayDevice);
  v16 = v15;
  if (v14 == RapportEndpoint.idsDeviceIdentifier.getter(v2, &protocol witness table for RapportRemoteDisplayDevice) && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = RapportEndpoint.model.getter(v2, &protocol witness table for RapportRemoteDisplayDevice);
  v22 = v21;
  if (v20 == RapportEndpoint.model.getter(v2, &protocol witness table for RapportRemoteDisplayDevice) && v22 == v23)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = RapportEndpoint.name.getter(v2, &protocol witness table for RapportRemoteDisplayDevice);
  v28 = v27;
  if (v26 == RapportEndpoint.name.getter(v2, &protocol witness table for RapportRemoteDisplayDevice) && v28 == v29)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  v32 = RapportEndpoint.statusFlags.getter();
  if (v32 == RapportEndpoint.statusFlags.getter())
  {
    rawValue = RapportEndpoint.sourceVersion.getter().rawValue;
    return (rawValue == RapportEndpoint.sourceVersion.getter().rawValue) & v6;
  }

  return 0;
}

id sub_100027724()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = RapportRemoteDisplayDiscovery.errorFlags.getter();

  return v1;
}

void sub_10002776C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t oslog, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10004A288();
  if (qword_100098BA0 != -1)
  {
    sub_100049778();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100049AD4(v18, qword_100099FC0);

  osloga = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(osloga, v19))
  {
    sub_100049C18();
    v20 = swift_slowAlloc();
    sub_100049A30();
    v30 = swift_slowAlloc();
    *v20 = 136446210;
    v21 = sub_100027724();
    v22 = RPErrorFlagsCopyDescription(v21);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = sub_100049F3C();
    v26 = sub_100014C58(v23, v24, v25);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, osloga, v19, "<%{public}s>", v20, 0xCu);
    sub_100003458(v30);
    sub_100049960();

    sub_100011CF4();
  }

  sub_10004A29C();
}

uint64_t sub_1000278C4(uint64_t a1, uint64_t a2)
{
  sub_100049E28();
  swift_beginAccess();
  v5 = *(v2 + 72);
  if (!*(v5 + 16) || (v6 = sub_100039308(a1), (v7 & 1) == 0))
  {
    swift_endAccess();
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_1000497EC();
    sub_10001E468(v11, v12, v13, v14, v15, v16);
    swift_willThrow();
    return a1;
  }

  a1 = *(*(v5 + 56) + 8 * v6);
  swift_endAccess();
  if (a2 == 3)
  {
    type metadata accessor for RapportRemoteDisplayDevice();
    sub_100011F44();

    RapportEndpoint.statusFlags.getter();
    RapportStatusFlags.WiFi.unsafeMutableAddressor();
    sub_100049E40();
    if (!v18)
    {
      goto LABEL_20;
    }

    return a1;
  }

  if (a2 == 2)
  {
    type metadata accessor for RapportRemoteDisplayDevice();
    sub_100011F44();

    RapportEndpoint.statusFlags.getter();
    RapportStatusFlags.USB.unsafeMutableAddressor();
    sub_100049E40();
    if (!v18)
    {
      goto LABEL_20;
    }

    return a1;
  }

  if (a2 != 1)
  {

    return a1;
  }

  type metadata accessor for RapportRemoteDisplayDevice();
  sub_100011F44();

  v8 = RapportEndpoint.statusFlags.getter();
  v9 = *RapportStatusFlags.BLE.unsafeMutableAddressor();
  v10 = *RapportStatusFlags.WiFiP2P.unsafeMutableAddressor();
  if (!v9)
  {
    if (!v10)
    {
      v9 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v9 |= v10;
    goto LABEL_19;
  }

  if ((v10 & ~v9) != 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  if ((v9 & ~v8) != 0)
  {
LABEL_20:
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_1000497EC();
    sub_10001E468(v19, v20, v21, v22, v23, v24);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_100027B58()
{
  swift_beginAccess();
  sub_10000FC6C(&unk_10009A750, &qword_100076960);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  swift_beginAccess();
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  return swift_endAccess();
}

uint64_t sub_100027BF8(uint64_t a1)
{
  sub_100049E34();
  if (qword_100098BA0 != -1)
  {
    sub_100049778();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100049AD4(v3, qword_100099FC0);
  v4 = Logger.logObject.getter();
  v5 = v2();
  v6 = sub_100049D00();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, v1, v8, 2u);
    sub_100049960();
  }

  return sub_100027B58();
}

uint64_t sub_100027CD4(char a1)
{
  if (a1)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

Swift::Int sub_100027D3C(uint64_t a1)
{
  v1 = a1;
  sub_10004A240(a1);
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

void sub_100027DA0()
{
  sub_10004A1B0();
  sub_100052008();
  _s7SessionC8IdentityVMa(0);
  sub_100010ED0();
  sub_100011EB0();
  String.init<A>(_:radix:uppercase:)();
  sub_10004A080();
  v0._countAndFlagsBits = sub_100049ABC();
  String.append(_:)(v0);
  v1._countAndFlagsBits = sub_10004A098();
  String.append(_:)(v1);

  v2._countAndFlagsBits = sub_100049ABC();
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_10004A074();
  String.append(_:)(v3);

  sub_10004A198();
}

void sub_100027E84()
{
  sub_100049F48();
  type metadata accessor for UUID();
  sub_10004978C();
  sub_100035114(v2);
  sub_100049AA4();
  dispatch thunk of Hashable.hash(into:)();
  v3 = _s7SessionC8IdentityVMa(0);
  Hasher._combine(_:)(*(v1 + *(v3 + 20)));
  Hasher._combine(_:)(*(v0 + *(v3 + 24)));
}

Swift::Int sub_100027F10(uint64_t a1)
{
  sub_10004A240(a1);
  type metadata accessor for UUID();
  sub_10004978C();
  sub_100035114(v2);
  dispatch thunk of Hashable.hash(into:)();
  v3 = _s7SessionC8IdentityVMa(0);
  Hasher._combine(_:)(*(v1 + *(v3 + 20)));
  Hasher._combine(_:)(*(v1 + *(v3 + 24)));
  return Hasher._finalize()();
}

Swift::Int sub_100027FC0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

void sub_1000280A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10004A2B0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  *(v4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_dataLink) = 0;
  swift_weakInit();
  *(v4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_loggedLink) = 0;
  *(v4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client) = 0;
  *(v4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) = 0;
  *(v4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue) = 0;
  sub_100049760();
  sub_10003E75C();
  v13 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_logger;
  v14 = type metadata accessor for Logger();
  sub_10004A0CC();
  (*(v15 + 16))(v4 + v13, v10, v14);
  v16 = (v4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
  *v16 = v8;
  v16[1] = v6;
  sub_1000033E0(0, &qword_10009A7E0, SidecarStream_ptr);
  v17 = Dictionary.init(dictionaryLiteral:)();
  v18 = sub_100049F3C();
  v19(v18);
  sub_100049748();
  sub_10003E708(v12);
  *(v4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_streams) = v17;
  sub_10004A164();
}

uint64_t sub_100028220(uint64_t a1)
{
  v3 = *(v2 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
  if (!v3)
  {
    return 0;
  }

  sub_100049CDC();
  type metadata accessor for Client();
  v4 = v1;
  v5 = v3;
  sub_100049EDC();
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_100028290(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 4:
    case 5:
      return sub_100049E94();
    case 2:
    case 3:
      sub_10004A048();
      break;
    default:
      swift_errorRetain();
      sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        JUMPOUT(0x100028444);
      }

      v1 = [v4 debugDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v2._countAndFlagsBits = sub_100049AA4();
      String.append(_:)(v2);

      break;
  }

  return sub_100049E94();
}

uint64_t sub_100028464(uint64_t result)
{
  v2 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state;
  switch(*(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state))
  {
    case 0:
      goto LABEL_9;
    case 1:
    case 2:
      if (!result)
      {
        return result;
      }

      goto LABEL_9;
    case 3:
      if ((result - 1) >= 2)
      {
        goto LABEL_9;
      }

      return result;
    case 4:
      if ((result - 1) >= 3)
      {
        goto LABEL_9;
      }

      return result;
    case 5:
      if ((result - 1) >= 4)
      {
LABEL_9:
        v3 = result;
        _StringGuts.grow(_:)(32);

        v4._countAndFlagsBits = sub_100028290(v3);
        String.append(_:)(v4);

        v5._countAndFlagsBits = 15917;
        v5._object = 0xE200000000000000;
        String.append(_:)(v5);
        v6 = *(v1 + v2);
        sub_100048638(v6);
        v7._countAndFlagsBits = sub_100028290(v6);
        String.append(_:)(v7);

        sub_100048648(v6);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        JUMPOUT(0x1000285CCLL);
      }

      return result;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000285E4(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state);
  *(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) = a1;
  sub_100048638(a1);
  sub_100028464(v3);
  sub_100048648(v3);

  return sub_100048648(a1);
}

uint64_t sub_100028644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v32 = *(v11 - 8);
  v33 = v11;
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getErrorValue();
    v14 = sub_100028BAC("SidecarRelay/Relay.swift", 24, 2u, 545, v35, v36);
    Strong = swift_weakLoadStrong();
    swift_errorRetain();
    if (Strong)
    {

      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      v17 = sub_100003420(v16, qword_1000A1AE8);
      __chkstk_darwin(v17);
      *(&v29 - 2) = v14;
      sub_100016F18(sub_1000496B8, a2, sub_100011C20);
    }

    else
    {
      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100003420(v18, qword_1000A1AE8);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v21 = 136446210;
        v30 = v19;
        sub_100027DA0();
        v24 = sub_100014C58(v22, v23, aBlock);

        *(v21 + 4) = v24;
        v19 = v30;
        _os_log_impl(&_mh_execute_header, v30, v20, "%{public}s: Send Discarded", v21, 0xCu);
        sub_100003458(v31);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = v14;
  aBlock[4] = sub_1000485FC;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_10008F240;
  v27 = _Block_copy(aBlock);
  sub_1000485AC(a3, a4);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100035114(&unk_10009A9A0);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100048A60(&qword_10009A9B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v34 + 8))(v10, v8);
  return (*(v32 + 8))(v13, v33);
}

uint64_t sub_100028BAC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v38 = a3;
  v36 = a1;
  v37 = a2;
  v8 = *(a5 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v36 - v13;
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = *(v8 + 16);
  v40 = v18;
  v17(&v36 - v15, v18, v19);
  v20 = _getErrorEmbeddedNSError<A>(_:)();
  v41 = a6;
  if (v20)
  {
    (*(v8 + 8))(v16, a5);
  }

  else
  {
    swift_allocError();
    (*(v8 + 32))(v21, v16, a5);
  }

  v22 = _convertErrorToNSError(_:)();

  v23 = [v22 domain];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v24 && v27 == v26)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      v17(v11, v40, a5);
      v30 = _getErrorEmbeddedNSError<A>(_:)();
      if (v30)
      {
        v31 = v30;
        (*(v8 + 8))(v11, a5);
      }

      else
      {
        v31 = swift_allocError();
        (*(v8 + 32))(v34, v11, a5);
      }

      goto LABEL_19;
    }
  }

  if ([v22 code] == 4099)
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v31 = sub_10001E680(4294896148, 0, 0, v36, v37, v38, v39);
  }

  else
  {
    v17(v14, v40, a5);
    v32 = _getErrorEmbeddedNSError<A>(_:)();
    if (v32)
    {
      v31 = v32;
      (*(v8 + 8))(v14, a5);
    }

    else
    {
      v31 = swift_allocError();
      (*(v8 + 32))(v33, v14, a5);
    }
  }

LABEL_19:

  return v31;
}

uint64_t sub_100028F3C()
{
  sub_100027DA0();
  v3 = v0;
  v1._countAndFlagsBits = 0x4520646E6553203ALL;
  v1._object = 0xEC000000726F7272;
  String.append(_:)(v1);
  return v3;
}

void sub_100028F9C()
{
  sub_100011DD0();
  v2 = v1;
  v3 = sub_100049AB0();
  v5 = sub_10000FC6C(v3, v4);
  sub_1000499EC(v5);
  sub_100049C0C();
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v9 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
  *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client) = v2;
  v10 = v2;

  sub_1000285E4(2uLL);
  v11 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:8];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v13 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049C8C();

  v14 = String._bridgeToObjectiveC()();
  v15 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049C8C();

  v16 = UInt._bridgeToObjectiveC()().super.super.isa;
  v17 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049C8C();

  sub_100049BBC();
  sub_100049CB8();
  sub_100048658();
  v18 = _s7SessionC8IdentityVMa(0);
  if (sub_1000113A4(v8, 1, v18) == 1)
  {
    sub_100048978(v8, &unk_1000991E0);
  }

  else
  {
    v19 = *&v8[*(v18 + 20)];
    sub_100049748();
    sub_10003E708(v8);
    v20 = Int._bridgeToObjectiveC()().super.super.isa;
    v21 = Int._bridgeToObjectiveC()().super.super.isa;
    [v11 setObject:v20 forKeyedSubscript:v21];

    HIDWORD(v30) = 0;
    v22 = [objc_allocWithZone(NSNumber) initWithInteger:v19];
    Data = OPACKEncoderCreateData();

    if (Data)
    {
      if (HIDWORD(v30))
      {
      }

      else
      {
        v27 = Data;
        static Data._unconditionallyBridgeFromObjectiveC(_:)();

        v28 = sub_100049F0C();
        sub_100011358(v28, v29);
      }
    }
  }

  sub_100049EDC();
  sub_100046464();

  v24 = sub_100029FC0();
  sub_100029DD8(v24);

  v25 = sub_100049AA4();
  sub_100011358(v25, v26);
  sub_100011DB8();
}

uint64_t sub_100029264(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    sub_1000293FC();
  }

  return result;
}

void sub_1000292B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10004A2B0();
  v6 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state;
  if (*(v4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) > 3uLL)
  {
    sub_10004A164();
  }

  else
  {
    v7 = v5;
    v8 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:8];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v10 = Int._bridgeToObjectiveC()().super.super.isa;
    [v8 setObject:isa forKeyedSubscript:v10];

    v11 = sub_10001F628(v7);
    v12 = Int._bridgeToObjectiveC()().super.super.isa;
    [v8 setObject:v11 forKeyedSubscript:v12];

    sub_100046464();

    if (*(v4 + v6) <= 5uLL)
    {
      sub_1000285E4(4uLL);
    }

    sub_100049F0C();
    sub_10004A164();

    sub_100011358(v13, v14);
  }
}

void sub_1000293FC()
{
  sub_100049F48();
  v3 = *&v1[OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state];
  if (v3 - 2 >= 3)
  {
    if (v3 >= 2)
    {
      return;
    }
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
    if (v4)
    {
      v5 = v4;
      v6 = sub_100049AC8();
      sub_100004974(v6, v2);
    }
  }

  if (v2)
  {
    swift_errorRetain();
  }

  else
  {
    v2 = 5;
  }

  sub_1000285E4(v2);
  sub_100011E50();
  swift_beginAccess();
  sub_10000FC6C(&unk_10009A9B8, &unk_100076AF0);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
}

void sub_1000294D8(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:8];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v4 = Int._bridgeToObjectiveC()().super.super.isa;
  v5 = sub_100049C24();
  [v5 v6];

  type metadata accessor for System();
  sub_1000525BC();
  v7 = UInt._bridgeToObjectiveC()().super.super.isa;
  v8 = Int._bridgeToObjectiveC()().super.super.isa;
  v9 = sub_100049C24();
  [v9 v10];

  if (a1 == 3)
  {
    if (qword_100098BC8 != -1)
    {
      sub_100049B4C(&qword_100098BC8);
    }

    v11 = String._bridgeToObjectiveC()();
    v12 = Int._bridgeToObjectiveC()().super.super.isa;
    v13 = sub_100049C24();
    [v13 v14];
  }

  sub_100049A64();

  v15 = sub_100049F0C();

  sub_100011358(v15, v16);
}

void sub_100029624()
{
  v0 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:8];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v2 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049A10();

  type metadata accessor for System();
  sub_1000525BC();
  v3 = UInt._bridgeToObjectiveC()().super.super.isa;
  v4 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049A10();

  sub_100049A64();
  v5 = sub_100049F0C();

  sub_100011358(v5, v6);
}

void sub_1000296E8()
{
  v0 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:8];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v2 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049A10();

  type metadata accessor for System();
  sub_1000525BC();
  v3 = UInt._bridgeToObjectiveC()().super.super.isa;
  v4 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049A10();

  if (qword_100098BC8 != -1)
  {
    sub_100049B4C(&qword_100098BC8);
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = Int._bridgeToObjectiveC()().super.super.isa;
  sub_100049A10();

  sub_100049A64();
  v7 = sub_100049F0C();

  sub_100011358(v7, v8);
}

unint64_t sub_1000297F8(void *a1)
{
  v2 = v1;
  if (qword_100098BF0 != -1)
  {
    sub_1000498E0(&qword_100098BF0);
  }

  sub_100047168(v1, qword_1000A1B78);
  v4 = *(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
  *(v2 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client) = a1;
  v5 = a1;

  result = sub_1000285E4(3uLL);
  v7 = *(v2 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue);
  if (v7)
  {
    *(v2 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_messageQueue) = 0;
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *((swift_isaMask & *v5) + 0xD8);
      v10 = v7 + 32;
      do
      {
        sub_100013694(v10, v11);
        v9(v2, v11);
        sub_100003458(v11);
        v10 += 40;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

void sub_10002991C(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = RapportDeviceChangeFlags.rawValue.getter;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100029ABC;
  v14 = &unk_10008F150;
  v6 = _Block_copy(&v11);
  [a3 setHandler:v6];
  _Block_release(v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v15 = sub_100048494;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100025214;
  v14 = &unk_10008F1C8;
  v9 = _Block_copy(&v11);

  v10 = a3;

  [v10 activateWithCompletion:v9];
  _Block_release(v9);
}

uint64_t sub_100029ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v5 = a2;
    sub_100011558(&v5, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  swift_unknownObjectRetain();
  v3(v7);

  return sub_100048978(v7, &qword_10009B0C0);
}

uint64_t sub_100029B58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v10 + 16))(v12, result + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_logger, v9);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v24[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_100014C58(a3, a4, v24);
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to activate stream %s", v16, 0xCu);
        sub_100003458(v17);
      }

      return (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v18 = result;
      v19 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_streams;
      swift_beginAccess();
      v20 = a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v18 + v19);
      sub_10003DF6C(v20, a3, a4, isUniquelyReferenced_nonNull_native);
      *(v18 + v19) = v23;
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100029DD8(double a1)
{
  v2 = type metadata accessor for Date();
  sub_100011C54();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100011CD4();
  v8 = v7 - v6;
  Date.init(timeIntervalSinceNow:)();
  if (qword_100098BF0 != -1)
  {
    sub_1000498E0(&qword_100098BF0);
  }

  sub_100046BFC(v1, v8, qword_1000A1B78);
  return (*(v4 + 8))(v8, v2);
}

void sub_100029EC8()
{
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100011CE4();
  sub_1000497EC();
  v6 = sub_10001E468(v0, v1, v2, v3, v4, v5);
  if (qword_100098B98 != -1)
  {
    sub_100011C88(&qword_100098B98);
  }

  v7 = v6;
  sub_100049EDC();
  sub_1000216C0();
}

double sub_100029FE4()
{
  sub_100049C50();
  v0 = [objc_opt_self() standardUserDefaults];
  sub_100049E94();
  v1 = String._bridgeToObjectiveC()();
  v2 = sub_100049C24();
  v4 = [v2 v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_100048978(v9, &qword_10009B0C0);
  }

  return 10.0;
}

void sub_10002A1B4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
  if (v2)
  {
    v3 = v2;
    sub_100049C68();
    sub_10000535C(v4, v5, v6);
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_1000497EC();
    sub_10001E468(v7, v8, v9, v10, v11, v12);
    swift_willThrow();
  }
}

uint64_t sub_10002A274(uint64_t a1)
{
  sub_100049748();
  sub_10003E708(v1 + v2);
  v3 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_logger;
  type metadata accessor for Logger();
  sub_100011D00();
  (*(v4 + 8))(v1 + v3);

  swift_weakDestroy();

  sub_100048648(*(v1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state));

  return v1;
}

uint64_t sub_10002A344(uint64_t a1)
{
  sub_10002A274(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

Swift::Int sub_10002A39C(uint64_t a1)
{
  sub_10004A240(a1);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002A47C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  ClassHashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002A514(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_1000034A4(v5, a2);
  v6 = sub_100049BBC();
  sub_100003420(v6, v7);
  return Logger.init(subsystem:category:)();
}

char *sub_10002A588(uint64_t a1)
{
  v3 = sub_10000FC6C(&qword_10009AB18, &qword_100076C38);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v20 = sub_10000FC6C(&qword_10009AB20, &qword_100076C40);
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v19 - v7;
  swift_weakInit();
  *&v1[OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy_cancellables] = &_swiftEmptySetSingleton;
  v9 = &v1[OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy_sessionsChangedListener];
  *v9 = RapportDeviceChangeFlags.rawValue.getter;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy____lazy_storage___remoteDisplayServiceIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  v19 = a1;
  swift_weakAssign();
  v11 = type metadata accessor for Relay.RelayProxy();
  v23.receiver = v1;
  v23.super_class = v11;
  v12 = objc_msgSendSuper2(&v23, "init");
  v21[0] = sub_10002A938(v12);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  sub_10001137C(v5, 1, 1, v14);
  sub_10000FC6C(&qword_10009AB28, &qword_100076C48);
  sub_100048A60(&unk_10009AB30);
  sub_100048910();
  Publisher.receive<A>(on:options:)();
  sub_100048978(v5, &qword_10009AB18);

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000489FC;
  *(v16 + 24) = v15;
  sub_100048A60(&unk_10009AB40);
  v17 = v20;
  Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v8, v17);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v12;
}

uint64_t sub_10002A938(uint64_t a1)
{
  v1 = sub_100049A98();
  sub_10000FC6C(v1, v2);
  sub_100048A60(&unk_10009AB48);
  return Publisher.eraseToAnyPublisher()();
}

void sub_10002A9C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10002B9D8();
  }
}

uint64_t sub_10002AA14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100098BC0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003420(v6, qword_100099FF0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Setting display service sessions changed listener", v9, 2u);
  }

  v10 = (v3 + OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy_sessionsChangedListener);
  *v10 = a1;
  v10[1] = a2;
}

void sub_10002ABB8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_10002AC68(uint64_t a1)
{
  v69 = a1;
  v1 = type metadata accessor for SidecarIdentity(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s7SessionC8IdentityVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v66 = &v56 - v13;
  __chkstk_darwin(v12);
  v15 = &v56 - v14;
  if (qword_100098BC0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100003420(v16, qword_100099FF0);
  v62 = *(v8 + 16);
  v63 = v8 + 16;
  v62(v15, v69, v7);
  v64 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  *&v56 = v8;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v67 = v11;
    v22 = v21;
    v23 = swift_slowAlloc();
    v58 = v3;
    v65 = v23;
    v70 = v23;
    *v22 = 136315138;
    sub_100035114(&unk_100099C80);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v6;
    v27 = v26;
    v28 = *(v8 + 8);
    v28(v15, v7);
    v29 = sub_100014C58(v24, v27, &v70);
    v6 = v25;

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "A request was made to close the display service session with identifier: [%s]", v22, 0xCu);
    sub_100003458(v65);
    v3 = v58;

    v11 = v67;
  }

  else
  {

    v28 = *(v8 + 8);
    v28(v15, v7);
  }

  v30 = v7;
  Strong = swift_weakLoadStrong();
  v32 = v66;
  v65 = Strong;
  if (Strong)
  {
    v33 = sub_10002B4E8();
    v34 = sub_100037E08(v33);
    if (!v34)
    {
LABEL_19:

      return;
    }

    v36 = v34;
    if (v34 >= 1)
    {
      v37 = 0;
      v67 = v33 & 0xC000000000000001;
      v68 = v56 + 8;
      *&v35 = 136315138;
      v56 = v35;
      v57 = v6;
      v58 = v3;
      v59 = v28;
      v60 = v34;
      v61 = v33;
      do
      {
        if (v67)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        sub_10003E75C();
        sub_1000469E4();
        v38 = static UUID.== infix(_:_:)();
        v28(v3, v30);
        if (v38)
        {
          v62(v32, v69, v30);
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v70 = v42;
            *v41 = v56;
            sub_100035114(&unk_100099C80);
            v43 = dispatch thunk of CustomStringConvertible.description.getter();
            v44 = v30;
            v46 = v45;
            v28 = v59;
            v59(v66, v44);
            v47 = sub_100014C58(v43, v46, &v70);
            v30 = v44;
            v32 = v66;

            *(v41 + 4) = v47;
            _os_log_impl(&_mh_execute_header, v39, v40, "Closing remote display session with device with identifier: [%s].", v41, 0xCu);
            sub_100003458(v42);

            v3 = v58;
          }

          else
          {

            v28 = v59;
            v59(v32, v30);
          }

          sub_1000216C0();
          v36 = v60;
        }

        ++v37;
      }

      while (v36 != v37);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    v62(v11, v69, v7);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v70 = v51;
      *v50 = 136315138;
      sub_100035114(&unk_100099C80);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v28(v11, v7);
      v55 = sub_100014C58(v52, v54, &v70);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "Could not find 'relay'.  Will not close the display service session with identifier: [%s]", v50, 0xCu);
      sub_100003458(v51);
    }

    else
    {

      v28(v11, v7);
    }
  }
}

void *sub_10002B4E8()
{
  if (swift_weakLoadStrong())
  {
    sub_10002B908();
    sub_10002B60C();
    v1 = v0;

    return v1;
  }

  else
  {
    if (qword_100098BC0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003420(v3, qword_100099FF0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Could not find 'relay'.  Will return an empty collection of remote display sessions", v6, 2u);
    }

    return _swiftEmptyArrayStorage;
  }
}

void sub_10002B60C()
{
  sub_100011DD0();
  v3 = v2;
  v5 = v4;
  v6 = &qword_10009A760;
  v34 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  sub_100011D00();
  __chkstk_darwin(v7);
  sub_100011D10();
  v32 = v8 - v9;
  __chkstk_darwin(v10);
  sub_10004A0B8();
  __chkstk_darwin(v11);
  sub_100049C80();
  v36 = v12;
  sub_100011D50();
  swift_beginAccess();
  v13 = *(v0 + 120) + 64;
  sub_100049970();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v35 = v19;
  swift_bridgeObjectRetain_n();
  v20 = 0;
  v33 = v5;
  while (1)
  {
    v21 = v20;
    if (!v16)
    {
      break;
    }

LABEL_6:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v20 << 6);
    v24 = _s7SessionC8IdentityVMa(0);
    sub_1000499EC(v24);
    sub_100049760();
    sub_10003E75C();
    *(v36 + *(v34 + 48)) = *(*(v35 + 56) + 8 * v23);
    v25 = v6;
    sub_100048658();
    v26 = *(v1 + *(v34 + 48));
    v27 = *(v26 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
    v28 = *(v26 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);

    if (v27 == v33 && v28 == v3)
    {

      sub_100049748();
      sub_10003E708(v1);
LABEL_13:
      sub_10004871C();
      sub_100049748();
      sub_10003E708(v32);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v31 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
      {
        sub_100011EBC(v31);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v25;
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100049748();
      sub_10003E708(v1);
      if (v30)
      {
        goto LABEL_13;
      }

      v6 = v25;
      sub_100048978(v36, v25);
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      sub_100011DB8();
      return;
    }

    v16 = *(v13 + 8 * v20);
    ++v21;
    if (v16)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_10002B908()
{
  v1 = (v0 + OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy____lazy_storage___remoteDisplayServiceIdentifier);
  if (*(v0 + OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy____lazy_storage___remoteDisplayServiceIdentifier + 8))
  {
    v2 = *v1;
  }

  else
  {
    v3 = [objc_opt_self() serviceWithName:SidecarServiceNameDisplay];
    v4 = [v3 serviceIdentifier];

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *v1 = v2;
    v1[1] = v6;
  }

  return v2;
}

void *sub_10002B9D8()
{
  v1 = v0;
  v2 = type metadata accessor for SidecarIdentity(0);
  __chkstk_darwin(v2 - 8);
  v27 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s7SessionC8IdentityVMa(0);
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002B4E8();
  v10 = sub_100037E08(v9);
  if (!v10)
  {

    v14 = _swiftEmptyArrayStorage;
LABEL_12:
    v21 = sub_10004B38C(v14, v20);
    v22 = *(v1 + OBJC_IVAR____TtCC12SidecarRelay5RelayP33_1C5D654CC83EDCEF3B22927C4D40C7FB10RelayProxy_sessionsChangedListener);

    v22(v21);
  }

  v11 = v10;
  v28 = _swiftEmptyArrayStorage;
  result = sub_10003EDBC(0, v10 & ~(v10 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = v28;
    v23 = v1;
    v24 = v9 & 0xC000000000000001;
    v15 = (v6 + 32);
    v25 = v11;
    v26 = v9;
    do
    {
      if (v24)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      sub_10003E75C();

      v16 = v27;
      sub_1000469E4();
      v17 = *v15;
      (*v15)(v8, v16, v5);
      v28 = v14;
      v19 = v14[2];
      v18 = v14[3];
      if (v19 >= v18 >> 1)
      {
        sub_10003EDBC((v18 > 1), v19 + 1, 1);
        v14 = v28;
      }

      ++v13;
      v14[2] = v19 + 1;
      v17(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v8, v5);
    }

    while (v25 != v13);

    v1 = v23;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002BDD0()
{
  swift_beginAccess();
  result = *(v0 + 88);
  v2 = *(*(v0 + 96) + 16);
  if (result)
  {
    if (v2)
    {
      return result;
    }

    *(v0 + 88) = 0;
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    *(v0 + 88) = os_transaction_create();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10002BE38()
{
  v1 = *(v0 + *(type metadata accessor for Relay.RapportSessionKey(0) + 20));
  if (!v1)
  {
    return sub_100052008();
  }

  v7 = sub_100052008();
  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  switch(v1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1279547201;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v4 = 1229343063;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v4 = 4346709;
      break;
    default:
      v4 = 0;
      v3 = 0xE000000000000000;
      break;
  }

  v6 = v3;
  String.append(_:)(*&v4);

  return v7;
}

BOOL sub_10002BEF8(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Relay.RapportSessionKey(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

void sub_10002BF48(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for Relay.RapportSessionKey(0);
  Hasher._combine(_:)(*(v2 + *(v3 + 20)));
}

Swift::Int sub_10002BFD8()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for Relay.RapportSessionKey(0);
  Hasher._combine(_:)(*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

Swift::Int sub_10002C080(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t sub_10002C128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for Relay.RapportSessionKey(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E75C();
  *&v10[*(v8 + 28)] = a3;
  swift_beginAccess();
  v11 = sub_100020BD8(v10, *(v4 + 96), sub_10003949C);
  if (v11)
  {
    v12 = v11;
    swift_endAccess();
    type metadata accessor for RapportRemoteDisplaySession();
    if (!static RapportRemoteDisplaySession.== infix(_:_:)(v12, a1))
    {
      if (qword_100098BA0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003420(v13, qword_100099FC0);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v25[0] = v17;
        *v16 = 136446210;

        v18 = RapportRemoteDisplaySession.description.getter();
        v20 = v19;

        v21 = sub_100014C58(v18, v20, v25);

        *(v16 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v14, v15, "Canceling %{public}s", v16, 0xCu);
        sub_100003458(v17);
      }

      RapportRemoteDisplaySession.cancel()();
    }
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v4 + 96);
  sub_10003D490(a1, v10, isUniquelyReferenced_nonNull_native);
  *(v4 + 96) = v24;
  swift_endAccess();
  return sub_10003E708(v10);
}

uint64_t sub_10002C40C(uint64_t a1)
{
  v2 = type metadata accessor for Relay.RapportSessionKey(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v6 = sub_100024C10(v5, a1);
  v8 = v7;
  v10 = v9;
  v11 = ~v9;

  if (v11)
  {
    swift_beginAccess();
    sub_10000FC6C(&qword_10009A778, &qword_100076978);
    Dictionary._Variant.remove(at:)();

    swift_endAccess();
    sub_100043BD4(v6, v8, v10);
    sub_10003E708(v4);
  }

  return sub_10002C578(a1);
}

uint64_t sub_10002C578(uint64_t a1)
{
  v2 = *(a1 + 32);
  swift_beginAccess();

  v4 = sub_100044988(v3, v2);

  *(v1 + 112) = v4;
}

BOOL sub_10002C5EC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Relay.ConnectedSessionKey(0) + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  result = 0;
  if (static UUID.== infix(_:_:)())
  {
    v8 = _s7SessionC8IdentityVMa(0);
    if (*&v6[*(v8 + 20)] == *&v7[*(v8 + 20)] && v6[*(v8 + 24)] == v7[*(v8 + 24)])
    {
      return 1;
    }
  }

  return result;
}

void sub_10002C68C(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  v2 = v1 + *(type metadata accessor for Relay.ConnectedSessionKey(0) + 20);
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v3 = _s7SessionC8IdentityVMa(0);
  Hasher._combine(_:)(*&v2[*(v3 + 20)]);
  Hasher._combine(_:)(v2[*(v3 + 24)]);
}

Swift::Int sub_10002C750()
{
  Hasher.init(_seed:)();
  sub_10002C68C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002C798(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10002C68C(v2);
  return Hasher._finalize()();
}

uint64_t sub_10002C7D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Relay.ConnectedSessionKey(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 32);
  sub_10003E75C();
  *v8 = v9;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 112);
  sub_10003D810(a1, v8, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v12;
  swift_endAccess();
  return sub_10003E708(v8);
}

uint64_t sub_10002C8F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Relay.ConnectedSessionKey(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003E75C();
  *v6 = a2;
  swift_beginAccess();
  v7 = *(v2 + 112);
  if (*(v7 + 16) && (v8 = sub_1000395FC(v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  swift_endAccess();
  sub_10003E708(v6);
  return v10;
}

void sub_10002D2A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v110) = a4;
  v108 = a1;
  v109 = _s7SessionC8IdentityVMa(0);
  __chkstk_darwin(v109);
  v107 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  __chkstk_darwin(v8 - 8);
  v112 = &v101 - v9;
  v111 = type metadata accessor for SidecarIdentity(0);
  __chkstk_darwin(v111);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_10001E8B0(v12);
  v15 = v14;
  v17 = v16;
  if (qword_100098BA8 != -1)
  {
    swift_once();
  }

  v18 = qword_100099FD8;
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    if (a3)
    {
      v20 = a3;
    }

    else
    {
      Dictionary.init(dictionaryLiteral:)();
      v20 = 0;
    }

    v106 = v20;

    v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (qword_100098BB0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003420(v22, qword_1000A1AE8);
    v23 = v13;
    sub_10001FCF8(v15, v17);
    v24 = v21.super.isa;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    sub_100011358(v15, v17);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v105 = v11;
      v28 = v27;
      v29 = swift_slowAlloc();
      v104 = v13;
      v30 = v29;
      v31 = swift_slowAlloc();
      v103 = v5;
      v32 = v31;
      v116[0] = v31;
      *v28 = 136446466;
      v33 = sub_10001F14C(v23, v15, v17);
      v35 = v15;
      v36 = v17;
      v37 = sub_100014C58(v33, v34, v116);

      *(v28 + 4) = v37;
      v17 = v36;
      v15 = v35;
      *(v28 + 12) = 2114;
      *(v28 + 14) = v24;
      *v30 = v24;
      v38 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "Received %{public}s, %{public}@", v28, 0x16u);
      sub_100048978(v30, &unk_100099AF0);
      v13 = v104;

      sub_100003458(v32);
      v5 = v103;

      v11 = v105;
    }

    else
    {
    }

    a3 = v106;
  }

  if (!a3)
  {
    goto LABEL_28;
  }

  v39 = sub_100024404(a3);
  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v115 = v40;
  AnyHashable.init<A>(_:)();
  v41 = sub_100020CD4(v116, v39);
  sub_10001FDF0(v116);
  if (!v41)
  {
    goto LABEL_27;
  }

  v113 = v41;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (v114 == 0xD000000000000011 && 0x8000000100079E40 == v115)
  {
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v115 = v44;
  AnyHashable.init<A>(_:)();
  v45 = sub_100020CD4(v116, v39);
  sub_10001FDF0(v116);
  if (!v45)
  {
    goto LABEL_27;
  }

  v113 = v45;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v46 = v112;
  sub_100051D6C(v112);
  if (sub_1000113A4(v46, 1, v111) != 1)
  {
    sub_1000469E4();
    sub_10002BDD0();
    if (v110)
    {
      v51 = v13;
      sub_10001FCF8(v15, v17);
      v52 = sub_1000476D4(v11, v51, v15, v17, v5);

      sub_100011358(v15, v17);
    }

    else
    {
      v53 = v107;
      sub_10003E75C();
      v112 = v13;
      sub_10001FCF8(v15, v17);
      v54 = sub_10001EBA0();
      v55 = v109;
      *(v53 + *(v109 + 20)) = v54;
      *(v53 + *(v55 + 24)) = 0;
      v52 = sub_10002C8F4(v53, *(v108 + 32));

      sub_100011358(v15, v17);
      sub_10003E708(v53);
    }

    if (!v52)
    {

      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_100003420(v56, qword_1000A1AE8);
      v57 = v13;
      sub_10001FCF8(v15, v17);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 134217984;
        *(v60 + 4) = sub_10001EBA0();

        sub_100011358(v15, v17);
        _os_log_impl(&_mh_execute_header, v58, v59, "%lx: Ignoring Unexpected Message", v60, 0xCu);
      }

      else
      {

        sub_100011358(v15, v17);
        v58 = v57;
      }

      goto LABEL_84;
    }

    *(v52 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_dataLink) = sub_100032AB8(v39);
    if (swift_weakLoadStrong())
    {
    }

    else
    {
      swift_weakAssign();
    }

    v61 = *(v52 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_loggedLink);
    v112 = v52;
    if (v61)
    {
LABEL_68:
      v93 = sub_10001F00C(v13);
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v95 = [v13 objectForKey:isa];

      if (v95)
      {
        v116[0] = v95;
        if (swift_dynamicCast() & 1) != 0 && (v114)
        {
          sub_1000294D8(v93);
        }
      }

      switch(v93)
      {
        case 1:
        case 7:

          sub_10004741C(v13, v15, v17, v112);

          goto LABEL_83;
        case 2:
          sub_10003E708(v11);

          sub_100011358(v15, v17);

          return;
        case 3:

          sub_100030450(v112, v13, v15, v17);
          sub_10003E708(v11);

          sub_100011358(v15, v17);

          return;
        case 4:

          sub_10001EC24();
          sub_1000216C0();
          goto LABEL_82;
        case 5:

          sub_1000296E8();

          goto LABEL_83;
        case 6:
          v100 = sub_1000246A8(v39);

          sub_100032708(v112, v13, v15, v17, v100);

          break;
        default:

          sub_1000033E0(0, &qword_100099030, NSError_ptr);
          v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_10001E468(v96, v97, -1010, 0, 0, 0);
          swift_willThrow();
          if (qword_100098BB0 != -1)
          {
            swift_once();
          }

          v98 = type metadata accessor for Logger();
          v99 = sub_100003420(v98, qword_1000A1AE8);
          __chkstk_darwin(v99);
          sub_100016F18(sub_100032B80, 0, sub_100011C20);
          swift_errorRetain();
          sub_1000216C0();

LABEL_82:

LABEL_83:

          break;
      }

LABEL_84:
      sub_100011358(v15, v17);
      sub_10003E708(v11);
      return;
    }

    v111 = 0x296C6C756E28;
    *(v52 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_loggedLink) = 1;
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v62;
    AnyHashable.init<A>(_:)();
    v63 = sub_100020CD4(v116, v39);
    sub_10001FDF0(v116);
    v105 = v11;
    if (v63 && (v113 = v63, (swift_dynamicCast() & 1) != 0))
    {
      v64 = v114;
      v65 = v115;
    }

    else
    {
      v65 = 0xE600000000000000;
      v64 = 0x296C6C756E28;
    }

    v110 = v64;
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v66;
    AnyHashable.init<A>(_:)();
    v67 = sub_100020CD4(v116, v39);
    sub_10001FDF0(v116);
    v102 = v15;
    v104 = v13;
    if (v67 && (v113 = v67, (swift_dynamicCast() & 1) != 0))
    {
      v68 = v115;
      v111 = v114;
    }

    else
    {
      v68 = 0xE600000000000000;
    }

    v69 = *(v52 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity + *(v109 + 24));
    v103 = v5;
    if (v69)
    {
      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_100003420(v70, qword_1000A1AE8);

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v109 = v17;
        v74 = v73;
        v75 = swift_slowAlloc();
        LODWORD(v108) = v72;
        v116[0] = v75;
        *v74 = 136446722;

        sub_100027DA0();
        v77 = v76;
        v79 = v78;

        v80 = sub_100014C58(v77, v79, v116);

        *(v74 + 4) = v80;
        *(v74 + 12) = 2082;
        v81 = sub_100014C58(v110, v65, v116);

        *(v74 + 14) = v81;
        *(v74 + 22) = 2082;
        v82 = sub_100014C58(v111, v68, v116);
LABEL_65:

        *(v74 + 24) = v82;
        _os_log_impl(&_mh_execute_header, v71, v108, "=== %{public}s %{public}s -> %{public}s ===", v74, 0x20u);
        swift_arrayDestroy();

        v17 = v109;

LABEL_67:
        v15 = v102;
        v13 = v104;
        v11 = v105;
        goto LABEL_68;
      }
    }

    else
    {
      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for Logger();
      sub_100003420(v83, qword_1000A1AE8);

      v71 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v71, v84))
      {
        v85 = swift_slowAlloc();
        v109 = v17;
        v74 = v85;
        v86 = swift_slowAlloc();
        LODWORD(v108) = v84;
        v116[0] = v86;
        *v74 = 136446722;

        sub_100027DA0();
        v88 = v87;
        v90 = v89;

        v91 = sub_100014C58(v88, v90, v116);

        *(v74 + 4) = v91;
        *(v74 + 12) = 2082;
        v92 = sub_100014C58(v111, v68, v116);

        *(v74 + 14) = v92;
        *(v74 + 22) = 2082;
        v82 = sub_100014C58(v110, v65, v116);
        goto LABEL_65;
      }
    }

    goto LABEL_67;
  }

  sub_100048978(v46, &qword_10009A718);
LABEL_28:
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_100003420(v47, qword_1000A1AE8);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Received Malformed Message", v50, 2u);

    sub_100011358(v15, v17);
  }

  else
  {

    sub_100011358(v15, v17);
  }
}

void sub_10002E41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100098BA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v5 = sub_100003420(v4, qword_100099FC0);
    __chkstk_darwin(v5);
    sub_100016F18(sub_1000487F8, a3, sub_100011C20);
  }

  else
  {
    if (qword_100098BA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003420(v6, qword_100099FC0);

    v13 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      v10 = RapportRemoteDisplaySession.description.getter();
      v12 = sub_100014C58(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v13, v7, "Activated %{public}s", v8, 0xCu);
      sub_100003458(v9);
    }

    else
    {
    }
  }
}

unint64_t sub_10002E65C()
{
  _StringGuts.grow(_:)(21);

  v0._countAndFlagsBits = RapportRemoteDisplaySession.description.getter();
  String.append(_:)(v0);

  return 0xD000000000000013;
}

void sub_10002E6DC()
{
  sub_100011DD0();
  v51 = v2;
  v53 = v3;
  v4 = type metadata accessor for SidecarIdentity(0);
  v5 = sub_1000499EC(v4);
  __chkstk_darwin(v5);
  sub_100011CD4();
  v50 = v7 - v6;
  v56 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  sub_100011D00();
  __chkstk_darwin(v8);
  sub_100011D10();
  v55 = v9 - v10;
  __chkstk_darwin(v11);
  sub_100049C80();
  v54 = v12;
  sub_100011D50();
  swift_beginAccess();
  v52 = *(v1 + 120) + 64;
  sub_100049970();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v57 = v18;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  while (v15)
  {
LABEL_7:
    sub_100049B6C();
    v22 = v21 | (v19 << 6);
    v23 = _s7SessionC8IdentityVMa(0);
    sub_1000499EC(v23);
    sub_100049760();
    sub_10003E75C();
    *(v54 + *(v56 + 48)) = *(*(v57 + 56) + 8 * v22);
    sub_100048658();
    v0 = *(v55 + *(v56 + 48));
    Strong = swift_weakLoadStrong();

    sub_100048978(v54, &qword_10009A760);
    sub_100049748();
    sub_10003E708(v55);
    if (Strong)
    {

      if (Strong == v53)
      {

        goto LABEL_17;
      }
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v20 >= v17)
    {
      break;
    }

    v15 = *(v52 + 8 * v20);
    ++v19;
    if (v15)
    {
      v19 = v20;
      goto LABEL_7;
    }
  }

  v0 = v57;

  if (qword_100098BA0 == -1)
  {
    goto LABEL_11;
  }

LABEL_19:
  sub_100049778();
  swift_once();
LABEL_11:
  v25 = type metadata accessor for Logger();
  sub_100049AD4(v25, qword_100099FC0);
  sub_1000497BC();
  sub_10003E75C();

  v26 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v27 = sub_100049EE8();
  if (os_log_type_enabled(v27, v28))
  {
    sub_100011DE8();
    swift_slowAlloc();
    sub_100049B90();
    v58 = swift_slowAlloc();
    *v15 = 136446466;
    sub_100052008();
    sub_100049CD0();
    sub_10004971C();
    sub_10003E708(v50);
    v29 = sub_100049A98();
    sub_100014C58(v29, v30, v31);
    sub_100049CC4();

    *(v15 + 4) = v0;
    *(v15 + 12) = 2082;
    v32 = RapportRemoteDisplaySession.description.getter();
    sub_100014C58(v32, v33, &v58);
    sub_100049AC8();

    *(v15 + 14) = v53;
    sub_1000499D8();
    _os_log_impl(v34, v35, v36, v37, v38, v39);
    sub_100049F54();
    sub_100011CF4();

    sub_100049950();
  }

  else
  {

    sub_10004971C();
    sub_10003E708(v50);
  }

  RapportRemoteDisplaySession.cancel()();
  sub_10002C40C(v53);
  sub_100049E28();
  swift_beginAccess();
  sub_1000498A0();
  if (sub_100020BD8(v51, v40, v41))
  {
    swift_endAccess();
    sub_100011E50();
    swift_beginAccess();
    sub_1000498B8();
    sub_10003BDFC(v51, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    swift_endAccess();

    sub_1000269F0();
  }

  else
  {
    swift_endAccess();
  }

LABEL_17:
  sub_10002BDD0();
  sub_100011DB8();
}

uint64_t sub_10002EB30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 120);
  sub_10003D650(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v2 + 120) = v7;
  swift_endAccess();
  sub_10000FC6C(&qword_10009A798, &qword_100076998);
  sub_100048A60(&unk_10009A7A0);
  return Subject<>.send()();
}

uint64_t sub_10002EC10(uint64_t a1)
{
  swift_beginAccess();
  sub_10003BD10(a1, &qword_10009A7A8, &qword_1000769A0, type metadata accessor for Relay.Session, v2, v3, v4, v5, v7, v8);
  swift_endAccess();

  sub_10000FC6C(&qword_10009A798, &qword_100076998);
  sub_100048A60(&unk_10009A7A0);
  return Subject<>.send()();
}

uint64_t sub_10002ECF4@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = _s7SessionC8IdentityVMa(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(v6 + 20);
  while (1)
  {
    v11 = arc4random() & 0x7FFFFFFF;
    sub_10003E75C();
    *&v8[*(v5 + 20)] = v11;
    v8[*(v5 + 24)] = 0;
    if (v9)
    {
      sub_10003E708(a2);
    }

    result = sub_1000469E4();
    if (!*(a2 + v10))
    {
      break;
    }

    swift_beginAccess();
    if (!*(*(v3 + 120) + 16))
    {
      return swift_endAccess();
    }

    sub_1000393BC(a2);
    if ((v13 & 1) == 0)
    {
      return swift_endAccess();
    }

    swift_endAccess();
    v9 = 1;
  }

  return result;
}

uint64_t sub_10002EE54()
{
  _StringGuts.grow(_:)(17);
  sub_100027DA0();
  v1 = v0;

  v2._countAndFlagsBits = 0x2065736F6C43203ALL;
  v2._object = 0xEF6E6F6973736553;
  String.append(_:)(v2);
  return v1;
}

uint64_t sub_10002EEEC(uint64_t a1)
{
  v1 = _s7SessionC8IdentityVMa(0);
  v2 = sub_1000499EC(v1);
  __chkstk_darwin(v2);
  sub_100011CD4();
  sub_100049E10();
  v3 = type metadata accessor for SidecarIdentity(0);
  v4 = sub_1000499EC(v3);
  __chkstk_darwin(v4);
  sub_100011CD4();
  v7 = v6 - v5;
  sub_100049760();
  sub_10003E75C();
  sub_1000497A4();
  sub_1000469E4();
  sub_100011E50();
  swift_beginAccess();
  sub_10003BDFC(v7, &unk_10009A7B8, &unk_1000769A8, type metadata accessor for Domain, v8, v9, v10, v11, v13, v14);
  swift_endAccess();

  sub_10004971C();
  return sub_10003E708(v7);
}

void sub_10002F010(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  _s7SessionC8IdentityVMa(0);
  sub_10003E75C();
  v7 = *(*(a5 + 56) + 8 * a2);

  v8 = v7;
}

id sub_10002F0DC()
{
  v31 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  v1 = __chkstk_darwin(v31);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v25 - v4;
  result = swift_beginAccess();
  if (!*(v0[15] + 16))
  {
    result = swift_beginAccess();
    if (!*(v0[19] + 16))
    {
      result = v0[22];
      if (result)
      {
        result = [result relayTerminateService];
      }
    }
  }

  v7 = v0[21];
  if (v7)
  {
    v26 = v0;
    v8 = v0[15];
    v9 = *(v8 + 64);
    v29 = v8 + 64;
    v10 = 1 << *(v8 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v9;
    v28 = (v10 + 63) >> 6;
    v32 = v8;
    swift_bridgeObjectRetain_n();
    v27 = v7;
    result = swift_unknownObjectRetain();
    v13 = 0;
    v30 = 0x8000000100079A50;
    while (v12)
    {
LABEL_14:
      v15 = v32;
      _s7SessionC8IdentityVMa(0);
      sub_10003E75C();
      v16 = *(*(v15 + 56) + 8 * (__clz(__rbit64(v12)) | (v13 << 6)));
      v17 = v31;
      *&v5[*(v31 + 48)] = v16;
      sub_100048658();
      v18 = *(v17 + 48);
      v19 = v3;
      v20 = *&v3[v18];
      v21 = *(v20 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
      v22 = *(v20 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);

      if (v21 == 0xD000000000000019 && v30 == v22)
      {

        sub_100048978(v5, &qword_10009A760);
        sub_10003E708(v19);
LABEL_22:

        return swift_unknownObjectRelease();
      }

      v12 &= v12 - 1;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_100048978(v5, &qword_10009A760);
      result = sub_10003E708(v19);
      v3 = v19;
      if (v24)
      {
        goto LABEL_22;
      }
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v28)
      {

        [v27 invalidate];
        swift_unknownObjectRelease();
        v26[21] = 0;
        return swift_unknownObjectRelease();
      }

      v12 = *(v29 + 8 * v14);
      ++v13;
      if (v12)
      {
        v13 = v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10002F464(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      sub_1000216C0();
    }
  }

  return result;
}

uint64_t sub_10002F534(uint64_t a1, uint64_t a2, int a3)
{
  v23 = a3;
  v24 = a2;
  v26 = a1;
  v4 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  v5 = __chkstk_darwin(v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  swift_beginAccess();
  v25 = v3;
  v9 = *(v3 + 120);
  v10 = _swiftEmptyArrayStorage;
  v27 = _swiftEmptyArrayStorage;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v16 = 0;
  while (1)
  {
    v17 = v16;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v16 << 6);
    _s7SessionC8IdentityVMa(0);
    sub_10003E75C();
    *&v8[*(v4 + 48)] = *(*(v9 + 56) + 8 * v19);

    if (sub_100028220(v26))
    {
      v20 = v22;
      sub_100048658();
      v21 = *(v20 + *(v4 + 48));
      sub_10003E708(v20);
      sub_100048978(v8, &qword_10009A760);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v27;
    }

    else
    {
      result = sub_100048978(v8, &qword_10009A760);
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      sub_10002F464(v10);
    }

    v13 = *(v9 + 64 + 8 * v16);
    ++v17;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v38 = a5;
  v39 = a4;
  v42 = a3;
  v43 = a1;
  v37 = a2;
  v46 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  v6 = __chkstk_darwin(v46);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v45 = &v35 - v9;
  v10 = __chkstk_darwin(v8);
  v44 = &v35 - v11;
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  swift_beginAccess();
  v40 = v5;
  v14 = *(v5 + 120);
  v41 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v20 = 0;
  while (v17)
  {
LABEL_9:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v20 << 6);
    _s7SessionC8IdentityVMa(0);
    sub_10003E75C();
    *&v13[*(v46 + 48)] = *(*(v14 + 56) + 8 * v23);
    v24 = v44;
    sub_100048658();
    Strong = swift_weakLoadStrong();

    sub_10003E708(v24);
    v26 = v45;
    if (Strong && (, Strong == v43))
    {
      if (v42)
      {
        sub_100048658();
        v27 = *(v26 + *(v46 + 48));
        v29 = *(v27 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
        v28 = *(v27 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);

        if (v29 == v37 && v28 == v42)
        {

          sub_10003E708(v26);
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_10003E708(v26);
          if ((v31 & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      v32 = v36;
      sub_100048658();
      sub_10003E708(v32);
      sub_100048978(v13, &qword_10009A760);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v41 = v47;
    }

    else
    {
LABEL_17:
      result = sub_100048978(v13, &qword_10009A760);
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      v33 = v41;
      sub_10002F464(v41);
      v34 = sub_100037E08(v33);

      return v34 != 0;
    }

    v17 = *(v14 + 64 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10002FC68(void *a1)
{
  swift_beginAccess();
  sub_1000441FC(&v2, a1);
  swift_endAccess();
}

void sub_10002FCC8(uint64_t a1, const char *a2)
{
  if (qword_100098BA0 != -1)
  {
    sub_100049778();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100049AD4(v3, qword_100099FC0);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
    sub_100011CF4();
  }
}

unint64_t sub_1000303C8()
{
  _StringGuts.grow(_:)(25);
  v0 = RapportRemoteDisplaySession.description.getter();

  v1._object = 0x800000010007AFA0;
  v1._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v1);
  return v0;
}

void sub_100030450(void *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v137 = a3;
  v5 = v4;
  v136 = a2;
  v127 = _s7SessionC8IdentityVMa(0);
  v135 = *(v127 - 8);
  v8 = __chkstk_darwin(v127);
  v126 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v125 - v10;
  v134 = sub_10000FC6C(&qword_10009A760, &qword_100076968);
  v12 = __chkstk_darwin(v134);
  v133 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v132 = &v125 - v15;
  __chkstk_darwin(v14);
  v131 = &v125 - v16;
  v18 = *(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
  v17 = *(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100003420(v19, qword_1000A1AE8);

  v128 = v20;
  v21 = Logger.logObject.getter();
  LODWORD(v20) = static os_log_type_t.default.getter();

  LODWORD(v130) = v20;
  if (os_log_type_enabled(v21, v20))
  {
    v22 = swift_slowAlloc();
    v129 = a4;
    v23 = v22;
    v125 = swift_slowAlloc();
    v140[0] = v125;
    *v23 = 136446466;
    sub_100027DA0();
    v26 = a1;
    v27 = v11;
    v28 = v17;
    v29 = v18;
    v30 = v5;
    v31 = sub_100014C58(v24, v25, v140);

    *(v23 + 4) = v31;
    v5 = v30;
    v18 = v29;
    v17 = v28;
    v11 = v27;
    a1 = v26;
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_100014C58(v18, v17, v140);
    _os_log_impl(&_mh_execute_header, v21, v130, "%{public}s: Connecting '%{public}s'", v23, 0x16u);
    swift_arrayDestroy();

    a4 = v129;
  }

  v33 = v136;
  v32 = v137;
  if (qword_100098BD8 != -1)
  {
    swift_once();
  }

  if (!sub_100025128(v18, v17, qword_1000A1B58))
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = 1413;
    LOBYTE(v123) = 2;
    v36 = -103;
    goto LABEL_11;
  }

  if (*(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client))
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = 1418;
    LOBYTE(v123) = 2;
    v36 = -100;
LABEL_11:
    v138 = sub_10001E468(v34, v35, v36, 0, 0, 0);
    swift_willThrow();
    return;
  }

  v37 = v18 == 0xD000000000000019 && 0x8000000100079A50 == v17;
  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v129 = a4;
    v38 = swift_beginAccess();
    __chkstk_darwin(v38);
    *(&v125 - 4) = a1;
    *(&v125 - 3) = v18;
    v123 = v17;

    v40 = v138;
    v41 = sub_100044AF8(v39, sub_1000479DC, &v125 - 6);
    v138 = v40;

    if (v41[2])
    {

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        LODWORD(v128) = v43;
        v129 = v42;
        v5 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v140[0] = v126;
        *v5 = 136446722;
        sub_100027DA0();
        v46 = sub_100014C58(v44, v45, v140);

        *(v5 + 4) = v46;
        *(v5 + 6) = 2082;

        v47 = sub_100014C58(v18, v17, v140);

        *(v5 + 14) = v47;
        v127 = v5;
        *(v5 + 11) = 2082;
        v17 = v41[2];
        a1 = v41;
        if (v17)
        {
          v141 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v49 = sub_100046A7C(v41);
          v51 = v50;
          v52 = 0;
          v138 = a1 + 8;
          v130 = a1 + 9;
          if ((v49 & 0x8000000000000000) == 0)
          {
            while (v49 < 1 << *(a1 + 32))
            {
              v18 = v49 >> 6;
              v11 = 1 << v49;
              if ((v138[v49 >> 6] & (1 << v49)) == 0)
              {
                __break(1u);
LABEL_76:
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
LABEL_79:
                __break(1u);
                goto LABEL_80;
              }

              if (*(a1 + 9) != v51)
              {
                goto LABEL_76;
              }

              LODWORD(v136) = v48;
              v137 = v52;
              v5 = a1;
              sub_10003E75C();
              v53 = *(a1[7] + 8 * v49);
              v54 = v132;
              sub_1000469E4();
              *&v54[*(v134 + 48)] = v53;
              v55 = v133;
              sub_10004871C();

              sub_10003E708(v55);
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v56 = 1 << *(a1 + 32);
              if (v49 >= v56)
              {
                goto LABEL_77;
              }

              v57 = v138[v18];
              if ((v57 & v11) == 0)
              {
                goto LABEL_78;
              }

              if (*(a1 + 9) != v51)
              {
                goto LABEL_79;
              }

              v58 = v57 & (-2 << (v49 & 0x3F));
              if (v58)
              {
                v56 = __clz(__rbit64(v58)) | v49 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v11 = v18 << 6;
                v59 = v18 + 1;
                v60 = &v130[v18];
                while (v59 < (v56 + 63) >> 6)
                {
                  v62 = *v60++;
                  v61 = v62;
                  v11 += 64;
                  ++v59;
                  if (v62)
                  {
                    sub_100010FDC(v49, v51, v136 & 1);
                    v56 = __clz(__rbit64(v61)) + v11;
                    goto LABEL_34;
                  }
                }

                sub_100010FDC(v49, v51, v136 & 1);
LABEL_34:
                a1 = v5;
              }

              v52 = (v137 + 1);
              if ((v137 + 1) == v17)
              {
                goto LABEL_64;
              }

              v48 = 0;
              v51 = *(a1 + 9);
              v49 = v56;
              if (v56 < 0)
              {
                break;
              }
            }
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_64:

        type metadata accessor for Relay.Session(0);
        v114 = Array.description.getter();
        v116 = v115;

        v117 = sub_100014C58(v114, v116, v140);

        v118 = v127;
        *(v127 + 24) = v117;
        v119 = v129;
        _os_log_impl(&_mh_execute_header, v129, v128, "%{public}s: Existing Sessions for %{public}s: %{public}s", v118, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v124 = 1431;
      LOBYTE(v123) = 2;
      v36 = -105;
      goto LABEL_11;
    }

LABEL_38:

    a4 = v129;
    v33 = v136;
    v32 = v137;
  }

  v63 = sub_10001F0A8(v33, v32, a4);
  if (v64)
  {
    v63 = sub_100031570(v33, v32, a4);
    if (v65)
    {
LABEL_47:
      swift_beginAccess();
      v86 = sub_100020D24(v18, v17, v5[20]);
      if (v86)
      {
        v49 = v86;
        v141 = v86;
        swift_endAccess();
        if (sub_100037E08(v49))
        {
          if (sub_100020FF0(v49))
          {
LABEL_80:
            __break(1u);
          }

          else if (sub_100037E08(v49))
          {
            if ((v49 & 0xC000000000000001) == 0)
            {
              if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_84;
              }

              v87 = *(v49 + 32);
LABEL_54:
              v88 = v87;
              if (!sub_100037E08(v49))
              {
LABEL_86:
                __break(1u);
                return;
              }

              if (sub_100037E08(v49) >= 1)
              {
                v89 = sub_100037E08(v49);
                v90 = __OFSUB__(v89, 1);
                v91 = v89 - 1;
                if (!v90)
                {
                  sub_10004386C(v91, 1);
                  sub_100046AB8(0, 1, 0);
                  v137 = v141;
                  v92 = v88;
                  v93 = a1;

                  v94 = v92;
                  v95 = Logger.logObject.getter();
                  v96 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v95, v96))
                  {
                    v97 = swift_slowAlloc();
                    v136 = v18;
                    v98 = v97;
                    v135 = swift_slowAlloc();
                    v140[0] = v135;
                    *v98 = 136446466;
                    sub_100027DA0();
                    v101 = v94;
                    v102 = v5;
                    v103 = sub_100014C58(v99, v100, v140);

                    *(v98 + 4) = v103;
                    v5 = v102;
                    v94 = v101;
                    *(v98 + 12) = 1024;
                    v104 = *&v101[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

                    *(v98 + 14) = v104;
                    _os_log_impl(&_mh_execute_header, v95, v96, "%{public}s: Connecting to Pending Service Provider PID %d", v98, 0x12u);
                    sub_100003458(v135);

                    v18 = v136;
                  }

                  else
                  {
                  }

                  sub_100031694(v93, v94);
                  v121 = v137;
                  if (sub_100037E08(v137))
                  {
                    swift_beginAccess();
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v139 = v5[20];
                    sub_10003E268(v121, v18, v17, isUniquelyReferenced_nonNull_native);
                    v5[20] = v139;
                    swift_endAccess();
                  }

                  else
                  {

                    swift_beginAccess();
                    sub_10003C278();
                    swift_endAccess();
                  }

                  return;
                }

                goto LABEL_85;
              }

LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

LABEL_82:
            v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_54;
          }

          __break(1u);
          goto LABEL_82;
        }
      }

      else
      {
        swift_endAccess();
      }

      v120 = v138;
      sub_100031744(v18, v17);
      v138 = v120;
      return;
    }
  }

  v66 = v63;
  v67 = a1;
  sub_10003E75C();
  sub_1000469E4();
  v68 = v127;
  *(v11 + *(v127 + 20)) = v66;
  *(v11 + *(v68 + 24)) = 1;
  swift_beginAccess();
  sub_10003BD10(v11, &qword_10009A7F0, &qword_1000769D8, type metadata accessor for ServiceProvider, v69, v70, v71, v72, v125, v126);
  v74 = v73;
  swift_endAccess();
  if (!v74)
  {
    sub_10003E708(v11);
    goto LABEL_47;
  }

  v75 = v11;
  if (v74[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_allowsReconnect])
  {
    v76 = v74;

    v74 = v76;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v137 = v5;
      v81 = v80;
      v140[0] = v80;
      *v79 = 136446466;
      sub_100027DA0();
      v84 = sub_100014C58(v82, v83, v140);

      *(v79 + 4) = v84;
      *(v79 + 12) = 1024;
      v85 = *&v74[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

      *(v79 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v77, v78, "%{public}s: Reconnecting to Service Provider PID %d", v79, 0x12u);
      sub_100003458(v81);
    }

    else
    {
    }

    sub_100031694(v67, v74);
  }

  else
  {

    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v140[0] = v108;
      *v107 = 136446210;
      sub_100027DA0();
      v111 = sub_100014C58(v109, v110, v140);

      *(v107 + 4) = v111;
      _os_log_impl(&_mh_execute_header, v105, v106, "%{public}s: Canceling Reconnect to Closed Service Provider", v107, 0xCu);
      sub_100003458(v108);
    }

    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = 1462;
    LOBYTE(v123) = 2;
    v138 = sub_10001E468(v112, v113, 3072, 0, 0, 0);
    swift_willThrow();
  }

  sub_10003E708(v75);
}