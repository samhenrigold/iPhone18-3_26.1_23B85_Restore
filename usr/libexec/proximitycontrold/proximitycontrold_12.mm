uint64_t sub_10011A938(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100035D04(&unk_100350E90, &unk_10027C950);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1000516B4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1000516B4(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1000516B4(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10011ABF0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100345490);
  sub_100003078(v0, qword_100345490);
  return Logger.init(subsystem:category:)();
}

void sub_10011AC74()
{
  v1 = v0;
  if (qword_100339010 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100345490);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x29286873696E6966, 0xE800000000000000, v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold14TransferRecord_published;
  if ((*(v0 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_published) & 1) == 0)
  {
    sub_10011B608(v13);
    sub_100119454();
    sub_10011D6F8(v13);
    *(v0 + v7) = 1;
    v11 = *(v0 + 16);
    if (!v11)
    {
      return;
    }

    goto LABEL_11;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "### Attempted double-publish", v10, 2u);
  }

  v11 = *(v1 + 16);
  if (v11)
  {
LABEL_11:
    v12 = *(v1 + 24);

    v11(v1);
    sub_10002689C(v11, v12);
  }
}

uint64_t sub_10011AEA4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = &v28 - v6;
  v7 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - v12;
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  sub_10011B28C(&v28 - v14);
  v16 = *(v2 + 48);
  if (v16(v15, 1, v1) == 1)
  {
    sub_1000097E8(v15, &qword_10033C280, &qword_100272A80);
    return 0;
  }

  else
  {
    v29 = v4;
    v31 = v1;
    v18 = OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferStarted;
    swift_beginAccess();
    v19 = 1;
    if (!(*(v5 + 48))(v0 + v18, 1, v32))
    {
      v20 = v0 + v18;
      v21 = v30;
      sub_100009848(v20, v30, &qword_1003454F8, &unk_10028B580);
      (*(v2 + 32))(v13, v21, v31);
      v19 = 0;
    }

    v22 = v31;
    (*(v2 + 56))(v13, v19, 1, v31);
    sub_100009848(v13, v10, &qword_10033C280, &qword_100272A80);
    if (v16(v10, 1, v22) == 1)
    {
      sub_1000097E8(v13, &qword_10033C280, &qword_100272A80);
      sub_1000097E8(v10, &qword_10033C280, &qword_100272A80);
      v17 = 0;
      (*(v2 + 8))(v15, v22);
    }

    else
    {
      v23 = v29;
      (*(v2 + 32))(v29, v10, v22);
      Date.timeIntervalSince(_:)();
      v25 = v24;
      v26 = *(v2 + 8);
      v26(v23, v22);
      sub_1000097E8(v13, &qword_10033C280, &qword_100272A80);
      v17 = v25;
      v26(v15, v22);
    }
  }

  return v17;
}

uint64_t sub_10011B28C@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22[-v5];
  v7 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v7 - 8);
  v9 = &v22[-v8];
  v10 = OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferSucceeded;
  swift_beginAccess();
  if ((*(v4 + 48))(v1 + v10, 1, v3))
  {
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    v14 = 1;
    v13(v9, 1, 1, v11);
    v15 = v1 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferFailed;
    swift_beginAccess();
    v16 = sub_100035D04(&unk_100345508, &qword_10027C860);
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {
      (*(v12 + 16))(a1, v15 + *(v16 + 28), v11);
      v14 = 0;
    }

    v13(a1, v14, 1, v11);
    result = (*(v12 + 48))(v9, 1, v11);
    if (result != 1)
    {
      return sub_1000097E8(v9, &qword_10033C280, &qword_100272A80);
    }
  }

  else
  {
    sub_100009848(v1 + v10, v6, &qword_1003454F8, &unk_10028B580);
    v18 = type metadata accessor for Date();
    v19 = *(v18 - 8);
    v20 = *(v19 + 32);
    v20(v9, v6, v18);
    v21 = *(v19 + 56);
    v21(v9, 0, 1, v18);
    v20(a1, v9, v18);
    return (v21)(a1, 0, 1, v18);
  }

  return result;
}

uint64_t sub_10011B608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100035D04(&qword_100345618, &qword_10027C938);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - v6;
  if (qword_100339010 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_100345490);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0x636974796C616E61, 0xEE00746E65764573, v83);
    *(v11 + 12) = 2080;
    v82[3] = v4;
    v82[0] = v2;

    v12 = sub_100057A98(v82);
    v14 = v13;
    sub_10000903C(v82);
    v15 = sub_100017494(v12, v14, v83);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: self=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v16 = qword_10038B0B8;
  v17 = *(qword_10038B0B8 + 552);
  v18 = sub_1000031CC();

  v81 = v18;
  if ((v18 & 1) == 0)
  {
    v19 = *(v16 + 552);
    v20 = *(v19 + *((swift_isaMask & *v19) + 0x70));
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v23 = String._bridgeToObjectiveC()();
      [v22 setBool:1 forKey:v23];
    }
  }

  v24 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_contentType);
  if (v24 <= 3)
  {
    if (*(v2 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_contentType) > 1u)
    {
      if (v24 == 2)
      {
        v80 = 0xE500000000000000;
        v25 = 0x656E6F6850;
      }

      else
      {
        v80 = 0xE700000000000000;
        v25 = 0x74736163646F50;
      }
    }

    else if (*(v2 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_contentType))
    {
      v80 = 0xE500000000000000;
      v25 = 0x636973754DLL;
    }

    else
    {
      v80 = 0xE800000000000000;
      v25 = 0x656D695465636146;
    }
  }

  else if (*(v2 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_contentType) <= 5u)
  {
    if (v24 == 4)
    {
      v79 = 0xD000000000000019;
      v25 = 0x8000000100297150;
      v26 = &v91;
      goto LABEL_28;
    }

    v80 = 0x8000000100297170;
    v25 = 0xD00000000000001ALL;
  }

  else if (v24 == 6)
  {
    v80 = 0xEB000000006C6C61;
    v25 = 0x436E776F6E6B6E55;
  }

  else if (v24 == 7)
  {
    v80 = 0xEC00000061696465;
    v25 = 0x4D6E776F6E6B6E55;
  }

  else
  {
    v80 = 0xE700000000000000;
    v25 = 0x6E776F6E6B6E55;
  }

  v26 = &v90;
LABEL_28:
  *(v26 - 32) = v25;
  v78 = *(v2 + 32);
  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014BB8C();
  v27 = sub_10014C668(1);
  v76 = 0;
  v77 = v27;

  sub_10014BB8C();
  v28 = sub_10014C668(28);
  v74 = 0;
  v75 = v28;

  sub_10014BB8C();
  v29 = sub_10014C668(7);
  v70 = 0;
  v73 = v29;

  v72 = sub_10011AEA4();
  v71 = v30;
  v31 = OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferFailed;
  swift_beginAccess();
  sub_100009848(v2 + v31, v7, &qword_100345618, &qword_10027C938);
  v32 = sub_100035D04(&unk_100345508, &qword_10027C860);
  v33 = *(*(v32 - 8) + 48);
  v69 = v33(v7, 1, v32);
  sub_1000097E8(v7, &qword_100345618, &qword_10027C938);
  v34 = 0;
  v35 = 0;
  if (!v33(v2 + v31, 1, v32))
  {
    swift_getErrorValue();
    v36 = v83[2];
    v37 = v2;
    v38 = v83[3];
    swift_errorRetain();
    v39 = v38;
    v2 = v37;
    v40 = sub_100140158(v36, v39);
    v41 = [v40 code];

    v83[0] = v41;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v42;
  }

  v68 = v35;
  if (v33(v2 + v31, 1, v32))
  {
    v67 = 0;
    v43 = 0;
  }

  else
  {
    swift_getErrorValue();
    v44 = v84;
    v66 = v34;
    v45 = v85;
    swift_errorRetain();
    v46 = sub_100140158(v44, v45);

    v47 = [v46 domain];

    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v48;

    v34 = v66;
  }

  if (v33(v2 + v31, 1, v32))
  {
    v49 = 0;
    v50 = 0;
  }

  else
  {
    swift_getErrorValue();
    swift_errorRetain();
    v49 = Error.localizedDescription.getter();
    v50 = v51;
  }

  v52 = v70 != 0;
  v54 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_deviceModel);
  v53 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_deviceModel + 8);
  v55 = v74 != 0;
  v56 = *(v2 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_direction);
  v57 = v76 != 0;
  LOBYTE(v83[0]) = v76 != 0;
  v89 = v74 != 0;
  if (v56 >= 3)
  {
    v58 = 2;
  }

  else
  {
    v58 = 2 - v56;
  }

  v88 = 1;
  v59 = v69 != 1;
  v60 = (v81 & 1) == 0;
  v87 = v70 != 0;
  v61 = v71 & 1;
  v86 = v71 & 1;
  *a1 = v78;
  v62 = v80;
  *(a1 + 8) = v79;
  *(a1 + 16) = v62;
  *(a1 + 24) = v77;
  *(a1 + 32) = v57;
  *(a1 + 40) = v75;
  *(a1 + 48) = v55;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = v73;
  *(a1 + 80) = v52;
  *(a1 + 88) = v72;
  *(a1 + 96) = v61;
  *(a1 + 97) = v59;
  v63 = v68;
  *(a1 + 104) = v34;
  *(a1 + 112) = v63;
  *(a1 + 120) = v67;
  *(a1 + 128) = v43;
  *(a1 + 136) = v49;
  *(a1 + 144) = v50;
  *(a1 + 152) = v60;
  *(a1 + 160) = v54;
  *(a1 + 168) = v53;
  *(a1 + 176) = v58;
}

double sub_10011BFB4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10011C028(a1, a2);
  }

  return result;
}

uint64_t sub_10011C028(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100035D04(&qword_100345618, &qword_10027C938);
  v7 = __chkstk_darwin(v6 - 8);
  v56 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = (&v51 - v9);
  v10 = sub_100035D04(&qword_100345620, &unk_10027C940);
  v11 = __chkstk_darwin(v10 - 8);
  v54 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v51 - v13;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339010 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003078(v18, qword_100345490);
  v58 = *(v15 + 16);
  v58(v17, a2, v14);
  sub_100076E64(a1, v62);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  sub_100076EC0(a1);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = a2;
    v22 = v21;
    v51 = swift_slowAlloc();
    v61[0] = v51;
    *v22 = 136315650;
    *(v22 + 4) = sub_100017494(0xD000000000000021, 0x80000001002A0A40, v61);
    *(v22 + 12) = 2080;
    v23 = a1[1];
    v62[0] = *a1;
    v62[1] = v23;
    v62[2] = a1[2];
    v63 = *(a1 + 6);
    sub_100076E64(a1, &v59);
    v24 = String.init<A>(describing:)();
    v26 = sub_100017494(v24, v25, v61);
    v53 = v2;
    v27 = v26;

    *(v22 + 14) = v27;
    *(v22 + 22) = 2080;
    sub_10011D6B0(&qword_100345628, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v15 + 8))(v17, v14);
    v31 = sub_100017494(v28, v30, v61);
    v3 = v53;

    *(v22 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s: state=%s, timestamp=%s", v22, 0x20u);
    swift_arrayDestroy();

    a2 = v52;
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  v32 = *(a1 + 2);
  switch(v32)
  {
    case 2:
      v38 = v57;
      v58(v57, a2, v14);
      v39 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
      (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
      v40 = v54;
      sub_100009848(v38, v54, &qword_100345620, &unk_10027C940);
      v41 = OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferSucceeded;
      swift_beginAccess();
      sub_10011D5D8(v40, v3 + v41, &qword_100345620, &unk_10027C940);
      swift_endAccess();
      sub_10011AC74();
      sub_1000097E8(v40, &qword_100345620, &unk_10027C940);
      return sub_1000097E8(v38, &qword_100345620, &unk_10027C940);
    case 1:
      v33 = v57;
      v58(v57, a2, v14);
      v36 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
      (*(*(v36 - 8) + 56))(v33, 0, 1, v36);
      v35 = OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferStarted;
      goto LABEL_11;
    case 0:
      v33 = v57;
      v58(v57, a2, v14);
      v34 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
      (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
      v35 = OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferRequested;
LABEL_11:
      swift_beginAccess();
      sub_1000097E8(v3 + v35, &qword_100345620, &unk_10027C940);
      sub_10011D640(v33, v3 + v35);
      return swift_endAccess();
    default:
      v64 = *a1;
      v42 = *(a1 + 40);
      v59 = *(a1 + 24);
      v60 = v42;
      sub_1000982F8();
      v43 = a2;
      v44 = swift_allocError();
      *v45 = v64;
      *(v45 + 16) = v32;
      v46 = v60;
      *(v45 + 24) = v59;
      *(v45 + 40) = v46;
      v47 = sub_100035D04(&unk_100345508, &qword_10027C860);
      v48 = v55;
      v58(v55 + *(v47 + 28), v43, v14);
      *v48 = v44;
      (*(*(v47 - 8) + 56))(v48, 0, 1, v47);
      v49 = v56;
      sub_100009848(v48, v56, &qword_100345618, &qword_10027C938);
      v50 = OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferFailed;
      swift_beginAccess();
      sub_100076E64(a1, v62);
      swift_errorRetain();
      sub_10011D5D8(v49, v3 + v50, &qword_100345618, &qword_10027C938);
      swift_endAccess();
      sub_10011AC74();
      sub_1000097E8(v49, &qword_100345618, &qword_10027C938);
      sub_1000097E8(v48, &qword_100345618, &qword_10027C938);
  }
}

uint64_t sub_10011C84C()
{
  v1 = v0;
  if (qword_100339010 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100345490);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_10002689C(*(v1 + 16), *(v1 + 24));
  v6 = OBJC_IVAR____TtC17proximitycontrold14TransferRecord_creationDate;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferRequested, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferStarted, &qword_100345620, &unk_10027C940);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferFailed, &qword_100345618, &qword_10027C938);
  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferSucceeded, &qword_100345620, &unk_10027C940);

  return v1;
}

uint64_t sub_10011CA24()
{
  sub_10011C84C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransferRecord(uint64_t a1)
{
  result = qword_1003454E0;
  if (!qword_1003454E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011CAD0(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_10011CC54(319, &qword_1003454F0, &qword_1003454F8, &unk_10028B580);
    if (v2 <= 0x3F)
    {
      sub_10011CC54(319, &qword_100345500, &unk_100345508, &qword_10027C860);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10011CC54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100035D4C(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10011CCA8(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[0] = v2;

  v3 = sub_100057A98(v5);
  sub_10000903C(v5);
  return v3;
}

uint64_t sub_10011CD00(uint64_t a1)
{
  result = sub_10011D6B0(&qword_1003455E8, type metadata accessor for TransferRecord, &unk_10027C880);
  *(a1 + 8) = result;
  return result;
}

Class sub_10011CD58(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100103CBC();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_10011CDE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  sub_100035D04(&qword_1003455F8, &qword_10027C928);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  sub_10006C458(v3, v4, v5, v6, v7, v8, v9);
  return Date.init()();
}

uint64_t sub_10011CE84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = sub_100035D04(&qword_1003455F0, &qword_10027C8D8);
  v6 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &v37 - v7;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v9 = OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferRequested;
  v10 = sub_100035D04(&qword_1003454F8, &unk_10028B580);
  v11 = *(*(v10 - 8) + 56);
  v11(v3 + v9, 1, 1, v10);
  v11(v3 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferStarted, 1, 1, v10);
  v12 = OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferFailed;
  v13 = sub_100035D04(&unk_100345508, &qword_10027C860);
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v11(v3 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferSucceeded, 1, 1, v10);
  *(v3 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_published) = 0;
  *(v3 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_tasks) = &_swiftEmptySetSingleton;
  if (qword_100339010 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_100345490);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Init", v17, 2u);
  }

  *(v3 + 32) = *(a1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_automatic);
  *(v3 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_contentType) = *(a1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_contentType);
  v18 = OBJC_IVAR____TtC17proximitycontrold14TransferRecord_creationDate;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v38 = v19;
  v21(v3 + v18, a2);
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = a2;
  static Published.subscript.getter();

  v24 = sub_10000A0B4(v22, v23);
  v26 = v25;

  v27 = (v3 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_deviceModel);
  *v27 = v24;
  v27[1] = v26;
  *(v3 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_direction) = *(a1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction);
  v28 = UUID.uuidString.getter();
  v29 = (v3 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferID);
  *v29 = v28;
  v29[1] = v30;

  v40 = sub_10005E71C();
  sub_100035D04(&qword_10033C268, &qword_10028EAD0);
  sub_10000E244(&qword_10033E580, &qword_10033C268, &qword_10028EAD0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v31 = Publisher.eraseToAnyPublisher()();

  v40 = v31;
  sub_100035D04(&qword_10033E588, &unk_100274730);
  sub_100035D04(&qword_1003455F8, &qword_10027C928);
  sub_10000E244(&qword_10033E590, &qword_10033E588, &unk_100274730, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_100345600, &qword_1003455F0, &qword_10027C8D8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v32 = v39;
  v33 = Publisher.eraseToAnyPublisher()();

  (*(v6 + 8))(v8, v32);
  v40 = v33;
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_10011D55C;
  *(v35 + 24) = v34;
  sub_100035D04(&qword_100345608, &qword_10027C930);
  sub_10000E244(&qword_100345610, &qword_100345608, &qword_10027C930, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_1003390B0 != -1)
  {
    swift_once();
  }

  sub_10014BB8C();
  sub_10014C0EC();

  (*(v20 + 8))(v37, v38);
  return v3;
}

uint64_t sub_10011D564(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v5 = sub_100035D04(&qword_1003455F8, &qword_10027C928);
  return v3(v7, a1 + *(v5 + 48));
}

uint64_t sub_10011D5D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100035D04(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_10011D640(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100345620, &unk_10027C940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011D6B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10011D74C()
{
  result = qword_100345630;
  if (!qword_100345630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100345630);
  }

  return result;
}

uint64_t sub_10011DA6C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100345638);
  sub_100003078(v0, qword_100345638);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10011DAEC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10011DB50(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  if (qword_100339018 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100345638);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Init", v7, 2u);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_10011DC44()
{
  v1 = v0;
  if (qword_100339018 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100345638);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_10011DD2C()
{
  sub_10011DC44();

  return swift_deallocClassInstance();
}

void sub_10011DD84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v43 = a3;
  v44 = a6;
  v41 = a2;
  v42 = a5;
  v39 = type metadata accessor for PresentNoticeRequest(0);
  __chkstk_darwin(v39);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NoticeContext(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  if (qword_100339018 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003078(v18, qword_100345638);
  v40 = a1;
  sub_10011F508(a1, v17);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38 = a4;
    v45 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_100017494(0xD000000000000037, 0x80000001002A0D60, &v45);
    *(v21 + 12) = 2080;
    sub_10011F508(v17, v15);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_10011F5A0(v17, type metadata accessor for NoticeContext);
    v26 = sub_100017494(v23, v25, &v45);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s: context=%s", v21, 0x16u);
    swift_arrayDestroy();
    a4 = v38;
  }

  else
  {

    sub_10011F5A0(v17, type metadata accessor for NoticeContext);
  }

  v27 = *(*(v7 + 16) + 16);

  v29 = v27(v28);

  if (v29)
  {
    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      v30 = swift_allocObject();
      swift_weakInit();
      sub_10011E588(sub_10011F56C, v30);
    }

    sub_10011F508(v40, v11);
    v31 = &v11[*(v39 + 20)];
    v32 = v43;
    *v31 = v41;
    v31[1] = v32;
    v33 = swift_allocObject();
    v34 = v44;
    *(v33 + 16) = v42;
    *(v33 + 24) = v34;

    sub_1001533E8(v11, a4, sub_10011F574, v33, v29);

    swift_unknownObjectRelease();
    sub_10011F5A0(v11, type metadata accessor for PresentNoticeRequest);
  }

  else
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "### No remoteTransportLink", v37, 2u);
    }
  }
}

void sub_10011E1F8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1[3];
  v36 = a1[2];
  v37 = v9;
  v38[0] = a1[4];
  *(v38 + 9) = *(a1 + 73);
  v10 = a1[1];
  v34 = *a1;
  v35 = v10;
  if (qword_100339018 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_100345638);
  sub_10011F66C(&v34, &v30);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  sub_10011F6C8(&v34);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a2;
    v15 = v14;
    v25 = v14;
    v26 = swift_slowAlloc();
    v29 = v26;
    *v15 = 136315138;
    v32[0] = v36;
    v32[1] = v37;
    v33[0] = v38[0];
    *(v33 + 9) = *(v38 + 9);
    v30 = v34;
    v31 = v35;
    sub_10011F66C(&v34, &v28);
    v16 = String.init<A>(describing:)();
    v18 = sub_100017494(v16, v17, &v29);

    v19 = v25;
    *(v25 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received NoticeEventRequest: %s", v19, 0xCu);
    sub_10000903C(v26);

    a2 = v27;
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v20 = qword_10038B5B8;
  *v8 = qword_10038B5B8;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v20)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v23 = *(Strong + 16);

      v24 = *(v23 + 32);

      v30 = v36;
      v31 = v37;
      v32[0] = v38[0];
      *(v32 + 9) = *(v38 + 9);
      v24(&v30, v34, *(&v34 + 1), v35, *(&v35 + 1), a2);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10011E588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  isa = v7[-1].isa;
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003392F0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_100351320);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100017494(0xD000000000000020, 0x80000001002A0E00, &aBlock);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100017494(0xD000000000000012, 0x80000001002A0E30, &aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: Event=%s ", v13, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *&v2[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient];
  if (v14)
  {
    v32 = v4;
    v15 = v14;
    v16 = String._bridgeToObjectiveC()();
    if (qword_100339278 != -1)
    {
      swift_once();
    }

    v17 = Dictionary._bridgeToObjectiveC()().super.isa;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = sub_10011F600;
    v44 = v18;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_10018E988;
    v42 = &unk_100309AB0;
    v19 = _Block_copy(&aBlock);

    [v15 registerEventID:v16 options:v17 handler:v19];
    _Block_release(v19);

    v20 = *&v3[OBJC_IVAR____TtC17proximitycontrold12RapportProxy_dispatchQueue];
    v21 = swift_allocObject();
    v22 = v34;
    v23 = v35;
    v21[2] = v3;
    v21[3] = v22;
    v21[4] = v23;
    v43 = sub_10011F608;
    v44 = v21;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100018AB8;
    v42 = &unk_100309B00;
    v24 = _Block_copy(&aBlock);
    v25 = v20;
    v26 = v3;

    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_10007E5B8();
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10003F184();
    v27 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v32 + 8))(v6, v27);
    (*(isa + 1))(v9, v37);
  }

  else
  {
    v37 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v37, v28, "### Could not register handler - no client?", v29, 2u);
    }

    v30 = v37;
  }
}

uint64_t sub_10011EB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AnyHashable.init<A>(_:)();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v7[3] = sub_100035D04(&qword_1003457C0, &unk_10027C9F8);
  v7[0] = sub_10011F614;
  v7[1] = v5;
  swift_beginAccess();

  sub_1001CF8F8(v7, v8);
  return swift_endAccess();
}

void sub_10011EC7C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    strcpy(&v48, "rangingToken");
    BYTE13(v48) = 0;
    HIWORD(v48) = -5120;

    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v7 = sub_1000851E8(v53), (v8 & 1) != 0))
    {
      sub_10001766C(*(a1 + 56) + 32 * v7, &v48);
      sub_1000516C4(v53);
      sub_1000097E8(&v48, &unk_100339680, &qword_100278390);
      strcpy(&v48, "rangingToken");
      BYTE13(v48) = 0;
      HIWORD(v48) = -5120;
      AnyHashable.init<A>(_:)();
      *(&v49 + 1) = &type metadata for String;
      strcpy(&v48, "<Token>");
      *(&v48 + 1) = 0xE700000000000000;
      sub_1000516B4(&v48, v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46[0] = a1;
      sub_10004D368(v43, v53, isUniquelyReferenced_nonNull_native);
      sub_1000516C4(v53);
    }

    else
    {
      sub_1000516C4(v53);
      v48 = 0u;
      v49 = 0u;
      sub_1000097E8(&v48, &unk_100339680, &qword_100278390);
    }

    if (qword_1003392F0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_100351320);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *&v53[0] = swift_slowAlloc();
      *v13 = 136315650;
      *(v13 + 4) = sub_100017494(0xD000000000000012, 0x80000001002A0E30, v53);
      *(v13 + 12) = 2080;

      v14 = Dictionary.description.getter();
      v16 = v15;

      v17 = sub_100017494(v14, v16, v53);

      *(v13 + 14) = v17;
      *(v13 + 22) = 2080;
      if (a2)
      {
        *&v48 = a2;

        sub_100035D04(&qword_10033B7D0, &unk_100272100);
        v18 = String.init<A>(describing:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = sub_100017494(v18, v20, v53);

      *(v13 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "Handle %s : payload=%s, options=%s", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100234F40(a1, v53);
    if (*(&v53[0] + 1))
    {
      v50 = v53[2];
      v51 = v53[3];
      v52[0] = v54[0];
      *(v52 + 9) = *(v54 + 9);
      v48 = v53[0];
      v49 = v53[1];
      *&v45[0] = 0xD00000000000002DLL;
      *(&v45[0] + 1) = 0x80000001002A0DA0;
      AnyHashable.init<A>(_:)();
      v22 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_registeredEventHandlers;
      swift_beginAccess();
      v23 = *&v6[v22];
      if (*(v23 + 16))
      {

        v24 = sub_1000851E8(v43);
        if (v25)
        {
          sub_10001766C(*(v23 + 56) + 32 * v24, v46);
          sub_1000516C4(v43);

          sub_100035D04(&qword_1003457C0, &unk_10027C9F8);
          if (swift_dynamicCast())
          {
            v42 = *&v45[0];
            v26 = a2;
            if (!a2)
            {
              v26 = sub_10024D824(_swiftEmptyArrayStorage);
            }

            v47 = v26;
            strcpy(v46, "rangingToken");
            BYTE5(v46[1]) = 0;
            HIWORD(v46[1]) = -5120;

            AnyHashable.init<A>(_:)();
            strcpy(v45, "rangingToken");
            BYTE13(v45[0]) = 0;
            HIWORD(v45[0]) = -5120;
            AnyHashable.init<A>(_:)();
            if (*(a1 + 16) && (v27 = sub_1000851E8(v46), (v28 & 1) != 0))
            {
              sub_10001766C(*(a1 + 56) + 32 * v27, v45);
              sub_1000516C4(v46);
              v29 = swift_isUniquelyReferenced_nonNull_native();
              sub_10004D368(v45, v43, v29);
              sub_1000516C4(v43);
              v30 = v26;
            }

            else
            {
              sub_1000516C4(v46);
              sub_1001D0AB4(v43, v45);
              sub_1000097E8(v45, &unk_100339680, &qword_100278390);
              sub_1000516C4(v43);
              v30 = v47;
            }

            v43[2] = v50;
            v43[3] = v51;
            v44[0] = v52[0];
            *(v44 + 9) = *(v52 + 9);
            v43[0] = v48;
            v43[1] = v49;
            v46[0] = v30;
            v42(v43, v46);

            goto LABEL_33;
          }

LABEL_28:
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            *&v43[0] = v41;
            *v40 = 136315138;
            *(v40 + 4) = sub_100017494(0xD000000000000012, 0x80000001002A0E30, v43);
            _os_log_impl(&_mh_execute_header, v38, v39, "### No registered handler for EventType: %s", v40, 0xCu);
            sub_10000903C(v41);
          }

          else
          {
          }

LABEL_33:
          sub_1000097E8(v53, &qword_1003457C8, &qword_10027CA08);

          return;
        }
      }

      sub_1000516C4(v43);
      goto LABEL_28;
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *&v48 = swift_slowAlloc();
      *v33 = 136315394;
      *(v33 + 4) = sub_100017494(0xD000000000000012, 0x80000001002A0E30, &v48);
      *(v33 + 12) = 2080;

      v34 = Dictionary.description.getter();
      v36 = v35;

      v37 = sub_100017494(v34, v36, &v48);

      *(v33 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "### Could not initialize %s from payload: %s", v33, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_10011F508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011F5A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10011F614(_OWORD *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return v3(v7, *a2);
}

uint64_t static CAMediaTimingFunctionName.allCases.getter()
{
  sub_100035D04(&qword_1003457D0, qword_10027CA10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100274B30;
  *(v0 + 32) = kCAMediaTimingFunctionDefault;
  *(v0 + 40) = kCAMediaTimingFunctionEaseIn;
  *(v0 + 48) = kCAMediaTimingFunctionEaseInEaseOut;
  *(v0 + 56) = kCAMediaTimingFunctionEaseOut;
  *(v0 + 64) = kCAMediaTimingFunctionLinear;
  v1 = kCAMediaTimingFunctionDefault;
  v2 = kCAMediaTimingFunctionEaseIn;
  v3 = kCAMediaTimingFunctionEaseInEaseOut;
  v4 = kCAMediaTimingFunctionEaseOut;
  v5 = kCAMediaTimingFunctionLinear;
  return v0;
}

unint64_t sub_10011F890()
{
  result = qword_1003395C0;
  if (!qword_1003395C0)
  {
    type metadata accessor for CAMediaTimingFunctionName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003395C0);
  }

  return result;
}

uint64_t sub_10011F8E8()
{
  v1 = [*v0 uniqueIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

Swift::Int sub_10011F94C(uint64_t a1, uint64_t a2)
{
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  *(inited + 32) = (*(a2 + 16))(a1, a2);
  *(inited + 40) = v5;
  v6 = sub_1001CB970(inited);
  swift_setDeallocating();
  sub_100056F28(inited + 32);
  return v6;
}

BOOL sub_10011FB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void *, void *))
{
  sub_100009848(a1, v19, a4, a5);
  if (v19[3])
  {
    a6(v19, v20);
    v12 = v21;
    v11 = v22;
    sub_10000EBC0(v20, v21);
    v13 = (*(*(v11 + 8) + 8))(v12);
    v14 = (*(*(a3 + 8) + 8))(a2);
    v15 = sub_1000089FC(v14, v13);

    v16 = *(v15 + 16);

    v17 = v16 != 0;
    sub_10000903C(v20);
  }

  else
  {
    sub_1000097E8(v19, a4, a5);
    return 0;
  }

  return v17;
}

void *sub_10011FC94(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (result)
  {
    v7 = result;
    v8 = a4();
    v9 = (*(*(a3 + 8) + 8))(a2);
    v10 = sub_1000089FC(v9, v8);

    v11 = *(v10 + 16);

    return (v11 != 0);
  }

  return result;
}

uint64_t sub_10011FD54()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003457D8);
  sub_100003078(v0, qword_1003457D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10011FDD4()
{
  v1 = v0;
  if (qword_100339020 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003457D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold18AirDropUIPresenter_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  return v1;
}

uint64_t sub_10011FF28()
{
  sub_10011FDD4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirDropUIPresenter(uint64_t a1)
{
  result = qword_100345820;
  if (!qword_100345820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011FFD4(uint64_t a1)
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

void sub_10012008C(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for SFShockwaveEffectState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v122 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v123 = &v119 - v9;
  v10 = __chkstk_darwin(v8);
  v133 = &v119 - v11;
  __chkstk_darwin(v10);
  v132 = &v119 - v12;
  v129 = type metadata accessor for OSSignpostID();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFNearbySharingInteractionViewState();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v125 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v119 - v19;
  v21 = __chkstk_darwin(v18);
  v138 = &v119 - v22;
  __chkstk_darwin(v21);
  v147 = &v119 - v23;
  v148 = type metadata accessor for UUID();
  v24 = *(v148 - 8);
  v25 = __chkstk_darwin(v148);
  v136 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v145 = &v119 - v28;
  __chkstk_darwin(v27);
  v30 = &v119 - v29;
  if (qword_100339020 != -1)
  {
    swift_once();
  }

  v130 = v5;
  v131 = v4;
  v31 = type metadata accessor for Logger();
  v32 = sub_100003078(v31, qword_1003457D8);
  v33 = *(v24 + 16);
  v142 = a1;
  v144 = v24 + 16;
  v146 = v33;
  v33(v30, a1, v148);
  v34 = *(v15 + 16);
  v139 = a2;
  v34(v147, a2, v14);
  v141 = v32;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v140 = v20;
  v137 = v15;
  v134 = v34;
  v135 = v15 + 16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v119 = v14;
    v39 = v38;
    v126 = swift_slowAlloc();
    v149[0] = v126;
    *v39 = 136315650;
    *(v39 + 4) = sub_100017494(0xD00000000000003CLL, 0x80000001002A0EC0, v149);
    *(v39 + 12) = 2080;
    sub_100100DA8();
    v121 = v36;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v120 = v35;
    v41 = v15;
    v43 = v42;
    v44 = *(v24 + 8);
    v45 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44(v30, v148);
    v46 = sub_100017494(v40, v43, v149);

    *(v39 + 14) = v46;
    *(v39 + 22) = 2080;
    v47 = v147;
    v48 = v119;
    v34(v138, v147, v119);
    v49 = v48;
    v50 = String.init<A>(describing:)();
    v52 = v51;
    v53 = v49;
    v124 = *(v41 + 8);
    v124(v47, v49);
    v54 = sub_100017494(v50, v52, v149);

    *(v39 + 24) = v54;
    v55 = v120;
    _os_log_impl(&_mh_execute_header, v120, v121, "%s: %s, %s", v39, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v53 = v14;
    v124 = *(v15 + 8);
    v124(v147, v14);
    v44 = *(v24 + 8);
    v45 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44(v30, v148);
  }

  v56 = v143;
  v126 = OBJC_IVAR____TtC17proximitycontrold18AirDropUIPresenter_id;
  v57 = v145;
  v58 = v148;
  v59 = v146;
  v146(v145, (v143 + OBJC_IVAR____TtC17proximitycontrold18AirDropUIPresenter_id), v148);
  v60 = v142;
  v61 = static UUID.== infix(_:_:)();
  v147 = v45;
  v44(v57, v58);
  v62 = v44;
  if (v61)
  {
    v142 = v44;
    v63 = v140;
    v64 = v134;
    v134(v140, v139, v53);
    v65 = v137;
    v66 = (*(v137 + 88))(v63, v53);
    if (v66 == enum case for SFNearbySharingInteractionViewState.shockwave(_:))
    {
      (*(v65 + 96))(v63, v53);
      v68 = v130;
      v67 = v131;
      v69 = v132;
      (*(v130 + 32))(v132, v63, v131);
      v70 = *(v68 + 16);
      v71 = v133;
      v70(v133, v69, v67);
      v72 = (*(v68 + 88))(v71, v67);
      if (v72 == enum case for SFShockwaveEffectState.connectionHint(_:))
      {
        (*(v56 + OBJC_IVAR____TtC17proximitycontrold18AirDropUIPresenter_eventHandler))(0);
        v73 = 9;
LABEL_10:
        sub_100037298(v73);
LABEL_18:
        (*(v68 + 8))(v69, v67);
        return;
      }

      if (v72 == enum case for SFShockwaveEffectState.connectionInterrupted(_:))
      {
        (*(v56 + OBJC_IVAR____TtC17proximitycontrold18AirDropUIPresenter_eventHandler))(3);
        goto LABEL_18;
      }

      if (v72 == enum case for SFShockwaveEffectState.shockwave(_:))
      {
        (*(v56 + OBJC_IVAR____TtC17proximitycontrold18AirDropUIPresenter_eventHandler))(1);
        v89 = (v56 + v126);
        v90 = v145;
        v91 = v148;
        v146(v145, v89, v148);
        sub_10001B7F4();
        v92 = v127;
        OSSignpostID.init(_:)();
        v142(v90, v91);
        static os_signpost_type_t.end.getter();
        if (qword_100338F20 != -1)
        {
          swift_once();
        }

        os_signpost(_:dso:log:name:signpostID:_:_:)();
        (*(v128 + 8))(v92, v129);
        v73 = 10;
        goto LABEL_10;
      }

      if (v72 == enum case for SFShockwaveEffectState.waitingToSettle(_:))
      {
        (*(v56 + OBJC_IVAR____TtC17proximitycontrold18AirDropUIPresenter_eventHandler))(1);
        goto LABEL_18;
      }

      if (v72 == enum case for SFShockwaveEffectState.cleaningUp(_:))
      {
        (*(v56 + OBJC_IVAR____TtC17proximitycontrold18AirDropUIPresenter_eventHandler))(2);
        goto LABEL_18;
      }

      v105 = v123;
      v70(v123, v69, v67);
      v106 = Logger.logObject.getter();
      v107 = v69;
      v108 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v106, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v149[0] = v110;
        *v109 = 136315138;
        v70(v122, v105, v67);
        v111 = String.init<A>(describing:)();
        v112 = v105;
        v113 = v111;
        v115 = v114;
        v116 = *(v68 + 8);
        v116(v112, v67);
        v117 = sub_100017494(v113, v115, v149);

        *(v109 + 4) = v117;
        _os_log_impl(&_mh_execute_header, v106, v108, "### Unknown ShockwaveEffectState: %s", v109, 0xCu);
        sub_10000903C(v110);

        v118 = v132;
      }

      else
      {

        v116 = *(v68 + 8);
        v116(v105, v67);
        v118 = v107;
      }

      v116(v118, v67);
      v116(v133, v67);
    }

    else
    {
      v85 = v146;
      if (v66 == enum case for SFNearbySharingInteractionViewState.idle(_:))
      {
        (*(v56 + OBJC_IVAR____TtC17proximitycontrold18AirDropUIPresenter_eventHandler))(128);
      }

      else if (v66 == enum case for SFNearbySharingInteractionViewState.contentPreview(_:))
      {
        (*(v56 + OBJC_IVAR____TtC17proximitycontrold18AirDropUIPresenter_eventHandler))(64);
        v86 = v145;
        v87 = v148;
        v85(v145, v56 + v126, v148);
        sub_10001B7F4();
        v88 = v127;
        OSSignpostID.init(_:)();
        v142(v86, v87);
        static os_signpost_type_t.end.getter();
        if (qword_100338F20 != -1)
        {
          swift_once();
        }

        os_signpost(_:dso:log:name:signpostID:_:_:)();
        (*(v128 + 8))(v88, v129);
        sub_100037298(11);
      }

      else
      {
        v93 = v125;
        v64(v125, v139, v53);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v149[0] = v97;
          *v96 = 136315138;
          v64(v138, v93, v53);
          v98 = String.init<A>(describing:)();
          v99 = v93;
          v100 = v98;
          v102 = v101;
          v103 = v124;
          v124(v99, v53);
          v104 = sub_100017494(v100, v102, v149);

          *(v96 + 4) = v104;
          _os_log_impl(&_mh_execute_header, v94, v95, "### Unknown SFNearbySharingInteractionViewState: %s", v96, 0xCu);
          sub_10000903C(v97);
        }

        else
        {

          v103 = v124;
          v124(v93, v53);
        }

        v103(v140, v53);
      }
    }
  }

  else
  {
    v74 = v136;
    v59(v136, v60, v148);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = v62;
      v79 = swift_slowAlloc();
      v149[0] = v79;
      *v77 = 136315138;
      sub_100100DA8();
      v80 = v148;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v78(v74, v80);
      v84 = sub_100017494(v81, v83, v149);

      *(v77 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v75, v76, "Received viewState for invalid interactionID: %s", v77, 0xCu);
      sub_10000903C(v79);
    }

    else
    {

      v44(v74, v148);
    }
  }
}

void sub_100121010(void *a1, uint64_t a2)
{
  v94 = a2;
  v96 = a1;
  v93 = type metadata accessor for UUID();
  v95 = *(v93 - 8);
  v2 = __chkstk_darwin(v93);
  v88 = &v74[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v91 = &v74[-v4];
  v5 = type metadata accessor for SFProximityHandoff.Content();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v84 = &v74[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v78 = &v74[-v10];
  __chkstk_darwin(v9);
  v97 = &v74[-v11];
  v12 = type metadata accessor for SFProximityHandoff.Content.Action();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v83 = &v74[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v77 = &v74[-v17];
  __chkstk_darwin(v16);
  v19 = &v74[-v18];
  if (qword_100339020 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_100003078(v20, qword_1003457D8);
  v23 = v13 + 16;
  v22 = *(v13 + 16);
  v22(v19, v94, v12);
  v86 = v19;
  v25 = v6 + 16;
  v24 = *(v6 + 16);
  v24(v97, v96, v5);
  v26 = v6;
  v27 = v13;
  v82 = v21;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v92 = v5;
  v90 = v26;
  v85 = v27;
  v80 = v22;
  v81 = v23;
  v79 = v25;
  v87 = v24;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v98[0] = v76;
    *v31 = 136315650;
    *(v31 + 4) = sub_100017494(0xD00000000000002CLL, 0x80000001002A0E90, v98);
    *(v31 + 12) = 2080;
    v32 = v86;
    v22(v77, v86, v12);
    v33 = String.init<A>(describing:)();
    v75 = v29;
    v77 = v28;
    v35 = v34;
    v86 = *(v27 + 8);
    v86(v32, v12);
    v36 = sub_100017494(v33, v35, v98);
    v37 = v90;
    v38 = v96;

    *(v31 + 14) = v36;
    *(v31 + 22) = 2080;
    v39 = v97;
    v40 = v92;
    v87(v78, v97, v92);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    v44 = v39;
    v45 = v91;
    v97 = *(v37 + 8);
    (v97)(v44, v40);
    v46 = sub_100017494(v41, v43, v98);

    *(v31 + 24) = v46;
    v47 = v77;
    _os_log_impl(&_mh_execute_header, v77, v75, "%s: %s, %s", v31, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v48 = v97;
    v97 = *(v26 + 8);
    (v97)(v48, v5);
    v49 = v86;
    v86 = *(v27 + 8);
    v86(v49, v12);
    v38 = v96;
    v45 = v91;
  }

  SFProximityHandoff.Content.interactionID.getter();
  v50 = v38;
  v51 = v95;
  v53 = v88;
  v52 = v89;
  v54 = v93;
  (*(v95 + 16))(v88, v89 + OBJC_IVAR____TtC17proximitycontrold18AirDropUIPresenter_id, v93);
  v55 = static UUID.== infix(_:_:)();
  v58 = *(v51 + 8);
  v56 = v51 + 8;
  v57 = v58;
  v58(v53, v54);
  v58(v45, v54);
  if (v55)
  {
    v59 = v83;
    v80(v83, v94, v12);
    v60 = (*(v85 + 88))(v59, v12);
    v61 = enum case for SFProximityHandoff.Content.Action.open(_:);
    (*(v52 + OBJC_IVAR____TtC17proximitycontrold18AirDropUIPresenter_eventHandler))(65);
    if (v60 != v61 && v60 != enum case for SFProximityHandoff.Content.Action.send(_:) && v60 != enum case for SFProximityHandoff.Content.Action.share(_:) && v60 != enum case for SFProximityHandoff.Content.Action.transfer(_:))
    {
      v86(v59, v12);
    }
  }

  else
  {
    v62 = v45;
    v63 = v84;
    v64 = v92;
    v87(v84, v50, v92);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v95 = v56;
      v68 = v67;
      v96 = swift_slowAlloc();
      v98[0] = v96;
      *v68 = 136315138;
      SFProximityHandoff.Content.interactionID.getter();
      sub_100100DA8();
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v63;
      v72 = v71;
      v57(v62, v54);
      (v97)(v70, v64);
      v73 = sub_100017494(v69, v72, v98);

      *(v68 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v65, v66, "Received viewState for invalid interactionID: %s", v68, 0xCu);
      sub_10000903C(v96);
    }

    else
    {

      (v97)(v63, v64);
    }
  }
}

uint64_t static StaticString.== infix(_:_:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = sub_10013FE2C(a1, a2, a3);
  v11 = v10;
  if (v9 == sub_10013FE2C(a4, a5, v6) && v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_1001218FC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B1E0);
  sub_100003078(v0, qword_10038B1E0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10012197C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100345910);
  v1 = sub_100003078(v0, qword_100345910);
  if (qword_100339028 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

os_activity_t _makeActivity(named:dso:)(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_100339038 == -1)
        {
LABEL_5:
          v5 = qword_100345928;

          return _os_activity_create(dso, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_100339038 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_100345928, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_100121C50()
{
  sub_100121C94();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_100121C94()
{
  if (v0[4].opaque[0])
  {
    v1 = v0;
    if (qword_100339030 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_100345910);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10[0] = v6;
      *v5 = 136315138;
      v7 = StaticString.description.getter();
      v9 = sub_100017494(v7, v8, v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stopping %s", v5, 0xCu);
      sub_10000903C(v6);
    }

    swift_beginAccess();
    os_activity_scope_leave(v1 + 3);
    swift_endAccess();
    v1[4].opaque[0] = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100121E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v3 = *(*a2 + 24);
  v4 = *(*a2 + 32);
  v5 = sub_10013FE2C(*(*a1 + 16), *(*a1 + 24), *(*a1 + 32));
  v7 = v6;
  if (v5 == sub_10013FE2C(v2, v3, v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int sub_100121ED4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10013FE2C(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100121F3C(uint64_t a1)
{
  sub_10013FE2C(*(*v1 + 16), *(*v1 + 24), *(*v1 + 32));
  String.hash(into:)();
}

Swift::Int sub_100121F98(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10013FE2C(*(*v1 + 16), *(*v1 + 24), *(*v1 + 32));
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100121FFC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 16);
  v5 = sub_10013FE2C(*a1, *(a1 + 8), *(a1 + 16));
  v7 = v6;
  if (v5 == sub_10013FE2C(v2, v3, v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t StaticString.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10013FE2C(a2, a3, a4);
  String.hash(into:)();
}

Swift::Int StaticString.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  Hasher.init(_seed:)();
  sub_10013FE2C(a1, a2, v3);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10012217C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_10013FE2C(v1, v2, v3);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001221F4(uint64_t a1)
{
  sub_10013FE2C(*v1, *(v1 + 8), *(v1 + 16));
  String.hash(into:)();
}

Swift::Int sub_10012224C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  sub_10013FE2C(v2, v3, v4);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001222C0()
{
  qword_100345928 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

unint64_t sub_100122300()
{
  result = qword_100345930;
  if (!qword_100345930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100345930);
  }

  return result;
}

unint64_t sub_10012237C()
{
  result = qword_100345B20;
  if (!qword_100345B20)
  {
    type metadata accessor for Transaction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100345B20);
  }

  return result;
}

uint64_t sub_1001223F4(void *a1, void *a2, void *a3, char a4, void *a5, void *a6, void *a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        sub_100003118(0, &qword_100344730, NSObject_ptr);
        v11 = a5;
        v12 = static NSObject.== infix(_:_:)();
        sub_100122574(a5, a6, a7, 1);
        if (v12)
        {
          return 1;
        }
      }
    }

    else if (a8 == 2)
    {
      if (a1 == a5 && a2 == a6)
      {
        v14 = a7;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = a7;
        if ((v15 & 1) == 0)
        {

          return 0;
        }
      }

      if (a3)
      {
        if (a7)
        {
          sub_100003118(0, &qword_100345B30, UIColor_ptr);
          v17 = a3;
          v18 = static NSObject.== infix(_:_:)();

          if (v18)
          {
            return 1;
          }
        }
      }

      else
      {
        if (!a7)
        {
          return 1;
        }
      }
    }
  }

  else if (!a8 && (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    return 1;
  }

  return 0;
}

void sub_100122574(void *a1, id a2, void *a3, char a4)
{
  switch(a4)
  {
    case 2:

      a1 = a3;

      goto LABEL_9;
    case 1:

LABEL_9:

      return;
    case 0:

      break;
  }
}

__n128 sub_1001225FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100122610(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100122658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001226B8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100345B38);
  v1 = sub_100003078(v0, qword_100345B38);
  if (qword_100339110 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B420);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100122780(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  v5 = v4;
  if (qword_100339040 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_100345B38);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Handling ranging token request", v13, 2u);
  }

  v14 = sub_1001235F8();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = sub_100011F00(v15, v17);

  if (v18 - 3 >= 4)
  {
    if (v18 >= 3u)
    {
LABEL_19:
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "### Current platform doesn't support responding to ranging tokens.", v31, 2u);
      }

      sub_100123630();
      v32 = swift_allocError();
      *v33 = 8;
      goto LABEL_27;
    }
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10001618C();
    v32 = swift_allocError();
    *v41 = 0xD000000000000010;
    *(v41 + 8) = 0x80000001002A0FD0;
    *(v41 + 16) = 7;
LABEL_27:
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v46;
      *v45 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "### Error handling token requst: %@", v44, 0xCu);
      sub_1000097E8(v45, &qword_100339940, &unk_100272C50);
    }

    a3(0, 0, v32);

    return;
  }

  v21 = Strong;
  strcpy(v73, "rangingToken");
  BYTE13(v73[0]) = 0;
  HIWORD(v73[0]) = -5120;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v22 = sub_1000851E8(v77), (v23 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v22, &v74);
    sub_1000516C4(v77);
    if (swift_dynamicCast())
    {
      v71 = a3;
      v24 = *&v73[0];
      sub_100123684();
      v70 = sub_10017B1C8(*&v73[0], *(&v73[0] + 1));
      if (v70)
      {
        v69 = *(&v73[0] + 1);
        v76 = a2;
        if (a2)
        {
          strcpy(&v74, "rangingToken");
          BYTE13(v74) = 0;
          HIWORD(v74) = -5120;

          AnyHashable.init<A>(_:)();
          strcpy(v73, "rangingToken");
          BYTE13(v73[0]) = 0;
          HIWORD(v73[0]) = -5120;
          AnyHashable.init<A>(_:)();
          if (*(a1 + 16) && (v25 = sub_1000851E8(&v74), (v26 & 1) != 0))
          {
            sub_10001766C(*(a1 + 56) + 32 * v25, v73);
            sub_1000516C4(&v74);
            sub_1000516B4(v73, v72);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_10004D368(v72, v77, isUniquelyReferenced_nonNull_native);
            sub_1000516C4(v77);
            v28 = a2;
            v76 = a2;
          }

          else
          {
            sub_1000516C4(&v74);
            sub_1001D0AB4(v77, v73);
            sub_1000097E8(v73, &unk_100339680, &qword_100278390);
            sub_1000516C4(v77);
            v28 = v76;
          }

          v47 = v70;
          v48 = v24;
          v49 = sub_10018F290(v28);
          if (v49)
          {
            v50 = v49;
LABEL_38:
            v52 = sub_100168AF4(v47, v50);
            if (v53 >> 60 == 15)
            {
              sub_100123630();
              v54 = swift_allocError();
              *v55 = 1;
              swift_errorRetain();
              v56 = Logger.logObject.getter();
              v57 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v56, v57))
              {
                v58 = swift_slowAlloc();
                v59 = swift_slowAlloc();
                *v58 = 138412290;
                swift_errorRetain();
                v60 = _swift_stdlib_bridgeErrorToNSError();
                *(v58 + 4) = v60;
                *v59 = v60;
                _os_log_impl(&_mh_execute_header, v56, v57, "### Error handling token requst: %@", v58, 0xCu);
                sub_1000097E8(v59, &qword_100339940, &unk_100272C50);

                v48 = v24;
              }

              v71(0, 0, v54);
              sub_100010708(v48, v69);
            }

            else
            {
              v61 = v52;
              v62 = v53;
              sub_1001236D0(v71, a4, v52, v53, v5);
              sub_100010708(v48, v69);

              sub_10006DB04(v61, v62);
            }

            goto LABEL_53;
          }

          *&v73[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(&v73[0] + 1) = v63;
          AnyHashable.init<A>(_:)();
          if (*(a2 + 16))
          {
            v64 = sub_1000851E8(v77);
            if (v65)
            {
              sub_10001766C(*(a2 + 56) + 32 * v64, &v74);
              sub_1000516C4(v77);
              v66 = v69;
              v67 = v71;
              if (*(&v75 + 1))
              {
                swift_dynamicCast();
LABEL_52:

                v68 = v5;
                sub_10013AD90(v47, v21, v67, a4, v68);
                sub_100010708(v48, v66);

LABEL_53:

                return;
              }

LABEL_51:
              sub_1000097E8(&v74, &unk_100339680, &qword_100278390);
              goto LABEL_52;
            }
          }

          sub_1000516C4(v77);
          v74 = 0u;
          v75 = 0u;
          v66 = v69;
        }

        else
        {
          v51 = sub_10018F290(0);
          if (v51)
          {
            v50 = v51;
            v47 = v70;
            v48 = *&v73[0];
            goto LABEL_38;
          }

          v74 = 0u;
          v75 = 0u;
          v66 = *(&v73[0] + 1);
          v47 = v70;
          v48 = *&v73[0];
        }

        v67 = v71;
        goto LABEL_51;
      }

      sub_100010708(*&v73[0], *(&v73[0] + 1));
      a3 = v71;
    }
  }

  else
  {
    sub_1000516C4(v77);
  }

  sub_10001618C();
  v34 = swift_allocError();
  *v35 = 0xD000000000000020;
  *(v35 + 8) = 0x80000001002A0FF0;
  *(v35 + 16) = 9;
  swift_errorRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    swift_errorRetain();
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v40;
    *v39 = v40;
    _os_log_impl(&_mh_execute_header, v36, v37, "### Error handling token requst: %@", v38, 0xCu);
    sub_1000097E8(v39, &qword_100339940, &unk_100272C50);
  }

  a3(0, 0, v34);
}

uint64_t sub_100123194(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (qword_100339040 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_100345B38);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    buf = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *buf = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = sub_10000A474();
    v22 = v11;
    v13 = ObjectType;
    v14 = a1;
    v15 = a2;
    v17 = v16;

    v18 = sub_100017494(v12, v17, &v25);
    a2 = v15;
    a1 = v14;
    ObjectType = v13;

    *(buf + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v22, "REQUEST ranging token from %s", buf, 0xCu);
    sub_10000903C(v24);
  }

  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = v4;
  v19[6] = ObjectType;
  sub_100035D04(&qword_10033EF90, &qword_1002755D0);
  swift_allocObject();

  sub_10006DA04(a1, a2);
  v20 = v4;
  return Future.init(_:)();
}

uint64_t sub_100123428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  v17 = sub_1000092A0(v15, v16);
  v19 = v18;
  sub_100035D04(&qword_100345B50, &qword_10027CE38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  strcpy((inited + 32), "rangingToken");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = a4;
  *(inited + 56) = a5;
  sub_10006DA04(a4, a5);
  v21 = sub_10024DCF0(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_100345B58, &unk_10027CE40);
  v22 = sub_10011A6DC(v21);

  sub_10018F7D4(0xD000000000000013, 0x80000001002A1020, a3, v22, 0, 0, a6, v17, v19, sub_100123D0C, v14, a3, a7);
}

id sub_1001235F8()
{
  v0 = GestaltCopyAnswer();

  return v0;
}

unint64_t sub_100123630()
{
  result = qword_10034A330;
  if (!qword_10034A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034A330);
  }

  return result;
}

unint64_t sub_100123684()
{
  result = qword_10034A350;
  if (!qword_10034A350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10034A350);
  }

  return result;
}

uint64_t sub_1001236D0(void (*a1)(uint64_t, void, void), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  strcpy(v41, "rangingToken");
  BYTE5(v41[1]) = 0;
  HIWORD(v41[1]) = -5120;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  sub_10006DA04(a3, a4);
  sub_10024D824(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_100344038, qword_100279DB0);
  v10 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient;
  v11 = *(a5 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v11)
  {
    v12 = [v11 localDevice];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 mediaRouteIdentifier];

      if (v14)
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        AnyHashable.init<A>(_:)();
        v40 = &type metadata for String;
        *&v39 = v15;
        *(&v39 + 1) = v17;
        sub_1000516B4(&v39, v38);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_10004D368(v38, v41, isUniquelyReferenced_nonNull_native);
        sub_1000516C4(v41);
      }
    }

    v19 = *(a5 + v10);
    if (v19)
    {
      v20 = [v19 localDevice];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 deviceColor];

        if (v22)
        {
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          *&v39 = 0x646F43726F6C6F63;
          *(&v39 + 1) = 0xE900000000000065;
          AnyHashable.init<A>(_:)();
          v40 = &type metadata for String;
          *&v39 = v23;
          *(&v39 + 1) = v25;
          sub_1000516B4(&v39, v38);
          v26 = swift_isUniquelyReferenced_nonNull_native();
          sub_10004D368(v38, v41, v26);
          sub_1000516C4(v41);
        }
      }
    }
  }

  if (qword_100339040 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100003078(v27, qword_100345B38);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41[0] = v31;
    *v30 = 136315138;

    v32 = Dictionary.description.getter();
    v34 = v33;

    v35 = sub_100017494(v32, v34, v41);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Sending response %s", v30, 0xCu);
    sub_10000903C(v31);
  }

  a1(v36, 0, 0);
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_100123AEC(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, void, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2 >> 60 == 15)
  {
    sub_100123630();
    v7 = swift_allocError();
    *v8 = 1;
    if (qword_100339040 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_100345B38);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "### Error handling token requst: %@", v12, 0xCu);
      sub_1000097E8(v13, &qword_100339940, &unk_100272C50);
    }

    a3(0, 0, v7);
  }

  else
  {
    sub_10006DA04(a1, a2);
    sub_1001236D0(a3, a4, a1, a2, a5);

    return sub_10006DB04(a1, a2);
  }
}

uint64_t sub_100123D18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100339040 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_100345B38);
    swift_errorRetain();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v36 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_100017494(a3, a4, &v36);
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v15;
      *v13 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "### %s RangingTokenRequest failed: %@", v12, 0x16u);
      sub_1000097E8(v13, &qword_100339940, &unk_100272C50);

      sub_10000903C(v14);
    }

    swift_errorRetain();
    (a5)(a2, 0, 1);
  }

  if (!a1)
  {
    goto LABEL_20;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v18 = sub_1000851E8(&v36), (v19 & 1) == 0))
  {
    sub_1000516C4(&v36);
LABEL_20:
    v38 = 0u;
    v39 = 0u;
    goto LABEL_21;
  }

  sub_10001766C(*(a1 + 56) + 32 * v18, &v38);
  sub_1000516C4(&v36);
  if (!*(&v39 + 1))
  {
LABEL_21:
    sub_1000097E8(&v38, &unk_100339680, &qword_100278390);
    goto LABEL_22;
  }

  sub_1000516B4(&v38, v40);
  sub_10001766C(v40, &v36);
  if (swift_dynamicCast())
  {
    v20 = v38;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v21 = sub_1000851E8(&v36), (v22 & 1) != 0))
    {
      sub_10001766C(*(a1 + 56) + 32 * v21, &v38);
      sub_1000516C4(&v36);
      if (*(&v39 + 1))
      {
        if (swift_dynamicCast())
        {
          sub_10007322C(v36, v37);
        }

LABEL_30:
        AnyHashable.init<A>(_:)();
        if (*(a1 + 16) && (v29 = sub_1000851E8(&v36), (v30 & 1) != 0))
        {
          sub_10001766C(*(a1 + 56) + 32 * v29, &v38);
          sub_1000516C4(&v36);
          if (*(&v39 + 1))
          {
            if (swift_dynamicCast())
            {
              sub_100073434(v36, v37);
            }

            goto LABEL_37;
          }
        }

        else
        {
          sub_1000516C4(&v36);
          v38 = 0u;
          v39 = 0u;
        }

        sub_1000097E8(&v38, &unk_100339680, &qword_100278390);
LABEL_37:
        if (qword_100339040 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100003078(v31, qword_100345B38);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v36 = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_100017494(a3, a4, &v36);
          _os_log_impl(&_mh_execute_header, v32, v33, "RECEIVED Ranging token from %s", v34, 0xCu);
          sub_10000903C(v35);
        }

        sub_10006DA04(v20, *(&v20 + 1));
        (a5)(v20, *(&v20 + 1), 0);
        sub_100010708(v20, *(&v20 + 1));
        sub_100010708(v20, *(&v20 + 1));
        return sub_10000903C(v40);
      }
    }

    else
    {
      sub_1000516C4(&v36);
      v38 = 0u;
      v39 = 0u;
    }

    sub_1000097E8(&v38, &unk_100339680, &qword_100278390);
    goto LABEL_30;
  }

  sub_10000903C(v40);
LABEL_22:
  if (qword_100339040 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100003078(v23, qword_100345B38);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_100017494(a3, a4, &v36);
    _os_log_impl(&_mh_execute_header, v24, v25, "### %s RangingTokenRequest returned without discovery key", v26, 0xCu);
    sub_10000903C(v27);
  }

  sub_100123630();
  swift_allocError();
  *v28 = 3;
  a5();
}

void sub_100124498(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100124504()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100345B60);
  sub_100003078(v0, qword_100345B60);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100124588(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1001245FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100035D04(&qword_100345FF8, &qword_10027E1E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-v8];
  v10 = OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy__bluetoothState;
  v22[15] = 7;
  sub_100035D04(&unk_100345D98, &qword_10027CF08);
  Published.init(initialValue:)();
  (*(v7 + 32))(v3 + v10, v9, v6);
  *(v3 + OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_cbDiscovery) = 0;
  v11 = OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_dispatchQueue;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v12 = qword_10038B5B8;
  *(v3 + v11) = qword_10038B5B8;
  v13 = OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_nearbyTransaction;
  type metadata accessor for Transaction();
  v14 = swift_allocObject();
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 48) = 0;
  v15 = qword_100339038;
  v16 = v12;
  if (v15 != -1)
  {
    swift_once();
  }

  *(v14 + 40) = _os_activity_create(&_mh_execute_header, "handoffCandidateNearby", qword_100345928, OS_ACTIVITY_FLAG_DEFAULT);
  *(v14 + 16) = "handoffCandidateNearby";
  *(v14 + 24) = 22;
  *(v14 + 32) = 2;
  *(v3 + v13) = v14;
  *(v3 + OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_tasks) = &_swiftEmptySetSingleton;
  if (qword_100339048 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003078(v17, qword_100345B60);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Init", v20, 2u);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_1001248CC()
{
  v1 = v0;
  if (qword_100339048 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100345B60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_100124DD0();

  v6 = OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy__bluetoothState;
  v7 = sub_100035D04(&qword_100345FF8, &qword_10027E1E0);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  return v1;
}

uint64_t sub_100124A50()
{
  sub_1001248CC();

  return swift_deallocClassInstance();
}

uint64_t sub_100124AA8()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100346008, &unk_10027D040);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - v4;
  if (qword_100339048 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100345B60);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Activate", v9, 2u);
  }

  sub_100126270();
  v11[1] = *(*(v1 + 16) + 16);
  sub_100035D04(&qword_100339900, &unk_1002703D0);
  sub_10000E244(&qword_100339920, &qword_100339900, &unk_1002703D0, &unk_10027C688);
  Publisher<>.removeDuplicates()();
  sub_10000E244(&unk_100346010, &qword_100346008, &unk_10027D040, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);

  Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t sub_100124D90(uint64_t (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  return a1(&v2);
}

uint64_t sub_100124DD0()
{
  v1 = v0;
  if (qword_100339048 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100345B60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidate", v5, 2u);
  }

  sub_100125ABC();
  v6 = OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_tasks;
  swift_beginAccess();
  *(v1 + v6) = &_swiftEmptySetSingleton;
}

void sub_100124EEC()
{
  v1 = v0;
  if (qword_100339048 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100345B60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000010, 0x80000001002A1230, &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  sub_100125ABC();
  v7 = [objc_allocWithZone(CBDiscovery) init];
  v8 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_cbDiscovery);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_cbDiscovery) = v7;
  v9 = v7;

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v10 = *(qword_10038B0B8 + 1480);
  v11 = sub_10006045C();

  if (v11 < -128)
  {
    __break(1u);
  }

  else if (v11 <= 127)
  {
    [v9 setBleRSSIThresholdHint:v11];
    [v9 setBleScanRate:0];
    [v9 setDiscoveryFlags:0x200000000000];
    [v9 setDispatchQueue:*(v1 + OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_dispatchQueue)];
    v12 = String._bridgeToObjectiveC()();
    [v9 setLabel:v12];

    v26 = sub_100125518;
    v27 = 0;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100124498;
    v25 = &unk_100309D00;
    v13 = _Block_copy(&v22);
    [v9 setErrorHandler:v13];
    _Block_release(v13);
    v26 = sub_1001256FC;
    v27 = 0;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100018AB8;
    v25 = &unk_100309D28;
    v14 = _Block_copy(&v22);
    [v9 setInterruptionHandler:v14];
    _Block_release(v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v26 = sub_1000031C4;
    v27 = v15;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100002B88;
    v25 = &unk_100309D78;
    v16 = _Block_copy(&v22);

    [v9 setDeviceFoundHandler:v16];
    _Block_release(v16);
    v17 = swift_allocObject();
    swift_weakInit();
    v26 = sub_1000054B8;
    v27 = v17;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100002B88;
    v25 = &unk_100309DA0;
    v18 = _Block_copy(&v22);

    [v9 setDeviceLostHandler:v18];
    _Block_release(v18);
    LOBYTE(v18) = sub_100101544([v9 bluetoothState]);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v22) = v18;

    static Published.subscript.setter();
    v19 = swift_allocObject();
    swift_weakInit();
    v26 = sub_100129300;
    v27 = v19;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100018AB8;
    v25 = &unk_100309DC8;
    v20 = _Block_copy(&v22);

    [v9 setBluetoothStateChangedHandler:v20];
    _Block_release(v20);
    v26 = sub_100129308;
    v27 = v1;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100124498;
    v25 = &unk_100309DF0;
    v21 = _Block_copy(&v22);

    [v9 activateWithCompletion:v21];
    _Block_release(v21);

    return;
  }

  __break(1u);
}

void sub_100125518(uint64_t a1)
{
  if (!a1)
  {
    sub_10001618C();
    swift_allocError();
    *v1 = 0x7265766F63736944;
    *(v1 + 8) = 0xEF726F7272652079;
    *(v1 + 16) = 11;
  }

  swift_errorRetain();
  if (qword_100339048 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100345B60);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "### CBDiscovery error: %@", v4, 0xCu);
    sub_1000030B0(v5);
  }

  else
  {
  }
}

void sub_1001256FC()
{
  if (qword_100339048 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100345B60);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "### CBDiscovery interrupted", v2, 2u);
  }
}

void sub_1001257E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_cbDiscovery);
    if (v2)
    {
      v3 = v2;
      v4 = sub_100101544([v3 bluetoothState]);
      if (qword_100339048 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100003078(v5, qword_100345B60);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v13 = v9;
        *v8 = 136315138;
        if (v4 <= 2u)
        {
          if (v4)
          {
            if (v4 == 1)
            {
              v11 = 0x6E69747465736572;
              v10 = 0xE900000000000067;
            }

            else
            {
              v10 = 0xEB00000000646574;
              v11 = 0x726F707075736E75;
            }
          }

          else
          {
            v10 = 0xE700000000000000;
            v11 = 0x6E776F6E6B6E75;
          }
        }

        else if (v4 > 4u)
        {
          if (v4 == 5)
          {
            v11 = 0x4F64657265776F70;
            v10 = 0xE90000000000006ELL;
          }

          else
          {
            v11 = 0x7463697274736572;
            v10 = 0xEA00000000006465;
          }
        }

        else if (v4 == 3)
        {
          v10 = 0xEC00000064657A69;
          v11 = 0x726F687475616E75;
        }

        else
        {
          v11 = 0x4F64657265776F70;
          v10 = 0xEA00000000006666;
        }

        v12 = sub_100017494(v11, v10, &v13);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Bluetooth state updated: %s", v8, 0xCu);
        sub_10000903C(v9);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v13) = v4;
      static Published.subscript.setter();
    }

    else
    {
    }
  }
}

double sub_100125ABC()
{
  v1 = v0;
  if (qword_100339048 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100345B60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x63736944706F7473, 0xEF2928797265766FLL, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_cbDiscovery;
  [*(v1 + OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_cbDiscovery) invalidate];
  v8 = *(v1 + v7);
  *(v1 + v7) = 0;

  sub_1001AC460();

  return result;
}

void sub_100125C54(uint64_t a1)
{
  v3 = v2;
  if (qword_100339048 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100345B60);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v6, v7))
  {

    if (!a1)
    {
      goto LABEL_12;
    }

LABEL_7:
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "### Activation failed: %@", v13, 0xCu);
      sub_1000030B0(v14);
    }

    else
    {
    }

    return;
  }

  v8 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  *v8 = 136315394;
  *(v8 + 4) = sub_100017494(0xD000000000000010, 0x80000001002A11F0, &v44);
  *(v8 + 12) = 2080;
  if (a1)
  {
    swift_errorRetain();
    sub_100035D04(&unk_100346020, &qword_100271A00);
    v9 = String.init<A>(describing:)();
    v1 = v10;
  }

  else
  {
    v1 = 0xE300000000000000;
    v9 = 7104878;
  }

  v16 = sub_100017494(v9, v1, &v44);

  *(v8 + 14) = v16;
  _os_log_impl(&_mh_execute_header, v6, v7, "%s: error=%s", v8, 0x16u);
  swift_arrayDestroy();

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_12:
  v17 = *(v3 + OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_cbDiscovery);
  if (v17)
  {
    v1 = [v17 discoveredDevices];
    sub_100003118(0, &unk_10034A340, CBDevice_ptr);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = v18 >> 62;
  if (!os_log_type_enabled(v19, v20))
  {

    goto LABEL_20;
  }

  v1 = swift_slowAlloc();
  *v1 = 134217984;
  if (v21)
  {
    goto LABEL_37;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v1 + 1) = i;

    _os_log_impl(&_mh_execute_header, v19, v20, "Activated: %ld existing devices", v1, 0xCu);

LABEL_20:
    if (v21)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (!v21)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_35;
      }
    }

    if (v21 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_37:
    ;
  }

  v23 = 0;
  v24 = v18 & 0xC000000000000001;
  v41 = v21;
  v42 = v18;
  v40 = v18 & 0xC000000000000001;
  do
  {
    if (v24)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v18 + 8 * v23 + 32);
    }

    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v43;
      *v30 = 136315138;
      v31 = [v27 identifier];
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        sub_10000B584(8, v33, v35);
      }

      else
      {
        Substring.init(_:)();
      }

      v36 = static String._fromSubstring(_:)();
      v38 = v37;

      v39 = sub_100017494(v36, v38, &v44);

      *(v30 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "Simulating FOUND event for %s", v30, 0xCu);
      sub_10000903C(v43);

      v18 = v42;
      v24 = v40;
      v21 = v41;
    }

    else
    {
    }

    ++v23;
    v25 = v27;
    sub_100002BF0(v27, 0);
  }

  while (v21 != v23);
LABEL_35:
}

double sub_100126270()
{
  v1 = sub_100035D04(&qword_100346008, &unk_10027D040);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - v3;
  v6[1] = *(*(v0 + 24) + 24);

  sub_100035D04(&qword_100339900, &unk_1002703D0);
  sub_10000E244(&qword_100339920, &qword_100339900, &unk_1002703D0, &unk_10027C688);
  Publisher<>.removeDuplicates()();
  sub_10000E244(&unk_100346010, &qword_100346008, &unk_10027D040, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);

  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

uint64_t sub_100126480()
{
  v1 = v0;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10026F050;
  *(v2 + 32) = 0xD000000000000014;
  *(v2 + 40) = 0x80000001002A1190;
  v57._countAndFlagsBits = 0x3D6574617453;
  v57._object = 0xE600000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = 0xE700000000000000;
  v4 = 0x7463697274736572;
  if (v59 == 6)
  {
    v5 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v6 = 0xEA00000000006666;
  if (v59 != 4)
  {
    v6 = 0xE90000000000006ELL;
  }

  if (v59 > 5u)
  {
    v6 = v5;
  }

  else
  {
    v4 = 0x4F64657265776F70;
  }

  v7 = 0xEB00000000646574;
  v8 = 0x726F707075736E75;
  if (v59 != 2)
  {
    v8 = 0x726F687475616E75;
    v7 = 0xEC00000064657A69;
  }

  v9 = 0x6E69747465736572;
  if (v59)
  {
    v3 = 0xE900000000000067;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (v59 > 1u)
  {
    v3 = v7;
  }

  else
  {
    v8 = v9;
  }

  if (v59 <= 3u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v59 <= 3u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v60 = v57;
  _StringGuts.grow(_:)(20);

  v57._countAndFlagsBits = 0xD000000000000012;
  v57._object = 0x80000001002A11B0;
  v13 = *(v0 + 24);

  CurrentValueSubject.value.getter();
  v14 = v58;
  if (v58 == 2)
  {
    CurrentValueSubject.value.getter();

    v14 = v59;
  }

  else
  {
  }

  if (v14)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  String.append(_:)(v57);

  v57._countAndFlagsBits = 0x3D736B736174202CLL;
  v57._object = 0xE800000000000000;
  v18 = OBJC_IVAR____TtC17proximitycontrold14BluetoothProxy_tasks;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if ((v19 & 0xC000000000000001) != 0)
  {

    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *(v19 + 16);
  }

  v58 = v20;
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  String.append(_:)(v57);

  countAndFlagsBits = v60._countAndFlagsBits;
  object = v60._object;
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  v26 = v24 + 1;

  if (v24 >= v25 >> 1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    *(v2 + 16) = v26;
    v28 = v2 + 16 * v24;
    *(v28 + 32) = countAndFlagsBits;
    *(v28 + 40) = object;
    v29 = *(v13 + 16);
    __chkstk_darwin(v27);
    sub_100003118(0, &unk_10034A340, CBDevice_ptr);
    swift_getKeyPath();
    v30 = v29 + qword_100346AF8;

    os_unfair_lock_lock(v30);
    v57._countAndFlagsBits = *(v30 + 8);

    swift_getAtKeyPath();

    v31 = v58;
    os_unfair_lock_unlock(v30);

    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = sub_10000919C(*(v31 + 16), 0);
      v34 = sub_100129158(&v57, (v33 + 32), v32, v31);
      sub_100004F98(v57._countAndFlagsBits);
      if (v34 != v32)
      {
        __break(1u);
LABEL_66:
        v2 = sub_100009088((v35 > 1), object, 1, v2);
        goto LABEL_48;
      }
    }

    else
    {

      v33 = _swiftEmptyArrayStorage;
    }

    v57._countAndFlagsBits = sub_100014B20(v36, sub_1001282D0);
    sub_10012763C(&v57._countAndFlagsBits);

    v24 = sub_1000AF038(8, v57._countAndFlagsBits);
    countAndFlagsBits = v37;
    v56 = v38;
    v57._countAndFlagsBits = 0x6563697665446263;
    v57._object = 0xEB00000000282073;
    if ((v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *(v33 + 16);
    }

    v58 = v26;
    v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v39);

    v40._countAndFlagsBits = 41;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v13 = v57._countAndFlagsBits;
    v25 = v57._object;
    v42 = *(v2 + 16);
    v41 = *(v2 + 24);
    object = (v42 + 1);
    if (v42 >= v41 >> 1)
    {
      v2 = sub_100009088((v41 > 1), v42 + 1, 1, v2);
    }

    v55 = v26;
    *(v2 + 16) = object;
    v43 = v2 + 16 * v42;
    *(v43 + 32) = v13;
    *(v43 + 40) = v25;
    if (v24 == countAndFlagsBits)
    {
      break;
    }

    while (countAndFlagsBits < v24)
    {
      v25 = v24 - 1;
      if ((v56 & 0xC000000000000001) != 0)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 < 1)
        {
          goto LABEL_61;
        }

        if (v25 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v49 = *(v56 + 8 * v24 + 24);
      }

      v50 = v49;
      v57._countAndFlagsBits = 2108704;
      v57._object = 0xE300000000000000;
      v51._countAndFlagsBits = sub_100126CD8();
      String.append(_:)(v51);

      v52 = v57._countAndFlagsBits;
      v13 = v57._object;
      v26 = *(v2 + 16);
      v53 = *(v2 + 24);
      object = (v26 + 1);
      if (v26 >= v53 >> 1)
      {
        v2 = sub_100009088((v53 > 1), v26 + 1, 1, v2);
      }

      *(v2 + 16) = object;
      v54 = v2 + 16 * v26;
      *(v54 + 32) = v52;
      *(v54 + 40) = v13;

      v24 = v25;
      if (countAndFlagsBits == v25)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v27 = sub_100009088((v25 > 1), v26, 1, v2);
    v2 = v27;
  }

LABEL_46:

  if (v55 <= 8)
  {
    goto LABEL_49;
  }

  v57._countAndFlagsBits = 539897390;
  v57._object = 0xE400000000000000;
  v58 = v55 - 8;
  v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v44);

  v45._countAndFlagsBits = 0x65726F6D20;
  v45._object = 0xE500000000000000;
  String.append(_:)(v45);
  v29 = v57._countAndFlagsBits;
  v32 = v57._object;
  v34 = *(v2 + 16);
  v35 = *(v2 + 24);
  object = (v34 + 1);
  if (v34 >= v35 >> 1)
  {
    goto LABEL_66;
  }

LABEL_48:
  *(v2 + 16) = object;
  v46 = v2 + 16 * v34;
  *(v46 + 32) = v29;
  *(v46 + 40) = v32;
LABEL_49:
  v57._countAndFlagsBits = v2;

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v47 = BidirectionalCollection<>.joined(separator:)();
  swift_bridgeObjectRelease_n();
  return v47;
}

uint64_t sub_100126CD8()
{
  v1 = v0;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10026F050;
  *(v2 + 32) = 0x6563697665444243;
  *(v2 + 40) = 0xE800000000000000;
  v3 = [v0 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_10000B584(8, v5, v7);

    v8 = static String._fromSubstring(_:)();
    v10 = v9;

    v12 = *(v2 + 16);
    v11 = *(v2 + 24);
    if (v12 >= v11 >> 1)
    {
      v2 = sub_100009088((v11 > 1), v12 + 1, 1, v2);
    }

    *(v2 + 16) = v12 + 1;
    v13 = v2 + 16 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
  }

  v14 = [v1 name];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 39;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v22 = *(v2 + 16);
    v21 = *(v2 + 24);
    if (v22 >= v21 >> 1)
    {
      v2 = sub_100009088((v21 > 1), v22 + 1, 1, v2);
    }

    *(v2 + 16) = v22 + 1;
    v23 = v2 + 16 * v22;
    *(v23 + 32) = 656436558;
    *(v23 + 40) = 0xE400000000000000;
  }

  if ([v1 bleRSSI])
  {
    [v1 bleRSSI];
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v26 = *(v2 + 16);
    v25 = *(v2 + 24);
    if (v26 >= v25 >> 1)
    {
      v2 = sub_100009088((v25 > 1), v26 + 1, 1, v2);
    }

    *(v2 + 16) = v26 + 1;
    v27 = v2 + 16 * v26;
    *(v27 + 32) = 0x2049535352;
    *(v27 + 40) = 0xE500000000000000;
  }

  v28 = [v1 idsDeviceID];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    sub_10000B584(8, v30, v32);

    v33 = static String._fromSubstring(_:)();
    v35 = v34;

    v36._countAndFlagsBits = v33;
    v36._object = v35;
    String.append(_:)(v36);

    v38 = *(v2 + 16);
    v37 = *(v2 + 24);
    if (v38 >= v37 >> 1)
    {
      v2 = sub_100009088((v37 > 1), v38 + 1, 1, v2);
    }

    *(v2 + 16) = v38 + 1;
    v39 = v2 + 16 * v38;
    *(v39 + 32) = 542327881;
    *(v39 + 40) = 0xE400000000000000;
  }

  if (([v1 nearbyActionFlags] & 0x10) != 0)
  {
    v41 = *(v2 + 16);
    v40 = *(v2 + 24);
    if (v41 >= v40 >> 1)
    {
      v2 = sub_100009088((v40 > 1), v41 + 1, 1, v2);
    }

    *(v2 + 16) = v41 + 1;
    v42 = v2 + 16 * v41;
    *(v42 + 32) = 17220;
    *(v42 + 40) = 0xE200000000000000;
  }

  if (([v1 discoveryFlags] & 0x200000000000) != 0)
  {
    v44 = *(v2 + 16);
    v43 = *(v2 + 24);
    if (v44 >= v43 >> 1)
    {
      v2 = sub_100009088((v43 > 1), v44 + 1, 1, v2);
    }

    *(v2 + 16) = v44 + 1;
    v45 = v2 + 16 * v44;
    *(v45 + 32) = 17232;
    *(v45 + 40) = 0xE200000000000000;
  }

  if ([v1 supportsR1])
  {
    v47 = *(v2 + 16);
    v46 = *(v2 + 24);
    if (v47 >= v46 >> 1)
    {
      v2 = sub_100009088((v46 > 1), v47 + 1, 1, v2);
    }

    *(v2 + 16) = v47 + 1;
    v48 = v2 + 16 * v47;
    *(v48 + 32) = 4347733;
    *(v48 + 40) = 0xE300000000000000;
  }

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v49 = BidirectionalCollection<>.joined(separator:)();

  return v49;
}

uint64_t type metadata accessor for BluetoothProxy(uint64_t a1)
{
  result = qword_100345D80;
  if (!qword_100345D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001272B4(uint64_t a1)
{
  sub_10012737C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10012737C(uint64_t a1)
{
  if (!qword_100345D90)
  {
    sub_100035D4C(&unk_100345D98, &qword_10027CF08);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100345D90);
    }
  }
}

uint64_t sub_1001273E0@<X0>(void *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
}

uint64_t sub_100127428(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;

  type metadata accessor for Dictionary();
  v5 = Dictionary.values.modify();
  *v6 = v4;

  return v5(&v8, 0);
}

void sub_1001274C0(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v4;
}

void *sub_100127540(uint64_t a1, uint64_t a2)
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

  sub_100035D04(&unk_100345FC0, &qword_100275788);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10012763C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100014BC0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1001276B8(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1001276B8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100003118(0, &unk_10034A340, CBDevice_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1001278C4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1001277CC(0, v2, 1, a1);
  }
}

void sub_1001277CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 bleRSSI];
      v13 = [v11 bleRSSI];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1001278C4(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1001282A4(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_100127F34((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1001282A4(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_100128218(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 bleRSSI];
      v104 = [v14 bleRSSI];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 bleRSSI];
        v7 = [v18 bleRSSI];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1000AF9AC(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1000AF9AC((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_100127F34((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001282A4(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_100128218(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 bleRSSI];
    v41 = [v39 bleRSSI];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = (v107 + 1);
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_100127F34(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 bleRSSI];
          v35 = [v33 bleRSSI];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 bleRSSI];
          v20 = [v18 bleRSSI];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_100128218(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001282A4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1001282D0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E244(&qword_100345F18, &qword_100345F10, &unk_10027CFF0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100035D04(&qword_100345F10, &unk_10027CFF0);
            v9 = sub_100128B4C(v13, i, a3);
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
        sub_100003118(0, &unk_10034A340, CBDevice_ptr);
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

uint64_t sub_100128484(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E244(&qword_100345FD8, &qword_100345FD0, &unk_10027D020, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100035D04(&qword_100345FD0, &unk_10027D020);
            v9 = sub_100128B4C(v13, i, a3);
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
        sub_100003118(0, &qword_10033E980, NIRegionPredicate_ptr);
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

uint64_t sub_100128638(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E244(&qword_100345FB8, &qword_100345FB0, &unk_10027D010, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100035D04(&qword_100345FB0, &unk_10027D010);
            v9 = sub_100128BCC(v13, i, a3);
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
        sub_100003118(0, &qword_100343488, FBSDisplayLayoutElement_ptr);
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

uint64_t sub_1001287EC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E244(&qword_100345FF0, &qword_100345FE8, &unk_10027D030, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100035D04(&qword_100345FE8, &unk_10027D030);
            v9 = sub_100128C54(v13, i, a3);
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
        sub_100035D04(&qword_100345FE0, &qword_1002795C0);
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

uint64_t sub_10012899C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000E244(&unk_100345FA0, &qword_100345F98, &qword_10027D008, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100035D04(&qword_100345F98, &qword_10027D008);
            v9 = sub_100128CDC(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_100035D04(&qword_100345F90, &qword_10027D000);
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

void (*sub_100128B4C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1001295D8;
  }

  __break(1u);
  return result;
}

void (*sub_100128BCC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100128C4C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100128C54(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    return sub_100128CD4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100128CDC(uint64_t *result, unint64_t a2, uint64_t a3)
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
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10000490C;
  }

  __break(1u);
  return result;
}

uint64_t sub_100128D5C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100129000(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100129158(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1001292AC()
{
  result = qword_100346000;
  if (!qword_100346000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346000);
  }

  return result;
}

uint64_t sub_100129338(_BYTE *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  if (*a1 == 1)
  {
    return a2();
  }

  else
  {
    return a3();
  }
}

uint64_t sub_100129354(char a1)
{
  if (qword_100339048 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100345B60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting keepAlive to '%{BOOL}d'...", v5, 8u);
  }

  v6 = xpc_copy_event();
  if (v6)
  {
    v7 = v6;
    v8 = xpc_BOOL_create(a1 & 1);
    xpc_dictionary_set_value(v7, "keepAlive", v8);
    swift_unknownObjectRelease();
    xpc_set_event();
    return swift_unknownObjectRelease();
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100017494(0x746E6F43786F7250, 0xEB000000006C6F72, &v15);
      _os_log_impl(&_mh_execute_header, v10, v11, "### Failed to get launch event as XPC object for: %s", v12, 0xCu);
      sub_10000903C(v13);
    }

    sub_10001618C();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 7;
    return swift_willThrow();
  }
}

uint64_t sub_1001295F0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100346090);
  sub_100003078(v0, qword_100346090);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100129670()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100339B30, &unk_1002704F0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = type metadata accessor for SFProximityHandoff.Interaction();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1000F4E30(v7, v5);
  sub_100035D04(&qword_100346240, qword_10027D0D0);
  swift_allocObject();
  v9 = sub_10002B7BC(v5, 0, 0, 0, 0, 0);
  sub_1000097E8(v7, &qword_100339B30, &unk_1002704F0);
  *(v1 + 16) = v9;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = &_swiftEmptySetSingleton;
  v11[1] = *(v1 + 16);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100346248, &qword_100346240, qword_10027D0D0, &unk_10027C688);

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

double sub_1001298D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFProximityHandoff.Interaction();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_100035D04(&qword_100339B30, &unk_1002704F0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  if (qword_100339050 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003078(v17, qword_100346090);
  v31 = a1;
  sub_1000F4E30(a1, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v30 = a2;
    v20 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v20 = 136315138;
    sub_1000F4E30(v16, v14);
    v29 = *(v5 + 48);
    if (v29(v14, 1, v4) == 1)
    {
      v21 = 0xE300000000000000;
      v22 = 7104878;
    }

    else
    {
      (*(v5 + 32))(v10, v14, v4);
      (*(v5 + 16))(v8, v10, v4);
      v22 = String.init<A>(describing:)();
      v21 = v24;
      (*(v5 + 8))(v10, v4);
    }

    sub_1000097E8(v16, &qword_100339B30, &unk_1002704F0);
    v25 = sub_100017494(v22, v21, v32);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "New proximityHandoffInteraction: %s", v20, 0xCu);
    sub_10000903C(v28);

    v23 = v29(v31, 1, v4);
  }

  else
  {

    sub_1000097E8(v16, &qword_100339B30, &unk_1002704F0);
    v23 = (*(v5 + 48))(v31, 1, v4);
  }

  if (v23 == 1)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    sub_100129CC0();
  }

  else
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    sub_100129E14();
  }

  return result;
}

void sub_100129CC0()
{
  if (qword_100339050 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100346090);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0x2866664F6C6F6F63, 0xE900000000000029, &v5);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  sub_10012A8B4();
}

double sub_100129E14()
{
  if (qword_100339050 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100346090);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0x286D726177657270, 0xE900000000000029, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  return sub_100129F68();
}

double sub_100129F68()
{
  v1 = v0;
  if (qword_100339050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346090);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000019, 0x80000001002A1320, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  *(v1 + 40) = 1;
  v7 = swift_allocObject();
  swift_weakInit();
  sub_10012BA78(v1, v7);

  return result;
}

void sub_10012A0F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      swift_errorRetain();
      if (qword_100339050 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100003078(v5, qword_100346090);
      swift_errorRetain();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        swift_errorRetain();
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v10;
        *v9 = v10;
        _os_log_impl(&_mh_execute_header, v6, v7, "### Failed to launch AirDropUI: %@", v8, 0xCu);
        sub_1000097E8(v9, &qword_100339940, &unk_100272C50);

LABEL_21:

        return;
      }

LABEL_13:

      return;
    }

    if (*(Strong + 48))
    {
      if (qword_100339050 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100003078(v11, qword_100346090);
      v6 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v6, v12))
      {
        goto LABEL_21;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Not taking assertion to ensure AirDropUI is active because assertion was already taken";
    }

    else
    {
      if (*(Strong + 40) == 1)
      {
        v15 = String._bridgeToObjectiveC()();
        v16 = [objc_opt_self() predicateMatchingBundleIdentifier:v15];

        sub_100003118(0, &qword_100346228, RBSProcessHandle_ptr);
        v17 = v16;
        v19 = sub_10012B9B4(v17);

        v20 = [v19 identity];
        v21 = [objc_opt_self() targetWithProcessIdentity:v20];

        v22 = String._bridgeToObjectiveC()();
        v23 = String._bridgeToObjectiveC()();
        v24 = [objc_opt_self() attributeWithDomain:v22 name:v23];

        sub_100035D04(&qword_10033AE40, &qword_1002719E0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1002764E0;
        *(v25 + 32) = v24;
        v26 = objc_allocWithZone(RBSAssertion);
        v27 = v21;
        v28 = v24;
        v29 = String._bridgeToObjectiveC()();
        sub_100003118(0, &qword_100346230, RBSAttribute_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v31 = [v26 initWithExplanation:v29 target:v27 attributes:isa];

        v45[0] = 0;
        v32 = [v31 acquireWithError:v45];
        if (v32)
        {
          v33 = qword_100339050;
          v34 = v45[0];
          if (v33 != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          sub_100003078(v35, qword_100346090);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v36, v37, "Successfully acquired assertion", v38, 2u);
          }

          v6 = *(v4 + 48);
          *(v4 + 48) = v31;
          goto LABEL_21;
        }

        v39 = v45[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100339050 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_100003078(v40, qword_100346090);
        swift_errorRetain();
        v6 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v6, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v42 = 138412290;
          swift_errorRetain();
          v44 = _swift_stdlib_bridgeErrorToNSError();
          *(v42 + 4) = v44;
          *v43 = v44;
          _os_log_impl(&_mh_execute_header, v6, v41, "### Failed to take assertion on AirDropUI ensuring it is active: %@", v42, 0xCu);
          sub_1000097E8(v43, &qword_100339940, &unk_100272C50);

          goto LABEL_21;
        }

        goto LABEL_13;
      }

      if (qword_100339050 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100003078(v18, qword_100346090);
      v6 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v6, v12))
      {
        goto LABEL_21;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Not taking assertion to ensure AirDropUI is active because service is no longer active";
    }

    _os_log_impl(&_mh_execute_header, v6, v12, v14, v13, 2u);

    goto LABEL_21;
  }
}

void sub_10012A8B4()
{
  v1 = v0;
  if (qword_100339050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346090);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000012, 0x80000001002A12E0, &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  *(v0 + 40) = 0;
  v7 = *(v0 + 48);
  if (v7)
  {
    v8 = v7;
    [v8 invalidate];
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Invalidated assertion", v11, 2u);
    }

    v12 = *(v1 + 48);
    *(v1 + 48) = 0;
  }

  else
  {
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Not releasing assertion to ensure AirDropUI is active because no assertion exists", v14, 2u);
    }

    v12 = oslog;
  }
}

double sub_10012AB10(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v10 = qword_10038B5B8;
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10012BF48;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100309E40;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);

  return result;
}

void sub_10012AE00(uint64_t a1)
{
  v1 = type metadata accessor for SFNearbySharingInteractionViewState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100035D04(&qword_100339B38, &qword_10027D0C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_100035D04(&qword_100339B30, &unk_1002704F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = type metadata accessor for SFProximityHandoff.Interaction();
  v39 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v33 = v4;
    v34 = v2;
    v35 = v1;

    CurrentValueSubject.value.getter();
    v18 = *(v10 + 48);
    if (v18(v8, 1, v9) == 1)
    {
      CurrentValueSubject.value.getter();

      if (v18(v8, 1, v9) != 1)
      {
        sub_1000097E8(v8, &qword_100339B38, &qword_10027D0C0);
      }
    }

    else
    {

      sub_10012BF50(v8, v12);
    }

    v19 = v39;
    if ((*(v39 + 48))(v12, 1, v13) == 1)
    {
      sub_1000097E8(v12, &qword_100339B30, &unk_1002704F0);
    }

    else
    {
      (*(v19 + 32))(v15, v12, v13);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = v36;
        SFProximityHandoff.Interaction.id.getter();
        v22 = v34;
        v21 = v35;
        v23 = v38;
        (*(v34 + 104))(v38, enum case for SFNearbySharingInteractionViewState.idle(_:), v35);
        sub_10012008C(v20, v23);
        swift_unknownObjectRelease();
        (*(v22 + 8))(v23, v21);
        (*(v37 + 8))(v20, v33);
      }

      (*(v19 + 8))(v15, v13);
    }

    v24 = *(v17 + 56);
    *(v17 + 56) = 0;

    if (*(v17 + 40) == 1)
    {
      if (qword_100339050 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100003078(v25, qword_100346090);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "ProximityHandoffUIClient: invalidated, reconnecting...", v28, 2u);
      }

      sub_10012A8B4();
      sub_100129F68();
    }

    else
    {
      if (qword_100339050 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100003078(v29, qword_100346090);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "ProximityHandoffUIClient: invalidated", v32, 2u);
      }
    }
  }
}

uint64_t sub_10012B404(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100339050 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_100346090);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "### ProximityHandoffUIClient: register failed: %@", v8, 0xCu);
      sub_1000097E8(v9, &qword_100339940, &unk_100272C50);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = *(Strong + 56);
      *(Strong + 56) = 0;
    }

    swift_errorRetain();
    a3(a1);
  }

  else
  {
    if (qword_100339050 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003078(v14, qword_100346090);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "ProximityHandoffUIClient: register succeeded", v17, 2u);
    }

    return (a3)(0);
  }
}

void sub_10012B694()
{
  if (qword_100339050 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100346090);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Sending into client stream...", v2, 2u);
  }
}

uint64_t sub_10012B77C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SFProximityHandoff.Interaction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100035D04(&qword_100339B30, &unk_1002704F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  sub_1000F4E30(a1, &v15 - v9);
  result = (*(v5 + 48))(v10, 1, v4);
  if (result == 1)
  {
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v13 = *(v5 + 32);
    v13(v7, v10, v4);
    sub_100035D04(&qword_100346238, &qword_10027D0C8);
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 1) = xmmword_10026F050;
    result = (v13)(v12 + v14, v7, v4);
  }

  *a2 = v12;
  return result;
}

uint64_t sub_10012B938()
{

  sub_1000268AC(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_10012B9B4(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

double sub_10012BA78(uint64_t a1, uint64_t a2)
{
  v4 = qword_100339050;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100346090);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100017494(0xD00000000000001CLL, 0x80000001002A1340, &v27);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000903C(v9);
  }

  if (*(a1 + 56))
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Not launching AirDropUI because ProximityHandoffUIClient already exists", v12, 2u);
    }

    sub_10012A0F8(0, a2);
  }

  else
  {
    v26 = [objc_allocWithZone(type metadata accessor for SFProximityHandoffUIClient()) init];

    SFProximityHandoffUIClient.invalidationHandler.setter();
    SFProximityHandoffUIClient.activate()();
    if (v14)
    {
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "### ProximityHandoffUIClient: activate failed: %@", v17, 0xCu);
        sub_1000097E8(v18, &qword_100339940, &unk_100272C50);
      }

      swift_errorRetain();
      sub_10012A0F8(v14, a2);
    }

    else
    {
      v20 = *(a1 + 56);
      *(a1 + 56) = v26;
      v21 = v26;

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "ProximityHandoffUIClient: activate succeeded", v24, 2u);
      }

      swift_allocObject();
      v25 = swift_weakInit();
      __chkstk_darwin(v25);
      SFProximityHandoffUIClient.registerForProximityHandoffInteractionUpdates(completion:)();
    }
  }

  return result;
}

uint64_t sub_10012BF50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100339B30, &unk_1002704F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10012C030(uint64_t a1)
{
  sub_10012C348(319, &qword_1003462D0, type metadata accessor for PCActivityType);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PCActivityAssetType(319);
    if (v2 <= 0x3F)
    {
      sub_10012C108(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ActivityDisplayContext.DynamicTextScheme(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10012C108(uint64_t a1)
{
  if (!qword_1003462D8)
  {
    v2 = sub_100003118(255, &unk_1003462E0, UIImage_ptr);
    v5 = type metadata accessor for NSCodingCodableOptional(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1003462D8);
    }
  }
}

uint64_t sub_10012C170(uint64_t a1)
{
  result = type metadata accessor for ActivityDisplayContext.CallDisplayContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10012C258(uint64_t a1)
{
  sub_10012C2F8();
  if (v1 <= 0x3F)
  {
    sub_10012C348(319, &qword_10033CCC0, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10012C2F8()
{
  if (!qword_1003438F8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003438F8);
    }
  }
}

void sub_10012C348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10012C3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100035D04(&qword_10033C280, &qword_100272A80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10012C48C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100035D04(&qword_10033C280, &qword_100272A80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10012C53C(uint64_t a1)
{
  sub_10012C2F8();
  if (v1 <= 0x3F)
  {
    sub_10012C348(319, &qword_10033CCC0, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10012C5E0()
{
  v1 = v0;
  _StringGuts.grow(_:)(33);

  String.append(_:)(*(v0 + 24));
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = sub_1000C06B0(*(v0 + 16));
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  if (*(v1 + 8))
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    type metadata accessor for PCActivityType(0);
    v10 = String.init<A>(describing:)();
    v9 = v11;
  }

  v12 = v9;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0xD000000000000018;
}

uint64_t sub_10012C710()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B208);
  sub_100003078(v0, qword_10038B208);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10012C790()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100346250);
  v1 = sub_100003078(v0, qword_100346250);
  if (qword_100339058 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B208);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10012C858()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100130CD4(v1, v10, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 1)
  {
    result = 0;
    if (v12 == 2)
    {
      sub_100130D3C(v10, v4, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
      v14 = sub_10012E210();
      sub_100130AD0(v4, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
      return v14;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_100130D3C(v10, v7, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v15 = sub_10012DD38();
    sub_100130AD0(v7, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    return v15;
  }

  else
  {
    return *v10;
  }

  return result;
}

uint64_t sub_10012CA5C()
{
  v1 = sub_100035D04(&qword_100346628, &unk_10027D3C0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32 - v3;
  v5 = sub_100035D04(&unk_10034C7C0, &unk_10028C090);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_100035D04(&qword_100346630, &qword_10027D3D0);
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v34 = &v32 - v9;
  v10 = sub_100035D04(&qword_100346638, &qword_10027D3D8);
  v37 = *(v10 - 8);
  v38 = v10;
  __chkstk_darwin(v10);
  v35 = &v32 - v11;
  v12 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  v14 = __chkstk_darwin(v12);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  v39 = v0;
  sub_100130CD4(v0, &v32 - v16, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100130AD0(v17, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    }

    v40 = sub_10012C858();
    v41 = v30;
    sub_100035D04(&qword_10033A238, &qword_10027D3E0);
    Just.init(_:)();
    sub_10000E244(&qword_100346658, &qword_100346628, &unk_10027D3C0, &protocol conformance descriptor for Just<A>);
    v29 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_100130AD0(v17, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    sub_100003118(0, &qword_100346640, NSTimer_ptr);
    v19 = v8;
    v20 = [objc_opt_self() mainRunLoop];
    v21 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000097E8(v7, &unk_10034C7C0, &unk_10028C090);
    v40 = v22;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_100130A88(&qword_10034C800, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v23 = ConnectablePublisher.autoconnect()();

    v40 = v23;
    sub_100035D04(&qword_1003425A0, &qword_100278410);
    type metadata accessor for Date();
    *(swift_allocObject() + 16) = xmmword_10026F050;
    Date.init()();
    sub_100035D04(&unk_10034C810, &qword_10028C0C0);
    sub_10000E244(&qword_100346648, &unk_10034C810, &qword_10028C0C0, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    v24 = v34;
    Publisher.prepend(_:)();

    sub_100130CD4(v39, v15, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    v25 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v26 = swift_allocObject();
    sub_100130D3C(v15, v26 + v25, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    sub_100035D04(&qword_10033A238, &qword_10027D3E0);
    sub_10000E244(&qword_10034C820, &qword_100346630, &qword_10027D3D0, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
    v27 = v35;
    Publisher.map<A>(_:)();

    (*(v36 + 8))(v24, v19);
    sub_10000E244(&qword_100346650, &qword_100346638, &qword_10027D3D8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v28 = v38;
    v29 = Publisher.eraseToAnyPublisher()();
    (*(v37 + 8))(v27, v28);
  }

  return v29;
}

uint64_t sub_10012D1B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = *a1;
    v6 = v4;
  }

  else
  {
    v7 = [objc_opt_self() localizedStringForKey:10];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v8;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_10012D248(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_100346528, &qword_10027D340);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000EBC0(a1, a1[3]);
  sub_100130A34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 8);
  v11 = *v3;
  v12 = v9;
  v13 = 0;
  type metadata accessor for PCActivityType(0);
  sub_100130A88(&qword_100346530, type metadata accessor for PCActivityType, &protocol conformance descriptor for PCActivityType);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v3[2];
    v13 = 1;
    type metadata accessor for PCActivityAssetType(0);
    sub_100130A88(&qword_100346538, type metadata accessor for PCActivityAssetType, &protocol conformance descriptor for PCActivityAssetType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v3[5];
    v13 = 3;
    sub_100035D04(&qword_100346510, &qword_10027D338);
    sub_10000E244(&qword_100346540, &qword_100346510, &qword_10027D338, &unk_100296200);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for ActivityDisplayContext(0);
    LOBYTE(v11) = 4;
    type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
    sub_100130A88(&qword_100346548, type metadata accessor for ActivityDisplayContext.DynamicTextScheme, &unk_10027D264);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10012D5BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v4 = __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v26 - v7;
  v9 = sub_100035D04(&qword_1003464F0, &qword_10027D330);
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for ActivityDisplayContext(0);
  __chkstk_darwin(v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v34 = a1;
  sub_10000EBC0(a1, v15);
  sub_100130A34();
  v32 = v11;
  v16 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    sub_10000903C(v34);
  }

  else
  {
    v33 = v8;
    v28 = v6;
    v17 = v30;
    type metadata accessor for PCActivityType(0);
    v37 = 0;
    sub_100130A88(&qword_100346500, type metadata accessor for PCActivityType, &protocol conformance descriptor for PCActivityType);
    v18 = v31;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v36;
    v20 = v14;
    *v14 = v35;
    v14[8] = v19;
    type metadata accessor for PCActivityAssetType(0);
    v37 = 1;
    sub_100130A88(&qword_100346508, type metadata accessor for PCActivityAssetType, &protocol conformance descriptor for PCActivityAssetType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v17;
    v20[2] = v35;
    LOBYTE(v35) = 2;
    v20[3] = KeyedDecodingContainer.decode(_:forKey:)();
    v20[4] = v22;
    sub_100035D04(&qword_100346510, &qword_10027D338);
    v27 = v20;
    v37 = 3;
    sub_10000E244(&qword_100346518, &qword_100346510, &qword_10027D338, &unk_100296228);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26[1] = v35;
    v23 = v27;
    v27[5] = v35;
    LOBYTE(v35) = 4;
    sub_100130A88(&qword_100346520, type metadata accessor for ActivityDisplayContext.DynamicTextScheme, &unk_10027D28C);
    v24 = v33;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100130D3C(v24, v23 + *(v12 + 32), type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    LOBYTE(v35) = 5;
    v25 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v32, v18);
    sub_100130D3C(v25, v23 + *(v12 + 36), type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    sub_100130CD4(v23, v29, type metadata accessor for ActivityDisplayContext);
    sub_10000903C(v34);
    sub_100130AD0(v23, type metadata accessor for ActivityDisplayContext);
  }
}

uint64_t sub_10012DB7C()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0x6461654864726163;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x74786554746E6968;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7079547465737361;
  if (v1 != 1)
  {
    v5 = 0x614E656369766564;
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

uint64_t sub_10012DC64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100131734(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10012DC8C(uint64_t a1)
{
  v2 = sub_100130A34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012DCC8(uint64_t a1)
{
  v2 = sub_100130A34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012DD38()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v2 - 8);
  v4 = v40 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v40 - v10;
  v12 = v1[1];
  if (!v12)
  {
    if (qword_100339060 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003078(v19, qword_100346250);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "### CallDisplayContext: No displayName", v22, 2u);
    }

    v23 = *(type metadata accessor for ActivityDisplayContext.CallDisplayContext(0) + 24);
    goto LABEL_21;
  }

  v13 = *v1;
  v14 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  sub_10006C4AC(v1 + *(v14 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000097E8(v4, &qword_10033C280, &qword_100272A80);
    if (qword_100339060 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_100346250);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "### CallDisplayContext: No startDate", v18, 2u);
    }

LABEL_20:
    v23 = *(v14 + 24);
LABEL_21:
    v34 = *(v1 + v23);

    return v34;
  }

  (*(v6 + 32))(v11, v4, v5);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v25 = v24;
  v26 = *(v6 + 8);
  v26(v9, v5);
  v27 = [objc_opt_self() formattedDurationFor:v25];
  if (!v27)
  {
    if (qword_100339060 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100003078(v35, qword_100346250);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "### CallDisplayContext: Could not get formattedDuration??", v38, 2u);
    }

    v26(v11, v5);
    goto LABEL_20;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v40[0] = v13;
  v40[1] = v12;

  v32._countAndFlagsBits = 2108704;
  v32._object = 0xE300000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v29;
  v33._object = v31;
  String.append(_:)(v33);

  v34 = v40[0];
  v26(v11, v5);
  return v34;
}

uint64_t sub_10012E210()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v2 - 8);
  v4 = v41 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v41 - v10;
  v12 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  sub_10006C4AC(v1 + *(v12 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000097E8(v4, &qword_10033C280, &qword_100272A80);
    if (qword_100339060 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003078(v13, qword_100346250);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "### TimerDisplayContext: No startDate", v16, 2u);
    }

LABEL_7:
    v17 = *v1;

    return v17;
  }

  (*(v6 + 32))(v11, v4, v5);
  Date.init()();
  v18 = static Date.> infix(_:_:)();
  v19 = *(v6 + 8);
  v19(v9, v5);
  if (v18)
  {
    Date.timeIntervalSinceNow.getter();
    v21 = [objc_opt_self() formattedDurationFor:v20];
    if (!v21)
    {
      if (qword_100339060 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100003078(v37, qword_100346250);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "### TimerDisplayContext: Could not get formattedDuration??", v40, 2u);
      }

      v19(v11, v5);
      goto LABEL_7;
    }

    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    v26 = v1[1];
    if (v26)
    {
      v27 = *v1;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    v29._countAndFlagsBits = v27;
    v29._object = v28;
    String.append(_:)(v29);

    v30._countAndFlagsBits = 2108704;
    v30._object = 0xE300000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = v23;
    v31._object = v25;
    String.append(_:)(v31);

    v17 = v41[0];
    v19(v11, v5);
  }

  else
  {
    if (qword_100339060 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100003078(v32, qword_100346250);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "### TimerDisplayContext: fireDate is past", v35, 2u);
    }

    v19(v11, v5);
    return 0;
  }

  return v17;
}

uint64_t sub_10012E714@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  __chkstk_darwin(v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100130CD4(a1, v12, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    v14 = 0;
    v15 = 0;
    if (result != 2)
    {
      goto LABEL_8;
    }

    sub_100130D3C(v12, v6, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    v14 = sub_10012E210();
    v15 = v16;
    v17 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext;
    v18 = v6;
LABEL_7:
    result = sub_100130AD0(v18, v17);
    goto LABEL_8;
  }

  if (result)
  {
    sub_100130D3C(v12, v9, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v14 = sub_10012DD38();
    v15 = v19;
    v17 = type metadata accessor for ActivityDisplayContext.CallDisplayContext;
    v18 = v9;
    goto LABEL_7;
  }

  v14 = *v12;
  v15 = v12[1];
LABEL_8:
  *a2 = v14;
  a2[1] = v15;
  return result;
}

uint64_t sub_10012E908(void *a1)
{
  v2 = sub_100035D04(&qword_1003465B0, &qword_10027D378);
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v32 - v3;
  v41 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  __chkstk_darwin(v41);
  v42 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_1003465B8, &qword_10027D380);
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v38 = &v32 - v6;
  v36 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  __chkstk_darwin(v36);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100035D04(&qword_1003465C0, &qword_10027D388);
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_100035D04(&qword_1003465C8, &qword_10027D390);
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  __chkstk_darwin(v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100035D04(&qword_1003465D0, &qword_10027D398);
  v47 = *(v17 - 8);
  v48 = v17;
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  sub_10000EBC0(a1, a1[3]);
  sub_100130B30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100130CD4(v46, v16, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v50 = 1;
      sub_100130C2C();
      v21 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v35;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v34 + 8))(v10, v22);
      return (*(v47 + 8))(v19, v21);
    }

    v24 = v37;
    sub_100130D3C(v16, v37, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v51 = 2;
    sub_100130BD8();
    v29 = v38;
    v26 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100130A88(&qword_1003465E0, type metadata accessor for ActivityDisplayContext.CallDisplayContext, &unk_10027D1C4);
    v30 = v40;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v39 + 8))(v29, v30);
    v28 = type metadata accessor for ActivityDisplayContext.CallDisplayContext;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v24 = v42;
    sub_100130D3C(v16, v42, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    v52 = 3;
    sub_100130B84();
    v25 = v43;
    v26 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100130A88(&qword_1003465D8, type metadata accessor for ActivityDisplayContext.TimerDisplayContext, &unk_10027D214);
    v27 = v45;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v44 + 8))(v25, v27);
    v28 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext;
LABEL_7:
    sub_100130AD0(v24, v28);
    return (*(v47 + 8))(v19, v26);
  }

  v49 = 0;
  sub_100130C80();
  v31 = v48;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v33 + 8))(v13, v11);
  return (*(v47 + 8))(v19, v31);
}

uint64_t sub_10012F034@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v62 = sub_100035D04(&qword_100346550, &qword_10027D348);
  v65 = *(v62 - 8);
  __chkstk_darwin(v62);
  v70 = &v54 - v3;
  v4 = sub_100035D04(&qword_100346558, &qword_10027D350);
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v69 = &v54 - v5;
  v6 = sub_100035D04(&qword_100346560, &qword_10027D358);
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  __chkstk_darwin(v6);
  v68 = &v54 - v8;
  v9 = sub_100035D04(&qword_100346568, &qword_10027D360);
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v66 = &v54 - v10;
  v67 = sub_100035D04(&qword_100346570, &unk_10027D368);
  v72 = *(v67 - 8);
  __chkstk_darwin(v67);
  v12 = &v54 - v11;
  v13 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v54 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = (&v54 - v21);
  __chkstk_darwin(v20);
  v24 = &v54 - v23;
  v25 = a1[3];
  v74 = a1;
  sub_10000EBC0(a1, v25);
  sub_100130B30();
  v26 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v26)
  {
    v54 = v22;
    v55 = v19;
    v56 = v16;
    v27 = v68;
    v28 = v69;
    v29 = v70;
    v57 = v24;
    v73 = v13;
    v30 = v71;
    v31 = v67;
    v32 = KeyedDecodingContainer.allKeys.getter();
    v33 = (2 * *(v32 + 16)) | 1;
    v75 = v32;
    v76 = v32 + 32;
    v77 = 0;
    v78 = v33;
    v34 = sub_100218018();
    v35 = v12;
    if (v34 != 4 && v77 == v78 >> 1)
    {
      if (v34 > 1u)
      {
        v42 = v72;
        if (v34 == 2)
        {
          v79 = 2;
          sub_100130BD8();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
          sub_100130A88(&qword_100346598, type metadata accessor for ActivityDisplayContext.CallDisplayContext, &unk_10027D1EC);
          v43 = v55;
          v44 = v64;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v63 + 8))(v28, v44);
          (*(v42 + 8))(v35, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v43;
        }

        else
        {
          v79 = 3;
          sub_100130B84();
          v45 = v29;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
          sub_100130A88(&qword_100346588, type metadata accessor for ActivityDisplayContext.TimerDisplayContext, &unk_10027D23C);
          v47 = v56;
          v48 = v62;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v65 + 8))(v45, v48);
          (*(v42 + 8))(v35, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v47;
        }
      }

      else
      {
        if (!v34)
        {
          v79 = 0;
          sub_100130C80();
          v36 = v66;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v58 + 8))(v36, v59);
          (*(v72 + 8))(v35, v31);
          swift_unknownObjectRelease();
          v37 = v57;
          swift_storeEnumTagMultiPayload();
LABEL_14:
          sub_100130D3C(v37, v30, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
          return sub_10000903C(v74);
        }

        v79 = 1;
        sub_100130C2C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v46 = v60;
        v50 = KeyedDecodingContainer.decode(_:forKey:)();
        v52 = v51;
        (*(v61 + 8))(v27, v46);
        (*(v72 + 8))(v12, v31);
        swift_unknownObjectRelease();
        v53 = v54;
        *v54 = v50;
        v53[1] = v52;
        swift_storeEnumTagMultiPayload();
        v49 = v53;
      }

      v37 = v57;
      sub_100130D3C(v49, v57, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
      goto LABEL_14;
    }

    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v40 = v73;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    (*(v72 + 8))(v12, v31);
    swift_unknownObjectRelease();
  }

  return sub_10000903C(v74);
}

uint64_t sub_10012F9F0(uint64_t a1)
{
  v2 = sub_100130BD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012FA2C(uint64_t a1)
{
  v2 = sub_100130BD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FA68()
{
  v1 = 1701736302;
  v2 = 1819042147;
  if (*v0 != 2)
  {
    v2 = 0x72656D6974;
  }

  if (*v0)
  {
    v1 = 0x636974617473;
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

uint64_t sub_10012FACC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10013195C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10012FAF4(uint64_t a1)
{
  v2 = sub_100130B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012FB30(uint64_t a1)
{
  v2 = sub_100130B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FB6C(uint64_t a1)
{
  v2 = sub_100130C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012FBA8(uint64_t a1)
{
  v2 = sub_100130C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FBE4(uint64_t a1)
{
  v2 = sub_100130C2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012FC20(uint64_t a1)
{
  v2 = sub_100130C2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FC5C(uint64_t a1)
{
  v2 = sub_100130B84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012FC98(uint64_t a1)
{
  v2 = sub_100130B84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FD04(void *a1)
{
  v3 = sub_100035D04(&qword_100346620, &qword_10027D3B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000EBC0(a1, a1[3]);
  sub_100130DF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
    v8[14] = 1;
    type metadata accessor for Date();
    sub_100130A88(&qword_100346608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10012FEF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_100035D04(&qword_100346610, &qword_10027D3B0);
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  v10 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  __chkstk_darwin(v10);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000EBC0(a1, a1[3]);
  sub_100130DF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v13 = v25;
  v29 = 0;
  *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[1] = v14;
  v22[1] = v14;
  v23 = v12;
  type metadata accessor for Date();
  v28 = 1;
  sub_100130A88(&qword_1003465F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10006C51C(v6, v23 + *(v10 + 20));
  v27 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v13 + 8))(v9, v26);
  v19 = v23;
  v18 = v24;
  v20 = (v23 + *(v10 + 24));
  *v20 = v15;
  v20[1] = v17;
  sub_100130CD4(v19, v18, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
  sub_10000903C(a1);
  return sub_100130AD0(v19, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
}

uint64_t sub_100130280()
{
  v1 = 0x7461447472617473;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_1001302E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100131AB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10013030C(uint64_t a1)
{
  v2 = sub_100130DF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100130348(uint64_t a1)
{
  v2 = sub_100130DF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001303B4(void *a1)
{
  v3 = sub_100035D04(&qword_100346600, &qword_10027D3A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000EBC0(a1, a1[3]);
  sub_100130DA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
    v8[14] = 1;
    type metadata accessor for Date();
    sub_100130A88(&qword_100346608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10013056C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_100035D04(&qword_1003465E8, &qword_10027D3A0);
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  __chkstk_darwin(v10);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000EBC0(a1, a1[3]);
  sub_100130DA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v18 = v10;
  v13 = v20;
  v23 = 0;
  v14 = v12;
  *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[1] = v15;
  type metadata accessor for Date();
  v22 = 1;
  sub_100130A88(&qword_1003465F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v16 = v21;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v13 + 8))(v9, v16);
  sub_10006C51C(v6, v14 + *(v18 + 20));
  sub_100130CD4(v14, v19, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
  sub_10000903C(a1);
  return sub_100130AD0(v14, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
}

uint64_t sub_100130868()
{
  if (*v0)
  {
    return 0x6574614465726966;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_1001308AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574614465726966 && a2 == 0xE800000000000000)
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

uint64_t sub_10013098C(uint64_t a1)
{
  v2 = sub_100130DA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001309C8(uint64_t a1)
{
  v2 = sub_100130DA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100130A34()
{
  result = qword_1003464F8;
  if (!qword_1003464F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003464F8);
  }

  return result;
}

uint64_t sub_100130A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100130AD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100130B30()
{
  result = qword_100346578;
  if (!qword_100346578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346578);
  }

  return result;
}

unint64_t sub_100130B84()
{
  result = qword_100346580;
  if (!qword_100346580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346580);
  }

  return result;
}

unint64_t sub_100130BD8()
{
  result = qword_100346590;
  if (!qword_100346590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346590);
  }

  return result;
}

unint64_t sub_100130C2C()
{
  result = qword_1003465A0;
  if (!qword_1003465A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003465A0);
  }

  return result;
}

unint64_t sub_100130C80()
{
  result = qword_1003465A8;
  if (!qword_1003465A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003465A8);
  }

  return result;
}

uint64_t sub_100130CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100130D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100130DA4()
{
  result = qword_1003465F0;
  if (!qword_1003465F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003465F0);
  }

  return result;
}

unint64_t sub_100130DF8()
{
  result = qword_100346618;
  if (!qword_100346618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346618);
  }

  return result;
}

uint64_t sub_100130E4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10012E714(v4, a1);
}

unint64_t sub_100130F50()
{
  result = qword_100346660;
  if (!qword_100346660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346660);
  }

  return result;
}

unint64_t sub_100130FA8()
{
  result = qword_100346668;
  if (!qword_100346668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346668);
  }

  return result;
}

unint64_t sub_100131000()
{
  result = qword_100346670;
  if (!qword_100346670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346670);
  }

  return result;
}

unint64_t sub_100131058()
{
  result = qword_100346678;
  if (!qword_100346678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346678);
  }

  return result;
}

unint64_t sub_1001310B0()
{
  result = qword_100346680;
  if (!qword_100346680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346680);
  }

  return result;
}

unint64_t sub_100131108()
{
  result = qword_100346688;
  if (!qword_100346688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346688);
  }

  return result;
}

unint64_t sub_100131160()
{
  result = qword_100346690;
  if (!qword_100346690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346690);
  }

  return result;
}

unint64_t sub_1001311B8()
{
  result = qword_100346698;
  if (!qword_100346698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346698);
  }

  return result;
}

unint64_t sub_100131210()
{
  result = qword_1003466A0;
  if (!qword_1003466A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466A0);
  }

  return result;
}

unint64_t sub_100131268()
{
  result = qword_1003466A8;
  if (!qword_1003466A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466A8);
  }

  return result;
}

unint64_t sub_1001312C0()
{
  result = qword_1003466B0;
  if (!qword_1003466B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466B0);
  }

  return result;
}

unint64_t sub_100131318()
{
  result = qword_1003466B8;
  if (!qword_1003466B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466B8);
  }

  return result;
}

unint64_t sub_100131370()
{
  result = qword_1003466C0;
  if (!qword_1003466C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466C0);
  }

  return result;
}

unint64_t sub_1001313C8()
{
  result = qword_1003466C8;
  if (!qword_1003466C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466C8);
  }

  return result;
}

unint64_t sub_100131420()
{
  result = qword_1003466D0;
  if (!qword_1003466D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466D0);
  }

  return result;
}

unint64_t sub_100131478()
{
  result = qword_1003466D8;
  if (!qword_1003466D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466D8);
  }

  return result;
}

unint64_t sub_1001314D0()
{
  result = qword_1003466E0;
  if (!qword_1003466E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466E0);
  }

  return result;
}

unint64_t sub_100131528()
{
  result = qword_1003466E8;
  if (!qword_1003466E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466E8);
  }

  return result;
}

unint64_t sub_100131580()
{
  result = qword_1003466F0;
  if (!qword_1003466F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466F0);
  }

  return result;
}

unint64_t sub_1001315D8()
{
  result = qword_1003466F8;
  if (!qword_1003466F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003466F8);
  }

  return result;
}

unint64_t sub_100131630()
{
  result = qword_100346700;
  if (!qword_100346700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346700);
  }

  return result;
}

unint64_t sub_100131688()
{
  result = qword_100346708;
  if (!qword_100346708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346708);
  }

  return result;
}

unint64_t sub_1001316E0()
{
  result = qword_100346710;
  if (!qword_100346710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346710);
  }

  return result;
}

uint64_t sub_100131734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6461654864726163 && a2 == 0xEF6567616D497265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001002A1410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74786554746E6968 && a2 == 0xEE00656D65686353)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10013195C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819042147 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000)
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

uint64_t sub_100131AB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100131BD8(uint64_t a1)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 680);
  v3 = sub_10005F048();
  v5 = v4;

  if (v5)
  {
    if (qword_100339068 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_100346718);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100017494(v3, v5, &v12);
      _os_log_impl(&_mh_execute_header, v7, v8, "Using overriden systemImageName: %s", v9, 0xCu);
      sub_10000903C(v10);
    }
  }

  else if ((a1 - 7) >= 2)
  {
    return 0x6D646F70656D6F68;
  }

  else
  {
    return 0x646F70656D6F68;
  }

  return v3;
}

uint64_t sub_100131DC0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100346718);
  sub_100003078(v0, qword_100346718);
  return Logger.init(subsystem:category:)();
}

uint64_t PCActivityAssetType.description.getter(uint64_t a1)
{
  v1 = sub_1000C06B0(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_100131E9C()
{
  result = qword_100346730;
  if (!qword_100346730)
  {
    sub_100035D4C(&qword_100346738, qword_10027DC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346730);
  }

  return result;
}

uint64_t sub_100131FC0()
{
  v1 = sub_1000C06B0(*v0);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_100132010()
{
  result = qword_100346740;
  if (!qword_100346740)
  {
    type metadata accessor for PCActivityAssetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346740);
  }

  return result;
}

uint64_t sub_100132078(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003790951;
  if (v2 != 1)
  {
    v5 = 0x6D6F6F6C62;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701602409;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 2003790951;
  if (*a2 != 1)
  {
    v8 = 0x6D6F6F6C62;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701602409;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100132158()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001321E8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100132264(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001322F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100132474(*a1);
  *a2 = result;
  return result;
}

void sub_100132320(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003790951;
  if (v2 != 1)
  {
    v5 = 0x6D6F6F6C62;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701602409;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100132420()
{
  result = qword_100346748;
  if (!qword_100346748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100346748);
  }

  return result;
}

unint64_t sub_100132474(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100300F78, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}