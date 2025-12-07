uint64_t sub_10003152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    return 0;
  }

  v5 = *(a2 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
  v6 = *(a2 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);
  if (v5 == a4 && v6 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

id sub_100031570(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    return 0;
  }

  sub_100010E78(a2, a3);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = OPACKDecodeData();

  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v3 = [v8 integerValue];
    }

    else
    {
      v3 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  sub_100011358(a2, a3);
  return v3;
}

void sub_100031694(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity;
  swift_beginAccess();
  v7 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 152);
  sub_10003E0A8(v7, a1 + v6, isUniquelyReferenced_nonNull_native);
  *(v3 + 152) = v9;
  swift_endAccess();
  sub_1000297F8(v7);
  sub_100031B5C(v7);
}

void sub_100031744(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = objc_opt_self();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 extensionForIdentifier:v8];

  if (v9)
  {
    v10 = *(v4 + 176);
    if (v10)
    {
      v11 = qword_100098BB0;
      v12 = v10;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003420(v13, qword_1000A1AE8);
      v14 = v12;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        aBlock[7] = v3;
        v17 = v14;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446466;
        *(v18 + 4) = sub_100014C58(a1, a2, aBlock);
        *(v18 + 12) = 1024;
        *(v18 + 14) = *&v17[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

        _os_log_impl(&_mh_execute_header, v15, v16, "Requesting Service Provider '%{public}s' from Service Presenter PID %d", v18, 0x12u);
        sub_100003458(v19);

        v14 = v17;
      }

      else
      {
      }

      if (!*(v4 + 168))
      {
        v22 = a1 == 0xD000000000000019 && 0x8000000100079A50 == a2;
        if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v23 = [objc_allocWithZone(SBSLockScreenService) init];
          v24 = String._bridgeToObjectiveC()();
          v25 = [v23 preventSpuriousScreenUndimWithReason:v24];

          *(v4 + 168) = v25;
          swift_unknownObjectRelease();
          [v23 invalidate];
        }
      }

      v26 = swift_allocObject();
      v26[2] = v4;
      v26[3] = v14;
      v26[4] = a1;
      v26[5] = a2;
      aBlock[4] = sub_100047A30;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100025214;
      aBlock[3] = &unk_10008F100;
      v27 = _Block_copy(aBlock);
      v28 = v14;

      [v28 relayPresenterStartServiceExtension:v9 completion:v27];
      _Block_release(v27);
    }

    else
    {

      type metadata accessor for ServicePresenter();
      sub_10004B600();
    }
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001E468(v20, v21, -103, 0, 0, 0);
    swift_willThrow();
  }
}

void sub_100031B5C(char *a1)
{
  v2 = v1;
  v98 = a1;
  v97 = _s7SessionC8IdentityVMa(0);
  v104 = *(v97 - 8);
  v3 = __chkstk_darwin(v97);
  v105 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v90 - v6;
  __chkstk_darwin(v5);
  v99 = &v90 - v8;
  v9 = sub_10000FC6C(&qword_10009A808, &qword_1000769F0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v90 - v13;
  if (sub_100037E08(_swiftEmptyArrayStorage))
  {
    v15 = sub_10004589C(_swiftEmptyArrayStorage);
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v110 = v15;
  swift_beginAccess();
  v16 = *(v2 + 152);
  v17 = *(v16 + 64);
  v102 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v100 = v16;
  v101 = &v98[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier];
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  *&v23 = 136446466;
  v90 = v23;
  v106 = v7;
  *&v107 = v14;
  v103 = v12;
  v91 = v2;
  while (v20)
  {
    v24 = v22;
LABEL_13:
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = v25 | (v24 << 6);
    v27 = v100;
    sub_10003E75C();
    v28 = *(*(v27 + 56) + 8 * v26);
    v29 = sub_10000FC6C(&qword_10009A810, &qword_1000769F8);
    v30 = *(v29 + 48);
    v12 = v103;
    sub_1000469E4();
    *&v12[v30] = v28;
    sub_10001137C(v12, 0, 1, v29);
    v31 = v28;
    v7 = v106;
    v14 = v107;
LABEL_14:
    sub_10004871C();
    v32 = sub_10000FC6C(&qword_10009A810, &qword_1000769F8);
    if (sub_1000113A4(v14, 1, v32) == 1)
    {

      v70 = v110;
      if ((v110 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        type metadata accessor for ServiceProvider();
        sub_100035114(&unk_10009A818);
        Set.Iterator.init(_cocoa:)();
        v70 = v111;
        v71 = v112;
        v72 = v113;
        v73 = v114;
        v74 = v115;
      }

      else
      {
        v73 = 0;
        v75 = -1 << *(v110 + 32);
        v71 = v110 + 56;
        v72 = ~v75;
        v76 = -v75;
        if (v76 < 64)
        {
          v77 = ~(-1 << v76);
        }

        else
        {
          v77 = -1;
        }

        v74 = v77 & *(v110 + 56);
      }

      v106 = v72;
      v78 = (v72 + 64) >> 6;
      *&v69 = 67109120;
      v107 = v69;
      if (v70 < 0)
      {
        goto LABEL_54;
      }

      while (1)
      {
        v79 = v73;
        v80 = v74;
        v81 = v73;
        if (!v74)
        {
          break;
        }

LABEL_52:
        v82 = (v80 - 1) & v80;
        v83 = *(*(v70 + 48) + ((v81 << 9) | (8 * __clz(__rbit64(v80)))));
        if (!v83)
        {
LABEL_63:
          sub_100048714(v70);
          return;
        }

        while (1)
        {
          if (qword_100098BB0 != -1)
          {
            swift_once();
          }

          v85 = type metadata accessor for Logger();
          sub_100003420(v85, qword_1000A1AE8);
          v86 = v83;
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = v107;
            *(v89 + 4) = *(&v86->isa + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

            _os_log_impl(&_mh_execute_header, v87, v88, "Terminating Service Provider PID %d", v89, 8u);
          }

          else
          {

            v87 = v86;
          }

          [v86 relayTerminateService];
          v73 = v81;
          v74 = v82;
          if ((v70 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_54:
          v84 = __CocoaSet.Iterator.next()();
          if (v84)
          {
            v108 = v84;
            type metadata accessor for ServiceProvider();
            swift_dynamicCast();
            v83 = v109;
            v81 = v73;
            v82 = v74;
            if (v109)
            {
              continue;
            }
          }

          goto LABEL_63;
        }
      }

      while (1)
      {
        v81 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_65;
        }

        if (v81 >= v78)
        {
          goto LABEL_63;
        }

        v80 = *(v71 + 8 * v81);
        ++v79;
        if (v80)
        {
          goto LABEL_52;
        }
      }
    }

    v33 = *&v14[*(v32 + 48)];
    sub_1000469E4();
    v34 = *&v33[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier] == *v101 && *&v33[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier + 8] == *(v101 + 1);
    if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_beginAccess();
      if (!*(*(v2 + 120) + 16) || (sub_1000393BC(v7), (v35 & 1) == 0))
      {
        swift_endAccess();
        if (qword_100098BB0 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100003420(v36, qword_1000A1AE8);
        sub_10003E75C();
        v37 = v33;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v109 = v95;
          *v40 = v90;
          v94 = v38;
          v41 = v105;
          v93 = v39;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v43 = sub_100010F24(isa);
          v96 = v33;
          v44 = v43;

          v111 = 542327881;
          v112 = 0xE400000000000000;
          v108 = v44;
          sub_100010C84();
          v45._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
          String.append(_:)(v45);

          v46 = v111;
          v47 = v112;
          if (*(v41 + *(v97 + 24)))
          {
            v48 = 0x65746F6D6572;
          }

          else
          {
            v48 = 0x6C61636F6CLL;
          }

          if (*(v41 + *(v97 + 24)))
          {
            v49 = 0xE600000000000000;
          }

          else
          {
            v49 = 0xE500000000000000;
          }

          v111 = *(v41 + *(v97 + 20));
          sub_100010ED0();
          v92 = String.init<A>(_:radix:uppercase:)();
          v51 = v50;
          v111 = v46;
          v112 = v47;
          v7 = v106;
          v52._countAndFlagsBits = 58;
          v52._object = 0xE100000000000000;
          String.append(_:)(v52);
          v53._countAndFlagsBits = v48;
          v33 = v96;
          v53._object = v49;
          String.append(_:)(v53);
          v12 = v103;

          v54._countAndFlagsBits = 58;
          v54._object = 0xE100000000000000;
          String.append(_:)(v54);
          v55._countAndFlagsBits = v92;
          v55._object = v51;
          String.append(_:)(v55);

          v56 = v111;
          v57 = v112;
          sub_10003E708(v105);
          v58 = sub_100014C58(v56, v57, &v109);

          *(v40 + 4) = v58;
          *(v40 + 12) = 1024;
          LODWORD(v58) = *&v37[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

          *(v40 + 14) = v58;
          v59 = v94;
          _os_log_impl(&_mh_execute_header, v94, v93, "%{public}s: Removing Service Provider PID %d", v40, 0x12u);
          sub_100003458(v95);

          v2 = v91;
        }

        else
        {

          sub_10003E708(v105);
        }

        swift_beginAccess();
        v60 = sub_1000393BC(v7);
        if (v61)
        {
          v62 = v60;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = *(v2 + 152);
          v64 = v109;
          *(v2 + 152) = 0x8000000000000000;
          v65 = *(v64 + 24);
          sub_10000FC6C(&qword_10009A7F0, &qword_1000769D8);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v65);
          v66 = v109;
          sub_10003E708(v109[6] + *(v104 + 72) * v62);
          v67 = *(v66[7] + 8 * v62);
          type metadata accessor for ServiceProvider();
          sub_100035114(&unk_10009A7B0);
          v7 = v106;
          _NativeDictionary._delete(at:)();
          *(v2 + 152) = v66;
        }
      }

      swift_endAccess();
      if (v33 == v98)
      {
        sub_10003E708(v7);
      }

      else
      {
        sub_100043BEC(&v111, v33);

        sub_10003E708(v7);
      }

      v14 = v107;
    }

    else
    {
      sub_10003E708(v7);
    }
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      v68 = sub_10000FC6C(&qword_10009A810, &qword_1000769F8);
      sub_10001137C(v12, 1, 1, v68);
      v20 = 0;
      goto LABEL_14;
    }

    v20 = *(v102 + 8 * v24);
    ++v22;
    if (v20)
    {
      v22 = v24;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_100032708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = _s7SessionC8IdentityVMa(0);
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for SidecarIdentity(0);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E75C();
  sub_1000469E4();
  swift_beginAccess();
  if (!sub_100020BD8(v10, *(v5 + 136), sub_100039308))
  {
    swift_endAccess();
    return sub_10003E708(v10);
  }

  swift_endAccess();
  if (Domain.isBound.getter())
  {
LABEL_3:
    sub_10003E708(v10);
  }

  if (a5)
  {
    v16[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16[2] = v12;
    AnyHashable.init<A>(_:)();
    sub_1000209D8(a5, &v18, v17);
    sub_10001FDF0(v17);
    if (*(&v19 + 1))
    {
      if (!swift_dynamicCast())
      {
        goto LABEL_3;
      }

      Domain.bind(peer:)(v17[0]);
      if (!v13)
      {
        sub_10003E708(v10);
      }

      if (qword_100098BB0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      v15 = sub_100003420(v14, qword_1000A1AE8);
      __chkstk_darwin(v15);
      v16[-2] = v13;
      sub_100016F18(sub_100032A9C, 0, sub_100011C20);

      return sub_10003E708(v10);
    }

    sub_10003E708(v10);
  }

  else
  {
    sub_10003E708(v10);

    v18 = 0u;
    v19 = 0u;
  }

  return sub_100048978(&v18, &qword_10009B0C0);
}

uint64_t sub_100032AB8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v2 = sub_100020CD4(v5, a1);
  sub_10001FDF0(v5);
  if (v2 && (swift_dynamicCast() & 1) != 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_100032BA4()
{
  sub_100011DD0();
  v2 = v1;
  v4 = v3;
  if (v1)
  {
    swift_errorRetain();
    if (qword_100098BA0 != -1)
    {
      sub_100049778();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v6 = sub_100049AD4(v5, qword_100099FC0);
    __chkstk_darwin(v6);
    sub_100011DA8();
    *(v7 - 16) = v2;
    sub_100016F18(sub_100043BC4, v4, sub_100011C20);

    v8 = v2;
  }

  else
  {
    if (qword_100098BA0 != -1)
    {
      sub_100049778();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100049AD4(v9, qword_100099FC0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      sub_100049C18();
      v12 = swift_slowAlloc();
      sub_100049A30();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136446210;
      v14 = RapportRemoteDisplaySession.description.getter();
      sub_100014C58(v14, v15, &v24);
      sub_10004A228();
      *(v12 + 4) = v0;
      sub_10004A1C8(&_mh_execute_header, v16, v17, "%{public}s Ended");
      sub_100003458(v13);
      sub_100011CF4();

      sub_100049950();
    }

    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    sub_1000499C4();
    v8 = sub_10001E680(v18, v19, v20, v21, v22, v23, 1642);
  }

  swift_errorRetain();
  swift_errorRetain();
  sub_10002F800(v4, 0, 0, v8, 0);

  sub_100011DB8();
}

unint64_t sub_100032DE0(uint64_t a1)
{
  v3 = RapportRemoteDisplaySession.description.getter();
  v1._countAndFlagsBits = 0x6465646E4520;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  return v3;
}

uint64_t sub_100032E2C(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    if (qword_100098BB0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    v2 = sub_100003420(v1, qword_1000A1AE8);
    v3 = __chkstk_darwin(v2);
    __chkstk_darwin(v3);
    sub_100016F18(sub_100047A54, v4, sub_100011C20);
    sub_10002B60C();
    sub_10002F464(v5);
  }

  return result;
}

uint64_t sub_100032F78(uint64_t a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(36);

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._object = 0x800000010007AFE0;
  v6._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v6);
  v7._countAndFlagsBits = a2;
  v7._object = a3;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x64656C6961462027;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  return 541346128;
}

uint64_t sub_10003306C(char *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *&a1[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier];
  v5 = *&a1[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier + 8];
  if (qword_100098BB0 != -1)
  {
LABEL_25:
    sub_100049734();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003420(v6, qword_1000A1AE8);
  v7 = v3;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    sub_10004A14C();
    v10 = swift_slowAlloc();
    sub_100049A30();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v10 = 67109378;
    *(v10 + 4) = *&v7[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v10 + 8) = 2082;
    *(v10 + 10) = sub_100014C58(v4, v5, v26);
    _os_log_impl(&_mh_execute_header, v8, v9, "PID %d: Register Service Provider '%{public}s'", v10, 0x12u);
    sub_100003458(v11);
    sub_100011CF4();

    sub_100011CF4();
  }

  else
  {
  }

  v24 = v4;
  sub_10002B60C();
  v3 = v12;
  v13 = sub_100037E08(v12);
  v14 = 0;
  v4 = v3 & 0xC000000000000001;
  while (v13 != v14)
  {
    if (v4)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 8 * v14 + 32);
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (*(v15 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state) == 1)
    {

      sub_100031694(v15, v7);
    }

    ++v14;
  }

  sub_100049E28();
  swift_beginAccess();
  if (*(*(v2 + 160) + 16))
  {
    v16 = v24;
    sub_1000391EC();
    if (v17)
    {
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
    v16 = v24;
  }

  v27 = v18;
  swift_endAccess();
  v20 = v7;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v21 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v21 >> 1)
  {
    sub_100011EBC(v21);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v22 = v27;
  sub_100011E50();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v2 + 160);
  sub_10003E268(v22, v16, v5, isUniquelyReferenced_nonNull_native);
  *(v2 + 160) = v25;
  return swift_endAccess();
}

uint64_t sub_1000333C8()
{
  sub_10000FC6C(&qword_10009A800, &qword_1000769E8);
  v1 = Dictionary.init(dictionaryLiteral:)();
  swift_beginAccess();
  *(v0 + 160) = v1;
}

void sub_100033444(void *a1)
{
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003420(v2, qword_1000A1AE8);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = sub_100049D00();
  if (os_log_type_enabled(v6, v7))
  {
    sub_10004A14C();
    v8 = swift_slowAlloc();
    sub_100049A30();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 67109378;
    *(v8 + 4) = *&v3[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v8 + 8) = 2082;
    *(v8 + 10) = sub_100014C58(*&v3[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier], *&v3[OBJC_IVAR____TtC12SidecarRelay15ServiceProvider_serviceIdentifier + 8], &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "PID %d: Unregister Service Provider '%{public}s'", v8, 0x12u);
    sub_100003458(v9);
    sub_100011CF4();

    sub_100011CF4();
  }

  else
  {
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  sub_100048324();
  sub_10004A140();
  swift_allocError();
  *v10 = 2;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = sub_100049F8C(v11, v12, -101, 27, 0x800000010007B070);
  sub_10002F534(v3, v13, 1);
  sub_100031B5C(v3);
}

void sub_100033654()
{
  sub_100011FF4();
  v3 = v1;
  v4 = v0;
  v5 = sub_100049CF4();
  v6 = _s7SessionC8IdentityVMa(v5);
  v7 = sub_10001B8E8(v6);
  __chkstk_darwin(v7);
  sub_100011CD4();
  v8 = sub_10000FC6C(&qword_10009A948, &qword_100076AB0);
  v9 = sub_1000499EC(v8);
  __chkstk_darwin(v9);
  sub_100011D10();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  sub_100049D4C();
  if (qword_100098BB0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    sub_100003420(v14, qword_1000A1AE8);
    v15 = v0;
    v0 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v16 = sub_100049D00();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      v18[1] = *&v15[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

      sub_10004A10C();
      _os_log_impl(v19, v20, v21, v22, v23, v24);
      sub_100049960();
    }

    else
    {

      v0 = v15;
    }

    if (*(v4 + 22))
    {
      break;
    }

    v67 = v3;
    v66 = v12;
    *(v4 + 22) = v15;
    sub_100011D50();
    swift_beginAccess();
    v65 = v4;
    v12 = *(v4 + 15);
    v33 = v12 + 64;
    sub_100049970();
    v3 = v35 & v34;
    v37 = v36 + 63;
    v38 = v15;
    v39 = v37 >> 6;
    v40 = v38;
    v64 = v12;

    v4 = 0;
    v63 = v2;
    if (!v3)
    {
      goto LABEL_9;
    }

    do
    {
      v41 = v4;
LABEL_13:
      v42 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v43 = v42 | (v41 << 6);
      sub_100049760();
      sub_10003E75C();
      v44 = *(*(v64 + 56) + 8 * v43);
      v45 = sub_100049AB0();
      v47 = sub_10000FC6C(v45, v46);
      v48 = *(v47 + 48);
      sub_1000497D4();
      v12 = v66;
      sub_1000469E4();
      *(v66 + v48) = v44;
      v49 = sub_100049BFC();
      sub_10001137C(v49, v50, v51, v47);

      v2 = v63;
LABEL_14:
      sub_10004871C();
      v52 = sub_100049AB0();
      v54 = sub_10000FC6C(v52, v53);
      if (sub_1000113A4(v2, 1, v54) == 1)
      {

        goto LABEL_22;
      }

      v55 = sub_100049F3C();
      v0 = v65;
      sub_100031744(v55, v56);
      if (v67)
      {

        sub_100049748();
        v32 = sub_10003E708(v2);
        v31 = v67;
        goto LABEL_21;
      }

      sub_100049748();
      sub_10003E708(v2);
    }

    while (v3);
LABEL_9:
    while (1)
    {
      v41 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v41 >= v39)
      {
        v57 = sub_100049AB0();
        v59 = sub_10000FC6C(v57, v58);
        v12 = v66;
        sub_10001137C(v66, 1, 1, v59);
        v3 = 0;
        goto LABEL_14;
      }

      v3 = *(v33 + 8 * v41);
      ++v4;
      if (v3)
      {
        v4 = v41;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    sub_100049734();
    swift_once();
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100011CE4();
  sub_1000497EC();
  v31 = sub_10001E468(v25, v26, v27, v28, v29, v30);
  v32 = swift_willThrow();
LABEL_21:
  v60 = __chkstk_darwin(v32);
  __chkstk_darwin(v60);
  sub_100011DA8();
  *(v61 - 16) = v31;
  sub_100016F18(sub_1000483DC, v62, sub_100011C20);
  swift_willThrow();
LABEL_22:
  sub_100011FBC();
}

uint64_t sub_100033B44()
{
  _StringGuts.grow(_:)(45);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._object = 0x800000010007B0B0;
  v1._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v1);
  return 541346128;
}

void sub_100033BFC(void *a1)
{
  v2 = v1;
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003420(v4, qword_1000A1AE8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v7 = sub_100049D00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    v9[1] = *&v5[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    sub_10004A10C();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    sub_100049960();
  }

  else
  {

    v6 = v5;
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  sub_100048324();
  sub_10004A140();
  swift_allocError();
  *v16 = 3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100011CE4();
  v19 = sub_100049F8C(v17, v18, -101, 28, 0x800000010007B090);
  v20 = *(v2 + 176);
  if (v20)
  {
    type metadata accessor for ServicePresenter();
    v21 = v5;
    v22 = v20;
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      sub_10004BCDC();
      v24 = *(v2 + 176);
      *(v2 + 176) = 0;
    }
  }

  v27 = v19;
  v25 = sub_100049AA4();
  sub_10002F534(v25, v26, 1);
}

void sub_100033EC4(uint64_t a1, uint64_t a2)
{
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100049AD4(v5, qword_1000A1AE8);
  __chkstk_darwin(v6);
  sub_100011DA8();
  *(v7 - 16) = a2;
  sub_100016F18(sub_100047B10, a1, sub_100011C20);
  if (*(v2 + 32))
  {

    sub_100049CE8();
    sub_100032BA4();
  }
}

void sub_100033FD4(uint64_t a1)
{
  sub_10004A288();
  v2 = v1;
  v4 = v3;
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  sub_1000499C4();
  v13 = sub_10001E674(v5, v6, v7, v8, v9, v10, v2);
  sub_100033EC4(v4, v13);
  sub_10004A29C();
}

id sub_1000340B8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithMachServiceName:v3];

  return v4;
}

void sub_10003412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_10004A288();
  a16 = v18;
  a17 = v19;
  v20 = OBJC_IVAR____TtCC12SidecarRelay5Relay11MachService_xpcListener;
  sub_1000033E0(0, &unk_10009A958, NSXPCListener_ptr);
  *&v17[v20] = sub_1000340B8(0xD000000000000017, 0x800000010007AF80);
  v21 = type metadata accessor for Relay.MachService();
  a9.receiver = v17;
  a9.super_class = v21;
  v22 = objc_msgSendSuper2(&a9, "init");
  v23 = OBJC_IVAR____TtCC12SidecarRelay5Relay11MachService_xpcListener;
  v24 = *&v22[OBJC_IVAR____TtCC12SidecarRelay5Relay11MachService_xpcListener];
  v25 = v22;
  [v24 setDelegate:v25];
  v26 = *&v22[v23];
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v27 = v26;
  v28 = static OS_dispatch_queue.main.getter();
  [v27 _setQueue:v28];

  [*&v22[v23] resume];
  sub_10004A29C();
}

uint64_t sub_100034268(int a1, id a2)
{
  [a2 auditToken];
  if (sub_10001FDE4() && xpc_copy_entitlement_for_token())
  {
    swift_unknownObjectRelease();
    objc_allocWithZone(type metadata accessor for TestClient());
    v3 = sub_100055120(a2);
LABEL_22:
    v30 = v3;
    if (qword_100098B98 != -1)
    {
      sub_100011C88(&qword_100098B98);
    }

    sub_10002FC68(v30);

    return 1;
  }

  v4 = xpc_copy_entitlement_for_token();
  if (!v4)
  {
LABEL_11:
    v13 = xpc_copy_entitlement_for_token();
    if (v13)
    {
      if (xpc_BOOL_get_value(v13))
      {
        objc_allocWithZone(type metadata accessor for ServicePresenter());
        v14 = a2;
        v12 = sub_1000035F0(v14, v15);
        goto LABEL_14;
      }

      swift_unknownObjectRelease();
    }

    objc_allocWithZone(type metadata accessor for Client());
    v28 = a2;
    v3 = sub_1000035F0(v28, v29);
    goto LABEL_22;
  }

  if (!xpc_string_get_string_ptr(v4))
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  String.init(cString:)();
  if (qword_100098BD8 != -1)
  {
    swift_once();
  }

  v5 = sub_100049BBC();
  if (sub_100025128(v5, v6, v7))
  {
    objc_allocWithZone(type metadata accessor for ServiceProvider());
    v8 = a2;
    v9 = sub_100049BBC();
    v12 = sub_100050070(v9, v10, v11);
LABEL_14:
    v16 = v12;
    if (qword_100098B98 != -1)
    {
      sub_100011C88(&qword_100098B98);
    }

    sub_10002FC68(v16);

    swift_unknownObjectRelease();
    return 1;
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100011CE4();
  sub_1000497EC();
  v23 = sub_10001E468(v17, v18, v19, v20, v21, v22);
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100049AD4(v24, qword_1000A1AE8);
  __chkstk_darwin(v25);
  sub_100011DA8();
  *(v26 - 16) = v23;
  sub_100016F18(sub_10003459C, 0, sub_10001132C);

  swift_unknownObjectRelease();
  return 0;
}

id sub_100034630(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t SidecarTransport.description.getter(uint64_t a1)
{
  v1 = 1229343063;
  v2 = 4346709;
  if (a1 != 2)
  {
    v2 = 0;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 1279547201;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100034728(uint64_t a1)
{
  result = _s7SessionC8IdentityVMa(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000348A8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000348C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100034918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_10003498C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    return *a1 == 0;
  }

  v7 = _s7SessionC8IdentityVMa(0);
  v8 = a1 + *(a3 + 20);

  return sub_1000113A4(v8, a2, v7);
}

void *sub_100034A1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 1)
  {
    *result = 0;
  }

  else
  {
    v7 = _s7SessionC8IdentityVMa(0);
    v8 = v4 + *(a4 + 20);

    return sub_10001137C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100034AB4(uint64_t a1)
{
  result = _s7SessionC8IdentityVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100034B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100049CF4();
  v5 = type metadata accessor for SidecarIdentity(v4);

  return sub_1000113A4(v2, a2, v5);
}

uint64_t sub_100034B9C()
{
  v0 = sub_100049CF4();
  type metadata accessor for SidecarIdentity(v0);
  v1 = sub_10004A0F8();

  return sub_10001137C(v1, v2, v3, v4);
}

uint64_t sub_100034BF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100034C30(uint64_t a1)
{
  type metadata accessor for SidecarIdentity(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SidecarTransport(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100034CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100049CDC();
  type metadata accessor for SidecarIdentity(v6);
  sub_10004A0CC();
  if (*(v8 + 84) == a2)
  {

    return sub_1000113A4(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_100034D7C(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v8 = sub_100049CF4();
  type metadata accessor for SidecarIdentity(v8);
  sub_10004A0CC();
  if (*(v9 + 84) == a3)
  {
    v10 = sub_10004A0F8();

    sub_10001137C(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 24)) = a2 + 1;
  }
}

uint64_t sub_100034E10(uint64_t a1)
{
  result = type metadata accessor for SidecarIdentity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s7SessionC8IdentityV6DomainOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7SessionC8IdentityV6DomainOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100034FE8);
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

unint64_t sub_100035030()
{
  result = qword_10009A690;
  if (!qword_10009A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A690);
  }

  return result;
}

unint64_t sub_100035114(uint64_t a1)
{
  result = sub_100049E1C(a1);
  if (!result)
  {
    v3(255);
    sub_100049F00();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000351A0()
{
  v1 = _s7SessionC8IdentityVMa(0);
  __chkstk_darwin(v1);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000FC6C(&qword_10009A718, &qword_100076940);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v7 = type metadata accessor for SidecarIdentity(0);
  __chkstk_darwin(v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  RapportStreamSession.messenger.getter(v52);
  v10 = v53;
  if (!v53)
  {
    v20 = &qword_10009A888;
    v21 = v52;
LABEL_8:
    sub_100048978(v21, v20);
    goto LABEL_9;
  }

  v49 = v1;
  v50 = v0;
  v51 = v9;
  v11 = v54;
  v12 = sub_10000FCB4(v52, v53);
  v13 = *(v10 - 8);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15);
  sub_100048978(v52, &qword_10009A888);
  (*(v11 + 24))(v10, v11);
  (*(v13 + 8))(v15, v10);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 destinationDevice];
    if (v18)
    {
      v19 = v18;
      sub_100051F04(v19, v6);
      if (sub_1000113A4(v6, 1, v7) != 1)
      {
        v26 = v51;
        sub_1000469E4();
        v27 = RapportStreamSession.streamID.getter();
        if (v28)
        {
          v48 = v19;
          v52[0] = 58;
          v52[1] = 0xE100000000000000;
          __chkstk_darwin(v27);
          v45 = v52;
          v29 = v55;
          v32 = sub_100038434(1, 0, sub_100047B18, (&v47 - 4), v30, v31, &v47);
          if (*(v32 + 2))
          {
            v55 = v29;
            v33 = *(v32 + 4);
            v34 = *(v32 + 5);
            v36 = *(v32 + 6);
            v35 = *(v32 + 7);

            if ((v34 ^ v33) >> 14)
            {
              v47 = v33;
              v37 = sub_100047B38(v33, v34, v36, v35, 16);
              v19 = v48;
              if ((v38 & 0x100) != 0)
              {
                v40 = sub_100045A44(v47, v34, v36, v35, 16);
                v39 = v41;
              }

              else
              {
                v39 = v38;
                v40 = v37;
              }

              v26 = v51;
              if ((v39 & 1) == 0)
              {
                sub_10003E75C();
                v42 = v49;
                *&v3[*(v49 + 20)] = v40;
                v3[*(v42 + 24)] = 0;
                v24 = sub_10002C8F4(v3, v17);
                sub_10003E708(v3);
                if (v24)
                {
                  sub_10003E708(v26);

                  swift_unknownObjectRelease();
                  return v24;
                }
              }
            }

            else
            {

              v19 = v48;
              v26 = v51;
            }
          }

          else
          {

            v19 = v48;
          }
        }

        v24 = sub_1000033E0(0, &qword_100099030, NSError_ptr);
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = 1952;
        LOBYTE(v45) = 2;
        sub_10001E468(v43, v44, -1020, 0, 0, 0);
        swift_willThrow();

        swift_unknownObjectRelease();
        sub_10003E708(v26);
        return v24;
      }

      swift_unknownObjectRelease();
      v20 = &qword_10009A718;
      v21 = v6;
      goto LABEL_8;
    }
  }

  swift_unknownObjectRelease();
LABEL_9:
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v22 = sub_10001E674(4294960582, 0xD000000000000024, 0x800000010007B020, "SidecarRelay/Relay.swift", 24, 2, 1938);
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_100003420(v23, qword_1000A1AE8);
  __chkstk_darwin(v24);
  v45 = v22;
  sub_100016F18(sub_10003581C, 0, sub_100011C20);
  swift_willThrow();
  return v24;
}

void sub_100035838(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t oslog, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10004A288();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100003420(v22, qword_1000A1AE8);
  sub_100049AC8();

  osloga = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(osloga, v23))
  {
    sub_100049C18();
    v24 = swift_slowAlloc();
    sub_100049A30();
    v25 = swift_slowAlloc();
    a10 = v25;
    *v24 = 136446210;
    v26 = RapportStreamServer.description.getter();
    sub_100014C58(v26, v27, &a10);
    sub_100049AC8();

    *(v24 + 4) = v21;
    _os_log_impl(&_mh_execute_header, osloga, v23, "%{public}s Invalidated", v24, 0xCu);
    sub_100003458(v25);
    sub_100049960();

    sub_100011CF4();
  }

  sub_10004A29C();
}

void sub_10003596C()
{
  sub_100011DD0();
  v2 = v1;
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003420(v3, qword_1000A1AE8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    sub_100049C18();
    v6 = swift_slowAlloc();
    sub_100049A30();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = RapportStreamSession.description.getter();
    sub_100014C58(v8, v9, &v12);
    sub_10004A228();
    *(v6 + 4) = v0;
    sub_10004A1C8(&_mh_execute_header, v10, v11, "Prepare %{public}s");
    sub_100003458(v7);
    sub_100011CF4();

    sub_100049950();
  }

  sub_1000351A0();
  sub_10002A0E8(v2);

  sub_100011DB8();
}

uint64_t sub_100035B6C()
{
  sub_100011DD0();
  v2 = v1;
  v4 = v3;
  if (qword_100098BB0 != -1)
  {
    sub_100049734();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_1000A1AE8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    sub_100049C18();
    v8 = v2;
    v9 = swift_slowAlloc();
    sub_100049A30();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = RapportStreamSession.description.getter();
    sub_100014C58(v11, v12, &v15);
    sub_100049CC4();

    *(v9 + 4) = v0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Accept %{public}s", v9, 0xCu);
    sub_100003458(v10);
    sub_100011CF4();

    v2 = v8;
    sub_100011CF4();
  }

  sub_1000351A0();
  sub_10002A1B4(v4);
  v2(0);
  sub_100011DB8();
}

uint64_t sub_100035E08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

uint64_t sub_100035E6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1919247728 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_10003600C(char a1)
{
  result = 0x6C656E6E616863;
  switch(a1)
  {
    case 1:
      result = 0x746E65696C63;
      break;
    case 2:
      result = 1919247728;
      break;
    case 3:
      result = 0x65636976726573;
      break;
    case 4:
      result = 0x6574617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000360A8(void *a1)
{
  v4 = sub_10000FC6C(&qword_10009A8A0, &qword_100076A58);
  sub_100011C54();
  v6 = v5;
  sub_100049C0C();
  __chkstk_darwin(v7);
  sub_100049E10();
  sub_10000FCB4(a1, a1[3]);
  sub_1000480A4();
  sub_10004A134();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100049DD4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    sub_100049DD4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100049DD4();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100049DD4();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100049DD4();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_100036268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100011FF4();
  v26 = v25;
  v28 = v27;
  v29 = sub_10000FC6C(&qword_10009AB88, &qword_100077020);
  sub_100011C54();
  v31 = v30;
  sub_100049C0C();
  __chkstk_darwin(v32);
  v34 = &v50 - v33;
  sub_10000FCB4(v26, v26[3]);
  sub_1000480A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100003458(v26);
  }

  else
  {
    LOBYTE(v59) = 0;
    sub_1000499B0();
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v59) = 1;
    sub_1000499B0();
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v68 = BYTE4(v36) & 1;
    LOBYTE(v59) = 2;
    v53 = v36;
    sub_1000499B0();
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v38;
    v52 = v37;
    LOBYTE(v59) = 3;
    sub_1000499B0();
    v51 = KeyedDecodingContainer.decode(_:forKey:)();
    v54 = v40;
    v41 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = *(v31 + 8);
    v43 = v41;
    v50 = v44;
    v42(v34, v29);
    *&v55 = v35;
    v45 = v54;
    DWORD2(v55) = v53;
    BYTE12(v55) = v68;
    v46 = v51;
    *&v56 = v52;
    *(&v56 + 1) = v39;
    *&v57 = v51;
    *(&v57 + 1) = v54;
    v47 = v50;
    *&v58 = v43;
    *(&v58 + 1) = v50;
    sub_1000486DC(&v55, &v59);
    sub_100003458(v26);
    v59 = v35;
    v60 = v53;
    v61 = v68;
    v62 = v52;
    v63 = v39;
    v64 = v46;
    v65 = v45;
    v66 = v43;
    v67 = v47;
    sub_1000486AC(&v59);
    v48 = v56;
    *v28 = v55;
    v28[1] = v48;
    v49 = v58;
    v28[2] = v57;
    v28[3] = v49;
  }

  sub_100011FBC();
}

uint64_t sub_10003652C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100035E6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100036554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100036004();
  *a1 = result;
  return result;
}

uint64_t sub_10003657C(uint64_t a1)
{
  v2 = sub_1000480A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000365B8(uint64_t a1)
{
  v2 = sub_1000480A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000365F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_100036268(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, SBYTE4(v14), SBYTE5(v14), SBYTE6(v14), SHIBYTE(v14), v15, v17, v18, v20, v21, v23, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v16;
    result = *&v19;
    a9[2] = v19;
    a9[3] = v22;
  }

  return result;
}

void sub_100036650()
{
  sub_100011DD0();
  v4 = v0;
  v6 = v5;
  v7 = _s7SessionC8IdentityVMa(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  sub_100011CD4();
  v9 = sub_10004998C();
  v10 = type metadata accessor for SidecarIdentity(v9);
  v11 = sub_1000499EC(v10);
  __chkstk_darwin(v11);
  sub_100011CD4();
  sub_100049E10();
  v21 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity + *(v8 + 28));
  v12 = *(v0 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_client);
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);
  }

  else
  {
    v13 = 0;
  }

  v14 = v12 == 0;
  sub_100049760();
  sub_10003E75C();
  sub_1000497A4();
  sub_10004A0D8();
  sub_1000469E4();
  v15 = sub_100052008();
  v17 = v16;
  sub_10004971C();
  sub_10003E708(v1);
  v19 = *(v4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service);
  v18 = *(v4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_service + 8);
  v20 = *(v4 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_state);

  sub_100048638(v20);
  sub_100028290(v20);
  sub_10004A080();
  sub_100048648(v20);
  *v6 = v21;
  *(v6 + 8) = v13;
  *(v6 + 12) = v14;
  *(v6 + 16) = v15;
  *(v6 + 24) = v17;
  *(v6 + 32) = v19;
  *(v6 + 40) = v18;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  sub_100011DB8();
}

uint64_t sub_1000367D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E65696C63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000010007B350 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7265766F63736964 && a2 == 0xE900000000000079;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x800000010007AD30 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 6580592 && a2 == 0xE300000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65746E6573657270 && a2 == 0xE900000000000072;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000021 && 0x800000010007B370 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4474726F70706172 && a2 == 0xEE00736563697665;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x800000010007B3A0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x5374726F70706172 && a2 == 0xEF736E6F69737365;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000014 && 0x800000010007AC90 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x736E6F6973736573 && a2 == 0xE800000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x800000010007AD10 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x746361736E617274 && a2 == 0xEB000000006E6F69;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x676F646863746177 && a2 == 0xE800000000000000)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
          }
        }
      }
    }
  }
}

Swift::Int sub_100036CAC(uint64_t a1)
{
  v1 = a1;
  sub_10004A240(a1);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100036CEC(char a1)
{
  result = 0x73746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x7265766F63736964;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 6580592;
      break;
    case 5:
      result = 0x65746E6573657270;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0x4474726F70706172;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x5374726F70706172;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x736E6F6973736573;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x746361736E617274;
      break;
    case 14:
      result = 0x6E6F6973726576;
      break;
    case 15:
      result = 0x676F646863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100036F10(void *a1)
{
  v4 = sub_10000FC6C(&qword_10009A8B0, &qword_100076A60);
  sub_100011C54();
  v6 = v5;
  sub_100049C0C();
  __chkstk_darwin(v7);
  sub_100049E10();
  sub_10000FCB4(a1, a1[3]);
  sub_1000480F8();
  sub_10004A134();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10000FC6C(&qword_10009A8C0, &qword_100076A68);
  sub_100049290(&unk_10009A8C8);
  sub_100049874();
  if (!v1)
  {
    sub_100049900();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000499F8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10000FC6C(&qword_10009A8D8, &unk_100076A70);
    sub_10004814C();
    sub_100049874();
    sub_100049900();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100049900();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100049900();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10000FC6C(&qword_100099160, &qword_100075748);
    sub_1000493D8(&qword_10009A8F0);
    sub_100049874();
    sub_1000499F8();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10000FC6C(&qword_100099138, &qword_100076A80);
    sub_1000481D0();
    sub_100049914();
    sub_10004A134();
    sub_1000499F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100049914();
    sub_10004A134();
    sub_1000499F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10000FC6C(&qword_10009A8F8, &qword_100076A88);
    sub_1000494BC(&unk_10009A900);
    sub_100049874();
    sub_10000FC6C(&qword_10009A908, &unk_100076A90);
    sub_10004824C();
    sub_100049874();
    sub_100049900();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000499F8();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000482D0();
    sub_100049914();
    sub_1000499F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_10003735C()
{
  sub_100011FF4();
  v2 = v1;
  v4 = v3;
  v5 = sub_10000FC6C(&qword_10009AB90, &unk_100077028);
  sub_100011C54();
  sub_100049C0C();
  __chkstk_darwin(v6);
  v7 = v2[4];
  sub_10000FCB4(v2, v2[3]);
  sub_1000480F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_10004999C();
    sub_100003458(v2);

    if (v7)
    {

      if ((v4 & 1) == 0)
      {
LABEL_10:
        if (v5)
        {
LABEL_11:

          if ((v36 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_7;
        }

LABEL_6:
        if (!v36)
        {
          goto LABEL_12;
        }

LABEL_7:

        goto LABEL_12;
      }
    }

    else if (!v4)
    {
      goto LABEL_10;
    }

    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_10000FC6C(&qword_10009A8C0, &qword_100076A68);
  sub_100049290(&unk_10009AB98);
  sub_100049844();
  v34 = v39;
  sub_100049800(1);
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100049800(2);
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = v10;
  v37 = v9;
  sub_10000FC6C(&qword_10009A8D8, &unk_100076A70);
  sub_100049354();
  sub_100049844();
  v33 = v39;
  sub_100049800(4);
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100049800(5);
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v71 = BYTE4(v11) & 1;
  LOBYTE(v39) = 6;
  v24 = v11;
  sub_100049A04();
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10000FC6C(&qword_100099160, &qword_100075748);
  sub_1000493D8(&unk_100099240);
  sub_100049844();
  v32 = v39;
  sub_100049800(8);
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v12;
  sub_10000FC6C(&qword_100099138, &qword_100076A80);
  sub_100049440();
  sub_100049DF8();
  sub_100049A04();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v39;
  sub_100049DF8();
  sub_100049A04();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v39;
  sub_10000FC6C(&qword_10009A8F8, &qword_100076A88);
  sub_1000494BC(&unk_10009ABB0);
  sub_100049844();
  v28 = v39;
  sub_10000FC6C(&qword_10009A908, &unk_100076A90);
  LOBYTE(v38[0]) = 12;
  sub_100049580();
  sub_100049844();
  v27 = v39;
  sub_100049800(13);
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100049800(14);
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v13;
  v64 = 15;
  sub_100049604();
  sub_100049A04();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v22 & 1;
  v15 = sub_1000498D0();
  v16(v15);
  v23 = v66;
  v38[0] = v34;
  LODWORD(v38[1]) = v8;
  v38[2] = v37;
  v38[3] = v35;
  v38[4] = v33;
  v38[5] = __PAIR64__(v24, v25);
  v17 = v71;
  v18 = v65;
  LOBYTE(v38[6]) = v71;
  BYTE1(v38[6]) = v14;
  v38[7] = v32;
  v38[8] = v21;
  v38[9] = v31;
  v38[10] = v30;
  v38[11] = v29;
  v38[12] = v28;
  v38[13] = v27;
  LOBYTE(v38[14]) = v20 & 1;
  HIDWORD(v38[14]) = *&v68[3];
  *(&v38[14] + 1) = *v68;
  v38[15] = v19;
  v38[16] = v26;
  LOBYTE(v38[17]) = v65;
  *(&v38[17] + 1) = *v67;
  HIDWORD(v38[17]) = *&v67[3];
  v38[18] = v66;
  sub_100049658(v38, &v39);
  sub_100003458(v2);
  v39 = v34;
  v40 = v8;
  v41 = v37;
  v42 = v35;
  v43 = v33;
  v44 = v25;
  v45 = v24;
  v46 = v17;
  v47 = v14;
  v48 = v69;
  v49 = v70;
  v50 = v32;
  v51 = v21;
  v52 = v31;
  v53 = v30;
  v54 = v29;
  v55 = v28;
  v56 = v27;
  v57 = v20 & 1;
  *&v58[3] = *&v68[3];
  *v58 = *v68;
  v59 = v19;
  v60 = v26;
  v61 = v18;
  *v62 = *v67;
  *&v62[3] = *&v67[3];
  v63 = v23;
  sub_100010E24(&v39);
  memcpy(v4, v38, 0x98uLL);
LABEL_12:
  sub_100011FBC();
}

uint64_t sub_100037B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000367D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100037BC4@<X0>(_BYTE *a1@<X8>)
{
  result = static RapportDeviceChangeFlags.name.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100037BEC(uint64_t a1)
{
  v2 = sub_1000480F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037C28(uint64_t a1)
{
  v2 = sub_1000480F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100037C64(void *a1@<X8>)
{
  sub_10003735C();
  if (!v1)
  {
    memcpy(a1, __src, 0x98uLL);
  }
}

unint64_t sub_100037CCC()
{
  result = qword_10009A6D8;
  if (!qword_10009A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A6D8);
  }

  return result;
}

unint64_t sub_100037DB0(uint64_t a1)
{
  result = sub_100035114(&unk_10009A710);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100037E08(unint64_t a1)
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

uint64_t sub_100037E2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000FC6C(&qword_10009A9E0, &qword_100076B18);
  v3 = __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  sub_100048658();

  v8 = sub_100052008();
  v10 = v9;
  sub_10003E708(v7);
  sub_100048658();

  v11 = sub_100052008();
  v13 = v12;
  sub_10003E708(v5);
  if (v8 == v11 && v10 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

uint64_t sub_100037FC4()
{
  result = sub_100037FE8();
  qword_10009A008 = result;
  unk_10009A010 = v1;
  return result;
}

uint64_t sub_100037FE8()
{
  v0 = CFBundleGetMainBundle();
  v1 = CFBundleGetValueForInfoDictionaryKey(v0, kCFBundleVersionKey);

  if (v1 && (swift_dynamicCast() & 1) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_10003807C(uint64_t *a1)
{
  v2 = *(sub_10000FC6C(&qword_10009A850, &qword_100076A20) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100043858(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100040A5C(v6, &qword_10009A850, &qword_100076A20, sub_100041254, sub_100040BA8);
  *a1 = v3;
  return result;
}

Swift::Int sub_10003816C(uint64_t *a1)
{
  v2 = *(sub_10000FC6C(&qword_10009A9E0, &qword_100076B18) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100046BB4();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_100040A5C(v7, &qword_10009A9E0, &qword_100076B18, sub_100041B80, sub_100040DF0);
  *a1 = v3;
  return result;
}

id sub_100038258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100038314;
  v10[3] = &unk_10008F3A8;
  v7 = _Block_copy(v10);
  v8 = [v4 initWithSubsystem:a1 category:a2 provider:v7];
  _Block_release(v7);

  return v8;
}

Class sub_100038314(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100011358(v3, v5);
  }

  return isa;
}

uint64_t sub_1000383F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

char *sub_100038434@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v29;
    v12 = v30;
    v13 = v31;

    v14 = sub_1000389B0(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 2);
    a7 = *(v14 + 3);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 2) = v10;
      v35 = &v14[32 * v9];
      *(v35 + 4) = v7;
      *(v35 + 5) = v11;
      *(v35 + 6) = v12;
      *(v35 + 7) = v13;
      return v14;
    }

LABEL_41:
    v14 = sub_1000389B0((a7 > 1), v10, 1, v14);
    goto LABEL_38;
  }

  v7 = a4;
  v14 = (4 * v16);
  v43 = _swiftEmptyArrayStorage;
  v17 = 15;
  while (1)
  {
    v41 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if ((v17 >> 14) == v14)
      {
        v17 = v41;
        goto LABEL_30;
      }

      v18 = String.subscript.getter();
      v12 = v19;
      v44[0] = v18;
      v44[1] = v19;
      v20 = v45(v44);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = String.index(after:)();
    }

    v23 = (v41 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v41 >> 14)
    {
      break;
    }

    v42 = String.subscript.getter();
    v37 = v25;
    v38 = v24;
    v36 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1000389B0(0, *(v43 + 2) + 1, 1, v43);
    }

    v13 = *(v43 + 2);
    v27 = *(v43 + 3);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      v43 = sub_1000389B0((v27 > 1), v13 + 1, 1, v43);
    }

    *(v43 + 2) = v12;
    v28 = &v43[32 * v13];
    *(v28 + 4) = v42;
    *(v28 + 5) = v38;
    *(v28 + 6) = v37;
    *(v28 + 7) = v36;
LABEL_20:
    v17 = String.index(after:)();
    if ((v23 & 1) == 0 && *(v43 + 2) == a1)
    {
LABEL_30:
      if (v17 >> 14) == v14 && (a2)
      {

        return v43;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = String.subscript.getter();
        v11 = v32;
        v12 = v33;
        v13 = v34;

        v14 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 2);
          a7 = *(v14 + 3);
          goto LABEL_37;
        }
      }

      v14 = sub_1000389B0(0, *(v14 + 2) + 1, 1, v14);
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000387E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_10003885C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1000388A8(uint64_t result, uint64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    sub_100049D9C();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100049D8C();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10000FC6C(&qword_10009AAE8, &qword_100076C18);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    sub_100049F18(v12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v11 != a4 || &a4[2 * v9 + 4] <= v11 + 4)
    {
      v14 = sub_100049AB0();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AAF0, &qword_100076C20);
    sub_100049AB0();
    swift_arrayInitWithCopy();
  }
}

char *sub_1000389B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FC6C(&qword_10009A898, &qword_100076A50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100038AB8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_100038F28(v9, a2, &unk_10009A860, &unk_100076A28, &qword_10009A850, &qword_100076A20);
  v11 = *(sub_10000FC6C(&qword_10009A850, &qword_100076A20) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_10003901C(a4 + v12, v9, v10 + v12, &qword_10009A850, &qword_100076A20);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100038BE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FC6C(&qword_10009A980, &qword_100076AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_100038CE8(uint64_t result, uint64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    sub_100049D9C();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100049D8C();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10000FC6C(&qword_10009AA18, &qword_100076B50);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    sub_100049F18(v12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v11 != a4 || &a4[2 * v9 + 4] <= v11 + 4)
    {
      v14 = sub_100049AB0();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AA20, &qword_100076B58);
    sub_100049AB0();
    swift_arrayInitWithCopy();
  }
}

void *sub_100038DF0(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000FC6C(&qword_10009A868, &qword_100076A30);
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
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009A870, &qword_100076A38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100038F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = sub_100049EF4(a1, a2, a3);
  sub_10000FC6C(v10, v11);
  v12 = sub_10000FC6C(a5, a6);
  sub_10001B8E8(v12);
  v14 = *(v13 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (v14)
  {
    if ((result - v16) != 0x8000000000000000 || v14 != -1)
    {
      v17[2] = a1;
      v17[3] = 2 * ((result - v16) / v14);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10003901C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_100049C50();
  if (v11 < v10 || (sub_10000FC6C(a4, a5), sub_100011D00(), v6 + *(v12 + 72) * v5 <= a3))
  {
    sub_10000FC6C(a4, a5);
    sub_100049BD8();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v6)
  {
    sub_100049BD8();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1000390F4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for UUID(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for UUID();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1000391C8(unint64_t result, char a2, uint64_t a3)
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

unint64_t sub_1000391EC()
{
  Hasher.init(_seed:)();
  sub_100049CE8();
  String.hash(into:)();
  Hasher._finalize()();
  v0 = sub_100049BBC();

  return sub_1000396E8(v0, v1, v2);
}

unint64_t sub_10003925C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003979C(a1, v4);
}

unint64_t sub_1000392A0()
{
  sub_100049F48();
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v0);
  v1 = Hasher._finalize()();

  return sub_100039860(v0, v1);
}

unint64_t sub_100039308(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000398C0(a1, v2);
}

unint64_t sub_1000393BC(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v2 = _s7SessionC8IdentityVMa(0);
  Hasher._combine(_:)(*(a1 + *(v2 + 20)));
  Hasher._combine(_:)(*(a1 + *(v2 + 24)));
  v3 = Hasher._finalize()();

  return sub_100039A1C(a1, v3);
}

unint64_t sub_10003949C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for Relay.RapportSessionKey(0);
  Hasher._combine(_:)(*(a1 + *(v2 + 20)));
  v3 = Hasher._finalize()();

  return sub_100039BD4(a1, v3);
}

unint64_t sub_100039568(Swift::UInt a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100039D78(a1, a2, a3, v6);
}

unint64_t sub_1000395FC(void *a1)
{
  Hasher.init(_seed:)();
  sub_10002C68C(v4);
  v2 = Hasher._finalize()();

  return sub_100039E4C(a1, v2);
}

unint64_t sub_100039668(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10004978C();
  sub_100035114(v2);
  sub_100049AA4();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v3 = sub_100049F00();

  return sub_10003A038(v3, v4);
}

unint64_t sub_1000396E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10003979C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100047A60(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10001FDF0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100039860(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1000398C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidecarIdentity(0) - 8;
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ~(-1 << *(v2 + 32));
  for (i = a2 & v7; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v7)
  {
    sub_10003E75C();
    v9 = static UUID.== infix(_:_:)();
    sub_10003E708(v6);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100039A1C(uint64_t a1, uint64_t a2)
{
  v5 = _s7SessionC8IdentityVMa(0);
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      sub_10003E75C();
      if ((static UUID.== infix(_:_:)() & 1) != 0 && *&v7[*(v5 + 20)] == *(a1 + *(v5 + 20)))
      {
        v11 = v7[*(v5 + 24)];
        sub_10003E708(v7);
        if (v11 == *(a1 + *(v5 + 24)))
        {
          return v9;
        }
      }

      else
      {
        sub_10003E708(v7);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100039BD4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Relay.RapportSessionKey(0);
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      sub_10003E75C();
      if (static UUID.== infix(_:_:)())
      {
        v11 = *&v7[*(v5 + 20)];
        sub_10003E708(v7);
        if (v11 == *(a1 + *(v5 + 20)))
        {
          return v9;
        }
      }

      else
      {
        sub_10003E708(v7);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100039D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == a1)
      {
        v14 = v13[1] == a2 && v13[2] == a3;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_100039E4C(void *a1, uint64_t a2)
{
  v19 = type metadata accessor for Relay.ConnectedSessionKey(0);
  __chkstk_darwin(v19);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = -1 << *(v2 + 32);
  v8 = a2 & ~v7;
  if ((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v18 = a1;
    v10 = *a1;
    do
    {
      sub_10003E75C();
      if (*v6 == v10 && (v11 = *(v19 + 20), v12 = v6 + v11, v13 = v18 + v11, (static UUID.== infix(_:_:)() & 1) != 0) && (v14 = _s7SessionC8IdentityVMa(0), *&v12[*(v14 + 20)] == *&v13[*(v14 + 20)]))
      {
        v15 = v14;
        v16 = v12[*(v14 + 24)];
        sub_10003E708(v6);
        if (v16 == v13[*(v15 + 24)])
        {
          return v8;
        }
      }

      else
      {
        sub_10003E708(v6);
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_10003A038(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_100035114(&unk_10009A940);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10003A1F4(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    type metadata accessor for Client();
    v9 = NSObject._rawHashValue(seed:)(*(v4 + 40));
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v2;
        v19 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10003A4DC(&unk_10009A950, &unk_100076AB8, v15, v16);
          v17 = v19;
        }

        v8 = *(*(v17 + 48) + 8 * v11);
        sub_10003B7D8(v11);
        *v2 = v19;
        return v8;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = __CocoaSet.contains(_:)();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_10003A374(v5, v6);

  return v8;
}

uint64_t sub_10003A374(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_10003B96C(v5, v4, &unk_10009A950, &unk_100076AB8, type metadata accessor for Client);
  v15 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    if (((*(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for Client();
    v11 = *(*(v6 + 48) + 8 * v10);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {

      v13 = *(*(v6 + 48) + 8 * v10);
      sub_10003B7D8(v10);
      if (static NSObject.== infix(_:_:)())
      {
        *v3 = v15;
        return v13;
      }

      __break(1u);
      break;
    }

    v8 = v10 + 1;
  }

  __break(1u);
  return result;
}

void sub_10003A4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10004A2B0();
  v5 = v4;
  sub_10000FC6C(v6, v7);
  v8 = *v4;
  v9 = static _SetStorage.copy(original:)();
  if (v8[2])
  {
    sub_100049EA0();
    v12 = (v11 + 63) >> 6;
    if (v9 != v8 || v10 >= &v8[v12 + 7])
    {
      memmove(v10, v8 + 7, 8 * v12);
    }

    v14 = 0;
    *(v9 + 16) = v8[2];
    sub_100049EA0();
    v16 = v8[7];
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        sub_100049B6C();
LABEL_17:
        v24 = v20 | (v14 << 6);
        v25 = *(v8[6] + 8 * v24);
        *(*(v9 + 48) + 8 * v24) = v25;
        v26 = v25;
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        goto LABEL_19;
      }

      ++v21;
      if (v8[v14 + 7])
      {
        sub_100049D7C();
        v18 = v23 & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v9;
    sub_10004A164();
  }
}

void *sub_10003A5F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FC6C(&qword_10009A968, &qword_100076AC0);
  v8 = *v2;
  v9 = static _SetStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v3;
    result = (v9 + 56);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 56 + 8 * v12)
    {
      result = memmove(result, (v8 + 56), 8 * v12);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v5 + 32;
    for (i = v5 + 16; v17; result = (*(v5 + 32))(*(v10 + 48) + v22, v7, v4))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v22 = *(v5 + 72) * (v19 | (v14 << 6));
      (*(v5 + 16))(v7, *(v8 + 48) + v22, v4);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v3 = v24;
        goto LABEL_21;
      }

      v21 = *(v8 + 56 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v10;
  }

  return result;
}

void sub_10003A82C()
{
  v1 = v0;
  sub_10000FC6C(&unk_10009A830, &unk_100076A08);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_10003A984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_100049C74(a1, a2);
  sub_10000FC6C(v5, v6);
  sub_100049BD8();
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v4 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v4 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v19 = *(*(v4 + 48) + 8 * (v15 | (v9 << 6)));
        v20 = sub_10001B944();
        v21 = NSObject._rawHashValue(seed:)(v20) & ~(-1 << *(v8 + 32));
        if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        sub_100049B38();
LABEL_21:
        sub_100049AFC();
        *(v14 + v26) |= v27;
        sub_100049EC4(v28);
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      sub_100049B24();
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        if (*(v14 + 8 * v22) != -1)
        {
          sub_100049B10();
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

          v3 = v2;
          goto LABEL_25;
        }

        ++v16;
        if (*(v4 + 56 + 8 * v9))
        {
          sub_100049D7C();
          v12 = v18 & v17;
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
    *v3 = v8;
  }
}

uint64_t sub_10003AB34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = type metadata accessor for UUID();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10000FC6C(&qword_10009A968, &qword_100076AC0);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v2;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v4 + 16;
    v33 = v4;
    v16 = v8 + 56;
    v30 = (v4 + 32);
    v31 = result;
    if (v14)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_12:
        v20 = *(v33 + 72);
        (*(v33 + 16))(v6, *(result + 48) + v20 * (v17 | (v10 << 6)), v34);
        sub_100035114(&unk_100099180);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v21 = -1 << *(v8 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v16 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v16 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v16 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v8 + 48) + v24 * v20, v6, v34);
        ++*(v8 + 16);
        result = v31;
        if (!v14)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v16 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v18 = v10;
      while (1)
      {
        v10 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v10 >= v15)
        {

          v3 = v29;
          goto LABEL_25;
        }

        v19 = *(v11 + 8 * v10);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v14 = (v19 - 1) & v19;
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
    *v3 = v8;
  }

  return result;
}

Swift::Int sub_10003AE4C()
{
  v1 = v0;
  v2 = *v0;
  sub_10000FC6C(&unk_10009A830, &unk_100076A08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
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
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
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
    *v1 = v4;
  }

  return result;
}

void sub_10003B080()
{
  sub_100011DD0();
  v1 = *v0;
  v4 = sub_100049C74(v2, v3);
  sub_10000FC6C(v4, v5);
  sub_100049BD8();
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v7;
    sub_100011DB8();
    return;
  }

  v8 = 0;
  v9 = (v1 + 56);
  v10 = 1 << *(v1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v1 + 56);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 56;
  if (!v12)
  {
LABEL_7:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v15;
      if (v9[v8])
      {
        sub_100049D7C();
        v12 = v17 & v16;
        goto LABEL_12;
      }
    }

    sub_100049EA0();
    if (v26 >= 64)
    {
      sub_10003BBB8(0, (v26 + 63) >> 6, v1 + 56);
    }

    else
    {
      sub_100049C5C();
      *v9 = v27;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    sub_100049B6C();
LABEL_12:
    v18 = NSObject._rawHashValue(seed:)(*(v7 + 40)) & ~(-1 << *(v7 + 32));
    if (((-1 << v18) & ~*(v14 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    sub_100049B38();
LABEL_21:
    sub_100049AFC();
    *(v14 + v23) |= v24;
    sub_100049EC4(v25);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  sub_100049B24();
  while (++v19 != v21 || (v20 & 1) == 0)
  {
    v22 = v19 == v21;
    if (v19 == v21)
    {
      v19 = 0;
    }

    v20 |= v22;
    if (*(v14 + 8 * v19) != -1)
    {
      sub_100049B10();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_10003B224(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  sub_10000FC6C(&qword_10009A968, &qword_100076AC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v3 = v8;
    return result;
  }

  v31 = v2;
  v32 = v6;
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
  v35 = v4 + 32;
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

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      sub_10003BBB8(0, (v29 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v3 = v31;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v6 + 48) + *(v4 + 72) * (v16 | (v9 << 6));
    v20 = *(v4 + 32);
    v33 = *(v4 + 72);
    v34 = v20;
    v20(v36, v19, v37);
    sub_100035114(&unk_100099180);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v8 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = v34(*(v8 + 48) + v24 * v33, v36, v37);
    ++*(v8 + 16);
    v6 = v32;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v15 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_10003B57C()
{
  v1 = v0;
  v2 = *v0;
  sub_10000FC6C(&unk_10009A830, &unk_100076A08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_10003BBB8(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
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

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_10003B7D8(unint64_t result)
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
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_15;
        }

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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_10003B96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    v6 = sub_100049EF4(a1, a2, a3);
    sub_10000FC6C(v6, v7);
    v8 = static _SetStorage.convert(_:capacity:)();
    v20 = v8;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v8;
      }

      a5(0);
      swift_dynamicCast();
      if (*(v8 + 24) <= *(v8 + 16))
      {
        sub_100049CE8();
        sub_10003B080();
      }

      v8 = v20;
      result = NSObject._rawHashValue(seed:)(*(v20 + 40));
      v10 = v20 + 56;
      v11 = -1 << *(v20 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6))) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v20 + 48) + 8 * v14) = v19;
      ++*(v20 + 16);
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
      v18 = *(v10 + 8 * v13);
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_10003BB3C()
{
  sub_100049C50();
  NSObject._rawHashValue(seed:)(*(v2 + 40));
  sub_100049C5C();
  result = _HashTable.nextHole(atOrAfter:)();
  *(v0 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(v0 + 48) + 8 * result) = v1;
  ++*(v0 + 16);
  return result;
}

uint64_t sub_10003BBB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100076330;
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

void sub_10003BC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004A288();
  sub_1000392A0();
  if (v13)
  {
    sub_10004A270();
    sub_10004A120();
    sub_10000FC6C(&qword_10009AAD8, &qword_100076C08);
    sub_100049CAC();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v11, v12);

    v14 = sub_10004A08C();
    type metadata accessor for Relay.Session(v14);
    sub_10000FC6C(&qword_10009AAE0, &qword_100076C10);
    sub_100035114(&unk_100099190);
    sub_100049AA4();
    sub_100049CB8();
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_10004A29C();
}

void sub_10003BD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004A1B0();
  sub_100049DE0();
  sub_1000393BC(v14);
  if (v15)
  {
    sub_10004A270();
    sub_100049DAC();
    sub_100049CAC();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
    _s7SessionC8IdentityVMa(0);
    sub_100011D00();
    sub_100049748();
    sub_10003E708(v16);
    v17 = sub_10004A08C();
    v11(v17);
    sub_100035114(&unk_10009A7B0);
    sub_100049F30();
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_10004A198();
}

void sub_10003BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004A1B0();
  sub_100049DE0();
  sub_100039308(v14);
  if (v15)
  {
    sub_10004A270();
    sub_100049DAC();
    sub_100049CAC();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
    type metadata accessor for SidecarIdentity(0);
    sub_100011D00();
    sub_10004971C();
    sub_10003E708(v16);
    v17 = sub_10004A08C();
    v11(v17);
    sub_100035114(&unk_10009A738);
    sub_100049F30();
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_10004A198();
}

uint64_t sub_10003BEE8@<X0>(Swift::UInt a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100039568(a1, a2, a3);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    v10 = *(*v4 + 24);
    sub_10000FC6C(&qword_10009AAC0, &qword_100076BF8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);

    v11 = *(v17 + 56) + 40 * v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v16 = *(v11 + 24);
    sub_100010D20();
    result = _NativeDictionary._delete(at:)();
    v15 = v16;
    *v4 = v17;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
  }

  *a4 = v12;
  *(a4 + 8) = v13;
  *(a4 + 16) = v14;
  *(a4 + 24) = v15;
  return result;
}

uint64_t sub_10003C008(uint64_t a1)
{
  sub_10004A1B0();
  v4 = sub_100039668(v2, v3);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v1;
    v8 = *(*v1 + 24);
    sub_10000FC6C(&qword_10009A938, &qword_100076AA8);
    sub_100049CAC();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
    v9 = *(v19 + 48);
    v10 = type metadata accessor for UUID();
    sub_100011D00();
    (*(v11 + 8))(v9 + *(v11 + 72) * v6, v10);
    _s7SessionC8IdentityVMa(0);
    sub_100011D00();
    sub_1000497D4();
    sub_1000469E4();
    sub_10004978C();
    sub_100035114(v12);
    sub_100049CB8();
    _NativeDictionary._delete(at:)();
    *v1 = v19;
    sub_100049BFC();
  }

  else
  {
    _s7SessionC8IdentityVMa(0);
    sub_100049BE8();
  }

  sub_10004A198();

  return sub_10001137C(v13, v14, v15, v16);
}

void sub_10003C180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004A288();
  v14 = v10;
  v15 = *v10;
  sub_100039668(v16, v17);
  if (v18)
  {
    sub_10004A270();
    sub_10004A120();
    sub_10000FC6C(&qword_10009A9C8, &qword_100076B00);
    sub_100049CAC();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
    sub_100049FC0();
    v19 = type metadata accessor for UUID();
    sub_100011D00();
    (*(v20 + 8))(v15 + *(v20 + 72) * v11, v19);
    sub_10004A08C();
    type metadata accessor for RemoteDisplayInitiationRequest();
    sub_10004978C();
    sub_100035114(v21);
    sub_100049AA4();
    sub_100049CB8();
    _NativeDictionary._delete(at:)();
    *v14 = a10;
  }

  sub_10004A29C();
}

uint64_t sub_10003C278()
{
  v1 = v0;
  v2 = sub_1000391EC();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v0;
  v6 = *(*v0 + 24);
  v7 = sub_100049BB0();
  sub_10000FC6C(v7, v8);
  sub_100049CAC();
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v6);

  v9 = *(*(v13 + 56) + 8 * v4);
  v10 = sub_100049BBC();
  sub_10000FC6C(v10, v11);
  sub_100049AB0();
  _NativeDictionary._delete(at:)();
  *v1 = v13;
  return v9;
}

Swift::Int sub_10003C360(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000FC6C(&qword_10009AA30, &qword_100076B68);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_10003BBB8(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 4 * v18);
    if ((v34 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 4 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

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
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::Int sub_10003C5FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000FC6C(&qword_10009AA50, &qword_100076B88);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v38 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      sub_10003BBB8(0, (v37 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v5 + 56) + (v18 << 6);
    if (v39)
    {
      v42 = *(v22 + 8);
      v23 = *(v22 + 12);
      v40 = *v22;
      v41 = *(v22 + 24);
      v43 = *(v22 + 40);
      v44 = *(v22 + 16);
      v46 = *(v22 + 32);
      v47 = *(v22 + 48);
      v45 = *(v22 + 56);
    }

    else
    {
      v24 = *v22;
      v25 = *(v22 + 16);
      v26 = *(v22 + 48);
      v49 = *(v22 + 32);
      v50 = v26;
      v48[0] = v24;
      v48[1] = v25;
      v46 = v49;
      v47 = v26;
      v43 = *(&v49 + 1);
      v44 = v25;
      v45 = *(&v26 + 1);
      v41 = *(&v25 + 1);
      v42 = DWORD2(v24);
      v23 = BYTE12(v24);
      v40 = v24;

      sub_1000486DC(v48, v51);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v7 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    LOBYTE(v48[0]) = v23;
    *(v14 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v7 + 48) + 16 * v30);
    *v35 = v20;
    v35[1] = v21;
    v36 = *(v7 + 56) + (v30 << 6);
    *v36 = v40;
    *(v36 + 8) = v42;
    *(v36 + 12) = v23;
    *(v36 + 16) = v44;
    *(v36 + 24) = v41;
    *(v36 + 32) = v46;
    *(v36 + 40) = v43;
    *(v36 + 48) = v47;
    *(v36 + 56) = v45;
    ++*(v7 + 16);
    v5 = v38;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v14 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

Swift::Int sub_10003C964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000FC6C(&qword_10009AA70, &qword_100076BA8);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_10003BBB8(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v37 = *v22;
    if ((v36 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 16 * v27);
    *v33 = v37;
    v33[1] = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::Int sub_10003CC18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000FC6C(&qword_10009AAA0, &qword_100076BD8);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_10003BBB8(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

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
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::Int sub_10003CEB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000FC6C(&qword_10009A9F8, &qword_100076B30);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_10003BBB8(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

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
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_10003D158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10004A2B0();
  sub_100049E34();
  v6 = v5;
  sub_100049C74(v5, v7);
  sub_1000391EC();
  sub_100049830();
  if (v10)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  sub_10000FC6C(&unk_10009A7C0, &unk_1000769B0);
  sub_100049C68();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v14))
  {
    sub_100049BBC();
    sub_1000391EC();
    sub_100049D0C();
    if (!v16)
    {
      goto LABEL_14;
    }

    v11 = v15;
  }

  if (v12)
  {
    sub_100003458((*(*v4 + 56) + 32 * v11));
    sub_100049A98();
    sub_10004A164();

    sub_100011558(v17, v18);
  }

  else
  {
    sub_100049CE8();
    sub_10003E620(v20, v21, v22, v6, v23);
    sub_10004A164();
  }
}

_OWORD *sub_10003D268(_OWORD *a1, uint64_t a2, char a3)
{
  sub_10003925C(a2);
  sub_100049830();
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  sub_10000FC6C(&qword_10009A998, &unk_100076AE0);
  sub_100049C68();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v11, v12))
  {
    v13 = sub_10004A05C();
    sub_10003925C(v13);
    sub_100049D0C();
    if (!v15)
    {
      goto LABEL_12;
    }

    v9 = v14;
  }

  v16 = *v3;
  if (v10)
  {
    sub_100003458((v16[7] + 32 * v9));
    v17 = sub_100049A98();

    return sub_100011558(v17, v18);
  }

  else
  {
    sub_100047A60(a2, v20);
    return sub_10003E68C(v9, v20, a1, v16);
  }
}

uint64_t sub_10003D388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004A2B0();
  v6 = v4;
  v8 = v7;
  sub_10004A024();
  v9 = *v4;
  sub_1000392A0();
  sub_100049830();
  if (v12)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for Relay.Session(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  sub_10000FC6C(&qword_10009AAD8, &qword_100076C08);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v8 & 1, v9))
  {
    sub_1000392A0();
    sub_100049D0C();
    if (!v16)
    {
      goto LABEL_14;
    }

    v13 = v15;
  }

  v17 = *v6;
  if (v14)
  {
    *(v17[7] + 8 * v13) = v5;
    sub_10004A164();
  }

  else
  {
    sub_10003E7B4(v13, v3, v5, v17);
    sub_10004A164();
  }
}

uint64_t sub_10003D490(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Relay.RapportSessionKey(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_10003949C(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v12;
  v18 = v13;
  sub_10000FC6C(&unk_10009A7D0, &unk_1000769C0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v16))
  {
    goto LABEL_5;
  }

  v19 = sub_10003949C(a2);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v19;
LABEL_5:
  v21 = *v4;
  if (v18)
  {
    *(*(v21 + 56) + 8 * v17) = a1;
  }

  else
  {
    sub_10003E75C();
    return sub_10003EA4C(v17, v10, a1, v21);
  }
}

uint64_t sub_10003D650(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s7SessionC8IdentityVMa(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_1000393BC(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v12;
  v18 = v13;
  sub_10000FC6C(&qword_10009A7A8, &qword_1000769A0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v16))
  {
    goto LABEL_5;
  }

  v19 = sub_1000393BC(a2);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v19;
LABEL_5:
  v21 = *v4;
  if (v18)
  {
    *(*(v21 + 56) + 8 * v17) = a1;
  }

  else
  {
    sub_10003E75C();
    return sub_10003EA4C(v17, v10, a1, v21);
  }
}

uint64_t sub_10003D810(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Relay.ConnectedSessionKey(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_1000395FC(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v12;
  v18 = v13;
  sub_10000FC6C(&qword_10009AAC8, &qword_100076C00);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v16))
  {
    goto LABEL_5;
  }

  v19 = sub_1000395FC(a2);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v19;
LABEL_5:
  v21 = *v4;
  if (v18)
  {
    *(*(v21 + 56) + 8 * v17) = a1;
  }

  else
  {
    sub_10003E75C();
    return sub_10003EA4C(v17, v10, a1, v21);
  }
}

void sub_10003D9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100011DD0();
  v15 = v14;
  sub_100049CDC();
  type metadata accessor for UUID();
  sub_100011C54();
  __chkstk_darwin(v16);
  sub_100049818();
  sub_100039668(v15, v17);
  sub_100049830();
  if (v19)
  {
    __break(1u);
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v20 = v18;
  sub_10000FC6C(&qword_10009A938, &qword_100076AA8);
  sub_100049C68();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v21, v22))
  {
    v23 = sub_10004A05C();
    sub_100039668(v23, v24);
    if ((v20 & 1) != (v25 & 1))
    {
      goto LABEL_10;
    }
  }

  v26 = *v13;
  if (v20)
  {
    v27 = _s7SessionC8IdentityVMa(0);
    sub_1000499EC(v27);
    sub_100011DB8();

    sub_100048378(v28, v29);
  }

  else
  {
    v31 = sub_10004A010();
    v32(v31);
    v33 = sub_100049BB0();
    sub_10003E7F8(v33, v34, v12, v26);
    sub_100011DB8();
  }
}

void sub_10003DB4C()
{
  sub_100011DD0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100049C74(v7, v5);
  sub_100039568(v9, v10, v11);
  sub_100049830();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  sub_10000FC6C(&qword_10009AAC0, &qword_100076BF8);
  if (!sub_10004A178())
  {
    goto LABEL_5;
  }

  v17 = sub_10004A098();
  v19 = sub_100039568(v17, v18, v2);
  if ((v16 & 1) != (v20 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v15 = v19;
LABEL_5:
  v21 = *v0;
  if (v16)
  {
    v22 = v21[7] + 40 * v15;
    v23 = *(v8 + 16);
    *v22 = *v8;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(v8 + 32);
    sub_100011DB8();
  }

  else
  {
    sub_10003E8E8(v15, v6, v4, v2, v8, v21);

    sub_100011DB8();
  }
}

void sub_10003DC84()
{
  sub_100011DD0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v22 = v8;
  type metadata accessor for SidecarIdentity(0);
  sub_100011D00();
  __chkstk_darwin(v9);
  sub_100011CD4();
  sub_100049E10();
  sub_100039308(v7);
  sub_100049830();
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v10;
  v14 = v11;
  sub_10000FC6C(v5, v3);
  sub_100049C68();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16))
  {
    goto LABEL_5;
  }

  v17 = sub_10004A05C();
  v18 = sub_100039308(v17);
  if ((v14 & 1) != (v19 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v13 = v18;
LABEL_5:
  v20 = *v0;
  if (v14)
  {
    *(*(v20 + 56) + 8 * v13) = v22;
    sub_100011DB8();
  }

  else
  {
    sub_100049AA4();
    sub_10003E75C();
    sub_10003EA4C(v13, v1, v22, v20);
    sub_100011DB8();
  }
}

void sub_10003DE08()
{
  sub_100011DD0();
  v3 = v2;
  sub_100049CDC();
  type metadata accessor for UUID();
  sub_100011C54();
  __chkstk_darwin(v4);
  sub_100049818();
  sub_100039668(v3, v5);
  sub_100049830();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  sub_10000FC6C(&qword_10009A9C8, &qword_100076B00);
  sub_100049C68();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v11, v12))
  {
    goto LABEL_5;
  }

  v13 = sub_10004A05C();
  v15 = sub_100039668(v13, v14);
  if ((v10 & 1) != (v16 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v15;
LABEL_5:
  v17 = *v1;
  if (v10)
  {
    *(v17[7] + 8 * v9) = v0;
    sub_100011DB8();
  }

  else
  {
    v19 = sub_10004A010();
    v20(v19);
    v21 = sub_100049BB0();
    sub_10003E94C(v21, v22, v0, v17);
    sub_100011DB8();
  }
}

void sub_10003DF6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000391EC();
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10000FC6C(&qword_10009A988, &qword_100076AD8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_1000391EC();
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v16);
    *(v21 + 8 * v16) = a1;
  }

  else
  {
    sub_10003EA04(v16, a2, a3, a1, v20);
  }
}

void sub_10003E0A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s7SessionC8IdentityVMa(0);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_1000393BC(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v12;
  v18 = v13;
  sub_10000FC6C(&qword_10009A7F0, &qword_1000769D8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v16))
  {
    goto LABEL_5;
  }

  v19 = sub_1000393BC(a2);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v17 = v19;
LABEL_5:
  v21 = *v4;
  if (v18)
  {
    v22 = *(v21 + 56);
    v23 = *(v22 + 8 * v17);
    *(v22 + 8 * v17) = a1;
  }

  else
  {
    sub_10003E75C();
    sub_10003EA4C(v17, v10, a1, v21);
  }
}

void sub_10003E268(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000391EC();
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10000FC6C(&qword_10009A7F8, &qword_1000769E0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_1000391EC();
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    sub_10003EA04(v16, a2, a3, a1, v20);
  }
}

void sub_10003E3A4()
{
  sub_100011DD0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_100049EF4(v7, v5, v3);
  sub_1000391EC();
  sub_100049830();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_10000FC6C(&qword_10009A930, &qword_100076AA0);
  if (!sub_10004A178())
  {
    goto LABEL_5;
  }

  v14 = sub_1000391EC();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    sub_100011DB8();
  }

  else
  {
    sub_10003EAF0(v12, v4, v2, v8, v6, v16);
    sub_100011DB8();
  }
}

uint64_t sub_10003E4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100035114(&unk_100099180);
  dispatch thunk of Hashable.hash(into:)();
  v6 = _s7SessionC8IdentityVMa(0);
  Hasher._combine(_:)(*(a1 + *(v6 + 20)));
  Hasher._combine(_:)(*(a1 + *(v6 + 24)));
  Hasher._finalize()();
  v7 = _HashTable.nextHole(atOrAfter:)();
  *(a3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
  result = sub_1000469E4();
  *(*(a3 + 56) + 8 * v7) = a2;
  ++*(a3 + 16);
  return result;
}

_OWORD *sub_10003E620(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100011558(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_10003E68C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100011558(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_10003E708(uint64_t a1)
{
  v2 = sub_100049CDC();
  v3(v2);
  sub_100011D00();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t sub_10003E75C()
{
  sub_100049C50();
  v1(0);
  sub_100011D00();
  v2 = sub_100049A98();
  v3(v2);
  return v0;
}

unint64_t sub_10003E7B4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_10003E7F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  v7 = *(a4 + 48);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a2, v8);
  _s7SessionC8IdentityVMa(0);
  result = sub_1000469E4();
  v10 = *(a4 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }

  return result;
}

unint64_t sub_10003E8E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v7 = a6[7] + 40 * result;
  v8 = *(a5 + 16);
  *v7 = *a5;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a5 + 32);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_10003E94C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10003EA04(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10003EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100049E34();
  v7 = v6;
  *(v8 + 8 * (v6 >> 6) + 64) |= 1 << v6;
  v10 = v9(0);
  sub_1000499EC(v10);
  result = sub_1000469E4();
  *(*(a4 + 56) + 8 * v7) = v4;
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

unint64_t sub_10003EAF0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_10003EB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_100038F28(*(a1 + 16), 0, &unk_10009AA98, &unk_100076BD0, &qword_10009A9E0, &qword_100076B18);
  v4 = *(sub_10000FC6C(&qword_10009A9E0, &qword_100076B18) - 8);
  v5 = sub_10004390C(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);
  v6 = v8;

  sub_100048714(v6);
  if (v5 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_10003EC5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003EDDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003ECBC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003EF0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003ECDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003F024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003ECFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003F12C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003ED1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003F260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003ED3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003F398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003ED5C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003F4C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003ED7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003F770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003ED9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003F8A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003EDBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003F9E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003EDDC(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000FC6C(&qword_10009AAE8, &qword_100076C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AAF0, &qword_100076C20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003EF0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FC6C(&qword_10009A9E8, &qword_100076B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003F024(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FC6C(&qword_10009AA28, &qword_100076B60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003F12C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000FC6C(&qword_10009AA40, &qword_100076B78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AA48, &qword_100076B80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003F260(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000FC6C(&qword_10009AA68, &qword_100076BA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[10 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AA58, &qword_100076B90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003F398(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000FC6C(&qword_10009AA80, &qword_100075A48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AA88, &qword_100076BC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003F4C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FC6C(&qword_10009AA90, &qword_100076BC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10003F5D0()
{
  sub_100011DD0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    sub_100049D9C();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100049D8C();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_10000FC6C(v1, v2);
  v17 = sub_10000FC6C(v6, v4);
  sub_10001B8E8(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  sub_10000FC6C(v6, v4);
  sub_10004A0CC();
  if (v10)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_10003901C(v8 + v26, v15, v22 + v26, v6, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_100011DB8();
}

void *sub_10003F770(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000FC6C(&qword_10009AAB0, &qword_100076BE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AAB8, &qword_100076BF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003F8A8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000FC6C(&qword_10009AA08, &qword_100076B40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&qword_10009AA10, &qword_100076B48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003F9E0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_10000FC6C(&unk_10009A970, &qword_100076AC8);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1000390F4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10003FB94(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 6)
  {
    if (v26 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1000391EC();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10000FC6C(&qword_10009AA38, &qword_100076B70);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 4 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_10003C360(v14, a2 & 1);
  v16 = sub_1000391EC();
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v24._object = 0x800000010007B1D0;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v24);
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 39;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10003FE68(uint64_t a1, char a2, void *a3)
{
  v34 = a3;
  v5 = 0;
  v28 = *(a1 + 16);
  for (i = 32; ; i += 80)
  {
    if (v28 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_23;
    }

    memcpy(__dst, (a1 + i), sizeof(__dst));
    v31 = __dst[3];
    v32 = __dst[4];
    v29 = __dst[1];
    v30 = __dst[2];
    v7 = __dst[0];
    sub_100048658();
    if (!*(&v7 + 1))
    {
    }

    __dst[0] = v29;
    __dst[1] = v30;
    __dst[2] = v31;
    __dst[3] = v32;
    v8 = *v34;
    v10 = sub_1000391EC();
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_20;
    }

    v14 = v9;
    if (v8[3] < v13)
    {
      break;
    }

    if (a2)
    {
      if (v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_10000FC6C(&qword_10009AA60, &qword_100076B98);
      _NativeDictionary.copy()();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v17 = *v34;
    v17[(v10 >> 6) + 8] |= 1 << v10;
    *(v17[6] + 16 * v10) = v7;
    v18 = (v17[7] + (v10 << 6));
    v19 = __dst[0];
    v20 = __dst[1];
    v21 = __dst[3];
    v18[2] = __dst[2];
    v18[3] = v21;
    *v18 = v19;
    v18[1] = v20;
    v22 = v17[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v17[2] = v24;
    ++v5;
    a2 = 1;
  }

  sub_10003C5FC(v13, a2 & 1);
  v15 = sub_1000391EC();
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_22;
  }

  v10 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1000486AC(__dst);
  }

LABEL_23:
  _StringGuts.grow(_:)(30);
  v26._object = 0x800000010007B1D0;
  v26._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v26);
  _print_unlocked<A, B>(_:_:)();
  v27._countAndFlagsBits = 39;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000401B0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v28 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v30 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_1000391EC();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10000FC6C(&qword_10009AA78, &unk_100076BB0);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    v21 = (v19[7] + 16 * v12);
    *v21 = v9;
    v21[1] = v8;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v19[2] = v24;
    v4 = v30 + 1;
    a2 = 1;
  }

  sub_10003C964(v15, a2 & 1);
  v17 = sub_1000391EC();
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v26._object = 0x800000010007B1D0;
  v26._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v26);
  _print_unlocked<A, B>(_:_:)();
  v27._countAndFlagsBits = 39;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000404A4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1000391EC();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10000FC6C(&qword_10009AAA8, &qword_100076BE0);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_10003CC18(v14, a2 & 1);
  v16 = sub_1000391EC();
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v24._object = 0x800000010007B1D0;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v24);
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 39;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100040778(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1000391EC();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10000FC6C(&qword_10009AA00, &qword_100076B38);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_10003CEB4(v14, a2 & 1);
  v16 = sub_1000391EC();
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10000FC6C(&qword_10009A920, &qword_100075DE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v24._object = 0x800000010007B1D0;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v24);
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 39;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int sub_100040A5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v14 = _swiftEmptyArrayStorage;
      }

      else
      {
        v12 = sub_100049BB0();
        sub_10000FC6C(v12, v13);
        v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v14[2] = v11;
      }

      v15 = sub_100049BB0();
      v17 = sub_10000FC6C(v15, v16);
      sub_1000499EC(v17);
      v19[0] = v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v19[1] = v11;
      a4(v19, v20, a1, v10);
      v14[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a5(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_100040BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v8 = __chkstk_darwin(v34);
  v33 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v30 = v19;
      v31 = a3;
      v28 = v22;
      v29 = v21;
      do
      {
        sub_100048658();
        sub_100048658();
        v23 = static Date.< infix(_:_:)();
        sub_100048978(v12, &qword_10009A850);
        result = sub_100048978(v16, &qword_10009A850);
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return result;
        }

        sub_10004871C();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10004871C();
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100040DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v59 = sub_10000FC6C(&qword_10009A9E0, &qword_100076B18);
  v8 = __chkstk_darwin(v59);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v58 = &v45 - v11;
  v12 = __chkstk_darwin(v10);
  v57 = &v45 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v45 - v15;
  result = __chkstk_darwin(v14);
  v47 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v18 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v52 = -v21;
    v53 = v20;
    v23 = a1 - a3;
    v46 = v21;
    v24 = v20 + v21 * a3;
    v25 = &qword_100076B18;
    v55 = &v45 - v19;
    v56 = v16;
    while (2)
    {
      v50 = v22;
      v51 = a3;
      v48 = v24;
      v49 = v23;
      v26 = v23;
      while (1)
      {
        v60 = v26;
        v61 = v24;
        sub_100048658();
        sub_100048658();
        v27 = v57;
        sub_100048658();

        v28 = v25;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v30 = sub_100010F24(isa);

        v64 = 542327881;
        v65 = 0xE400000000000000;
        v66 = v30;
        v63 = sub_100010C84();
        v31._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v31);

        v32 = v64;
        v33 = v65;
        v62 = type metadata accessor for SidecarIdentity;
        sub_10003E708(v27);
        v34 = v58;
        sub_100048658();

        v35 = UUID._bridgeToObjectiveC()().super.isa;
        v36 = sub_100010F24(v35);

        v64 = 542327881;
        v65 = 0xE400000000000000;
        v66 = v36;
        v37._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
        String.append(_:)(v37);

        v39 = v64;
        v38 = v65;
        sub_10003E708(v34);
        if (v32 == v39 && v33 == v38)
        {
          break;
        }

        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100048978(v56, &qword_10009A9E0);
        result = sub_100048978(v55, &qword_10009A9E0);
        v25 = v28;
        v42 = v60;
        v43 = v61;
        if (v41)
        {
          if (!v53)
          {
            __break(1u);
            return result;
          }

          sub_10004871C();
          swift_arrayInitWithTakeFrontToBack();
          result = sub_10004871C();
          v22 += v52;
          v24 = v43 + v52;
          v44 = __CFADD__(v42, 1);
          v26 = v42 + 1;
          if (!v44)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_100048978(v56, &qword_10009A9E0);
      result = sub_100048978(v55, &qword_10009A9E0);
      v25 = v28;
LABEL_14:
      a3 = v51 + 1;
      v22 = v50 + v46;
      v23 = v49 - 1;
      v24 = v48 + v46;
      if (v51 + 1 != v47)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100041254(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v108 = a1;
  v121 = sub_10000FC6C(&qword_10009A850, &qword_100076A20);
  v117 = *(v121 - 8);
  v8 = __chkstk_darwin(v121);
  v112 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v120 = &v105 - v11;
  v12 = __chkstk_darwin(v10);
  v123 = &v105 - v13;
  result = __chkstk_darwin(v12);
  v122 = &v105 - v15;
  v118 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_100:
    v123 = *v108;
    if (!v123)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_102:
      v98 = v18 + 2;
      v99 = v18[2];
      while (v99 >= 2)
      {
        if (!*v118)
        {
          goto LABEL_139;
        }

        v100 = v18;
        v18 += 2 * v99;
        v101 = *v18;
        v102 = &v98[2 * v99];
        v103 = v102[1];
        sub_1000429EC(*v118 + *(v117 + 72) * *v18, *v118 + *(v117 + 72) * *v102, *v118 + *(v117 + 72) * v103, v123);
        if (v5)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_127;
        }

        if (v99 - 2 >= *v98)
        {
          goto LABEL_128;
        }

        *v18 = v101;
        v18[1] = v103;
        v104 = *v98 - v99;
        if (*v98 < v99)
        {
          goto LABEL_129;
        }

        v99 = *v98 - 1;
        result = memmove(v102, v102 + 2, 16 * v104);
        *v98 = v99;
        v18 = v100;
      }
    }

LABEL_136:
    result = sub_100043770(v18);
    v18 = result;
    goto LABEL_102;
  }

  v105 = a4;
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v17;
    v20 = v17 + 1;
    v109 = v18;
    if (v17 + 1 < v16)
    {
      v107 = v5;
      v21 = *v118;
      v22 = *(v117 + 72);
      v23 = v17;
      v24 = v17 + 1;
      v25 = *v118 + v22 * v20;
      v26 = v122;
      v18 = &qword_100076A20;
      v116 = v16;
      sub_100048658();
      v27 = v123;
      sub_100048658();
      LODWORD(v115) = static Date.< infix(_:_:)();
      sub_100048978(v27, &qword_10009A850);
      result = sub_100048978(v26, &qword_10009A850);
      v28 = v116;
      v106 = v23;
      v29 = v23 + 2;
      v119 = v22;
      v30 = v21 + v22 * (v23 + 2);
      while (1)
      {
        v31 = v29;
        if (v24 + 1 >= v28)
        {
          break;
        }

        ++v24;
        v32 = v122;
        v18 = &qword_100076A20;
        sub_100048658();
        v33 = v123;
        sub_100048658();
        v34 = static Date.< infix(_:_:)() & 1;
        sub_100048978(v33, &qword_10009A850);
        result = sub_100048978(v32, &qword_10009A850);
        v30 += v119;
        v25 += v119;
        v29 = v31 + 1;
        v28 = v116;
        if ((v115 & 1) != v34)
        {
          goto LABEL_9;
        }
      }

      v24 = v28;
LABEL_9:
      v5 = v107;
      if (v115)
      {
        v35 = v106;
        if (v24 < v106)
        {
          goto LABEL_133;
        }

        if (v106 >= v24)
        {
          v20 = v24;
          v18 = v109;
          v19 = v106;
          goto LABEL_32;
        }

        if (v28 >= v31)
        {
          v36 = v31;
        }

        else
        {
          v36 = v28;
        }

        v37 = v119 * (v36 - 1);
        v38 = v119 * v36;
        v39 = v106 * v119;
        v40 = v24;
        v18 = v109;
        do
        {
          if (v35 != --v40)
          {
            v41 = *v118;
            if (!*v118)
            {
              goto LABEL_140;
            }

            sub_10004871C();
            v42 = v39 < v37 || v41 + v39 >= v41 + v38;
            if (v42)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v39 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10004871C();
            v18 = v109;
          }

          ++v35;
          v37 -= v119;
          v38 -= v119;
          v39 += v119;
        }

        while (v35 < v40);
        v5 = v107;
        v20 = v24;
      }

      else
      {
        v20 = v24;
        v18 = v109;
      }

      v19 = v106;
    }

LABEL_32:
    v43 = v118[1];
    if (v20 < v43)
    {
      if (__OFSUB__(v20, v19))
      {
        goto LABEL_132;
      }

      if (v20 - v19 < v105)
      {
        break;
      }
    }

LABEL_48:
    if (v20 < v19)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v116 = v20;
    if ((result & 1) == 0)
    {
      result = sub_100038BE8(0, v18[2] + 1, 1, v18);
      v18 = result;
    }

    v55 = v18[2];
    v54 = v18[3];
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_100038BE8((v54 > 1), v55 + 1, 1, v18);
      v18 = result;
    }

    v18[2] = v56;
    v57 = v18 + 4;
    v58 = &v18[2 * v55 + 4];
    v59 = v116;
    *v58 = v19;
    v58[1] = v59;
    v119 = *v108;
    if (!v119)
    {
      goto LABEL_141;
    }

    if (v55)
    {
      while (1)
      {
        v60 = v56 - 1;
        v61 = &v57[2 * v56 - 2];
        v62 = &v18[2 * v56];
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v63 = v18[4];
          v64 = v18[5];
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_68:
          if (v66)
          {
            goto LABEL_118;
          }

          v78 = *v62;
          v77 = v62[1];
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_121;
          }

          v82 = v61[1];
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_126;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v56 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v56 < 2)
        {
          goto LABEL_120;
        }

        v85 = *v62;
        v84 = v62[1];
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_83:
        if (v81)
        {
          goto LABEL_123;
        }

        v87 = *v61;
        v86 = v61[1];
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_125;
        }

        if (v88 < v80)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v60 - 1 >= v56)
        {
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
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v118)
        {
          goto LABEL_138;
        }

        v92 = v18;
        v93 = &v57[2 * v60 - 2];
        v94 = *v93;
        v18 = v60;
        v95 = &v57[2 * v60];
        v96 = v95[1];
        sub_1000429EC(*v118 + *(v117 + 72) * *v93, *v118 + *(v117 + 72) * *v95, *v118 + *(v117 + 72) * v96, v119);
        if (v5)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_113;
        }

        v5 = v92[2];
        if (v18 > v5)
        {
          goto LABEL_114;
        }

        *v93 = v94;
        v93[1] = v96;
        if (v18 >= v5)
        {
          goto LABEL_115;
        }

        v56 = v5 - 1;
        result = memmove(v95, v95 + 2, 16 * (v5 - 1 - v18));
        v18 = v92;
        v92[2] = v5 - 1;
        v97 = v5 > 2;
        v5 = 0;
        if (!v97)
        {
          goto LABEL_97;
        }
      }

      v67 = &v57[2 * v56];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_116;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_117;
      }

      v74 = v62[1];
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_119;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_122;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = v61[1];
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_130;
        }

        if (v65 < v91)
        {
          v60 = v56 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v16 = v118[1];
    v17 = v116;
    if (v116 >= v16)
    {
      goto LABEL_100;
    }
  }

  v44 = v19 + v105;
  if (__OFADD__(v19, v105))
  {
    goto LABEL_134;
  }

  if (v44 >= v43)
  {
    v44 = v118[1];
  }

  if (v44 < v19)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v20 == v44)
  {
    goto LABEL_48;
  }

  v106 = v19;
  v107 = v5;
  v45 = *(v117 + 72);
  v46 = *v118 + v45 * (v20 - 1);
  v47 = -v45;
  v48 = v19 - v20;
  v119 = *v118;
  v110 = v45;
  v111 = v44;
  v49 = v119 + v20 * v45;
LABEL_41:
  v115 = v46;
  v116 = v20;
  v113 = v49;
  v114 = v48;
  v50 = v49;
  while (1)
  {
    v51 = v122;
    sub_100048658();
    v52 = v123;
    sub_100048658();
    v53 = static Date.< infix(_:_:)();
    sub_100048978(v52, &qword_10009A850);
    result = sub_100048978(v51, &qword_10009A850);
    if ((v53 & 1) == 0)
    {
LABEL_46:
      v20 = v116 + 1;
      v46 = v115 + v110;
      v48 = v114 - 1;
      v49 = v113 + v110;
      if (v116 + 1 == v111)
      {
        v20 = v111;
        v19 = v106;
        v5 = v107;
        v18 = v109;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v119)
    {
      break;
    }

    sub_10004871C();
    swift_arrayInitWithTakeFrontToBack();
    sub_10004871C();
    v46 += v47;
    v50 += v47;
    v42 = __CFADD__(v48++, 1);
    if (v42)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
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
  return result;
}