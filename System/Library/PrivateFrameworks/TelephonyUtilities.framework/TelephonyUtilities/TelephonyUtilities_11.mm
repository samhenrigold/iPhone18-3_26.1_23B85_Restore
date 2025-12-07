uint64_t sub_100291184()
{
  sub_10003A1C8();
  if (!v5)
  {
    return 7104878;
  }

  sub_10003EBF0(&v4, v3);
  sub_100006A94(v3, &v2);
  v0 = String.init<A>(reflecting:)();
  sub_100009B7C(v3);
  return v0;
}

uint64_t sub_100291280(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v7 = a2(0);
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007BAC();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  v17 = sub_10026D814(a3, a4);
  sub_100007BF0(v17);
  sub_100006688();
  __chkstk_darwin(v18);
  sub_100007654();
  sub_10003A1C8();
  sub_10000C4F8(v4, 1, v7);
  if (v19)
  {
    return 7104878;
  }

  (*(v9 + 32))(v16, v4, v7);
  (*(v9 + 16))(v13, v16, v7);
  sub_100006884();
  v20 = String.init<A>(reflecting:)();
  (*(v9 + 8))(v16, v7);
  return v20;
}

uint64_t sub_1002914A8(uint64_t a1)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  v2 = sub_100018620();
  v3(v2);
  v4 = v1;
  return String.init<A>(reflecting:)();
}

uint64_t sub_1002914F8(uint64_t a1)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  swift_unknownObjectRetain();
  sub_10026D814(&qword_1006A2BD0, &unk_100586640);
  return String.init<A>(reflecting:)();
}

uint64_t sub_10029167C()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A2A10);
  sub_10000AF9C(v0, qword_1006A2A10);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1002916FC(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10029170C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002916FC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100291740(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x656E696665646E75;
    case 2:
      return 0x64656C6261736964;
    case 1:
      return 0x64656C62616E65;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

BOOL static CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 == v3)
  {
    return *a1 < *a2;
  }

  return 0;
}

uint64_t CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter()
{
  _StringGuts.grow(_:)(38);

  sub_10000C3E4();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3D44496E6567202CLL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  sub_10000C3E4();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x3D6574617473202CLL;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_100291740(*(v0 + 16));
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0x6963697472617028;
}

uint64_t sub_100291954(char a1)
{
  v3 = *v1;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v6 = v5;
  if (a1)
  {

    v7 = sub_100291AFC(4, v4, v6);
    if (v3 <= 0x7CF)
    {
      v11 = 0;
    }

    else
    {
      v11 = 10911970;
    }

    if (v3 <= 0x7CF)
    {
      v12 = 0xE000000000000000;
    }

    else
    {
      v12 = 0xA300000000000000;
    }

    v4 = sub_10033C510(v7, v8, v9, v10, v11, v12);
    v14 = v13;

    v6 = v14;
  }

  _StringGuts.grow(_:)(23);

  v15._countAndFlagsBits = v4;
  v15._object = v6;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x3D646967202CLL;
  v16._object = 0xE600000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x3D7473202CLL;
  v18._object = 0xE500000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = sub_100291740(v1[2]);
  String.append(_:)(v19);

  v20._countAndFlagsBits = 41;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  return 0x3D64697028;
}

uint64_t sub_100291AFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v3 = String.subscript.getter();

    return v3;
  }

  return result;
}

void static CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.__derived_struct_equals(_:_:)()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v12);
  sub_100006688();
  __chkstk_darwin(v13);
  sub_100007654();
  v14 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  sub_100008070();
  sub_100006688();
  __chkstk_darwin(v15);
  sub_10000F9B8();
  if (*v4 == *v2 && v4[1] == v2[1] && v4[2] == v2[2])
  {
    type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
    v16 = *(v14 + 48);
    sub_10003A1C8();
    sub_10003A1C8();
    sub_100009F5C(v0);
    if (!v17)
    {
      sub_10000C3E4();
      sub_10003A1C8();
      sub_100009F5C(v0 + v16);
      if (!v17)
      {
        (*(v7 + 32))(v11, v0 + v16, v5);
        sub_1000180BC();
        sub_10002625C(v20, v21, &protocol conformance descriptor for UUID);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *(v7 + 8);
        v23 = sub_100006B30();
        v22(v23);
        v24 = sub_100007968();
        v22(v24);
        sub_100009A04(v0, &unk_1006A3DD0, &unk_10057C9D0);
        goto LABEL_13;
      }

      v18 = sub_100007968();
      v19(v18);
LABEL_12:
      sub_100009A04(v0, &unk_1006A2A30, &unk_10057D150);
      goto LABEL_13;
    }

    sub_100009F5C(v0 + v16);
    if (!v17)
    {
      goto LABEL_12;
    }

    sub_100009A04(v0, &unk_1006A3DD0, &unk_10057C9D0);
  }

LABEL_13:
  sub_100005EDC();
}

uint64_t sub_1002921B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID;
  sub_100008D34(v1 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID, v5);
  sub_100298328(a1, v1 + v3);
  return swift_endAccess();
}

id sub_100292210(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  sub_100007928();
  sub_10000AF74(v5, v6, v7, v4);
  v8 = &v2[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID];
  *v8 = 0;
  v8[8] = 1;
  *&v2[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState] = 0;
  sub_100007928();
  sub_10000AF74(v9, v10, v11, v4);
  *(OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState + v2) = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_queue] = a1;
  v12 = qword_1006A0780;
  v13 = a1;
  if (v12 != -1)
  {
    sub_100009F3C(&qword_1006A0780);
  }

  v14 = type metadata accessor for Logger();
  sub_1000075F0(v14, qword_1006A2A10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Initialized spatial persona resolver", v17, 2u);
    sub_100006868();
  }

  v20.receiver = v2;
  v20.super_class = type metadata accessor for CSDConversationSpatialPersonaResolver(0);
  v18 = objc_msgSendSuper2(&v20, "init");

  return v18;
}

uint64_t sub_1002923C4()
{
  v1 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = *&v0[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_queue];
  *(v6 - v5) = v7;
  (*(v3 + 104))(v6 - v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v9 = sub_100006884();
  result = v10(v9);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v12 = [v0 generationCounter];
  v13 = __CFADD__(v12, 1);
  result = v12 + 1;
  if (v13)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id CSDConversationSpatialPersonaResolver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CSDConversationSpatialPersonaResolver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSDConversationSpatialPersonaResolver(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100292664()
{
  sub_100005EF4();
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v4);
  sub_100006688();
  __chkstk_darwin(v5);
  sub_10000F9B8();
  v6 = type metadata accessor for UUID();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  sub_100007654();
  v10 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  sub_10000D304();
  v14 = *(v0 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_queue);
  *v3 = v14;
  (*(v12 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v3, v10);
  if (v14)
  {
    sub_100016270(v0 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID);
    sub_10003A1C8();
    sub_10000C4F8(v1, 1, v6);
    if (v16)
    {
      sub_100009A04(v1, &unk_1006A3DD0, &unk_10057C9D0);
    }

    else
    {
      (*(v8 + 32))(v2, v1, v6);
      v17 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState;
      v18 = sub_100005298(OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState + v0, &v21);
      v19 = *&v17[v0];
      __chkstk_darwin(v18);
      v20[2] = v2;

      sub_100292D2C(0, sub_100298404, v20, v19);

      (*(v8 + 8))(v2, v6);
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10029292C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v30 = a3;
  v32 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v27 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v13 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v14 = __chkstk_darwin(v13 - 8);
  v28 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v31 = *a1;
  type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  v29 = v7;
  (*(v7 + 16))(v17, v30, v6);
  sub_10000AF74(v17, 0, 1, v6);
  v18 = *(v10 + 56);
  v30 = a2;
  sub_10003A1C8();
  sub_10003A1C8();
  if (sub_100015468(v12, 1, v6) != 1)
  {
    v21 = v28;
    sub_10003A1C8();
    if (sub_100015468(&v12[v18], 1, v6) != 1)
    {
      v22 = v29;
      v23 = &v12[v18];
      v24 = v27;
      (*(v29 + 32))(v27, v23, v6);
      sub_10002625C(&qword_1006A2620, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v22 + 8);
      v26(v24, v6);
      sub_100009A04(v17, &unk_1006A3DD0, &unk_10057C9D0);
      v26(v21, v6);
      result = sub_100009A04(v12, &unk_1006A3DD0, &unk_10057C9D0);
      v20 = v31;
      if ((v25 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_100009A04(v17, &unk_1006A3DD0, &unk_10057C9D0);
    (*(v29 + 8))(v21, v6);
LABEL_6:
    result = sub_100009A04(v12, &unk_1006A2A30, &unk_10057D150);
    v20 = v31;
    goto LABEL_10;
  }

  sub_100009A04(v17, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(&v12[v18], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  result = sub_100009A04(v12, &unk_1006A3DD0, &unk_10057C9D0);
  v20 = v31;
LABEL_8:
  if (v20 <= *(v30 + 8))
  {
    v20 = *(v30 + 8);
  }

LABEL_10:
  *v32 = v20;
  return result;
}

uint64_t sub_100292D2C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v7 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  v17[1] = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      sub_100047E50();
      v18(&v19, &v20, v9);
      if (v4)
      {
        break;
      }

      v12 &= v12 - 1;
      result = sub_100049D70(v9, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
      a1 = v19;
      v20 = v19;
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_100049D70(v9, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
LABEL_12:

    return a1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_12;
      }

      v12 = *(a4 + 64 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100292F54()
{
  sub_100005EF4();
  v3 = v0;
  v63 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  sub_100008070();
  __chkstk_darwin(v4);
  sub_10000F4E8();
  v60 = v5;
  sub_100006838();
  __chkstk_darwin(v6);
  sub_10000C1C4();
  v61 = v7;
  v8 = sub_10026D814(&qword_1006A76C0, &unk_100582DC0);
  v9 = sub_100007BF0(v8);
  __chkstk_darwin(v9);
  sub_10000F4E8();
  v62 = v10;
  sub_100006838();
  __chkstk_darwin(v11);
  sub_10000C1C4();
  v64 = v12;
  v13 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v13);
  sub_100006688();
  __chkstk_darwin(v14);
  sub_10000D304();
  v15 = type metadata accessor for UUID();
  sub_100007FEC();
  v65 = v16;
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v22 = &v59 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100007FDC();
  sub_100007654();
  v27 = *(v3 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_queue);
  *v1 = v27;
  (*(v25 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v23);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v1, v23);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_100016270(v3 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID);
  sub_10003A1C8();
  sub_10000C4F8(v2, 1, v15);
  if (v37)
  {
    sub_100009A04(v2, &unk_1006A3DD0, &unk_10057C9D0);
  }

  else
  {
    v29 = v3;
    v30 = v65;
    v31 = *(v65 + 32);
    v31(v22, v2, v15);
    sub_100005298(OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState + v29, &v67);
    v59 = v29;
    sub_10000528C();
    v32();
    v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v34 = swift_allocObject();
    v31((v34 + v33), &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v15);

    v18 = v64;
    sub_1002939E8(v35, sub_100298398, v34, v64);

    v36 = v62;
    sub_10003A1C8();
    sub_10000C4F8(v36, 1, v63);
    if (!v37)
    {
      sub_100010190();
      v3 = v61;
      sub_100047D98();
      v40 = *(v3 + 8);
      v41 = *(v59 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter);
      if (v40 < v41)
      {
        sub_1000080E4();
        sub_100049D70(v3, v42);
        sub_100009A04(v18, &qword_1006A76C0, &unk_100582DC0);
        (*(v65 + 8))(v22, v15);
        goto LABEL_18;
      }

      if (v40 != v41 || (*(v59 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID + 8) & 1) == 0)
      {
LABEL_17:
        sub_100009A04(v18, &qword_1006A76C0, &unk_100582DC0);
        v56 = sub_100035DCC();
        v57(v56);
        sub_1000080E4();
        sub_100049D70(v3, v58);
        goto LABEL_18;
      }

      if (qword_1006A0780 == -1)
      {
LABEL_13:
        v43 = type metadata accessor for Logger();
        sub_1000075F0(v43, qword_1006A2A10);
        sub_100010190();
        v44 = v60;
        sub_100047E50();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = sub_100005274();
          v63 = swift_slowAlloc();
          v66 = v63;
          *v47 = 136315138;
          v48 = sub_100291740(*(v44 + 16));
          v50 = v49;
          sub_1000080E4();
          sub_100049D70(v52, v51);
          v53 = sub_10002741C(v48, v50, &v66);

          *(v47 + 4) = v53;
          _os_log_impl(&_mh_execute_header, v45, v46, "localParticipantID not set, so resolving to the max remote-participant-state, state=%s", v47, 0xCu);
          v54 = v63;
          sub_100009B7C(v63);
          sub_100005F40(v54);
          sub_100005F40(v47);
        }

        else
        {

          sub_1000080E4();
          sub_100049D70(v44, v55);
        }

        goto LABEL_17;
      }

LABEL_20:
      sub_100009F3C(&qword_1006A0780);
      goto LABEL_13;
    }

    sub_100009A04(v18, &qword_1006A76C0, &unk_100582DC0);
    (*(v30 + 8))(v22, v15);
    v38 = sub_100006DB8();
    sub_100009A04(v38, v39, &unk_100582DC0);
  }

LABEL_18:
  sub_100005EDC();
}

uint64_t sub_10029362C(uint64_t a1, uint64_t a2)
{
  v22[1] = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v22[0] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v22 - v8;
  v10 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v22 - v14;
  type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  (*(v4 + 16))(v15, a2, v3);
  sub_10000AF74(v15, 0, 1, v3);
  v16 = *(v7 + 56);
  sub_10003A1C8();
  sub_10003A1C8();
  if (sub_100015468(v9, 1, v3) != 1)
  {
    sub_10003A1C8();
    if (sub_100015468(&v9[v16], 1, v3) != 1)
    {
      v18 = &v9[v16];
      v19 = v22[0];
      (*(v4 + 32))(v22[0], v18, v3);
      sub_10002625C(&qword_1006A2620, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v4 + 8);
      v20(v19, v3);
      sub_100009A04(v15, &unk_1006A3DD0, &unk_10057C9D0);
      v20(v13, v3);
      sub_100009A04(v9, &unk_1006A3DD0, &unk_10057C9D0);
      return v17 & 1;
    }

    sub_100009A04(v15, &unk_1006A3DD0, &unk_10057C9D0);
    (*(v4 + 8))(v13, v3);
    goto LABEL_6;
  }

  sub_100009A04(v15, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(&v9[v16], 1, v3) != 1)
  {
LABEL_6:
    sub_100009A04(v9, &unk_1006A2A30, &unk_10057D150);
    v17 = 0;
    return v17 & 1;
  }

  sub_100009A04(v9, &unk_1006A3DD0, &unk_10057C9D0);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1002939E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v42 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  v7 = __chkstk_darwin(v42);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v36 = &v35 - v10;
  v11 = __chkstk_darwin(v9);
  v38 = &v35 - v12;
  v13 = __chkstk_darwin(v11);
  v37 = &v35 - v14;
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v18 = &v35 - v17;
  v19 = __chkstk_darwin(v16);
  v35 = &v35 - v20;
  __chkstk_darwin(v19);
  v40 = (&v35 - v21);
  sub_100296EFC(a1, a2, a3, v46);
  v22 = v46[1];
  v23 = v48;
  v24 = v49;
  v44 = v50;
  v45 = v46[0];
  v41 = v47;
  v25 = (v47 + 64) >> 6;

  if (v24)
  {
    while (1)
    {
      v27 = v23;
LABEL_7:
      v24 &= v24 - 1;
      sub_100047E50();
      sub_100047D98();
      if (v44(v18))
      {
        break;
      }

      result = sub_100049D70(v18, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
      v23 = v27;
      if (!v24)
      {
        goto LABEL_3;
      }
    }

    sub_100047D98();
    result = sub_100047D98();
    v31 = v36;
    while (v24)
    {
LABEL_19:
      v24 &= v24 - 1;
      sub_100047E50();
      sub_100047D98();
      if (v44(v31))
      {
        sub_100047D98();
        v34 = v37;
        sub_100047D98();
        if (*v40 < *v34)
        {
          sub_100049D70(v40, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
          result = sub_100047D98();
        }

        else
        {
          result = sub_100049D70(v34, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
        }
      }

      else
      {
        result = sub_100049D70(v31, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
      }
    }

    v32 = v27;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v25)
      {

        sub_100022DDC(v45);
        v30 = v43;
        sub_100047D98();
        v29 = 0;
        return sub_10000AF74(v30, v29, 1, v42);
      }

      v24 = *(v22 + 8 * v33);
      ++v32;
      if (v24)
      {
        v27 = v33;
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_3:
    v28 = v23;
    while (1)
    {
      v27 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
        sub_100022DDC(v45);

        v29 = 1;
        v30 = v43;
        return sub_10000AF74(v30, v29, 1, v42);
      }

      v24 = *(v22 + 8 * v27);
      ++v28;
      if (v24)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100293EE8()
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v2);
  sub_100006688();
  __chkstk_darwin(v3);
  sub_10000F9B8();
  if (qword_1006A0780 != -1)
  {
    sub_100009F3C(&qword_1006A0780);
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006A2A10);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100005274();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Reset] Resetting, %@", v8, 0xCu);
    sub_100009A04(v9, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v9);
    sub_100006868();
  }

  type metadata accessor for UUID();
  sub_100007928();
  sub_10000AF74(v11, v12, v13, v14);
  v15 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_groupUUID;
  sub_100008D34(v5 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_groupUUID, v20);
  sub_100298328(v1, v5 + v15);
  swift_endAccess();
  v16 = v5 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID;
  *v16 = 0;
  v16[8] = 1;
  *(v5 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter) = 0;
  *(v5 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState) = 0;
  type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  v17 = Dictionary.init(dictionaryLiteral:)();
  v18 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState;
  swift_beginAccess();
  *&v18[v5] = v17;
}

void sub_100294148()
{
  sub_100005EF4();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v13 = sub_100007BF0(v12);
  __chkstk_darwin(v13);
  sub_100007BAC();
  __chkstk_darwin(v14);
  sub_100006B48();
  __chkstk_darwin(v15);
  sub_100035CAC();
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  v20 = &v0[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID];
  if (v20[8] == 1)
  {
    v53 = v11;
    v54 = v5;
    v55 = v9;
    v56 = v17;
    v52 = v7;
    v21 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_groupUUID;
    sub_100016270(&v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_groupUUID]);
    sub_10003A1C8();
    v22 = type metadata accessor for UUID();
    v23 = sub_100015468(v19, 1, v22);
    sub_100009A04(v19, &unk_1006A3DD0, &unk_10057C9D0);
    if (v23 == 1)
    {
      *v20 = v53;
      v20[8] = 0;
      if (v54)
      {
        sub_100294620(v2);
      }

      else
      {
        sub_100007928();
        sub_10000AF74(v40, v41, v42, v22);
      }

      v43 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID;
      sub_100008D34(&v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID], v57);
      sub_100298328(v2, &v3[v43]);
      swift_endAccess();
      (*(*(v22 - 8) + 16))(v1, v55, v22);
      sub_10000AF74(v1, 0, 1, v22);
      sub_100008D34(v21 + v3, v57);
      sub_100298328(v1, v21 + v3);
      swift_endAccess();
      v21 = v56;
      sub_10003A1C8();
      LODWORD(v43) = sub_100015468(v21, 1, v22);
      sub_10000528C();
      sub_100009A04(v44, v45, v46);
      if (v43 == 1)
      {
        v47 = 1;
        if ((v52 & 1) == 0)
        {
          v47 = 2;
        }

        *&v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState] = v47;
      }

      if (qword_1006A0780 != -1)
      {
        sub_100009F3C(&qword_1006A0780);
      }

      v48 = type metadata accessor for Logger();
      sub_1000075F0(v48, qword_1006A2A10);
      v49 = v3;
      v34 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v34, v50))
      {
        goto LABEL_26;
      }

      sub_100005274();
      v36 = sub_100007974();
      sub_100027E4C(v36, 5.7779e-34);
      v39 = "[Config] Set successful, %@";
    }

    else
    {
      if (qword_1006A0780 != -1)
      {
        sub_100009F3C(&qword_1006A0780);
      }

      v32 = type metadata accessor for Logger();
      sub_1000075F0(v32, qword_1006A2A10);
      v33 = v3;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_26;
      }

      sub_100005274();
      v36 = sub_100007974();
      sub_100027E4C(v36, 5.7779e-34);
      v39 = "[Config] Bad API usage; groupUUID is already set, %@";
    }

    sub_10000B87C(&_mh_execute_header, v37, v38, v39);
    sub_100009A04(v36, &unk_1006A2630, &qword_10057CB40);
    sub_100006868();
    sub_100005F40(v21);
LABEL_26:

    sub_100005EDC();
    return;
  }

  if (qword_1006A0780 != -1)
  {
    sub_100009F3C(&qword_1006A0780);
  }

  v24 = type metadata accessor for Logger();
  sub_1000075F0(v24, qword_1006A2A10);
  v25 = v3;
  v56 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v56, v26))
  {
    v27 = sub_100005274();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v25;
    *v28 = v25;
    v29 = v25;
    _os_log_impl(&_mh_execute_header, v56, v26, "[Config] Bad API usage; localParticipantID is already set, %@", v27, 0xCu);
    sub_100009A04(v28, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v28);
    sub_100005F40(v27);
  }

  sub_100005EDC();
}

uint64_t sub_100294620@<X0>(uint64_t a1@<X8>)
{
  if ([v1 type] == 1)
  {
    v3 = [v1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for UUID();

  return sub_10000AF74(a1, v4, 1, v5);
}

void sub_1002947CC()
{
  sub_100005EF4();
  v3 = v0;
  v5 = v4;
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = sub_100007BF0(v6);
  __chkstk_darwin(v7);
  sub_100007BAC();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_10000C1C4();
  v55 = v12;
  v13 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100007FDC();
  sub_10000D304();
  v17 = *&v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_queue];
  *v1 = v17;
  (*(v15 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  v21 = *(v15 + 8);
  v20 = (v15 + 8);
  v21(v1, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    sub_100009F3C(&qword_1006A0780);
    goto LABEL_13;
  }

  p_cb = &OBJC_PROTOCOL___OS_dispatch_source.cb;
  if (v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID + 8] == 1)
  {
    if (qword_1006A0780 != -1)
    {
      sub_100009F3C(&qword_1006A0780);
    }

    v22 = type metadata accessor for Logger();
    sub_1000075F0(v22, qword_1006A2A10);
    v23 = v3;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v26 = 67109378;
      *(v26 + 4) = v5 & 1;
      *(v26 + 8) = 2080;
      v53 = v25;
      sub_100005298(&v23[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_groupUUID], &v56);
      sub_10003A1C8();
      sub_10000A5D8();
      v28 = sub_100291280(v55, v27, &unk_1006A3DD0, &unk_10057C9D0);
      v30 = v29;
      p_cb = &OBJC_PROTOCOL___OS_dispatch_source.cb;
      sub_100009A04(v55, &unk_1006A3DD0, &unk_10057C9D0);
      v31 = sub_10002741C(v28, v30, &v59);

      *(v26 + 10) = v31;
      _os_log_impl(&_mh_execute_header, v24, v53, "Setting local-spatial-persona-enabled=%{BOOL}d without localParticipantID set groupUUID=%s", v26, 0x12u);
      sub_100009B7C(v54);
      sub_100005F40(v54);
      sub_100005F40(v26);
    }
  }

  v32 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID;
  sub_100016270(&v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID]);
  sub_10002F718(&v3[v32], v10);
  v33 = type metadata accessor for UUID();
  LODWORD(v32) = sub_100015468(v10, 1, v33);
  v34 = sub_100006DB8();
  sub_100009A04(v34, v35, &unk_10057C9D0);
  v20 = &unk_1006BA000;
  if (v32 != 1)
  {
    *&v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter] = sub_1002923C4();
  }

  v36 = 1;
  if ((v5 & 1) == 0)
  {
    v36 = 2;
  }

  *&v3[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState] = v36;
  if (qword_1006A0780 != -1)
  {
    goto LABEL_18;
  }

LABEL_13:
  v37 = type metadata accessor for Logger();
  sub_1000075F0(v37, qword_1006A2A10);
  v38 = v3;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v58 = v42;
    *v41 = 67109890;
    *(v41 + 4) = v5 & 1;
    *(v41 + 8) = 2048;
    *(v41 + 10) = *&v38[v20[33]];

    *(v41 + 18) = 2080;
    v43 = [v38 participantStateStrWithTruncate:1];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_10002741C(v44, v46, &v58);

    *(v41 + 20) = v47;
    *(v41 + 28) = 2080;
    sub_100005298(&v38[*(p_cb + 330)], &v57);
    sub_10003A1C8();
    sub_10000A5D8();
    v49 = sub_100291280(v55, v48, &unk_1006A3DD0, &unk_10057C9D0);
    v51 = v50;
    sub_100009A04(v55, &unk_1006A3DD0, &unk_10057C9D0);
    v52 = sub_10002741C(v49, v51, &v58);

    *(v41 + 30) = v52;
    _os_log_impl(&_mh_execute_header, v39, v40, "Setting local-spatial-persona-enabled=%{BOOL}d, genID=%llu, participant-state=%s for groupUUID=%s", v41, 0x26u);
    swift_arrayDestroy();
    sub_100005F40(v42);
    sub_100006868();
  }

  else
  {
  }

  sub_100005EDC();
}

void sub_100294D80()
{
  sub_100005EF4();
  v4 = v0;
  v6 = v5;
  v7 = type metadata accessor for UUID();
  sub_100007FEC();
  v31 = v8;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  sub_100008070();
  sub_100006688();
  __chkstk_darwin(v14);
  sub_10000D304();
  v15 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v16 = sub_100007BF0(v15);
  __chkstk_darwin(v16);
  sub_10000F4E8();
  v32 = v17;
  sub_100006838();
  __chkstk_darwin(v18);
  sub_100035CAC();
  __chkstk_darwin(v19);
  sub_10000BB28();
  if (v6)
  {
    sub_100294620(v1);
  }

  else
  {
    sub_100007928();
    sub_10000AF74(v20, v21, v22, v7);
  }

  v23 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID;
  sub_100016270(&v4[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID]);
  v24 = *(v13 + 48);
  sub_10003A1C8();
  sub_10003A1C8();
  sub_10000C4F8(v2, 1, v7);
  if (v25)
  {
    sub_10000C4F8(v2 + v24, 1, v7);
    if (v25)
    {
      sub_100009A04(v2, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_15:
      sub_100009A04(v1, &unk_1006A3DD0, &unk_10057C9D0);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  sub_10003A1C8();
  sub_10000C4F8(v2 + v24, 1, v7);
  if (v25)
  {
    (*(v31 + 8))(v3, v7);
LABEL_12:
    sub_100009A04(v2, &unk_1006A2A30, &unk_10057D150);
    goto LABEL_13;
  }

  (*(v31 + 32))(v12, v2 + v24, v7);
  sub_1000180BC();
  sub_10002625C(v27, v28, &protocol conformance descriptor for UUID);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v31 + 8);
  v30(v12, v7);
  v30(v3, v7);
  sub_100009A04(v2, &unk_1006A3DD0, &unk_10057C9D0);
  if (v29)
  {
    goto LABEL_15;
  }

LABEL_13:
  sub_10003A1C8();
  sub_100008D34(&v4[v23], &v33);
  sub_100298328(v32, &v4[v23]);
  swift_endAccess();
  *&v4[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter] = 0;
  v26 = [v4 nearbyClusterState];
  sub_100009A04(v1, &unk_1006A3DD0, &unk_10057C9D0);
  *&v4[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState] = v26;
LABEL_16:
  sub_100005EDC();
}

void sub_1002951A0()
{
  sub_100005EF4();
  v232 = v4;
  v233 = v3;
  v234 = v5;
  v241 = v6;
  type metadata accessor for UUID();
  sub_100007FEC();
  v237 = v8;
  v238 = v7;
  __chkstk_darwin(v7);
  sub_10000F4E8();
  v231 = v9;
  sub_100006838();
  __chkstk_darwin(v10);
  sub_10000C1C4();
  v224 = v11;
  v228 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  sub_100008070();
  __chkstk_darwin(v12);
  sub_10000F4E8();
  sub_10000A5F0();
  __chkstk_darwin(v13);
  sub_10000C1C4();
  v225 = v14;
  v15 = sub_10026D814(&qword_1006A76C0, &unk_100582DC0);
  v16 = sub_100007BF0(v15);
  __chkstk_darwin(v16);
  sub_10000F4E8();
  sub_10000A5F0();
  __chkstk_darwin(v17);
  v19 = v223 - v18;
  v20 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v21 = sub_100007BF0(v20);
  __chkstk_darwin(v21);
  sub_10000F4E8();
  sub_10000A5F0();
  __chkstk_darwin(v22);
  sub_100005F58();
  v236 = v23;
  sub_100006838();
  __chkstk_darwin(v24);
  sub_100005F58();
  v230 = v25;
  sub_100006838();
  __chkstk_darwin(v26);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v27);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v28);
  sub_10000BB28();
  v240 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  sub_100008070();
  __chkstk_darwin(v29);
  sub_100007BAC();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v34);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v35);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v36);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v37);
  sub_100006B48();
  v39 = __chkstk_darwin(v38);
  v41 = v223 - v40;
  __chkstk_darwin(v39);
  sub_100005F58();
  v235 = v42;
  sub_100006838();
  __chkstk_darwin(v43);
  sub_10000C1C4();
  v239 = v44;
  v45 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v47 = v46;
  __chkstk_darwin(v48);
  sub_100007FDC();
  v51 = v50 - v49;
  v52 = *&v0[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_queue];
  *(v50 - v49) = v52;
  (*(v47 + 104))(v50 - v49, enum case for DispatchPredicate.onQueue(_:), v45);
  v53 = v52;
  v54 = _dispatchPreconditionTest(_:)();
  v55 = v47 + 8;
  v56 = sub_100006DB8();
  v57(v56);
  if ((v54 & 1) == 0)
  {
    __break(1u);
    goto LABEL_67;
  }

  v51 = v0;
  v58 = v241;
  if ((v0[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID + 8] & 1) != 0 || *&v0[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID] != v241)
  {
    if (v232)
    {
      sub_100294620(v1);
    }

    else
    {
      sub_100007928();
      sub_10000AF74(v66, v67, v68, v238);
    }

    v55 = v239;
    v69 = v240;
    v70 = v233;
    v71 = v234;
    *v239 = v58;
    *(v55 + 8) = v71;
    *(v55 + 16) = v70;
    v234 = *(v69 + 28);
    sub_1002982D0();
    v1 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState;
    sub_100005298(OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState + v51, &v244);
    sub_1002CB3E0();
    sub_100009F5C(v19);
    v226 = v51;
    if (!v150)
    {
      sub_100010190();
      v97 = v235;
      sub_100047D98();
      if (*(v97 + 8) < v71)
      {
        if (qword_1006A0780 != -1)
        {
          sub_100009F3C(&qword_1006A0780);
        }

        v98 = type metadata accessor for Logger();
        sub_1000075F0(v98, qword_1006A2A10);
        sub_10000F4D0();
        sub_100047E50();
        sub_100047E50();
        v99 = v51;
        v100 = Logger.logObject.getter();
        static os_log_type_t.default.getter();

        if (sub_10003A574())
        {
          swift_slowAlloc();
          v233 = v1;
          v101 = sub_100008D4C();
          v243[0] = v101;
          *v1 = 136315906;
          v102 = CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter();
          v104 = v103;
          sub_1000080E4();
          v105 = v41;
          v107 = v106;
          v232 = v106;
          sub_100049D70(v105, v108);
          v109 = sub_100010054();
          sub_10002741C(v109, v104, v110);
          sub_10000C3CC();
          *(v1 + 4) = v102;
          *(v1 + 6) = 2080;
          CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter();
          v112 = v111;
          sub_100049D70(v2, v107);
          v113 = sub_100010054();
          sub_10002741C(v113, v112, v114);
          sub_10000C3CC();
          sub_10000FBC8();
          v84 = v241;
          *(v1 + 3) = v241;
          *(v1 + 16) = 2080;
          sub_100005298(v99 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_groupUUID, v242);
          v51 = v227;
          sub_10003A1C8();
          sub_10000A5D8();
          v116 = sub_100291280(v51, v115, &unk_1006A3DD0, &unk_10057C9D0);
          v118 = v117;
          sub_100009A04(v51, &unk_1006A3DD0, &unk_10057C9D0);
          sub_10002741C(v116, v118, v243);
          sub_10000C3CC();
          *(v1 + 34) = &unk_1006A3DD0;
          sub_10000C6BC();
          _os_log_impl(v119, v120, v121, v122, v123, 0x2Au);
          swift_arrayDestroy();
          v124 = v101;
          v55 = v239;
          sub_100005F40(v124);
          v125 = v1;
          v1 = v233;
          sub_100005F40(v125);

          v126 = sub_100007660();
          sub_100049D70(v126, v127);
          goto LABEL_22;
        }

        sub_10000F4D0();
        sub_100049D70(v2, v135);
        sub_100049D70(v41, v100);
        v131 = v97;
        v130 = v100;
        goto LABEL_30;
      }

      v233 = v1;
      v132 = *(v240 + 28);
      v133 = *(v228 + 48);
      v134 = v225;
      sub_10002F718(v55 + v234, v225);
      sub_10002F718(v97 + v132, v134 + v133);
      v128 = v238;
      sub_10000C4F8(v134, 1, v238);
      if (v150)
      {
        sub_100015EAC(v134 + v133);
        v129 = v237;
        if (v150)
        {
          sub_100009A04(v134, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_60:
          if (qword_1006A0780 != -1)
          {
            sub_100009F3C(&qword_1006A0780);
          }

          v199 = type metadata accessor for Logger();
          sub_1000075F0(v199, qword_1006A2A10);
          sub_10000F4D0();
          v200 = v223[1];
          sub_100047E50();
          v201 = v235;
          sub_10000B9E4();
          sub_100047E50();
          v202 = v51;
          v203 = v55;
          v204 = v202;
          v205 = Logger.logObject.getter();
          static os_log_type_t.default.getter();

          if (sub_10003A574())
          {
            swift_slowAlloc();
            v206 = sub_100008D4C();
            v242[0] = v206;
            *v133 = 136315906;
            CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter();
            sub_10003DDA8();
            sub_100015CA4();
            sub_100049D70(v207, v208);
            sub_10002741C(v200, v200, v242);
            sub_10003DDA8();

            sub_10003EA5C();
            sub_100022048();
            sub_10002741C(v200, v200, v242);
            sub_10003DDA8();

            sub_10000FBC8();
            *(v133 + 24) = v241;
            *(v133 + 32) = v201;
            sub_100005298(v204 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_groupUUID, v243);
            v209 = v227;
            sub_100021EE4();
            sub_10003A1C8();
            sub_10000A5D8();
            sub_100021EE4();
            v214 = sub_100291280(v210, v211, v212, v213);
            v216 = v215;
            sub_100009A04(v209, &unk_1006A3DD0, &unk_10057C9D0);
            sub_10002741C(v214, v216, v242);
            sub_10000C3CC();
            *(v133 + 34) = &unk_1006A3DD0;
            sub_10000C6BC();
            _os_log_impl(v217, v218, v219, v220, v221, 0x2Au);
            swift_arrayDestroy();
            sub_100005F40(v206);
            sub_100005F40(v133);

            sub_100049D70(v235, v203);
            v149 = v239;
            v148 = v203;
          }

          else
          {

            sub_10000F4D0();
            sub_100049D70(v41, v222);
            sub_100049D70(v200, v205);
            sub_100049D70(v201, v205);
            v149 = sub_100006DB8();
          }

          goto LABEL_45;
        }
      }

      else
      {
        sub_10003A1C8();
        sub_100015EAC(v134 + v133);
        v129 = v237;
        if (!v150)
        {
          v195 = v224;
          (*(v237 + 32))(v224, v134 + v133, v128);
          sub_1000180BC();
          sub_10002625C(v196, v197, &protocol conformance descriptor for UUID);
          v41 = dispatch thunk of static Equatable.== infix(_:_:)();
          v133 = *(v129 + 8);
          (v133)(v195, v128);
          v198 = sub_10000BB38();
          (v133)(v198);
          sub_100009A04(v134, &unk_1006A3DD0, &unk_10057C9D0);
          if (v41)
          {
            goto LABEL_60;
          }

LABEL_51:
          if (qword_1006A0780 != -1)
          {
            sub_100009F3C(&qword_1006A0780);
          }

          v153 = type metadata accessor for Logger();
          sub_1000075F0(v153, qword_1006A2A10);
          sub_10000F4D0();
          v154 = v223[4];
          sub_100047E50();
          v155 = v235;
          sub_10000B9E4();
          sub_100047E50();
          v156 = v51;
          v157 = Logger.logObject.getter();
          static os_log_type_t.default.getter();

          if (sub_10003A574())
          {
            swift_slowAlloc();
            v158 = sub_100008D4C();
            v243[0] = v158;
            *v154 = 136315906;
            CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter();
            sub_100015CA4();
            v232 = v159;
            sub_100049D70(v154, v159);
            v160 = sub_100010054();
            sub_10002741C(v160, v128, v161);
            sub_10003DDA8();

            sub_10003EA5C();
            sub_100022048();
            v162 = sub_100010054();
            sub_10002741C(v162, v128, v163);
            sub_10003DDA8();

            sub_10000FBC8();
            v84 = v241;
            *(v154 + 24) = v241;
            *(v154 + 32) = v154;
            sub_100005298(v156 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_groupUUID, v242);
            v51 = v227;
            sub_100021EE4();
            sub_10003A1C8();
            sub_10000A5D8();
            sub_100021EE4();
            v168 = sub_100291280(v164, v165, v166, v167);
            v170 = v169;
            v128 = v238;
            sub_100009A04(v51, &unk_1006A3DD0, &unk_10057C9D0);
            sub_10002741C(v168, v170, v243);
            sub_10000C3CC();
            *(v154 + 34) = &unk_1006A3DD0;
            sub_10000C6BC();
            _os_log_impl(v171, v172, v173, v174, v175, 0x2Au);
            swift_arrayDestroy();
            sub_100005F40(v158);
            sub_100005F40(v154);

            v176 = sub_100007660();
            v129 = v237;
            sub_100049D70(v176, v177);
            v55 = v239;
          }

          else
          {

            sub_10000F4D0();
            sub_100049D70(v41, v192);
            v193 = sub_100006884();
            sub_100049D70(v193, v194);
            sub_100049D70(v155, v157);
            v55 = v239;
            v84 = v241;
          }

          v136 = v236;
          v1 = v233;
LABEL_32:
          sub_100010190();
          v137 = v229;
          sub_100047E50();
          sub_10000AF74(v137, 0, 1, v240);
          sub_100008D34(&v1[v51], v243);
          sub_100381A3C(v137, v84);
          swift_endAccess();
          sub_100005298(v51 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantNearbyClusterUUID, v243);
          v138 = v230;
          sub_10003A1C8();
          sub_100015EAC(v138);
          if (v150)
          {
            sub_1000080E4();
            sub_100049D70(v55, v139);
            sub_100009A04(v138, &unk_1006A3DD0, &unk_10057C9D0);
            goto LABEL_46;
          }

          v140 = *(v129 + 32);
          v141 = v231;
          v142 = sub_100006B30();
          v140(v142);
          (*(v129 + 16))(v136, v141, v128);
          sub_10000AF74(v136, 0, 1, v128);
          v143 = *(v228 + 48);
          sub_10000B9E4();
          sub_10003A1C8();
          sub_10002F718(v55 + v234, v84 + v143);
          sub_100015EAC(v84);
          if (v144)
          {
            sub_100009A04(v136, &unk_1006A3DD0, &unk_10057C9D0);
            sub_100015EAC(v84 + v143);
            if (v150)
            {
              sub_100009A04(v84, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_56:
              v189 = v226;
              v190 = [v226 nearbyClusterState];
              (*(v129 + 8))(v231, v128);
              sub_1000080E4();
              sub_100049D70(v55, v191);
              *&v189[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState] = v190;
              goto LABEL_46;
            }
          }

          else
          {
            sub_10003A1C8();
            sub_100015EAC(v84 + v143);
            if (!v145)
            {
              v178 = v224;
              (v140)(v224, v84 + v143, v128);
              sub_1000180BC();
              sub_10002625C(v179, v180, &protocol conformance descriptor for UUID);
              LODWORD(v241) = dispatch thunk of static Equatable.== infix(_:_:)();
              v181 = *(v129 + 8);
              v181(v178, v128);
              sub_10000528C();
              sub_100009A04(v182, v183, v184);
              v185 = sub_10000BB38();
              (v181)(v185);
              sub_10000528C();
              sub_100009A04(v186, v187, v188);
              if (v241)
              {
                goto LABEL_56;
              }

              goto LABEL_44;
            }

            sub_100009A04(v136, &unk_1006A3DD0, &unk_10057C9D0);
            v146 = sub_10000BB38();
            v147(v146);
          }

          sub_100009A04(v84, &unk_1006A2A30, &unk_10057D150);
          v181 = *(v129 + 8);
LABEL_44:
          v181(v231, v128);
          sub_1000080E4();
          v149 = v55;
LABEL_45:
          sub_100049D70(v149, v148);
          goto LABEL_46;
        }

        v151 = sub_10000BB38();
        v152(v151);
      }

      sub_100009A04(v134, &unk_1006A2A30, &unk_10057D150);
      goto LABEL_51;
    }

    sub_100009A04(v19, &qword_1006A76C0, &unk_100582DC0);
    if (qword_1006A0780 == -1)
    {
LABEL_15:
      v72 = type metadata accessor for Logger();
      sub_1000075F0(v72, qword_1006A2A10);
      sub_100010190();
      sub_100047E50();
      v73 = v51;
      v74 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (sub_10003A574())
      {
        v75 = swift_slowAlloc();
        v233 = v1;
        v76 = v75;
        v77 = swift_slowAlloc();
        v243[0] = v77;
        *v76 = 136315650;
        CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter();
        v79 = v78;
        sub_1000080E4();
        sub_100049D70(v32, v80);
        v81 = sub_100010054();
        v83 = sub_10002741C(v81, v79, v82);

        *(v76 + 4) = v83;
        *(v76 + 12) = 2048;
        v84 = v241;
        *(v76 + 14) = v241;
        *(v76 + 22) = 2080;
        sub_100005298(v73 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_groupUUID, v242);
        v85 = v227;
        sub_10003A1C8();
        sub_10000A5D8();
        v87 = sub_100291280(v85, v86, &unk_1006A3DD0, &unk_10057C9D0);
        v89 = v88;
        v55 = v239;
        sub_100009A04(v85, &unk_1006A3DD0, &unk_10057C9D0);
        sub_10002741C(v87, v89, v243);
        sub_10003DDA8();

        *(v76 + 24) = &unk_1006A3DD0;
        sub_10000C6BC();
        _os_log_impl(v90, v91, v92, v93, v94, 0x20u);
        swift_arrayDestroy();
        v95 = v77;
        v51 = v226;
        sub_100005F40(v95);
        v96 = v76;
        v1 = v233;
        sub_100005F40(v96);

LABEL_22:
        v129 = v237;
        v128 = v238;
LABEL_31:
        v136 = v236;
        goto LABEL_32;
      }

      sub_1000080E4();
      v131 = v32;
LABEL_30:
      sub_100049D70(v131, v130);
      v129 = v237;
      v128 = v238;
      v84 = v241;
      goto LABEL_31;
    }

LABEL_67:
    sub_100009F3C(&qword_1006A0780);
    goto LABEL_15;
  }

  if (qword_1006A0780 != -1)
  {
    sub_100009F3C(&qword_1006A0780);
  }

  v59 = type metadata accessor for Logger();
  sub_1000075F0(v59, qword_1006A2A10);
  v60 = v0;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v61, v62))
  {
    sub_100005274();
    v63 = sub_100007974();
    sub_100027E4C(v63, 5.7779e-34);
    sub_10000B87C(&_mh_execute_header, v64, v65, "[Upsert] Bad API usage; localParticipantID used, %@");
    sub_100009A04(v63, &unk_1006A2630, &qword_10057CB40);
    sub_100006868();
    sub_100005F40(v54);
  }

LABEL_46:
  sub_100005EDC();
}

void CSDConversationSpatialPersonaResolver.description.getter()
{
  sub_100005EF4();
  v2 = v0;
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v3);
  sub_100006688();
  __chkstk_darwin(v4);
  sub_10000F9B8();
  _StringGuts.grow(_:)(17);

  v5._countAndFlagsBits = sub_100291740([v0 nearbyClusterState]);
  String.append(_:)(v5);

  v35 = [v0 generationCounter];
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  _StringGuts.grow(_:)(47);

  v39 = 0xD00000000000001DLL;
  v40 = 0x8000000100563640;
  if (v0[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID + 8])
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    v35 = *&v0[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantID];
    v8 = String.init<A>(reflecting:)();
    v7 = v9;
  }

  v10 = v7;
  String.append(_:)(*&v8);

  v11._countAndFlagsBits = 0x3D646967202CLL;
  v11._object = 0xE600000000000000;
  String.append(_:)(v11);
  v35 = *&v0[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localGenerationCounter];
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x3D7473202CLL;
  v13._object = 0xE500000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = sub_100291740(*&v0[OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_localParticipantState]);
  String.append(_:)(v14);

  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v17 = v39;
  v16 = v40;
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v35 = 0xD000000000000012;
  v36 = 0x8000000100563660;
  v18 = OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState;
  sub_100016270(OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_participantState + v2);
  if (*(*&v18[v2] + 16))
  {
    v19 = [v2 participantStateStrWithTruncate:0];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v22 = 0xE200000000000000;
    v20 = 23899;
  }

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v25 = v35;
  v24 = v36;
  v37 = 0x49555570756F7267;
  v38 = 0xEA00000000003D44;
  sub_100005298(v2 + OBJC_IVAR____TtC13callservicesd37CSDConversationSpatialPersonaResolver_groupUUID, &v35);
  sub_10003A1C8();
  sub_10000A5D8();
  v27 = sub_100291280(v1, v26, &unk_1006A3DD0, &unk_10057C9D0);
  v29 = v28;
  sub_100009A04(v1, &unk_1006A3DD0, &unk_10057C9D0);
  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v37 = 0x6465766C6F736572;
  v38 = 0xEF3D65746174732DLL;
  sub_100008000();
  v31._countAndFlagsBits = 0x3D44496E6567;
  v31._object = 0xE600000000000000;
  String.append(_:)(v31);

  sub_100008000();
  v32._countAndFlagsBits = v17;
  v32._object = v16;
  String.append(_:)(v32);

  sub_100008000();
  v33._countAndFlagsBits = v25;
  v33._object = v24;
  String.append(_:)(v33);

  sub_100008000();
  v34._countAndFlagsBits = sub_100006884();
  String.append(_:)(v34);

  sub_100005EDC();
}

void sub_100296CE0(uint64_t a1)
{
  sub_100296D6C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100296D6C(uint64_t a1)
{
  if (!qword_1006A20C8)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006A20C8);
    }
  }
}

void sub_100296DCC(uint64_t a1)
{
  sub_100296D6C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_100296EA8()
{
  result = qword_1006A2B40;
  if (!qword_1006A2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2B40);
  }

  return result;
}

uint64_t sub_100296EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

Swift::Int sub_100296F38(uint64_t *a1)
{
  v2 = *(sub_10026D814(&qword_1006A2C18, &unk_10057D990) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003A6038(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_100297050(v7);
  *a1 = v3;
  return result;
}

unint64_t sub_100296FEC()
{
  result = qword_1006A2C20;
  if (!qword_1006A2C20)
  {
    sub_10026DCB4(&unk_1006A3C60, &unk_10057D910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2C20);
  }

  return result;
}

Swift::Int sub_100297050(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10026D814(&qword_1006A2C18, &unk_10057D990);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10026D814(&qword_1006A2C18, &unk_10057D990) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1002973E4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100297198(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100297198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_10026D814(&qword_1006A2C18, &unk_10057D990);
  v8 = __chkstk_darwin(v36);
  v35 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = (&v26 - v11);
  result = __chkstk_darwin(v10);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v33 = -v18;
    v34 = v17;
    v20 = a1 - a3;
    v27 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v21;
      v30 = v20;
      v22 = v20;
      do
      {
        sub_10003A1C8();
        sub_10003A1C8();
        v23 = *v16;
        v24 = *v12;
        sub_100009A04(v12, &qword_1006A2C18, &unk_10057D990);
        result = sub_100009A04(v16, &qword_1006A2C18, &unk_10057D990);
        if (v23 >= v24)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return result;
        }

        sub_1002982D0();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1002982D0();
        v19 += v33;
        v21 += v33;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v32 + 1;
      v19 = v31 + v27;
      v20 = v30 - 1;
      v21 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1002973E4(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v105 = a1;
  v120 = sub_10026D814(&qword_1006A2C18, &unk_10057D990);
  v112 = *(v120 - 8);
  v7 = __chkstk_darwin(v120);
  v109 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v119 = &v104 - v10;
  v11 = __chkstk_darwin(v9);
  v122 = (&v104 - v12);
  __chkstk_darwin(v11);
  v121 = &v104 - v13;
  v14 = a3[1];
  v114 = a3;
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_101:
    v116 = v16;
    v16 = *v105;
    if (!*v105)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v115;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v97 = (v116 + 16);
      for (i = *(v116 + 2); i >= 2; *v97 = i)
      {
        if (!*v114)
        {
          goto LABEL_138;
        }

        v99 = &v116[16 * i];
        v100 = *v99;
        v101 = &v97[2 * i];
        v102 = *(v101 + 1);
        sub_100297D28(*v114 + *(v112 + 72) * *v99, *v114 + *(v112 + 72) * *v101, *v114 + *(v112 + 72) * v102, v16);
        if (v4)
        {
          break;
        }

        if (v102 < v100)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v97)
        {
          goto LABEL_127;
        }

        *v99 = v100;
        *(v99 + 1) = v102;
        v103 = *v97 - i;
        if (*v97 < i)
        {
          goto LABEL_128;
        }

        i = *v97 - 1;
        sub_1003A5954(v101 + 16, v103, v101);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v116 = sub_1003A5940(v116);
    goto LABEL_103;
  }

  v104 = a4;
  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  while (1)
  {
    v17 = v15;
    v18 = v15 + 1;
    v106 = v15;
    if (v15 + 1 < v14)
    {
      v116 = v16;
      v117 = v15 + 1;
      v19 = *v114;
      v20 = *(v112 + 72);
      v16 = (*v114 + v20 * v18);
      v21 = v121;
      sub_10003A1C8();
      v22 = v122;
      sub_10003A1C8();
      v23 = *v21;
      v110 = *v22;
      v111 = v23;
      sub_100009A04(v22, &qword_1006A2C18, &unk_10057D990);
      sub_100009A04(v21, &qword_1006A2C18, &unk_10057D990);
      v24 = v17 + 2;
      v113 = v20;
      v25 = v19 + v20 * (v17 + 2);
      while (1)
      {
        v26 = v24;
        if (++v117 >= v14)
        {
          break;
        }

        LODWORD(v118) = v111 < v110;
        v27 = v121;
        sub_10003A1C8();
        v28 = v14;
        v29 = v122;
        sub_10003A1C8();
        v4 = *v27;
        v30 = *v29;
        v31 = v29;
        v14 = v28;
        sub_100009A04(v31, &qword_1006A2C18, &unk_10057D990);
        sub_100009A04(v27, &qword_1006A2C18, &unk_10057D990);
        v25 += v113;
        v16 += v113;
        v24 = v26 + 1;
        if (((v118 ^ (v4 >= v30)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v117 = v14;
LABEL_9:
      if (v111 >= v110)
      {
        v16 = v116;
        v18 = v117;
        v17 = v106;
      }

      else
      {
        v18 = v117;
        if (v117 < v106)
        {
          goto LABEL_132;
        }

        if (v106 >= v117)
        {
          v16 = v116;
          v17 = v106;
        }

        else
        {
          if (v14 >= v26)
          {
            v32 = v26;
          }

          else
          {
            v32 = v14;
          }

          v33 = v113 * (v32 - 1);
          v34 = v113 * v32;
          v4 = v106 * v113;
          v35 = v106;
          v17 = v106;
          do
          {
            if (v35 != --v18)
            {
              v36 = *v114;
              if (!*v114)
              {
                goto LABEL_139;
              }

              sub_1002982D0();
              v37 = v4 < v33 || v36 + v4 >= v36 + v34;
              if (v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v4 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1002982D0();
              v17 = v106;
            }

            ++v35;
            v33 -= v113;
            v34 -= v113;
            v4 += v113;
          }

          while (v35 < v18);
          v16 = v116;
          v18 = v117;
        }
      }
    }

    v38 = v114[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v17))
      {
        goto LABEL_131;
      }

      if (v18 - v17 < v104)
      {
        break;
      }
    }

LABEL_47:
    if (v18 < v17)
    {
      goto LABEL_130;
    }

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v18;
    if ((v49 & 1) == 0)
    {
      sub_10047002C(0, *(v16 + 2) + 1, 1, v16);
      v16 = v94;
    }

    v51 = *(v16 + 2);
    v50 = *(v16 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      sub_10047002C(v50 > 1, v51 + 1, 1, v16);
      v16 = v95;
    }

    *(v16 + 2) = v52;
    v53 = v16 + 32;
    v54 = &v16[16 * v51 + 32];
    v55 = v117;
    *v54 = v17;
    *(v54 + 1) = v55;
    v118 = *v105;
    if (!v118)
    {
      goto LABEL_140;
    }

    if (v51)
    {
      v116 = v16;
      while (1)
      {
        v56 = v52 - 1;
        v57 = &v53[2 * v52 - 2];
        v58 = &v16[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v59 = *(v16 + 4);
          v60 = *(v16 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_68:
          if (v62)
          {
            goto LABEL_117;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_120;
          }

          v78 = v57[1];
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_125;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v52 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v52 < 2)
        {
          goto LABEL_119;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_83:
        if (v77)
        {
          goto LABEL_122;
        }

        v83 = *v57;
        v82 = v57[1];
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_124;
        }

        if (v84 < v76)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v56 - 1 >= v52)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v114)
        {
          goto LABEL_137;
        }

        v88 = &v53[2 * v56 - 2];
        v89 = *v88;
        v90 = v53;
        v91 = v56;
        v16 = &v53[2 * v56];
        v4 = *(v16 + 1);
        v92 = v115;
        sub_100297D28(*v114 + *(v112 + 72) * *v88, *v114 + *(v112 + 72) * *v16, *v114 + *(v112 + 72) * v4, v118);
        v115 = v92;
        if (v92)
        {
          goto LABEL_99;
        }

        if (v4 < v89)
        {
          goto LABEL_112;
        }

        v93 = *(v116 + 2);
        if (v91 > v93)
        {
          goto LABEL_113;
        }

        *v88 = v89;
        v88[1] = v4;
        if (v91 >= v93)
        {
          goto LABEL_114;
        }

        v52 = v93 - 1;
        sub_1003A5954(v16 + 16, v93 - 1 - v91, v16);
        v16 = v116;
        *(v116 + 2) = v93 - 1;
        v53 = v90;
        if (v93 <= 2)
        {
          goto LABEL_97;
        }
      }

      v63 = &v53[2 * v52];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_115;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_116;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_118;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_121;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = v57[1];
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_129;
        }

        if (v61 < v87)
        {
          v56 = v52 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v14 = v114[1];
    v15 = v117;
    if (v117 >= v14)
    {
      goto LABEL_101;
    }
  }

  v39 = v17 + v104;
  if (__OFADD__(v17, v104))
  {
    goto LABEL_133;
  }

  if (v39 >= v38)
  {
    v39 = v114[1];
  }

  if (v39 < v17)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v18 == v39)
  {
    goto LABEL_47;
  }

  v116 = v16;
  v40 = *(v112 + 72);
  v41 = *v114 + v40 * (v18 - 1);
  v4 = -v40;
  v42 = v17 - v18;
  v118 = *v114;
  v107 = v40;
  v108 = v39;
  v43 = v118 + v18 * v40;
LABEL_40:
  v117 = v18;
  v110 = v43;
  v111 = v42;
  v113 = v41;
  v44 = v41;
  while (1)
  {
    v45 = v121;
    sub_10003A1C8();
    v46 = v122;
    sub_10003A1C8();
    v47 = *v45;
    v48 = *v46;
    sub_100009A04(v46, &qword_1006A2C18, &unk_10057D990);
    sub_100009A04(v45, &qword_1006A2C18, &unk_10057D990);
    if (v47 >= v48)
    {
LABEL_45:
      v18 = v117 + 1;
      v41 = v113 + v107;
      v42 = v111 - 1;
      v43 = &v110[v107];
      if (v117 + 1 == v108)
      {
        v18 = v108;
        v16 = v116;
        v17 = v106;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v118)
    {
      break;
    }

    sub_1002982D0();
    swift_arrayInitWithTakeFrontToBack();
    sub_1002982D0();
    v44 += v4;
    v43 += v4;
    v37 = __CFADD__(v42++, 1);
    if (v37)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_100297D28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = sub_10026D814(&qword_1006A2C18, &unk_10057D990);
  v8 = __chkstk_darwin(v54);
  v55 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v8);
  v56 = (&v47 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v60 = a1;
  v59 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_100395D44(a2, v16 / v13, a4);
    v32 = a4 + v19 * v13;
    v33 = -v13;
    v34 = v32;
    v50 = -v13;
    v51 = a4;
    v57 = a1;
LABEL_36:
    v48 = v34;
    v52 = a2 + v33;
    while (1)
    {
      if (v32 <= a4)
      {
        v60 = a2;
        v58 = v34;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v49 = v34;
      v35 = a2;
      v36 = a3 + v33;
      v37 = v32 + v33;
      v38 = v56;
      v39 = v32;
      sub_10003A1C8();
      v40 = v55;
      sub_10003A1C8();
      v53 = *v38;
      v41 = v40;
      v42 = *v40;
      sub_100009A04(v41, &qword_1006A2C18, &unk_10057D990);
      sub_100009A04(v38, &qword_1006A2C18, &unk_10057D990);
      if (v53 < v42)
      {
        if (a3 < v35 || v36 >= v35)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v49;
          v33 = v50;
          a4 = v51;
          a3 = v36;
          a1 = v57;
          v32 = v39;
        }

        else
        {
          v33 = v50;
          v34 = v49;
          v15 = a3 == v35;
          a4 = v51;
          v45 = v52;
          a2 = v52;
          a3 = v36;
          a1 = v57;
          v32 = v39;
          if (!v15)
          {
            v46 = v49;
            swift_arrayInitWithTakeBackToFront();
            v32 = v39;
            a2 = v45;
            v34 = v46;
          }
        }

        goto LABEL_36;
      }

      v43 = a3 < v39 || v36 >= v39;
      a2 = v35;
      if (v43)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v33;
        v32 = v37;
        v34 = v37;
        v33 = v50;
        a4 = v51;
        a1 = v57;
      }

      else
      {
        v34 = v37;
        v15 = v39 == a3;
        a3 += v33;
        v32 = v37;
        v33 = v50;
        a4 = v51;
        a1 = v57;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v36;
          v32 = v37;
          v34 = v37;
        }
      }
    }

    v60 = a2;
    v58 = v48;
  }

  else
  {
    sub_100395D44(a1, v14 / v13, a4);
    v52 = a3;
    v53 = a4 + v18 * v13;
    v58 = v53;
    v20 = a1;
    while (a4 < v53 && a2 < a3)
    {
      v57 = v20;
      v22 = v13;
      v23 = a2;
      v24 = v56;
      sub_10003A1C8();
      v25 = a4;
      v26 = v55;
      sub_10003A1C8();
      v27 = *v24;
      v28 = *v26;
      sub_100009A04(v26, &qword_1006A2C18, &unk_10057D990);
      sub_100009A04(v24, &qword_1006A2C18, &unk_10057D990);
      if (v27 >= v28)
      {
        v13 = v22;
        a4 = v25 + v22;
        v29 = v57;
        if (v57 < v25 || v57 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
        }

        else
        {
          a2 = v23;
          if (v57 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v59 = v25 + v22;
      }

      else
      {
        v13 = v22;
        a2 = v23 + v22;
        v29 = v57;
        v30 = v57 < v23 || v57 >= a2;
        a4 = v25;
        if (v30)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v57 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v20 = v29 + v13;
      v60 = v20;
      a3 = v52;
    }
  }

LABEL_58:
  sub_1002981E4(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_1002981E4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10026D814(&qword_1006A2C18, &unk_10057D990);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1002982D0()
{
  sub_100007710();
  sub_10026D814(v1, v2);
  sub_100008070();
  v3 = sub_100006B30();
  v4(v3);
  return v0;
}

uint64_t sub_100298328(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100298398(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_100007BF0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_10029362C(a1, v5);
}

void sub_100298430(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 32));
}

BOOL sub_100298470(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[4];
  Hasher.init(_seed:)();
  v4 = String.hash(into:)();
  sub_100017088(v4);
  Hasher._combine(_:)(v3);
  v5 = Hasher._finalize()();
  v6 = a2[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v6);
  return v5 == Hasher._finalize()();
}

Swift::Int sub_100298540()
{
  sub_100015ECC();
  Hasher.init(_seed:)();
  v1 = String.hash(into:)();
  sub_100017088(v1);
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

Swift::Int sub_1002985B0()
{
  sub_100015ECC();
  Hasher.init(_seed:)();
  v1 = String.hash(into:)();
  sub_100017088(v1);
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

char *sub_100298618(void *a1)
{
  v2 = type metadata accessor for LanguageManager();
  __chkstk_darwin(v2 - 8);
  sub_100007FDC();
  v5 = v4 - v3;
  swift_getObjectType();
  v6 = [objc_allocWithZone(TUFeatureFlags) init];
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  v7 = [objc_opt_self() sharedManager];
  v8 = objc_allocWithZone(type metadata accessor for SpeechAssetManager(0));
  v9 = sub_10029C838(a1, v5, v7, v6, v8);
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t sub_100298790()
{
  if (qword_1006A0B28 == -1)
  {
    goto LABEL_2;
  }

LABEL_29:
  swift_once();
LABEL_2:
  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "assets updated", v3, 2u);
  }

  sub_10029A3DC();
  v5 = v4;
  v6 = 0;
  v7 = v4 + 56;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_11:
    v13 = *(v5 + 48) + 40 * (__clz(__rbit64(v10)) | (v6 << 6));
    v28 = *(v13 + 32);
    v14 = *(v13 + 16);
    v27[0] = *v13;
    v27[1] = v14;
    v34 = v27[0];
    v35 = v14;
    sub_100052980(&v34, &v29);
    sub_100052980(&v35, &v29);
    if (sub_1000524B0(v27))
    {
      sub_100298A84();
    }

    v10 &= v10 - 1;
    sub_1000529DC(&v34);
    sub_1000529DC(&v35);
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_11;
    }
  }

  v15 = sub_10029A740();
  v16 = v15;
  v17 = 0;
  v18 = v15 + 56;
  v19 = 1 << v15[32];
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v15 + 7);
  v22 = (v19 + 63) >> 6;
  if (v21)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_28;
    }

    if (v23 >= v22)
    {
    }

    v21 = *&v18[8 * v23];
    ++v17;
    if (v21)
    {
      v17 = v23;
      do
      {
LABEL_22:
        v24 = *(v16 + 6) + 40 * (__clz(__rbit64(v21)) | (v17 << 6));
        v30 = *(v24 + 16);
        v31 = *(v24 + 32);
        v29 = *v24;
        v32 = v29;
        v33 = v30;
        sub_100052980(&v32, v26);
        sub_100052980(&v33, v26);
        if (sub_1000524B0(&v29))
        {
          sub_100298A84();
        }

        v21 &= v21 - 1;
        sub_1000529DC(&v32);
        sub_1000529DC(&v33);
      }

      while (v21);
    }
  }
}

uint64_t sub_100298A84()
{
  sub_100005EF4();
  v2 = v1;
  v3 = [*(v0 + OBJC_IVAR___CSDSpeechAssetManager_delegates) allObjects];
  sub_10026D814(&unk_1006A2CF0, &qword_10057DAD8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000B6F4(v4);
  if (result)
  {
    v6 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    v8 = *(v2 + 32);
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      ++v7;
      v10 = String._bridgeToObjectiveC()();
      [v9 assetsUpdated:v10 availability:v8];
      swift_unknownObjectRelease();
    }

    while (v6 != v7);
  }

  sub_100005EDC();
}

uint64_t sub_100298BA8()
{
  v1 = [*(v0 + OBJC_IVAR___CSDSpeechAssetManager_delegates) allObjects];
  sub_10026D814(&unk_1006A2CF0, &qword_10057DAD8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000B6F4(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      ++v5;
      isa = Locale._bridgeToObjectiveC()().super.isa;
      [v6 localeUpdated:isa];
      swift_unknownObjectRelease();
    }

    while (v4 != v5);
  }
}

void (*sub_100298CC4())(uint64_t a1)
{
  v1 = (v0 + OBJC_IVAR___CSDSpeechAssetManager____lazy_storage___downloadSpeechAssetPath);
  v2 = *(v0 + OBJC_IVAR___CSDSpeechAssetManager____lazy_storage___downloadSpeechAssetPath);
  v3 = *(v0 + OBJC_IVAR___CSDSpeechAssetManager____lazy_storage___downloadSpeechAssetPath + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR___CSDSpeechAssetManager____lazy_storage___downloadSpeechAssetPath);
  }

  else
  {
    sub_100006890();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *v1;
    v7 = v1[1];
    v4 = sub_10029C830;
    *v1 = sub_10029C830;
    v1[1] = v5;

    sub_1000051F8(v6, v7);
  }

  sub_1000115CC(v2, v3);
  return v4;
}

void sub_100298D7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100051D0C();
  }
}

uint64_t sub_100298DDC(__int128 *a1)
{
  if (*(a1 + 4) == 2)
  {
    v2 = 1009;
  }

  else
  {
    v2 = 1011;
  }

  sub_100006AF0(0, &qword_1006A2CD8, SFEntitledAssetConfig_ptr);
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);

  v5 = sub_1002991B8(v4, v3, v2);
  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 pathToAssetWithConfig:v5 clientIdentifier:v7];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA5F8);
    v34 = *a1;

    sub_100052980(&v34, &v30);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    sub_1000529DC(&v34);

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136315138;
      v15 = a1[1];
      v30 = *a1;
      v31 = v15;
      v32 = *(a1 + 4);
      v33 = v14;

      sub_100052980(&v34, v29);
      v16 = String.init<A>(reflecting:)();
      v18 = sub_10002741C(v16, v17, &v33);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s language available", v13, 0xCu);
      sub_100009B7C(v14);
    }
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000AF9C(v19, qword_1006BA5F8);
    v34 = *a1;

    sub_100052980(&v34, &v30);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    sub_1000529DC(&v34);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315138;
      v24 = a1[1];
      v30 = *a1;
      v31 = v24;
      v32 = *(a1 + 4);
      v33 = v23;

      sub_100052980(&v34, v29);
      v25 = String.init<A>(reflecting:)();
      v27 = sub_10002741C(v25, v26, &v33);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s language not available, will have to download", v22, 0xCu);
      sub_100009B7C(v23);
    }

    return 0;
  }

  return v9;
}

id sub_1002991B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithLanguage:v5 taskHint:a3];

  return v6;
}

void sub_100299234()
{
  sub_100005EF4();
  v2 = v1;
  ObjectType = swift_getObjectType();
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
  v18 = *&v0[OBJC_IVAR___CSDSpeechAssetManager_queue];
  v19 = *v2;
  v30 = v2[1];
  v31 = v19;
  v20 = swift_allocObject();
  v21 = v2[1];
  *(v20 + 16) = *v2;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v2 + 4);
  *(v20 + 56) = v0;
  *(v20 + 64) = ObjectType;
  v29[4] = sub_10029C804;
  v29[5] = v20;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 1107296256;
  sub_10000A600();
  v29[2] = v22;
  v29[3] = &unk_100622BA8;
  v23 = _Block_copy(v29);
  v24 = v18;
  sub_100052980(&v31, v28);
  sub_100052980(&v30, v28);
  v25 = v0;
  static DispatchQoS.unspecified.getter();
  v28[0] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  v26 = sub_1000057D0();
  sub_10000E8F8(v28, v27, v26);
  sub_100007C38();
  _Block_release(v23);

  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v17, v11);

  sub_100005EDC();
}

void sub_100299484(__int128 *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = __chkstk_darwin(v13);
  if (*(a1 + 4))
  {
    v63 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = v16;
    v65 = v14;
    v66 = a3;
    v69 = v8;
    v17 = *a1;
    v78 = a1[1];
    v79[0] = v17;
    sub_100052980(v79, &aBlock);
    sub_100052980(&v78, &aBlock);
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000AF9C(v18, qword_1006BA5F8);
    sub_100052980(v79, &aBlock);
    sub_100052980(&v78, &aBlock);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    sub_1000529DC(v79);
    sub_1000529DC(&v78);
    v21 = os_log_type_enabled(v19, v20);
    v70 = a1;
    v67 = v12;
    v68 = v10;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v73 = v62;
      *v22 = 136315138;
      v23 = a1[1];
      aBlock = *a1;
      v75 = v23;
      v76 = *(a1 + 4);
      sub_100052980(v79, v72);
      sub_100052980(&v78, v72);
      v24 = String.init<A>(reflecting:)();
      v26 = v9;
      v27 = v6;
      v28 = sub_10002741C(v24, v25, &v73);

      *(v22 + 4) = v28;
      v6 = v27;
      v9 = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "checkSpeechAssets for %s", v22, 0xCu);
      sub_100009B7C(v62);
    }

    v29 = [objc_opt_self() mainBundle];
    v30 = sub_100021AEC(v29);
    if (v31)
    {
      v32 = v30;
      v33 = v31;
      sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
      v34 = v64;
      v35 = v63;
      v36 = v65;
      (*(v64 + 104))(v63, enum case for DispatchQoS.QoSClass.default(_:), v65);
      v37 = static OS_dispatch_queue.global(qos:)();
      (*(v34 + 8))(v35, v36);
      v38 = swift_allocObject();
      v39 = v70;
      v40 = v70[1];
      *(v38 + 16) = *v70;
      *(v38 + 32) = v40;
      *(v38 + 48) = *(v39 + 4);
      *(v38 + 56) = v32;
      *(v38 + 64) = v33;
      *(v38 + 72) = a2;
      *(v38 + 80) = v66;
      v76 = sub_10029C810;
      v77 = v38;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v75 = sub_100004CEC;
      *(&v75 + 1) = &unk_100622BF8;
      v41 = _Block_copy(&aBlock);
      v42 = a2;
      v43 = v67;
      static DispatchQoS.unspecified.getter();
      v72[0] = _swiftEmptyArrayStorage;
      sub_10000AC00();
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      v44 = v69;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v41);

      (*(v71 + 8))(v44, v6);
      (*(v68 + 8))(v43, v9);
    }

    else
    {
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      v57 = os_log_type_enabled(v55, v56);
      v58 = v70;
      if (v57)
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Missing bundle identifier", v59, 2u);
      }

      v60 = OBJC_IVAR___CSDSpeechAssetManager_hasSpeechAssets;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v72[0] = *&a2[v60];
      sub_10037831C(0, v58);
      *&a2[v60] = v72[0];
      sub_1000529DC(v79);
      sub_1000529DC(&v78);
      swift_endAccess();
    }
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000AF9C(v45, qword_1006BA5F8);
    v46 = *a1;
    v78 = a1[1];
    v79[0] = v46;
    sub_100052980(v79, &aBlock);
    sub_100052980(&v78, &aBlock);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    sub_1000529DC(v79);
    sub_1000529DC(&v78);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v73 = v50;
      *v49 = 136315138;
      v51 = a1[1];
      aBlock = *a1;
      v75 = v51;
      v76 = *(a1 + 4);
      sub_100052980(v79, v72);
      sub_100052980(&v78, v72);
      v52 = String.init<A>(reflecting:)();
      v54 = sub_10002741C(v52, v53, &v73);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "Invalid asset passed in %s", v49, 0xCu);
      sub_100009B7C(v50);
    }
  }
}

uint64_t sub_100299C58(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100298DDC(a1);
  v15 = v14;
  v16 = *&a4[OBJC_IVAR___CSDSpeechAssetManager_queue];
  v17 = *a1;
  v28 = *(a1 + 16);
  v29 = v17;
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 24) = *a1;
  *(v18 + 16) = a4;
  *(v18 + 40) = v19;
  *(v18 + 56) = *(a1 + 32);
  *(v18 + 64) = v13;
  *(v18 + 72) = v15;
  aBlock[4] = sub_10029C820;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100622C48;
  v20 = _Block_copy(aBlock);
  v21 = v16;
  v22 = a4;
  sub_100052980(&v29, v26);
  sub_100052980(&v28, v26);
  static DispatchQoS.unspecified.getter();
  v26[0] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v25);
}

uint64_t sub_100299F34(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 != 0;
  v7 = OBJC_IVAR___CSDSpeechAssetManager_hasSpeechAssets;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + v7);
  sub_10037831C(v6, a2);
  *(a1 + v7) = v10;
  swift_endAccess();
  v8 = sub_100298CC4();
  v8(a2);
}

void sub_100299FEC()
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
  v15 = *&v0[OBJC_IVAR___CSDSpeechAssetManager_queue];
  sub_100006890();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  v24[4] = sub_10029C7FC;
  v24[5] = v16;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  sub_10000A600();
  v24[2] = v17;
  v24[3] = &unk_100622B58;
  v18 = _Block_copy(v24);
  v19 = v15;
  v20 = v0;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  v21 = sub_1000057D0();
  sub_10000E8F8(&v23, v22, v21);
  sub_100007C38();
  _Block_release(v18);

  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);

  sub_100005EDC();
}

uint64_t sub_10029A1F8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA5F8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "handleCurrentLocaleDidChange", v7, 2u);
  }

  static Locale.current.getter();
  sub_100298BA8();
  (*(v1 + 8))(v3, v0);
  sub_10029A3DC();
}

void sub_10029A3DC()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for Locale();
  sub_100007FEC();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  type metadata accessor for LanguageManager();
  sub_100007FEC();
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = 0;
  v51[5] = &_swiftEmptySetSingleton;
  v16 = OBJC_IVAR___CSDSpeechAssetManager_languageManager;
  v19 = *(v17 + 16);
  v17 += 16;
  v18 = v19;
  v40 = (v4 + 8);
  v21 = v20;
  v22 = (v17 - 8);
  v41 = v19;
  v42 = v10;
  v46 = OBJC_IVAR___CSDSpeechAssetManager_languageManager;
  v47 = v17;
  v48 = v20;
  v38 = v8;
  v39 = v2;
  do
  {
    v23 = *(&off_100620078 + v15 + 32);
    v24 = v1;
    v25 = v18;
    v18(v14, v1 + v16, v21);
    static Locale.current.getter();
    v43 = v23;
    v26 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
    v21 = v48;
    v45 = v26;
    v50 = v27;
    v29 = v28;
    v49 = *v40;
    v49(v10, v2);
    v30 = v24;
    v31 = *v22;
    (*v22)(v14, v21);
    v44 = v29;
    if (v29)
    {
      v25(v14, v30 + v46, v21);
      static Locale.current.getter();
      v32 = v38;
      v1 = v30;
      LanguageManager.mappedASRLocale(for:useCase:)();
      v33 = v10;
      v34 = v39;
      v49(v33, v39);
      v31(v14, v21);
      v52[0] = Locale.identifier.getter();
      v52[1] = v35;
      v52[2] = v45;
      v52[3] = v50;
      v52[4] = v44;
      sub_100051D0C();
      if (v36)
      {
        sub_1003960CC(v51, v52);

        v49(v32, v34);
      }

      else
      {
        v49(v32, v34);
      }

      v2 = v34;
      v21 = v48;
    }

    else
    {

      v1 = v30;
      v2 = v39;
    }

    v15 += 8;
    v18 = v41;
    v10 = v42;
    v16 = v46;
  }

  while (v15 != 24);
  sub_100005EDC();
}

void *sub_10029A740()
{
  v1 = v0;
  v16 = &_swiftEmptySetSingleton;
  v2 = OBJC_IVAR___CSDSpeechAssetManager_remoteAssets;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(v3 + 48) + 40 * (v11 | (v10 << 6));
    v18 = *(v12 + 32);
    v13 = *(v12 + 16);
    v17[0] = *v12;
    v17[1] = v13;
    v19 = v17[0];
    v20 = v13;
    sub_100052980(&v19, v15);
    sub_100052980(&v20, v15);
    sub_100051D0C();
    if (v14)
    {
      sub_1003960CC(v15, v17);
    }

    else
    {
      sub_1000529DC(&v19);
      result = sub_1000529DC(&v20);
    }

    v9 = v10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v16;
    }

    v6 = *(v3 + 56 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10029A8D0(__n128 *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CSDSpeechAssetManager_fetchingSpeechAssets;
  swift_beginAccess();
  v5 = *&v1[v4];

  v6 = sub_1000527B0(a1, v5);

  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000AF9C(v7, qword_1006BA5F8);
  sub_1000359F0(*a1, a1[1], v8, v9, v10, v11, v12, v13, v14, v15, v16, v38[0], v38[1], v39.n128_i64[0], v39.n128_i64[1], v40.n128_i64[0], v40.n128_i64[1], v41, v42, v43[0], v43[1], v43[2], v43[3], v17);
  sub_100052980(v44, &v39);
  v18 = v2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  sub_1000529DC(v45);
  sub_1000529DC(v44);

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43[0] = v22;
    *v21 = 136315906;
    v23 = a1[1];
    v39 = *a1;
    v40 = v23;
    v41 = a1[2].n128_i64[0];
    sub_100052980(v45, v38);
    sub_100052980(v44, v38);
    v24 = String.init<A>(reflecting:)();
    v26 = sub_10002741C(v24, v25, v43);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = swift_allocObject();
    v28 = a1[1];
    *(v27 + 16) = *a1;
    *(v27 + 32) = v28;
    *(v27 + 48) = a1[2].n128_u64[0];
    v29 = swift_allocObject();
    *(v29 + 16) = sub_10029C7CC;
    *(v29 + 24) = v27;
    v39.n128_u64[0] = sub_10029C7D4;
    v39.n128_u64[1] = v29;
    sub_100052980(v45, v38);
    sub_100052980(v44, v38);
    sub_10026D814(&qword_1006A2CE0, &qword_10057DAD0);
    v30 = String.init<A>(reflecting:)();
    v32 = sub_10002741C(v30, v31, v43);

    *(v21 + 14) = v32;
    *(v21 + 22) = 1024;
    *(v21 + 24) = v6 & 1;
    *(v21 + 28) = 2080;
    sub_100052B8C();

    v33 = Dictionary.description.getter();
    v35 = v34;

    v36 = sub_10002741C(v33, v35, v43);

    *(v21 + 30) = v36;
    _os_log_impl(&_mh_execute_header, v19, v20, "asset: %s %s, fetchingSpeechAssets: %{BOOL}d %s", v21, 0x26u);
    swift_arrayDestroy();
    sub_100005F40(v22);
    sub_100005F40(v21);
  }

  return v6 & 1;
}

void sub_10029ABEC(uint64_t a1, void *a2)
{
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(a2[4]);
}

void sub_10029AC30(char *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v78 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v73[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = type metadata accessor for DispatchQoS();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v15 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = [objc_opt_self() mainBundle];
  sub_100021AEC(v16);
  if (v17)
  {
    v74 = a6;
    if (a3 == 2)
    {
      v18 = 1009;
    }

    else
    {
      v18 = 1011;
    }

    sub_100006AF0(0, &qword_1006A2CD8, SFEntitledAssetConfig_ptr);

    v19 = sub_1002991B8(a4, a5, v18);
    v20 = objc_opt_self();
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 pathToAssetWithConfig:v19 clientIdentifier:v21];

    if (v22)
    {

      v23 = v78;
      v24 = *&v78[OBJC_IVAR___CSDSpeechAssetManager_queue];
      v25 = a2[1];
      v88[0] = *a2;
      v87 = v25;
      v26 = swift_allocObject();
      v27 = a2[1];
      *(v26 + 24) = *a2;
      *(v26 + 16) = v23;
      *(v26 + 40) = v27;
      *(v26 + 56) = *(a2 + 4);
      v83 = sub_10029C770;
      v84 = v26;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v82 = sub_100004CEC;
      *(&v82 + 1) = &unk_100622A68;
      v28 = _Block_copy(&aBlock);
      v29 = v23;
      v30 = v24;
      sub_100052980(v88, v80);
      sub_100052980(&v87, v80);
      static DispatchQoS.unspecified.getter();
      *&v80[0] = _swiftEmptyArrayStorage;
      sub_10000AC00();
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v28);

      v77[1](v13, v11);
      (*(v75 + 8))(v15, v76);
    }

    else
    {
      if (qword_1006A0B28 != -1)
      {
        swift_once();
      }

      v77 = v19;
      v43 = type metadata accessor for Logger();
      sub_10000AF9C(v43, qword_1006BA5F8);
      v44 = a2[1];
      v88[0] = *a2;
      v87 = v44;
      sub_100052980(v88, &aBlock);
      sub_100052980(&v87, &aBlock);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      sub_1000529DC(v88);
      sub_1000529DC(&v87);
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v86 = v48;
        *v47 = 136315138;
        v49 = a2[1];
        aBlock = *a2;
        v82 = v49;
        v83 = *(a2 + 4);
        sub_100052980(v88, v80);
        sub_100052980(&v87, v80);
        v50 = String.init<A>(reflecting:)();
        v52 = sub_10002741C(v50, v51, &v86);

        *(v47 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v45, v46, "Starting asset download for %s.", v47, 0xCu);
        sub_100009B7C(v48);
      }

      v53 = String._bridgeToObjectiveC()();

      v54 = swift_allocObject();
      v55 = a2[1];
      *(v54 + 16) = *a2;
      *(v54 + 32) = v55;
      *(v54 + 48) = *(a2 + 4);
      v83 = sub_10029C714;
      v84 = v54;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v82 = sub_10029B9E0;
      *(&v82 + 1) = &unk_1006229C8;
      v56 = _Block_copy(&aBlock);
      sub_100052980(v88, v80);
      sub_100052980(&v87, v80);

      v57 = swift_allocObject();
      v58 = a2[1];
      *(v57 + 24) = *a2;
      v59 = v78;
      *(v57 + 16) = v78;
      *(v57 + 40) = v58;
      *(v57 + 56) = *(a2 + 4);
      v83 = sub_10029C71C;
      v84 = v57;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v82 = sub_10029C128;
      *(&v82 + 1) = &unk_100622A18;
      v60 = _Block_copy(&aBlock);
      sub_100052980(v88, v80);
      sub_100052980(&v87, v80);
      v61 = v59;

      v19 = v77;
      [v20 fetchAssetWithConfig:v77 clientIdentifier:v53 detailedProgress:v56 completion:v60];
      _Block_release(v60);
      _Block_release(v56);
    }

    if (v74)
    {
      if (qword_1006A0B28 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_10000AF9C(v62, qword_1006BA5F8);
      v63 = *a2;
      v85 = a2[1];
      v86 = v63;
      sub_100052980(&v86, &aBlock);
      sub_100052980(&v85, &aBlock);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      sub_1000529DC(&v86);
      sub_1000529DC(&v85);
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v79 = v67;
        *v66 = 136315138;
        v68 = a2[1];
        aBlock = *a2;
        v82 = v68;
        v83 = *(a2 + 4);
        sub_100052980(&v86, v80);
        sub_100052980(&v85, v80);
        v69 = String.init<A>(reflecting:)();
        v71 = v19;
        v72 = sub_10002741C(v69, v70, &v79);

        *(v66 + 4) = v72;
        v19 = v71;
        _os_log_impl(&_mh_execute_header, v64, v65, "Add remote asset: %s", v66, 0xCu);
        sub_100009B7C(v67);
      }

      swift_beginAccess();
      sub_100052980(&v86, &aBlock);
      sub_100052980(&v85, &aBlock);
      sub_1003960CC(&aBlock, a2);
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000AF9C(v31, qword_1006BA5F8);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Missing bundle identifier", v34, 2u);
    }

    v35 = v78;
    v36 = *&v78[OBJC_IVAR___CSDSpeechAssetManager_queue];
    v37 = a2[1];
    v80[0] = *a2;
    v88[0] = v37;
    v38 = swift_allocObject();
    v39 = a2[1];
    *(v38 + 24) = *a2;
    *(v38 + 16) = v35;
    *(v38 + 40) = v39;
    *(v38 + 56) = *(a2 + 4);
    v83 = sub_10029C708;
    v84 = v38;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v82 = sub_100004CEC;
    *(&v82 + 1) = &unk_100622978;
    v40 = _Block_copy(&aBlock);
    v41 = v35;
    v42 = v36;
    sub_100052980(v80, &v87);
    sub_100052980(v88, &v87);
    static DispatchQoS.unspecified.getter();
    *&v87 = _swiftEmptyArrayStorage;
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    v77[1](v13, v11);
    (*(v75 + 8))(v15, v76);
  }
}

uint64_t sub_10029B790(uint64_t a1, __int128 *a2)
{
  v4 = OBJC_IVAR___CSDSpeechAssetManager_fetchingSpeechAssets;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + v4);
  sub_10037831C(0, a2);
  *(a1 + v4) = v6;
  return swift_endAccess();
}

void sub_10029B814(uint64_t a1, char a2, __int128 *a3)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA5F8);
  v7 = *a3;
  v20 = a3[1];
  v21 = v7;
  sub_100052980(&v21, v17);
  sub_100052980(&v20, v17);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_1000529DC(&v21);
  sub_1000529DC(&v20);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315650;
    v12 = a3[1];
    v17[0] = *a3;
    v17[1] = v12;
    v18 = *(a3 + 4);
    v19 = v11;
    sub_100052980(&v21, v16);
    sub_100052980(&v20, v16);
    v13 = String.init<A>(reflecting:)();
    v15 = sub_10002741C(v13, v14, &v19);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a1;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Speech model %s download progress: %ld. Is stalled: %{BOOL}d", v10, 0x1Cu);
    sub_100009B7C(v11);
  }
}

uint64_t sub_10029B9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_10029BA40(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, __int128 *a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v12 = *(v24 - 8);
  __chkstk_darwin(v24);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&a4[OBJC_IVAR___CSDSpeechAssetManager_queue];
  v16 = *a5;
  v27 = a5[1];
  v28 = v16;
  v17 = swift_allocObject();
  v18 = a5[1];
  *(v17 + 24) = *a5;
  *(v17 + 16) = a4;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(a5 + 4);
  *(v17 + 64) = a3;
  aBlock[4] = sub_10029C77C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100622AB8;
  v19 = _Block_copy(aBlock);
  v20 = v15;
  v21 = a4;
  sub_100052980(&v28, v25);
  sub_100052980(&v27, v25);
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v25[0] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v24);
}

uint64_t sub_10029BD04(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = OBJC_IVAR___CSDSpeechAssetManager_fetchingSpeechAssets;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v39 = *(a1 + v6);
  sub_10037831C(0, a2);
  *(a1 + v6) = v39;
  swift_endAccess();
  v7 = OBJC_IVAR___CSDSpeechAssetManager_hasSpeechAssets;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v39 = *(a1 + v7);
  sub_10037831C(a3 == 0, a2);
  *(a1 + v7) = v39;
  swift_endAccess();
  if (a3)
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA5F8);
    v9 = a2[1];
    v39 = *a2;
    v38 = v9;
    sub_100052980(&v39, &v32);
    sub_100052980(&v38, &v32);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    sub_1000529DC(&v39);
    sub_1000529DC(&v38);

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *&v36 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = a2[1];
      v32 = *a2;
      v33 = v13;
      v34 = *(a2 + 4);
      sub_100052980(&v39, &v37);
      sub_100052980(&v38, &v37);
      v14 = String.init<A>(reflecting:)();
      v16 = sub_10002741C(v14, v15, &v36);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = sub_1002910C8(a3);
      v19 = sub_10002741C(v17, v18, &v36);

      *(v12 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Speech model %s fetch failed with error: %s", v12, 0x16u);
      swift_arrayDestroy();
    }
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000AF9C(v20, qword_1006BA5F8);
  v21 = *a2;
  v36 = a2[1];
  v37 = v21;
  sub_100052980(&v37, &v32);
  sub_100052980(&v36, &v32);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  sub_1000529DC(&v37);
  sub_1000529DC(&v36);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 136315138;
    v26 = a2[1];
    v32 = *a2;
    v33 = v26;
    v34 = *(a2 + 4);
    v35 = v25;
    sub_100052980(&v37, v31);
    sub_100052980(&v36, v31);
    v27 = String.init<A>(reflecting:)();
    v29 = sub_10002741C(v27, v28, &v35);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Speech model %s fetch complete", v24, 0xCu);
    sub_100009B7C(v25);
  }

  return sub_100298A84();
}

uint64_t sub_10029C128(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

void sub_10029C1C0(uint64_t a1, __int128 *a2)
{
  v4 = OBJC_IVAR___CSDSpeechAssetManager_hasSpeechAssets;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v21 = *(a1 + v4);
  sub_10037831C(1, a2);
  *(a1 + v4) = v21;
  swift_endAccess();
  v5 = OBJC_IVAR___CSDSpeechAssetManager_fetchingSpeechAssets;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v21 = *(a1 + v5);
  sub_10037831C(0, a2);
  *(a1 + v5) = v21;
  swift_endAccess();
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA5F8);
  v7 = a2[1];
  v21 = *a2;
  v20 = v7;
  sub_100052980(&v21, v17);
  sub_100052980(&v20, v17);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_1000529DC(&v21);
  sub_1000529DC(&v20);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315138;
    v12 = a2[1];
    v17[0] = *a2;
    v17[1] = v12;
    v18 = *(a2 + 4);
    v19 = v11;
    sub_100052980(&v21, v16);
    sub_100052980(&v20, v16);
    v13 = String.init<A>(reflecting:)();
    v15 = sub_10002741C(v13, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Speech model %s ready", v10, 0xCu);
    sub_100009B7C(v11);
  }
}

id sub_10029C444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechAssetManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SpeechAssetManager(uint64_t a1)
{
  result = qword_1006A2CA0;
  if (!qword_1006A2CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10029C5C0(uint64_t a1)
{
  result = type metadata accessor for LanguageManager();
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

unint64_t sub_10029C69C()
{
  result = qword_1006A2CB0;
  if (!qword_1006A2CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2CB0);
  }

  return result;
}

uint64_t sub_10029C728()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10029C78C()
{

  return _swift_deallocObject(v0);
}

char *sub_10029C838(void *a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  v9 = OBJC_IVAR___CSDSpeechAssetManager_featureFlags;
  *&a5[v9] = [objc_allocWithZone(TUFeatureFlags) init];
  *&a5[OBJC_IVAR___CSDSpeechAssetManager_remoteAssets] = &_swiftEmptySetSingleton;
  v10 = OBJC_IVAR___CSDSpeechAssetManager_fetchingSpeechAssets;
  sub_100052B8C();
  *&a5[v10] = Dictionary.init(dictionaryLiteral:)();
  v11 = OBJC_IVAR___CSDSpeechAssetManager_hasSpeechAssets;
  *&a5[v11] = Dictionary.init(dictionaryLiteral:)();
  v12 = OBJC_IVAR___CSDSpeechAssetManager_delegates;
  *&a5[v12] = [objc_opt_self() weakObjectsHashTable];
  v13 = &a5[OBJC_IVAR___CSDSpeechAssetManager____lazy_storage___downloadSpeechAssetPath];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&a5[OBJC_IVAR___CSDSpeechAssetManager_queue] = a1;
  v14 = OBJC_IVAR___CSDSpeechAssetManager_languageManager;
  v15 = type metadata accessor for LanguageManager();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&a5[v14], a2, v15);
  *&a5[OBJC_IVAR___CSDSpeechAssetManager_assetSetObserver] = a3;
  *&a5[v9] = a4;
  v17 = a1;
  v18 = a3;
  swift_unknownObjectRelease();
  v34.receiver = a5;
  v34.super_class = type metadata accessor for SpeechAssetManager(0);
  v19 = objc_msgSendSuper2(&v34, "init");
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 defaultCenter];
  [v22 addObserver:v21 selector:"handleCurrentLocaleDidChange" name:NSCurrentLocaleDidChangeNotification object:0];

  v23 = *&v21[OBJC_IVAR___CSDSpeechAssetManager_assetSetObserver];
  v24 = String._bridgeToObjectiveC()();
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  aBlock[4] = sub_10029CBB0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100622CC0;
  v26 = _Block_copy(aBlock);
  v27 = v17;
  v28 = v21;

  v29 = [v23 observeAssetSet:v24 queue:v27 handler:v26];
  _Block_release(v26);

  swift_unknownObjectRelease();
  (*(v16 + 8))(a2, v15);
  return v28;
}

uint64_t getEnumTagSinglePayload for DisclosureDescriptor(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 7))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 6);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for DisclosureDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 6) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10029CC94(uint64_t a1)
{
  result = sub_10029CCBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10029CCBC()
{
  result = qword_1006A2D00;
  if (!qword_1006A2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2D00);
  }

  return result;
}

BOOL sub_10029CD10(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) == 0)
  {
    if ((a1 & 0x100000000) == 0)
    {
      return a1 == a2;
    }

    return 0;
  }

  return (a1 & 0x100000000) != 0;
}

uint64_t sub_10029CD3C(void *a1, uint64_t a2)
{
  if ([a1 recordingState] == 3 && (objc_msgSend(a1, "isRedisclosing") & 1) != 0)
  {
    v4 = 0x2000000000000;
LABEL_6:

    return a2 & 0x1FFFFFFFFFFLL | v4;
  }

  if ([a1 recordingState] == 2)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v5 = [a1 recordingState];

  if (v5 == 4)
  {
    v4 = 0x1000000000000;
    return a2 & 0x1FFFFFFFFFFLL | v4;
  }

  return 0x3000000000000;
}

BOOL sub_10029CDE8(unint64_t a1, uint64_t a2)
{
  if (((a2 ^ a1) & 0xFF000000000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = (a1 >> 40) & 1;
  }

  if (!((a2 ^ a1) & 0xFF000000000000 | a2 & 0x10000000000))
  {
    if ((a1 & 0x10000000000) == 0)
    {
      if ((a2 & 0x100000000) != 0)
      {
        if ((a1 & 0x100000000) != 0)
        {
          return 1;
        }
      }

      else if ((a1 & 0x100000000) == 0)
      {
        return a1 == a2;
      }
    }

    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for DisclosureDescriptor.DisclosureState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DisclosureDescriptor.DisclosureState(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10029D02C()
{
  result = qword_1006A2D08;
  if (!qword_1006A2D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2D08);
  }

  return result;
}

BOOL FTServerBag.isQuickRelaySupported.getter()
{
  v1 = _IDSQuickRelayProtocolVersionNumber();
  if (v1)
  {
    v2 = v1;
    if (sub_10029D240(0xD000000000000016, 0x8000000100563A60, v0))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      sub_1000496D4();
      v4 = swift_dynamicCast();
      if (v4)
      {
        v5 = [v2 compare:v9];

        return v5 != -1;
      }
    }

    else
    {
      v4 = sub_10004975C(v12);
    }

    v7 = sub_100004778(v4);
    v8 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Server bag does not support quick relay since minimum version is unspecified", 76, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);
  }

  else
  {
    v2 = sub_100004778(0);
    v3 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Server bag does not support quick relay since current version is unspecified", 76, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
  }

  return 0;
}

id sub_10029D240(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 objectForKey:v4];

  return v5;
}

void sub_10029D2A4(char a1)
{
  *v1 = a1;
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA640);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = String.init<A>(reflecting:)();
    v7 = sub_10002741C(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = String.init<A>(reflecting:)();
    v10 = sub_10002741C(v8, v9, &v12);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Transitioning from %s to %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10029D480(char a1, char a2)
{
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA640);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = String.init<A>(reflecting:)();
    v8 = sub_10002741C(v6, v7, &v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unpexected state %s expected %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  sub_10029FF3C();
  swift_allocError();
  return swift_willThrow();
}

_UNKNOWN **sub_10029D650()
{
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA640);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stop recording for active call", v4, 2u);
  }

  result = &off_100620150;
  switch(*v0)
  {
    case 2:
      sub_10029D2A4(7);
      result = &off_1006200B0;
      break;
    case 3:
      sub_10029D2A4(6);
      result = &off_1006200D8;
      break;
    case 4:
      sub_10029D2A4(5);
      result = &off_100620100;
      break;
    case 5:
      return result;
    case 6:
      result = &off_100620178;
      break;
    case 7:
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Unable to stop a completed call recording session", v8, 2u);
      }

      sub_10029FF3C();
      swift_allocError();
      result = swift_willThrow();
      break;
    default:
      sub_10029D2A4(5);
      result = &off_100620128;
      break;
  }

  return result;
}

_UNKNOWN **sub_10029D874()
{
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA640);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stop recording for inactive call", v4, 2u);
  }

  result = &off_100620240;
  switch(*v0)
  {
    case 2:
      sub_10029D2A4(7);
      result = &off_1006201A0;
      break;
    case 3:
      sub_10029D2A4(7);
      result = &off_1006201C8;
      break;
    case 4:
      sub_10029D2A4(5);
      result = &off_1006201F0;
      break;
    case 5:
      return result;
    case 6:
      sub_10029D2A4(7);
      result = &off_100620268;
      break;
    case 7:
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Unable to stop a completed call recording session", v8, 2u);
      }

      sub_10029FF3C();
      swift_allocError();
      result = swift_willThrow();
      break;
    default:
      sub_10029D2A4(5);
      result = &off_100620218;
      break;
  }

  return result;
}

uint64_t sub_10029DAA4(char a1)
{
  v2 = *v1;
  v3 = v2 > 7;
  v4 = (1 << v2) & 0xCC;
  if (v3 || v4 == 0)
  {
    if (a1)
    {
      sub_10029D2A4(6);
      return 1;
    }

    else
    {
      sub_10029D2A4(7);
      return 2;
    }
  }

  else
  {
    if (qword_1006A0B40 != -1)
    {
      sub_1000080FC(&qword_1006A0B40);
    }

    v6 = type metadata accessor for Logger();
    sub_10000AF9C(v6, qword_1006BA640);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Finish should only be called after recording via AVC is completed", v9, 2u);
      sub_100005F40(v9);
    }

    sub_10029FF3C();
    swift_allocError();
    return swift_willThrow();
  }
}

void sub_10029DBD8(char a1)
{
  switch(*v1)
  {
    case 2:
    case 6:
      goto LABEL_4;
    case 3:
    case 5:
      if (a1)
      {
        goto LABEL_3;
      }

LABEL_4:
      sub_10029D2A4(7);
      break;
    default:
LABEL_3:
      sub_10000E91C(*v1, 7);
      break;
  }
}

uint64_t sub_10029DC48(char a1)
{
  if ((a1 - 2) > 5u)
  {
    return 3;
  }

  else
  {
    return dword_10057DD3C[(a1 - 2)];
  }
}

uint64_t sub_10029DC74(char a1, char a2)
{
  switch(a1)
  {
    case 2:
      if (a2 == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 3:
      if (a2 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 4:
      if (a2 != 4)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 5:
      if (a2 != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 6:
      if (a2 != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 7:
      if (a2 != 7)
      {
        goto LABEL_15;
      }

LABEL_13:
      v2 = 1;
      break;
    default:
      if ((a2 - 2) >= 6u)
      {
        v2 = a2 ^ a1 ^ 1;
      }

      else
      {
LABEL_15:
        v2 = 0;
      }

      break;
  }

  return v2 & 1;
}

void sub_10029DD3C()
{
  sub_100005EF4();
  v2 = v1;
  v33 = v3;
  v4 = type metadata accessor for UUID();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for Date();
  sub_100007928();
  sub_10000AF74(v12, v13, v14, v11);
  sub_100007928();
  sub_10000AF74(v15, v16, v17, v11);
  sub_100007928();
  sub_10000AF74(v18, v19, v20, v4);
  *&v0[OBJC_IVAR___CSDAudioCallRecordingSession_recurringDisclosureCount] = 0;
  *&v0[OBJC_IVAR___CSDAudioCallRecordingSession_messageUUIDs] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR___CSDAudioCallRecordingSession_stoppedReason] = 3;
  type metadata accessor for URL();
  sub_100007928();
  sub_10000AF74(v21, v22, v23, v24);
  swift_unknownObjectWeakInit();
  UUID.init()();
  v25 = *(v6 + 32);
  v25(&v0[OBJC_IVAR___CSDAudioCallRecordingSession_uuid], v10, v4);
  v0[OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine] = 2;
  v26 = [v2 uniqueProxyIdentifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = &v0[OBJC_IVAR___CSDAudioCallRecordingSession_callUUID];
  *v30 = v27;
  v30[1] = v29;
  v31 = &v0[OBJC_IVAR___CSDAudioCallRecordingSession_destinationBundleID];
  *v31 = 0xD000000000000015;
  v31[1] = 0x8000000100561020;
  v32 = [v33 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v25(&v0[OBJC_IVAR___CSDAudioCallRecordingSession_requestUUID], v10, v4);
  swift_unknownObjectWeakAssign();
  v34.receiver = v0;
  v34.super_class = type metadata accessor for AudioCallRecordingSession(0);
  objc_msgSendSuper2(&v34, "init");

  sub_100005EDC();
}

uint64_t sub_10029E020()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  swift_getObjectType();
  v19 = _typeName(_:qualified:)();
  v20 = v8;
  v9._countAndFlagsBits = 40;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v22 = v19;
  v23 = v20;
  strcpy(&v21, "state: ");
  v21._object = 0xE700000000000000;
  sub_100005298(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine, &v19);
  v10._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  String.append(_:)(v21);

  v21._countAndFlagsBits = 0x203A64697575;
  v21._object = 0xE600000000000000;
  v12 = *(v3 + 16);
  v12(v7, v0 + OBJC_IVAR___CSDAudioCallRecordingSession_uuid, v1);
  v13._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  String.append(_:)(v21);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(&v21, "requestUUID: ");
  HIWORD(v21._object) = -4864;
  v12(v7, v0 + OBJC_IVAR___CSDAudioCallRecordingSession_requestUUID, v1);
  v15._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  String.append(_:)(v21);

  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return v22;
}

void sub_10029E2DC()
{
  sub_100005EF4();
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = sub_100007BF0(v2);
  __chkstk_darwin(v3);
  sub_100007BAC();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v8 = sub_10000F450();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007BAC();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v18 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_100005298(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine, &v30);
  if (*(v0 + v18) != 7)
  {
    v19 = *(v10 + 16);
    v19(v17, v0 + OBJC_IVAR___CSDAudioCallRecordingSession_uuid, v8);
    HIDWORD(v27) = sub_10029E53C();
    v20 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID);
    v21 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID + 8);
    v19(v14, v0 + OBJC_IVAR___CSDAudioCallRecordingSession_requestUUID, v8);
    v22 = OBJC_IVAR___CSDAudioCallRecordingSession_dateStartedRecording;
    sub_100005298(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_dateStartedRecording, &v29);
    sub_10003A220(v0 + v22, v1, &qword_1006A3C70, &unk_10057EA80);
    v23 = OBJC_IVAR___CSDAudioCallRecordingSession_dateEndedRecording;
    sub_100005298(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_dateEndedRecording, &v28);
    sub_10003A220(v0 + v23, v6, &qword_1006A3C70, &unk_10057EA80);
    v24 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_destinationBundleID);
    v25 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_destinationBundleID + 8);
    v26 = sub_10029E5DC();
    objc_allocWithZone(TUCallRecordingSession);

    sub_10029FF90(v17, HIDWORD(v27), v20, v21, v14, v1, v6, v24, v25, v26 & 1);
  }

  sub_100005EDC();
}

uint64_t sub_10029E53C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 5;
  }

  v2 = Strong;
  if ([Strong status] == 5)
  {

    return 5;
  }

  v3 = [v2 status];

  if (v3 == 6)
  {
    return 5;
  }

  v5 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_100005298(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine, v6);
  return sub_10029DC48(*(v0 + v5));
}

uint64_t sub_10029E5DC()
{
  v1 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_100005298(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine, v3);
  return ((*(v0 + v1) - 8) < 0xFAu) & *(v0 + v1);
}

void sub_10029E670()
{
  sub_100005EF4();
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = sub_100007BF0(v2);
  __chkstk_darwin(v3);
  sub_100007BAC();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v8 = sub_10000F450();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007BAC();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v26[-v16];
  v18 = *(v10 + 16);
  v18(&v26[-v16], v0 + OBJC_IVAR___CSDAudioCallRecordingSession_uuid, v8);
  v27 = sub_10029E53C();
  v19 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID);
  v20 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID + 8);
  v18(v14, v0 + OBJC_IVAR___CSDAudioCallRecordingSession_requestUUID, v8);
  v21 = OBJC_IVAR___CSDAudioCallRecordingSession_dateStartedRecording;
  sub_100005298(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_dateStartedRecording, &v29);
  sub_10003A220(v0 + v21, v1, &qword_1006A3C70, &unk_10057EA80);
  v22 = OBJC_IVAR___CSDAudioCallRecordingSession_dateEndedRecording;
  sub_100005298(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_dateEndedRecording, &v28);
  sub_10003A220(v0 + v22, v6, &qword_1006A3C70, &unk_10057EA80);
  v23 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_destinationBundleID);
  v24 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_destinationBundleID + 8);
  v25 = sub_10029E5DC();
  objc_allocWithZone(TUCallRecordingSession);

  sub_10029FF90(v17, v27, v19, v20, v14, v1, v6, v23, v24, v25 & 1);
  sub_100005EDC();
}

id sub_10029E8EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioCallRecordingSession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AudioCallRecordingSession(uint64_t a1)
{
  result = qword_1006A2DC0;
  if (!qword_1006A2DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10029EAD4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10029ECB8(319, &qword_1006A9D10, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      sub_10029ECB8(319, &qword_1006A20C8, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        sub_10029ECB8(319, &qword_1006A2DD0, &type metadata accessor for URL);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10029ECB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AudioCallRecordingStateMachine(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 8;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 6;
  }

  else
  {
    v5 = -7;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AudioCallRecordingStateMachine(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void sub_10029EE8C()
{
  sub_10000E564();
  v3 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_10000F4FC();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 == 2)
  {
    sub_10029D2A4(3);
  }

  else
  {
    sub_10000E91C(v4, 3);
    if (v0)
    {
      swift_endAccess();
      return;
    }
  }

  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100008A54();
    v6 = v5;
    sub_100015EE0(v5, "setCurrentRecordingSession:");
  }
}

void sub_10029EF48()
{
  sub_10000E564();
  v3 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_10000F4FC();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    sub_10029D2A4(4);
  }

  else
  {
    sub_10000E91C(v4, 4);
    if (v0)
    {
      swift_endAccess();
      return;
    }
  }

  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100008A54();
    v6 = v5;
    sub_100015EE0(v5, "setCurrentRecordingSession:");
  }
}

void sub_10029F004()
{
  sub_10000E564();
  v3 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_10000F4FC();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 - 2) < 6 || (v4)
  {
    sub_10000E91C(v4, 1);
    if (v0)
    {
      swift_endAccess();
      return;
    }
  }

  else
  {
    sub_10029D2A4(1);
  }

  swift_endAccess();
  v5 = *(v1 + OBJC_IVAR___CSDAudioCallRecordingSession_recurringDisclosureCount);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR___CSDAudioCallRecordingSession_recurringDisclosureCount) = v7;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100008A54();
      v9 = v8;
      sub_100015EE0(v8, "setCurrentRecordingSession:");
    }
  }
}

void sub_10029F0E0()
{
  sub_10000E564();
  v3 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_10000F4FC();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 - 2) >= 6 && (v4)
  {
    sub_10029D2A4(0);
  }

  else
  {
    sub_10000E91C(v4, 0);
    if (v0)
    {
      swift_endAccess();
      return;
    }
  }

  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100008A54();
    v6 = v5;
    sub_100015EE0(v5, "setCurrentRecordingSession:");
  }
}

void sub_10029F1A4()
{
  sub_10000E564();
  v3 = v2;
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v5 = sub_100007BF0(v4);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v9 = sub_100007BF0(v8);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for UUID();
  sub_100008070();
  (*(v13 + 16))(v11, v3, v12);
  sub_100007C20();
  sub_10000AF74(v14, v15, v16, v12);
  v17 = OBJC_IVAR___CSDAudioCallRecordingSession_currentMessageUUID;
  sub_10000F4FC();
  swift_beginAccess();
  sub_1000432B0(v11, v1 + v17, &unk_1006A3DD0, &unk_10057C9D0);
  swift_endAccess();
  v18 = OBJC_IVAR___CSDAudioCallRecordingSession_stateMachine;
  sub_10000F4FC();
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (v19 == 4)
  {
    sub_10029D2A4(0);
  }

  else
  {
    sub_10000E91C(v19, 0);
    if (v0)
    {
      swift_endAccess();
      return;
    }
  }

  swift_endAccess();
  static Date.now.getter();
  type metadata accessor for Date();
  sub_100007C20();
  sub_10000AF74(v20, v21, v22, v23);
  v24 = OBJC_IVAR___CSDAudioCallRecordingSession_dateStartedRecording;
  sub_10000F4FC();
  swift_beginAccess();
  sub_1000432B0(v7, v1 + v24, &qword_1006A3C70, &unk_10057EA80);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100008A54();
    v26 = v25;
    sub_100015EE0(v25, "setCurrentRecordingSession:");
  }
}

void sub_10029F3E4()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5 = sub_100007BF0(v4);
  __chkstk_darwin(v5);
  sub_100007BAC();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for UUID();
  sub_100007FEC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v19 = OBJC_IVAR___CSDAudioCallRecordingSession_currentMessageUUID;
  sub_100005298(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_currentMessageUUID, &v29);
  sub_10003A220(v0 + v19, v11, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v11, 1, v12) == 1)
  {
    sub_100009A04(v11, &unk_1006A3DD0, &unk_10057C9D0);
    v20 = *(v14 + 16);
  }

  else
  {
    (*(v14 + 32))(v18, v11, v12);
    v21 = OBJC_IVAR___CSDAudioCallRecordingSession_messageUUIDs;
    sub_100461A5C();
    v22 = *(*(v0 + v21) + 16);
    sub_100461B60(v22);
    v28 = v3;
    v23 = *(v0 + v21);
    *(v23 + 16) = v22 + 1;
    v20 = *(v14 + 16);
    v20(v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22, v18, v12);
    *(v1 + v21) = v23;
    v3 = v28;
    (*(v14 + 8))(v18, v12);
  }

  v20(v8, v3, v12);
  sub_100007C20();
  sub_10000AF74(v24, v25, v26, v12);
  sub_10000F4FC();
  swift_beginAccess();
  sub_1000432B0(v8, v1 + v19, &unk_1006A3DD0, &unk_10057C9D0);
  swift_endAccess();
  sub_100005EDC();
}

_UNKNOWN **sub_10029F65C(_UNKNOWN **a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v7 = sub_100007BF0(v6);
  __chkstk_darwin(v7);
  v41 = v40 - v8;
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_10000AF9C(v9, qword_1006BA640);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v40[1] = v10;
    v14 = v13;
    v15 = swift_slowAlloc();
    v42[0] = v15;
    *v14 = 136315138;
    v16 = a1;
    LOBYTE(v43) = a1;
    v17 = String.init<A>(reflecting:)();
    a1 = v2;
    v19 = sub_10002741C(v17, v18, v42);

    *(v14 + 4) = v19;
    v3 = v2;
    _os_log_impl(&_mh_execute_header, v11, v12, "Asked to stop recording session with reason %s", v14, 0xCu);
    sub_100009B7C(v15);
    sub_100005F40(v15);
    sub_100005F40(v14);
  }

  else
  {
    v16 = a1;
  }

  if (*(v4 + OBJC_IVAR___CSDAudioCallRecordingSession_stoppedReason) == 3)
  {
    *(v4 + OBJC_IVAR___CSDAudioCallRecordingSession_stoppedReason) = v16;
  }

  v20 = sub_10029FA20();
  sub_10000F4FC();
  swift_beginAccess();
  if (v20)
  {
    v21 = sub_10029D650();
  }

  else
  {
    v21 = sub_10029D874();
  }

  if (v3)
  {
    swift_endAccess();
  }

  else
  {
    a1 = v21;
    swift_endAccess();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42[0] = v25;
      *v24 = 136315138;
      v43 = a1;

      sub_10026D814(&qword_1006A2DE0, &unk_10057DCD0);
      v26 = String.init<A>(reflecting:)();
      v28 = sub_10002741C(v26, v27, v42);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Stop recording action %s", v24, 0xCu);
      sub_100009B7C(v25);
      sub_100005F40(v25);
      sub_100005F40(v24);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      sub_10029E2DC();
      v32 = v31;
      [v30 setCurrentRecordingSession:v31];
    }

    v33 = v41;
    static Date.now.getter();
    type metadata accessor for Date();
    sub_100007C20();
    sub_10000AF74(v34, v35, v36, v37);
    v38 = OBJC_IVAR___CSDAudioCallRecordingSession_dateEndedRecording;
    sub_10000F4FC();
    swift_beginAccess();
    sub_1000432B0(v33, v4 + v38, &qword_1006A3C70, &unk_10057EA80);
    swift_endAccess();
  }

  return a1;
}

id sub_10029FA20()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  if (*(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_stoppedReason) == 2 || [Strong status] != 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isEndpointOnCurrentDevice];
  }

  return v3;
}

uint64_t sub_10029FAAC()
{
  v1 = sub_10029FA20();
  sub_10000F4FC();
  swift_beginAccess();
  v2 = sub_10029DAA4(v1 & 1);
  swift_endAccess();
  if (!v0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_10029E2DC();
      v6 = v5;
      [v4 setCurrentRecordingSession:v5];
    }
  }

  return v2;
}

void sub_10029FB74()
{
  v1 = sub_10029FA20();
  sub_10000F4FC();
  swift_beginAccess();
  sub_10029DBD8(v1 & 1);
  swift_endAccess();
  if (!v0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_10029E2DC();
      v5 = v4;
      [v3 setCurrentRecordingSession:v4];
    }
  }
}

void sub_10029FC2C()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v11 = sub_100007BF0(v10);
  __chkstk_darwin(v11);
  sub_100007BAC();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = [objc_opt_self() recordingDirectoryURL];
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = type metadata accessor for URL();
    v21 = 0;
  }

  else
  {
    v20 = type metadata accessor for URL();
    v21 = 1;
  }

  sub_10000AF74(v14, v21, 1, v20);
  sub_1002A01B0(v14, v17);
  type metadata accessor for URL();
  if (sub_100015468(v17, 1, v20) == 1)
  {
    sub_100009A04(v17, &unk_1006A52C0, &unk_10057D930);
    v22 = 1;
  }

  else
  {
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10057D6A0;
    v33 = v3;
    v24 = v2;
    v25 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID);
    v26 = *(v0 + OBJC_IVAR___CSDAudioCallRecordingSession_callUUID + 8);
    *(v23 + 56) = &type metadata for String;
    v27 = sub_100009D88();
    *(v23 + 64) = v27;
    *(v23 + 32) = v25;
    *(v23 + 40) = v26;

    v2 = v24;
    v28 = UUID.uuidString.getter();
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v27;
    *(v23 + 72) = v28;
    *(v23 + 80) = v29;
    v34 = String.init(format:_:)();
    v35 = v30;
    v31 = v33;
    (*(v5 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v33);
    sub_10001E364();
    URL.appending<A>(path:directoryHint:)();
    (*(v5 + 8))(v9, v31);

    (*(*(v20 - 8) + 8))(v17, v20);
    v22 = 0;
  }

  sub_10000AF74(v2, v22, 1, v20);
  sub_100005EDC();
}

unint64_t sub_10029FF3C()
{
  result = qword_1006A2DD8;
  if (!qword_1006A2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2DD8);
  }

  return result;
}

id sub_10029FF90(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();

  v15.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = type metadata accessor for Date();
  isa = 0;
  if (sub_100015468(a6, 1, v16) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v16 - 8) + 8))(a6, v16);
  }

  if (sub_100015468(a7, 1, v16) == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v16 - 8) + 8))(a7, v16);
  }

  v19 = String._bridgeToObjectiveC()();

  LOBYTE(v24) = a10 & 1;
  v20 = [v26 initWithUUID:v13.super.isa state:a2 callUUID:v14 requestUUID:v15.super.isa recordingStartedDate:isa recordingEndedDate:v18 destinationBundleIdentifier:v19 isRedisclosing:v24];

  v21 = type metadata accessor for UUID();
  v22 = *(*(v21 - 8) + 8);
  v22(a5, v21);
  v22(a1, v21);
  return v20;
}

uint64_t sub_1002A01B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unsigned __int8 *getEnumTagSinglePayload for AudioCallRecordingSessionState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFEu) > 5)
      {
        return ((v7 & 0x7FFFFFFE | v6 & 1u) - 5);
      }
    }

    return 0;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[1];
      if (!result[1])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 8)) - 7);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioCallRecordingSessionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF9)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF8)
  {
    v7 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

id sub_1002A03CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1002A062C();
  v6 = sub_10042CF18();
  v7 = objc_opt_self();
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D690;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v7 predicateForContactsMatchingHandleStrings:isa];

  [v6 setPredicate:v10];
  v18 = 0;
  v11 = [v3 executeFetchRequest:v6 error:&v18];
  if (v11)
  {
    v12 = v11;
    v13 = v18;
    v14 = [v12 value];

    v18 = v14;
    sub_10026D814(&qword_1006A2DE8, &unk_100584830);
    if (swift_dynamicCast())
    {
      v15 = v17;
    }

    else
    {
      sub_10026D814(&unk_1006A79E0, &unk_10057DD90);
      v15 = Dictionary.init(dictionaryLiteral:)();
    }
  }

  else
  {
    v15 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v15;
}

unint64_t sub_1002A062C()
{
  result = qword_1006AB680;
  if (!qword_1006AB680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006AB680);
  }

  return result;
}

uint64_t sub_1002A0694()
{
  v1 = [v0 accounts];
  sub_1002A0868();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1002A0710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1002A07DC;
  v10[3] = &unk_100622F40;
  v8 = _Block_copy(v10);

  [v4 greetingForAccountUUID:isa completion:v8];
  _Block_release(v8);
}

void sub_1002A07DC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_1002A0868()
{
  result = qword_1006A2DF0;
  if (!qword_1006A2DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2DF0);
  }

  return result;
}

uint64_t sub_1002A08AC()
{
  v1 = v0 + OBJC_IVAR___CSDUserIntentManager____lazy_storage___applicationStateValidator;
  v2 = *(v0 + OBJC_IVAR___CSDUserIntentManager____lazy_storage___applicationStateValidator + 8);
  if (v2)
  {
    LODWORD(v3) = *v1;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___CSDUserIntentManager_queue);
    v5 = objc_allocWithZone(type metadata accessor for ProcessObserver());
    v6 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v8 = [v5 initWithBundleIdentifiers:isa queue:v6];

    v3 = *(v1 + 8);
    *v1 = 0;
    *(v1 + 8) = v8;
    v8;

    v2 = 0;
    LOBYTE(v3) = 0;
  }

  v9 = v2;
  return v3 & 1;
}

uint64_t sub_1002A0978()
{
  sub_10026D814(&qword_1006A2E78, &qword_10057DE68);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10057DDF0;
  *(v1 + 56) = &type metadata for PrivateAPIValidator;
  *(v1 + 64) = &off_10062AD10;
  *(v1 + 32) = 0;
  v2 = sub_1002A08AC();
  *(v1 + 96) = &type metadata for ApplicationStateValidator;
  *(v1 + 104) = &off_10062AD28;
  *(v1 + 72) = v2 & 1;
  *(v1 + 80) = v3;
  v4 = *(v0 + OBJC_IVAR___CSDUserIntentManager_donatedIntentValidator);
  v5 = *(v0 + OBJC_IVAR___CSDUserIntentManager_donatedIntentValidator + 8);
  *(v1 + 136) = &type metadata for DonatedIntentValidator;
  *(v1 + 144) = &off_10062AD40;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 176) = &type metadata for BackgroundBluetoothAccessValidator;
  *(v1 + 184) = &off_10062AD70;
  *(v1 + 152) = 1;
  v6 = OBJC_IVAR___CSDUserIntentManager_mediaRemoteStateValidator;
  *(v1 + 216) = type metadata accessor for MediaRemoteStateValidator(0);
  *(v1 + 224) = &off_10062ACF8;
  v7 = sub_1002A1D5C((v1 + 192));
  sub_1002A1DBC(v0 + v6, v7);

  return v1;
}

id sub_1002A0A90(uint64_t a1)
{
  v2 = v1;
  v1[OBJC_IVAR___CSDUserIntentManager_privateAPIValidator] = 0;
  v4 = &v1[OBJC_IVAR___CSDUserIntentManager____lazy_storage___applicationStateValidator];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR___CSDUserIntentManager_donatedIntentValidator];
  sub_10026D814(&qword_1006A2E80, &unk_10057DE70);
  swift_allocObject();
  v6 = sub_1002A1A14(30, j___s8Dispatch0A4TimeV3nowACyFZ, 0);
  *v5 = 0;
  *(v5 + 1) = v6;
  v7 = &v1[OBJC_IVAR___CSDUserIntentManager_backgroundCallIntentValidator];
  swift_allocObject();
  v8 = sub_1002A1A14(30, j___s8Dispatch0A4TimeV3nowACyFZ, 0);
  *v7 = 0;
  *(v7 + 1) = v8;
  v1[OBJC_IVAR___CSDUserIntentManager_backgroundBluetoothAccessValidator] = 1;
  v9 = &v1[OBJC_IVAR___CSDUserIntentManager_mediaRemoteStateValidator];
  *v9 = 5;
  v10 = enum case for DispatchTimeInterval.seconds(_:);
  v11 = type metadata accessor for DispatchTimeInterval();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  v9[*(type metadata accessor for MediaRemoteStateValidator(0) + 20)] = 1;
  *&v2[OBJC_IVAR___CSDUserIntentManager_queue] = a1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for UserIntentManager(0);
  return objc_msgSendSuper2(&v13, "init");
}

void sub_1002A0C4C()
{
  v7 = [objc_allocWithZone(TLAlertConfiguration) initWithType:16];
  [v7 setTopic:TLAlertTopicSystemNotificationBackgroundMicUsage];
  [v7 setShouldIgnoreRingerSwitch:1];
  v0 = [objc_opt_self() alertWithConfiguration:v7];
  if (v0)
  {
    v1 = v0;
    v2 = sub_100004778(v0);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10057D690;
    *(v3 + 56) = sub_1002A1CC0();
    *(v3 + 64) = sub_1002A1D04();
    *(v3 + 32) = v1;
    v4 = v1;
    v5 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Playing alert for background mic access: %@", 43, 2, &_mh_execute_header, v2, v5, v3);

    [v4 play];
    SBSUndimScreen();

    v6 = v4;
  }

  else
  {
    v6 = v7;
  }
}

void sub_1002A0DE4(uint64_t a1)
{
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = *(v1 + OBJC_IVAR___CSDUserIntentManager_queue);
  *(v8 - v7) = v10;
  v11 = sub_100011290();
  v12(v11);
  v13 = v10;
  _dispatchPreconditionTest(_:)();
  v14 = sub_10000E934();
  v15(v14);
  if (v10)
  {
    v16 = sub_1002A0978();
    v17 = sub_100382410(a1, v16);

    v18 = sub_10000E570();
    do
    {
      v19 = v5;
      if (v2 == v5)
      {
        break;
      }

      if (v5 >= v17[2])
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      ++v5;
      v16 = v18 + 48;
      sub_1002A1964(v18, v46);
      v20 = v47;
      sub_1002A19C0(v46);
      v18 = v16;
    }

    while (v20 != 1);
    for (i = 0; v2 != i; ++i)
    {
      if (i >= v17[2])
      {
        __break(1u);
        goto LABEL_28;
      }

      sub_1002A1964(v9, v46);
      sub_100009B14(v46, v46[3]);
      v22 = sub_10000811C();
      if (v23(v22))
      {
        sub_1002A19C0(v46);
      }

      else
      {
        if ((sub_10001507C() & 1) == 0)
        {
          sub_1000170A4();
        }

        v24 = _swiftEmptyArrayStorage[3];
        if (_swiftEmptyArrayStorage[2] >= v24 >> 1)
        {
          sub_1000180D4(v24);
        }

        sub_100009F7C();
      }

      v9 += 48;
    }

    v25 = sub_1000101DC();
    do
    {
      v26 = v16 + 48;
      if (v16 == -49)
      {
        break;
      }

      if (++v16 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_29;
      }

      v27 = v25 + 48;
      sub_1002A1964(v25, v46);
      v28 = v47;
      sub_1002A19C0(v46);
      v25 = v27;
    }

    while (v28 != 1);

    v30 = sub_100004778(v29);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10057CA70;
    v32 = [i identifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    *(v31 + 56) = &type metadata for String;
    v36 = sub_100009D88();
    *(v31 + 64) = v36;
    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    LOBYTE(v46[0]) = v2 != v19;
    v37 = sub_10000FCE8();
    *(v31 + 96) = &type metadata for String;
    *(v31 + 104) = v36;
    *(v31 + 72) = v37;
    *(v31 + 80) = v38;
    LOBYTE(v46[0]) = v26 != -1;
    v39 = sub_10000FCE8();
    *(v31 + 136) = &type metadata for String;
    *(v31 + 144) = v36;
    *(v31 + 112) = v39;
    *(v31 + 120) = v40;
    v41 = sub_100382550(v17);
    v43 = v42;

    *(v31 + 176) = &type metadata for String;
    *(v31 + 184) = v36;
    *(v31 + 152) = v41;
    *(v31 + 160) = v43;
    v44 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Validating intent for call source: %@ callSourceHasReasonableUserIntent: %@ isUserIntentConfident: %@ (%@)", 106, 2, &_mh_execute_header, v30, v44, v31);

    if (v26 == -1 && v2 != v19)
    {
      sub_1002A0C4C();
    }
  }

  else
  {
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_1002A11D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = *(v2 + OBJC_IVAR___CSDUserIntentManager_queue);
  *(v10 - v9) = v12;
  (*(v7 + 104))(v10 - v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v11, v5);
  if (v12)
  {
    return sub_1002A1AEC(a1, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A1318(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_1002A1384(uint64_t a1)
{
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = *(v1 + OBJC_IVAR___CSDUserIntentManager_queue);
  *(v8 - v7) = v10;
  v11 = sub_100011290();
  v12(v11);
  v13 = v10;
  _dispatchPreconditionTest(_:)();
  v14 = sub_10000E934();
  v15(v14);
  if (v10)
  {
    v16 = sub_1002A0978();
    v17 = sub_100382410(a1, v16);

    v18 = sub_10000E570();
    do
    {
      v19 = v5;
      if (v2 == v5)
      {
        break;
      }

      if (v5 >= v17[2])
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      ++v5;
      v16 = v18 + 48;
      sub_1002A1964(v18, v45);
      v20 = v46;
      sub_1002A19C0(v45);
      v18 = v16;
    }

    while (v20 != 1);
    for (i = 0; v2 != i; ++i)
    {
      if (i >= v17[2])
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_1002A1964(v9, v45);
      sub_100009B14(v45, v45[3]);
      v22 = sub_10000811C();
      if (v23(v22))
      {
        sub_1002A19C0(v45);
      }

      else
      {
        if ((sub_10001507C() & 1) == 0)
        {
          sub_1000170A4();
        }

        v24 = _swiftEmptyArrayStorage[3];
        if (_swiftEmptyArrayStorage[2] >= v24 >> 1)
        {
          sub_1000180D4(v24);
        }

        sub_100009F7C();
      }

      v9 += 48;
    }

    v25 = sub_1000101DC();
    do
    {
      v26 = v16 + 48;
      if (v16 == -49)
      {
        break;
      }

      if (++v16 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_24;
      }

      v27 = v25 + 48;
      sub_1002A1964(v25, v45);
      v28 = v46;
      sub_1002A19C0(v45);
      v25 = v27;
    }

    while (v28 != 1);

    v30 = sub_100004778(v29);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10057CA70;
    v32 = [i identifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    *(v31 + 56) = &type metadata for String;
    v36 = sub_100009D88();
    *(v31 + 64) = v36;
    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    LOBYTE(v45[0]) = v2 != v19;
    v37 = sub_10000FCE8();
    *(v31 + 96) = &type metadata for String;
    *(v31 + 104) = v36;
    *(v31 + 72) = v37;
    *(v31 + 80) = v38;
    LOBYTE(v45[0]) = v26 != -1;
    v39 = sub_10000FCE8();
    *(v31 + 136) = &type metadata for String;
    *(v31 + 144) = v36;
    *(v31 + 112) = v39;
    *(v31 + 120) = v40;
    v41 = sub_100382550(v17);
    v43 = v42;

    *(v31 + 176) = &type metadata for String;
    *(v31 + 184) = v36;
    *(v31 + 152) = v41;
    *(v31 + 160) = v43;
    v44 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Validating background call intent for call source: %@ callSourceHasReasonableBackgroundIntent: %@ isBackgroundIntentConfident: %@ (%@)", 134, 2, &_mh_execute_header, v30, v44, v31);
  }

  else
  {
LABEL_25:
    __break(1u);
  }
}

id sub_1002A1790()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserIntentManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UserIntentManager(uint64_t a1)
{
  result = qword_1006A2E58;
  if (!qword_1006A2E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002A18A4(uint64_t a1)
{
  result = type metadata accessor for MediaRemoteStateValidator(319);
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

uint64_t sub_1002A1A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  *(v3 + 16) = Dictionary.init(dictionaryLiteral:)();
  v7 = qword_1006A9F60;
  *(v3 + qword_1006A9F60) = a1;
  v8 = enum case for DispatchTimeInterval.seconds(_:);
  v9 = type metadata accessor for DispatchTimeInterval();
  (*(*(v9 - 8) + 104))(v3 + v7, v8, v9);
  v10 = (v3 + qword_1006A9F68);
  *v10 = a2;
  v10[1] = a3;
  return v3;
}

uint64_t sub_1002A1AEC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10026D814(&unk_1006A7520, &unk_100582C90);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v2 + qword_1006A9F68);

  v12(v13);
  + infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  v14 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  v15 = &v11[*(v14 + 44)];
  *v15 = a1;
  *(v15 + 1) = a2;
  sub_10000AF74(v11, 0, 1, v14);
  swift_beginAccess();

  sub_100381C84();
  return swift_endAccess();
}

unint64_t sub_1002A1CC0()
{
  result = qword_1006A2E68;
  if (!qword_1006A2E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2E68);
  }

  return result;
}

unint64_t sub_1002A1D04()
{
  result = qword_1006A2E70;
  if (!qword_1006A2E70)
  {
    sub_1002A1CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2E70);
  }

  return result;
}

uint64_t *sub_1002A1D5C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1002A1DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaRemoteStateValidator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A1E20(uint64_t a1)
{
  v2 = type metadata accessor for MediaRemoteStateValidator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1002A1E7C@<X0>(uint64_t *a2@<X8>)
{
  if (qword_1006A0AA0 != -1)
  {
    sub_100008134(&qword_1006A0AA0);
  }

  v3 = qword_1006BA380;
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Enabling file protection class for conversation persistence storage", 67, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);
  _CFPreferencesSetFileProtectionClass();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = objc_allocWithZone(NSUserDefaults);
  v9 = sub_1002A2154(v5, v7);
  result = sub_1002A21B8();
  a2[3] = result;
  a2[4] = &off_100622F68;
  if (!v9)
  {
    result = [objc_allocWithZone(NSUserDefaults) init];
    v9 = result;
  }

  *a2 = v9;
  return result;
}

void sub_1002A1FD0(uint64_t a1)
{
  sub_1002A21FC(a1, v9);
  v2 = v10;
  if (v10)
  {
    v3 = sub_100009B14(v9, v10);
    v4 = *(v2 - 8);
    __chkstk_darwin(v3);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v6, v2);
    sub_100009B7C(v9);
  }

  else
  {
    v7 = 0;
  }

  v8 = String._bridgeToObjectiveC()();
  [v1 setObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

id sub_1002A2154(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

unint64_t sub_1002A21B8()
{
  result = qword_1006A2E88;
  if (!qword_1006A2E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2E88);
  }

  return result;
}

uint64_t sub_1002A21FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A2D10, &unk_10057D940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1002A226C(void *a1)
{
  v5 = sub_100008154(a1, "conversationLinkDescriptorsWithPredicate:limit:offset:error:");
  if (!v5)
  {
    v25 = 0;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = 0;

  v9 = v7;
  v10 = 0;
  v11 = sub_1002A2510(v9);
  v12 = sub_1002A29C8(v11);

  v13 = *(v12 + 16);
  if (!v13)
  {

    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  sub_1002A4180(v12);
  sub_10000A614();
  v27 = v14;
  v28 = v12;
  v26 = v12 + 72;
  v15 = 1;
  do
  {
    if (v2 < 0 || v2 >= v15 << *(v12 + 32))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    sub_10000E948();
    if (v18)
    {
      goto LABEL_25;
    }

    if (*(v12 + 36) != v4)
    {
      goto LABEL_26;
    }

    v29 = v16;
    v30 = v17;
    v15 = objc_allocWithZone(sub_1000101F4());

    sub_10000F508();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v12 = v28;
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v19 = v15 << *(v28 + 32);
    if (v2 >= v19)
    {
      goto LABEL_27;
    }

    if ((*(v3 + 8 * v10) & v1) == 0)
    {
      goto LABEL_28;
    }

    if (*(v28 + 36) != v4)
    {
      goto LABEL_29;
    }

    sub_1000170C8();
    if (v18)
    {
      sub_1000150A0();
      v22 = (v26 + 8 * v10);
      while (v21 < v20)
      {
        v23 = *v22++;
        v10 = v23;
        v1 += 64;
        ++v21;
        if (v23)
        {
          sub_100009FA4(v29);
          v19 = __clz(__rbit64(v10)) + v1;
          goto LABEL_18;
        }
      }

      sub_100009FA4(v29);
    }

    else
    {
      sub_1000180F8();
    }

LABEL_18:
    v2 = v19;
    v4 = v27;
  }

  while (v30 + 1 != v13);

  return _swiftEmptyArrayStorage;
}

Swift::Int sub_1002A29C8(uint64_t a1)
{
  v2 = _swiftEmptyDictionarySingleton;
  v44 = _swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v33 = a1;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v10);
        ++v9;
        if (v6)
        {
          v9 = v10;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_10:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(v33 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v43[0] = *(*(v33 + 56) + 8 * v11);

    sub_1002A3BC0(v43, &v34);
    if (v1)
    {
      break;
    }

    v6 &= v6 - 1;

    if (v35)
    {
    }

    else
    {
      v32 = v34;
      v21 = v2[2];
      if (v2[3] <= v21)
      {
        sub_100457AC0(v21 + 1, 1, v15, v16, v17, v18, v19, v20, v34, v33, v34, SBYTE4(v34), SHIWORD(v34), v35, v36, v37, v38, v39, v40, v41, v42, v43[0], v43[1], v44, v45, v46, v47, v48, v49, v50, v51, v52, vars0, vars8);
        v2 = v44;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = v2 + 8;
      v23 = -1 << *(v2 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~v2[(v24 >> 6) + 8]) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = v22[v25];
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_24;
          }
        }

LABEL_29:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~v2[(v24 >> 6) + 8])) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = (v2[6] + 16 * v26);
      *v31 = v14;
      v31[1] = v13;
      *(v2[7] + 8 * v26) = v32;
      ++v2[2];
    }
  }

  return v2;
}

void sub_1002A2C40(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v51 = _swiftEmptyDictionarySingleton;
  v64 = _swiftEmptyDictionarySingleton;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v3 + 56) + 8 * v11);
    if (v15 >> 62)
    {
      v43 = v14;
      v44 = v13;
      v45 = _CocoaArrayWrapper.endIndex.getter();
      v13 = v44;
      v14 = v43;
      v16 = v45;
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 &= v7 - 1;
    if (v16)
    {
      v49 = v14;
      v50 = v13;
      v47 = v3;
      sub_10039C390(0, (v15 & 0xC000000000000001) == 0, v15);
      v52 = v15 & 0xC000000000000001;
      v48 = v2;
      if ((v15 & 0xC000000000000001) != 0)
      {

        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v15 + 32);

        v18 = v17;
      }

      v53 = v18;
      v19 = 1;
      while (v16 != v19)
      {
        if (v52)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v20 = *(v15 + 8 * v19 + 32);
        }

        v21 = v20;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_42;
        }

        if (*&v53[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version] < *&v20[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version])
        {

          ++v19;
          v53 = v21;
        }

        else
        {

          ++v19;
        }
      }

      v22 = *&v53[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version];

      v29 = v51;
      v30 = v51[2];
      if (v51[3] <= v30)
      {
        sub_100457AC0(v30 + 1, 1, v23, v24, v25, v26, v27, v28, v46, v47, v48, SBYTE4(v48), SHIWORD(v48), v49, v50, v15 & 0xFFFFFFFFFFFFFF8, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
        v29 = v64;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v31 = Hasher._finalize()();
      v32 = v29 + 8;
      v51 = v29;
      v33 = -1 << *(v29 + 32);
      v34 = v31 & ~v33;
      v35 = v34 >> 6;
      v36 = (-1 << v34) & ~v29[(v34 >> 6) + 8];
      v2 = v48;
      if (!v36)
      {
        v38 = 0;
        v39 = (63 - v33) >> 6;
        v3 = v47;
        while (++v35 != v39 || (v38 & 1) == 0)
        {
          v40 = v35 == v39;
          if (v35 == v39)
          {
            v35 = 0;
          }

          v38 |= v40;
          v41 = v32[v35];
          if (v41 != -1)
          {
            v37 = __clz(__rbit64(~v41)) + (v35 << 6);
            goto LABEL_37;
          }
        }

        goto LABEL_45;
      }

      v37 = __clz(__rbit64(v36)) | v34 & 0x7FFFFFFFFFFFFFC0;
      v3 = v47;
LABEL_37:
      *(v32 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      v42 = (v51[6] + 16 * v37);
      *v42 = v49;
      v42[1] = v50;
      *(v51[7] + 8 * v37) = v22;
      ++v51[2];
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void *sub_1002A2FCC(void *a1)
{
  v1 = sub_100008154(a1, "conversationLinkDescriptorsWithPredicate:limit:offset:error:");
  if (v1)
  {
    v2 = v1;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = 0;

    v5 = sub_1002A2510(v3);
    sub_10026D814(&qword_1006A2E98, &unk_10057DEF0);
    v6 = static _DictionaryStorage.copy(original:)();
    v7 = v6;
    v8 = 0;
    v35 = v6;
    v9 = 1 << *(v5 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & v5[8];
    v12 = (v9 + 63) >> 6;
    v33 = v12;
    v34 = v6 + 64;
    if (v11)
    {
LABEL_5:
      v13 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
      goto LABEL_11;
    }

LABEL_6:
    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_33;
      }

      if (v8 >= v12)
      {
        break;
      }

      v15 = v5[v8 + 8];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v37 = (v15 - 1) & v15;
LABEL_11:
        v16 = v13 | (v8 << 6);
        v17 = (v5[6] + 16 * v16);
        v18 = v17[1];
        v39 = *v17;
        v40 = v16;
        v19 = *(v5[7] + 8 * v16);
        v20 = sub_10000B6F4(v19);
        swift_bridgeObjectRetain_n();
        v38 = v18;

        v21 = 0;
        v22 = 0;
        while (v20 != v21)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v21 & 0x8000000000000000) != 0)
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

            if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v23 = *(v19 + 8 * v21 + 32);
          }

          v24 = v23;
          v25 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_31;
          }

          if ([v23 isActivated])
          {
            v26 = [v24 originator];
            v36 = [v26 revision];

            v21 = v25;
            v27 = __OFADD__(v22, v36);
            v22 += v36;
            if (v27)
            {
              goto LABEL_35;
            }
          }

          else
          {

            ++v21;
          }
        }

        swift_bridgeObjectRelease_n();
        v7 = v35;
        *(v34 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        v28 = (v35[6] + 16 * v40);
        *v28 = v39;
        v28[1] = v38;
        *(v35[7] + 8 * v40) = v22;
        v29 = v35[2];
        v27 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v27)
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

        v35[2] = v30;
        v12 = v33;
        v11 = v37;
        if (v37)
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      }
    }
  }

  else
  {
    v31 = 0;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return Dictionary.init(dictionaryLiteral:)();
  }

  return v7;
}

void *sub_1002A333C(uint64_t a1, void *a2)
{
  v2 = sub_100008154(a2, "conversationLinkDescriptorsWithPredicate:limit:offset:error:");
  if (v2)
  {
    v3 = v2;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = 0;

    v7 = sub_1002A2784(v6);
    sub_1002A2C40(v7);
    v9 = v8;

    v10 = sub_10000B6F4(v4);
    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        return _swiftEmptyArrayStorage;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(v4 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v14 = [v12 originator];
      v15 = [v14 identifier];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (*(v9 + 16))
      {
        v19 = sub_100005208(v16, v18);
        v21 = v20;

        if (v21)
        {
          v22 = *(*(v9 + 56) + 8 * v19);
          if ([v13 isActivated])
          {
            v23 = [v13 originator];
            v24 = [v23 revision];

            if (v22 < v24)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              continue;
            }
          }
        }
      }

      else
      {
      }
    }
  }

  v26 = 0;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  return _swiftEmptyArrayStorage;
}

void *sub_1002A3600(uint64_t a1, void *a2)
{
  v19 = _swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = objc_opt_self();
    v6 = a1 + 40;
    do
    {

      v7 = String._bridgeToObjectiveC()();

      v8 = [v5 tu_predicateForConversationLinkDescriptorsWithPseudonym:v7];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 += 16;
      --v3;
    }

    while (v3);
  }

  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057DEC0;
  *(v9 + 32) = [objc_opt_self() tu_predicateForConversationLinkDescriptorsWithActivated:1];
  *(v9 + 40) = sub_100421378();
  v10 = sub_10000C350();
  v18 = 0;
  v11 = [a2 conversationLinkDescriptorsWithPredicate:v10 limit:0 offset:0 error:&v18];
  v12 = v18;
  if (v11)
  {
    v13 = v11;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v12;
  }

  else
  {
    v16 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v14 = _swiftEmptyArrayStorage;
  }

  return v14;
}

void *sub_1002A3870(uint64_t a1, void *a2)
{
  v34 = 0;
  v5 = sub_100008154(a2, "conversationLinkDescriptorsWithPredicate:limit:offset:error:");
  if (!v5)
  {
    v27 = 0;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = 0;

  v9 = 0;
  v10 = sub_1002A2510(v7);
  v11 = &v29;
  v12 = __chkstk_darwin(v10);
  v28[2] = a1;
  v13 = sub_1002A3DF0(v12, sub_1002A4178, v28);

  v14 = sub_1002A29C8(v13);

  v15 = *(v14 + 16);
  if (!v15)
  {

    return _swiftEmptyArrayStorage;
  }

  v34 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_1002A4180(v14);
  sub_10000A614();
  v30 = v16;
  v31 = v14;
  v29 = v14 + 72;
  v17 = 1;
  do
  {
    if (v11 < 0 || v11 >= v17 << *(v14 + 32))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    sub_10000E948();
    if (v20)
    {
      goto LABEL_25;
    }

    if (*(v14 + 36) != v3)
    {
      goto LABEL_26;
    }

    v32 = v18;
    v33 = v19;
    v17 = objc_allocWithZone(sub_1000101F4());

    sub_10000F508();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v14 = v31;
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v21 = v17 << *(v14 + 32);
    if (v11 >= v21)
    {
      goto LABEL_27;
    }

    if ((*(v2 + 8 * v9) & v13) == 0)
    {
      goto LABEL_28;
    }

    if (*(v14 + 36) != v3)
    {
      goto LABEL_29;
    }

    sub_1000170C8();
    if (v20)
    {
      sub_1000150A0();
      v24 = (v29 + 8 * v9);
      while (v23 < v22)
      {
        v25 = *v24++;
        v9 = v25;
        v13 += 64;
        ++v23;
        if (v25)
        {
          sub_100009FA4(v32);
          v21 = __clz(__rbit64(v9)) + v13;
          goto LABEL_18;
        }
      }

      sub_100009FA4(v32);
    }

    else
    {
      sub_1000180F8();
    }

LABEL_18:
    v11 = v21;
    v3 = v30;
  }

  while (v33 + 1 != v15);

  return v34;
}

void sub_1002A3BC0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = sub_10000B6F4(*a1);
  p_attr = v2 & 0xC000000000000001;
  v5 = v2 & 0xFFFFFFFFFFFFFF8;

  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      v10 = 0;
      goto LABEL_25;
    }

    if (p_attr)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v7 = *(v2 + 8 * i + 32);
    }

    v8 = v7;
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if ([v7 isActivated])
    {
      break;
    }
  }

  v16 = [v8 originator];

  v11 = sub_10000B6F4(v2);
  while (v11 != v9)
  {
    if (p_attr)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (v9 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v12 = *(v2 + 8 * v9 + 32);
    }

    v13 = v12;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_28;
    }

    if ([v12 isActivated])
    {
      v2 = p_attr;
      v11 = v5;
      v5 = v3;
      v3 = [v13 originator];

      p_attr = &stru_10067AFF8.attr;
      v14 = [v16 revision];
      if (v14 >= [v3 revision])
      {
        v13 = v3;
        sub_10000E584();
        goto LABEL_22;
      }

      v16 = v3;
      ++v9;
      sub_10000E584();
    }

    else
    {
LABEL_22:

      ++v9;
    }
  }

  v10 = [v16 revision];

LABEL_25:
  *a2 = v10;
  *(a2 + 8) = v3 == i;
}

void *sub_1002A3DF0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), void *a3)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1002A40E8(v12, v8, v6, a2);

      return a3;
    }
  }

  __chkstk_darwin(a1);
  v9 = &v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100396044(0, v8, v9);
  sub_1002A3F74(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

void sub_1002A3F74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100384A1C(result, a2, v22, a3);
        return;
      }
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
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1002A40E8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1002A3F74(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

id sub_1002A4204(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for Locale();
  sub_100007FEC();
  v33 = v8;
  v34 = v7;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = type metadata accessor for UUID();
  sub_100007FEC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v35 = OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uplinkTranslatorIdentifier;
  sub_1000112B0(OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uplinkTranslatorIdentifier);
  v36 = OBJC_IVAR____TtC13callservicesd22CallTranslationSession_downlinkTranslatorIdentifier;
  sub_1000112B0(OBJC_IVAR____TtC13callservicesd22CallTranslationSession_downlinkTranslatorIdentifier);
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stoppedReason] = 8;
  UUID.init()();
  v19 = *(v14 + 32);
  v19(&v4[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uuid], v18, v12);
  type metadata accessor for CallTranslationStateMachine();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine] = sub_1003AE1FC(0);
  v20 = [a2 uniqueProxyIdentifier];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = &v5[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID];
  *v24 = v21;
  v24[1] = v23;
  v25 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19(&v5[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_requestUUID], v18, v12);
  swift_unknownObjectWeakAssign();
  v26 = [a1 localLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = *(v33 + 32);
  v27(&v5[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_localLocale], v11, v34);
  v28 = [a1 remoteLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v27(&v5[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_remoteLocale], v11, v34);
  v29 = [a1 translationLinks];
  *&v5[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_translationLinks] = v29;
  sub_10000FD00();
  sub_1002A5F20(a3, &v5[v35]);
  swift_endAccess();
  sub_10000FD00();
  sub_1002A5F20(a4, &v5[v36]);
  swift_endAccess();
  v39.receiver = v5;
  v39.super_class = type metadata accessor for CallTranslationSession(0);
  v30 = objc_msgSendSuper2(&v39, "init");

  sub_100009A04(a4, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(a3, &unk_1006A3DD0, &unk_10057C9D0);
  return v30;
}

uint64_t sub_1002A4614()
{
  v2 = v0;
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v3 - 8);
  v57 = &v54 - v4;
  v5 = type metadata accessor for Locale();
  sub_100007FEC();
  v56 = v6;
  __chkstk_darwin(v7);
  sub_100007BAC();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  sub_10000E95C();
  v12 = type metadata accessor for UUID();
  sub_100007FEC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100007FDC();
  v18 = v17 - v16;
  swift_getObjectType();
  v60[0] = _typeName(_:qualified:)();
  v60[1] = v19;
  v20._countAndFlagsBits = 40;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v61 = v60[0];
  v62 = v60[1];
  strcpy(v60, "state: ");
  v60[1] = 0xE700000000000000;
  LOBYTE(v58._countAndFlagsBits) = *(*(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine) + 16);
  v21._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  sub_10000A62C();

  v60[0] = 0x203A64697575;
  v60[1] = 0xE600000000000000;
  v23 = *(v14 + 16);
  v23(v18, v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uuid, v12);
  v24._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 32;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  sub_10000A62C();

  sub_100015EF8();

  strcpy(v60, "requestUUID: ");
  HIWORD(v60[1]) = -4864;
  v55 = v0;
  v23(v18, v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_requestUUID, v12);
  v26._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 32;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  sub_10000A62C();

  strcpy(v60, "localLocale: ");
  HIWORD(v60[1]) = -4864;
  v28 = v56;
  v29 = *(v56 + 16);
  v29(v1, v2 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_localLocale, v5);
  v29(v10, v1, v5);
  v30 = String.init<A>(reflecting:)();
  v32 = v31;
  v33 = *(v28 + 8);
  v33(v1, v5);
  v34._countAndFlagsBits = v30;
  v34._object = v32;
  String.append(_:)(v34);

  sub_10000A62C();

  sub_100015EF8();

  strcpy(v60, "remoteLocale: ");
  HIBYTE(v60[1]) = -18;
  v35 = v55;
  v29(v1, v55 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_remoteLocale, v5);
  v29(v10, v1, v5);
  v36 = String.init<A>(reflecting:)();
  v38 = v37;
  v33(v1, v5);
  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  sub_10000A62C();

  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v60[0] = 0xD000000000000012;
  v60[1] = 0x8000000100564000;
  LODWORD(v58._countAndFlagsBits) = *(v35 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_translationLinks);
  type metadata accessor for TUTranslationLinks(0);
  v40._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v40);

  sub_10000A62C();

  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v58._countAndFlagsBits = 0xD000000000000017;
  v58._object = 0x8000000100564020;
  v41 = OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uplinkTranslatorIdentifier;
  sub_100005298(v35 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uplinkTranslatorIdentifier, v60);
  v42 = v57;
  sub_1002A5F90(v35 + v41, v57);
  v43 = sub_1002910A0();
  v45 = v44;
  sub_100009A04(v42, &unk_1006A3DD0, &unk_10057C9D0);
  v46._countAndFlagsBits = v43;
  v46._object = v45;
  String.append(_:)(v46);

  String.append(_:)(v58);

  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v59._countAndFlagsBits = 0xD000000000000019;
  v59._object = 0x8000000100564040;
  v47 = OBJC_IVAR____TtC13callservicesd22CallTranslationSession_downlinkTranslatorIdentifier;
  sub_100005298(v35 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_downlinkTranslatorIdentifier, &v58);
  sub_1002A5F90(v35 + v47, v42);
  v48 = sub_1002910A0();
  v50 = v49;
  sub_100009A04(v42, &unk_1006A3DD0, &unk_10057C9D0);
  v51._countAndFlagsBits = v48;
  v51._object = v50;
  String.append(_:)(v51);

  String.append(_:)(v59);

  v52._countAndFlagsBits = 41;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);
  return v61;
}

id sub_1002A4CAC()
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v2 - 8);
  sub_100007BAC();
  v5 = v3 - v4;
  __chkstk_darwin(v6);
  v40 = &v37 - v7;
  v8 = type metadata accessor for Locale();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007BAC();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v18 = type metadata accessor for UUID();
  sub_100007FEC();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100007BAC();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  result = sub_10000E95C();
  if (*(*(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine) + 16) != 5)
  {
    v39 = v5;
    v27 = *(v20 + 16);
    v27(v1, v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uuid, v18);
    v27(v24, v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_requestUUID, v18);
    v38 = sub_1002A4FB4();
    v28 = *(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID + 8);
    v37 = *(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID);
    v29 = *(v10 + 16);
    v29(v17, v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_localLocale, v8);
    v29(v14, v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_remoteLocale, v8);
    v30 = *(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_translationLinks);
    v31 = OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uplinkTranslatorIdentifier;
    sub_100005298(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uplinkTranslatorIdentifier, v42);
    v32 = v40;
    sub_1002A5F90(v0 + v31, v40);
    v33 = OBJC_IVAR____TtC13callservicesd22CallTranslationSession_downlinkTranslatorIdentifier;
    sub_100005298(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_downlinkTranslatorIdentifier, v41);
    v34 = v0 + v33;
    v35 = v39;
    sub_1002A5F90(v34, v39);
    v36 = objc_allocWithZone(TUCallTranslationSession);

    return sub_1002A5CB8(v1, v24, v38, v37, v28, v17, v14, v30, v32, v35);
  }

  return result;
}

uint64_t sub_1002A4FB4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 5;
  }

  v2 = Strong;
  if ([Strong status] == 5)
  {

    return 5;
  }

  v3 = [v2 status];

  if (v3 == 6)
  {
    return 5;
  }

  v5 = *(*(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine) + 16);

  return sub_1003AE1E8(v5);
}

id sub_1002A509C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallTranslationSession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CallTranslationSession(uint64_t a1)
{
  result = qword_1006A2EE0;
  if (!qword_1006A2EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A5278(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Locale();
    if (v2 <= 0x3F)
    {
      sub_100296D6C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002A5410(void (*a1)(uint64_t))
{

  a1(v3);

  if (!v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = sub_1002A4CAC();
      [v5 setTranslationSession:v6];
    }
  }
}

_UNKNOWN **sub_1002A54AC(char a1)
{
  v2 = v1;
  if (qword_1006A0B58 != -1)
  {
    sub_100008170();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA688);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    sub_100007BFC();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Forcefully asked to stop translation session with reason %s", v7, 0xCu);
    sub_100009B7C(v8);
    sub_100009ED0();

    sub_100009ED0();
  }

  if (*(v2 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stoppedReason) == 8)
  {
    *(v2 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stoppedReason) = a1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong askProviderToAllowAudioInjection:0];
  }

  sub_1003AE81C(5);

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = sub_1002A4CAC();
    [v15 setTranslationSession:v16];
  }

  return &off_1006202B8;
}

_UNKNOWN **sub_1002A5698(char a1)
{
  v3 = v2;
  v4 = v1;
  if (qword_1006A0B58 != -1)
  {
    sub_100008170();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA688);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = "com.apple.callservicesd.shareplay-session-server-terminated";
  if (os_log_type_enabled(v7, v8))
  {
    sub_100007BFC();
    v29 = v4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    v12 = a1;
    v13 = String.init<A>(reflecting:)();
    v15 = sub_10002741C(v13, v14, &v30);
    v9 = "com.apple.callservicesd.shareplay-session-server-terminated";

    *(v10 + 4) = v15;
    v3 = v2;
    _os_log_impl(&_mh_execute_header, v7, v8, "Asked to stop translation session with reason %s", v10, 0xCu);
    sub_100009B7C(v11);
    sub_100009ED0();

    v4 = v29;
    sub_100009ED0();
  }

  else
  {
    v12 = a1;
  }

  if (*(v4 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stoppedReason) == 8)
  {
    *(v4 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stoppedReason) = v12;
  }

  if (sub_1002A59AC())
  {
    v16 = sub_1003AE440();
  }

  else
  {
    v16 = sub_1003AE294();
  }

  v17 = v16;

  if (!v3)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      sub_100007BFC();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = *(v9 + 460);

      sub_10026D814(&qword_1006A2EF0, &unk_10057DFC0);
      v22 = String.init<A>(reflecting:)();
      v24 = sub_10002741C(v22, v23, &v30);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Stop translation action %s", v20, 0xCu);
      sub_100009B7C(v21);
      sub_100009ED0();

      sub_100009ED0();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      v27 = sub_1002A4CAC();
      [v26 setTranslationSession:v27];
    }
  }

  return v17;
}

id sub_1002A59AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  if (*(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stoppedReason) == 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = Strong;
    if ([v4 status] == 1)
    {
      v3 = [v4 isEndpointOnCurrentDevice];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t sub_1002A5A50()
{

  v1 = sub_1002A59AC();
  v2 = sub_1003AE5F4(v1 & 1);

  if (!v0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = sub_1002A4CAC();
      [v4 setTranslationSession:v5];
    }
  }

  return v2;
}

void sub_1002A5B08()
{
  v2 = v0;

  v3 = sub_1002A59AC();
  sub_1003AE7A8(v3 & 1);

  if (!v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = sub_1002A4CAC();
      [v5 setTranslationSession:v6];
    }

    if (qword_1006A0B58 != -1)
    {
      sub_100008170();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006BA688);
    v8 = v2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      sub_100007BFC();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = sub_1002A4CAC();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Translation session completed, %@", v11, 0xCu);
      sub_100009A04(v12, &unk_1006A2630, &qword_10057CB40);
      sub_100009ED0();

      sub_100009ED0();
    }
  }
}

id sub_1002A5CB8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v26.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v31 = a2;
  v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();

  v30 = a6;
  v15.super.isa = Locale._bridgeToObjectiveC()().super.isa;
  v16.super.isa = Locale._bridgeToObjectiveC()().super.isa;
  v17 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100015468(a9, 1, v17) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v17 - 8) + 8))(a9, v17);
  }

  if (sub_100015468(a10, 1, v17) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v17 - 8) + 8))(a10, v17);
  }

  LODWORD(v25) = a8;
  v20 = [v29 initWithUUID:v26.super.isa requestUUID:v13.super.isa state:a3 callUUID:v14 localLocale:v15.super.isa remoteLocale:v16.super.isa translationLinks:v25 uplinkTranslatorIdentifier:isa downlinkTranslatorIdentifier:v19];

  v21 = type metadata accessor for Locale();
  v22 = *(*(v21 - 8) + 8);
  v22(a7, v21);
  v22(v30, v21);
  v23 = *(*(v17 - 8) + 8);
  v23(v31, v17);
  v23(a1, v17);
  return v20;
}

uint64_t sub_1002A5F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A5F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A6034()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    return *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities__emergencyCallbackPossible);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A61F8()
{
  v1 = *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange);
  sub_1000115CC(v1, *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange + 8));
  return v1;
}

uint64_t sub_1002A62E0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange);
  v4 = *(v2 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange);
  v5 = *(v2 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4, v5);
}

char *sub_1002A6300(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v4 = sub_1002A6F58(v3, a1, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1002A63B4(uint64_t a1)
{
  TUCTServerConnection();
  v1 = String._bridgeToObjectiveC()();
  v2 = _CTServerConnectionCarrierSettingsCopyValue();

  return v2;
}

uint64_t sub_1002A6420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchWallTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  static DispatchWallTime.now()();
  *v7 = a1;
  (*(v5 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v4);
  + infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  v15 = *(v9 + 8);
  v15(v12, v8);
  OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();
  return (v15)(v14, v8);
}

uint64_t sub_1002A6634()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR___CSDEmergencyCallbackCapabilities_queue];
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueueAsBarrier(_:), v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v10)
  {
    v12 = sub_1002A6A40();
    v13 = sub_100004778(v12);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10057D690;
    *(v14 + 56) = &type metadata for Int;
    *(v14 + 64) = &protocol witness table for Int;
    *(v14 + 32) = v12;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Starting prevent detach after emergency call timer with timeout of %d seconds. Marking emergency callback possible", LODWORD(aBlock[0]));

    v1[OBJC_IVAR___CSDEmergencyCallbackCapabilities__emergencyCallbackPossible] = 1;
    v15 = OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutWorkItem;
    v16 = *&v1[OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutWorkItem];
    if (v16)
    {
      v17 = *&v1[OBJC_IVAR___CSDEmergencyCallbackCapabilities_dispatchCancelHandler];

      v17(v16);
    }

    static DispatchQoS.default.getter();
    static DispatchWorkItemFlags.barrier.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    aBlock[4] = sub_1002A717C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_1006230B0;
    _Block_copy(aBlock);
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v19 = v1;
    v20 = DispatchWorkItem.init(qos:flags:block:)();

    *&v1[v15] = v20;

    v21 = *&v19[OBJC_IVAR___CSDEmergencyCallbackCapabilities_dispatchAfterHandler];

    v21(v12, v9, v20);

    v22 = *&v19[OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange];
    if (v22)
    {
      v23 = *&v19[OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange + 8];

      v22(v24);

      return sub_1000051F8(v22, v23);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A6A40()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueueAsBarrier(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
  }

  v15 = 0;
  v7 = *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutDeterminationHandler);

  v8 = v7(&v15);

  if (v8)
  {
    v10 = sub_100004778(v9);
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10057D6A0;
    *(v11 + 56) = &type metadata for Int32;
    *(v11 + 64) = &protocol witness table for Int32;
    *(v11 + 32) = v8;
    *(v11 + 96) = &type metadata for Int32;
    *(v11 + 104) = &protocol witness table for Int32;
    *(v11 + 72) = HIDWORD(v8);
    os_log(_:dso:log:type:_:)("_CTServerConnectionCarrierSettingsCopyValue - encountered error %d %d", v13, v14);
  }

  else if (v15)
  {
    v14 = v15;
    if (swift_dynamicCast())
    {
      return v13;
    }
  }

  return 0;
}

uint64_t sub_1002A6C9C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueueAsBarrier(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v9 = sub_100004778(result);
    v10 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Prevent detach after emergency call timer fired. Marking emergency callback as no longer possible", 97, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);

    *(a1 + OBJC_IVAR___CSDEmergencyCallbackCapabilities__emergencyCallbackPossible) = 0;
    *(a1 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutWorkItem) = 0;

    v11 = a1 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange;
    v12 = *(a1 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange);
    if (v12)
    {
      v13 = *(v11 + 8);

      v12(v14);
      return sub_1000051F8(v12, v13);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}