uint64_t sub_10024EFF4()
{
  v1 = 0x636973756DLL;
  if (*v0)
  {
    v1 = 0x646956636973756DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x646564616F6C7075;
  }
}

void sub_10024F088(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a4 & 0xFF00;
  if (a4 >> 6)
  {
    if (a4 >> 6 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    Hasher._combine(_:)(v6);
    String.hash(into:)();
    v7 = a4 & 0x3F;
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)();
    v7 = a4;
  }

  Hasher._combine(_:)(v7);
  if (v5 == 512)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v8 = (a4 >> 8) & 1;
  }

  Hasher._combine(_:)(v8);
  if ((a4 & 0xFF0000) == 0x20000)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = HIWORD(a4) & 1;
  }

  Hasher._combine(_:)(v9);
}

Swift::Int sub_10024F168()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | (*(v0 + 18) << 16);
  Hasher.init(_seed:)();
  sub_10024F088(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_10024F1E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | (*(v1 + 18) << 16);
  Hasher.init(_seed:)();
  sub_10024F088(v6, v2, v3, v4);
  return Hasher._finalize()();
}

void *sub_10024F280()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001D911C();
  (*(v3 + 16))(v5, v6, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10002C9C8(v10, v11, &v15);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier), *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8), &v15);
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s]<%{public}s> deinit", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);
  sub_1000038A4(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus, &qword_100523A68, &qword_1004518A0);
  sub_1002540BC(*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status));

  sub_1001DFBCC(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_delegate);
  sub_100254920(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_nowPlayingInfo, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  sub_10025488C(*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item), *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8), *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16) | (*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16));
  return v1;
}

uint64_t sub_10024F57C()
{
  sub_10024F280();

  return swift_deallocClassInstance();
}

uint64_t sub_10024F5D4()
{
  v1 = v0;
  v2 = 7104878;
  v3 = type metadata accessor for MusicFavoriteStatusController.Status();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_100523A68, &qword_1004518A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v38 = v36;
  v39 = v37;
  v10._countAndFlagsBits = 60;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6973736573202D20;
  v12._object = 0xEC000000203A6E6FLL;
  String.append(_:)(v12);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier));
  v13._countAndFlagsBits = 0x203A6D657469202CLL;
  v13._object = 0xE800000000000000;
  String.append(_:)(v13);
  v14 = v0 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item;
  v15 = *(v0 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
  if ((~v15 & 0xFC) != 0)
  {
    v18 = v15 | (*(v14 + 18) << 16);
    v20 = *v14;
    v19 = *(v14 + 8);
    sub_100254DE0(*v14, v19, v18);
    v21 = sub_10024ECFC(v20, v19, v18 & 0xFFFFFF);
    v16 = v22;
    v23 = v20;
    v2 = 7104878;
    sub_10025488C(v23, v19, v18);
    v17 = v21;
  }

  else
  {
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  v24 = v16;
  String.append(_:)(*&v17);

  v25._countAndFlagsBits = 0x737574617473202CLL;
  v25._object = 0xEA0000000000203ALL;
  String.append(_:)(v25);
  v26 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
  sub_1002540AC(v26);
  v27._countAndFlagsBits = sub_10024C928(v26);
  String.append(_:)(v27);

  sub_1002540BC(v26);
  v28._object = 0x800000010043D9B0;
  v28._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v28);
  v29 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus;
  swift_beginAccess();
  sub_10001D9AC(v1 + v29, v9, &qword_100523A68, &qword_1004518A0);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_1000038A4(v9, &qword_100523A68, &qword_1004518A0);
    v30 = 0xE300000000000000;
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_1000038A4(v9, &qword_100523A68, &qword_1004518A0);
    v2 = MusicFavoriteStatusController.Status.description.getter();
    v30 = v31;
    (*(v4 + 8))(v6, v3);
  }

  v32._countAndFlagsBits = v2;
  v32._object = v30;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 62;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  return v38;
}

uint64_t sub_10024F9A4(uint64_t a1)
{
  result = sub_10025FA68(*(a1 + 48), *(a1 + 56) | (*(a1 + 60) << 32));
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v4 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_nowPlayingInfo;
  swift_beginAccess();
  sub_100254DF8(a1, v1 + v4);
  swift_endAccess();
  v5 = (v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
  v6 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
  v7 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
  v8 = (v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
  v9 = *v8;
  v10 = v9 | (*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16);
  sub_100254E5C(v6, v7, v10);
  v11 = sub_100254620(a1);
  v12 = *v5;
  v13 = v5[1];
  v14 = *v8 | (*(v8 + 2) << 16);
  *v5 = v11;
  v5[1] = v15;
  *v8 = v16;
  *(v8 + 2) = v17;
  sub_10024E984(v12, v13, v14);
  result = sub_10025488C(v12, v13, v14);
  v18 = *v5;
  v19 = v5[1];
  v20 = *v8 | (*(v8 + 2) << 16);
  v21 = *v8 & 0xFC;
  if ((~v9 & 0xFC) == 0)
  {
    if (v21 == 252)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v21 == 252)
  {
LABEL_6:
    sub_100254E5C(*v5, v5[1], *v8 | (*(v8 + 2) << 16));
    sub_10025488C(v6, v7, v10);
    sub_10025488C(v18, v19, v20);
    return sub_1002505D0();
  }

  v22 = sub_1002540CC(v6, v7, v10 & 0xFFFFFF, *v5, v5[1], *v8 | (*(v8 + 2) << 16));
  result = sub_10025488C(v6, v7, v10);
  if (!v22)
  {
    return sub_1002505D0();
  }

  return result;
}

uint64_t sub_10024FBB0(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), ...)
{
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v6 = v4;
  v7 = *v4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v6 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item;
  v21 = *(v6 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
  if ((~v21 & 0xFC) != 0)
  {
    v31 = v21 | (v20[18] << 16);
    v33 = *v20;
    v32 = *(v20 + 1);
    v38 = v17;
    sub_1001E0520();
    sub_100254DE0(v33, v32, v31);
    v37 = static OS_dispatch_queue.main.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = v6;
    *(v34 + 24) = v33;
    *(v34 + 32) = v32;
    *(v34 + 42) = BYTE2(v31);
    *(v34 + 40) = v31;
    *(v34 + 48) = v7;
    aBlock[4] = v40;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = v41;
    v35 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000048E8(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = v37;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    v42[1](v14, v12);
    return (*(v16 + 8))(v19, v38);
  }

  else
  {
    v42 = a4;
    v22 = sub_1001D911C();
    v23 = v8;
    (*(v9 + 16))(v11, v22, v8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v26 = 136315394;
      v27 = _typeName(_:qualified:)();
      v29 = sub_10002C9C8(v27, v28, aBlock);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_10002C9C8(*(v6 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier), *(v6 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8), aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, v42, v26, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v9 + 8))(v11, v23);
  }
}

double sub_1002500D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, const char *a6, void (*a7)(__n128), uint64_t a8)
{
  v31[2] = a8;
  v36 = a6;
  v37 = a7;
  v33 = a3;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v31 - v16;
  v18 = sub_1001D911C();
  v19 = *(v12 + 16);
  v31[4] = v18;
  v31[5] = v12 + 16;
  v31[3] = v19;
  v19(v17);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v32 = a4;
  v31[1] = a5;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v34 = v15;
    v24 = v23;
    v25 = swift_slowAlloc();
    v35 = v12;
    v38[0] = v25;
    *v24 = 136315394;
    v26 = _typeName(_:qualified:)();
    v28 = sub_10002C9C8(v26, v27, v38);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_10002C9C8(*(a1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier), *(a1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8), v38);
    _os_log_impl(&_mh_execute_header, v20, v21, v36, v24, 0x16u);
    swift_arrayDestroy();
    v12 = v35;
  }

  (*(v12 + 8))(v17, v11);
  if (*(a1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController))
  {

    (v37)(v30);
  }

  return result;
}

uint64_t sub_1002505D0()
{
  v1 = v0;
  v25 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BC5A8(&qword_100523A68, &qword_1004518A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for MusicFavoriteStatusController.Status();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus;
  swift_beginAccess();
  sub_100254E70(v10, v1 + v12);
  swift_endAccess();
  v14 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
  v13 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
  v15 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
  v16 = v15 | (*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16);
  v17 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status;
  v18 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
  if ((~v15 & 0xFC) != 0)
  {
    if (v18 > 2)
    {
      sub_100254DE0(*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item), *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8), v15 | (*(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16));
    }

    else
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v1 + v17) = v19;
      sub_100254E5C(v14, v13, v16);
      sub_1002540AC(v18);

      sub_10024E664(v18);
      sub_1002540BC(v18);
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status) = 2;
    sub_10024E664(v18);
    sub_1002540BC(v18);
  }

  sub_1001E0520();
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v14;
  *(v22 + 32) = v13;
  *(v22 + 42) = BYTE2(v16);
  *(v22 + 40) = v16;
  *(v22 + 48) = v25;
  aBlock[4] = sub_100254EE0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C5760;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000048E8(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v28 + 8))(v4, v2);
  return (*(v26 + 8))(v7, v27);
}

double sub_100250A94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v187 = a5;
  v196 = a4;
  v193 = a3;
  v194 = a2;
  v178 = type metadata accessor for DispatchWorkItemFlags();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v174 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for DispatchQoS();
  v175 = *(v176 - 8);
  __chkstk_darwin(v176);
  v173 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicFavoriteStatusController.Status();
  v171 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v158 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v170 = &v154 - v11;
  v159 = v12;
  __chkstk_darwin(v10);
  v172 = &v154 - v13;
  v14 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  __chkstk_darwin(v14 - 8);
  v164 = &v154 - v15;
  v165 = sub_1001BC5A8(&qword_100523A78, &qword_1004518B0);
  v163 = *(v165 - 8);
  __chkstk_darwin(v165);
  v162 = &v154 - v16;
  v168 = sub_1001BC5A8(&qword_100523A80, &unk_1004518B8);
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v166 = &v154 - v17;
  v18 = type metadata accessor for Account();
  __chkstk_darwin(v18 - 8);
  v186 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for Logger();
  v191 = *(v195 - 8);
  v20 = __chkstk_darwin(v195);
  v169 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v179 = &v154 - v23;
  __chkstk_darwin(v22);
  v190 = &v154 - v24;
  v184 = type metadata accessor for ContentRating();
  v183 = *(v184 - 1);
  v25 = __chkstk_darwin(v184);
  v161 = &v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v160 = &v154 - v28;
  __chkstk_darwin(v27);
  v30 = &v154 - v29;
  v182 = type metadata accessor for MusicFavoriteStatusController.Item.Kind();
  v181 = *(v182 - 8);
  v31 = __chkstk_darwin(v182);
  v33 = &v154 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  v36 = &v154 - v35;
  __chkstk_darwin(v34);
  v38 = &v154 - v37;
  v39 = type metadata accessor for MusicFavoriteStatusController.Item.ID();
  v180 = *(v39 - 8);
  v40 = __chkstk_darwin(v39);
  v42 = (&v154 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __chkstk_darwin(v40);
  v45 = (&v154 - v44);
  __chkstk_darwin(v43);
  v47 = (&v154 - v46);
  v189 = type metadata accessor for MusicFavoriteStatusController.Item();
  v188 = *(v189 - 8);
  v48 = __chkstk_darwin(v189);
  v185 = &v154 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v192 = &v154 - v50;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v156 = v7;
    v53 = Strong;
    v155 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatusObserver;
    *(Strong + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatusObserver) = 0;

    v154 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController;
    *(v53 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_musicController) = 0;

    v54 = v53 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_nowPlayingInfo;
    swift_beginAccess();
    if (*(v54 + 24))
    {
      v157 = v53;
      if ((~v196 & 0xFC) != 0)
      {
        v55 = v196;
        if (v196 >> 6)
        {
          if (v196 >> 6 == 1)
          {
            v56 = v193;
            v57 = v194;
            sub_100254E5C(v194, v193, v196);
            sub_100254E5C(v57, v56, v55);

            *v45 = MusicItemID.init(stringLiteral:)();
            v45[1] = v58;
            (*(v180 + 104))(v45, enum case for MusicFavoriteStatusController.Item.ID.purchasedID(_:), v39);
            (*(v181 + 104))(v36, **(&off_1004C59A8 + (v55 & 0x3F)), v182);
            v59 = &enum case for ContentRating.clean(_:);
            if ((v55 & 0x100) != 0)
            {
              v59 = &enum case for ContentRating.explicit(_:);
            }

            (*(v183 + 104))(v160, *v59, v184);
            v60 = v192;
            v61 = v56;
          }

          else
          {
            LODWORD(v160) = WORD1(v196);
            v57 = v194;
            v61 = v193;
            sub_100254E5C(v194, v193, v196);
            sub_100254E5C(v57, v61, v55);

            *v42 = MusicItemID.init(stringLiteral:)();
            v42[1] = v65;
            (*(v180 + 104))(v42, enum case for MusicFavoriteStatusController.Item.ID.libraryID(_:), v39);
            (*(v181 + 104))(v33, **(&off_1004C59A8 + (v55 & 0x3F)), v182);
            v66 = &enum case for ContentRating.clean(_:);
            if ((v55 & 0x100) != 0)
            {
              v66 = &enum case for ContentRating.explicit(_:);
            }

            (*(v183 + 104))(v161, *v66, v184);
            v60 = v192;
          }
        }

        else
        {
          LODWORD(v161) = WORD1(v196);
          v62 = v194;
          v61 = v193;
          sub_100254E5C(v194, v193, v196);
          sub_100254E5C(v62, v61, v55);

          *v47 = MusicItemID.init(stringLiteral:)();
          v47[1] = v63;
          (*(v180 + 104))(v47, enum case for MusicFavoriteStatusController.Item.ID.catalogID(_:), v39);
          (*(v181 + 104))(v38, **(&off_1004C59A8 + v55), v182);
          v64 = &enum case for ContentRating.clean(_:);
          if ((v55 & 0x100) != 0)
          {
            v64 = &enum case for ContentRating.explicit(_:);
          }

          (*(v183 + 104))(v30, *v64, v184);
          v60 = v192;
          v57 = v62;
        }

        MusicFavoriteStatusController.Item.init(id:kind:title:contentRating:isLibraryAddEligible:)();
        v67 = v190;
        v68 = sub_1001D911C();
        v69 = v191;
        v70 = *(v191 + 16);
        v182 = v68;
        v71 = v195;
        v184 = (v191 + 16);
        v183 = v70;
        v70(v67);
        sub_100254E5C(v57, v61, v55);
        v72 = v55;
        v73 = v157;

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();

        sub_10025488C(v57, v61, v72);
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          aBlock[0] = v181;
          *v76 = 136315650;
          v77 = _typeName(_:qualified:)();
          v79 = v61;
          v80 = sub_10002C9C8(v77, v78, aBlock);

          *(v76 + 4) = v80;
          *(v76 + 12) = 2082;
          v81 = *(v73 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier);
          v82 = *(v73 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8);

          v83 = sub_10002C9C8(v81, v82, aBlock);

          *(v76 + 14) = v83;
          *(v76 + 22) = 2082;
          sub_100254DE0(v57, v79, v72);
          v84 = sub_10024ECFC(v57, v79, v72 & 0xFFFFFF);
          v86 = v85;
          v87 = v79;
          v88 = v191;
          sub_10025488C(v57, v87, v72);
          v89 = sub_10002C9C8(v84, v86, aBlock);

          *(v76 + 24) = v89;
          v60 = v192;
          _os_log_impl(&_mh_execute_header, v74, v75, "[%s]<%{public}s> initializeMusicController - create controller for item: %{public}s", v76, 0x20u);
          swift_arrayDestroy();

          v90 = *(v88 + 8);
          v90(v190, v195);
        }

        else
        {

          v90 = *(v69 + 8);
          v90(v67, v71);
        }

        v91 = v72;
        (*(v188 + 16))(v185, v60, v189);
        static Account.active.getter();
        type metadata accessor for MusicFavoriteStatusController();
        swift_allocObject();
        v92 = MusicFavoriteStatusController.init(item:account:)();
        v190 = v90;
        v93 = v162;
        v186 = v92;
        dispatch thunk of MusicFavoriteStatusController.$status.getter();
        v94 = v157;
        v185 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_targetQueue;
        aBlock[0] = *(v157 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_targetQueue);
        v95 = aBlock[0];
        v96 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        v97 = v164;
        (*(*(v96 - 8) + 56))(v164, 1, 1, v96);
        sub_1001E0520();
        sub_10000462C(&qword_100523A88, &qword_100523A78, &qword_1004518B0, &protocol conformance descriptor for Published<A>.Publisher);
        sub_1000048E8(&qword_100524C70, sub_1001E0520, &protocol conformance descriptor for OS_dispatch_queue);
        v98 = v95;
        v99 = v166;
        v100 = v165;
        Publisher.receive<A>(on:options:)();
        sub_1000038A4(v97, &unk_100524C50, &qword_10044F180);

        (*(v163 + 8))(v93, v100);
        v101 = swift_allocObject();
        swift_weakInit();
        v102 = swift_allocObject();
        *(v102 + 16) = v101;
        v104 = v193;
        v103 = v194;
        *(v102 + 24) = v194;
        *(v102 + 32) = v104;
        LODWORD(v180) = HIWORD(v91);
        *(v102 + 42) = BYTE2(v91);
        *(v102 + 40) = v91;
        *(v102 + 48) = v187;
        sub_100254DE0(v103, v104, v91);
        sub_10000462C(&qword_100523A90, &qword_100523A80, &unk_1004518B8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v105 = v168;
        v106 = Publisher<>.sink(receiveValue:)();

        (*(v167 + 8))(v99, v105);
        *(v94 + v155) = v106;

        *(v94 + v154) = v186;

        v107 = v172;
        dispatch thunk of MusicFavoriteStatusController.status.getter();
        v108 = v171;
        v109 = v170;
        v110 = v156;
        (*(v171 + 104))(v170, enum case for MusicFavoriteStatusController.Status.loading(_:), v156);
        sub_1000048E8(&qword_100523A98, &type metadata accessor for MusicFavoriteStatusController.Status, &protocol conformance descriptor for MusicFavoriteStatusController.Status);
        LOBYTE(v106) = dispatch thunk of static Equatable.== infix(_:_:)();
        v111 = *(v108 + 8);
        v111(v109, v110);
        if (v106)
        {

          sub_10025488C(v194, v104, v196);

          v111(v107, v110);
          (*(v188 + 8))(v192, v189);
          return result;
        }

        v181 = v111;
        (v183)(v169, v182, v195);
        v112 = v94;
        v113 = v158;
        v184 = *(v108 + 16);
        v184(v158, v107, v110);
        v114 = v194;
        v115 = v196;
        sub_100254E5C(v194, v104, v196);

        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.default.getter();

        sub_10025488C(v114, v104, v115);
        v118 = os_log_type_enabled(v116, v117);
        v179 = (v108 + 8);
        if (v118)
        {
          v119 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          aBlock[0] = v183;
          *v119 = 136315906;
          v120 = _typeName(_:qualified:)();
          LODWORD(v187) = v117;
          v122 = sub_10002C9C8(v120, v121, aBlock);

          *(v119 + 4) = v122;
          *(v119 + 12) = 2082;
          v123 = *(v112 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier);
          v124 = *(v112 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8);

          v125 = sub_10002C9C8(v123, v124, aBlock);

          *(v119 + 14) = v125;
          *(v119 + 22) = 2082;
          sub_1000048E8(&qword_100523AA0, &type metadata accessor for MusicFavoriteStatusController.Status, &protocol conformance descriptor for MusicFavoriteStatusController.Status);
          v126 = dispatch thunk of CustomStringConvertible.description.getter();
          v128 = v127;
          (v181)(v113, v156);
          v129 = sub_10002C9C8(v126, v128, aBlock);

          *(v119 + 24) = v129;
          *(v119 + 32) = 2082;
          v130 = v193;
          v131 = v196;
          sub_100254DE0(v114, v193, v196);
          v132 = sub_10024ECFC(v114, v130, v131 & 0xFFFFFF);
          v134 = v133;
          sub_10025488C(v114, v130, v131);
          v135 = sub_10002C9C8(v132, v134, aBlock);
          v136 = v156;

          *(v119 + 34) = v135;
          _os_log_impl(&_mh_execute_header, v116, v187, "[%s]<%{public}s> initializeMusicController - initial controller status: %{public}s for item: %{public}s", v119, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {
          v136 = v110;

          (v181)(v113, v110);
        }

        (v190)(v169, v195);
        v137 = v112;
        v138 = v170;
        v139 = v172;
        v140 = v184;
        v184(v170, v172, v136);
        v141 = sub_100253790(v138);
        v142 = *&v185[v137];
        v140(v138, v139, v136);
        v143 = v171;
        v144 = (*(v171 + 80) + 48) & ~*(v171 + 80);
        v145 = v136;
        v146 = (v159 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
        v147 = swift_allocObject();
        v148 = v193;
        *(v147 + 16) = v114;
        *(v147 + 24) = v148;
        *(v147 + 34) = v180;
        *(v147 + 32) = v196;
        *(v147 + 40) = v137;
        (*(v143 + 32))(v147 + v144, v138, v145);
        *(v147 + v146) = v141;
        aBlock[4] = sub_100255030;
        aBlock[5] = v147;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100003D98;
        aBlock[3] = &unk_1004C5850;
        v149 = _Block_copy(aBlock);

        v150 = v142;
        sub_1002540AC(v141);
        v151 = v173;
        static DispatchQoS.unspecified.getter();
        v197 = _swiftEmptyArrayStorage;
        sub_1000048E8(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
        v152 = v174;
        v153 = v178;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v149);

        sub_1002540BC(v141);

        (*(v177 + 8))(v152, v153);
        (*(v175 + 8))(v151, v176);
        (v181)(v172, v156);
        (*(v188 + 8))(v192, v189);
      }
    }
  }

  return result;
}

double sub_10025278C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v11 = sub_1001BC5A8(&qword_100523A68, &qword_1004518A0);
  __chkstk_darwin(v11 - 8);
  v77 = &v61 - v12;
  v13 = type metadata accessor for MusicFavoriteStatusController.Status();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = &v61 - v17;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v71 = a6;
    v72 = v16;
    v73 = a1;
    v24 = *(Strong + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
    v25 = *(Strong + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
    v26 = *(Strong + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
    v27 = v26 | (*(Strong + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16);
    if ((~v26 & 0xFC) != 0)
    {
      v70 = Strong;
      if (sub_1002540CC(a3, a4, v7 & 0xFFFFFF, v24, v25, v27 & 0xFFFFFF))
      {
        v28 = sub_1001D911C();
        v68 = v19;
        v29 = *(v19 + 16);
        v30 = v21;
        v66 = v18;
        v29(v21, v28, v18);
        v31 = a3;
        v32 = v74;
        v33 = v75;
        v34 = v73;
        v35 = v76;
        v69 = *(v75 + 16);
        v65 = v75 + 16;
        v69(v74, v73, v76);
        sub_100254DE0(a3, a4, v7);
        v36 = v70;

        v67 = v30;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        sub_1002548A0(v31, a4, v7);
        v64 = v38;
        if (os_log_type_enabled(v37, v38))
        {
          v61 = a4;
          v39 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v78[0] = v63;
          *v39 = 136315906;
          v40 = _typeName(_:qualified:)();
          v62 = v37;
          v42 = sub_10002C9C8(v40, v41, v78);

          *(v39 + 4) = v42;
          *(v39 + 12) = 2082;
          v43 = *(v36 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier);
          v44 = *(v36 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_sessionIdentifier + 8);

          v45 = sub_10002C9C8(v43, v44, v78);

          *(v39 + 14) = v45;
          *(v39 + 22) = 2082;
          sub_1000048E8(&qword_100523AA0, &type metadata accessor for MusicFavoriteStatusController.Status, &protocol conformance descriptor for MusicFavoriteStatusController.Status);
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v48 = v47;
          v49 = *(v33 + 8);
          v71 = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v49(v32, v35);
          v50 = sub_10002C9C8(v46, v48, v78);
          v34 = v73;

          *(v39 + 24) = v50;
          *(v39 + 32) = 2082;
          v51 = sub_10024ECFC(v31, v61, v7 & 0xFFFFFF);
          v53 = sub_10002C9C8(v51, v52, v78);

          *(v39 + 34) = v53;
          v54 = v62;
          _os_log_impl(&_mh_execute_header, v62, v64, "[%s]<%{public}s> controllerStatusObserver - updated status: %{public}s for item: %{public}s", v39, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          v49 = *(v33 + 8);
          v71 = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v49(v32, v35);
        }

        (*(v68 + 8))(v67, v66);
        v55 = v77;
        v56 = v69;
        v69(v77, v34, v35);
        (*(v33 + 56))(v55, 0, 1, v35);
        v57 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus;
        swift_beginAccess();
        sub_100254E70(v55, v36 + v57);
        swift_endAccess();
        v58 = v72;
        (*(v33 + 104))(v72, enum case for MusicFavoriteStatusController.Status.loading(_:), v35);
        sub_1000048E8(&qword_100523A98, &type metadata accessor for MusicFavoriteStatusController.Status, &protocol conformance descriptor for MusicFavoriteStatusController.Status);
        LOBYTE(v57) = dispatch thunk of static Equatable.== infix(_:_:)();
        v49(v58, v35);
        if ((v57 & 1) == 0)
        {
          v56(v58, v34, v35);
          v59 = sub_100253790(v58);
          v60 = *(v36 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
          *(v36 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status) = v59;
          sub_1002540AC(v59);
          sub_10024E664(v60);
          sub_1002540BC(v60);
          sub_1002540BC(v59);
        }
      }
    }

    else
    {
      sub_100254DE0(a3, a4, v7);

      sub_10025488C(a3, a4, v7);
      sub_10025488C(v24, v25, v27);
    }
  }

  return result;
}

double sub_100252E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = a3;
  v12 = sub_1001BC5A8(&qword_100523A68, &qword_1004518A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - v13;
  v15 = *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
  v16 = *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
  LODWORD(v13) = *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
  v17 = v13 | (*(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16);
  if ((~v13 & 0xFC) != 0)
  {
    if (sub_1002540CC(a1, a2, v9 & 0xFFFFFF, *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item), *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8), v17 & 0xFFFFFF))
    {
      v19 = type metadata accessor for MusicFavoriteStatusController.Status();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v14, a5, v19);
      (*(v20 + 56))(v14, 0, 1, v19);
      v21 = OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_controllerStatus;
      swift_beginAccess();
      sub_100254E70(v14, a4 + v21);
      swift_endAccess();
      v22 = *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
      *(a4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status) = a6;
      sub_1002540AC(a6);
      sub_10024E664(v22);
      return sub_1002540BC(v22);
    }
  }

  else
  {
    sub_100254DE0(a1, a2, v9);
    sub_10025488C(a1, a2, v9);

    sub_10025488C(v15, v16, v17);
  }

  return result;
}

void *sub_1002530B4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001BC5A8(&qword_100523AB0, &qword_1004518D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001BC5A8(&qword_100523AA8, &qword_1004518C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1002531E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100523A70, &qword_1004518A8);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
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
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
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
}

void sub_100253490(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a2, a3);
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
      sub_1002531E8(v16, a4 & 1);
      v11 = sub_10000698C(a2, a3);
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
      sub_10025360C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_10025360C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100523A70, &qword_1004518A8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

uint64_t sub_100253790(char *a1)
{
  v2 = type metadata accessor for Logger();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = __chkstk_darwin(v2);
  v69 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v68 = &v64 - v5;
  v6 = type metadata accessor for MusicFavoriteStatus();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v67 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v64 - v11;
  __chkstk_darwin(v10);
  v14 = &v64 - v13;
  v15 = type metadata accessor for MusicFavoriteStatusController.Status();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v64 - v20;
  v22 = *(v16 + 16);
  v72 = a1;
  v23 = a1;
  v25 = v24;
  v22(&v64 - v20, v23, v24);
  v26 = (*(v16 + 88))(v21, v25);
  if (v26 == enum case for MusicFavoriteStatusController.Status.loaded(_:))
  {
    (*(v16 + 96))(v21, v25);
    (*(v7 + 32))(v14, v21, v6);
    v27 = *(v7 + 16);
    v27(v12, v14, v6);
    v28 = (*(v7 + 88))(v12, v6);
    if (v28 == enum case for MusicFavoriteStatus.neutral(_:))
    {
LABEL_3:
      (*(v16 + 8))(v72, v25);
      (*(v7 + 8))(v14, v6);
      return 1;
    }

    if (v28 == enum case for MusicFavoriteStatus.favorited(_:))
    {
      (*(v16 + 8))(v72, v25);
      (*(v7 + 8))(v14, v6);
      return 0;
    }

    if (v28 == enum case for MusicFavoriteStatus.disliked(_:))
    {
      goto LABEL_3;
    }

    v69 = v25;
    v33 = sub_1001D911C();
    v34 = v68;
    (*(v70 + 16))(v68, v33, v71);
    v35 = v67;
    v27(v67, v14, v6);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v65 = v37;
      v39 = v38;
      v66 = swift_slowAlloc();
      v73 = v66;
      *v39 = 136315394;
      *(v39 + 4) = sub_10002C9C8(0x657469726F766146, 0xEE00737574617453, &v73);
      *(v39 + 12) = 2082;
      v40 = v39;
      sub_1000048E8(&qword_100523AB8, &type metadata accessor for MusicFavoriteStatus, &protocol conformance descriptor for MusicFavoriteStatus);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v14;
      v42 = v6;
      v43 = v12;
      v45 = v44;
      v46 = *(v7 + 8);
      v46(v35, v42);
      v47 = sub_10002C9C8(v41, v45, &v73);
      v48 = v36;
      v49 = v47;
      v12 = v43;
      v6 = v42;

      *(v40 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v48, v65, "[%s] init - unknown favorite status: %{public}s", v40, 0x16u);
      swift_arrayDestroy();

      (*(v16 + 8))(v72, v69);
      (*(v70 + 8))(v68, v71);
      v50 = v64;
      v51 = v42;
    }

    else
    {

      (*(v16 + 8))(v72, v69);
      v46 = *(v7 + 8);
      v46(v35, v6);
      (*(v70 + 8))(v34, v71);
      v50 = v14;
      v51 = v6;
    }

    v46(v50, v51);
    v46(v12, v6);
  }

  else
  {
    if (v26 == enum case for MusicFavoriteStatusController.Status.loading(_:))
    {
      (*(v16 + 8))(v72, v25);
      return 1;
    }

    v30 = v25;
    v31 = v26 == enum case for MusicFavoriteStatusController.Status.favoritingUnsupported(_:) || v26 == enum case for MusicFavoriteStatusController.Status.failedToLoad(_:);
    v32 = v72;
    if (v31)
    {
      (*(v16 + 8))(v72, v30);
    }

    else
    {
      v52 = sub_1001D911C();
      v53 = v70;
      v54 = v71;
      (*(v70 + 16))(v69, v52, v71);
      v22(v19, v32, v30);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v58 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v73 = v68;
        *v58 = 136315394;
        *(v58 + 4) = sub_10002C9C8(0x657469726F766146, 0xEE00737574617453, &v73);
        *(v58 + 12) = 2082;
        sub_1000048E8(&qword_100523AA0, &type metadata accessor for MusicFavoriteStatusController.Status, &protocol conformance descriptor for MusicFavoriteStatusController.Status);
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        LODWORD(v67) = v56;
        v62 = *(v16 + 8);
        v62(v19, v30);
        v63 = sub_10002C9C8(v59, v61, &v73);

        *(v58 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v55, v67, "[%s] init - unknown controller status: %{public}s", v58, 0x16u);
        swift_arrayDestroy();

        v62(v72, v30);
        (*(v70 + 8))(v69, v71);
      }

      else
      {

        v62 = *(v16 + 8);
        v62(v32, v30);
        v62(v19, v30);
        (*(v53 + 8))(v69, v54);
      }

      v62(v21, v30);
    }
  }

  return 2;
}

double sub_1002540AC(unint64_t a1)
{
  if (a1 >= 3)
  {
  }

  return result;
}

double sub_1002540BC(unint64_t a1)
{
  if (a1 >= 3)
  {
  }

  return result;
}

BOOL sub_1002540CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) != 0x40)
      {
        return 0;
      }

      v6 = a3 & 0x3F;
      v7 = a6 & 0x3F;
      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((a6 & 0xC0) != 0x80)
      {
        return 0;
      }

      v6 = a3 & 0x3F;
      v7 = a6 & 0x3F;
      if (a1 != a4 || a2 != a5)
      {
LABEL_17:
        v8 = a3;
        v9 = a6;
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v10 & 1) == 0)
        {
          return result;
        }

        a6 = v9;
        a3 = v8;
        if (v6 != v7)
        {
          return result;
        }

        goto LABEL_22;
      }
    }

    if (v6 != v7)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if ((a6 & 0xC0) != 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    if ((a6 & 0x3F) != a3)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v12 = a3;
  v13 = a6;
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v14)
  {
    a3 = v12;
    a6 = v13;
    if (v12 == (v13 & 0x3F))
    {
LABEL_22:
      if ((a3 & 0xFF00) == 0x200)
      {
        if (BYTE1(a6) != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (BYTE1(a6) == 2 || ((((a3 & 0x100) == 0) ^ (a6 >> 8)) & 1) == 0)
        {
          return result;
        }
      }

      if ((a3 & 0xFF0000) != 0x20000)
      {
        return BYTE2(a6) != 2 && ((((a3 & 0x10000) == 0) ^ HIWORD(a6)) & 1) != 0;
      }

      return BYTE2(a6) == 2;
    }
  }

  return result;
}

void *sub_100254270(void *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  for (i = 4; v3[i] != a2; i += 2)
  {
    if (v4 == ++v7)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return v7;
  }

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v9 == v4)
    {
      return v7;
    }

    v10 = i * 8 + 16;
    while (v9 < v4)
    {
      if (*(v3 + v10) != a2)
      {
        if (v9 != v7)
        {
          if (v7 >= v4)
          {
            goto LABEL_23;
          }

          v12 = *(v3 + v10);
          v11 = *&v3[2 * v7 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_10025377C(v3);
          }

          *&v3[2 * v7 + 4] = v12;
          result = swift_unknownObjectRelease();
          if (v9 >= v3[2])
          {
            goto LABEL_24;
          }

          *(v3 + v10) = v11;
          result = swift_unknownObjectRelease();
          *v6 = v3;
        }

        ++v7;
      }

      ++v9;
      v4 = v3[2];
      v10 += 16;
      if (v9 == v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002543E0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_1001BC5A8(&qword_100523AA8, &qword_1004518C8);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1002544B0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1002530B4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1002543E0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_100254570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MusicFavoritingController(uint64_t a1)
{
  result = qword_10052C010;
  if (!qword_10052C010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100254620(uint64_t a1)
{
  v2 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v22[-v7];
  v9 = (a1 + *(type metadata accessor for HostedRoutingSession.NowPlayingInfo(0) + 44));
  v10 = *(v9 + 19);
  if (v10 != 2 && (v10 & 1) != 0)
  {
    v11 = *(v9 + 18);
    if (v11 == 2 || (v11 & 1) == 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = 3;
    }

    goto LABEL_11;
  }

  v13 = *(v9 + 18);
  if (v13 != 2 && (v13 & 1) != 0)
  {
    v12 = 2;
LABEL_11:
    v23 = v12;
    goto LABEL_12;
  }

  v23 = 0;
LABEL_12:
  RoutingSession.NowPlayingInfo.TrackInfo.extendedInfo.getter();
  v14 = RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo.subscriptionIdentifier.getter();
  v16 = v15;
  v17 = *(v3 + 8);
  v17(v8, v2);
  if (v16 & 1) != 0 && (RoutingSession.NowPlayingInfo.TrackInfo.extendedInfo.getter(), v14 = RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo.storeIdentifier.getter(), v19 = v18, v17(v6, v2), (v19))
  {
    result = v9[1];
    if (result)
    {
      v21 = *v9;

      return v21;
    }
  }

  else
  {
    v24 = v14;
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  return result;
}

uint64_t sub_10025488C(uint64_t result, uint64_t a2, int a3)
{
  if ((~a3 & 0xFC) != 0)
  {
    return sub_1002548A0(result, a2, a3);
  }

  return result;
}

uint64_t sub_1002548A0(uint64_t a1, uint64_t a2, int a3)
{
  if ((~a3 & 0xC0) != 0)
  {
  }

  return result;
}

uint64_t sub_1002548B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100254920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100254984()
{
  result = qword_100523760;
  if (!qword_100523760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523760);
  }

  return result;
}

uint64_t sub_1002549FC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100254A20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100254A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100254ACC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_100254B04(uint64_t a1)
{
  sub_100254C0C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HostedRoutingSession.NowPlayingInfo(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100254C0C(uint64_t a1)
{
  if (!qword_1005238C0)
  {
    type metadata accessor for MusicFavoriteStatusController.Status();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005238C0);
    }
  }
}

__n128 sub_100254C70(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_100254C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 19))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100254CD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 18) = 0;
      *(result + 16) = 4 * ((((-a2 >> 2) & 0xF) - 16 * a2) & 0x3F);
    }
  }

  return result;
}

uint64_t sub_100254D30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = a1 + 16;
  v3 = *(result + 2);
  *result = v2 & 0xFF3F;
  *(result + 2) = (v2 & 0xFFFFFF3F | (v3 << 16)) >> 16;
  return result;
}

uint64_t sub_100254D50(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  result = a1 + 16;
  v4 = v3 & 0xFFFFFF03 | (*(result + 2) << 16);
  *result = v3 & 0xFF03 | ((a2 & 3) << 6);
  *(result + 2) = BYTE2(v4);
  return result;
}

unint64_t sub_100254D8C()
{
  result = qword_10052C120[0];
  if (!qword_10052C120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052C120);
  }

  return result;
}

uint64_t sub_100254DE0(uint64_t a1, uint64_t a2, int a3)
{
  if ((~a3 & 0xC0) != 0)
  {
  }

  return result;
}

uint64_t sub_100254DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100254E5C(uint64_t a1, uint64_t a2, int a3)
{
  if ((~a3 & 0xFC) != 0)
  {
    return sub_100254DE0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100254E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100523A68, &qword_1004518A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_100254EFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32) | (*(v0 + 34) << 16);
  v4 = *(v0 + 40);
  v5 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item);
  v6 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8);
  v7 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 16);
  v8 = v7 | (*(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 18) << 16);
  if ((~v7 & 0xFC) != 0)
  {
    if (sub_1002540CC(v1, v2, v3 & 0xFFFFFF, *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item), *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_item + 8), v8 & 0xFFFFFF))
    {
      v11 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status);
      *(v4 + OBJC_IVAR____TtC12mediaremotedP33_E9C4D9615051C922BEE0868CEFE1371225MusicFavoritingController_status) = 2;
      sub_10024E664(v11);

      return sub_1002540BC(v11);
    }
  }

  else
  {
    v9 = v1;
    sub_100254DE0(v1, v2, v3);
    sub_10025488C(v9, v2, v3);

    sub_10025488C(v5, v6, v8);
  }

  return result;
}

double sub_100255030()
{
  v1 = *(type metadata accessor for MusicFavoriteStatusController.Status() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32) | (*(v0 + 34) << 16);
  v6 = *(v0 + 40);
  v7 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100252E60(v3, v4, v5, v6, v0 + v2, v7);
}

uint64_t sub_1002550F8()
{

  sub_1002548A0(*(v0 + 24), *(v0 + 32), *(v0 + 40) | (*(v0 + 42) << 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t getEnumTagSinglePayload for MusicFavoritingController.Item.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicFavoritingController.Item.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1002552FC()
{
  result = qword_10052C2B0[0];
  if (!qword_10052C2B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052C2B0);
  }

  return result;
}

uint64_t HostedItemType.description.getter(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      _StringGuts.grow(_:)(17);

      strcpy(v9, ".audioSession(");
      HIBYTE(v9[1]) = -18;
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

LABEL_8:
      v7._countAndFlagsBits = 41;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
      return v9[0];
    }

    v5 = a2;
    _StringGuts.grow(_:)(16);

    strcpy(v9, ".appSpecific(");
    HIWORD(v9[1]) = -4864;
LABEL_7:
    v6._countAndFlagsBits = a1;
    v6._object = v5;
    String.append(_:)(v6);
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v5 = a2;
    _StringGuts.grow(_:)(30);

    v9[0] = 0xD00000000000001BLL;
    v9[1] = 0x800000010043DA10;
    goto LABEL_7;
  }

  return 0x7261646E6174732ELL;
}

uint64_t sub_1002554F0(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if ((~a3 & 0x6FE) != 0)
  {
    _StringGuts.grow(_:)(30);

    v8._countAndFlagsBits = sub_10002BF18(a1, a2, a3);
    String.append(_:)(v8);

    v9._countAndFlagsBits = 41;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v4 = 0xD00000000000001BLL;
    v3 = 0x800000010043DA10;
  }

  else
  {
    v3 = 0xEC00000066666F64;
    v4 = 0x6E61486C6C75702ELL;
  }

  v10 = v3;
  String.append(_:)(*&v4);
}

uint64_t sub_100255618(uint64_t a1)
{
  v2 = sub_1002682CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100255654(uint64_t a1)
{
  v2 = sub_1002682CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002556AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10025573C(uint64_t a1)
{
  v2 = sub_100268320();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100255778(uint64_t a1)
{
  v2 = sub_100268320();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1002557BC()
{
  v1 = 0x647261646E617473;
  v2 = 0x6963657053707061;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x7365536F69647561;
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

uint64_t sub_10025584C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002680B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100255880(uint64_t a1)
{
  v2 = sub_100268224();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002558BC(uint64_t a1)
{
  v2 = sub_100268224();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002558F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010043DDF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10025598C(uint64_t a1)
{
  v2 = sub_100268278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002559C8(uint64_t a1)
{
  v2 = sub_100268278();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100255A04@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100255A34(uint64_t a1)
{
  v2 = sub_100268374();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100255A70(uint64_t a1)
{
  v2 = sub_100268374();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HostedItemType.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v34 = a2;
  v35 = a4;
  v33 = a3;
  v5 = sub_1001BC5A8(&qword_100523AC0, &qword_100451988);
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v30 = &v24 - v6;
  v7 = sub_1001BC5A8(&qword_100523AC8, &qword_100451990);
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v27 = &v24 - v8;
  v9 = sub_1001BC5A8(&qword_100523AD0, &qword_100451998);
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = sub_1001BC5A8(&qword_100523AD8, &qword_1004519A0);
  v24 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = sub_1001BC5A8(&qword_100523AE0, &qword_1004519A8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_1000326D8(a1, a1[3]);
  sub_100268224();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v35 <= 1u)
  {
    if (!v35)
    {
      v37 = 1;
      sub_100268320();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v19 = v26;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v25 + 8))(v11, v19);
      return (*(v16 + 8))(v18, v15);
    }

    v38 = 2;
    sub_1002682CC();
    v20 = v27;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v29;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v28;
LABEL_7:
    (*(v22 + 8))(v20, v21);
    return (*(v16 + 8))(v18, v15);
  }

  if (v35 == 2)
  {
    v39 = 3;
    sub_100268278();
    v20 = v30;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v31;
    goto LABEL_7;
  }

  v36 = 0;
  sub_100268374();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v24 + 8))(v14, v12);
  return (*(v16 + 8))(v18, v15);
}

void HostedItemType.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a2;
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      Hasher._combine(_:)(0);
      return;
    }

    v5 = 3;
  }

  else
  {
    if (!a4)
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v4);
      return;
    }

    v5 = 2;
  }

  Hasher._combine(_:)(v5);

  String.hash(into:)();
}

Swift::Int HostedItemType.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a1;
  Hasher.init(_seed:)();
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      Hasher._combine(_:)(0);
      return Hasher._finalize()();
    }

    v5 = 3;
    goto LABEL_7;
  }

  if (a3)
  {
    v5 = 2;
LABEL_7:
    Hasher._combine(_:)(v5);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t HostedItemType.init(from:)(void *a1)
{
  result = sub_1002683C8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_1002560E8()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      Hasher._combine(_:)(0);
      return Hasher._finalize()();
    }

    v3 = 3;
    goto LABEL_7;
  }

  if (v2)
  {
    v3 = 2;
LABEL_7:
    Hasher._combine(_:)(v3);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100256198(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) != 2)
    {
      Hasher._combine(_:)(0);
      return;
    }

    v3 = 3;
  }

  else
  {
    if (!*(v1 + 16))
    {
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v2);
      return;
    }

    v3 = 2;
  }

  Hasher._combine(_:)(v3);

  String.hash(into:)();
}

uint64_t sub_100256240@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1002683C8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

BOOL sub_1002562E4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (a3 >> 8) & 6 | (a3 >> 7) & 1;
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      return 1;
    }

    if (v3 != 2)
    {
      return 0;
    }

LABEL_7:
    v4 = a3 >> 11;
    return v4 == 1 || v4 == 17 && a1 == 7 && !a2 && (a3 & 0xF97F) == 0x8800;
  }

  if (v3 == 3)
  {
    return 1;
  }

  if (v3 == 4)
  {
    goto LABEL_7;
  }

  return 0;
}

void sub_10025636C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = (a4 >> 8) & 6 | (a4 >> 7) & 1;
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

LABEL_15:
      Hasher._combine(_:)(v9);

      sub_1002570A4(a1, a2, a3, a4 & 0xFFFFF97F);
      return;
    }

    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = *(a2 + 32);
    Hasher._combine(_:)(0);
    sub_1002570A4(a1, v10, v11, v12);

    String.hash(into:)();
  }

  else
  {
    if (v8 <= 4)
    {
      if (v8 == 3)
      {
        v9 = 3;
      }

      else
      {
        v9 = 4;
      }

      goto LABEL_15;
    }

    if (v8 == 5)
    {
      v9 = 5;
      goto LABEL_15;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = *(a2 + 32);
    Hasher._combine(_:)(6uLL);
    if ((~v15 & 0x6FE) != 0)
    {
      Hasher._combine(_:)(1uLL);
      sub_10001DAE0(v13, v14, v15);
      sub_10025636C(a1, v13, v14, v15);

      sub_100248970(v13, v14, v15);
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }
}

uint64_t sub_100256580(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if ((~a3 & 0x6FE) == 0)
  {
    return 0x6E61486C6C75702ELL;
  }

  _StringGuts.grow(_:)(30);

  v7._countAndFlagsBits = sub_10002BF18(a1, a2, a3);
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD00000000000001BLL;
}

Swift::Int sub_100256658()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if ((~v3 & 0x6FE) != 0)
  {
    Hasher._combine(_:)(1uLL);
    sub_10025636C(v5, v1, v2, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1002566D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  if ((~v3 & 0x6FE) != 0)
  {
    v5 = *v1;
    v4 = *(v1 + 8);
    Hasher._combine(_:)(1uLL);

    sub_10025636C(a1, v5, v4, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100256768(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  if ((~v4 & 0x6FE) != 0)
  {
    Hasher._combine(_:)(1uLL);
    sub_10025636C(v6, v2, v3, v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1002567F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = v3 & 0x6FE;
  if ((~v2 & 0x6FE) == 0)
  {
    return v4 == 1790;
  }

  if (v4 == 1790)
  {
    return 0;
  }

  return sub_1000184A4(*a1, *(a1 + 8), v2, *a2, *(a2 + 8), v3);
}

BOOL sub_10025683C(uint64_t a1, uint64_t a2)
{
  v2._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String.hasPrefix(_:)(v2);

  return v3;
}

BOOL sub_100256898(uint64_t a1, uint64_t a2)
{
  v2._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String.hasPrefix(_:)(v2);

  if (v3)
  {
    return 1;
  }

  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = String.hasPrefix(_:)(v5);

  return v6;
}

uint64_t sub_10025692C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = (v3 >> 8) & 6 | (v3 >> 7) & 1;
  if (v4 <= 2)
  {
    if (!v4)
    {
      v5 = *(v1 + 32);
      v7 = v1 + 16;
      v1 = *(v1 + 16);
      v2 = *(v7 + 8);
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v4 <= 4)
  {
LABEL_5:
    v5 = v3 & 0xF97F;
    goto LABEL_6;
  }

  if (v4 != 5)
  {
    return 0;
  }

  v5 = v3 & 0xF97F;
LABEL_6:
  sub_10001CFE8(v1, v2, v5);
  return v1;
}

uint64_t sub_1002569DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

Swift::Int sub_1002569EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_10025636C(v5, v1, v2, v3);
  return Hasher._finalize()();
}

void sub_100256A64(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  String.hash(into:)();

  sub_10025636C(a1, v3, v4, v5);
}

Swift::Int sub_100256ABC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_10025636C(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_100256B30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  String.append(_:)(*v0);
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_10002BF18(v1, v2, v3);
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 40;
}

uint64_t sub_100256BC4(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_1000184A4(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100256C6C(char a1, uint64_t a2, unsigned __int16 a3)
{
  v3 = a3 >> 11;
  v4 = HIBYTE(a3) & 1;
  if (v3 != 1)
  {
    LOBYTE(v4) = 0;
  }

  if (v3 == 4)
  {
    LOBYTE(v4) = a1;
  }

  if (v3 == 5)
  {
    LOBYTE(v4) = a1;
  }

  return v4 & 1;
}

BOOL sub_100256C98(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v3 = a3 >> 11;
  if ((v3 - 2) < 2 || v3 == 15)
  {
    return 1;
  }

  return v3 == 17 && a1 == 10 && !a2 && a3 == 34816;
}

uint64_t sub_100256D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingItem.Action.Kind();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_100017F84(&qword_100524210, &type metadata accessor for RoutingItem.Action.Kind, &protocol conformance descriptor for RoutingItem.Action.Kind);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100256F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 20)
    {
      v6 = *(i - 2);
      v5 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 1);
      v13 = *(v3 - 2);
      v9 = *v3;
      v10 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      sub_10001DAE0(v6, v5, v7);

      sub_10001DAE0(v13, v8, v9);
      v12 = sub_1000184A4(v6, v5, v7, v13, v8, v9);

      sub_100019550(v13, v8, v9);

      sub_100019550(v6, v5, v7);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 20;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1002570A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  while (2)
  {
    switch(a4 >> 11)
    {
      case 1:
        Hasher._combine(_:)(2uLL);
        if (a3)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        Hasher._combine(_:)(a4 & 1);
        v9 = (a4 >> 8) & 1;
        goto LABEL_51;
      case 2:
        Hasher._combine(_:)(3uLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 3:
        Hasher._combine(_:)(4uLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 4:
        v10 = 5;
        goto LABEL_32;
      case 5:
        v10 = 6;
LABEL_32:
        Hasher._combine(_:)(v10);
        LOBYTE(v9) = a2 & 1;
        goto LABEL_51;
      case 6:
        Hasher._combine(_:)(0xDuLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 7:
        Hasher._combine(_:)(0xEuLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 8:
        v24 = *(a2 + 16);
        Hasher._combine(_:)(0x10uLL);
        Hasher._combine(_:)(*(v24 + 16));
        v25 = *(v24 + 16);
        if (v25)
        {
          v26 = (v24 + 64);
          do
          {
            v27 = *(v26 - 2);
            v28 = *(v26 - 1);
            v29 = *v26;
            v26 += 20;

            sub_10001DAE0(v27, v28, v29);
            String.hash(into:)();
            sub_10001DAE0(v27, v28, v29);
            sub_10025636C(a1, v27, v28, v29);

            sub_100019550(v27, v28, v29);
            sub_100019550(v27, v28, v29);
            --v25;
          }

          while (v25);
        }

        return;
      case 9:
        v11 = *(a2 + 16);
        v12 = *(a2 + 24);
        Hasher._combine(_:)(0x11uLL);
        Hasher._combine(_:)(*(v11 + 16));
        v13 = *(v11 + 16);
        if (v13)
        {
          v14 = (v11 + 64);
          do
          {
            v15 = *(v14 - 2);
            v16 = *(v14 - 1);
            v17 = *v14;
            v14 += 20;

            sub_10001DAE0(v15, v16, v17);
            String.hash(into:)();
            sub_10001DAE0(v15, v16, v17);
            sub_10025636C(a1, v15, v16, v17);

            sub_100019550(v15, v16, v17);
            sub_100019550(v15, v16, v17);
            --v13;
          }

          while (v13);
        }

        goto LABEL_40;
      case 10:
        v18 = *(a2 + 16);
        v12 = *(a2 + 24);
        Hasher._combine(_:)(0x12uLL);
        Hasher._combine(_:)(*(v18 + 16));
        v19 = *(v18 + 16);
        if (v19)
        {
          v20 = (v18 + 64);
          do
          {
            v21 = *(v20 - 2);
            v22 = *(v20 - 1);
            v23 = *v20;
            v20 += 20;

            sub_10001DAE0(v21, v22, v23);
            String.hash(into:)();
            sub_10001DAE0(v21, v22, v23);
            sub_10025636C(a1, v21, v22, v23);

            sub_100019550(v21, v22, v23);
            sub_100019550(v21, v22, v23);
            --v19;
          }

          while (v19);
        }

LABEL_40:
        LOBYTE(v9) = v12;
        goto LABEL_51;
      case 11:
        Hasher._combine(_:)(0x15uLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 12:
        Hasher._combine(_:)(0x16uLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 13:
        Hasher._combine(_:)(0x17uLL);
        if (!a3)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      case 14:
        Hasher._combine(_:)(0x18uLL);
        if (a3)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      case 15:
        Hasher._combine(_:)(0x19uLL);
        if (a3)
        {
LABEL_7:
          Hasher._combine(_:)(1u);
LABEL_8:

          String.hash(into:)();
        }

        else
        {
LABEL_12:
          LOBYTE(v9) = 0;
LABEL_51:
          Hasher._combine(_:)(v9);
        }

        return;
      case 16:
        v8 = *(a2 + 16);
        a3 = *(a2 + 24);
        a4 = *(a2 + 32);
        Hasher._combine(_:)(0x1BuLL);
        a2 = v8;
        continue;
      case 17:
        if (a3 | a2 || a4 != 34816)
        {
          if (a2 == 1 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(7uLL);
          }

          else if (a2 == 2 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(8uLL);
          }

          else if (a2 == 3 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(9uLL);
          }

          else if (a2 == 4 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0xAuLL);
          }

          else if (a2 == 5 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0xBuLL);
          }

          else if (a2 == 6 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0xCuLL);
          }

          else if (a2 == 7 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0xFuLL);
          }

          else if (a2 == 8 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0x13uLL);
          }

          else if (a2 == 9 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0x14uLL);
          }

          else if (a2 == 10 && !a3 && a4 == 34816)
          {
            Hasher._combine(_:)(0x1AuLL);
          }

          else
          {
            Hasher._combine(_:)(0x1CuLL);
          }
        }

        else
        {
          Hasher._combine(_:)(1uLL);
        }

        return;
      default:
        Hasher._combine(_:)(0);
        goto LABEL_8;
    }
  }
}

Swift::Int sub_10025761C(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  Hasher.init(_seed:)();
  a3(v9, v5, v6, v7);
  return Hasher._finalize()();
}

Swift::Int sub_1002576A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  Hasher.init(_seed:)();
  a4(v10, v6, v7, v8);
  return Hasher._finalize()();
}

uint64_t sub_100257778(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_1001BC5A8(&qword_1005241D8, &qword_1004550D0);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for RoutingItem.Properties();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_100017F84(&qword_1005241E0, &type metadata accessor for RoutingItem.Properties, &protocol conformance descriptor for RoutingItem.Properties);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_100017F84(&qword_1005241E8, &type metadata accessor for RoutingItem.Properties, &protocol conformance descriptor for RoutingItem.Properties);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_10003AEF0(v7, v27, &qword_1005241D8, &qword_1004550D0);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_100257A7C(char a1)
{
  switch(a1)
  {
    case 1:
      return 0x74756C6F7362612ELL;
    case 4:
      return 0x6574756D2ELL;
    case 2:
      return 0x766974616C65722ELL;
  }

  if (a1)
  {
    v3 = sub_10002AFD0(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    v6 = v5 + 1;
    if (v5 >= v4 >> 1)
    {
      v21 = sub_10002AFD0((v4 > 1), v5 + 1, 1, v3);
      v6 = v5 + 1;
      v3 = v21;
    }

    *(v3 + 2) = v6;
    v7 = &v3[16 * v5];
    *(v7 + 4) = 7561825;
    *(v7 + 5) = 0xE300000000000000;
    if ((a1 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v3 = _swiftEmptyArrayStorage;
  if ((a1 & 2) != 0)
  {
LABEL_13:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_10002AFD0(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v22 = sub_10002AFD0((v8 > 1), v9 + 1, 1, v3);
      v10 = v9 + 1;
      v3 = v22;
    }

    *(v3 + 2) = v10;
    v11 = &v3[16 * v9];
    *(v11 + 4) = 7103858;
    *(v11 + 5) = 0xE300000000000000;
  }

LABEL_18:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_10002AFD0(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v23 = sub_10002AFD0((v12 > 1), v13 + 1, 1, v3);
      v14 = v13 + 1;
      v3 = v23;
    }

    *(v3 + 2) = v14;
    v15 = &v3[16 * v13];
    *(v15 + 4) = 1702131053;
    *(v15 + 5) = 0xE400000000000000;
  }

  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  sub_10002C150();
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 93;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  return 91;
}

Swift::Int sub_100257D38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100257DB0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL sub_100257E38(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_100257E68@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_100257E94@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_100257F84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_100269804(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100257FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v39 = a1;
  v40 = a2;
  v4 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v35 = &v33 - v5;
  v7 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v38 = 0x800000010043D9D0;
  v10 = static LocalizedStrings.RoutingItem.Title.moveAudio.getter();
  v36 = v11;
  v37 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 1790;
  v13 = enum case for RoutingItem.SelectionIndicator.none(_:);
  v14 = type metadata accessor for RoutingItem.SelectionIndicator();
  v15 = *(v14 - 8);
  v16 = *(v15 + 104);
  v34 = v9;
  v16(v9, v13, v14);
  v17 = *(v15 + 56);
  v17(v9, 0, 1, v14);
  v18 = type metadata accessor for RoutingItem.Attributes();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v20 = type metadata accessor for HostedRoutingItem(0);
  v21 = v20[8];
  v17(&a3[v21], 1, 1, v14);
  v22 = &a3[v20[13]];
  v23 = v20[15];
  v19(&a3[v23], 1, 1, v18);
  *a3 = 0xD000000000000010;
  v24 = v39;
  *(a3 + 1) = v38;
  *(a3 + 2) = v24;
  v25 = v36;
  v26 = v37;
  *(a3 + 3) = v40;
  *(a3 + 4) = v26;
  *(a3 + 5) = v25;
  v27 = &a3[v20[16]];
  *v27 = v12;
  *(v27 + 1) = 0;
  *(v27 + 8) = 1536;
  type metadata accessor for Symbols();

  v29 = sub_10001D08C(v28, 0, 1536);
  v31 = v30;

  *(a3 + 6) = v29;
  *(a3 + 7) = v31;
  a3[v20[9]] = 0;
  a3[v20[10]] = 0;
  sub_10001CECC(v34, &a3[v21], &unk_100524E90, &unk_1004519B0);
  a3[v20[11]] = 0;
  *&a3[v20[12]] = _swiftEmptyArrayStorage;
  a3[v20[17]] = 1;
  *v22 = 0;
  v22[4] = 1;
  a3[v20[14]] = 0;
  return sub_10001CECC(v35, &a3[v23], &qword_100523AE8, &unk_100457500);
}

uint64_t sub_100258314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned __int16 a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, int a17, int a18, char a19, __int16 a20, char a21, uint64_t a22)
{
  v27 = type metadata accessor for HostedRoutingItem(0);
  v28 = v27[8];
  v29 = type metadata accessor for RoutingItem.SelectionIndicator();
  (*(*(v29 - 8) + 56))(&a9[v28], 1, 1, v29);
  v30 = &a9[v27[13]];
  v31 = v27[15];
  v32 = type metadata accessor for RoutingItem.Attributes();
  (*(*(v32 - 8) + 56))(&a9[v31], 1, 1, v32);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  v33 = &a9[v27[16]];
  *v33 = a7;
  *(v33 + 1) = a8;
  *(v33 + 8) = a10;
  type metadata accessor for Symbols();
  sub_10001DAE0(a7, a8, a10);
  v34 = sub_10001D08C(a7, a8, a10);
  v36 = v35;
  sub_100019550(a7, a8, a10);
  *(a9 + 6) = v34;
  *(a9 + 7) = v36;
  a9[v27[9]] = a11;
  a9[v27[10]] = a12;
  sub_10001CECC(a13, &a9[v28], &unk_100524E90, &unk_1004519B0);
  a9[v27[11]] = a14;
  *&a9[v27[12]] = a15;
  a9[v27[17]] = a16;
  *v30 = a18;
  v30[4] = a19 & 1;
  a9[v27[14]] = a21;
  return sub_10001CECC(a22, &a9[v31], &qword_100523AE8, &unk_100457500);
}

uint64_t sub_100258554()
{
  v1 = v0 + *(type metadata accessor for HostedRoutingItem(0) + 64);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = (v4 >> 8) & 6 | (v4 >> 7) & 1;
  if (v5 <= 2)
  {
    if (!v5)
    {
      v6 = *(v2 + 32);
      v8 = v2 + 16;
      v2 = *(v2 + 16);
      v3 = *(v8 + 8);
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v5 <= 4)
  {
LABEL_5:
    v6 = v4 & 0xF97F;
    goto LABEL_6;
  }

  if (v5 != 5)
  {
    return 0;
  }

  v6 = v4 & 0xF97F;
LABEL_6:
  sub_10001CFE8(v2, v3, v6);
  return v2;
}

uint64_t sub_100258614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10026983C();
  if (*(Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)() + 16))
  {

    v4 = static String._fromSubstring(_:)();

    return v4;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1002586E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10026983C();
  if (*(Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)() + 16))
  {

    v4 = static String._fromSubstring(_:)();

    return v4;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1002587B8()
{
  if (v0[3])
  {
    v7 = v0[2];

    v1._countAndFlagsBits = 14906;
    v1._object = 0xE200000000000000;
    String.append(_:)(v1);
    v2 = *v0;
    v3 = v0[1];

    v4._countAndFlagsBits = v2;
    v4._object = v3;
    String.append(_:)(v4);

    return v7;
  }

  else
  {
    v5 = *v0;
  }

  return v5;
}

uint64_t sub_100258968()
{
  if (*v0 == 0xD000000000000013 && 0x800000010043D9F0 == v0[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1002589A8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for HostedRoutingItem(0) + 64);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = (v7 >> 8) & 6 | (v7 >> 7) & 1;
  if ((v8 - 1) >= 5)
  {
    if (v8)
    {
      goto LABEL_13;
    }

    v7 = *(v6 + 32);
    v6 = *(v6 + 16);
  }

  if ((v7 >> 11) - 8 <= 2)
  {
    v9 = *(v6 + 16);
    v10 = (v9 + 40);
    v11 = *(v9 + 16) + 1;
    while (--v11)
    {
      if (*(v10 - 1) != a1 || *v10 != a2)
      {
        v10 += 5;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      return 1;
    }
  }

LABEL_13:
  if (*v2 == a1 && v2[1] == a2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100258AB4(uint64_t a1)
{
  v3 = type metadata accessor for RoutingItem.Attributes();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  __chkstk_darwin(v5 - 8);
  v38 = &v35 - v6;
  v7 = type metadata accessor for RoutingItem.Action.Kind();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RoutingItem.SelectionIndicator();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v42 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  String.hash(into:)();
  if (*(v1 + 3))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  v16 = type metadata accessor for HostedRoutingItem(0);
  sub_10001D9AC(&v1[v16[8]], v15, &unk_100524E90, &unk_1004519B0);
  if ((*(v11 + 48))(v15, 1, v10) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v17 = v42;
    (*(v11 + 32))(v42, v15, v10);
    Hasher._combine(_:)(1u);
    sub_100017F84(&qword_100523AF8, &type metadata accessor for RoutingItem.SelectionIndicator, &protocol conformance descriptor for RoutingItem.SelectionIndicator);
    dispatch thunk of Hashable.hash(into:)();
    (*(v11 + 8))(v17, v10);
  }

  Hasher._combine(_:)(v1[v16[9]]);
  Hasher._combine(_:)(v1[v16[10]]);
  Hasher._combine(_:)(v1[v16[11]]);
  v41 = v16;
  v42 = v1;
  v18 = *&v1[v16[12]];
  Hasher._combine(_:)(*(v18 + 16));
  v19 = *(v18 + 16);
  v20 = a1;
  if (v19)
  {
    v21 = *(v37 + 16);
    v22 = v18 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v23 = *(v37 + 72);
    v24 = (v37 + 8);
    do
    {
      v21(v9, v22, v7);
      sub_100017F84(&qword_100523B00, &type metadata accessor for RoutingItem.Action.Kind, &protocol conformance descriptor for RoutingItem.Action.Kind);
      dispatch thunk of Hashable.hash(into:)();
      (*v24)(v9, v7);
      v22 += v23;
      --v19;
    }

    while (v19);
  }

  v26 = v41;
  v25 = v42;
  v27 = &v42[v41[13]];
  if (v27[4])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v28 = *v27;
    Hasher._combine(_:)(1u);
    if ((v28 & 0x7FFFFFFF) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v25 = v42;
    Hasher._combine(_:)(v29);
  }

  v31 = v39;
  v30 = v40;
  v32 = v38;
  Hasher._combine(_:)(v25[v26[14]]);
  sub_10001D9AC(&v25[v26[15]], v32, &qword_100523AE8, &unk_100457500);
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v33 = v36;
    (*(v31 + 32))(v36, v32, v30);
    Hasher._combine(_:)(1u);
    sub_100017F84(&qword_100523B08, &type metadata accessor for RoutingItem.Attributes, &protocol conformance descriptor for RoutingItem.Attributes);
    dispatch thunk of Hashable.hash(into:)();
    v34 = v33;
    v26 = v41;
    (*(v31 + 8))(v34, v30);
  }

  sub_10025636C(v20, *&v25[v26[16]], *&v25[v26[16] + 8], *&v25[v26[16] + 16]);
  Hasher._combine(_:)(v25[v26[17]]);
}

uint64_t sub_1002590E8(uint64_t a1)
{
  v2 = type metadata accessor for RoutingItem.Properties();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  RoutingItem.Properties.init(rawValue:)();
  v9 = type metadata accessor for HostedRoutingItem(0);
  if (*(a1 + *(v9 + 68)) == 1)
  {
    static RoutingItem.Properties.representsLocal.getter();
    sub_100257778(v8, v6);
    v10 = *(v3 + 8);
    v10(v6, v2);
    v10(v8, v2);
  }

  if (*(a1 + *(v9 + 40)) != 1)
  {
    return sub_10002181C(a1, type metadata accessor for HostedRoutingItem);
  }

  static RoutingItem.Properties.isPlaying.getter();
  sub_100257778(v8, v6);
  sub_10002181C(a1, type metadata accessor for HostedRoutingItem);
  v11 = *(v3 + 8);
  v11(v6, v2);
  return (v11)(v8, v2);
}

uint64_t sub_1002592C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for RoutingItem.Properties();
  __chkstk_darwin(v3 - 8);
  v65 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  __chkstk_darwin(v5 - 8);
  v64 = v62 - v6;
  v7 = type metadata accessor for HostedRoutingItem(0);
  __chkstk_darwin(v7);
  v63 = (v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for RoutingControls();
  __chkstk_darwin(v9 - 8);
  v62[1] = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for RoutingItem.Action();
  v11 = *(v80 - 8);
  v12 = __chkstk_darwin(v80);
  v73 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v87 = v62 - v14;
  v15 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  __chkstk_darwin(v15 - 8);
  v17 = v62 - v16;
  v18 = type metadata accessor for RoutingItem.Action.Kind();
  v19 = __chkstk_darwin(v18);
  v72 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v86 = v62 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = v62 - v24;
  __chkstk_darwin(v23);
  v28 = v62 - v26;
  v68 = v7;
  v29 = *(a1 + *(v7 + 48));
  v30 = *(v29 + 16);
  v67 = v17;
  if (v30)
  {
    v32 = *(v27 + 16);
    v31 = v27 + 16;
    v33 = (v29 + ((*(v31 + 64) + 32) & ~*(v31 + 64)));
    v84 = *(v31 + 56);
    v83 = (v31 + 72);
    LODWORD(v82) = enum case for RoutingItem.Action.Kind.shareAudio(_:);
    v70 = enum case for RoutingItem.Action.Kind.remoteControl(_:);
    v81 = (v31 - 8);
    v69 = ".remoteControlGroupSession(";
    v75 = v11 + 32;
    v34 = _swiftEmptyArrayStorage;
    v85 = a1;
    v78 = v31;
    v79 = v11;
    v35 = v32;
    v76 = v32;
    v77 = v62 - v26;
    v71 = v25;
    v32(v28, v33, v18);
    while (1)
    {
      v35(v25, v28, v18);
      v36 = (*v83)(v25, v18);
      if (v36 == v82)
      {
        break;
      }

      if (v36 == v70)
      {
        v74 = v34;
        static LocalizedStrings.RoutingItem.Action.remoteControl.getter();
        v35(v72, v28, v18);
        v42 = a1[3];
        if (v42)
        {
          v88 = a1[2];
          v89 = v42;

          v43._countAndFlagsBits = 14906;
          v43._object = 0xE200000000000000;
          String.append(_:)(v43);
          v44 = *a1;
          v45 = a1[1];

          v46._countAndFlagsBits = v44;
          v46._object = v45;
          String.append(_:)(v46);
        }

        else
        {
        }

        RoutingItem.Action.init(title:symbolName:kind:itemIdentifier:)();
        v34 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_100032F14(0, v34[2] + 1, 1, v34, &qword_1005241D0, &qword_1004550C8, &type metadata accessor for RoutingItem.Action);
        }

        a1 = v85;
        v51 = v79;
        v28 = v77;
        v53 = v34[2];
        v52 = v34[3];
        if (v53 >= v52 >> 1)
        {
          v34 = sub_100032F14((v52 > 1), v53 + 1, 1, v34, &qword_1005241D0, &qword_1004550C8, &type metadata accessor for RoutingItem.Action);
        }

        (*v81)(v28, v18);
        v34[2] = v53 + 1;
        (*(v51 + 32))(v34 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v53, v73, v80);
        goto LABEL_4;
      }

      v47 = *v81;
      (*v81)(v28, v18);
      v47(v25, v18);
      a1 = v85;
LABEL_5:
      v33 += v84;
      if (!--v30)
      {
        goto LABEL_26;
      }

      v35(v28, v33, v18);
    }

    static LocalizedStrings.RoutingItem.Action.shareAudio.getter();
    v35(v86, v28, v18);
    v37 = a1[3];
    if (v37)
    {
      v88 = a1[2];
      v89 = v37;

      v38._countAndFlagsBits = 14906;
      v38._object = 0xE200000000000000;
      String.append(_:)(v38);
      v39 = *a1;
      v40 = a1[1];

      v41._countAndFlagsBits = v39;
      v41._object = v40;
      String.append(_:)(v41);
    }

    else
    {
    }

    RoutingItem.Action.init(title:symbolName:kind:itemIdentifier:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_100032F14(0, v34[2] + 1, 1, v34, &qword_1005241D0, &qword_1004550C8, &type metadata accessor for RoutingItem.Action);
    }

    a1 = v85;
    v48 = v79;
    v25 = v71;
    v28 = v77;
    v50 = v34[2];
    v49 = v34[3];
    if (v50 >= v49 >> 1)
    {
      v34 = sub_100032F14((v49 > 1), v50 + 1, 1, v34, &qword_1005241D0, &qword_1004550C8, &type metadata accessor for RoutingItem.Action);
    }

    (*v81)(v28, v18);
    v34[2] = v50 + 1;
    (*(v48 + 32))(v34 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50, v87, v80);
LABEL_4:
    v35 = v76;
    goto LABEL_5;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_26:
  v74 = v34;
  v54 = *a1;
  v86 = a1[2];
  v87 = v54;
  v55 = a1[4];
  v83 = a1[6];
  v84 = v55;
  v56 = v68;
  v57 = v67;
  sub_10001D9AC(a1 + *(v68 + 32), v67, &unk_100524E90, &unk_1004519B0);
  v58 = type metadata accessor for RoutingItem.SelectionIndicator();
  result = (*(*(v58 - 8) + 48))(v57, 1, v58);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v60 = (a1 + *(v56 + 52));
    v82 = *v60;
    LODWORD(v81) = *(v60 + 4);
    v61 = v63;
    sub_10003271C(a1, v63, type metadata accessor for HostedRoutingItem);

    sub_100259CC4(v61);
    sub_10001D9AC(a1 + *(v56 + 60), v64, &qword_100523AE8, &unk_100457500);
    sub_10003271C(a1, v61, type metadata accessor for HostedRoutingItem);
    sub_1002590E8(v61);
    LOBYTE(v88) = v81;
    RoutingItem.init(identifier:scopeIdentifier:title:symbolName:selectionIndicator:volume:controls:attributes:actions:properties:)();
    return sub_10002181C(a1, type metadata accessor for HostedRoutingItem);
  }

  return result;
}

uint64_t sub_100259CC4(uint64_t *a1)
{
  v2 = sub_1001BC5A8(&qword_100523B10, &qword_1004519D8);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  v5 = sub_1001BC5A8(&qword_100523B18, &unk_1004519E0);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  RoutingControls.init()();
  v8 = *(a1 + *(type metadata accessor for HostedRoutingItem(0) + 56));
  v9 = a1[3];
  if (v9)
  {
    v17[0] = a1[2];
    v17[1] = v9;

    v10._countAndFlagsBits = 14906;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11 = *a1;
    v12 = a1[1];

    v13._countAndFlagsBits = v11;
    v13._object = v12;
    String.append(_:)(v13);

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v8)
  {
LABEL_3:

    RoutingControls.AbsoluteVolumeControl.init(itemIdentifier:)();
    v14 = type metadata accessor for RoutingControls.AbsoluteVolumeControl();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
    RoutingControls.absoluteVolume.setter();
  }

LABEL_4:
  if ((v8 & 2) != 0)
  {
    RoutingControls.RelativeVolumeControl.init(itemIdentifier:)();
    v16 = type metadata accessor for RoutingControls.RelativeVolumeControl();
    (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
    RoutingControls.relativeVolume.setter();
    return sub_10002181C(a1, type metadata accessor for HostedRoutingItem);
  }

  else
  {
    sub_10002181C(a1, type metadata accessor for HostedRoutingItem);
  }
}

uint64_t sub_100259F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

Swift::Int sub_100259F64()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_100259FD4(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1uLL);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10025A04C(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_10025A0B8()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x6C61636F6C2ELL;
  }

  v2 = *v0;
  String.append(_:)(*(&v1 - 1));
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x6E696F70646E652ELL;
}

uint64_t sub_10025A134(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

void sub_10025A190(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v75 = a6;
  v74 = a5;
  v72 = a4;
  v89 = a3;
  v83 = a2;
  v84 = a1;
  v79 = a7;
  v73 = type metadata accessor for HostedRoutingSourceSession(0);
  __chkstk_darwin(v73);
  v8 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for RoutingControls();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v87 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Date();
  v88 = *(v76 - 8);
  __chkstk_darwin(v76);
  v86 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v11 - 8);
  v85 = &v65 - v12;
  v13 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo.ExtendedInfo();
  __chkstk_darwin(v13 - 8);
  v81 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType();
  v17 = *(v80 - 8);
  __chkstk_darwin(v80);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v70 = *(v66 - 8);
  __chkstk_darwin(v66);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018D7C(0, &qword_100523B28, MRDeviceInfo_ptr);
  v82 = sub_100018D1C();
  v28 = [v89 discoveredIsPlaying];
  v29 = &enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:);
  if (!v28)
  {
    v29 = &enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.paused(_:);
  }

  (*(v21 + 104))(v23, *v29, v20);
  (*(v17 + 104))(v19, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackType.live(_:), v80);
  RoutingSession.NowPlayingInfo.PlaybackInfo.init(playbackState:playbackType:)();
  v30 = v81;
  default argument 6 of RoutingSession.NowPlayingInfo.TrackInfo.init(title:album:artist:composer:station:attribution:extendedInfo:)();
  v63 = v30;
  v61 = 0u;
  v62 = 0u;
  RoutingSession.NowPlayingInfo.TrackInfo.init(title:album:artist:composer:station:attribution:extendedInfo:)();
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10044EC70;
  v32 = [objc_opt_self() mainBundle];
  v33 = [v32 bundleIdentifier];

  if (v33)
  {
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *(v31 + 32) = v34;
    *(v31 + 40) = v36;
    *(v27 + 1) = 0u;
    *(v27 + 2) = 0u;
    *v27 = 0u;
    v37 = v66;
    (*(v67 + 32))(&v27[*(v66 + 36)], v25, v68);
    v38 = (*(v69 + 32))(&v27[*(v37 + 40)], v16, v71);
    v39 = &v27[*(v37 + 44)];
    *v39 = 0;
    *(v39 + 1) = 0;
    *(v39 + 4) = 33686018;
    *(v27 + 8) = 0;
    *(v27 + 6) = v31;
    *(v27 + 14) = 0;
    v27[60] = 4;
    __chkstk_darwin(v38);
    *&v62 = v84;
    *(&v62 + 1) = v83;
    v63 = v27;
    v64 = v82;
    v40 = v72;
    v80 = sub_10025B178(sub_100269890, &v61, v72);
    v81 = v27;
    v41 = v85;
    sub_10003271C(v27, v85, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v42 = *(v70 + 56);
    v42(v41, 0, 1, v37);
    v43 = v86;
    static Date.distantPast.getter();
    v44 = v89;
    LODWORD(v71) = [v89 supportsVisualProxyGroupPlayer];
    v89 = v44;
    sub_1002698C0(v89, v40, v90);
    v45 = v87;
    RoutingControls.init()();
    v46 = v73;
    v47 = *(v73 + 28);
    v42(v8 + v47, 1, 1, v37);
    v48 = (v8 + v46[9]);
    *v48 = 0;
    v48[1] = 0;
    v49 = v8 + v46[10];
    v50 = v8 + v46[15];
    *(v50 + 80) = 0;
    *(v50 + 48) = 0u;
    *(v50 + 64) = 0u;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 0u;
    *v50 = 0u;
    v51 = v83;
    *v8 = v84;
    v8[1] = v51;
    v52 = v80;
    v8[4] = v80;
    v53 = v52;

    sub_10026A0EC(v41, v8 + v47);
    v54 = v76;
    (*(v88 + 16))(v8 + v46[18], v43, v76);
    *(v8 + v46[11]) = 1;
    *(v8 + v46[12]) = 1;
    *(v8 + v46[13]) = 1;
    *(v8 + v46[14]) = v71;
    *(v8 + v46[16]) = 0;
    *(v8 + v46[17]) = 0;
    *v49 = 0;
    v49[4] = 1;
    v55 = v77;
    v56 = v78;
    (*(v77 + 16))(v8 + v46[8], v45, v78);
    sub_10001CECC(v90, v50, &qword_100523B20, &unk_1004519F0);
    v57 = v75;
    v8[2] = v74;
    v8[3] = v57;
    if (*(v53 + 16))
    {
      type metadata accessor for Symbols();
      v58 = sub_100030BB8(v53);
      v60 = v59;

      (*(v55 + 8))(v87, v56);
      (*(v88 + 8))(v86, v54);
      sub_1000038A4(v85, &qword_100523640, qword_100451520);
      *v48 = v58;
      v48[1] = v60;
    }

    else
    {

      (*(v55 + 8))(v87, v56);
      (*(v88 + 8))(v86, v54);
      sub_1000038A4(v85, &qword_100523640, qword_100451520);
    }

    sub_100032E08(v8, v79, type metadata accessor for HostedRoutingSourceSession);
    sub_10002181C(v81, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10025ABF8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v69 = a4;
  v70 = a5;
  v71 = a2;
  v9 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  __chkstk_darwin(v9 - 8);
  v11 = &v59 - v10;
  v12 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  __chkstk_darwin(v12 - 8);
  v72 = &v59 - v13;
  v14 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v59 - v19;
  v21 = *a1;
  v22 = [*a1 uid];
  if (v22)
  {
    v23 = v22;
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    v26 = [v21 name];
    if (v26)
    {
      v66 = v25;
      v67 = a3;
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v29;

      v30 = sub_100018E6C();
      v64 = v31;
      v65 = v30;
      v63 = v32;
      type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
      RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
      (*(v15 + 104))(v18, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v14);
      LODWORD(v69) = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
      v33 = *(v15 + 8);
      v33(v18, v14);
      v33(v20, v14);
      v34 = type metadata accessor for RoutingItem.SelectionIndicator();
      v35 = *(*(v34 - 8) + 56);
      v35(v72, 1, 1, v34);
      v61 = sub_10001CB30();
      LOBYTE(v33) = [v70 matchesUID:v23];

      v36 = 1;
      if ((v33 & 1) == 0)
      {
        v37 = sub_100018E6C();
        v36 = ((v38 >> 8) & 6 | (v38 >> 7) & 1) == 5;
        sub_100019550(v37, v39, v38);
      }

      LODWORD(v70) = v36;
      sub_10001C1E0(v11);
      v40 = type metadata accessor for RoutingItem.Attributes();
      v41 = *(*(v40 - 8) + 56);
      v60 = v11;
      v41(v11, 0, 1, v40);
      v42 = type metadata accessor for HostedRoutingItem(0);
      v43 = v42[8];
      v35(a6 + v43, 1, 1, v34);
      v44 = a6 + v42[13];
      v45 = v42[15];
      v41(a6 + v45, 1, 1, v40);
      v46 = v67;
      v48 = v65;
      v47 = v66;
      *a6 = v68;
      a6[1] = v47;
      a6[2] = v71;
      a6[3] = v46;
      v49 = v62;
      a6[4] = v28;
      a6[5] = v49;
      v50 = a6 + v42[16];
      v51 = v64;
      *v50 = v48;
      *(v50 + 1) = v51;
      v52 = v63;
      *(v50 + 8) = v63;
      type metadata accessor for Symbols();

      sub_10001DAE0(v48, v51, v52);
      v53 = sub_10001D08C(v48, v51, v52);
      v55 = v54;
      sub_100019550(v48, v51, v52);
      a6[6] = v53;
      a6[7] = v55;
      *(a6 + v42[9]) = 1;
      *(a6 + v42[10]) = v69 & 1;
      sub_10001CECC(v72, a6 + v43, &unk_100524E90, &unk_1004519B0);
      *(a6 + v42[11]) = v61;
      *(a6 + v42[12]) = _swiftEmptyArrayStorage;
      *(a6 + v42[17]) = v70;
      *v44 = 0;
      v44[4] = 1;
      *(a6 + v42[14]) = 0;
      sub_10001CECC(v60, a6 + v45, &qword_100523AE8, &unk_100457500);
      return (*(*(v42 - 1) + 56))(a6, 0, 1, v42);
    }
  }

  v57 = type metadata accessor for HostedRoutingItem(0);
  v58 = *(*(v57 - 8) + 56);

  return v58(a6, 1, 1, v57);
}

void *sub_10025B178(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v5 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for HostedRoutingItem(0);
  v25 = *(v30 - 8);
  v8 = __chkstk_darwin(v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = _swiftEmptyArrayStorage;
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_1000038A4(v7, &qword_100523C18, &qword_100451AF0);
      }

      else
      {
        v18 = v24;
        sub_100032E08(v7, v24, type metadata accessor for HostedRoutingItem);
        sub_100032E08(v18, v29, type metadata accessor for HostedRoutingItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100032F14(0, v14[2] + 1, 1, v14, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_100032F14((v19 > 1), v20 + 1, 1, v14, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
        }

        v14[2] = v20 + 1;
        sub_100032E08(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for HostedRoutingItem);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return _swiftEmptyArrayStorage;
}

double sub_10025B508@<D0>(uint64_t a1@<X8>, void *a2@<X0>, unint64_t a3@<X1>)
{
  sub_1002698C0(a2, a3, v7);
  v4 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  return result;
}

uint64_t sub_10025B560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, char a10, char a11, char a12, int a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v24 = type metadata accessor for HostedRoutingSourceSession(0);
  v25 = v24[7];
  v26 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  (*(*(v26 - 8) + 56))(&a9[v25], 1, 1, v26);
  v27 = &a9[v24[9]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v40 = v27;
  v28 = &a9[v24[10]];
  v29 = &a9[v24[15]];
  *(v29 + 10) = 0;
  *(v29 + 3) = 0u;
  *(v29 + 4) = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 2) = 0u;
  *v29 = 0u;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 4) = a3;

  sub_10026A0EC(a4, &a9[v25]);
  v30 = v24[18];
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  (*(v32 + 16))(&a9[v30], a5, v31);
  a9[v24[11]] = a6;
  a9[v24[12]] = a7;
  a9[v24[13]] = a8;
  a9[v24[14]] = a10;
  a9[v24[16]] = a11;
  a9[v24[17]] = a12;
  *v28 = a14;
  v28[4] = a15 & 1;
  v33 = v24[8];
  v34 = type metadata accessor for RoutingControls();
  v35 = *(v34 - 8);
  (*(v35 + 16))(&a9[v33], a16, v34);
  sub_10001CECC(a17, v29, &qword_100523B20, &unk_1004519F0);
  *(a9 + 2) = a18;
  *(a9 + 3) = a19;
  if (*(a3 + 16))
  {
    type metadata accessor for Symbols();
    v36 = sub_100030BB8(a3);
    v38 = v37;

    (*(v35 + 8))(a16, v34);
    (*(v32 + 8))(a5, v31);
    result = sub_1000038A4(a4, &qword_100523640, qword_100451520);
    *v40 = v36;
    v40[1] = v38;
  }

  else
  {

    (*(v35 + 8))(a16, v34);
    (*(v32 + 8))(a5, v31);
    return sub_1000038A4(a4, &qword_100523640, qword_100451520);
  }

  return result;
}

uint64_t sub_10025B89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v121 = a8;
  v120 = a7;
  v119 = a6;
  v132 = a5;
  v117 = a4;
  v125 = a2;
  v124 = a1;
  v122 = a9;
  v118 = type metadata accessor for HostedRoutingSourceSession(0);
  __chkstk_darwin(v118);
  v131 = (&v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1001BC5A8(&qword_100523B30, &qword_100451A00);
  __chkstk_darwin(v12 - 8);
  v111 = &v105 - v13;
  v14 = sub_1001BC5A8(&qword_100523B38, &qword_100451A08);
  __chkstk_darwin(v14 - 8);
  v112 = &v105 - v15;
  v130 = type metadata accessor for RoutingControls();
  v127 = *(v130 - 8);
  v16 = __chkstk_darwin(v130);
  v128 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v129 = &v105 - v18;
  v19 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  __chkstk_darwin(v19 - 8);
  v21 = &v105 - v20;
  v133 = type metadata accessor for Date();
  v22 = *(v133 - 8);
  v23 = __chkstk_darwin(v133);
  v126 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v105 - v26;
  __chkstk_darwin(v25);
  v29 = &v105 - v28;
  v30 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v31 = __chkstk_darwin(v30 - 8);
  v135 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v105 - v34;
  __chkstk_darwin(v33);
  v37 = (&v105 - v36);
  sub_100018D7C(0, &qword_100523B28, MRDeviceInfo_ptr);
  v134 = sub_100018D1C();
  v38 = [a3 origin];
  v39 = [objc_opt_self() server];
  v40 = [v39 nowPlayingServer];

  v116 = v38;
  v41 = [v40 originClientForOrigin:v38];

  v42 = [v41 activeNowPlayingClient];
  v43 = [v42 activePlayerClient];

  v44 = v41;
  v123 = v43;
  v136 = v37;
  sub_100026A90(v41, v43, v37);
  LODWORD(v113) = [a3 canModifyGroupMembership];
  if ([a3 isGroupLeaderGroupable])
  {
    v114 = 0;
  }

  else
  {
    v114 = [a3 isMyDiscoverableUndiscoverableGroupLeader];
  }

  v45 = v133;
  v115 = v44;
  if (v44)
  {
    v46 = [v44 lastPlayingDateSnapshot];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = *(v22 + 4);
    v47(v21, v27, v45);
    (*(v22 + 7))(v21, 0, 1, v45);
    v48 = v29;
    v47(v29, v21, v45);
    v49 = v129;
  }

  else
  {
    (*(v22 + 7))(v21, 1, 1, v133);
    v48 = v29;
    static Date.distantPast.getter();
    v50 = (*(v22 + 6))(v21, 1, v45);
    v49 = v129;
    if (v50 != 1)
    {
      sub_1000038A4(v21, &qword_1005228D8, &unk_100450060);
    }
  }

  v51 = v124;
  if (v123 && (v52 = [v123 supportedRemoteControlCommands]) != 0)
  {
    v53 = v52;
    v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = sub_100020418(v54);
    v45 = v133;
  }

  else
  {
    v55 = 0;
  }

  sub_10001D9AC(v136, v35, &qword_100523640, qword_100451520);
  v56 = a3;
  v57 = v125;

  sub_10025C7D0(v51, v57, v55, v56, v35, v49);
  v59 = v132;
  if (v132 - 2 < 2)
  {
    goto LABEL_22;
  }

  if (!v132)
  {

    v62 = v111;
    RoutingControls.UnfavoriteControl.init(sessionIdentifier:isDisabled:)();
    v63 = type metadata accessor for RoutingControls.UnfavoriteControl();
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    v58 = RoutingControls.unfavorite.setter();
    goto LABEL_22;
  }

  if (v132 == 1)
  {

    v60 = v112;
    RoutingControls.FavoriteControl.init(sessionIdentifier:isDisabled:)();
    v61 = type metadata accessor for RoutingControls.FavoriteControl();
    (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
    v58 = RoutingControls.favorite.setter();
    goto LABEL_22;
  }

  v64 = *(v132 + 16);
  if (!v64)
  {

    sub_10026A1A0(v59);
    v67 = v111;
    RoutingControls.UnfavoriteControl.init(sessionIdentifier:isDisabled:)();
    v68 = type metadata accessor for RoutingControls.UnfavoriteControl();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    RoutingControls.unfavorite.setter();
    goto LABEL_21;
  }

  if (v64 == 1)
  {

    sub_10026A1A0(v59);
    v65 = v112;
    RoutingControls.FavoriteControl.init(sessionIdentifier:isDisabled:)();
    v66 = type metadata accessor for RoutingControls.FavoriteControl();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    RoutingControls.favorite.setter();
LABEL_21:
    sub_10026A190(v59);
    goto LABEL_22;
  }

  if (v64 != 2)
  {
    v138[0] = 0;
    v138[1] = 0xE000000000000000;
    sub_10026A1A0(v132);
    sub_1002540AC(v64);
    _StringGuts.grow(_:)(62);
    v100._countAndFlagsBits = 91;
    v100._object = 0xE100000000000000;
    String.append(_:)(v100);
    v101._object = 0x80000001004519F0;
    v101._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v101);
    v102._countAndFlagsBits = 0xD000000000000039;
    v102._object = 0x800000010043DA80;
    String.append(_:)(v102);
    v137 = v59;
    sub_10026A1B0();
    v103._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v103);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_22:
  v109 = v113 ^ 1;
  v111 = a10;
  __chkstk_darwin(v58);
  *(&v105 - 6) = v51;
  *(&v105 - 5) = v57;
  v69 = v136;
  *(&v105 - 4) = v136;
  *(&v105 - 3) = v70;
  v104 = v56;
  v71 = v117;
  v72 = sub_10025B178(sub_10026A15C, (&v105 - 8), v117);
  sub_10001D9AC(v69, v135, &qword_100523640, qword_100451520);
  v107 = *(v22 + 2);
  v73 = v126;
  v107(v126, v48, v45);
  v108 = [v56 supportsVisualProxyGroupPlayer];
  [v56 volume];
  v75 = v74;
  v113 = v48;
  v106 = *(v127 + 16);
  v112 = v22;
  v106(v128, v49, v130);
  v110 = v56;
  sub_1002698C0(v110, v71, v138);
  v76 = v73;
  v77 = v118;
  v78 = *(v118 + 28);
  v79 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v80 = v131;
  (*(*(v79 - 8) + 56))(v131 + v78, 1, 1, v79);
  v81 = (v80 + v77[9]);
  *v81 = 0;
  v81[1] = 0;
  v117 = v81;
  v82 = v80 + v77[10];
  v83 = v45;
  v84 = v80 + v77[15];
  *(v84 + 80) = 0;
  *(v84 + 48) = 0u;
  *(v84 + 64) = 0u;
  *(v84 + 16) = 0u;
  *(v84 + 32) = 0u;
  *v84 = 0u;
  v85 = v125;
  *v80 = v124;
  v80[1] = v85;
  v80[4] = v72;

  sub_10026A0EC(v135, v80 + v78);
  v107(v80 + v77[18], v76, v83);
  v86 = v130;
  v87 = v128;
  *(v80 + v77[11]) = v109;
  *(v80 + v77[12]) = 0;
  *(v80 + v77[13]) = v114;
  *(v80 + v77[14]) = v108;
  *(v80 + v77[16]) = v119 & 1;
  *(v80 + v77[17]) = v120 & 1;
  *v82 = v75;
  v82[4] = 0;
  v106(v80 + v77[8], v87, v86);
  sub_10001CECC(v138, v84, &qword_100523B20, &unk_1004519F0);
  v88 = v111;
  v80[2] = v121;
  v80[3] = v88;
  if (v72[2])
  {
    type metadata accessor for Symbols();
    v89 = sub_100030BB8(v72);
    v91 = v90;

    sub_10026A190(v132);

    v92 = *(v127 + 8);
    v92(v87, v86);
    v93 = *(v112 + 1);
    v94 = v133;
    v93(v126, v133);
    sub_1000038A4(v135, &qword_100523640, qword_100451520);
    v92(v129, v86);
    v93(v113, v94);
    v95 = v117;
    *v117 = v89;
    v95[1] = v91;
  }

  else
  {

    sub_10026A190(v132);

    v96 = *(v127 + 8);
    v96(v87, v86);
    v97 = *(v112 + 1);
    v98 = v133;
    v97(v126, v133);
    sub_1000038A4(v135, &qword_100523640, qword_100451520);
    v96(v129, v86);
    v97(v113, v98);
  }

  sub_100032E08(v131, v122, type metadata accessor for HostedRoutingSourceSession);
  return sub_1000038A4(v136, &qword_100523640, qword_100451520);
}

void sub_10025C7D0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v12 = type metadata accessor for RoutingControls.TVRemoteControl.Context.DeviceType();
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RoutingControls.TVRemoteControl.Context();
  __chkstk_darwin(v14 - 8);
  v62 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001BC5A8(&qword_100523B58, &qword_100451A40);
  __chkstk_darwin(v16 - 8);
  v63 = &v58 - v17;
  v18 = sub_1001BC5A8(&qword_100523B10, &qword_1004519D8);
  __chkstk_darwin(v18 - 8);
  v20 = &v58 - v19;
  v21 = sub_1001BC5A8(&qword_100523B18, &unk_1004519E0);
  __chkstk_darwin(v21 - 8);
  v23 = &v58 - v22;
  v24 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v24 - 8);
  v26 = &v58 - v25;
  v27 = sub_1001BC5A8(&qword_100523B60, &qword_100451A48);
  __chkstk_darwin(v27 - 8);
  v29 = &v58 - v28;
  if (a3)
  {
    sub_10001D9AC(a5, v26, &qword_100523640, qword_100451520);

    sub_100262A4C(a1, a2, a3, v26, a6);
  }

  else
  {
    RoutingControls.init()();

    default argument 2 of RoutingControls.PlayControl.init(sessionIdentifier:isDisabled:useToggle:)();
    RoutingControls.PlayControl.init(sessionIdentifier:isDisabled:useToggle:)();
    v30 = type metadata accessor for RoutingControls.PlayControl();
    (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    RoutingControls.play.setter();
  }

  v31 = [a4 volumeCapabilities];
  if ((v31 & 2) != 0)
  {

    RoutingControls.AbsoluteVolumeControl.init(sessionIdentifier:)();
    v32 = type metadata accessor for RoutingControls.AbsoluteVolumeControl();
    (*(*(v32 - 8) + 56))(v23, 0, 1, v32);
    RoutingControls.absoluteVolume.setter();
  }

  if (v31)
  {

    RoutingControls.RelativeVolumeControl.init(sessionIdentifier:)();
    v33 = type metadata accessor for RoutingControls.RelativeVolumeControl();
    (*(*(v33 - 8) + 56))(v20, 0, 1, v33);
    RoutingControls.relativeVolume.setter();
  }

  if (![a4 isLocalEndpoint])
  {
    v42 = [a4 designatedGroupLeader];
    if (v42 && (v43 = v42, v44 = [v42 transportType], v43, v44 == 1))
    {
      sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
      v45 = sub_10024C81C();
      v46 = [a4 origin];
      v47 = [v45 originClientForOrigin:v46];

      if (!v47)
      {
        goto LABEL_27;
      }

      v48 = [v47 deviceInfo];

      if (!v48)
      {
        goto LABEL_27;
      }

      v49 = [v48 identifier];
      if (!v49)
      {
        sub_1000038A4(a5, &qword_100523640, qword_100451520);

        return;
      }

      v50 = v49;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if ([v48 deviceClass] != 4)
      {
        sub_1000038A4(a5, &qword_100523640, qword_100451520);

        return;
      }

      (*(v59 + 104))(v61, enum case for RoutingControls.TVRemoteControl.Context.DeviceType.appleTV(_:), v60);
      RoutingControls.TVRemoteControl.Context.init(identifier:deviceType:)();
      v51 = v63;
      RoutingControls.TVRemoteControl.init(sessionIdentifier:context:)();
      v52 = type metadata accessor for RoutingControls.TVRemoteControl();
      (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
      RoutingControls.TVRemote.setter();
    }

    else
    {
    }

    v53 = a5;
LABEL_48:
    sub_1000038A4(v53, &qword_100523640, qword_100451520);
    return;
  }

  v34 = [a4 outputDevices];
  if (!v34)
  {
LABEL_27:
    sub_1000038A4(a5, &qword_100523640, qword_100451520);

    return;
  }

  v35 = v34;
  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v36 >> 62))
  {
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_47:

    v53 = a5;
    goto LABEL_48;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_47;
  }

LABEL_12:
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
    v38 = v37;
    v39 = [v37 uid];
    if (!v39)
    {
      sub_1000038A4(a5, &qword_100523640, qword_100451520);

      return;
    }

    v40 = v39;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (v36 >> 62)
    {
      v41 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v41 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v41 != 1)
    {
      sub_1000038A4(a5, &qword_100523640, qword_100451520);

      return;
    }

    v54 = v38;
    if (([v38 deviceSubtype] == 13 || objc_msgSend(v38, "clusterType") == 2) && objc_msgSend(v38, "supportsRapport"))
    {
      v55 = &enum case for RoutingControls.TVRemoteControl.Context.DeviceType.appleTV(_:);
    }

    else
    {
      if (![v38 isAddedToHomeKit] || objc_msgSend(v38, "deviceSubtype") != 11 && objc_msgSend(v38, "deviceSubtype") != 17 && objc_msgSend(v38, "deviceSubtype") != 16)
      {

        goto LABEL_44;
      }

      v55 = &enum case for RoutingControls.TVRemoteControl.Context.DeviceType.television(_:);
    }

    (*(v59 + 104))(v61, *v55, v60);
    RoutingControls.TVRemoteControl.Context.init(identifier:deviceType:)();
    v56 = v63;
    RoutingControls.TVRemoteControl.init(sessionIdentifier:context:)();
    v57 = type metadata accessor for RoutingControls.TVRemoteControl();
    (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
    RoutingControls.TVRemote.setter();

LABEL_44:
    v53 = a5;
    goto LABEL_48;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v36 + 32);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_10025D1B4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v76 = a5;
  v77 = a6;
  v78 = a2;
  v79 = a3;
  v10 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  __chkstk_darwin(v10 - 8);
  v81 = &v67 - v11;
  v12 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  __chkstk_darwin(v12 - 8);
  v80 = &v67 - v13;
  v14 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v67 - v19;
  v21 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v21 - 8);
  v23 = &v67 - v22;
  v24 = *a1;
  v25 = [*a1 uid];
  if (v25)
  {
    v26 = v25;
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    v29 = [v24 name];
    if (v29)
    {
      v74 = v28;
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v32;
      v70 = v31;

      v33 = sub_100018E6C();
      v72 = v34;
      v73 = v33;
      v71 = v35;
      sub_10001D9AC(a4, v23, &qword_100523640, qword_100451520);
      v36 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
      if ((*(*(v36 - 8) + 48))(v23, 1, v36) == 1)
      {
        sub_1000038A4(v23, &qword_100523640, qword_100451520);
        v68 = 0;
      }

      else
      {
        RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
        (*(v15 + 104))(v18, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v14);
        v68 = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
        v40 = *(v15 + 8);
        v40(v18, v14);
        v40(v20, v14);
        sub_10002181C(v23, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      }

      v41 = type metadata accessor for RoutingItem.SelectionIndicator();
      v42 = *(*(v41 - 8) + 56);
      v42(v80, 1, 1, v41);
      v67 = sub_10001CB30();
      v43 = 1;
      if (([v76 matchesUID:v26] & 1) == 0)
      {
        v44 = sub_100018E6C();
        v43 = ((v45 >> 8) & 6 | (v45 >> 7) & 1) == 5;
        sub_100019550(v44, v46, v45);
      }

      LODWORD(v76) = v43;
      v47 = v77;
      [v77 volumeForOutputDeviceUID:v26];
      v49 = v48;
      LOBYTE(v47) = [v47 volumeControlCapabilitiesForOutputDeviceUID:v26];

      LODWORD(v77) = sub_10001805C(v47);
      v50 = v81;
      sub_10001C1E0(v81);
      v51 = type metadata accessor for RoutingItem.Attributes();
      v52 = *(*(v51 - 8) + 56);
      v52(v50, 0, 1, v51);
      v53 = type metadata accessor for HostedRoutingItem(0);
      v54 = v53[8];
      v42(a7 + v54, 1, 1, v41);
      v55 = a7 + v53[13];
      v56 = v53[15];
      v52(a7 + v56, 1, 1, v51);
      v57 = v74;
      *a7 = v75;
      a7[1] = v57;
      v58 = v79;
      a7[2] = v78;
      a7[3] = v58;
      v59 = v69;
      a7[4] = v70;
      a7[5] = v59;
      v60 = a7 + v53[16];
      v62 = v72;
      v61 = v73;
      *v60 = v73;
      *(v60 + 1) = v62;
      v63 = v71;
      *(v60 + 8) = v71;
      type metadata accessor for Symbols();

      sub_10001DAE0(v61, v62, v63);
      v64 = sub_10001D08C(v61, v62, v63);
      v66 = v65;
      sub_100019550(v61, v62, v63);
      a7[6] = v64;
      a7[7] = v66;
      *(a7 + v53[9]) = 1;
      *(a7 + v53[10]) = v68 & 1;
      sub_10001CECC(v80, a7 + v54, &unk_100524E90, &unk_1004519B0);
      *(a7 + v53[11]) = v67;
      *(a7 + v53[12]) = _swiftEmptyArrayStorage;
      *(a7 + v53[17]) = v76;
      *v55 = v49;
      v55[4] = 0;
      *(a7 + v53[14]) = v77;
      sub_10001CECC(v81, a7 + v56, &qword_100523AE8, &unk_100457500);
      return (*(*(v53 - 1) + 56))(a7, 0, 1, v53);
    }
  }

  v37 = type metadata accessor for HostedRoutingItem(0);
  v38 = *(*(v37 - 8) + 56);

  return v38(a7, 1, 1, v37);
}

unint64_t sub_10025D85C()
{
  _StringGuts.grow(_:)(32);

  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x3A736D657469202CLL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  type metadata accessor for HostedRoutingItem(0);
  v2._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0xD00000000000002ALL;
}

uint64_t sub_10025D928()
{
  v1 = v0;
  v2 = type metadata accessor for HostedRoutingItem(0);
  v68 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v5 - 8);
  v70 = &v67 - v6;
  v74 = 0;
  v75 = 0xE000000000000000;
  _StringGuts.grow(_:)(185);
  v72 = v74;
  v73 = v75;
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v7._object = 0x80000001004519F0;
  String.append(_:)(v7);
  v8._object = 0x800000010043DAF0;
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  String.append(_:)(*v0);
  v9._countAndFlagsBits = 0xD000000000000015;
  v9._object = 0x800000010043DB10;
  String.append(_:)(v9);
  v10 = type metadata accessor for HostedRoutingSourceSession(0);
  if (*(&v0->_countAndFlagsBits + v10[11]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(&v0->_countAndFlagsBits + v10[11]))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0xD00000000000001ELL;
  v14._object = 0x800000010043DB30;
  String.append(_:)(v14);
  if (*(&v0->_countAndFlagsBits + v10[13]))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(&v0->_countAndFlagsBits + v10[13]))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._countAndFlagsBits = 0xD000000000000013;
  v18._object = 0x800000010043DB50;
  String.append(_:)(v18);
  if (*(&v0->_countAndFlagsBits + v10[16]))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(&v0->_countAndFlagsBits + v10[16]))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v21 = v20;
  String.append(_:)(*&v19);

  v22._countAndFlagsBits = 0xD000000000000013;
  v22._object = 0x800000010043DB70;
  String.append(_:)(v22);
  if (*(&v0->_countAndFlagsBits + v10[17]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(&v0->_countAndFlagsBits + v10[17]))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  v25 = v24;
  String.append(_:)(*&v23);

  v26._countAndFlagsBits = 0x6C6F76202020200ALL;
  v26._object = 0xED0000203A656D75;
  String.append(_:)(v26);
  v69 = v10;
  if (*(&v0->_countAndFlagsBits + v10[10] + 4))
  {
    v27 = 0xE300000000000000;
    v28 = 7104878;
  }

  else
  {
    v28 = Float.description.getter();
    v27 = v29;
  }

  v30 = v27;
  String.append(_:)(*&v28);

  v31._countAndFlagsBits = 0x657469202020200ALL;
  v31._object = 0xEC0000000A3A736DLL;
  String.append(_:)(v31);
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  v33 = *(countAndFlagsBits + 16);
  v34 = _swiftEmptyArrayStorage;
  if (v33)
  {
    v67 = v0;
    v71 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v33, 0);
    v34 = v71;
    v35 = countAndFlagsBits + ((*(v68 + 80) + 32) & ~*(v68 + 80));
    v36 = *(v68 + 72);
    do
    {
      sub_10003271C(v35, v4, type metadata accessor for HostedRoutingItem);
      v74 = 0x2020202020202020;
      v75 = 0xE800000000000000;
      v37._countAndFlagsBits = sub_10002C1B4();
      String.append(_:)(v37);

      v38 = v74;
      v39 = v75;
      sub_10002181C(v4, type metadata accessor for HostedRoutingItem);
      v71 = v34;
      v41 = v34[2];
      v40 = v34[3];
      if (v41 >= v40 >> 1)
      {
        sub_1000089FC((v40 > 1), v41 + 1, 1);
        v34 = v71;
      }

      v34[2] = v41 + 1;
      v42 = &v34[2 * v41];
      v42[4] = v38;
      v42[5] = v39;
      v35 += v36;
      --v33;
    }

    while (v33);
    v1 = v67;
  }

  v74 = v34;
  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  sub_10002C150();
  v43 = BidirectionalCollection<>.joined(separator:)();
  v45 = v44;

  v46._countAndFlagsBits = v43;
  v46._object = v45;
  String.append(_:)(v46);

  v47._object = 0x800000010043DB90;
  v47._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v47);
  v49 = v69;
  v48 = v70;
  sub_10001D9AC(v1 + v69[7], v70, &qword_100523640, qword_100451520);
  v50 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if ((*(*(v50 - 8) + 48))(v48, 1, v50) == 1)
  {
    sub_1000038A4(v48, &qword_100523640, qword_100451520);
    v51 = 0xE300000000000000;
    v52 = 7104878;
  }

  else
  {
    v53 = sub_10025DF24();
    v51 = v54;
    sub_10002181C(v48, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v52 = v53;
  }

  v55 = v51;
  String.append(_:)(*&v52);

  v56._countAndFlagsBits = 0x736F68202020200ALL;
  v56._object = 0xEF203A6F666E4974;
  String.append(_:)(v56);
  v57 = v1 + v49[15];
  v58 = *(v57 + 1);
  if (v58)
  {
    v74 = *v57;
    v75 = v58;
    v59 = *(v57 + 4);
    v78 = *(v57 + 3);
    v79 = v59;
    v80 = *(v57 + 10);
    v60 = *(v57 + 1);
    v77 = *(v57 + 2);
    v76 = v60;
    v61 = sub_10025E2C4();
    v63 = v62;
  }

  else
  {
    v63 = 0xE300000000000000;
    v61 = 7104878;
  }

  v64 = v63;
  String.append(_:)(*&v61);

  v65._countAndFlagsBits = 10506;
  v65._object = 0xE200000000000000;
  String.append(_:)(v65);
  return v72;
}

uint64_t sub_10025DF24()
{
  v1 = 7104878;
  _StringGuts.grow(_:)(171);
  v2._countAndFlagsBits = 0x6979616C50776F4ELL;
  v2._object = 0xEE006F666E49676ELL;
  String.append(_:)(v2);
  v3._object = 0xED0000203A646920;
  v3._countAndFlagsBits = 0x202020202020200ALL;
  String.append(_:)(v3);
  if (*(v0 + 8))
  {
    v4 = *v0;
    v5 = *(v0 + 8);
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  v7._object = 0x800000010043DBB0;
  v7._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v7);
  v8._countAndFlagsBits = sub_10025FBEC(*(v0 + 48), *(v0 + 56) | (*(v0 + 60) << 32));
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0xD000000000000010;
  v9._object = 0x800000010043DBD0;
  String.append(_:)(v9);
  if (*(v0 + 24))
  {
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0xD000000000000013;
  v13._object = 0x800000010043DBF0;
  String.append(_:)(v13);
  if (*(v0 + 40))
  {
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0xD000000000000017;
  v17._object = 0x800000010043DC10;
  String.append(_:)(v17);
  v18 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
  sub_100017F84(&qword_100523B68, &type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo, &protocol conformance descriptor for RoutingSession.NowPlayingInfo.PlaybackInfo);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._object = 0x800000010043DC30;
  v20._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v20);
  type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
  sub_100017F84(&qword_100523B70, &type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo, &protocol conformance descriptor for RoutingSession.NowPlayingInfo.TrackInfo);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0xD000000000000017;
  v22._object = 0x800000010043DC50;
  String.append(_:)(v22);
  v23._countAndFlagsBits = sub_100260060(*(v0 + *(v18 + 44)), *(v0 + *(v18 + 44) + 8), *(v0 + *(v18 + 44) + 16));
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD000000000000012;
  v24._object = 0x800000010043DC70;
  String.append(_:)(v24);
  if (*(v0 + 64))
  {
    v1 = dispatch thunk of ArtworkToken.description.getter();
    v26 = v25;
  }

  else
  {
    v26 = 0xE300000000000000;
  }

  v27._countAndFlagsBits = v1;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 10;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  return 0;
}

uint64_t sub_10025E2C4()
{
  _StringGuts.grow(_:)(74);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x6F666E4974736F48;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x3A656D616E202D20;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  String.append(_:)(*v0);
  v4._countAndFlagsBits = 0x6C6F626D7973202CLL;
  v4._object = 0xEE00203A656D614ELL;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 16));
  v5._countAndFlagsBits = 0x6375646F7270202CLL;
  v5._object = 0xEF203A656D614E74;
  String.append(_:)(v5);
  if (*(v0 + 40))
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x746E656C6973202CLL;
  v9._object = 0xEA0000000000203ALL;
  String.append(_:)(v9);
  if (*(v0 + 48))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 0x6E6F73726570202CLL;
  v13._object = 0xEC000000203A6C61;
  String.append(_:)(v13);
  if (*(v0 + 49))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + 49))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

uint64_t sub_10025E4CC(uint64_t a1)
{
  v27[0] = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v3 = *(v27[0] - 8);
  __chkstk_darwin(v27[0]);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  v9 = type metadata accessor for HostedRoutingItem(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.hash(into:)();
  if (*(v1 + 24))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v13 = *(v1 + 32);
  Hasher._combine(_:)(*(v13 + 16));
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    do
    {
      sub_10003271C(v15, v12, type metadata accessor for HostedRoutingItem);
      sub_100258AB4(a1);
      sub_10002181C(v12, type metadata accessor for HostedRoutingItem);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  v17 = type metadata accessor for HostedRoutingSourceSession(0);
  sub_10001D9AC(v1 + v17[7], v8, &qword_100523640, qword_100451520);
  if ((*(v3 + 48))(v8, 1, v27[0]) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100032E08(v8, v5, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    Hasher._combine(_:)(1u);
    sub_1002608A8(a1);
    sub_10002181C(v5, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  }

  type metadata accessor for RoutingControls();
  sub_100017F84(&qword_100523B78, &type metadata accessor for RoutingControls, &protocol conformance descriptor for RoutingControls);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v1 + v17[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v18 = v1 + v17[10];
  if (*(v18 + 4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v19 = *v18;
    Hasher._combine(_:)(1u);
    if ((v19 & 0x7FFFFFFF) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    Hasher._combine(_:)(v20);
  }

  Hasher._combine(_:)(*(v1 + v17[11]));
  Hasher._combine(_:)(*(v1 + v17[12]));
  Hasher._combine(_:)(*(v1 + v17[13]));
  Hasher._combine(_:)(*(v1 + v17[14]));
  v21 = (v1 + v17[15]);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
    v24 = *(v21 + 4);
    v30 = *(v21 + 3);
    v31 = v24;
    v32 = v21[10];
    v25 = *(v21 + 1);
    v29 = *(v21 + 2);
    v28 = v25;
    v27[1] = v23;
    v27[2] = v22;
    Hasher._combine(_:)(1u);
    sub_100260EFC(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + v17[16]));
  Hasher._combine(_:)(*(v1 + v17[17]));
  type metadata accessor for Date();
  sub_100017F84(&qword_100523B80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

void *sub_10025E9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_10025EA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = type metadata accessor for HostedRoutingItem(0);
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for HostedRoutingSourceSession(0);
  result = __chkstk_darwin(v10);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 16);
  v37 = *(v16 + 16);
  if (!v37)
  {
    v32 = 1;
    return (*(v14 + 56))(a3, v32, 1, v12);
  }

  v35 = v12;
  v36 = a3;
  v17 = 0;
  v18 = v16 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v39 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v14;
  v33 = v18;
  v34 = v16;
  while (1)
  {
    if (v17 >= *(v16 + 16))
    {
      goto LABEL_32;
    }

    result = sub_10003271C(v18 + *(v14 + 72) * v17, v15, type metadata accessor for HostedRoutingSourceSession);
    v19 = *(v15 + 4);
    v41 = *(v19 + 16);
    if (v41)
    {
      break;
    }

LABEL_25:
    ++v17;
    v15 = v39;
    result = sub_10002181C(v39, type metadata accessor for HostedRoutingSourceSession);
    v14 = v40;
    v18 = v33;
    v16 = v34;
    if (v17 == v37)
    {
      v32 = 1;
      v12 = v35;
      a3 = v36;
      return (*(v14 + 56))(a3, v32, 1, v12);
    }
  }

  v20 = 0;
  v21 = v9 + *(v38 + 64);
  v42 = v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  while (v20 < *(v19 + 16))
  {
    v22 = v7;
    sub_10003271C(v42 + *(v7 + 72) * v20, v9, type metadata accessor for HostedRoutingItem);
    v23 = *v21;
    v24 = *(v21 + 8);
    v25 = (v24 >> 8) & 6 | (v24 >> 7) & 1;
    if ((v25 - 1) >= 5)
    {
      if (v25)
      {
        goto LABEL_19;
      }

      v24 = *(v23 + 32);
      v23 = *(v23 + 16);
    }

    if ((v24 >> 11) - 8 <= 2)
    {
      v26 = *(v23 + 16);
      v27 = (v26 + 40);
      v28 = *(v26 + 16) + 1;
      while (--v28)
      {
        if (*(v27 - 1) != a1 || *v27 != a2)
        {
          v27 += 5;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_27;
      }
    }

LABEL_19:
    if (*v9 == a1 && v9[1] == a2)
    {
LABEL_27:
      sub_10002181C(v9, type metadata accessor for HostedRoutingItem);
LABEL_28:
      a3 = v36;
      sub_100032E08(v39, v36, type metadata accessor for HostedRoutingSourceSession);
      v32 = 0;
      v12 = v35;
      v14 = v40;
      return (*(v14 + 56))(a3, v32, 1, v12);
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = sub_10002181C(v9, type metadata accessor for HostedRoutingItem);
    if (v31)
    {
      goto LABEL_28;
    }

    v7 = v22;
    if (++v20 == v41)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10025EDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = type metadata accessor for HostedRoutingItem(0);
  v7 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for HostedRoutingSourceSession(0);
  v10 = *(v36 - 8);
  result = __chkstk_darwin(v36);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + 16);
  v15 = *(v14 + 16);
  if (v15)
  {
    v30 = a3;
    v16 = 0;
    v39 = v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    while (v16 < *(v14 + 16))
    {
      sub_10003271C(v39 + *(v10 + 72) * v16, v13, type metadata accessor for HostedRoutingSourceSession);
      if (*v13 != 0x4C41434F4CLL || v13[1] != 0xE500000000000000)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          v18 = v13[4];
          v35 = *(v18 + 16);
          if (v35)
          {
            v19 = 0;
            v38 = v9 + *(v31 + 64);
            v37 = v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
            v33 = v15;
            v34 = v7;
            v32 = v18;
            do
            {
              if (v19 >= *(v18 + 16))
              {
                goto LABEL_38;
              }

              sub_10003271C(v37 + *(v7 + 72) * v19, v9, type metadata accessor for HostedRoutingItem);
              v20 = *v38;
              v21 = *(v38 + 8);
              v22 = (v21 >> 8) & 6 | (v21 >> 7) & 1;
              if ((v22 - 1) >= 5)
              {
                if (v22)
                {
                  goto LABEL_25;
                }

                v21 = *(v20 + 32);
                v20 = *(v20 + 16);
              }

              if ((v21 >> 11) - 8 <= 2)
              {
                v23 = *(v20 + 16);
                v24 = (v23 + 40);
                v25 = *(v23 + 16) + 1;
                while (--v25)
                {
                  if (*(v24 - 1) != a1 || *v24 != a2)
                  {
                    v24 += 5;
                    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      continue;
                    }
                  }

                  goto LABEL_32;
                }
              }

LABEL_25:
              if (*v9 == a1 && v9[1] == a2)
              {
LABEL_32:
                sub_10002181C(v9, type metadata accessor for HostedRoutingItem);
LABEL_33:
                a3 = v30;
                sub_100032E08(v13, v30, type metadata accessor for HostedRoutingSourceSession);
                v29 = 0;
                return (*(v10 + 56))(a3, v29, 1, v36);
              }

              v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
              result = sub_10002181C(v9, type metadata accessor for HostedRoutingItem);
              v7 = v34;
              if (v28)
              {
                goto LABEL_33;
              }

              ++v19;
              v18 = v32;
              v15 = v33;
            }

            while (v19 != v35);
          }
        }
      }

      ++v16;
      result = sub_10002181C(v13, type metadata accessor for HostedRoutingSourceSession);
      if (v16 == v15)
      {
        v29 = 1;
        a3 = v30;
        return (*(v10 + 56))(a3, v29, 1, v36);
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
    v29 = 1;
    return (*(v10 + 56))(a3, v29, 1, v36);
  }

  return result;
}

uint64_t sub_10025F1A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HostedRoutingItem(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HostedRoutingSourceSession(0);
  result = __chkstk_darwin(v7);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 16);
  v25 = *(v13 + 16);
  if (v25)
  {
    v23 = v9;
    v24 = a1;
    v14 = 0;
    v15 = *(v10 + 80);
    v26 = v10;
    v27 = v13 + ((v15 + 32) & ~v15);
    while (v14 < *(v13 + 16))
    {
      sub_10003271C(v27 + *(v10 + 72) * v14, v12, type metadata accessor for HostedRoutingSourceSession);
      if (*v12 != 0x4C41434F4CLL || v12[1] != 0xE500000000000000)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          v17 = v12[4];
          v18 = *(v17 + 16);
          if (v18)
          {
            v19 = 0;
            while (v19 < *(v17 + 16))
            {
              sub_10003271C(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v6, type metadata accessor for HostedRoutingItem);
              v20 = *&v6[*(v3 + 64) + 16];
              if (((v20 >> 8) & 6 | (v20 >> 7) & 1) != 1)
              {
                sub_10002181C(v6, type metadata accessor for HostedRoutingItem);
                a1 = v24;
                sub_100032E08(v12, v24, type metadata accessor for HostedRoutingSourceSession);
                v21 = 0;
                v9 = v23;
                v10 = v26;
                return (*(v10 + 56))(a1, v21, 1, v9);
              }

              ++v19;
              result = sub_10002181C(v6, type metadata accessor for HostedRoutingItem);
              if (v18 == v19)
              {
                goto LABEL_3;
              }
            }

            __break(1u);
            break;
          }
        }
      }

LABEL_3:
      ++v14;
      result = sub_10002181C(v12, type metadata accessor for HostedRoutingSourceSession);
      v10 = v26;
      if (v14 == v25)
      {
        v21 = 1;
        v9 = v23;
        a1 = v24;
        return (*(v10 + 56))(a1, v21, 1, v9);
      }
    }

    __break(1u);
  }

  else
  {
    v21 = 1;
    return (*(v10 + 56))(a1, v21, 1, v9);
  }

  return result;
}

uint64_t sub_10025F4C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - v10;
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  if ([a1 isAirPlayActive])
  {
    v14 = [a1 deviceUID];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      (*(*v2 + 112))(v16, v18);

      sub_10001D9AC(v13, v11, &qword_100523B88, &unk_100451A50);
      v19 = type metadata accessor for HostedRoutingSourceSession(0);
      LODWORD(v18) = (*(*(v19 - 8) + 48))(v11, 1, v19);
      v20 = sub_1000038A4(v11, &qword_100523B88, &unk_100451A50);
      if (v18 == 1)
      {
        (*(*v2 + 120))(v20);
        sub_1000038A4(v13, &qword_100523B88, &unk_100451A50);
        sub_10003AEF0(v8, v13, &qword_100523B88, &unk_100451A50);
      }

      return sub_10003AEF0(v13, a2, &qword_100523B88, &unk_100451A50);
    }
  }

  else
  {
    v14 = 0;
  }

  v22 = type metadata accessor for HostedRoutingSourceSession(v14);
  v23 = *(*(v22 - 8) + 56);

  return v23(a2, 1, 1, v22);
}

uint64_t sub_10025F770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HostedRoutingSourceSession(0);
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    while (v14 < *(v12 + 16))
    {
      sub_10003271C(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v11, type metadata accessor for HostedRoutingSourceSession);
      v15 = *v11 == a1 && v11[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100032E08(v11, a3, type metadata accessor for HostedRoutingSourceSession);
        v16 = 0;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }

      ++v14;
      result = sub_10002181C(v11, type metadata accessor for HostedRoutingSourceSession);
      if (v13 == v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v16 = 1;
    return (*(v8 + 56))(a3, v16, 1, v7);
  }

  return result;
}

uint64_t sub_10025F91C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  (*(*v1 + 136))(v1[3], v1[4]);
  v6 = type metadata accessor for HostedRoutingSourceSession(0);
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (result != 1)
  {
    return sub_100032E08(v5, a1, type metadata accessor for HostedRoutingSourceSession);
  }

  __break(1u);
  return result;
}

uint64_t sub_10025FA28()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10025FA80(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = a1 + 16;
  v2 = v3;
  if (v3)
  {
    v4 = *(result + 16 * v2);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10025FAC0(void *result)
{
  if (result[2])
  {
    v1 = result[4];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10025FAFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE4(a4) - 2 >= 3)
  {
    if (BYTE4(a4) == 1)
    {
      sub_100018D7C(0, &qword_100523B90, NSBundle_ptr);
      v9 = sub_10033D3B4();
    }

    else
    {
      sub_100018D7C(0, &qword_100523B90, NSBundle_ptr);
      v9 = sub_10033D380();
    }

    return v9 & 1;
  }

  else
  {
    v6 = *(a3 + 16);
    v4 = a3 + 16;
    v5 = v6;
    if (v6)
    {
      v7 = (v4 + 16 * v5);
      if (*v7 == result && v7[1] == a2)
      {
        return 1;
      }

      else
      {

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10025FBEC(uint64_t a1, uint64_t a2)
{
  if (BYTE4(a2) <= 1u)
  {
    if (BYTE4(a2))
    {
      _StringGuts.grow(_:)(16);

      v9 = 0x74736163646F702ELL;
      goto LABEL_11;
    }

    v2 = 0x636973756D2ELL;
    goto LABEL_9;
  }

  if (BYTE4(a2) != 2)
  {
    if (BYTE4(a2) == 3)
    {
      v2 = 0x736B6F6F622ELL;
    }

    else
    {
      v2 = 0x726568746F2ELL;
    }

LABEL_9:
    v3 = v2 & 0xFFFFFFFFFFFFLL | 0x28000000000000;
    goto LABEL_10;
  }

  v3 = 678851630;
LABEL_10:
  v9 = v3;
LABEL_11:
  v4._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 44;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9;
}

void sub_10025FD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (BYTE4(a3) <= 1u)
  {
    if (BYTE4(a3))
    {
      Hasher._combine(_:)(1uLL);
      v13 = *(a2 + 16);
      Hasher._combine(_:)(v13);
      if (v13)
      {
        v14 = a2 + 40;
        do
        {

          String.hash(into:)();

          v14 += 16;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v7 = *(a2 + 16);
      Hasher._combine(_:)(v7);
      if (v7)
      {
        v8 = a2 + 40;
        do
        {

          String.hash(into:)();

          v8 += 16;
          --v7;
        }

        while (v7);
      }
    }
  }

  else if (BYTE4(a3) == 2)
  {
    Hasher._combine(_:)(2uLL);
    v9 = *(a2 + 16);
    Hasher._combine(_:)(v9);
    if (v9)
    {
      v10 = a2 + 40;
      do
      {

        String.hash(into:)();

        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  else if (BYTE4(a3) == 3)
  {
    Hasher._combine(_:)(3uLL);
    v5 = *(a2 + 16);
    Hasher._combine(_:)(v5);
    if (v5)
    {
      v6 = a2 + 40;
      do
      {

        String.hash(into:)();

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    Hasher._combine(_:)(4uLL);
    v11 = *(a2 + 16);
    Hasher._combine(_:)(v11);
    if (v11)
    {
      v12 = a2 + 40;
      do
      {

        String.hash(into:)();

        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_10025FF30()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  Hasher.init(_seed:)();
  sub_10025FD44(v5, v1, v2 | (v3 << 32));
  return Hasher._finalize()();
}

Swift::Int sub_10025FFA0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  Hasher.init(_seed:)();
  sub_10025FD44(v6, v2, v3 | (v4 << 32));
  return Hasher._finalize()();
}

uint64_t sub_100260034()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6F69647561;
  }
}

uint64_t sub_100260060(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = HIBYTE(a3);
  _StringGuts.grow(_:)(53);
  v7._countAndFlagsBits = 60;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._object = 0x8000000100451A40;
  v8._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x644962696C202D20;
  v9._object = 0xEA0000000000203ALL;
  String.append(_:)(v9);
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    a1 = 7104878;
    v10 = 0xE300000000000000;
  }

  v11._countAndFlagsBits = a1;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x3A6C4562696C202CLL;
  v12._object = 0xE900000000000020;
  String.append(_:)(v12);
  if (a3)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (a3)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  if (a3 == 2)
  {
    v15 = 7104878;
  }

  else
  {
    v15 = v13;
  }

  if (a3 == 2)
  {
    v16 = 0xE300000000000000;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._countAndFlagsBits = 0x203A7865202CLL;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19 = a3 & 0xFF00;
  if ((a3 & 0x100) != 0)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if ((a3 & 0x100) != 0)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  if (v19 == 512)
  {
    v22 = 7104878;
  }

  else
  {
    v22 = v20;
  }

  if (v19 == 512)
  {
    v23 = 0xE300000000000000;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23;
  String.append(_:)(*&v22);

  v25._countAndFlagsBits = 0x203A6C75202CLL;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v26 = a3 & 0xFF0000;
  if ((a3 & 0x10000) != 0)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if ((a3 & 0x10000) != 0)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  if (v26 == 0x20000)
  {
    v29 = 7104878;
  }

  else
  {
    v29 = v27;
  }

  if (v26 == 0x20000)
  {
    v30 = 0xE300000000000000;
  }

  else
  {
    v30 = v28;
  }

  v31 = v30;
  String.append(_:)(*&v29);

  v32._countAndFlagsBits = 0x203A65707974202CLL;
  v32._object = 0xE800000000000000;
  String.append(_:)(v32);
  v33 = 0x6F69647561;
  if (v6)
  {
    v33 = 0x6F65646976;
  }

  if (v6 == 2)
  {
    v34 = 7104878;
  }

  else
  {
    v34 = v33;
  }

  if (v6 == 2)
  {
    v35 = 0xE300000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  v36 = v35;
  String.append(_:)(*&v34);

  v37._countAndFlagsBits = 62;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  return 0;
}

void sub_1002602C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (a4 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = a4 & 1;
  }

  Hasher._combine(_:)(v5);
  if ((a4 & 0xFF00) == 0x200)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = (a4 >> 8) & 1;
  }

  Hasher._combine(_:)(v6);
  if ((a4 & 0xFF0000) == 0x20000)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = HIWORD(a4) & 1;
  }

  Hasher._combine(_:)(v7);
  if (HIBYTE(a4) == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(HIBYTE(a4) & 1);
  }
}

Swift::Int sub_1002603B4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_1002602C4(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_10026041C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  sub_1002602C4(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_10026049C()
{
  if (v0[1] || v0[3] || v0[5] || v0[8])
  {
    return 0;
  }

  type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  return RoutingSession.NowPlayingInfo.TrackInfo.isEmpty.getter() & 1;
}

uint64_t sub_1002604F8()
{
  v1 = v0;
  v2 = 7104878;
  v3 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v38 - v8;
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(79);
  v10._countAndFlagsBits = 60;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x6979616C50776F4ELL;
  v11._object = 0xEE006F666E49676ELL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x203A6469202D20;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  if (*(v0 + 8))
  {
    v13 = *v0;
    v14 = *(v0 + 8);
  }

  else
  {
    v14 = 0xE300000000000000;
    v13 = 7104878;
  }

  v15._countAndFlagsBits = v13;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x3A656C746974202CLL;
  v16._object = 0xE900000000000020;
  String.append(_:)(v16);
  if (*(v0 + 24))
  {
    v17 = *(v0 + 16);
    v18 = *(v0 + 24);
  }

  else
  {
    v18 = 0xE300000000000000;
    v17 = 7104878;
  }

  v19._countAndFlagsBits = v17;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x746974627573202CLL;
  v20._object = 0xEC000000203A656CLL;
  String.append(_:)(v20);
  if (*(v0 + 40))
  {
    v21 = *(v0 + 32);
    v22 = *(v0 + 40);
  }

  else
  {
    v22 = 0xE300000000000000;
    v21 = 7104878;
  }

  v23._countAndFlagsBits = v21;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x73696C627570202CLL;
  v24._object = 0xED0000203A726568;
  String.append(_:)(v24);
  v25._countAndFlagsBits = sub_10025FBEC(*(v0 + 48), *(v0 + 56) | (*(v0 + 60) << 32));
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x6E6979616C70202CLL;
  v26._object = 0xEB00000000203A67;
  String.append(_:)(v26);
  type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
  (*(v4 + 104))(v7, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v3);
  v27 = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
  v28 = *(v4 + 8);
  v28(v7, v3);
  v28(v9, v3);
  if (v27)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (v27)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  v31 = v30;
  String.append(_:)(*&v29);

  v32._countAndFlagsBits = 0x726F77747261202CLL;
  v32._object = 0xEB00000000203A6BLL;
  String.append(_:)(v32);
  if (*(v1 + 64))
  {
    v2 = dispatch thunk of ArtworkToken.description.getter();
    v34 = v33;
  }

  else
  {
    v34 = 0xE300000000000000;
  }

  v35._countAndFlagsBits = v2;
  v35._object = v34;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 62;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  return v38[0];
}

void sub_1002608A8(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (*(v1 + 40))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
  if (!*(v1 + 24))
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (*(v1 + 40))
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_8;
  }

LABEL_7:
  Hasher._combine(_:)(0);
LABEL_8:
  sub_10025FD44(a1, *(v1 + 48), *(v1 + 56) | (*(v1 + 60) << 32));
  if (*(v1 + 64))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for ArtworkToken();
    sub_100017F84(&qword_100523B98, &type metadata accessor for ArtworkToken, &protocol conformance descriptor for ArtworkToken);
    dispatch thunk of Hashable.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
  sub_100017F84(&qword_100523BA0, &type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo, &protocol conformance descriptor for RoutingSession.NowPlayingInfo.PlaybackInfo);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
  sub_100017F84(&qword_100523BA8, &type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo, &protocol conformance descriptor for RoutingSession.NowPlayingInfo.TrackInfo);
  dispatch thunk of Hashable.hash(into:)();
  sub_1002602C4(a1, *(v1 + *(v3 + 44)), *(v1 + *(v3 + 44) + 8), *(v1 + *(v3 + 44) + 16));
}

uint64_t sub_100260B3C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6C65646F6DLL;
  if (v1 != 5)
  {
    v3 = 0x696669746E656469;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x6E6F737265507369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x614E6C6F626D7973;
  if (v1 != 1)
  {
    v5 = 0x4E746375646F7270;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100260C30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10026A2C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100260C64(uint64_t a1)
{
  v2 = sub_10026A26C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100260CA0(uint64_t a1)
{
  v2 = sub_10026A26C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100260CDC(void *a1)
{
  v3 = sub_1001BC5A8(&qword_100523BB0, &qword_100451A78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000326D8(a1, a1[3]);
  sub_10026A26C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void sub_100260EFC(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 40))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + 48) & 1);
  Hasher._combine(_:)(*(v1 + 49) & 1);
  if (!*(v1 + 64))
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 80))
    {
      goto LABEL_6;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v1 + 80))
  {
    goto LABEL_10;
  }

LABEL_6:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_100261000()
{
  Hasher.init(_seed:)();
  sub_100260EFC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100261044(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100260EFC(v2);
  return Hasher._finalize()();
}

double sub_100261080@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10026A524(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

BOOL sub_1002610F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100268D78(v7, v9);
}

uint64_t sub_100261164()
{
  v3 = *(v0 + 16);

  sub_100032CAC(v1, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
  return v3;
}

uint64_t sub_1002611E0(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = a1(0);
  sub_10001D9AC(v1 + *(v13 + 28), v12, &qword_100523640, qword_100451520);
  v14 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {
    sub_1000038A4(v12, &qword_100523640, qword_100451520);
    v15 = 0;
  }

  else
  {
    RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
    (*(v4 + 104))(v7, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v3);
    v15 = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
    v16 = *(v4 + 8);
    v16(v7, v3);
    v16(v9, v3);
    sub_10002181C(v12, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  }

  return v15 & 1;
}

uint64_t sub_100261430@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = type metadata accessor for HostedRoutingSession(0);
  sub_10001D9AC(v1 + *(v14 + 28), v13, &qword_100523640, qword_100451520);
  v15 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) == 1)
  {
    sub_1000038A4(v13, &qword_100523640, qword_100451520);
  }

  else
  {
    RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
    (*(v5 + 104))(v8, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v4);
    v16 = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
    v17 = *(v5 + 8);
    v17(v8, v4);
    v17(v10, v4);
    sub_10002181C(v13, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    if (v16)
    {
      return static Date.now.getter();
    }
  }

  v19 = *(v14 + 52);
  v20 = type metadata accessor for Date();
  return (*(*(v20 - 8) + 16))(a1, v2 + v19, v20);
}

uint64_t sub_1002616D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, char *a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LODWORD(v75) = a8;
  LODWORD(v72) = a7;
  v68 = a2;
  v73 = a13;
  v71 = a12;
  LODWORD(v70) = a11;
  LODWORD(v69) = a10;
  v76 = type metadata accessor for HostedRoutingItem(0);
  v20 = *(v76 - 8);
  v21 = __chkstk_darwin(v76);
  v74 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v77 = &v63 - v24;
  __chkstk_darwin(v23);
  v26 = &v63 - v25;
  v27 = type metadata accessor for HostedRoutingSession(0);
  v28 = &a9[v27[11]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v64 = v28;
  v29 = v68;
  *a9 = a1;
  *(a9 + 1) = v29;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v30 = &a9[v27[7]];
  v68 = a5;
  sub_10001D9AC(a5, v30, &qword_100523640, qword_100451520);
  v31 = v27[13];
  v32 = type metadata accessor for Date();
  v65 = *(v32 - 8);
  v66 = v32;
  v33 = *(v65 + 16);
  v67 = a6;
  v33(&a9[v31], a6);
  a9[v27[14]] = v72;
  a9[v27[15]] = v75;
  a9[v27[9]] = v69;
  a9[v27[10]] = v70;
  v34 = &a9[v27[12]];
  v35 = BYTE4(v71);
  *v34 = v71;
  v34[4] = v35 & 1;
  v36 = v27[8];
  v37 = type metadata accessor for RoutingControls();
  v71 = *(v37 - 8);
  v72 = v37;
  (*(v71 + 16))(&a9[v36], v73);
  v69 = v27;
  v70 = a9;
  v38 = &a9[v27[16]];
  v39 = *(a14 + 48);
  *(v38 + 2) = *(a14 + 32);
  *(v38 + 3) = v39;
  *(v38 + 4) = *(a14 + 64);
  *(v38 + 10) = *(a14 + 80);
  v40 = *(a14 + 16);
  *v38 = *a14;
  *(v38 + 1) = v40;
  v78 = a3;

  result = sub_100032CAC(v41, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
  v43 = v78;
  v44 = v78[2];
  if (v44)
  {
    v45 = 0;
    v46 = _swiftEmptyArrayStorage;
    v47 = v76;
    v48 = v74;
    v75 = v78[2];
    while (v45 < v43[2])
    {
      v49 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v50 = *(v20 + 72);
      sub_10003271C(v43 + v49 + v50 * v45, v26, type metadata accessor for HostedRoutingItem);
      if (v26[*(v47 + 36)] == 1)
      {
        sub_100032E08(v26, v48, type metadata accessor for HostedRoutingItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002A42C(0, v46[2] + 1, 1);
          v48 = v74;
          v46 = v78;
        }

        v53 = v46[2];
        v52 = v46[3];
        if (v53 >= v52 >> 1)
        {
          sub_10002A42C((v52 > 1), v53 + 1, 1);
          v48 = v74;
          v46 = v78;
        }

        v46[2] = v53 + 1;
        result = sub_100032E08(v48, v46 + v49 + v53 * v50, type metadata accessor for HostedRoutingItem);
        v44 = v75;
        v47 = v76;
      }

      else
      {
        result = sub_10002181C(v26, type metadata accessor for HostedRoutingItem);
      }

      if (v44 == ++v45)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
    v47 = v76;
LABEL_13:

    v54 = 0;
    v55 = v46[2];
    do
    {
      v56 = v54;
      if (v55 == v54)
      {
        break;
      }

      if (v54 >= v46[2])
      {
        goto LABEL_21;
      }

      v57 = v77;
      sub_10003271C(v46 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v54++, v77, type metadata accessor for HostedRoutingItem);
      v58 = *(v57 + *(v47 + 68));
      result = sub_10002181C(v57, type metadata accessor for HostedRoutingItem);
    }

    while (v58 != 1);
    v70[v69[17]] = v55 != v56;
    if (v55)
    {
      type metadata accessor for Symbols();
      v59 = sub_100030BB8(v46);
      v61 = v60;

      (*(v71 + 8))(v73, v72);
      (*(v65 + 8))(v67, v66);
      result = sub_1000038A4(v68, &qword_100523640, qword_100451520);
      v62 = v64;
      *v64 = v59;
      v62[1] = v61;
    }

    else
    {

      (*(v71 + 8))(v73, v72);
      (*(v65 + 8))(v67, v66);
      return sub_1000038A4(v68, &qword_100523640, qword_100451520);
    }
  }

  return result;
}

unint64_t sub_100261CB0()
{
  _StringGuts.grow(_:)(32);

  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x3A736D657469202CLL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);

  sub_100032CAC(v2, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem);
  type metadata accessor for HostedRoutingItem(0);
  v3 = Array.description.getter();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0xD000000000000024;
}

uint64_t sub_100261DEC()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v2 - 8);
  v78 = v75 - v3;
  v4 = type metadata accessor for HostedRoutingItem(0);
  v79 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = 0;
  v85 = 0xE000000000000000;
  _StringGuts.grow(_:)(180);
  v7._countAndFlagsBits = 0xD000000000000014;
  v7._object = 0x8000000100451A60;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000011;
  v8._object = 0x800000010043DAF0;
  v77 = 0xD000000000000011;
  String.append(_:)(v8);
  String.append(_:)(*v0);
  v9._object = 0x800000010043DB10;
  v9._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v9);
  v10 = type metadata accessor for HostedRoutingSession(0);
  if (*(&v0->_countAndFlagsBits + v10[14]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(&v0->_countAndFlagsBits + v10[14]))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0x747561202020200ALL;
  v14._object = 0xEB00000000203A68;
  String.append(_:)(v14);
  if (*(&v0->_countAndFlagsBits + v10[15]))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(&v0->_countAndFlagsBits + v10[15]))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._object = 0x800000010043DB50;
  v18._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v18);
  if (*(&v0->_countAndFlagsBits + v10[9]))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(&v0->_countAndFlagsBits + v10[9]))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v21 = v20;
  String.append(_:)(*&v19);

  v22._object = 0x800000010043DB70;
  v22._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v22);
  if (*(&v0->_countAndFlagsBits + v10[10]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(&v0->_countAndFlagsBits + v10[10]))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  v25 = v24;
  String.append(_:)(*&v23);

  v26._countAndFlagsBits = 0x6C6F76202020200ALL;
  v26._object = 0xED0000203A656D75;
  String.append(_:)(v26);
  v76 = v10;
  if (*(&v0->_countAndFlagsBits + v10[12] + 4))
  {
    v27 = 0xE300000000000000;
    v28 = 7104878;
  }

  else
  {
    v28 = Float.description.getter();
    v27 = v29;
  }

  v30 = v27;
  String.append(_:)(*&v28);

  v31._object = 0x800000010043DCC0;
  v31._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v31);
  countAndFlagsBits = v0[1]._countAndFlagsBits;
  v33 = *(countAndFlagsBits + 16);
  v34 = _swiftEmptyArrayStorage;
  v80 = v0;
  if (v33)
  {
    v83 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v33, 0);
    v34 = v83;
    v35 = countAndFlagsBits + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v36 = *(v79 + 72);
    do
    {
      sub_10003271C(v35, v6, type metadata accessor for HostedRoutingItem);
      v81 = 0x2020202020202020;
      v82 = 0xE800000000000000;
      v37._countAndFlagsBits = sub_10002C1B4();
      String.append(_:)(v37);

      v38 = v81;
      v39 = v82;
      sub_10002181C(v6, type metadata accessor for HostedRoutingItem);
      v83 = v34;
      v41 = v34[2];
      v40 = v34[3];
      if (v41 >= v40 >> 1)
      {
        sub_1000089FC((v40 > 1), v41 + 1, 1);
        v34 = v83;
      }

      v34[2] = v41 + 1;
      v42 = &v34[2 * v41];
      v42[4] = v38;
      v42[5] = v39;
      v35 += v36;
      --v33;
    }

    while (v33);
    v1 = v80;
  }

  v81 = v34;
  v43 = sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  v44 = sub_10002C150();
  v45 = BidirectionalCollection<>.joined(separator:)();
  v47 = v46;

  v48._countAndFlagsBits = v45;
  v48._object = v47;
  String.append(_:)(v48);

  v49._object = 0x800000010043DCE0;
  v49._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v49);
  object = v1[1]._object;
  v51 = object[2];
  v52 = _swiftEmptyArrayStorage;
  if (v51)
  {
    v75[0] = v44;
    v75[1] = v43;
    v83 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v51, 0);
    v52 = v83;
    v53 = object + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v54 = *(v79 + 72);
    do
    {
      sub_10003271C(v53, v6, type metadata accessor for HostedRoutingItem);
      v81 = 0x2020202020202020;
      v82 = 0xE800000000000000;
      v55._countAndFlagsBits = sub_10002C1B4();
      String.append(_:)(v55);

      v57 = v81;
      v56 = v82;
      sub_10002181C(v6, type metadata accessor for HostedRoutingItem);
      v83 = v52;
      v59 = v52[2];
      v58 = v52[3];
      if (v59 >= v58 >> 1)
      {
        sub_1000089FC((v58 > 1), v59 + 1, 1);
        v52 = v83;
      }

      v52[2] = v59 + 1;
      v60 = &v52[2 * v59];
      v60[4] = v57;
      v60[5] = v56;
      v53 += v54;
      --v51;
    }

    while (v51);
    v1 = v80;
  }

  v81 = v52;
  v61 = BidirectionalCollection<>.joined(separator:)();
  v63 = v62;

  v64._countAndFlagsBits = v61;
  v64._object = v63;
  String.append(_:)(v64);

  v65._object = 0x800000010043DB90;
  v65._countAndFlagsBits = v77;
  String.append(_:)(v65);
  v66 = v78;
  sub_10001D9AC(v1 + v76[7], v78, &qword_100523640, qword_100451520);
  v67 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if ((*(*(v67 - 8) + 48))(v66, 1, v67) == 1)
  {
    sub_1000038A4(v66, &qword_100523640, qword_100451520);
    v68 = 0xE300000000000000;
    v69 = 7104878;
  }

  else
  {
    v70 = sub_10025DF24();
    v68 = v71;
    sub_10002181C(v66, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v69 = v70;
  }

  v72 = v68;
  String.append(_:)(*&v69);

  v73._countAndFlagsBits = 10;
  v73._object = 0xE100000000000000;
  String.append(_:)(v73);
  return v84;
}

void sub_1002624D4(uint64_t a1)
{
  v3 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for HostedRoutingItem(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  String.hash(into:)();
  v15 = *(v1 + 16);
  Hasher._combine(_:)(*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v18 = *(v9 + 72);
    do
    {
      sub_10003271C(v17, v14, type metadata accessor for HostedRoutingItem);
      sub_100258AB4(a1);
      sub_10002181C(v14, type metadata accessor for HostedRoutingItem);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  v19 = *(v1 + 24);
  Hasher._combine(_:)(*(v19 + 16));
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v22 = *(v9 + 72);
    do
    {
      sub_10003271C(v21, v12, type metadata accessor for HostedRoutingItem);
      sub_100258AB4(a1);
      sub_10002181C(v12, type metadata accessor for HostedRoutingItem);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  v23 = type metadata accessor for HostedRoutingSession(0);
  sub_10001D9AC(v1 + v23[7], v7, &qword_100523640, qword_100451520);
  if ((*(v34 + 48))(v7, 1, v35) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v24 = v33;
    sub_100032E08(v7, v33, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    Hasher._combine(_:)(1u);
    sub_1002608A8(a1);
    sub_10002181C(v24, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  }

  type metadata accessor for RoutingControls();
  sub_100017F84(&qword_100523B78, &type metadata accessor for RoutingControls, &protocol conformance descriptor for RoutingControls);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v23[9]));
  Hasher._combine(_:)(*(v1 + v23[10]));
  if (*(v1 + v23[11] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v25 = v1 + v23[12];
  if (*(v25 + 4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v26 = *v25;
    Hasher._combine(_:)(1u);
    if ((v26 & 0x7FFFFFFF) != 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    Hasher._combine(_:)(v27);
  }

  type metadata accessor for Date();
  sub_100017F84(&qword_100523B80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v23[14]));
  Hasher._combine(_:)(*(v1 + v23[15]));
  v28 = (v1 + v23[16]);
  v29 = v28[1];
  if (v29)
  {
    v30 = *v28;
    v31 = *(v28 + 4);
    v40 = *(v28 + 3);
    v41 = v31;
    v42 = v28[10];
    v32 = *(v28 + 1);
    v39 = *(v28 + 2);
    v38 = v32;
    v36 = v30;
    v37 = v29;
    Hasher._combine(_:)(1u);
    sub_100260EFC(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + v23[17]));
}

uint64_t sub_100262A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v150 = a4;
  v153 = a1;
  v154 = a2;
  v7 = sub_1001BC5A8(&qword_100523B38, &qword_100451A08);
  __chkstk_darwin(v7 - 8);
  v9 = &v120 - v8;
  v10 = sub_1001BC5A8(&qword_100523B30, &qword_100451A00);
  __chkstk_darwin(v10 - 8);
  v12 = &v120 - v11;
  v13 = sub_1001BC5A8(&qword_100523BB8, &unk_100457BF0);
  __chkstk_darwin(v13 - 8);
  v130 = &v120 - v14;
  v15 = sub_1001BC5A8(&qword_100523BC0, &qword_100451AA0);
  __chkstk_darwin(v15 - 8);
  v129 = &v120 - v16;
  v17 = sub_1001BC5A8(&qword_100523BC8, &qword_100451AA8);
  __chkstk_darwin(v17 - 8);
  v141 = &v120 - v18;
  v19 = sub_1001BC5A8(&qword_100523BD0, &unk_100451AB0);
  __chkstk_darwin(v19 - 8);
  v140 = &v120 - v20;
  v21 = sub_1001BC5A8(&qword_100523BD8, &unk_100457BE0);
  __chkstk_darwin(v21 - 8);
  v145 = &v120 - v22;
  v23 = sub_1001BC5A8(&qword_100523BE0, &qword_100451AC0);
  __chkstk_darwin(v23 - 8);
  v144 = &v120 - v24;
  v25 = sub_1001BC5A8(&qword_100523BE8, &qword_100451AC8);
  __chkstk_darwin(v25 - 8);
  v143 = &v120 - v26;
  v27 = sub_1001BC5A8(&qword_100523BF0, &qword_100451AD0);
  __chkstk_darwin(v27 - 8);
  v142 = &v120 - v28;
  v134 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v29 = *(v134 - 8);
  v30 = __chkstk_darwin(v134);
  v133 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v132 = &v120 - v32;
  v33 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v34 = __chkstk_darwin(v33 - 8);
  v138 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v120 - v36;
  v155 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v38 = *(v155 - 8);
  v39 = __chkstk_darwin(v155);
  v131 = &v120 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v146 = &v120 - v41;
  v42 = sub_1001BC5A8(&qword_100523BF8, &unk_100457C00);
  v43 = __chkstk_darwin(v42 - 8);
  v128 = &v120 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v148 = &v120 - v45;
  v46 = sub_1001BC5A8(&qword_100523B60, &qword_100451A48);
  v47 = __chkstk_darwin(v46 - 8);
  v127 = &v120 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v147 = &v120 - v49;
  RoutingControls.init()();
  v156 = a3;
  if (a3 >> 62)
  {
LABEL_127:
    v50 = _CocoaArrayWrapper.endIndex.getter();
    if (v50)
    {
      goto LABEL_3;
    }

LABEL_128:

    return sub_1000038A4(v150, &qword_100523640, qword_100451520);
  }

  v50 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v50)
  {
    goto LABEL_128;
  }

LABEL_3:
  v137 = v37;
  v121 = v12;
  v122 = v9;
  v37 = 0;
  v9 = (v156 & 0xC000000000000001);
  v12 = (v156 & 0xFFFFFFFFFFFFFF8);
  v151 = v156 + 32;
  v152 = a5;
  v149 = v38 + 6;
  v52 = v153 == 0x4C41434F4CLL && v154 == 0xE500000000000000;
  v135 = v52;
  v123 = kMRMediaRemoteCommandInfoIsActiveKey;
  v139 = kMRMediaRemoteCommandInfoPreferredIntervalsKey;
  v126 = enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:);
  v125 = (v29 + 104);
  v124 = (v29 + 8);
  v53 = v138;
  v29 = v155;
  v136 = v156 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v9)
    {
      v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *(v12 + 2))
      {
        goto LABEL_126;
      }

      v55 = *(v151 + 8 * v37);
    }

    v38 = v55;
    if (__OFADD__(v37++, 1))
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v57 = [v55 command];
    if (v57 > 7)
    {
      break;
    }

    if (v57 > 2)
    {
      switch(v57)
      {
        case 3:

          [v38 isEnabled];
          a5 = v142;
          RoutingControls.StopControl.init(sessionIdentifier:isDisabled:)();
          v73 = type metadata accessor for RoutingControls.StopControl();
          (*(*(v73 - 8) + 56))(a5, 0, 1, v73);
          RoutingControls.stop.setter();
          goto LABEL_79;
        case 4:

          [v38 isEnabled];
          a5 = v144;
          RoutingControls.NextTrackControl.init(sessionIdentifier:isDisabled:)();
          TrackControl = type metadata accessor for RoutingControls.NextTrackControl();
          (*(*(TrackControl - 8) + 56))(a5, 0, 1, TrackControl);
          RoutingControls.nextTrack.setter();
LABEL_79:
          v29 = v155;
          break;
        case 5:

          [v38 isEnabled];
          a5 = v143;
          RoutingControls.PreviousTrackControl.init(sessionIdentifier:isDisabled:)();
          v67 = type metadata accessor for RoutingControls.PreviousTrackControl();
          (*(*(v67 - 8) + 56))(a5, 0, 1, v67);
          RoutingControls.previousTrack.setter();
          goto LABEL_79;
      }

LABEL_80:

      goto LABEL_16;
    }

    if (!v57)
    {

      [v38 isEnabled];
      default argument 2 of RoutingControls.PlayControl.init(sessionIdentifier:isDisabled:useToggle:)();
      a5 = v147;
      RoutingControls.PlayControl.init(sessionIdentifier:isDisabled:useToggle:)();
      v69 = type metadata accessor for RoutingControls.PlayControl();
      (*(*(v69 - 8) + 56))(a5, 0, 1, v69);
      RoutingControls.play.setter();
      goto LABEL_79;
    }

    if (v57 == 1)
    {

      [v38 isEnabled];
      default argument 2 of RoutingControls.PauseControl.init(sessionIdentifier:isDisabled:useToggle:)();
      a5 = v148;
      RoutingControls.PauseControl.init(sessionIdentifier:isDisabled:useToggle:)();
      v82 = type metadata accessor for RoutingControls.PauseControl();
      (*(*(v82 - 8) + 56))(a5, 0, 1, v82);
      RoutingControls.pause.setter();
      goto LABEL_79;
    }

    if (v57 != 2)
    {
      goto LABEL_80;
    }

    a5 = v137;
    sub_10001D9AC(v150, v137, &qword_100523640, qword_100451520);
    if ((*v149)(a5, 1, v29) != 1)
    {
      sub_100032E08(a5, v146, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      v89 = v132;
      RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
      v90 = v133;
      v91 = v134;
      (*v125)(v133, v126, v134);
      v92 = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
      v93 = *v124;
      (*v124)(v90, v91);
      v93(v89, v91);
      if (v92)
      {
        v94 = v128;
        RoutingControls.pause.getter();
        v95 = type metadata accessor for RoutingControls.PauseControl();
        a5 = *(v95 - 8);
        v96 = (*(a5 + 48))(v94, 1, v95);
        v53 = v138;
        if (v96 == 1)
        {
          sub_1000038A4(v94, &qword_100523BF8, &unk_100457C00);

          [v38 isEnabled];
          v97 = v148;
          RoutingControls.PauseControl.init(sessionIdentifier:isDisabled:useToggle:)();
          v98 = *(a5 + 56);
          a5 += 56;
          v98(v97, 0, 1, v95);
          RoutingControls.pause.setter();
LABEL_107:

          sub_10002181C(v146, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
LABEL_115:
          v29 = v155;
          v12 = v136;
          goto LABEL_16;
        }

        sub_10002181C(v146, type metadata accessor for HostedRoutingSession.NowPlayingInfo);

        v116 = v94;
        v117 = &qword_100523BF8;
        v118 = &unk_100457C00;
      }

      else
      {
        v111 = v127;
        RoutingControls.play.getter();
        v112 = type metadata accessor for RoutingControls.PlayControl();
        a5 = *(v112 - 8);
        v113 = (*(a5 + 48))(v111, 1, v112);
        v53 = v138;
        if (v113 == 1)
        {
          sub_1000038A4(v111, &qword_100523B60, &qword_100451A48);

          [v38 isEnabled];
          v114 = v147;
          RoutingControls.PlayControl.init(sessionIdentifier:isDisabled:useToggle:)();
          v115 = *(a5 + 56);
          a5 += 56;
          v115(v114, 0, 1, v112);
          RoutingControls.play.setter();
          goto LABEL_107;
        }

        sub_10002181C(v146, type metadata accessor for HostedRoutingSession.NowPlayingInfo);

        v116 = v111;
        v117 = &qword_100523B60;
        v118 = &qword_100451A48;
      }

      sub_1000038A4(v116, v117, v118);
      goto LABEL_115;
    }

    sub_1000038A4(a5, &qword_100523640, qword_100451520);
LABEL_16:
    if (v37 == v50)
    {
      goto LABEL_128;
    }
  }

  if (v57 <= 17)
  {
    if (v57 == 8)
    {
      v29 = 0;
      while (v50 != v29)
      {
        if (v9)
        {
          v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v29 >= *(v12 + 2))
          {
            goto LABEL_124;
          }

          v70 = *(v156 + 8 * v29 + 32);
        }

        a5 = v70;
        if (__OFADD__(v29, 1))
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v71 = [v70 command];

        ++v29;
        if (v71 == 9)
        {

          [v38 isEnabled];
          a5 = v129;
          RoutingControls.FastForwardControl.init(sessionIdentifier:isDisabled:)();
          v72 = type metadata accessor for RoutingControls.FastForwardControl();
          (*(*(v72 - 8) + 56))(a5, 0, 1, v72);
          RoutingControls.fastForward.setter();
          goto LABEL_15;
        }
      }

      goto LABEL_15;
    }

    if (v57 == 10)
    {
      v29 = 0;
      while (v50 != v29)
      {
        if (v9)
        {
          v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v29 >= *(v12 + 2))
          {
            goto LABEL_125;
          }

          v83 = *(v156 + 8 * v29 + 32);
        }

        a5 = v83;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_122;
        }

        v84 = [v83 command];

        ++v29;
        if (v84 == 11)
        {

          [v38 isEnabled];
          a5 = v130;
          RoutingControls.RewindControl.init(sessionIdentifier:isDisabled:)();
          v85 = type metadata accessor for RoutingControls.RewindControl();
          (*(*(v85 - 8) + 56))(a5, 0, 1, v85);
          RoutingControls.rewind.setter();
          goto LABEL_15;
        }
      }

      goto LABEL_15;
    }

    if (v57 != 17)
    {
      goto LABEL_80;
    }

    v58 = [v38 options];
    if (v58)
    {
      v59 = v58;
      v60 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      result = v139;
      if (!v139)
      {
        goto LABEL_130;
      }

      v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v158 = v62;
      AnyHashable.init<A>(_:)();
      if (*(v60 + 16))
      {
        v63 = sub_10001BF64(&v159);
        if (v64)
        {
          sub_100020E0C(*(v60 + 56) + 32 * v63, &v160);
          sub_10001BF10(&v159);

          if (*(&v161 + 1))
          {
            sub_1001BC5A8(&qword_100523C00, &qword_100451AD8);
            if (swift_dynamicCast())
            {
              a5 = v159;
              if (*(v159 + 16))
              {

                [v38 isEnabled];
                v65 = v141;
                RoutingControls.SkipForwardControl.init(intervals:preferredInterval:sessionIdentifier:isDisabled:)();
                v66 = type metadata accessor for RoutingControls.SkipForwardControl();
                (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
                goto LABEL_14;
              }
            }

LABEL_13:

            [v38 isEnabled];
            a5 = v141;
            RoutingControls.SkipForwardControl.init(intervals:preferredInterval:sessionIdentifier:isDisabled:)();
            v54 = type metadata accessor for RoutingControls.SkipForwardControl();
            (*(*(v54 - 8) + 56))(a5, 0, 1, v54);
LABEL_14:
            RoutingControls.skipForward.setter();
            goto LABEL_15;
          }

LABEL_12:
          sub_1000038A4(&v160, &qword_100522890, &qword_100450610);
          goto LABEL_13;
        }
      }

      sub_10001BF10(&v159);
    }

    v160 = 0u;
    v161 = 0u;
    goto LABEL_12;
  }

  if (v57 != 18)
  {
    if (v57 != 21)
    {
      if (v57 == 24)
      {

        [v38 isEnabled];
        a5 = v145;
        RoutingControls.SeekControl.init(sessionIdentifier:isDisabled:)();
        v68 = type metadata accessor for RoutingControls.SeekControl();
        (*(*(v68 - 8) + 56))(a5, 0, 1, v68);
        RoutingControls.seek.setter();
        goto LABEL_79;
      }

      goto LABEL_80;
    }

    a5 = &qword_100523640;
    sub_10001D9AC(v150, v53, &qword_100523640, qword_100451520);
    if ((*v149)(v53, 1, v29) == 1)
    {
      v87 = v12;
      v88 = v53;
      sub_1000038A4(v53, &qword_100523640, qword_100451520);
    }

    else
    {
      v99 = v131;
      sub_100032E08(v53, v131, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      v100 = *(v99 + 48);
      v101 = *(v99 + 56);
      a5 = *(v99 + 60);
      sub_100248888(v100, v101, *(v99 + 60));
      sub_10002181C(v99, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
      if (!a5)
      {
        sub_1002488FC(v100, v101, 0);

        goto LABEL_115;
      }

      v88 = v53;
      sub_1002488FC(v100, v101, a5);
      v29 = v155;
      v87 = v136;
    }

    if (!v135 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      v53 = v88;
      v12 = v87;
      goto LABEL_16;
    }

    v53 = v88;
    if (![v38 isEnabled])
    {

      v12 = v87;
      goto LABEL_16;
    }

    v102 = [v38 options];
    v12 = v87;
    if (!v102)
    {

      v160 = 0u;
      v161 = 0u;
      goto LABEL_117;
    }

    a5 = v102;
    v103 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    result = v123;
    if (!v123)
    {
      goto LABEL_131;
    }

    v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = v104;
    AnyHashable.init<A>(_:)();
    if (!*(v103 + 16) || (v105 = sub_10001BF64(&v159), (v106 & 1) == 0))
    {

      sub_10001BF10(&v159);
      v160 = 0u;
      v161 = 0u;
LABEL_111:

      v29 = v155;
LABEL_117:
      sub_1000038A4(&v160, &qword_100522890, &qword_100450610);
      goto LABEL_16;
    }

    sub_100020E0C(*(v103 + 56) + 32 * v105, &v160);
    sub_10001BF10(&v159);

    if (!*(&v161 + 1))
    {
      goto LABEL_111;
    }

    v107 = swift_dynamicCast();
    v29 = v155;
    if (!v107)
    {
      goto LABEL_80;
    }

    v108 = v159;

    [v38 isEnabled];
    if (v108)
    {
      a5 = v121;
      RoutingControls.UnfavoriteControl.init(sessionIdentifier:isDisabled:)();
      v109 = type metadata accessor for RoutingControls.UnfavoriteControl();
      (*(*(v109 - 8) + 56))(a5, 0, 1, v109);
      RoutingControls.unfavorite.setter();
    }

    else
    {
      a5 = v122;
      RoutingControls.FavoriteControl.init(sessionIdentifier:isDisabled:)();
      v119 = type metadata accessor for RoutingControls.FavoriteControl();
      (*(*(v119 - 8) + 56))(a5, 0, 1, v119);
      RoutingControls.favorite.setter();
    }

LABEL_15:

    v29 = v155;
    goto LABEL_16;
  }

  v74 = [v38 options];
  if (!v74)
  {
    goto LABEL_100;
  }

  v75 = v74;
  v76 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  result = v139;
  if (v139)
  {
    v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = v77;
    AnyHashable.init<A>(_:)();
    if (*(v76 + 16))
    {
      v78 = sub_10001BF64(&v159);
      if (v79)
      {
        sub_100020E0C(*(v76 + 56) + 32 * v78, &v160);
        sub_10001BF10(&v159);

        if (*(&v161 + 1))
        {
          sub_1001BC5A8(&qword_100523C00, &qword_100451AD8);
          if (swift_dynamicCast())
          {
            a5 = v159;
            if (*(v159 + 16))
            {

              [v38 isEnabled];
              v80 = v140;
              RoutingControls.SkipBackwardControl.init(intervals:preferredInterval:sessionIdentifier:isDisabled:)();
              v81 = type metadata accessor for RoutingControls.SkipBackwardControl();
              (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
LABEL_103:
              RoutingControls.skipBackward.setter();
              goto LABEL_15;
            }
          }

LABEL_102:

          [v38 isEnabled];
          a5 = v140;
          RoutingControls.SkipBackwardControl.init(intervals:preferredInterval:sessionIdentifier:isDisabled:)();
          v110 = type metadata accessor for RoutingControls.SkipBackwardControl();
          (*(*(v110 - 8) + 56))(a5, 0, 1, v110);
          goto LABEL_103;
        }

LABEL_101:
        sub_1000038A4(&v160, &qword_100522890, &qword_100450610);
        goto LABEL_102;
      }
    }

    sub_10001BF10(&v159);
LABEL_100:
    v160 = 0u;
    v161 = 0u;
    goto LABEL_101;
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_100264404@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = type metadata accessor for HostedRoutingItem(0);
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HostedRoutingSourceSession(0);
  v8 = a1 + *(v7 + 60);
  v9 = *(v8 + 1);
  v53 = *v8;
  v54 = v9;
  v10 = *(v8 + 3);
  v55 = *(v8 + 2);
  v56 = v10;
  v57 = *(v8 + 4);
  v58 = *(v8 + 10);
  v11 = *(&v53 + 1);
  if (!*(&v53 + 1) || *(a1 + *(v7 + 56)) != 1)
  {
    v26 = *(v8 + 3);
    v51 = *(v8 + 2);
    v52[0] = v26;
    v52[1] = *(v8 + 4);
    *&v52[2] = *(v8 + 10);
    v27 = *(v8 + 1);
    v49 = *v8;
    v50 = v27;
    result = sub_10001D9AC(&v49, &v40, &qword_100523B20, &unk_1004519F0);
    v11 = *(&v49 + 1);
    v19 = v49;
    v21 = *(&v50 + 1);
    v20 = v50;
    v23 = *(&v51 + 1);
    v22 = v51;
    v12 = v52[0];
    v24 = BYTE1(v52[0]);
    v38 = *(v52 + 2);
    v39[0] = *(&v52[1] + 2);
    v25 = *&v52[2];
LABEL_12:
    *(v39 + 14) = v25;
    goto LABEL_13;
  }

  v33 = v54;
  v34 = v53;
  v35 = *(&v55 + 1);
  v32 = v55;
  v36 = *(&v54 + 1);
  v12 = v56;
  v31 = BYTE1(v56);
  if ((*a1 != 0x4C41434F4CLL || a1[1] != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v29 = *(v8 + 66);
    v38 = *(v8 + 50);
    v39[0] = v29;
    *(v39 + 14) = *(v8 + 10);
    result = sub_10001D9AC(&v53, &v49, &qword_100523B20, &unk_1004519F0);
    v20 = v33;
    v19 = v34;
    v23 = v35;
    v21 = v36;
    v22 = v32;
    v24 = v31;
LABEL_13:
    *a2 = v19;
    *(a2 + 8) = v11;
    *(a2 + 16) = v20;
    *(a2 + 24) = v21;
    *(a2 + 32) = v22;
    *(a2 + 40) = v23;
    *(a2 + 48) = v12;
    *(a2 + 49) = v24;
    v28 = v39[0];
    *(a2 + 50) = v38;
    *(a2 + 66) = v28;
    *(a2 + 80) = *(v39 + 14);
    return result;
  }

  v13 = a1[4];
  v14 = *(v13 + 16);
  sub_10001D9AC(&v53, &v49, &qword_100523B20, &unk_1004519F0);
  v30 = v11;

  v16 = 0;
  while (1)
  {
    v17 = v16;
    if (v14 == v16)
    {
LABEL_10:
      sub_1000038A4(&v53, &qword_100523B20, &unk_1004519F0);
      v40 = v34;
      v41 = v30;
      v42 = v33;
      v43 = v36;
      v44 = v32;
      v45 = v35;
      v46 = v14 != v17;
      v47 = v31 & 1;
      memset(&v48[6], 0, 32);
      *&v49 = v34;
      *(&v49 + 1) = v30;
      *&v50 = v33;
      *(&v50 + 1) = v36;
      *&v51 = v32;
      *(&v51 + 1) = v35;
      LOBYTE(v52[0]) = v14 != v17;
      BYTE1(v52[0]) = v31 & 1;
      *(v52 + 8) = 0u;
      *(&v52[1] + 8) = 0u;
      sub_10026A204(&v40, &v38);
      result = sub_10026A23C(&v49);
      v19 = v40;
      v11 = v41;
      v20 = v42;
      v21 = v43;
      v22 = v44;
      v23 = v45;
      v12 = v46;
      v24 = v47;
      v38 = *v48;
      v39[0] = *&v48[16];
      v25 = *&v48[30];
      goto LABEL_12;
    }

    if (v16 >= *(v13 + 16))
    {
      break;
    }

    sub_10003271C(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16++, v6, type metadata accessor for HostedRoutingItem);
    v18 = *&v6[*(v37 + 64) + 16];
    result = sub_10002181C(v6, type metadata accessor for HostedRoutingItem);
    if (((v18 >> 8) & 6 | (v18 >> 7) & 1) == 1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002647C8()
{
  v3 = *(v0 + *(type metadata accessor for HostedRoutingSessionSnapshot(0) + 20));

  sub_100032CAC(v1, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
  return v3;
}

unint64_t sub_100264854()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v20 = 0xD00000000000002FLL;
  v21 = 0x800000010043DD20;
  sub_10001D9AC(v0, v4, &qword_100523620, &unk_1004511D0);
  v5 = type metadata accessor for HostedRoutingSession(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1000038A4(v4, &qword_100523620, &unk_1004511D0);
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v8 = sub_100261CB0();
    v6 = v9;
    sub_10002181C(v4, type metadata accessor for HostedRoutingSession);
    v7 = v8;
  }

  v10 = v6;
  String.append(_:)(*&v7);

  v11._countAndFlagsBits = 0x6F6973736573202CLL;
  v11._object = 0xEC000000203A736ELL;
  String.append(_:)(v11);
  v19[1] = *(v1 + *(type metadata accessor for HostedRoutingSessionSnapshot(0) + 20));

  sub_100032CAC(v12, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
  v13 = Array.description.getter();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return v20;
}

unint64_t sub_100264AAC()
{
  v1 = v0;
  v2 = type metadata accessor for HostedRoutingSession(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v53 - v7;
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v59 = 0xD000000000000027;
  v60 = 0x800000010043DD50;
  sub_10001D9AC(v0, v8, &qword_100523620, &unk_1004511D0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1000038A4(v8, &qword_100523620, &unk_1004511D0);
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v11 = sub_100261DEC();
    v9 = v12;
    sub_10002181C(v8, type metadata accessor for HostedRoutingSession);
    v10 = v11;
  }

  v13 = v9;
  String.append(_:)(*&v10);

  v14._countAndFlagsBits = 0x656C62697369760ALL;
  v14._object = 0xEA00000000000A3ALL;
  String.append(_:)(v14);
  v15 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v16 = v15;
  v17 = *(v15 + 20);
  v55 = v1;
  v18 = *(v1 + v17);
  v19 = *(v18 + 16);
  v20 = _swiftEmptyArrayStorage;
  v54 = v3;
  if (v19)
  {
    v53 = v15;
    v58 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v19, 0);
    v20 = v58;
    v21 = v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    do
    {
      sub_10003271C(v21, v5, type metadata accessor for HostedRoutingSession);
      v56 = 8224;
      v57 = 0xE200000000000000;
      v23._countAndFlagsBits = sub_100261DEC();
      String.append(_:)(v23);

      v25 = v56;
      v24 = v57;
      sub_10002181C(v5, type metadata accessor for HostedRoutingSession);
      v58 = v20;
      v27 = v20[2];
      v26 = v20[3];
      if (v27 >= v26 >> 1)
      {
        sub_1000089FC((v26 > 1), v27 + 1, 1);
        v20 = v58;
      }

      v20[2] = v27 + 1;
      v28 = &v20[2 * v27];
      v28[4] = v25;
      v28[5] = v24;
      v21 += v22;
      --v19;
    }

    while (v19);
    v16 = v53;
  }

  v56 = v20;
  v29 = sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  v30 = sub_10002C150();
  v31 = BidirectionalCollection<>.joined(separator:)();
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v35._countAndFlagsBits = 0x3A6E65646469680ALL;
  v35._object = 0xE800000000000000;
  String.append(_:)(v35);
  v36 = *(v55 + *(v16 + 24));
  v37 = *(v36 + 16);
  v38 = _swiftEmptyArrayStorage;
  if (v37)
  {
    v53 = v30;
    v55 = v29;
    v58 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v37, 0);
    v38 = v58;
    v39 = v36 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v40 = *(v54 + 72);
    do
    {
      sub_10003271C(v39, v5, type metadata accessor for HostedRoutingSession);
      v56 = 8224;
      v57 = 0xE200000000000000;
      v41._countAndFlagsBits = sub_100261DEC();
      String.append(_:)(v41);

      v43 = v56;
      v42 = v57;
      sub_10002181C(v5, type metadata accessor for HostedRoutingSession);
      v58 = v38;
      v45 = v38[2];
      v44 = v38[3];
      if (v45 >= v44 >> 1)
      {
        sub_1000089FC((v44 > 1), v45 + 1, 1);
        v38 = v58;
      }

      v38[2] = v45 + 1;
      v46 = &v38[2 * v45];
      v46[4] = v43;
      v46[5] = v42;
      v39 += v40;
      --v37;
    }

    while (v37);
  }

  v56 = v38;
  v47 = BidirectionalCollection<>.joined(separator:)();
  v49 = v48;

  v50._countAndFlagsBits = v47;
  v50._object = v49;
  String.append(_:)(v50);

  v51._countAndFlagsBits = 10;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  return v59;
}

void sub_100264FC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HostedRoutingSession(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - v10;
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  sub_10001D9AC(v2, &v26 - v15, &qword_100523620, &unk_1004511D0);
  if ((*(v5 + 48))(v16, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100032E08(v16, v13, type metadata accessor for HostedRoutingSession);
    Hasher._combine(_:)(1u);
    sub_1002624D4(a1);
    sub_10002181C(v13, type metadata accessor for HostedRoutingSession);
  }

  v17 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v18 = *(v2 + *(v17 + 20));
  Hasher._combine(_:)(*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v21 = *(v5 + 72);
    do
    {
      sub_10003271C(v20, v11, type metadata accessor for HostedRoutingSession);
      sub_1002624D4(a1);
      sub_10002181C(v11, type metadata accessor for HostedRoutingSession);
      v20 += v21;
      --v19;
    }

    while (v19);
  }

  v22 = *(v2 + *(v17 + 24));
  Hasher._combine(_:)(*(v22 + 16));
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v25 = *(v5 + 72);
    do
    {
      sub_10003271C(v24, v8, type metadata accessor for HostedRoutingSession);
      sub_1002624D4(a1);
      sub_10002181C(v8, type metadata accessor for HostedRoutingSession);
      v24 += v25;
      --v23;
    }

    while (v23);
  }
}