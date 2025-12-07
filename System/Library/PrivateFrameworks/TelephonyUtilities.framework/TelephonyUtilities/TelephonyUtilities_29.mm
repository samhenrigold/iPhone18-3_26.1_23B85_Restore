uint64_t sub_1004378BC()
{
  v1 = v0;
  v22 = type metadata accessor for UUID();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  sub_10003A270(v1 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_voicemailManager, &v23, &qword_1006ABC98, &qword_1005879B8);
  if (v24)
  {
    sub_10002F0C8(&v23, v25);
    v12 = v26;
    v13 = v27;
    sub_100009B14(v25, v26);
    v14 = (*(v13 + 8))(v12, v13);
    result = sub_10000B6F4(v14);
    if (!result)
    {
LABEL_10:

      return sub_100009B7C(v25);
    }

    v15 = result;
    if (result >= 1)
    {
      v16 = 0;
      v17 = (v2 + 8);
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        ++v16;
        v20 = [v18 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100439100(v4);
        (*v17)(v4, v22);
      }

      while (v15 != v16);
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  return sub_100009A04(&v23, &qword_1006ABC98, &qword_1005879B8);
}

void sub_100437B94()
{
  sub_100005EF4();
  v157 = v3;
  v158 = v2;
  v156 = type metadata accessor for URL();
  sub_100007FEC();
  v154 = v4;
  __chkstk_darwin(v5);
  sub_10000F4E8();
  v146 = v6;
  sub_100006838();
  __chkstk_darwin(v7);
  sub_10000C1C4();
  v151 = v8;
  sub_10000D414();
  type metadata accessor for UUID();
  sub_100007FEC();
  v152 = v10;
  v153 = v9;
  __chkstk_darwin(v9);
  sub_100007FDC();
  sub_100006EC4();
  type metadata accessor for LanguageManager();
  sub_100007FEC();
  v149 = v12;
  v150 = v11;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v148 = v14 - v13;
  v15 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v16 = sub_100007BF0(v15);
  __chkstk_darwin(v16);
  sub_10000F4E8();
  v147 = v17;
  sub_100006838();
  v19 = __chkstk_darwin(v18);
  v21 = v144 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = v144 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = v144 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = v144 - v29;
  __chkstk_darwin(v28);
  sub_10000C1C4();
  v155 = v31;
  sub_10000D414();
  v32 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_100007FDC();
  v38 = v37 - v36;
  v39 = *(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue);
  *(v37 - v36) = v39;
  (*(v34 + 104))(v37 - v36, enum case for DispatchPredicate.onQueue(_:), v32);
  v40 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v42 = *(v34 + 8);
  v41 = v34 + 8;
  v42(v38, v32);
  if (v39)
  {
    v41 = v0;
    if ([*(v0 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_featureFlags) receptionistEnabled] && objc_msgSend(v158, "receptionistState"))
    {
      v27 = v155;
      v43 = v156;
      sub_10000AF74(v155, 1, 1, v156);
      v32 = v158;
      v1 = "com.apple.callservicesd.shareplay-session-server-terminated";
      switch([v158 receptionistState])
      {
        case 1u:
          if (([v32 specialUnknown] & 1) == 0)
          {
            [v32 isKnownCaller];
          }

          goto LABEL_41;
        case 3u:
        case 4u:
          if (qword_1006A0B28 == -1)
          {
            goto LABEL_6;
          }

          goto LABEL_76;
        case 6u:
          goto LABEL_41;
        case 7u:
          URL.init(fileURLWithPath:)();
          sub_100009A04(v27, &unk_1006A52C0, &unk_10057D930);
          sub_100007C20();
          sub_10000AF74(v103, v104, v105, v43);
          sub_100445BE8(v30, v27, &unk_1006A52C0, &unk_10057D930);
          goto LABEL_35;
        default:
          if (qword_1006A0B28 != -1)
          {
            sub_1000080B0(&qword_1006A0B28);
          }

          v95 = type metadata accessor for Logger();
          sub_10000AF9C(v95, qword_1006BA5F8);
          v96 = v32;
          v74 = Logger.logObject.getter();
          v97 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v74, v97))
          {
            v98 = sub_100005274();
            v99 = sub_100005E84();
            v160 = v99;
            *v98 = 136315138;
            v159 = [v96 receptionistState];
            type metadata accessor for TUCallReceptionistState(0);
            v100 = String.init<A>(reflecting:)();
            v102 = sub_10002741C(v100, v101, &v160);

            *(v98 + 4) = v102;
            _os_log_impl(&_mh_execute_header, v74, v97, "invalid receptionist state for greeting: %s", v98, 0xCu);
            sub_100009B7C(v99);
            sub_100008AE8();
            sub_100005F40(v98);
          }

          goto LABEL_33;
      }
    }

    v53 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    v54 = sub_10000FB38();
    sub_1002CB708(v54, 0xE700000000000000, v53, v27);

    v55 = *(sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap) + 16);

    if (!v55)
    {
      goto LABEL_35;
    }

    v56 = *(sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap) + 16);

    if (v56 == 1)
    {
      v57 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap);
      v58 = sub_1002E8C30(v57);
      v60 = v59;

      if (v60)
      {
        v61 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
        sub_1002CB708(v58, v60, v61, v24);

        if (sub_1000089E4(v24) != 1)
        {
          sub_100009A04(v27, &unk_1006A52C0, &unk_10057D930);
          (*(v154 + 32))(v157, v24, v61);
          sub_100007C20();
          sub_10000AF74(v87, v88, v89, v61);
LABEL_72:
          sub_100005EDC();
          return;
        }

        sub_100009A04(v24, &unk_1006A52C0, &unk_10057D930);
      }
    }

    v62 = v158;
    v63 = [v158 provider];
    v64 = [v63 isTelephonyProvider];

    if (v64)
    {
      v65 = [v62 localSenderIdentityAccountUUID];
      if (!v65)
      {
LABEL_35:
        sub_100445BE8(v27, v157, &unk_1006A52C0, &unk_10057D930);
        goto LABEL_72;
      }

      v66 = v65;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = UUID.uuidString.getter();
      v69 = v68;
      v70 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
      sub_1002CB708(v67, v69, v70, v21);

      (*(v152 + 8))(v1, v153);
      if (sub_1000089E4(v21) == 1)
      {
        v71 = v21;
LABEL_18:
        sub_100009A04(v71, &unk_1006A52C0, &unk_10057D930);
        goto LABEL_35;
      }

      sub_100009A04(v27, &unk_1006A52C0, &unk_10057D930);
      v90 = *(v154 + 32);
      v91 = v151;
      v90(v151, v21, v70);
      goto LABEL_28;
    }

    v72 = *(v41 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_callCenterObserver);
    if (v72)
    {
      v73 = [v72 activeConversationForCall:v62];
      if (!v73)
      {
        goto LABEL_35;
      }

      v74 = v73;
      v75 = [v73 localMember];
      if (!v75 || (v76 = v75, v77 = [v75 handle], v76, v78 = sub_1004450E0(v77, &selRef_normalizedValue), !v79) || (v80 = v78, v81 = v79, v82 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap), v83 = sub_1002CB47C(v80, v81, v82), v85 = v84, , , !v85))
      {
LABEL_33:

        goto LABEL_35;
      }

      v70 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
      v86 = v147;
      sub_1002CB708(v83, v85, v70, v147);

      if (sub_1000089E4(v86) == 1)
      {
        v71 = v86;
        goto LABEL_18;
      }

      sub_100009A04(v27, &unk_1006A52C0, &unk_10057D930);
      v90 = *(v154 + 32);
      v91 = v146;
      v90(v146, v86, v70);
LABEL_28:
      v90(v27, v91, v70);
      sub_100007C20();
      sub_10000AF74(v92, v93, v94, v70);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_78;
  }

  while (1)
  {
    __break(1u);
LABEL_76:
    sub_1000080B0(&qword_1006A0B28);
LABEL_6:
    v44 = type metadata accessor for Logger();
    sub_10000AF9C(v44, qword_1006BA5F8);
    v45 = v32;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = sub_100005274();
      v49 = sub_100005E84();
      v160 = v49;
      *v48 = *(v1 + 460);
      v50 = [v45 receptionistSession];
      if (v50)
      {
        v50 = sub_1004450E0(v50, &selRef_predictedName);
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      v1 = sub_10001E478(v50, v52);

      v106 = sub_1000060A8();
      v109 = sub_10002741C(v106, v107, v108);

      *(v48 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v46, v47, "name: %s", v48, 0xCu);
      sub_100009B7C(v49);
      sub_100005F40(v49);
      sub_100008AE8();
    }

LABEL_41:
    v110 = *(v41 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_messageMap);
    v32 = v110 + 8;
    sub_10000C830();
    v112 = v111;
    v115 = v114 & v113;
    v117 = (v116 + 63) >> 6;
    sub_10000A8EC();
    v151 = v118;
    v152 = v119;
    sub_10000A8EC();
    v146 = v120;
    v147 = v121;
    sub_10000A8EC();
    v156 = v122;
    swift_bridgeObjectRetain_n();
    v123 = 0;
    v144[3] = v112;
    v154 = (v112 - 1);
    v145 = v41;
    if (v115)
    {
      break;
    }

LABEL_43:
    while (1)
    {
      v41 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      if (v41 >= v117)
      {

        v134 = v155;
        goto LABEL_71;
      }

      v115 = *(v32 + v41);
      ++v123;
      if (v115)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v41 = v123;
LABEL_46:
    v124 = __clz(__rbit64(v115));
    v115 &= v115 - 1;
    v125 = v124 | (v41 << 6);
    v126 = v110[7];
    v127 = (v110[6] + 16 * v125);
    v128 = v127[1];
    v153 = *v127;
    v1 = 0xEA00000000004D56;
    v129 = 0x4C746C7561666564;
    switch(*(v126 + v125))
    {
      case 1:
        v129 = 0xD00000000000001ALL;
        v1 = v156;
        break;
      case 2:
        v129 = 0xD000000000000015;
        v1 = v146;
        break;
      case 3:
        v129 = 0xD000000000000018;
        v1 = v147;
        break;
      case 4:
        v129 = 0xD000000000000010;
        v1 = v151;
        break;
      case 5:
        v129 = 0xD000000000000011;
        v1 = v152;
        break;
      default:
        break;
    }

    v130 = 0xD00000000000001ALL;
    v131 = v156;
    switch(v154)
    {
      case 1:
        v130 = 0xD000000000000015;
        v131 = v146;
        break;
      case 2:
        v130 = 0xD000000000000018;
        v131 = v147;
        break;
      case 3:
        v131 = v151;
        v130 = 0xD000000000000010;
        break;
      case 4:
        v130 = 0xD000000000000011;
        v131 = v152;
        break;
      default:
        break;
    }

    if (v129 == v130 && v131 == v1)
    {

      goto LABEL_68;
    }

    v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v133)
    {
      break;
    }

    v123 = v41;
    if (!v115)
    {
      goto LABEL_43;
    }
  }

LABEL_68:

  v136 = v148;
  v135 = v149;
  v137 = v150;
  (*(v149 + 16))(v148, v145 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_languageManager, v150);
  v138 = TUBundle();
  v134 = v155;
  if (!v138)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v139 = v138;
  v140._countAndFlagsBits = 0xD000000000000012;
  v140._object = 0x800000010056B140;
  v141._countAndFlagsBits = v153;
  v141._object = v128;
  object = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(v141, v140, v139, 0).value._object;

  (*(v135 + 8))(v136, v137);
  if (object)
  {
    v143 = String._bridgeToObjectiveC()();

    [v158 setLastReceptionistMessage:v143];

LABEL_71:
    sub_1004389A4();
    sub_1002CB720();

    sub_100009A04(v134, &unk_1006A52C0, &unk_10057D930);
    goto LABEL_72;
  }

LABEL_79:
  __break(1u);
}

uint64_t sub_1004389A4()
{
  v19 = type metadata accessor for URL();
  v0 = *(v19 - 8);
  __chkstk_darwin(v19);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026D814(&qword_1006ABC80, &qword_1005879A8);
  v3 = *(sub_10026D814(&qword_1006ABC88, &qword_1005879B0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 72);
  v6 = swift_allocObject();
  v16 = v6;
  *(v6 + 16) = xmmword_1005800F0;
  v7 = (v6 + v4);
  *v7 = 0;
  sub_10043F530(sub_10043D9F4);
  v15 = v5;
  v7[v5] = 1;
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v8 = *(v0 + 8);
  v17 = v0 + 8;
  v9 = v19;
  v8(v2, v19);
  v18 = v8;
  v7[2 * v5] = 3;
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v8(v2, v9);
  v10 = v15;
  v7[3 * v15] = 4;
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v11 = v18;
  v12 = v19;
  v18(v2, v19);
  v7[4 * v10] = 5;
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v11(v2, v12);
  v7[5 * v10] = 2;
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v18(v2, v12);
  sub_100445C34();
  return Dictionary.init(dictionaryLiteral:)();
}

void sub_100438D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005EF4();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v27 = sub_100007BF0(v26);
  __chkstk_darwin(v27);
  sub_100007BAC();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  v34 = [v25 localSenderIdentityAccountUUID];
  if (v34)
  {
    v35 = v34;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = type metadata accessor for UUID();
    v37 = 0;
  }

  else
  {
    v36 = type metadata accessor for UUID();
    v37 = 1;
  }

  sub_10000AF74(v30, v37, 1, v36);
  v38 = sub_100006B30();
  sub_100445BE8(v38, v39, v40, v41);
  type metadata accessor for UUID();
  if (sub_100015468(v33, 1, v36) == 1)
  {
    sub_100009A04(v33, &unk_1006A3DD0, &unk_10057C9D0);
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v42 = UUID.uuidString.getter();
    v43 = v44;
    sub_10000F49C();
    (*(v45 + 8))(v33, v36);
  }

  v46 = [v25 provider];
  v47 = [v46 isTelephonyProvider];

  if (v47)
  {
    v48 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap);
    v49 = 0;
    sub_10000C830();
    v52 = v51 & v50;
    v54 = (v53 + 63) >> 6;
    while (v52)
    {
      v55 = v52;
LABEL_15:
      v52 = (v55 - 1) & v55;
      if (v43)
      {
        v57 = (*(v48 + 56) + ((v49 << 10) | (16 * __clz(__rbit64(v55)))));
        v58 = *v57 == v42 && v43 == v57[1];
        if (v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_31;
        }
      }
    }

    while (1)
    {
      v56 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v56 >= v54)
      {

        goto LABEL_31;
      }

      v55 = *(v48 + 64 + 8 * v56);
      ++v49;
      if (v55)
      {
        v49 = v56;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v59 = *(v23 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_callCenterObserver);
  if (!v59)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v60 = [v59 activeConversationForCall:v25];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 localMember];
    if (v62)
    {
      v63 = v62;
      v64 = [v62 handle];

      v66 = sub_1004450E0(v64, &selRef_normalizedValue);
      v67 = v65;
      if (!v43)
      {
        if (v65)
        {

          v68 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__phoneNumberToAccountUUIDMap);
          sub_1002CB47C(v66, v67, v68);
        }
      }
    }
  }

LABEL_31:
  sub_100005EDC();
}

uint64_t sub_100439100(uint64_t a1)
{
  v2 = v1;
  v93 = a1;
  v90 = type metadata accessor for URL();
  v3 = *(v90 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v90);
  v88 = &v78[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v5);
  v8 = &v78[-v7];
  __chkstk_darwin(v6);
  v89 = &v78[-v9];
  v94 = type metadata accessor for UUID();
  v92 = *(v94 - 8);
  v10 = __chkstk_darwin(v94);
  v12 = &v78[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = v11;
  __chkstk_darwin(v10);
  v14 = &v78[-v13];
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v78[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *&v2[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v22 = *(v16 + 8);
  v21 = v16 + 8;
  v22(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_5;
  }

  sub_10003A270(&v2[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_voicemailManager], &v99, &qword_1006ABC98, &qword_1005879B8);
  if (!*(&v100 + 1))
  {
    return sub_100009A04(&v99, &qword_1006ABC98, &qword_1005879B8);
  }

  sub_10002F0C8(&v99, v96);
  v21 = v93;
  if ((sub_10043BB4C() & 1) == 0)
  {
    v90 = v2;
    v39 = v92;
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v40 = v12;
    v41 = type metadata accessor for Logger();
    sub_10000AF9C(v41, qword_1006BA5F8);
    v42 = v94;
    v89 = *(v39 + 16);
    (v89)(v14, v21, v94);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v39;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v99 = v47;
      *v46 = 136315138;
      sub_10000F228(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v45 + 8))(v14, v94);
      v51 = sub_10002741C(v48, v50, &v99);
      v42 = v94;

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "looking for greeting for account: %s", v46, 0xCu);
      sub_100009B7C(v47);
      v21 = v93;
    }

    else
    {

      (*(v39 + 8))(v14, v42);
      v45 = v39;
    }

    v69 = v97;
    v70 = v98;
    sub_100009B14(v96, v97);
    (v89)(v40, v21, v42);
    v71 = v42;
    v72 = v21;
    v73 = (*(v45 + 80) + 24) & ~*(v45 + 80);
    v74 = swift_allocObject();
    v75 = v90;
    *(v74 + 16) = v90;
    (*(v45 + 32))(v74 + v73, v40, v71);
    v76 = *(v70 + 16);
    v77 = v75;
    v76(v72, sub_100445C90, v74, v69, v70);

    return sub_100009B7C(v96);
  }

  v18 = v89;
  sub_100439ABC();
  if (qword_1006A0B28 != -1)
  {
    goto LABEL_18;
  }

LABEL_5:
  v23 = type metadata accessor for Logger();
  sub_10000AF9C(v23, qword_1006BA5F8);
  v24 = v3[2];
  v25 = v18;
  v26 = v90;
  v85 = v3 + 2;
  v84 = v24;
  v24(v8, v25, v90);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v87 = v3;
  v86 = v4;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v80 = v30;
    v81 = swift_slowAlloc();
    *&v99 = v81;
    *v30 = 136315138;
    sub_10000F228(&qword_1006A3BD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v26;
    v34 = v33;
    v35 = v3[1];
    v82 = (v3 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v83 = v35;
    v35(v8, v32);
    v36 = sub_10002741C(v31, v34, &v99);

    v37 = v80;
    *(v80 + 1) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "not downloading greeting, file exists %s", v37, 0xCu);
    sub_100009B7C(v81);
  }

  else
  {

    v52 = v3[1];
    v82 = (v3 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v83 = v52;
    v52(v8, v26);
    v32 = v26;
  }

  v81 = UUID.uuidString.getter();
  v80 = v53;
  sub_100434D90(v95);
  v54 = sub_100009B14(v95, v95[3]);
  v55 = UUID.uuidString.getter();
  v99 = *v54;
  v100 = *(v54 + 1);
  v101 = v54[4];
  v79 = sub_10040AFD0(v55, v56);

  v57 = v92;
  v58 = v21;
  v59 = v94;
  (*(v92 + 16))(v12, v58, v94);
  v60 = v88;
  v61 = v89;
  v84(v88, v89, v32);
  v62 = (*(v57 + 80) + 24) & ~*(v57 + 80);
  v63 = v87;
  v64 = v12;
  v65 = (v91 + *(v87 + 80) + v62) & ~*(v87 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v2;
  (*(v57 + 32))(v66 + v62, v64, v59);
  v67 = v90;
  (v63[4])(v66 + v65, v60, v90);
  v68 = v2;
  sub_10043B438(v81, v80, v61, v79 & 1, sub_100445D0C, v66);

  v83(v61, v67);
  sub_100009B7C(v95);
  return sub_100009B7C(v96);
}

uint64_t sub_100439ABC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  sub_100443684();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_10043DA20(v6);
  URL.appendingPathComponent(_:)();
  return (v7)(v6, v0);
}

uint64_t sub_100439C20(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v43 = a2;
  v32 = a1;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for URL();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v42);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v30 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v30 - v15;
  v35 = *&v43[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  sub_10003A270(v32, &v30 - v15, &unk_1006A52C0, &unk_10057D930);
  (*(v9 + 16))(v11, v33, v8);
  (*(v6 + 16))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v42);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v6 + 80) + v19 + 8) & ~*(v6 + 80);
  v21 = swift_allocObject();
  sub_100445BE8(v16, v21 + v17, &unk_1006A52C0, &unk_10057D930);
  (*(v9 + 32))(v21 + v18, v11, v30);
  v22 = v42;
  v23 = v43;
  *(v21 + v19) = v43;
  (*(v6 + 32))(v21 + v20, v31, v22);
  aBlock[4] = sub_100445DD8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006309A0;
  v24 = _Block_copy(aBlock);
  v25 = v23;
  v26 = v36;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_10000F228(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  v27 = v37;
  v28 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v41 + 8))(v27, v28);
  (*(v38 + 8))(v26, v40);
}

void sub_10043A158(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v108 = a4;
  v111 = a3;
  v113 = a2;
  v110 = type metadata accessor for UUID();
  v5 = *(v110 - 8);
  v6 = __chkstk_darwin(v110);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v104 - v9;
  v11 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v12 = __chkstk_darwin(v11 - 8);
  v105 = (&v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v107 = &v104 - v15;
  v16 = __chkstk_darwin(v14);
  v104 = &v104 - v17;
  v18 = __chkstk_darwin(v16);
  v106 = &v104 - v19;
  __chkstk_darwin(v18);
  v21 = &v104 - v20;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v109 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v104 - v26;
  sub_10003A270(a1, v21, &unk_1006A52C0, &unk_10057D930);
  v28 = sub_100015468(v21, 1, v22);
  v29 = "com.apple.callservicesd.shareplay-session-server-terminated";
  v112 = v23;
  if (v28 == 1)
  {
    sub_100009A04(v21, &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000AF9C(v30, qword_1006BA5F8);
    v31 = v110;
    (*(v5 + 16))(v10, v113, v110);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v115 = v35;
      *v34 = 136315138;
      sub_10000F228(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v5 + 8))(v10, v31);
      v39 = sub_10002741C(v36, v38, &v115);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "using non-generated file for %s", v34, 0xCu);
      sub_100009B7C(v35);
      v29 = "com.apple.callservicesd.shareplay-session-server-terminated";
    }

    else
    {

      (*(v5 + 8))(v10, v31);
    }

    v52 = v112;
    v53 = v107;
    v54 = UUID.uuidString.getter();
    v56 = v55;
    v57 = v22;
    (*(v52 + 16))(v53, v108, v22);
    sub_10000AF74(v53, 0, 1, v22);
    v58 = v111;
    v59 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    if (sub_100015468(v53, 1, v22) == 1)
    {
      sub_100009A04(v53, &unk_1006A52C0, &unk_10057D930);
      v60 = sub_100005208(v54, v56);
      if (v61)
      {
        v62 = v60;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = v59;
        v64 = v52;
        v65 = *(v59 + 24);
        sub_10026D814(&unk_1006ABC70, &unk_1005826D0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v65);
        v59 = v115;

        v66 = v105;
        (*(v64 + 32))(v105, *(v59 + 56) + *(v64 + 72) * v62, v57);
        _NativeDictionary._delete(at:)();
        v67 = 0;
      }

      else
      {
        v67 = 1;
        v66 = v105;
      }

      sub_10000AF74(v66, v67, 1, v57);

      sub_100009A04(v66, &unk_1006A52C0, &unk_10057D930);
    }

    else
    {
      v83 = v109;
      (*(v52 + 32))(v109, v53, v22);
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v115 = v59;
      sub_10037938C(v83, v54, v56, v84, v85, v86, v87, v88, v104, v105, v106, v107, v108, v109);

      v59 = v115;
    }

    sub_100434E28(v59, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  }

  else
  {
    v40 = *(v23 + 32);
    v107 = v23 + 32;
    v108 = v27;
    v105 = v40;
    (v40)(v27, v21, v22);
    v41 = v22;
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000AF9C(v42, qword_1006BA5F8);
    v43 = v110;
    (*(v5 + 16))(v8, v113, v110);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v115 = v47;
      *v46 = 136315138;
      sub_10000F228(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v5 + 8))(v8, v43);
      v51 = sub_10002741C(v48, v50, &v115);
      v29 = "com.apple.callservicesd.shareplay-session-server-terminated";

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "using generated file for %s", v46, 0xCu);
      sub_100009B7C(v47);
      v41 = v22;
    }

    else
    {

      (*(v5 + 8))(v8, v43);
    }

    v68 = v108;
    v69 = UUID.uuidString.getter();
    v71 = v70;
    v72 = v112;
    v73 = v106;
    (*(v112 + 16))(v106, v68, v41);
    sub_10000AF74(v73, 0, 1, v41);
    v58 = v111;
    v74 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    if (sub_100015468(v73, 1, v41) == 1)
    {
      sub_100009A04(v73, &unk_1006A52C0, &unk_10057D930);
      v75 = sub_100005208(v69, v71);
      if (v76)
      {
        v77 = v75;
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v115 = v74;
        v79 = *(v74 + 24);
        sub_10026D814(&unk_1006ABC70, &unk_1005826D0);
        v80 = v78;
        v72 = v112;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v80, v79);
        v74 = v115;

        v81 = v104;
        (v105)(v104, *(v74 + 56) + *(v72 + 72) * v77, v41);
        _NativeDictionary._delete(at:)();
        v82 = 0;
      }

      else
      {
        v82 = 1;
        v81 = v104;
      }

      sub_10000AF74(v81, v82, 1, v41);

      sub_100009A04(v81, &unk_1006A52C0, &unk_10057D930);
    }

    else
    {
      v89 = v109;
      (v105)(v109, v73, v41);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v115 = v74;
      sub_10037938C(v89, v69, v71, v90, v91, v92, v93, v94, v104, v105, v106, v107, v108, v109);

      v74 = v115;
    }

    sub_100434E28(v74, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    (*(v72 + 8))(v68, v41);
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_10000AF9C(v95, qword_1006BA5F8);
  v96 = v58;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v115 = v100;
    *v99 = *(v29 + 460);
    v114 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    sub_10026D814(&unk_1006ABCA0, &qword_1005879C0);
    v101 = String.init<A>(reflecting:)();
    v103 = sub_10002741C(v101, v102, &v115);

    *(v99 + 4) = v103;
    _os_log_impl(&_mh_execute_header, v97, v98, "greetingsDict=%s", v99, 0xCu);
    sub_100009B7C(v100);
  }
}

uint64_t sub_10043ACE0(uint64_t a1, unint64_t a2, _BYTE *a3, int a4, void *a5, void *a6)
{
  v87 = a5;
  LODWORD(v7) = a4;
  v90 = a1;
  v10 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v10 - 8);
  v93 = &v81[-v11];
  v12 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v12 - 8);
  v83 = &v81[-v13];
  v14 = type metadata accessor for URL();
  v95 = *(v14 - 8);
  v96 = v14;
  v15 = __chkstk_darwin(v14);
  v85 = &v81[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v94 = &v81[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v81[-v20];
  v84 = v22;
  __chkstk_darwin(v19);
  v24 = &v81[-v23];
  v25 = swift_allocObject();
  *(v25 + 16) = a6;
  v26 = qword_1006A0B28;
  v91 = a6;
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000AF9C(v27, qword_1006BA5F8);
  v28 = (v95 + 16);
  v29 = *(v95 + 16);
  v29(v24, a3, v96);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  LODWORD(v86) = v31;
  v32 = os_log_type_enabled(v30, v31);
  v92 = v25;
  v88 = v29;
  v89 = v28;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v82 = v7;
    v34 = v29;
    v35 = v33;
    v97 = swift_slowAlloc();
    *v35 = 136315650;
    *(v35 + 4) = sub_10002741C(v90, a2, &v97);
    *(v35 + 12) = 2080;
    v36 = v96;
    v34(v21, v24, v96);
    v37 = String.init<A>(reflecting:)();
    v38 = v36;
    v7 = a3;
    v40 = v39;
    v41 = *(v95 + 8);
    v42 = (v95 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41(v24, v38);
    v43 = v37;
    v44 = v41;
    v45 = v42;
    v46 = sub_10002741C(v43, v40, &v97);
    a3 = v7;
    LOBYTE(v7) = v82;

    *(v35 + 14) = v46;
    *(v35 + 22) = 1024;
    *(v35 + 24) = v7 & 1;
    _os_log_impl(&_mh_execute_header, v30, v86, "addEndTone: for: %s from: %s force: %{BOOL}d", v35, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v44 = *(v95 + 8);
    v45 = (v95 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44(v24, v96);
  }

  v86 = a3;
  URL.deletingLastPathComponent()();
  v47 = v94;
  URL.appendingPathComponent(_:)();
  v44(v21, v96);
  if (v7)
  {
    v48 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v49);
    v51 = v50;
    v97 = 0;
    v52 = [v48 removeItemAtURL:v50 error:&v97];

    if (v52)
    {
      v53 = v97;
    }

    else
    {
      v54 = v97;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v90 = v45;
  v55 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v56 = String._bridgeToObjectiveC()();

  v57 = [v55 fileExistsAtPath:v56];

  if (v57)
  {
    v58 = v83;
    v59 = v96;
    v88(v83, v47, v96);
    sub_10000AF74(v58, 0, 1, v59);
    v60 = v91;
    sub_10043FE40(v58, v91);
    sub_100009A04(v58, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    v61 = type metadata accessor for TaskPriority();
    sub_10000AF74(v93, 1, 1, v61);
    v62 = v96;
    v63 = v88;
    v88(v21, v86, v96);
    v64 = v85;
    v63(v85, v94, v62);
    v65 = v95;
    v66 = *(v95 + 80);
    v67 = (v66 + 32) & ~v66;
    v68 = (v84 + 7 + v67) & 0xFFFFFFFFFFFFFFF8;
    v89 = v44;
    v69 = v21;
    v70 = (v66 + v68 + 8) & ~v66;
    v71 = (v84 + 7 + v70) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    *(v72 + 24) = 0;
    v73 = *(v65 + 32);
    v74 = v69;
    v44 = v89;
    v73(v72 + v67, v74, v62);
    v75 = v87;
    *(v72 + v68) = v87;
    v76 = v64;
    v47 = v94;
    v73(v72 + v70, v76, v62);
    v77 = (v72 + v71);
    v78 = v92;
    *v77 = sub_1004458B8;
    v77[1] = v78;
    v79 = v75;

    sub_1002762F0();

    v60 = v91;
  }

  v44(v47, v96);
}

uint64_t sub_10043B438(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v87 = a5;
  v88 = a6;
  v90 = a3;
  v9 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v9 - 8);
  v78 = &v74[-v10];
  v11 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v11 - 8);
  v86 = &v74[-v12];
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v77 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v89 = &v74[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v74[-v20];
  v76 = v22;
  __chkstk_darwin(v19);
  v24 = &v74[-v23];
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  LODWORD(v84) = a4;
  v25 = type metadata accessor for Logger();
  sub_10000AF9C(v25, qword_1006BA5F8);
  v26 = *(v14 + 16);
  v26(v24, v90, v13);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v85 = v21;
  v79 = v14;
  v82 = v26;
  v83 = v14 + 16;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v75 = v28;
    v31 = a2;
    v32 = v14;
    v33 = v30;
    v81 = swift_slowAlloc();
    v91 = v81;
    *v33 = 136315650;
    *(v33 + 4) = sub_10002741C(a1, v31, &v91);
    *(v33 + 12) = 2080;
    v26(v21, v24, v13);
    v34 = String.init<A>(reflecting:)();
    v36 = v35;
    v37 = *(v32 + 8);
    v38 = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v37(v24, v13);
    v39 = sub_10002741C(v34, v36, &v91);
    v21 = v85;

    *(v33 + 14) = v39;
    *(v33 + 22) = 1024;
    v40 = v84;
    *(v33 + 24) = v84 & 1;
    _os_log_impl(&_mh_execute_header, v27, v75, "addEndTone: for: %s from: %s force: %{BOOL}d", v33, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v37 = *(v14 + 8);
    v38 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v37(v24, v13);
    v40 = v84;
  }

  URL.deletingLastPathComponent()();
  v41 = v89;
  URL.appendingPathComponent(_:)();
  v81 = v13;
  v84 = v37;
  v37(v21, v13);
  if (v40)
  {
    v42 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v43);
    v45 = v44;
    v91 = 0;
    v46 = [v42 removeItemAtURL:v44 error:&v91];

    if (v46)
    {
      v47 = v91;
    }

    else
    {
      v48 = v91;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v49 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v50 = String._bridgeToObjectiveC()();

  v51 = [v49 fileExistsAtPath:v50];

  v52 = v41;
  if (v51)
  {
    v53 = v78;
    v54 = v81;
    v82(v78, v52, v81);
    sub_10000AF74(v53, 0, 1, v54);
    v87(v53);
    sub_100009A04(v53, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    v55 = type metadata accessor for TaskPriority();
    sub_10000AF74(v86, 1, 1, v55);
    v56 = v85;
    v57 = v90;
    v54 = v81;
    v58 = v82;
    v90 = v38;
    v82(v85, v57, v81);
    v59 = v77;
    v58(v77, v41, v54);
    v60 = v79;
    v61 = *(v79 + 80);
    v62 = (v61 + 32) & ~v61;
    v63 = (v76 + 7 + v62) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v61 + v63 + 8) & ~v61;
    v65 = (v76 + 7 + v64) & 0xFFFFFFFFFFFFFFF8;
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    *(v66 + 24) = 0;
    v67 = *(v60 + 32);
    v67(v66 + v62, v56, v54);
    v68 = v80;
    *(v66 + v63) = v80;
    v69 = v66 + v64;
    v52 = v89;
    v67(v69, v59, v54);
    v70 = (v66 + v65);
    v71 = v88;
    *v70 = v87;
    v70[1] = v71;
    v72 = v68;

    sub_1002762F0();
  }

  return v84(v52, v54);
}

id sub_10043BB4C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  sub_100439ABC();
  URL.path.getter();
  (*(v1 + 8))(v3, v0);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 fileExistsAtPath:v5];

  return v6;
}

uint64_t sub_10043BC8C(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v24 = a1;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *&a3[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  (*(v11 + 16))(v13, a4, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v11 + 32))(v16 + v14, v13, v10);
  v17 = v24;
  *(v16 + v15) = v24;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_100445F08;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006309F0;
  v18 = _Block_copy(aBlock);
  swift_errorRetain();
  v19 = v17;
  v20 = a3;
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10000F228(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  v21 = v25;
  v22 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v30 + 8))(v21, v22);
  (*(v27 + 8))(v9, v29);
}

void sub_10043C044(uint64_t a1, uint64_t a2, objc_class *a3, void *a4)
{
  v132 = a4;
  v135 = a3;
  v137 = a2;
  v5 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v6 = __chkstk_darwin(v5 - 8);
  v131 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v121 - v9;
  __chkstk_darwin(v8);
  v12 = &v121 - v11;
  v13 = type metadata accessor for URL();
  v133 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = (&v121 - v18);
  v20 = __chkstk_darwin(v17);
  v22 = &v121 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v121 - v24;
  __chkstk_darwin(v23);
  v27 = (&v121 - v26);
  v136 = type metadata accessor for UUID();
  v138 = *(v136 - 8);
  v28 = __chkstk_darwin(v136);
  v29 = __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  v34 = &v121 - v33;
  if (a1)
  {
    v134 = v30;
    swift_errorRetain();
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000AF9C(v35, qword_1006BA5F8);
    v36 = v138;
    isa = v138[2].isa;
    v38 = v136;
    isa(v34, v137, v136);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      LODWORD(v135) = v40;
      v42 = v41;
      v137 = swift_slowAlloc();
      v140[0] = v137;
      *v42 = 136315394;
      v139 = a1;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v43 = String.init<A>(reflecting:)();
      v45 = sub_10002741C(v43, v44, v140);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      isa(v134, v34, v38);
      v46 = String.init<A>(reflecting:)();
      v48 = v47;
      (v36[1].isa)(v34, v38);
      v49 = sub_10002741C(v46, v48, v140);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v39, v135, "error (%s) fetching greeting for accountUUID (%s)", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (v36[1].isa)(v34, v38);
    }

    return;
  }

  v126 = v19;
  v127 = v10;
  v125 = v16;
  v128 = v22;
  v129 = v12;
  v130 = v27;
  v50 = v135;
  if (v135)
  {
    v123 = v32;
    v124 = v31;
    v134 = v30;
    v51 = v135;
    if ([v51 type]== 2)
    {
      v52 = [v51 url];
      if (v52)
      {
        v53 = v52;
        v54 = v25;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v55 = v133;
        v56 = *(v133 + 32);
        v57 = v130;
        v58 = v13;
        v135 = (v133 + 32);
        v122 = v56;
        v56(v130, v54, v13);
        v59 = v129;
        sub_10000AF74(v129, 1, 1, v13);
        v60 = v127;
        v61 = v137;
        sub_10043CF08(v57, v127);
        sub_100009A04(v59, &unk_1006A52C0, &unk_10057D930);
        sub_100445BE8(v60, v59, &unk_1006A52C0, &unk_10057D930);
        v71 = v138;
        v72 = v131;
        sub_10003A270(v59, v131, &unk_1006A52C0, &unk_10057D930);
        v73 = sub_100015468(v72, 1, v58);
        if (v73 == 1)
        {
          v138 = v51;
          sub_100009A04(v72, &unk_1006A52C0, &unk_10057D930);
          v74 = v130;
          if (qword_1006A0B28 != -1)
          {
            swift_once();
          }

          v75 = type metadata accessor for Logger();
          sub_10000AF9C(v75, qword_1006BA5F8);
          v76 = *(v55 + 16);
          v77 = v126;
          v76(v126, v74, v58);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v140[0] = v81;
            *v80 = 136315138;
            v76(v125, v77, v58);
            v82 = String.init<A>(reflecting:)();
            v83 = v77;
            v84 = v82;
            v86 = v85;
            v87 = *(v55 + 8);
            v87(v83, v58);
            v88 = sub_10002741C(v84, v86, v140);

            *(v80 + 4) = v88;
            _os_log_impl(&_mh_execute_header, v78, v79, "was not able to copy greeting to our store: %s", v80, 0xCu);
            sub_100009B7C(v81);

            sub_100009A04(v129, &unk_1006A52C0, &unk_10057D930);
            v87(v130, v58);
          }

          else
          {

            v118 = *(v55 + 8);
            v118(v77, v58);
            sub_100009A04(v59, &unk_1006A52C0, &unk_10057D930);
            v118(v74, v58);
          }
        }

        else
        {
          v131 = v58;
          v122(v128, v72, v58);
          v127 = UUID.uuidString.getter();
          v90 = v89;
          v91 = v134;
          v92 = v136;
          v135 = v71[2].isa;
          (v135)(v134, v61, v136);
          v93 = (LOBYTE(v71[10].isa) + 24) & ~LOBYTE(v71[10].isa);
          v94 = swift_allocObject();
          v95 = v132;
          *(v94 + 16) = v132;
          (v71[4].isa)(v94 + v93, v91, v92);
          v96 = v95;
          sub_10043B438(v127, v90, v128, 1, sub_100445F9C, v94);

          if (qword_1006A0B28 != -1)
          {
            swift_once();
          }

          v97 = type metadata accessor for Logger();
          sub_10000AF9C(v97, qword_1006BA5F8);
          v98 = v124;
          v99 = v61;
          v100 = v135;
          (v135)(v124, v99, v92);
          v101 = v92;
          v102 = v96;
          v103 = Logger.logObject.getter();
          v104 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            v140[0] = v137;
            *v105 = 136315394;
            v100(v134, v98, v101);
            v106 = String.init<A>(reflecting:)();
            v108 = v107;
            (v138[1].isa)(v98, v101);
            v109 = sub_10002741C(v106, v108, v140);

            *(v105 + 4) = v109;
            *(v105 + 12) = 2080;
            sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
            v110 = v131;
            v111 = Dictionary.description.getter();
            v112 = v133;
            v113 = v51;
            v115 = v114;

            v116 = sub_10002741C(v111, v115, v140);

            *(v105 + 14) = v116;
            _os_log_impl(&_mh_execute_header, v103, v104, "Downloaded greeting for account %s greetingsDict=%s", v105, 0x16u);
            swift_arrayDestroy();

            v117 = *(v112 + 8);
            v117(v128, v110);
            sub_100009A04(v129, &unk_1006A52C0, &unk_10057D930);
            v117(v130, v110);
          }

          else
          {

            (v138[1].isa)(v98, v101);
            v119 = *(v133 + 8);
            v120 = v131;
            v119(v128, v131);
            sub_100009A04(v129, &unk_1006A52C0, &unk_10057D930);
            v119(v130, v120);
          }
        }

        return;
      }
    }
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_10000AF9C(v62, qword_1006BA5F8);
  v63 = v50;
  v138 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v138, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v140[0] = v66;
    *v65 = 136315138;
    v67 = sub_100291628(v50);
    v69 = sub_10002741C(v67, v68, v140);

    *(v65 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v138, v64, "no greeting url or not custom %s", v65, 0xCu);
    sub_100009B7C(v66);
  }

  else
  {
    v70 = v138;
  }
}

uint64_t sub_10043CF08@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v65 = a2;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v64 = (&v62 - v7);
  v8 = __chkstk_darwin(v6);
  v10 = &v62 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v62 - v12;
  __chkstk_darwin(v11);
  v15 = &v62 - v14;
  sub_100443684();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v69 = v3;
  v70 = *(v3 + 8);
  v70(v13, v2);
  v68 = v15;
  sub_10043DA20(v15);
  sub_100439ABC();
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  URL.path.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 fileExistsAtPath:v18];

  if (v19)
  {
    v20 = [v16 defaultManager];
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    v72 = 0;
    v24 = [v20 removeItemAtURL:v22 error:&v72];

    if (v24)
    {
      v25 = v72;
    }

    else
    {
      v26 = v72;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v67 = 0;
    }
  }

  v27 = [v16 defaultManager];
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v72 = 0;
  v34 = [v27 copyItemAtURL:v30 toURL:v32 error:&v72];

  if (v34)
  {
    v35 = qword_1006A0B28;
    v36 = v72;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000AF9C(v37, qword_1006BA5F8);
    v38 = *(v69 + 16);
    v39 = v64;
    v38(v64, v71, v2);
    v40 = v66;
    v38(v66, v10, v2);
    v41 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    v71 = v41;
    if (os_log_type_enabled(v41, v63))
    {
      v42 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v72 = v62;
      *v42 = 136315394;
      v38(v13, v39, v2);
      v43 = String.init<A>(reflecting:)();
      v44 = v39;
      v45 = v43;
      v47 = v46;
      v70(v44, v2);
      v48 = sub_10002741C(v45, v47, &v72);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v49 = v66;
      v38(v13, v66, v2);
      v50 = String.init<A>(reflecting:)();
      v52 = v51;
      v53 = v49;
      v54 = v70;
      v70(v53, v2);
      v55 = sub_10002741C(v50, v52, &v72);

      *(v42 + 14) = v55;
      v56 = v71;
      _os_log_impl(&_mh_execute_header, v71, v63, "successfully copied %s to %s", v42, 0x16u);
      swift_arrayDestroy();

      v54(v68, v2);
    }

    else
    {

      v60 = v70;
      v70(v40, v2);
      v60(v39, v2);
      v60(v68, v2);
    }

    v61 = v65;
    (*(v69 + 32))(v65, v10, v2);
    return sub_10000AF74(v61, 0, 1, v2);
  }

  else
  {
    v57 = v72;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v58 = v70;
    v70(v10, v2);
    return v58(v68, v2);
  }
}

void sub_10043D55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005EF4();
  a19 = v20;
  a20 = v21;
  v22 = type metadata accessor for URL();
  sub_100007FEC();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_100007BAC();
  v28 = (v26 - v27);
  __chkstk_darwin(v29);
  v31 = &a9 - v30;
  static URL.temporaryDirectory.getter();
  URL.appendingPathComponent(_:)();
  v32 = *(v24 + 8);
  v32(v28, v22);
  sub_10043D69C();
  v32(v31, v22);
  sub_100005EDC();
}

void sub_10043D69C()
{
  sub_100005EF4();
  v44 = v2;
  v45 = v3;
  v42 = v5;
  v43 = v4;
  v7 = v6;
  v40 = v8;
  v41 = v9;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v51 = v10;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v47 = v13 - v12;
  sub_10000D414();
  v50 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v48 = v14;
  __chkstk_darwin(v15);
  sub_100007FDC();
  sub_10000C4C4();
  v16 = type metadata accessor for URL();
  sub_100007FEC();
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  v22 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *&v0[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  (*(v18 + 16))(v22, v7, v16);
  v23 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v24 = (v23 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v18 + 32))(v27 + v23, v22, v16);
  v28 = v27 + v24;
  v29 = v41;
  *v28 = v40;
  *(v28 + 8) = v29;
  *(v28 + 16) = v42;
  v30 = (v27 + v25);
  v31 = v45;
  *v30 = v44;
  v30[1] = v31;
  v32 = v27 + v26;
  *v32 = v0;
  *(v32 + 8) = v43;
  v53[4] = sub_100444E68;
  v53[5] = v27;
  sub_100009FE4();
  v53[1] = 1107296256;
  sub_10000A600();
  v53[2] = v33;
  v53[3] = &unk_1006306D0;
  v34 = _Block_copy(v53);

  v35 = v0;

  static DispatchQoS.unspecified.getter();
  v52 = _swiftEmptyArrayStorage;
  sub_10000AB18();
  sub_10000F228(v36, v37, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);
  v38 = sub_100007764();
  v39(v38);
  (*(v48 + 8))(v1, v50);

  sub_100005EDC();
}

void sub_10043DA20(id a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - v7;
  __chkstk_darwin(v6);
  v10 = &v52 - v9;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000AF9C(v11, qword_1006BA5F8);
  v13 = *(v3 + 16);
  v13(v10, a1, v2);
  v56 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v58 = v3;
  v59 = v13;
  v55 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v54 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v61 = v19;
    *v18 = 136315138;
    v13(v8, v10, v2);
    v20 = String.init<A>(reflecting:)();
    v21 = v3;
    v22 = v20;
    v24 = v23;
    v25 = *(v21 + 8);
    v25(v10, v2);
    v26 = sub_10002741C(v22, v24, &v61);

    *(v18 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "createDirectoriesAsNecessary %s", v18, 0xCu);
    sub_100009B7C(v19);

    a1 = v54;
  }

  else
  {

    v25 = *(v3 + 8);
    v25(v10, v2);
  }

  v27 = objc_opt_self();
  v28 = [v27 defaultManager];
  URL.absoluteString.getter();
  v29 = String._bridgeToObjectiveC()();

  v30 = [v28 fileExistsAtPath:v29];

  if ((v30 & 1) == 0)
  {
    v31 = [v27 defaultManager];
    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    v61 = 0;
    v35 = [v31 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v61];

    v36 = v61;
    if (v35)
    {

      v37 = v36;
    }

    else
    {
      v53 = v25;
      v54 = v61;
      v38 = v61;
      v39 = a1;
      v40 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v41 = v57;
      v59(v57, v39, v2);
      swift_errorRetain();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v44 = 136315394;
        v60 = v40;
        swift_errorRetain();
        sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
        v45 = String.init<A>(reflecting:)();
        v47 = sub_10002741C(v45, v46, &v61);

        *(v44 + 4) = v47;
        *(v44 + 12) = 2080;
        v59(v55, v41, v2);
        v48 = String.init<A>(reflecting:)();
        v50 = v49;
        v53(v41, v2);
        v51 = sub_10002741C(v48, v50, &v61);

        *(v44 + 14) = v51;
        _os_log_impl(&_mh_execute_header, v42, v43, "Received an error (%s creating %s", v44, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v53(v41, v2);
      }
    }
  }
}

void sub_10043E00C(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, char *a7, int a8)
{
  v94 = a8;
  v105 = a7;
  v99 = a5;
  v104 = a4;
  v86 = type metadata accessor for Locale();
  v89 = *(v86 - 8);
  v12 = __chkstk_darwin(v86);
  v87 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v88 = &v83 - v14;
  v15 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v15 - 8);
  v97 = &v83 - v16;
  v17 = type metadata accessor for LanguageManager();
  v102 = *(v17 - 8);
  *&v103 = v17;
  __chkstk_darwin(v17);
  v101 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v92 = v22;
  v93 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v83 - v23;
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_10000AF9C(v25, qword_1006BA5F8);
  v27 = *(v20 + 16);
  v96 = a1;
  v91 = v20 + 16;
  v90 = v27;
  v27(v24, a1, v19);

  v100 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v98 = v19;
  v95 = v20;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v106[0] = v85;
    *v31 = 136315906;
    v84 = v29;
    v32 = URL.lastPathComponent.getter();
    v83 = v28;
    v34 = v33;
    (*(v20 + 8))(v24, v19);
    v35 = sub_10002741C(v32, v34, v106);
    v36 = v104;

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_10002741C(a2, a3, v106);
    *(v31 + 22) = 1024;
    *(v31 + 24) = v36 & 1;
    *(v31 + 28) = 2080;
    v37 = sub_10001E478(v99, a6);
    v39 = sub_10002741C(v37, v38, v106);

    *(v31 + 30) = v39;
    v40 = v83;
    _os_log_impl(&_mh_execute_header, v83, v84, "createOutgoingMessageIfNecessary %s %s %{BOOL}d %s", v31, 0x26u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v20 + 8))(v24, v19);
  }

  v42 = v101;
  v41 = v102;
  v43 = v103;
  (*(v102 + 16))(v101, &v105[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_languageManager], v103);
  v44 = TUBundle();
  if (v44)
  {
    v45 = v44;
    v46 = swift_allocObject();
    v47._object = 0x800000010056B140;
    v48._countAndFlagsBits = a2;
    v48._object = a3;
    v47._countAndFlagsBits = 0xD000000000000012;
    v49 = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(v48, v47, v45, 0);

    (*(v41 + 8))(v42, v43);
    if (v49.value._object)
    {
      v46[1] = v49;
      if (a6)
      {
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_10057D690;
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = sub_100009D88();
        *(v50 + 32) = v99;
        *(v50 + 40) = a6;

        v51 = String.init(format:_:)();
        v53 = v52;

        v46[1].value._countAndFlagsBits = v51;
        v46[1].value._object = v53;
      }

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v107 = v57;
        *v56 = 136315138;
        swift_beginAccess();
        countAndFlagsBits = v46[1].value._countAndFlagsBits;
        object = v46[1].value._object;

        v60 = sub_10002741C(countAndFlagsBits, object, &v107);

        *(v56 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v54, v55, "createOutgoingMessage utterance=%s", v56, 0xCu);
        sub_100009B7C(v57);
      }

      else
      {
      }

      v72 = v98;
      v73 = OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_ttsService;
      v74 = type metadata accessor for TaskPriority();
      v75 = v105;
      v103 = *&v105[v73];
      sub_10000AF74(v97, 1, 1, v74);
      v76 = v93;
      v90(v93, v96, v72);
      v77 = v95;
      v78 = (*(v95 + 80) + 48) & ~*(v95 + 80);
      v79 = (v92 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      *(v80 + 2) = 0;
      *(v80 + 3) = 0;
      *(v80 + 4) = v75;
      *(v80 + 5) = v46;
      (*(v77 + 32))(&v80[v78], v76, v72);
      v81 = &v80[v79];
      *v81 = v103;
      v81[16] = v94 & 1;
      v81[17] = v104 & 1;

      v82 = v75;
      swift_unknownObjectRetain();
      sub_100463218();
    }

    else
    {
      swift_deallocUninitializedObject();

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = a3;
        v64 = swift_slowAlloc();
        v106[0] = swift_slowAlloc();
        *v64 = 136315394;
        *(v64 + 4) = sub_10002741C(a2, v63, v106);
        *(v64 + 12) = 2080;
        v65 = v88;
        static Locale.current.getter();
        v66 = v89;
        v67 = v86;
        (*(v89 + 16))(v87, v65, v86);
        v68 = String.init<A>(reflecting:)();
        v70 = v69;
        (*(v66 + 8))(v65, v67);
        v71 = sub_10002741C(v68, v70, v106);

        *(v64 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v61, v62, "Unable to localize %s for locale %s. Not creating an outgoing message", v64, 0x16u);
        swift_arrayDestroy();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10043E9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 440) = v16;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 200) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 240) = v9;
  *(v8 + 248) = *(v9 - 8);
  *(v8 + 256) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 264) = v10;
  *(v8 + 272) = *(v10 - 8);
  *(v8 + 280) = swift_task_alloc();
  sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  *(v8 + 288) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v8 + 296) = v11;
  *(v8 + 304) = *(v11 - 8);
  *(v8 + 312) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v8 + 320) = v12;
  v13 = *(v12 - 8);
  *(v8 + 328) = v13;
  *(v8 + 336) = *(v13 + 64);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_10043EC30, 0, 0);
}

uint64_t sub_10043EC30()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  v26 = *(v0 + 368);
  v27 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v25 = *(v0 + 296);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  sub_100434D90(v0 + 104);
  v7 = sub_100009B14((v0 + 104), *(v0 + 128));
  sub_1000052D0();
  swift_beginAccess();
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *v7;
  v11 = *(v7 + 1);
  *(v0 + 96) = v7[4];
  *(v0 + 64) = v10;
  *(v0 + 80) = v11;

  sub_10040B180(v8, v9);

  sub_100009B7C((v0 + 104));
  static URL.temporaryDirectory.getter();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v4, v25);
  URL.appendingPathComponent(_:)();

  v12 = *(v2 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v27);
  sub_10043DA20(v26);
  v13 = swift_allocBox();
  v15 = v14;
  *(v0 + 392) = v13;
  v16 = sub_10000EC00();
  sub_10043F530(v16);
  if ([*(v5 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_featureFlags) receptionistEnabled])
  {
    (*(*(v0 + 328) + 24))(v15, *(v0 + 216), *(v0 + 320));
  }

  v17 = *(v0 + 344);
  v19 = *(v0 + 320);
  v18 = *(v0 + 328);
  v20 = *(v0 + 288);
  sub_1000052D0();
  swift_beginAccess();
  *(v0 + 400) = *(v6 + 24);

  sub_10000BC58();
  URL.appendingPathComponent(_:)();
  v21 = *(v18 + 16);
  *(v0 + 408) = v21;
  *(v0 + 416) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v17, v15, v19);
  v22 = type metadata accessor for Locale();
  sub_10000AF74(v20, 1, 1, v22);
  v23 = swift_task_alloc();
  *(v0 + 424) = v23;
  *v23 = v0;
  v23[1] = sub_10043EF38;

  return sub_100461EA0();
}

uint64_t sub_10043EF38()
{
  sub_100022C84();
  sub_10000B870();
  v16 = v2;
  v3 = *v1;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *v5 = *v1;
  v4[54] = v0;

  v6 = v3[47];
  v7 = v3[43];
  v8 = v3[40];
  v9 = v3[36];
  if (!v0)
  {
    *(v4 + 442) = v16 & 1;
  }

  sub_100009A04(v9, &qword_1006A5360, &qword_10057CB80);
  v6(v7, v8);
  v10 = sub_1000060A8();
  (v6)(v10);
  sub_100005F24();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10043F13C()
{
  v16 = *(v0 + 442);
  v1 = *(v0 + 392);
  v24 = *(v0 + 376);
  v2 = *(v0 + 360);
  v23 = *(v0 + 368);
  v3 = *(v0 + 328);
  v4 = *(v0 + 320);
  v17 = *(v0 + 280);
  v21 = *(v0 + 272);
  v22 = *(v0 + 264);
  v20 = *(v0 + 248);
  v18 = *(v0 + 256);
  v19 = *(v0 + 240);
  v5 = *(v0 + 441);
  v6 = *(v0 + 208);
  v7 = *(v0 + 200);
  v25 = *(v0 + 224);
  (*(v0 + 408))(v2, *(v0 + 216), v4);
  v8 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 17) = v16;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v1;
  *(v9 + 48) = v25;
  (*(v3 + 32))(v9 + v8, v2, v4);
  *(v0 + 48) = sub_100445058;
  *(v0 + 56) = v9;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_100004CEC;
  *(v0 + 40) = &unk_100630770;
  v10 = _Block_copy((v0 + 16));
  v11 = v7;

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  *(v0 + 192) = _swiftEmptyArrayStorage;
  sub_10000AB18();
  sub_10000F228(v12, v13, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v20 + 8))(v18, v19);
  (*(v21 + 8))(v17, v22);
  v24(v23, v4);

  sub_100009EF4();

  return v14();
}

uint64_t sub_10043F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  (*(v12 + 376))(*(v12 + 368), *(v12 + 320));

  sub_100009EF4();
  sub_100005F24();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_10043F530(void (*a1)(void))
{
  v3 = type metadata accessor for URL();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  sub_100006EC4();
  a1();
  sub_100006884();
  URL.appendingPathComponent(_:)();
  return (*(v5 + 8))(v1, v3);
}

uint64_t sub_10043F60C(char a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v88 = type metadata accessor for URL();
  v13 = *(v88 - 8);
  v14 = __chkstk_darwin(v88);
  v89 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v19 = __chkstk_darwin(v18 - 8);
  v86 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v81 - v22;
  __chkstk_darwin(v21);
  v25 = &v81 - v24;
  v26 = swift_projectBox();
  if (a1)
  {
    v27 = v26;
    v85 = a3;
    v87 = v13;
    HIDWORD(v84) = a2;
    if (a2)
    {
      swift_beginAccess();
      v28 = v27;
      v29 = *(a4 + 16);
      v30 = *(a4 + 24);

      v31 = v85;
      sub_100434D90(&v91);
      v32 = *(&v92 + 1);
      v33 = v93;
      sub_10001BDB8(&v91, *(&v92 + 1));
      v34 = *(v33 + 24);
      v35 = v33;
      v13 = v87;
      v34(v29, v30, v32, v35);

      v36 = sub_10001BDB8(&v91, *(&v92 + 1));
      __chkstk_darwin(v36);
      v38 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v38);
      v40 = *(v38 + 1);
      v94 = *v38;
      v95 = v40;
      v96 = *(v38 + 4);
      sub_1004457B8(&v94, v31);
      sub_100009B7C(&v91);
      v27 = v28;
    }

    swift_beginAccess();
    v41 = v88;
    v83 = *(v13 + 16);
    v83(v25, v27, v88);
    sub_10000AF74(v25, 0, 1, v41);
    v42 = v85;
    v43 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    if (sub_100015468(v25, 1, v41) == 1)
    {
      sub_100009A04(v25, &unk_1006A52C0, &unk_10057D930);
      v44 = sub_100005208(0x746C7561666564, 0xE700000000000000);
      if (v45)
      {
        v46 = v44;
        v47 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v91 = v43;
        v49 = *(v43 + 24);
        sub_10026D814(&unk_1006ABC70, &unk_1005826D0);
        v50 = isUniquelyReferenced_nonNull_native;
        v27 = v47;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v50, v49);
        v43 = v91;

        (*(v87 + 32))(v23, *(v43 + 56) + *(v87 + 72) * v46, v41);
        _NativeDictionary._delete(at:)();
        v51 = 0;
      }

      else
      {
        v51 = 1;
      }

      sub_10000AF74(v23, v51, 1, v41);
      sub_100009A04(v23, &unk_1006A52C0, &unk_10057D930);
    }

    else
    {
      (*(v13 + 32))(v17, v25, v41);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      *&v91 = v43;
      sub_10037938C(v17, 0x746C7561666564, 0xE700000000000000, v58, v59, v60, v61, v62, v81, v82, v83, v84, v85, v86);
      v43 = v91;
    }

    sub_100434E28(v43, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000AF9C(v63, qword_1006BA5F8);
    v64 = v42;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v85 = v27;
      v82 = v68;
      *&v91 = v68;
      *v67 = 136315138;
      v69 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
      v70 = v86;
      sub_1002CB708(0x746C7561666564, 0xE700000000000000, v69, v86);

      v71 = sub_10029142C(v70);
      v73 = v72;
      sub_100009A04(v70, &unk_1006A52C0, &unk_10057D930);
      v74 = sub_10002741C(v71, v73, &v91);

      *(v67 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v65, v66, "before add endtone the greeting is %s", v67, 0xCu);
      sub_100009B7C(v82);
      v27 = v85;
    }

    v75 = BYTE4(v84);
    sub_100434D90(v90);
    v76 = sub_100009B14(v90, v90[3]);
    v91 = *v76;
    v92 = *(v76 + 1);
    v93 = v76[4];
    v77 = sub_10040AFD0(0x746C7561666564, 0xE700000000000000);
    sub_100009B7C(v90);
    swift_beginAccess();
    v78 = v27;
    v79 = v89;
    v83(v89, v78, v41);
    v80 = v64;
    sub_10043ACE0(0x746C7561666564, 0xE700000000000000, v79, (v75 | v77) & 1, v80, v80);
    return (*(v87 + 8))(v79, v41);
  }

  else
  {
    v52 = &a3[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_delegate];
    result = swift_beginAccess();
    if (*(v52 + 3))
    {
      sub_100445858(v52, &v94);
      v54 = sub_100009B14(&v94, *(&v95 + 1));
      swift_beginAccess();
      v56 = *(a4 + 16);
      v55 = *(a4 + 24);
      v57 = *v54;

      sub_100445148(a8, v56, v55, v57);

      return sub_100009B7C(&v94);
    }
  }

  return result;
}

uint64_t sub_10043FE40(uint64_t a1, char *a2)
{
  v19 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  v20 = *&a2[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  sub_10003A270(v19, &v18 - v11, &unk_1006A52C0, &unk_10057D930);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  sub_100445BE8(v12, v14 + v13, &unk_1006A52C0, &unk_10057D930);
  aBlock[4] = sub_1004459A0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100630838;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10000F228(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v22 + 8))(v5, v3);
  (*(v6 + 8))(v8, v21);
}

void sub_1004401AC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v41[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v41[-1] - v13;
  __chkstk_darwin(v12);
  v16 = &v41[-1] - v15;
  sub_10003A270(a2, &v41[-1] - v15, &unk_1006A52C0, &unk_10057D930);
  v17 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  if (sub_100015468(v16, 1, v4) == 1)
  {
    sub_100009A04(v16, &unk_1006A52C0, &unk_10057D930);
    v18 = sub_100005208(0x746C7561666564, 0xE700000000000000);
    if (v19)
    {
      v20 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41[0] = v17;
      v22 = *(v17 + 24);
      sub_10026D814(&unk_1006ABC70, &unk_1005826D0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22);
      v17 = v41[0];

      (*(v5 + 32))(v14, *(v17 + 56) + *(v5 + 72) * v20, v4);
      _NativeDictionary._delete(at:)();
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    sub_10000AF74(v14, v23, 1, v4);
    sub_100009A04(v14, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    (*(v5 + 32))(v7, v16, v4);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_10037938C(v7, 0x746C7561666564, 0xE700000000000000, v24, v25, v26, v27, v28, v40, v17, v41[1], v41[2], v41[3], v41[4]);
    v17 = v41[0];
  }

  sub_100434E28(v17, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000AF9C(v29, qword_1006BA5F8);
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41[0] = v34;
    *v33 = 136315138;
    v35 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    sub_1002CB708(0x746C7561666564, 0xE700000000000000, v35, v11);

    v36 = sub_10029142C(v11);
    v38 = v37;
    sub_100009A04(v11, &unk_1006A52C0, &unk_10057D930);
    v39 = sub_10002741C(v36, v38, v41);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "after add endtone the greeting is %s", v33, 0xCu);
    sub_100009B7C(v34);
  }
}

uint64_t sub_100440698@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  if (*(sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict) + 16))
  {
    sub_100005208(a1, a2);
    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t type metadata accessor for GreetingsDataSource(uint64_t a1)
{
  result = qword_1006ABBD0;
  if (!qword_1006ABBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100440988(uint64_t a1)
{
  result = type metadata accessor for LanguageManager();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Locale();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_100440AF8()
{
  sub_100005EF4();
  v99 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v5);
  sub_100006688();
  __chkstk_darwin(v6);
  v97 = (&v80 - v7);
  sub_10000D414();
  v8 = type metadata accessor for URL();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007BAC();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v92 = &v80 - v16;
  sub_100006838();
  __chkstk_darwin(v17);
  v86 = &v80 - v18;
  sub_100006838();
  __chkstk_darwin(v19);
  v91 = &v80 - v20;
  sub_100006838();
  __chkstk_darwin(v21);
  v23 = &v80 - v22;
  v24 = type metadata accessor for UUID();
  sub_100007FEC();
  v26 = v25;
  v28 = __chkstk_darwin(v27);
  v87 = v29;
  v88 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v80 - v30;
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_10000AF9C(v32, qword_1006BA5F8);
  v84 = *(v26 + 16);
  v85 = v26 + 16;
  v84(v31, v2, v24);
  v34 = *(v10 + 16);
  v95 = v10 + 16;
  v96 = v4;
  v98 = v34;
  v34(v23, v4, v8);
  v94 = v33;
  v35 = Logger.logObject.getter();
  LODWORD(v93) = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v35, v93);
  v89 = v24;
  v90 = v26;
  if (v36)
  {
    v37 = sub_100007C08();
    v82 = v14;
    v38 = v37;
    v81 = sub_100007630();
    v100[0] = v81;
    *v38 = 136315394;
    sub_10000E854();
    sub_10000F228(v39, v40, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v2;
    v42 = v10;
    v44 = v43;
    (*(v26 + 8))(v31, v24);
    v45 = sub_10002741C(v41, v44, v100);

    *(v38 + 4) = v45;
    *(v38 + 12) = 2080;
    sub_100007E3C();
    sub_10000F228(v46, v47, &protocol conformance descriptor for URL);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    v51 = *(v42 + 8);
    v52 = sub_100006884();
    v51(v52);
    v53 = sub_10002741C(v48, v50, v100);
    v10 = v42;
    v2 = v83;

    *(v38 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v35, v93, "saveCustomGreeting for %s, url=%s", v38, 0x16u);
    v54 = v81;
    swift_arrayDestroy();
    sub_100005F40(v54);
    sub_100005F40(v38);
  }

  else
  {

    v55 = *(v10 + 8);
    v56 = sub_100006884();
    v55(v56);
    v57 = v31;
    v51 = v55;
    (*(v26 + 8))(v57, v24);
  }

  v58 = v97;
  v59 = 0;
  sub_10043CF08(v96, v97);
  v60 = v98;
  if (sub_100015468(v58, 1, v8) == 1)
  {
    sub_100009A04(v58, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    v61 = v91;
    (*(v10 + 32))(v91, v58, v8);
    v62 = v86;
    v60(v86, v61, v8);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    v65 = sub_10000D654(v64);
    v93 = v51;
    if (v65)
    {
      v59 = sub_100005274();
      v97 = sub_100005E84();
      v100[0] = v97;
      *v59 = 136315138;
      v60(v92, v62, v8);
      v66 = String.init<A>(reflecting:)();
      v67 = v62;
      v68 = v66;
      v70 = v69;
      (v51)(v67, v8);
      v71 = sub_10002741C(v68, v70, v100);

      *(v59 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v63, v58, "successfully saved custom greeting to: %s", v59, 0xCu);
      sub_100009B7C(v97);
      sub_100008AE8();
      sub_100005F40(v59);
    }

    else
    {

      (v51)(v62, v8);
    }

    v72 = v2;
    UUID.uuidString.getter();
    sub_10000C8E0();
    v74 = v88;
    v73 = v89;
    v84(v88, v2, v89);
    v75 = v90;
    v76 = (*(v90 + 80) + 24) & ~*(v90 + 80);
    v77 = swift_allocObject();
    v78 = v99;
    *(v77 + 16) = v99;
    (*(v75 + 32))(v77 + v76, v74, v73);
    v78;
    v79 = v91;
    sub_10043B438(v72, v59, v91, 1, sub_100446090, v77);

    v93(v79, v8);
  }

  sub_100005EDC();
}

void sub_1004413BC()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  type metadata accessor for UUID();
  sub_100007FEC();
  v65 = v6;
  v66 = v5;
  __chkstk_darwin(v5);
  sub_10000F4E8();
  v62 = v7;
  sub_100006838();
  __chkstk_darwin(v8);
  sub_10000C1C4();
  v64 = v9;
  sub_10000D414();
  v10 = type metadata accessor for URL();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v18 = sub_100007BF0(v17);
  __chkstk_darwin(v18);
  sub_10000F4E8();
  v61 = v19;
  sub_100006838();
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100007FDC();
  sub_10000C4C4();
  v27 = *(v2 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue);
  *v1 = v27;
  (*(v25 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v23);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v31(v1, v23);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    sub_1000080B0(&qword_1006A0B28);
    goto LABEL_9;
  }

  v63 = v4;
  v32 = UUID.uuidString.getter();
  v34 = v33;
  sub_10000AF74(v22, 1, 1, v10);
  v35 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  if (sub_100015468(v22, 1, v10) == 1)
  {
    sub_100009A04(v22, &unk_1006A52C0, &unk_10057D930);
    v36 = sub_100005208(v32, v34);
    if (v37)
    {
      v38 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v35;
      v40 = *(v35 + 24);
      sub_10026D814(&unk_1006ABC70, &unk_1005826D0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v40);
      v35 = v67;

      v41 = v61;
      (*(v12 + 32))(v61, *(v35 + 56) + *(v12 + 72) * v38, v10);
      _NativeDictionary._delete(at:)();
      v42 = 0;
      v30 = v66;
      v1 = v63;
      v16 = v64;
    }

    else
    {
      v42 = 1;
      v30 = v66;
      v1 = v63;
      v16 = v64;
      v41 = v61;
    }

    sub_10000AF74(v41, v42, 1, v10);

    sub_100009A04(v41, &unk_1006A52C0, &unk_10057D930);
  }

  else
  {
    (*(v12 + 32))(v16, v22, v10);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v35;
    sub_10037938C(v16, v32, v34, v43, v44, v45, v46, v47, v60, v61, v62, v63, v64, v65);

    v30 = v66;
    v35 = v67;
    v1 = v63;
    v16 = v64;
  }

  sub_100434E28(v35, &OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  v48 = UUID.uuidString.getter();
  LOBYTE(v22) = v49;
  sub_100442B38(v48, v49);

  v29 = v65;
  if (qword_1006A0B28 != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v50 = type metadata accessor for Logger();
  sub_10000AF9C(v50, qword_1006BA5F8);
  v51 = *(v29 + 16);
  v51(v16, v1, v30);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (sub_10000D654(v53))
  {
    v54 = sub_100005274();
    v55 = sub_100005E84();
    v67 = v55;
    *v54 = 136315138;
    v51(v62, v16, v30);
    String.init<A>(reflecting:)();
    (*(v29 + 8))(v16, v30);
    v56 = sub_1000060A8();
    v59 = sub_10002741C(v56, v57, v58);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v52, v22, "removed custom greeting for account %s", v54, 0xCu);
    sub_100009B7C(v55);
    sub_100005F40(v55);
    sub_100005F40(v54);
  }

  else
  {

    (*(v29 + 8))(v16, v30);
  }

  sub_100005EDC();
}

void sub_10044193C()
{
  sub_100005EF4();
  v104 = v2;
  v4 = v3;
  v98 = type metadata accessor for URL();
  sub_100007FEC();
  v96 = v5;
  __chkstk_darwin(v6);
  sub_10000F4E8();
  v95 = v7;
  sub_100006838();
  v9 = __chkstk_darwin(v8);
  v10 = __chkstk_darwin(v9);
  v12 = &v88 - v11;
  __chkstk_darwin(v10);
  sub_10000C1C4();
  v103 = v13;
  v14 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v14);
  sub_100006688();
  __chkstk_darwin(v15);
  v17 = &v88 - v16;
  type metadata accessor for UUID();
  sub_100007FEC();
  v101 = v19;
  v102 = v18;
  __chkstk_darwin(v18);
  sub_10000F4E8();
  v97 = v20;
  sub_100006838();
  __chkstk_darwin(v21);
  v23 = &v88 - v22;
  v24 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100007FDC();
  sub_10000C4C4();
  v28 = *&v0[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  *v1 = v28;
  (*(v26 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v24);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v1, v24);
  if (v28)
  {
    v90 = v12;
    v94 = v4;
    if (qword_1006A0B28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000080B0(&qword_1006A0B28);
LABEL_3:
  v30 = type metadata accessor for Logger();
  v31 = sub_10000AF9C(v30, qword_1006BA5F8);
  v33 = v101;
  v32 = v102;
  v91 = *(v101 + 16);
  v92 = v101 + 16;
  v91(v23, v104, v102);
  v34 = v0;
  v99 = v31;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v100 = v17;
  if (v37)
  {
    v38 = sub_100007C08();
    v105 = sub_100007630();
    *v38 = 136315394;
    sub_10000E854();
    sub_10000F228(v39, v40, &protocol conformance descriptor for UUID);
    dispatch thunk of CustomStringConvertible.description.getter();
    v93 = *(v33 + 8);
    v93(v23, v32);
    v41 = sub_100007A7C();

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
    v42 = v98;
    Dictionary.description.getter();
    sub_10000C8E0();

    v43 = sub_100007A7C();

    *(v38 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "customGreeting for %s, greetingsDict=%s", v38, 0x16u);
    swift_arrayDestroy();
    sub_100008AE8();
    v44 = v38;
    v17 = v100;
    sub_100005F40(v44);
  }

  else
  {

    v93 = *(v33 + 8);
    v93(v23, v32);
    v42 = v98;
  }

  v45 = UUID.uuidString.getter();
  v47 = v46;
  v48 = sub_100434DE4(&OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsDict);
  sub_1002CB708(v45, v47, v48, v17);

  sub_1002E83D0();
  URL.init(fileURLWithPath:isDirectory:)();

  UUID.uuidString.getter();
  v49 = v90;
  URL.appendingPathComponent(_:)();

  v50 = v96;
  v51 = *(v96 + 1);
  v52 = sub_1000060A8();
  v51(v52);
  sub_10000BC58();
  v53 = v103;
  URL.appendingPathComponent(_:)();
  (v51)(v49, v42);
  v54 = *(v50 + 2);
  v55 = v95;
  v54(v95, v53, v42);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  v58 = os_log_type_enabled(v56, v57);
  v89 = v51;
  if (v58)
  {
    v59 = sub_100005274();
    v96 = v54;
    v60 = v51;
    v61 = v59;
    v62 = sub_100005E84();
    v105 = v62;
    *v61 = 136315138;
    sub_100007E3C();
    sub_10000F228(v63, v64, &protocol conformance descriptor for URL);
    dispatch thunk of CustomStringConvertible.description.getter();
    v60(v55, v42);
    v54 = v96;
    v65 = sub_100007A7C();

    *(v61 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v56, v57, "rawGreetingURL %s", v61, 0xCu);
    sub_100009B7C(v62);
    v66 = v62;
    v53 = v103;
    sub_100005F40(v66);
    sub_100008AE8();
  }

  else
  {

    (v51)(v55, v42);
  }

  v67 = v97;
  v68 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v69 = String._bridgeToObjectiveC()();

  v70 = [v68 fileExistsAtPath:v69];

  if (v70)
  {
    v71 = v100;
    sub_100009A04(v100, &unk_1006A52C0, &unk_10057D930);
    v54(v71, v53, v42);
    sub_100007C20();
    sub_10000AF74(v72, v73, v74, v42);
  }

  v75 = v102;
  v91(v67, v104, v102);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = v67;
    v79 = sub_100007C08();
    v80 = sub_100007630();
    v105 = v80;
    *v79 = 136315394;
    v81 = v100;
    sub_1000052D0();
    swift_beginAccess();
    v82 = sub_10029142C(v81);
    v84 = sub_10002741C(v82, v83, &v105);

    *(v79 + 4) = v84;
    *(v79 + 12) = 2080;
    sub_10000E854();
    sub_10000F228(v85, v86, &protocol conformance descriptor for UUID);
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10000C8E0();
    v93(v78, v75);
    v87 = sub_100007A7C();

    *(v79 + 14) = v87;
    _os_log_impl(&_mh_execute_header, v76, v77, "returning %s for accountUUID %s", v79, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v80);
    sub_100005F40(v79);

    v89(v103, v98);
  }

  else
  {

    v93(v67, v75);
    v89(v53, v42);
    v81 = v100;
  }

  sub_1000052D0();
  swift_beginAccess();
  sub_10003A270(v81, v94, &unk_1006A52C0, &unk_10057D930);
  sub_100009A04(v81, &unk_1006A52C0, &unk_10057D930);
  sub_100005EDC();
}

void sub_100442294()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for URL();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  sub_100006EC4();
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_10000EC00();
  sub_10043F530(v8);
  URL.path.getter();
  (*(v5 + 8))(v0, v3);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v7 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = sub_10000EC00();
    sub_10043F530(v11);
    v12 = 0;
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0(&qword_1006A0B28);
    }

    v13 = type metadata accessor for Logger();
    sub_10000AF9C(v13, qword_1006BA5F8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (sub_10000D654(v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, 0x2Eu, "default greeting does not exist", v16, 2u);
      sub_100005F40(v16);
    }

    v12 = 1;
  }

  sub_10000AF74(v2, v12, 1, v3);
  sub_100005EDC();
}

void sub_1004424A8()
{
  sub_100005EF4();
  v45 = v0;
  v46 = v1;
  v43 = v2;
  v40 = v4;
  v41 = v3;
  v6 = v5;
  v48 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v50 = v7;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v44 = v10 - v9;
  sub_10000D414();
  v49 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v47 = v11;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v39 = v14 - v13;
  v15 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v16 = sub_100005EB4(v15);
  v18 = v17;
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v21 = type metadata accessor for UUID();
  sub_100007FEC();
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v26);
  v27 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *&v6[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  (*(v23 + 16))(v27, v40, v21);
  sub_10003A270(v41, v20, &unk_1006A52C0, &unk_10057D930);
  v28 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v29 = (v25 + *(v18 + 80) + v28) & ~*(v18 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v6;
  (*(v23 + 32))(v30 + v28, v27, v21);
  sub_100445BE8(v20, v30 + v29, &unk_1006A52C0, &unk_10057D930);
  v52[4] = v45;
  v52[5] = v30;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 1107296256;
  sub_10000A600();
  v52[2] = v31;
  v52[3] = v46;
  v32 = _Block_copy(v52);
  v33 = v6;
  v34 = v39;
  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  sub_10000AB18();
  sub_10000F228(v35, v36, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);
  v37 = sub_100007764();
  v38(v37);
  (*(v47 + 8))(v34, v49);

  sub_100005EDC();
}

uint64_t sub_100442B38(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v52 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v52 - v11;
  __chkstk_darwin(v10);
  v14 = v52 - v13;
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v55 = *(v3 + 8);
  v56 = v3 + 8;
  v55(v12, v2);
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v54 = v6;
  v15 = type metadata accessor for Logger();
  sub_10000AF9C(v15, qword_1006BA5F8);
  v16 = *(v3 + 16);
  v16(v9, v14, v2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v52[1] = v3 + 16;
  v53 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v52[0] = v14;
    v22 = v21;
    v58 = v21;
    *v20 = 136315138;
    v16(v12, v9, v2);
    v23 = String.init<A>(reflecting:)();
    v25 = v24;
    v55(v9, v2);
    v26 = sub_10002741C(v23, v25, &v58);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "removing directory %s", v20, 0xCu);
    sub_100009B7C(v22);
    v14 = v52[0];
  }

  else
  {

    v55(v9, v2);
  }

  v27 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v58 = 0;
  v31 = [v27 removeItemAtURL:v29 error:&v58];

  if (v31)
  {
    v32 = v58;
    return (v55)(v14, v2);
  }

  else
  {
    v34 = v58;
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v37 = v53;
    v36 = v54;
    v53(v54, v14, v2);
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      v58 = v52[0];
      *v40 = 136315394;
      v37(v12, v36, v2);
      v41 = String.init<A>(reflecting:)();
      v42 = v36;
      v43 = v41;
      v45 = v44;
      v46 = v55;
      v55(v42, v2);
      v47 = sub_10002741C(v43, v45, &v58);

      *(v40 + 4) = v47;
      *(v40 + 12) = 2080;
      v57 = v35;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v48 = String.init<A>(reflecting:)();
      v50 = sub_10002741C(v48, v49, &v58);

      *(v40 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v38, v39, "removing directory %s returned an error: %s", v40, 0x16u);
      swift_arrayDestroy();

      return v46(v14, v2);
    }

    else
    {

      v51 = v55;
      v55(v36, v2);
      return v51(v14, v2);
    }
  }
}

void sub_100443100()
{
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    sub_100005FAC(&_mh_execute_header, v3, v4, "subscriptionsDidChange");
    sub_100008AE8();
  }

  sub_100435BC8();
}

uint64_t sub_1004432B8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_100445C88;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100630900;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  static DispatchQoS.unspecified.getter();
  v13[1] = _swiftEmptyArrayStorage;
  sub_10000F228(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_100443558()
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "handleVMAccountsDidChange", v3, 2u);
  }

  return sub_1004378BC();
}

uint64_t sub_100443684()
{
  v0 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = [objc_opt_self() defaultManager];
  v4 = [v3 URLsForDirectory:5 inDomains:1];

  v5 = type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002E8B38(v6, v2);

  result = sub_100015468(v2, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1002E83D0();
    URL.appendingPathComponent(_:isDirectory:)();

    return (*(*(v5 - 8) + 8))(v2, v5);
  }

  return result;
}

void sub_1004437E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v44 = 0;
  v14 = [v10 removeItemAtURL:v12 error:&v44];

  if (v14)
  {
    v15 = v44;
  }

  else
  {
    v16 = v44;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v17 = [v9 defaultManager];
  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v44 = 0;
  v24 = [v17 copyItemAtURL:v20 toURL:v22 error:&v44];

  v25 = v44;
  if (v24)
  {

    v26 = v25;
  }

  else
  {
    v42 = v44;
    v27 = v44;
    v28 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000AF9C(v29, qword_1006BA5F8);
    v30 = *(v4 + 16);
    v30(v8, a2, v3);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v33 = 136315394;
      v30(v41, v8, v3);
      v34 = String.init<A>(reflecting:)();
      v36 = v35;
      (*(v4 + 8))(v8, v3);
      v37 = sub_10002741C(v34, v36, &v44);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v43 = v28;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v38 = String.init<A>(reflecting:)();
      v40 = sub_10002741C(v38, v39, &v44);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "Error copying completed greeting to %s: %s", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }
  }
}

uint64_t sub_100443C78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a1;
  v50 = type metadata accessor for URL();
  v6 = *(v50 - 8);
  v7 = __chkstk_darwin(v50);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v57 = &v48 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v48 - v15;
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  sub_100442B38(a3, a4);
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v58 = v6;
  v19 = *(v6 + 8);
  v20 = v50;
  v19(v16, v50);
  sub_100443684();
  URL.appendingPathComponent(_:)();
  v21 = v19;
  v19(v16, v20);
  sub_10043DA20(v13);
  v56 = objc_opt_self();
  v22 = [v56 defaultManager];
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  v59 = 0;
  v26 = [v22 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:0 options:0 error:&v59];

  v27 = v59;
  if (v26)
  {
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v27;

    v30 = v28;
    v31 = 0;
    v32 = *(v30 + 16);
    v33 = v58;
    v54 = v58 + 16;
    v55 = v32;
    v34 = v49;
    v52 = v13;
    v53 = v18;
    for (i = v30; ; v30 = i)
    {
      if (v55 == v31)
      {

        v21(v13, v20);
        return (v21)(v18, v20);
      }

      if (v31 >= *(v30 + 16))
      {
        __break(1u);
      }

      v35 = v57;
      (*(v33 + 16))(v57, v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v31, v20);
      URL.lastPathComponent.getter();
      URL.appendingPathComponent(_:)();

      v36 = [v56 defaultManager];
      URL._bridgeToObjectiveC()(v37);
      v39 = v38;
      v21(v35, v20);
      URL._bridgeToObjectiveC()(v40);
      v42 = v41;
      v59 = 0;
      LODWORD(v35) = [v36 copyItemAtURL:v39 toURL:v41 error:&v59];

      v43 = v59;
      if (!v35)
      {
        break;
      }

      ++v31;
      v21(v34, v20);
      v13 = v52;
      v18 = v53;
      v33 = v58;
    }

    v47 = v43;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v21(v34, v20);
    v21(v52, v20);
    v45 = v53;
  }

  else
  {
    v44 = v59;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v21(v13, v20);
    v45 = v18;
  }

  return (v21)(v45, v20);
}

uint64_t sub_100444138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v8[7] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return _swift_task_switch(sub_100444238, 0, 0);
}

uint64_t sub_100444238()
{
  if (qword_1006A07C0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[2];
  sub_10026D814(&qword_1006A4818, &qword_1005800B0);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[11] = v5;
  *(v5 + 16) = xmmword_10057D6A0;
  v6 = *(v2 + 16);
  v0[12] = v6;
  v0[13] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v5 + v4, v3, v1);
  URL.init(fileURLWithPath:)();
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1004443B8;
  v8 = v0[10];

  return sub_1002DEAC0(v8, v5);
}

uint64_t sub_1004443B8()
{
  v5 = *v1;
  sub_100008060();
  *v2 = v5;
  *(v5 + 120) = v0;

  if (v0)
  {
    v3 = sub_1004445C0;
  }

  else
  {

    v3 = sub_1004444CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004444CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  v13 = v12[12];
  v15 = v12[9];
  v14 = v12[10];
  v17 = v12[7];
  v16 = v12[8];
  v31 = v12[5];
  v18 = v12[4];
  sub_1004437E8(v14, v18);
  v13(v17, v18, v16);
  sub_100007C20();
  sub_10000AF74(v19, v20, v21, v16);
  v31(v17);
  sub_100009A04(v17, &unk_1006A52C0, &unk_10057D930);
  (*(v15 + 8))(v14, v16);

  sub_100009EF4();
  sub_100005F24();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, a10, a11, a12);
}

uint64_t sub_1004445C0()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[2];

  v1(v2, v5, v3);
  sub_100007C20();
  sub_10000AF74(v6, v7, v8, v3);
  v4(v2);

  sub_100009A04(v2, &unk_1006A52C0, &unk_10057D930);

  sub_100009EF4();

  return v9();
}

void sub_1004446A8()
{
  sub_100005EF4();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_100007FDC();
  v3 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  sub_10000C4C4();
  sub_100006890();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v16[4] = sub_1004463B4;
  v16[5] = v7;
  sub_100009FE4();
  v16[1] = 1107296256;
  sub_10000A600();
  v16[2] = v8;
  v16[3] = &unk_1006308B0;
  v9 = _Block_copy(v16);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AB18();
  sub_10000F228(v11, v12, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  v13 = sub_1000057D0();
  sub_10000F3F8(v13);
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  v14 = sub_100007764();
  v15(v14);
  (*(v5 + 8))(v1, v3);

  sub_100005EDC();
}

void sub_100444990()
{
  sub_100005EF4();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_100007FDC();
  v3 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  sub_10000C4C4();
  sub_100006890();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v16[4] = sub_100444E4C;
  v16[5] = v7;
  sub_100009FE4();
  v16[1] = 1107296256;
  sub_10000A600();
  v16[2] = v8;
  v16[3] = &unk_100630680;
  v9 = _Block_copy(v16);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AB18();
  sub_10000F228(v11, v12, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  v13 = sub_1000057D0();
  sub_10000F3F8(v13);
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  v14 = sub_100007764();
  v15(v14);
  (*(v5 + 8))(v1, v3);

  sub_100005EDC();
}

void sub_100444B94()
{
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    sub_100005FAC(&_mh_execute_header, v3, v4, "speech assets or locale changed- checking if we should regenerate greeting");
    sub_100008AE8();
  }

  sub_100435650();
}

_BYTE *storeEnumTagSinglePayload for GreetingsDataSource.MessageType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100444D88()
{
  result = qword_1006ABC60;
  if (!qword_1006ABC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABC60);
  }

  return result;
}

uint64_t sub_100444DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006ABC68, &unk_100587960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100444E68()
{
  v1 = type metadata accessor for URL();
  sub_100005EB4(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v0 + v8;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = (v0 + v9);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v0 + v10);
  v19 = *(v0 + v10 + 8);

  sub_10043E00C(v0 + v6, v12, v13, v14, v16, v17, v18, v19);
}

uint64_t sub_100444F18()
{
  sub_10000B870();
  v0 = type metadata accessor for URL();
  sub_100005EB4(v0);
  v1 = swift_task_alloc();
  v2 = sub_10000FC98(v1);
  *v2 = v3;
  v2[1] = sub_10033A9AC;
  sub_100005F24();

  return sub_10043E9DC(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100445058()
{
  v1 = type metadata accessor for URL();
  sub_100007BF0(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80));

  return sub_10043F60C(v3, v4, v5, v6, v7, v8, v9, v10);
}

void *sub_1004450E0(void *a1, SEL *a2)
{
  v2 = a1;
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C8E0();

  return v2;
}

void sub_100445148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v58 = a3;
  v62 = a1;
  v5 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v5 - 8);
  v7 = &v55 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000AF9C(v12, qword_1006BA5F8);
  v59 = *(v9 + 16);
  v60 = v9 + 16;
  v59(v11, v62, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v61 = v13;
    v17 = v16;
    v18 = swift_slowAlloc();
    v56 = v7;
    v19 = a4;
    v20 = v18;
    v64 = v18;
    *v17 = 136315138;
    v21 = URL.lastPathComponent.getter();
    v23 = v22;
    v24 = v11;
    v25 = v8;
    (*(v9 + 8))(v24, v8);
    v26 = sub_10002741C(v21, v23, &v64);

    *(v17 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "didGenerateOutgoingMessage %s", v17, 0xCu);
    sub_100009B7C(v20);
    a4 = v19;
    v7 = v56;

    v13 = v61;
  }

  else
  {

    v27 = v11;
    v25 = v8;
    (*(v9 + 8))(v27, v8);
  }

  v28 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    if ((sub_10030BF40() & 1) != 0 && (*(*(a4 + v28) + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isStopping) & 1) == 0)
    {
      v31 = v30;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v61 = v13;
        v36 = v35;
        v64 = v35;
        *v34 = 136315138;
        v63 = [v31 receptionistState];
        type metadata accessor for TUCallReceptionistState(0);
        v37 = String.init<A>(reflecting:)();
        v39 = a4;
        v40 = sub_10002741C(v37, v38, &v64);

        *(v34 + 4) = v40;
        a4 = v39;
        _os_log_impl(&_mh_execute_header, v32, v33, "didGenerateOutgoingMessage state %s", v34, 0xCu);
        sub_100009B7C(v36);
      }

      v41 = v25;
      v42 = v31;
      if ([v42 receptionistState] == 4)
      {
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, ".waitingForUserResponse -> .playingCustomMessage", v45, 2u);
        }

        [v42 setReceptionistState:5];
        v46 = String._bridgeToObjectiveC()();
        [v42 setLastReceptionistMessage:v46];

        v47 = *(a4 + OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine);
        if (v47)
        {
          v48 = v47;
          sub_10042F01C();
        }

        sub_10030A5E0();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "creating answering machine to play custom message", v51, 2u);
        }
      }

      else
      {
        if ([v42 receptionistState] != 3)
        {

          return;
        }

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "ringing with custom message", v54, 2u);
        }

        v49 = String._bridgeToObjectiveC()();
        [v42 setLastReceptionistMessage:v49];
      }

      v59(v7, v62, v41);
      sub_10000AF74(v7, 0, 1, v41);
      sub_1003087A4();

      sub_100009A04(v7, &unk_1006A52C0, &unk_10057D930);
      return;
    }
  }
}

uint64_t sub_1004457B8(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for GreetingsChecksums;
  v8[4] = &off_10062F718;
  v4 = swift_allocObject();
  v8[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v6 = a2 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsChecksums;
  os_unfair_lock_lock(v6);
  sub_100009B7C((v6 + 8));
  sub_100445858(v8, v6 + 8);
  os_unfair_lock_unlock(v6);
  return sub_100009B7C(v8);
}

uint64_t sub_100445858(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_10000F49C();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1004458C0()
{
  sub_100022C84();
  sub_10000B870();
  v0 = type metadata accessor for URL();
  sub_100005EB4(v0);
  sub_100035C50();
  v1 = swift_task_alloc();
  v2 = sub_10000FC98(v1);
  *v2 = v3;
  sub_100015BDC(v2);
  sub_100005F24();

  return sub_100444138(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_1004459A0()
{
  v1 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_1004401AC(v3, v4);
}

uint64_t sub_100445A0C()
{
  sub_100005EF4();
  v1 = type metadata accessor for URL();
  sub_100007FEC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + 7 + v5) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v8 = *(v3 + 8);
  v8(v0 + v5, v1);

  v8(v0 + ((v4 + v7 + 8) & ~v4), v1);

  sub_100015D74();
  sub_100005EDC();

  return _swift_deallocObject(v9);
}

uint64_t sub_100445B08()
{
  sub_100022C84();
  sub_10000B870();
  v0 = type metadata accessor for URL();
  sub_100005EB4(v0);
  sub_100035C50();
  v1 = swift_task_alloc();
  v2 = sub_10000FC98(v1);
  *v2 = v3;
  sub_100015BDC(v2);
  sub_100005F24();

  return sub_100444138(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100445BE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100007674(a1, a2, a3, a4);
  sub_100008070();
  v5 = sub_100006B30();
  v6(v5);
  return v4;
}

unint64_t sub_100445C34()
{
  result = qword_1006ABC90;
  if (!qword_1006ABC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABC90);
  }

  return result;
}

uint64_t sub_100445C90()
{
  v0 = type metadata accessor for UUID();
  sub_100007BF0(v0);
  v1 = sub_100006884();

  return sub_10043BC8C(v1, v2, v3, v4);
}

uint64_t sub_100445D0C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_100005EB4(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for URL();
  sub_100007BF0(v8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_100439C20(a1, v10, v1 + v5, v11);
}

void sub_100445DD8()
{
  v1 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for UUID();
  sub_100005EB4(v6);
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for URL();
  sub_100007BF0(v11);
  v13 = *(v0 + v10);
  v14 = (v0 + ((v10 + *(v12 + 80) + 8) & ~*(v12 + 80)));

  sub_10043A158(v0 + v3, v0 + v9, v13, v14);
}

void sub_100445F08()
{
  v1 = type metadata accessor for UUID();
  sub_100005EB4(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + v7);
  v10 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10043C044(v8, v0 + v6, v9, v10);
}

uint64_t sub_100445FE4()
{
  type metadata accessor for UUID();
  sub_100007FEC();

  v1 = sub_100007728();
  v2(v1);
  v3 = sub_100015D74();

  return _swift_deallocObject(v3);
}

void sub_1004460B8()
{
  v0 = type metadata accessor for UUID();
  sub_100007BF0(v0);
  sub_1004424A8();
}

uint64_t sub_100446144()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100005EB4(v7);
  v9 = (v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for URL();
  if (!sub_100015468(v0 + v9, 1, v10))
  {
    sub_10000F49C();
    (*(v11 + 8))(v0 + v9, v10);
  }

  return _swift_deallocObject(v0);
}

void sub_1004462B4()
{
  v0 = type metadata accessor for UUID();
  sub_100005EB4(v0);
  v1 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v1);
  sub_100442874();
}

void sub_1004463D4(uint64_t a1, void *a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
    sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
    Set.Iterator.init(_cocoa:)();
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = 0;
  v22 = v4;
  v24 = v2;
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      v2 = v24;
      goto LABEL_23;
    }

    sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
    swift_dynamicCast();
    v15 = v30;
    v13 = v5;
    v14 = v6;
    v2 = v24;
    if (!v30)
    {
      goto LABEL_23;
    }

LABEL_17:
    v16 = [v15 cluster];
    if (v16)
    {
      v17 = v16;
      sub_100006AF0(0, &qword_1006ABD38, TUConversationParticipantCluster_ptr);
      v18 = a2;
      v19 = static NSObject.== infix(_:_:)();

      v20 = v19 & 1;
      v2 = v24;
    }

    else
    {

      v20 = 0;
    }

    v5 = v13;
    v6 = v14;
    v21 = __OFADD__(v10, v20);
    v10 += v20;
    if (v21)
    {
      __break(1u);
LABEL_23:
      sub_100022DDC(v2);

      return;
    }
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_13:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_100446668(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_10003D4D0(v2);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10057D690;
    [v2 originatingUIType];
    v5 = String.init<A>(reflecting:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100009D88();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    v8 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Reporting originating UI type as =%@", 36, 2, &_mh_execute_header, v3, v8, v4);

    LODWORD(v3) = [v2 originatingUIType];

    *(v1 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_originatingUIType) = v3;
  }

  else
  {
    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
    v10 = static OS_os_log.default.getter();
    v9 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Found no active call to update originatingUIType", 48, 2, &_mh_execute_header, v10, v9, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10044680C(void *a1)
{
  v2 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maximumMemberCount;
  v3 = *(v1 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maximumMemberCount);
  v4 = [a1 remoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_10001E550();

  v7 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    if (v7 <= v3)
    {
      v7 = v3;
    }

    *(v1 + v2) = v7;
  }

  return result;
}

void *sub_1004468E0()
{
  v1 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipantsNearbyWithLocalParticipant;
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipantsNearbyWithLocalParticipant);
  result = sub_100447B78();
  if (result <= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = result;
  }

  *(v0 + v1) = v4;
  return result;
}

id sub_100446928(void *a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v4);
  sub_100006688();
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for Date();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007BAC();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v18 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timebase;
  swift_beginAccess();
  sub_100270E18(v2 + v18, v7);
  if (sub_100015468(v7, 1, v8) == 1)
  {
    return sub_100009A5C(v7, &qword_1006A3C70, &unk_10057EA80);
  }

  (*(v10 + 32))(v17, v7, v8);
  v20 = [a1 activeRemoteParticipants];
  sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
  sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
  sub_100009F18();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = sub_10001E550();

  result = [a1 state];
  v22 = result == 3;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    if (v24 <= *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipants))
    {
      v24 = *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipants);
    }

    *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipants) = v24;
    v25 = [a1 activeRemoteParticipants];
    sub_100009F18();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = sub_10001E550();

    if (v26 < 1)
    {
      v32 = *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasHadActiveParticipants);
      if (v32 != 2 && (v32 & 1) != 0)
      {
        Date.init()();
        Date.timeIntervalSince(_:)();
        v34 = v33;
        v35 = *(v10 + 8);
        v35(v14, v8);
        result = (v35)(v17, v8);
        v36 = v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone;
        *v36 = v34;
        *(v36 + 8) = 0;
        return result;
      }
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasHadActiveParticipants) = 1;
      v27 = v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone;
      if ((*(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone + 8) & 1) == 0)
      {
        v28 = *v27;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v30 = v29;
        v31 = *(v10 + 8);
        v31(v14, v8);
        result = (v31)(v17, v8);
        *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_cumulativeTimeAlone) = v30 - v28 + *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_cumulativeTimeAlone);
        *v27 = 0;
        *(v27 + 8) = 1;
        return result;
      }
    }

    return (*(v10 + 8))(v17, v8);
  }

  return result;
}

void *sub_100446D6C(void *result)
{
  v2 = *(v1 + *result);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + *result) = v4;
  }

  return result;
}

uint64_t sub_100446D88(uint64_t result)
{
  if (result)
  {
    v2 = (v1 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIApprovals);
    v3 = *(v1 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIApprovals);
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (!v4)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v2 = (v1 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIDismissals);
  v6 = *(v1 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIDismissals);
  v4 = __OFADD__(v6, 1);
  v5 = v6 + 1;
  if (!v4)
  {
LABEL_6:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100446DCC(void *a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v5 = sub_100007BF0(v4);
  __chkstk_darwin(v5);
  sub_100007BAC();
  v38 = v6 - v7;
  sub_100006838();
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for Date();
  sub_100007FEC();
  v37 = v12;
  __chkstk_darwin(v13);
  sub_100007BAC();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v20 = [a1 remoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = sub_10001E550();

  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_finalMemberCount) = v21 + 1;
    v23 = [a1 isOneToOneModeEnabled];
    *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uPlusOneModeAtEnd) = v23;
    v24 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timebase;
    swift_beginAccess();
    sub_100270E18(v2 + v24, v10);
    v25 = &unk_1006BA000;
    if (sub_100015468(v10, 1, v11) == 1)
    {
      sub_100009A5C(v10, &qword_1006A3C70, &unk_10057EA80);
    }

    else
    {
      v26 = v37;
      (*(v37 + 32))(v19, v10, v11);
      Date.init()();
      Date.timeIntervalSince(_:)();
      v28 = v27;
      v29 = *(v26 + 8);
      v29(v16, v11);
      v30 = v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_relativeEnd;
      *v30 = v28;
      *(v30 + 8) = 0;
      v31 = v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_duration;
      *v31 = v28 - *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_relativeStart);
      *(v31 + 8) = 0;
      v32 = [a1 activeRemoteParticipants];
      sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = sub_10001E550();

      v29(v19, v11);
      v25 = &unk_1006BA000;
      if (!v33 && (*(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone + 8) & 1) == 0)
      {
        v34 = v28 - *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone);
        *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_cumulativeTimeAlone) = v34 + *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_cumulativeTimeAlone);
        *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timeAloneAtEnd) = v34;
      }
    }

    v35 = v38;
    sub_10000AF74(v38, 1, 1, v11);
    swift_beginAccess();
    sub_1003B3734(v35, v2 + v24);
    result = swift_endAccess();
    v36 = v2 + v25[302];
    *v36 = 0;
    *(v36 + 8) = 1;
    *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasHadActiveParticipants) = 2;
  }

  return result;
}

void sub_1004471E0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v4);
  sub_100006688();
  __chkstk_darwin(v5);
  v100 = v95 - v6;
  v7 = type metadata accessor for Date();
  sub_100007FEC();
  v104 = v8;
  __chkstk_darwin(v9);
  sub_100007BAC();
  v102 = v10 - v11;
  sub_100006838();
  __chkstk_darwin(v12);
  v103 = v95 - v13;
  sub_100006838();
  __chkstk_darwin(v14);
  v106 = v95 - v15;
  v16 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v17 = sub_100007BF0(v16);
  __chkstk_darwin(v17);
  sub_100007BAC();
  v101 = v18 - v19;
  sub_100006838();
  __chkstk_darwin(v20);
  v22 = v95 - v21;
  v23 = type metadata accessor for UUID();
  sub_100007FEC();
  v25 = v24;
  __chkstk_darwin(v26);
  v28 = v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_relativeEnd];
  *v29 = 0;
  v30 = 1;
  v29[8] = 1;
  v31 = &v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_duration];
  *v31 = 0;
  v31[8] = 1;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_originatingUIType] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_AVCBlobRecoveryAttempts] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_AVCBlobRecoveryTimeouts] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_remoteMemberNotInMemberListCounts] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_transitionAttempts] = 0;
  v96 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipantsNearbyWithLocalParticipant;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipantsNearbyWithLocalParticipant] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_switchToOneToOneModeFailures] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_switchToGFTModeFailures] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIRequests] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIApprovals] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIDismissals] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_messageRetryAttempts] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_messageRetryFailures] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_messageRetrySuccesses] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_avcBlobRecoveryMessageRetryAttempts] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_avcBlobRecoveryMessageRetryFailures] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_avcBlobRecoveryMessageRetrySuccesses] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_cumulativeTimeAlone] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timeAloneAtEnd] = 0;
  v99 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timebase;
  v105 = v7;
  sub_10000AF74(&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timebase], 1, 1, v7);
  v97 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasHadActiveParticipants;
  v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasHadActiveParticipants] = 2;
  v32 = &v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone];
  *v32 = 0;
  v32[8] = 1;
  v33 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = UUID.uuidString.getter();
  v36 = v35;
  v37 = *(v25 + 8);
  v95[1] = v25 + 8;
  v37(v28, v23);
  v38 = &v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uuid];
  *v38 = v34;
  v38[1] = v36;
  v39 = sub_1000160B0();
  v40 = [v39 conversationID];

  v41 = v101;
  if (v40)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
  }

  sub_10000AF74(v41, v30, 1, v23);
  sub_100286068(v41, v22);
  v42 = sub_100015468(v22, 1, v23);
  v43 = v105;
  if (v42 == 1)
  {
    sub_100009A5C(v22, &unk_1006A3DD0, &unk_10057C9D0);
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v44 = UUID.uuidString.getter();
    v45 = v46;
    v37(v22, v23);
  }

  v47 = v102;
  v48 = &v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_CID];
  *v48 = v44;
  v48[1] = v45;
  v49 = v106;
  Date.init()();
  v50 = sub_1000160B0();
  v51 = v104;
  if (v50)
  {

    v52 = sub_1000160B0();
    v53 = [v52 timebase];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v51 + 8))(v47, v43);
    v54 = sub_1000160B0();
    v55 = [v54 timebase];

    v56 = v103;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v56 = v103;
    (*(v104 + 16))(v103, v49, v43);
  }

  Date.timeIntervalSince(_:)();
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_relativeStart] = v57;
  Date.timeIntervalSinceReferenceDate.getter();
  v59 = v58 / 14400.0;
  if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v59 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v59 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  Date.init(timeIntervalSinceReferenceDate:)();
  (*(v51 + 32))(&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_conversationBaseTime], v47, v43);
  v60 = v100;
  (*(v51 + 16))(v100, v56, v43);
  sub_10000AF74(v60, 0, 1, v43);
  v61 = v99;
  swift_beginAccess();
  sub_1003B3734(v60, &v2[v61]);
  swift_endAccess();
  v62 = [a1 remoteMembers];
  sub_100011550();
  sub_100006AF0(v63, v64, v65);
  sub_100011550();
  sub_10000CE3C(v66, v67, v68);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v69 = sub_10001E550();

  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_initialMemberCount] = v69;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maximumMemberCount] = v69;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_finalMemberCount] = v69;
  v70 = [a1 activeRemoteParticipants];
  sub_100009F18();
  sub_100006AF0(v71, v72, v73);
  sub_100009F18();
  sub_10000CE3C(v74, v75, v76);
  sub_100011550();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = sub_10001E550();

  v78 = [a1 state] == 3;
  v79 = __OFADD__(v77, v78);
  v80 = v77 + v78;
  if (v79)
  {
LABEL_19:
    __break(1u);
    return;
  }

  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipants] = v80;
  *&v2[v96] = sub_100447B78();
  v81 = [a1 isOneToOneModeEnabled];
  v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uPlusOneModeAtStart] = v81;
  v82 = [a1 isOneToOneModeEnabled];
  v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uPlusOneModeAtEnd] = v82;
  v83 = [a1 link];
  v84 = v83;
  if (v83)
  {
  }

  v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasLink] = v84 != 0;
  v85 = [a1 isPendingConversation];
  v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_isPending] = v85;
  v86 = [a1 activeRemoteParticipants];
  sub_100011550();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v87 = sub_10001E550();

  v2[v97] = v87 > 0;
  v88 = [a1 provider];
  v89 = [v88 identifier];

  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;

  v93 = &v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_conversationProvider];
  *v93 = v90;
  v93[1] = v92;
  v107.receiver = v2;
  v107.super_class = ObjectType;
  objc_msgSendSuper2(&v107, "init");

  v94 = *(v51 + 8);
  v94(v56, v43);
  v94(v106, v43);
}

void *sub_100447B78()
{
  v1 = [v0 localParticipantCluster];
  v2 = v1;
  if (v1)
  {
    if ([v1 type] == 1)
    {
      v3 = [v0 activeRemoteParticipants];
      sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = v2;
      sub_1004463D4(v4, v5);
      v2 = v6;
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

uint64_t sub_100447CC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65766974616C6572 && a2 == 0xED00007472617453;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 4475203 && a2 == 0xE300000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000100577B70 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000100562A50 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6B6E694C736168 && a2 == 0xE700000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E69646E65507369 && a2 == 0xE900000000000067;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65766974616C6572 && a2 == 0xEB00000000646E45;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x800000010056E950 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x800000010056E970 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000011 && 0x800000010056EB10 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x8000000100577BB0 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000012 && 0x8000000100577BD0 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000010 && 0x8000000100577BF0 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000017 && 0x8000000100577C10 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000017 && 0x8000000100577C30 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000017 && 0x8000000100577C50 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000021 && 0x8000000100577C70 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000012 && 0x8000000100577CA0 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000031 && 0x8000000100577CC0 == a2;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD00000000000001CLL && 0x8000000100577D00 == a2;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000017 && 0x8000000100577D20 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000011 && 0x8000000100577D40 == a2;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000012 && 0x8000000100577D60 == a2;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000013 && 0x8000000100577D80 == a2;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000014 && 0x8000000100577DA0 == a2;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000014 && 0x8000000100577DC0 == a2;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000015 && 0x8000000100577DE0 == a2;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000023 && 0x8000000100577E00 == a2;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000023 && 0x8000000100577E30 == a2;
                                                              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000024 && 0x8000000100577E60 == a2;
                                                                if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000013 && 0x8000000100577E90 == a2;
                                                                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0x6E6F6C41656D6974 && a2 == 0xEE00646E45744165;
                                                                    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0x65736162656D6974 && a2 == 0xE800000000000000;
                                                                      if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000018 && 0x8000000100577EC0 == a2;
                                                                        if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else if (a1 == 0xD000000000000010 && 0x8000000100577EE0 == a2)
                                                                        {

                                                                          return 36;
                                                                        }

                                                                        else
                                                                        {
                                                                          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v42)
                                                                          {
                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            return 37;
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
      }
    }
  }
}

uint64_t sub_100448764(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0x65766974616C6572;
      break;
    case 2:
      result = 4475203;
      break;
    case 3:
    case 4:
    case 26:
    case 27:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x6B6E694C736168;
      break;
    case 6:
      result = 0x6E69646E65507369;
      break;
    case 8:
      v3 = 0x697461727564;
      goto LABEL_18;
    case 9:
    case 25:
    case 32:
      result = 0xD000000000000013;
      break;
    case 10:
    case 11:
    case 23:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
    case 36:
      result = 0xD000000000000010;
      break;
    case 15:
    case 16:
    case 17:
    case 22:
      result = 0xD000000000000017;
      break;
    case 18:
      result = 0xD000000000000021;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD000000000000031;
      break;
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0xD000000000000015;
      break;
    case 29:
    case 30:
      result = 0xD000000000000023;
      break;
    case 31:
      result = 0xD000000000000024;
      break;
    case 33:
      v3 = 0x6C41656D6974;
LABEL_18:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E6F000000000000;
      break;
    case 34:
      result = 0x65736162656D6974;
      break;
    case 35:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100448AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100447CC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100448AFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10044875C();
  *a1 = result;
  return result;
}

uint64_t sub_100448B24(uint64_t a1)
{
  v2 = sub_100449564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100448B60(uint64_t a1)
{
  v2 = sub_100449564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for RTCCSDConversationInfo(uint64_t a1)
{
  result = qword_1006ABD18;
  if (!qword_1006ABD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100448CA0(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100316450(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100448DF8(void *a1)
{
  v3 = v1;
  v5 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v5);
  sub_100006688();
  __chkstk_darwin(v6);
  v8 = &v18[-v7 - 8];
  v9 = sub_10026D814(&qword_1006ABD28, &qword_100587AC0);
  sub_100007FEC();
  v11 = v10;
  sub_100006688();
  __chkstk_darwin(v12);
  v14 = &v18[-v13 - 8];
  sub_100009B14(a1, a1[3]);
  sub_100449564();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18[0] = 0;
  sub_10000F708();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v18[0] = 1;
    sub_10000F708();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10000A488(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18[0] = 3;
    type metadata accessor for Date();
    sub_1004495B8(&qword_1006A6D30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10000F708();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10000A488(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100008880(5);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(6);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100015398(OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_relativeEnd);
    sub_10000A488(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100015398(OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_duration);
    sub_10000A488(8);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100008880(9);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(10);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(11);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(12);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(13);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(14);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(15);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(16);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(17);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(18);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(19);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(20);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(21);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(22);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(23);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(24);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(25);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(26);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(27);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(28);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(29);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(30);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008880(31);
    KeyedEncodingContainer.encode(_:forKey:)();
    v18[0] = 32;
    sub_10000F708();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18[0] = 33;
    sub_10000F708();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timebase;
    swift_beginAccess();
    sub_100270E18(v3 + v15, v8);
    v19 = 34;
    sub_10000F708();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100009A5C(v8, &qword_1006A3C70, &unk_10057EA80);
    v19 = 35;
    sub_10000F708();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100015398(OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone);
    v19 = 36;
    sub_10000F708();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_10044950C(uint64_t a1)
{
  result = sub_1004495B8(&qword_1006A39C8, type metadata accessor for RTCCSDConversationInfo, &unk_100587A70);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100449564()
{
  result = qword_1006ABD30;
  if (!qword_1006ABD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABD30);
  }

  return result;
}

uint64_t sub_1004495B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for RTCCSDConversationInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDC)
  {
    if (a2 + 36 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 36) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 37;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v5 = v6 - 37;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RTCCSDConversationInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDB)
  {
    v6 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
          *result = a2 + 36;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100449768()
{
  result = qword_1006ABD40;
  if (!qword_1006ABD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABD40);
  }

  return result;
}

unint64_t sub_1004497C0()
{
  result = qword_1006ABD48;
  if (!qword_1006ABD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABD48);
  }

  return result;
}

unint64_t sub_100449818()
{
  result = qword_1006ABD50;
  if (!qword_1006ABD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABD50);
  }

  return result;
}

void sub_10044986C(uint64_t a1)
{
  sub_100449908(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Locale();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100449908(uint64_t a1)
{
  if (!qword_1006ABDC0)
  {
    type metadata accessor for CallTranslationDisclosureFileLocation();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006ABDC0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CallTranslationDisclosureDescriptor.DisclosureState(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100449A40()
{
  result = qword_1006ABDF8;
  if (!qword_1006ABDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABDF8);
  }

  return result;
}

uint64_t sub_100449A94@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 translationDisclosureLocation];
  *(v10 + 1) = v11;
  v12 = [a2 remoteLocale];
  v13 = *(v8 + 28);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  if ([a2 translationState] == 2)
  {

    v14 = 0;
LABEL_5:
    v10[16] = v14;
    *v10 = a3;
    v10[4] = BYTE4(a3);
    v10[5] = BYTE5(a3) & 1;
    sub_10044A04C(v10, a4);
    sub_10000AF74(a4, 0, 1, v8);
    return sub_10044A0B0(v10);
  }

  v15 = [a2 translationState];

  if (v15 == 4)
  {
    v14 = 1;
    goto LABEL_5;
  }

  v17 = type metadata accessor for Locale();
  (*(*(v17 - 8) + 8))(&v10[v13], v17);
  return sub_10000AF74(a4, 1, 1, v8);
}

unint64_t sub_100449C5C(uint64_t a1)
{
  result = sub_100449C84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100449C84()
{
  result = qword_1006ABE00;
  if (!qword_1006ABE00)
  {
    type metadata accessor for CallTranslationDisclosureDescriptor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABE00);
  }

  return result;
}

uint64_t sub_100449CDC(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 1);
  v6 = *(a2 + 1);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    type metadata accessor for CallTranslationDisclosureFileLocation();
    v7 = v6;
    v8 = v5;
    v9 = static NSObject.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  type metadata accessor for CallTranslationDisclosureDescriptor(0);
  if ((static Locale.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 5);
  v11 = *(a2 + 5);
  result = v11 & v10;
  if ((v11 & 1) == 0 && (v10 & 1) == 0)
  {
    v12 = *a1 | ((a1[1] & 1) << 32);
    v13 = *a2 | ((a2[1] & 1) << 32);

    return sub_10029CD10(v12, v13);
  }

  return result;
}

unint64_t sub_100449DF4()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = 0xD000000000000024;
  v16 = 0x8000000100577FA0;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v14._countAndFlagsBits = 0xD000000000000013;
  v14._object = 0x8000000100577FD0;
  v5._countAndFlagsBits = sub_10029163C(*(v0 + 8));
  String.append(_:)(v5);

  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  String.append(_:)(v14);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v14._countAndFlagsBits = 0xD00000000000001CLL;
  v14._object = 0x8000000100577FF0;
  v13[15] = *(v0 + 16);
  v7._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  String.append(_:)(v14);

  strcpy(&v14, "remoteLocale=");
  HIWORD(v14._object) = -4864;
  v9 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  (*(v2 + 16))(v4, v0 + *(v9 + 28), v1);
  v10._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v10);

  String.append(_:)(v14);

  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return v15;
}

uint64_t sub_10044A04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044A0B0(uint64_t a1)
{
  v2 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10044A10C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_volumeReduction] = 1031878742;
  v2 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_activeDescriptor;
  v3 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  sub_10000AF74(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer] = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer] = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer] = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer] = 0;
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStartPlayerFinishPlayback] = 0;
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStopPlayerFinishPlayback] = 0;
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStartPlayerFinishPlayback] = 0;
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStopPlayerFinishPlayback] = 0;
  v4 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags;
  *&v0[v4] = [objc_allocWithZone(TUFeatureFlags) init];
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localInjectionMode] = 0;
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteInjectionMode] = 0;
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_currentDisclosureConfiguration] = 1;
  v5 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_microphoneInjectionUtilities;
  *&v0[v5] = [objc_allocWithZone(type metadata accessor for MicrophoneInjectionUtilities()) init];
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t type metadata accessor for CallTranslationDisclosureProvider(uint64_t a1)
{
  result = qword_1006ABE40;
  if (!qword_1006ABE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044A384(uint64_t a1)
{
  sub_10044A45C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10044A45C(uint64_t a1)
{
  if (!qword_1006ABE50)
  {
    type metadata accessor for CallTranslationDisclosureDescriptor(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006ABE50);
    }
  }
}

void sub_10044A4B4(uint64_t a1)
{
  v3 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  sub_100008070();
  __chkstk_darwin(v4);
  sub_100007BAC();
  v50 = v5 - v6;
  v8 = __chkstk_darwin(v7);
  v49 = &v49 - v9;
  __chkstk_darwin(v8);
  v11 = (&v49 - v10);
  v12 = sub_10026D814(&unk_1006ABE90, &qword_100585598);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  __chkstk_darwin(v16 - 8);
  sub_100007BAC();
  v19 = v17 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = (&v49 - v22);
  __chkstk_darwin(v21);
  v25 = &v49 - v24;
  sub_10044A04C(a1, &v49 - v24);
  sub_10000AF74(v25, 0, 1, v3);
  v26 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_activeDescriptor;
  swift_beginAccess();
  v27 = *(v13 + 56);
  sub_10044C3A0(v25, v15);
  sub_10044C3A0(v1 + v26, &v15[v27]);
  sub_100008860(v15);
  if (!v28)
  {
    sub_10044C3A0(v15, v23);
    sub_100008860(&v15[v27]);
    if (!v28)
    {
      sub_10044C410(&v15[v27], v11);
      v33 = sub_100449CDC(v23, v11);
      sub_10044A0B0(v11);
      sub_100009A04(v25, &unk_1006A2B50, &unk_1005811A0);
      sub_10044A0B0(v23);
      sub_100009A04(v15, &unk_1006A2B50, &unk_1005811A0);
      if (v33)
      {
        goto LABEL_14;
      }

LABEL_10:
      sub_10044A04C(a1, v19);
      sub_10000AF74(v19, 0, 1, v3);
      swift_beginAccess();
      sub_10004DEE0(v19, v1 + v26);
      swift_endAccess();
      sub_10044AA1C(a1);
      v29 = *(a1 + 16);
      v31 = sub_100010B20(v30);
      v32 = static os_log_type_t.default.getter();
      if (v29)
      {
        os_log(_:dso:log:type:_:)("Asked to begin playing call translation stop disclosure", 55, 2, &_mh_execute_header, v31, v32, _swiftEmptyArrayStorage);

        sub_10044B3E4();
      }

      else
      {
        os_log(_:dso:log:type:_:)("Asked to begin playing call translation start disclosure", 56, 2, &_mh_execute_header, v31, v32, _swiftEmptyArrayStorage);

        sub_10044B31C();
      }

      return;
    }

    sub_100009A04(v25, &unk_1006A2B50, &unk_1005811A0);
    sub_10044A0B0(v23);
LABEL_9:
    sub_100009A04(v15, &unk_1006ABE90, &qword_100585598);
    goto LABEL_10;
  }

  sub_100009A04(v25, &unk_1006A2B50, &unk_1005811A0);
  sub_100008860(&v15[v27]);
  if (!v28)
  {
    goto LABEL_9;
  }

  sub_100009A04(v15, &unk_1006A2B50, &unk_1005811A0);
LABEL_14:
  if (qword_1006A0B30 != -1)
  {
    sub_100008720(&qword_1006A0B30);
  }

  v34 = type metadata accessor for Logger();
  sub_10000AF9C(v34, qword_1006BA610);
  v35 = v49;
  sub_10044A04C(a1, v49);
  v36 = v50;
  sub_10044A04C(a1, v50);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v51[0] = v40;
    *v39 = 136315394;
    sub_10044A04C(v35, v11);
    v41 = sub_1000160C8();
    v43 = v42;
    sub_10044A0B0(v35);
    v44 = sub_10002741C(v41, v43, v51);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;
    sub_10044A04C(v36, v11);
    v45 = sub_1000160C8();
    v47 = v46;
    sub_10044A0B0(v36);
    v48 = sub_10002741C(v45, v47, v51);

    *(v39 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v37, v38, "Asked to begin or update playback of disclosure, but new descriptor %s is equal to activeDescriptor%s so doing nothing", v39, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v40);
    sub_100005F40(v39);
  }

  else
  {

    sub_10044A0B0(v36);
    sub_10044A0B0(v35);
  }
}

void sub_10044AA1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v5 = __chkstk_darwin(v4 - 8);
  v87 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v89 = &v82 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v86 = &v82 - v13;
  __chkstk_darwin(v12);
  v88 = &v82 - v14;
  v15 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  v16 = __chkstk_darwin(v15);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v82 - v19;
  if (qword_1006A0B30 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_10000AF9C(v21, qword_1006BA610);
  v23 = a1;
  sub_10044A04C(a1, v20);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v84 = v2;
    v27 = v26;
    v28 = swift_slowAlloc();
    v82 = v8;
    v83 = v9;
    v29 = v28;
    *&v90[0] = v28;
    *v27 = 136315138;
    sub_10044A04C(v20, v18);
    v30 = String.init<A>(reflecting:)();
    v31 = v22;
    v33 = v32;
    sub_10044A0B0(v20);
    v34 = sub_10002741C(v30, v33, v90);
    v22 = v31;

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "Creating translation disclosure audio players for descriptor: %s", v27, 0xCu);
    sub_100009B7C(v29);
    v8 = v82;
    v9 = v83;

    v2 = v84;
  }

  else
  {

    sub_10044A0B0(v20);
  }

  v35 = *(v23 + 8);
  if (!v35)
  {
    goto LABEL_12;
  }

  v36 = &v35[OBJC_IVAR___CSDCallTranslationDisclosureFileLocation_translationDisclosureDataSource];
  sub_100009B14(&v35[OBJC_IVAR___CSDCallTranslationDisclosureFileLocation_translationDisclosureDataSource], *&v35[OBJC_IVAR___CSDCallTranslationDisclosureFileLocation_translationDisclosureDataSource + 24]);
  v37 = v35;
  v38 = v89;
  sub_10038053C(1, v89);
  v39 = v38;
  if (sub_100015468(v38, 1, v8) == 1)
  {
    v40 = v38;
LABEL_11:

    sub_100009A04(v40, &unk_1006A52C0, &unk_10057D930);
LABEL_12:
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Not able to get the local/remote disclosure location", v45, 2u);
    }

    goto LABEL_28;
  }

  v83 = v22;
  v84 = v37;
  v41 = *(v9 + 32);
  v42 = v88;
  v41(v88, v39, v8);
  sub_100009B14(v36, *(v36 + 3));
  v40 = v87;
  sub_100380548(1, v87);
  if (sub_100015468(v40, 1, v8) == 1)
  {
    (*(v9 + 8))(v42, v8);
    v37 = v84;
    goto LABEL_11;
  }

  v46 = v86;
  v41(v86, v40, v8);
  v47 = [*&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags] simultaneousTranslationDisclosureEnabled];
  if (v47)
  {
    v48 = 2;
  }

  else
  {
    v48 = 1;
  }

  v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localInjectionMode] = v47 ^ 1;
  v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteInjectionMode] = v48;
  if (v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_currentDisclosureConfiguration] == 1)
  {
    v49 = _TUIsInternalInstall();
    v50 = v88;
    if (v49)
    {
      v51 = objc_opt_self();
      v52 = [v51 tu_defaults];
      v53 = String._bridgeToObjectiveC()();
      v54 = [v52 objectForKey:v53];

      if (v54)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100009A04(v90, &unk_1006A2D10, &unk_10057D940);
        v55 = [v51 tu_defaults];
        v56 = String._bridgeToObjectiveC()();
        [v55 floatForKey:v56];
        v58 = v57;

        v59 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_volumeReduction;
        *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_volumeReduction] = v58;
        v60 = v2;
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 134217984;
          *(v63 + 4) = *&v2[v59];
          _os_log_impl(&_mh_execute_header, v61, v62, "Setting volumeReduction to %f", v63, 0xCu);
        }
      }

      else
      {
        memset(v90, 0, sizeof(v90));
        sub_100009A04(v90, &unk_1006A2D10, &unk_10057D940);
      }

      v50 = v88;
      v46 = v86;
    }

    v74 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_volumeReduction;
    v75 = sub_10044C4CC(v50, v2, *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_volumeReduction]);
    v76 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer];
    *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer] = v75;

    v77 = sub_10044C4CC(v46, v2, *&v2[v74]);
    v78 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer];
    *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer] = v77;

    v79 = sub_10044C4CC(v50, v2, 1.0);
    v80 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer];
    *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer] = v79;

    v73 = sub_10044C4CC(v46, v2, 1.0);
    v81 = *(v9 + 8);
    v81(v46, v8);
    v81(v50, v8);
  }

  else
  {
    sub_100009B14(v36, *(v36 + 3));
    v64 = v85;
    sub_1003804B4();
    v65 = sub_10044C4CC(v64, v2, 1.0);
    v66 = *(v9 + 8);
    v66(v64, v8);
    v67 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer];
    *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer] = v65;

    sub_100009B14(v36, *(v36 + 3));
    sub_1003804C0();
    v68 = sub_10044C4CC(v64, v2, 1.0);
    v66(v64, v8);
    v69 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer];
    *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer] = v68;

    v70 = v88;
    v71 = sub_10044C4CC(v88, v2, 1.0);
    v72 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer];
    *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer] = v71;

    v73 = sub_10044C4CC(v46, v2, 1.0);
    v66(v46, v8);
    v66(v70, v8);
  }

  v43 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer];
  *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer] = v73;
LABEL_28:
}

void sub_10044B31C()
{
  sub_10004DAF4();
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer);
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localInjectionMode);
  v3 = v1;
  sub_10044B564(v1, v2);

  if ([*(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags) simultaneousTranslationDisclosureEnabled])
  {
    v4 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer);
    v5 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteInjectionMode);
    v6 = v4;
    sub_10044B564(v4, v5);
  }

  if (!*(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer))
  {
    *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStartPlayerFinishPlayback) = 1;
  }
}

void sub_10044B3E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer);
  if (v1)
  {
    v2 = v1;
    if ([v2 isPlaying])
    {
      [v2 stop];
      [v2 setCurrentTime:0.0];

      *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStartPlayerFinishPlayback) = 0;
    }

    else
    {
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer);
  if (v3)
  {
    v4 = v3;
    if ([v4 isPlaying])
    {
      [v4 stop];
      [v4 setCurrentTime:0.0];

      *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStopPlayerFinishPlayback) = 0;
    }

    else
    {
    }
  }

  v5 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer);
  v6 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localInjectionMode);
  v7 = v5;
  sub_10044B564(v5, v6);

  if ([*(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags) simultaneousTranslationDisclosureEnabled])
  {
    v8 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer);
    v9 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteInjectionMode);
    v10 = v8;
    sub_10044B564(v8, v9);
  }

  if (!*(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer))
  {
    *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStopPlayerFinishPlayback) = 1;
  }
}

void sub_10044B564(void *a1, unsigned __int8 a2)
{
  if (a1)
  {
    v4 = qword_1006A0B30;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AF9C(v6, qword_1006BA610);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Playing audio for translation disclosure", v9, 2u);
    }

    v16 = v5;
    sub_1003C4830(a1, a2, 0, 1);

    if (([v16 play]& 1) == 0)
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Error playing audio for translation disclosure!", v12, 2u);
      }
    }
  }

  else
  {
    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000AF9C(v13, qword_1006BA610);
    v16 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v16, v14, "Audio player is nil, cannot play!", v15, 2u);
    }
  }
}

uint64_t sub_10044B7EC(void *a1)
{
  v2 = v1;
  v4 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v76 - v5;
  v7 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  sub_100008070();
  __chkstk_darwin(v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_activeDescriptor;
  swift_beginAccess();
  sub_10044C3A0(v2 + v11, v6);
  if (sub_100015468(v6, 1, v7) == 1)
  {
    return sub_100009A04(v6, &unk_1006A2B50, &unk_1005811A0);
  }

  sub_10044C410(v6, v10);
  if ((v10[16] & 1) == 0)
  {
    v19 = (v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer);
    v20 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer);
    if (v20 && (sub_1003FE870(), v21 = a1, v22 = v20, sub_10000AB30(), v23 = static NSObject.== infix(_:_:)(), v20, v21, (v23 & 1) != 0))
    {
      sub_1000173E8(OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStartPlayerFinishPlayback);
      v24 = v19;
      if (([*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags) simultaneousTranslationDisclosureEnabled] & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v24 = (v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer);
      v20 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer);
      if (!v20 || (sub_1003FE870(), v35 = a1, v36 = v20, sub_10000AB30(), v37 = static NSObject.== infix(_:_:)(), v20, v35, (v37 & 1) == 0))
      {
LABEL_26:
        if (([*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags) simultaneousTranslationDisclosureEnabled] & 1) == 0)
        {
          v54 = *v19;
          if (*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_currentDisclosureConfiguration))
          {
            if (v54)
            {
              sub_1003FE870();
              v55 = a1;
              v56 = sub_10000F8C4(v54);

              if (v56)
              {
                v57 = *v19;
                v58 = *v19;
                sub_1003C4478(v57);

                v60 = sub_100010B20(v59);
                static os_log_type_t.default.getter();
                sub_100008378();
                os_log(_:dso:log:type:_:)(v61);

                v43 = [objc_opt_self() defaultCenter];
LABEL_43:
                v52 = v43;
                if (qword_1006A0788 != -1)
                {
                  swift_once();
                }

                v53 = qword_1006BA1B8;
                goto LABEL_46;
              }
            }
          }

          else if (v54)
          {
            sub_1003FE870();
            v69 = a1;
            v70 = sub_10000F8C4(v54);

            if (v70)
            {
              v72 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer;
              if (*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer))
              {
                v73 = sub_100010B20(v71);
                static os_log_type_t.default.getter();
                sub_100008378();
                os_log(_:dso:log:type:_:)(v74);

                v75 = *(v2 + v72);
                sub_10001155C();
              }
            }
          }
        }

        sub_10000EC18();
        if (!v30)
        {
          return sub_10044A0B0(v10);
        }

        sub_10000EC18();
        if (!v30)
        {
          return sub_10044A0B0(v10);
        }

        v41 = sub_100010B20(v40);
        static os_log_type_t.default.getter();
        sub_100008378();
        os_log(_:dso:log:type:_:)(v42);

        v43 = [objc_opt_self() defaultCenter];
        goto LABEL_43;
      }

      sub_1000173E8(OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStartPlayerFinishPlayback);
    }

    v38 = *v24;
    v39 = sub_10000AB30();
    sub_1003C4478(v39);

    goto LABEL_26;
  }

  v13 = (v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer);
  v14 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer);
  if (v14 && (sub_1003FE870(), v15 = a1, v16 = v14, sub_10000AB30(), v17 = static NSObject.== infix(_:_:)(), v14, v15, (v17 & 1) != 0))
  {
    sub_1000173E8(OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStopPlayerFinishPlayback);
    v18 = v13;
    if (([*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags) simultaneousTranslationDisclosureEnabled] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = (v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer);
    v14 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer);
    if (!v14)
    {
      goto LABEL_16;
    }

    sub_1003FE870();
    v25 = a1;
    v26 = v14;
    sub_10000AB30();
    v27 = static NSObject.== infix(_:_:)();

    if ((v27 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1000173E8(OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStopPlayerFinishPlayback);
  }

  v28 = *v18;
  v29 = sub_10000AB30();
  sub_1003C4478(v29);

LABEL_16:
  if ([*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags) simultaneousTranslationDisclosureEnabled])
  {
    goto LABEL_17;
  }

  v44 = *v13;
  if ((*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_currentDisclosureConfiguration) & 1) == 0)
  {
    if (v44)
    {
      sub_1003FE870();
      v62 = a1;
      v63 = sub_10000F8C4(v44);

      if (v63)
      {
        v65 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer;
        if (*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer))
        {
          v66 = sub_100010B20(v64);
          static os_log_type_t.default.getter();
          sub_100008378();
          os_log(_:dso:log:type:_:)(v67);

          v68 = *(v2 + v65);
          sub_10001155C();
        }
      }
    }

    goto LABEL_17;
  }

  if (!v44 || (sub_1003FE870(), v45 = a1, v46 = sub_10000F8C4(v44), v44, v45, (v46 & 1) == 0))
  {
LABEL_17:
    sub_10000EC18();
    if (!v30)
    {
      return sub_10044A0B0(v10);
    }

    sub_10000EC18();
    if (!v30)
    {
      return sub_10044A0B0(v10);
    }

    v32 = sub_100010B20(v31);
    static os_log_type_t.default.getter();
    sub_100008378();
    os_log(_:dso:log:type:_:)(v33);

    v34 = [objc_opt_self() defaultCenter];
    goto LABEL_36;
  }

  v47 = *v13;
  v48 = *v13;
  sub_1003C4478(v47);

  v50 = sub_100010B20(v49);
  static os_log_type_t.default.getter();
  sub_100008378();
  os_log(_:dso:log:type:_:)(v51);

  v34 = [objc_opt_self() defaultCenter];
LABEL_36:
  v52 = v34;
  if (qword_1006A0790 != -1)
  {
    swift_once();
  }

  v53 = qword_1006BA1C0;
LABEL_46:
  [v52 postNotificationName:v53 object:0];

  return sub_10044A0B0(v10);
}

void sub_10044C018(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1006A0B30 != -1)
    {
      sub_100008720(&qword_1006A0B30);
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA610);
    v4 = a1;
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v6 = 138412546;
      *(v6 + 4) = v4;
      *v7 = v4;
      *(v6 + 12) = 2080;
      v9 = v4;
      swift_errorRetain();
      sub_10026D814(&unk_1006ABE80, &unk_100581F90);
      v10 = String.init<A>(describing:)();
      v12 = sub_10002741C(v10, v11, &v14);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v5, "audioPlayerDecodeErrorDidOccur for %@, error: %s", v6, 0x16u);
      sub_100009A04(v7, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v7);
      sub_100009B7C(v8);
      sub_100005F40(v8);
      sub_100005F40(v6);
    }

    else
    {
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CallTranslationDisclosureProvider.disclosureConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10044C34C()
{
  result = qword_1006ABE58;
  if (!qword_1006ABE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABE58);
  }

  return result;
}

uint64_t sub_10044C3A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044C410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10044C474(uint64_t a1, uint64_t a2, float a3)
{

  return sub_10044C4CC(a1, a2, a3);
}

id sub_10044C4CC(uint64_t a1, uint64_t a2, float a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100007BAC();
  __chkstk_darwin(v8);
  v10 = &v39[-1] - v9;
  v11 = *(v7 + 16);
  v11(&v39[-1] - v9, a1, v6);
  v12 = objc_allocWithZone(AVAudioPlayer);
  v13 = sub_10039F99C(v10);
  [v13 setNumberOfLoops:0];
  *&v14 = a3;
  [v13 setVolume:v14];
  [v13 setDelegate:a2];
  v15 = [objc_opt_self() auxiliarySession];
  v39[0] = 0;
  if ([v15 setCategory:AVAudioSessionCategoryVoiceOver withOptions:1 error:v39])
  {
    v16 = v39[0];
    v17 = sub_100010B20([v13 setAudioSession:v15]);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v18 = swift_allocObject();
    v19 = sub_10000E86C(v18, xmmword_10057D6A0);
    (v11)(v19);
    v20 = sub_1000160C8();
    v22 = v21;
    v18[3].n128_u64[1] = &type metadata for String;
    v18[4].n128_u64[0] = sub_100009D88();
    v18[2].n128_u64[0] = v20;
    v18[2].n128_u64[1] = v22;
    v18[6].n128_u64[0] = &type metadata for Float;
    v18[6].n128_u64[1] = &protocol witness table for Float;
    v18[4].n128_f32[2] = a3;
    v23 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Created uplink/downlink audio player with URL %@, volume: %f", 60, 2, &_mh_execute_header, v17, v23, v18);
  }

  else
  {
    v24 = v39[0];
    v25 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v27 = sub_100010B20(v26);
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v28 = swift_allocObject();
    v29 = sub_10000E86C(v28, xmmword_10057D6A0);
    (v11)(v29);
    v30 = sub_1000160C8();
    v32 = v31;
    v28[3].n128_u64[1] = &type metadata for String;
    v33 = sub_100009D88();
    v28[4].n128_u64[0] = v33;
    v28[2].n128_u64[0] = v30;
    v28[2].n128_u64[1] = v32;
    v39[0] = v25;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v34 = String.init<A>(reflecting:)();
    v28[6].n128_u64[0] = &type metadata for String;
    v28[6].n128_u64[1] = v33;
    v28[4].n128_u64[1] = v34;
    v28[5].n128_u64[0] = v35;
    sub_100008378();
    os_log(_:dso:log:type:_:)(v36);

    return 0;
  }

  return v13;
}

uint64_t sub_10044C950(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

char *sub_10044C998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments;
  *&v5[OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments] = 0;
  swift_unknownObjectWeakInit();
  v12 = *&v5[v11];
  *&v5[v11] = 0;

  swift_unknownObjectWeakAssign();
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "init");
  v14 = sub_10044D574(a1, a2, a3, v13, a5);
  swift_unknownObjectRelease();
  if (v14)
  {
    v15 = *&v13[OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments];
    *&v13[OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments] = v14;
  }

  else
  {

    return 0;
  }

  return v13;
}

id sub_10044CB50()
{
  result = *(v0 + OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments);
  if (result)
  {
    return [result streamToken];
  }

  __break(1u);
  return result;
}

SEL *sub_10044CC24(SEL *result)
{
  if (*(v1 + OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments))
  {
    return [*(v1 + OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments) *result];
  }

  __break(1u);
  return result;
}

id sub_10044CC44(id result, unsigned __int8 a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments);
  if (v5)
  {
    v6 = a4;
    v8 = result;
    if (a4)
    {
      v9 = v5;
      v6 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = v5;
    }

    v11 = [v5 newRequestWithMediaType:v8 mode:a2 requesteeID:v6];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10044CE1C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result moments:v2 capabilitiesDidChange:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_10044CF08(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    if (a3)
    {
      a3 = _convertErrorToNSError(_:)();
    }

    [v9 *a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10044CFB8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, SEL *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  sub_10044CF08(v13, a4, a5, a6);
}

void *sub_10044D108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_1003507C4(a3, v16);
    v19 = type metadata accessor for URL();
    v21 = 0;
    if (sub_100015468(v16, 1, v19) != 1)
    {
      URL._bridgeToObjectiveC()(v20);
      v21 = v22;
      (*(*(v19 - 8) + 8))(v16, v19);
    }

    sub_1003507C4(a4, v14);
    if (sub_100015468(v14, 1, v19) == 1)
    {
      v24 = 0;
      if (!a5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      URL._bridgeToObjectiveC()(v23);
      v24 = v25;
      (*(*(v19 - 8) + 8))(v14, v19);
      if (!a5)
      {
LABEL_9:
        [v18 moments:v6 didEndProcessingRequest:a2 stillImageURL:v21 movieURL:v24 error:a5];

        return swift_unknownObjectRelease();
      }
    }

    a5 = _convertErrorToNSError(_:)();
    goto LABEL_9;
  }

  return result;
}

void *sub_10044D48C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector:"momentsServerDidDisconnect:"])
    {
      [v2 momentsServerDidDisconnect:v0];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10044D574(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(AVCMoments) initWithStreamToken:a1 requesterID:v8 delegate:a4 dispatchQueue:a5];

  return v9;
}

uint64_t sub_10044D610(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_10000AF74(v6, 1, 1, v7);
  sub_100008BA8();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  sub_100008BA8();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_100587EA0;
  v9[5] = v8;
  sub_10044EEA8(0, 0, v6, &unk_100587EB0, v9);
}

uint64_t sub_10044D718(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10044D73C, 0, 0);
}

uint64_t sub_10044D73C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = [v1 queue];
  v0[6] = v4;
  v5 = sub_1002EDD40();
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  *v7 = v0;
  v7[1] = sub_10044D894;

  return __ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v0 + 9, v4, v5, 0, 0, &unk_100587EE0, v6, &type metadata for Bool);
}

uint64_t sub_10044D894()
{
  sub_10000C698();
  sub_100005F18();
  v3 = *(v2 + 48);
  v4 = *v1;
  sub_100008060();
  *v5 = v4;

  if (v0)
  {
    v6 = sub_10044D9D8;
  }

  else
  {

    v6 = sub_10044D9BC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10044D9D8()
{
  sub_100006810();

  v0 = sub_10001157C();

  return v1(v0);
}

uint64_t sub_10044DA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_10044DAE4;

  return sub_10044DC24(a3, a4);
}

uint64_t sub_10044DAE4()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  v6 = *v1;
  sub_100008060();
  *v7 = v6;
  *(v5 + 40) = v0;

  if (v0)
  {
    v8 = sub_1002F761C;
  }

  else
  {
    *(v5 + 48) = v3 & 1;
    v8 = sub_10044DC00;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10044DC24(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for AuthorizationRequestOverrides.PromptCondition();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for DispatchPredicate();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_10044DD44, 0, 0);
}

uint64_t sub_10044DD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v83 = v12;
  v14 = *(v12 + 200);
  v13 = *(v12 + 208);
  v15 = *(v12 + 192);
  *v13 = [*(v12 + 160) queue];
  (*(v14 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v15);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v13, v15);
  if (v16)
  {
    if (qword_1006A0C18 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = *(v12 + 144);
  v18 = type metadata accessor for Logger();
  v19 = sub_10000AF9C(v18, qword_1006ABF38);
  v20 = v17;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v12 + 144);
    v24 = sub_100007C08();
    v25 = swift_slowAlloc();
    v26 = sub_100005E84();
    v82 = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_10000A4A0(v26, v27);
    *(v24 + 12) = 2112;
    *(v24 + 14) = v23;
    *v25 = v23;
    v28 = v23;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s: %@", v24, 0x16u);
    sub_1000099A4(v25, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v25);
    sub_100009B7C(v26);
    sub_100005F40(v26);
    sub_100005F40(v24);
  }

  v29 = [*(v12 + 144) isSystemActivity];
  v30 = *(v12 + 144);
  if (v29)
  {
    v31 = v30;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v12 + 144);
      sub_100007C08();
      v35 = sub_10000FE98();
      v36 = sub_100005E84();
      v82 = v36;
      *v19 = 136315394;
      v38 = sub_10000A4A0(v36, v37);
      sub_10000EC24(v38);
      *(v19 + 14) = v34;
      *v35 = v34;
      v39 = v34;
      v40 = "%s: Approving system activity %@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v32, v33, v40, v19, 0x16u);
      sub_1000099A4(v35, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v35);
      sub_100009B7C(v36);
      sub_100005F40(v36);
      sub_100005F40(v19);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v41 = [v30 isPlaceholderActivity];
  v42 = *(v12 + 144);
  if (v41)
  {
    v43 = v42;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v44 = *(v12 + 144);
      sub_100007C08();
      v35 = sub_10000FE98();
      v36 = sub_100005E84();
      v82 = v36;
      *v19 = 136315394;
      v46 = sub_10000A4A0(v36, v45);
      sub_10000EC24(v46);
      *(v19 + 14) = v44;
      *v35 = v44;
      v47 = v44;
      v40 = "%s: Approving placeholder activity %@";
      goto LABEL_11;
    }

LABEL_12:

    v48 = *(v12 + 8);
    v49 = 1;
LABEL_13:

    return v48(v49);
  }

  sub_1002C89F0(v42);
  if (!v51)
  {
    sub_10044F4A0();
    swift_allocError();
    *v53 = 1;
    swift_willThrow();

    v49 = sub_10001157C();
    goto LABEL_13;
  }

  if (*(v12 + 152))
  {
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = sub_100005E84();
      v82 = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_10000A4A0(v57, v58);
      _os_log_impl(&_mh_execute_header, v54, v55, "%s: Found activity creation option to skip replacement prompt", v56, 0xCu);
      sub_100009B7C(v57);
      sub_100005F40(v57);
      sub_100005F40(v56);
    }

    (*(*(v12 + 176) + 104))(*(v12 + 184), enum case for AuthorizationRequestOverrides.PromptCondition.automatic(_:), *(v12 + 168));
    v59 = objc_allocWithZone(type metadata accessor for AuthorizationRequestOverrides());
    v60 = AuthorizationRequestOverrides.init(promptCondition:)();
    dispatch thunk of AuthorizationRequestOverrides.confirmReplacement.setter();
    v52 = v60;
  }

  else
  {
    v52 = 0;
  }

  *(v12 + 216) = v52;
  v61 = *(v12 + 144);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = *(v12 + 144);
    sub_100007C08();
    v65 = sub_10000FE98();
    v66 = sub_100005E84();
    v82 = v66;
    *v19 = 136315394;
    v67 = sub_10002741C(0xD00000000000002FLL, 0x8000000100578790, &v82);
    sub_10000EC24(v67);
    *(v19 + 14) = v64;
    *v65 = v64;
    v68 = v64;
    _os_log_impl(&_mh_execute_header, v62, v63, "%s: Requesting authorization for application for %@", v19, 0x16u);
    sub_1000099A4(v65, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v65);
    sub_100009B7C(v66);
    sub_100005F40(v66);
    sub_100005F40(v19);
  }

  v69 = *(v12 + 160);
  v70 = [v69 activityAuthorizationManager];
  *(v12 + 224) = v70;
  v71 = String._bridgeToObjectiveC()();
  *(v12 + 232) = v71;

  v72 = [v69 screenSharingActivityManager];
  v73 = *&v72[OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes];
  *(v12 + 240) = v73;
  swift_unknownObjectRetain();

  *(v12 + 16) = v12;
  *(v12 + 56) = v12 + 256;
  *(v12 + 24) = sub_10044E4C8;
  v74 = swift_continuation_init();
  *(v12 + 136) = sub_10026D814(&qword_1006A5E40, &qword_100580BC0);
  *(v12 + 80) = _NSConcreteStackBlock;
  *(v12 + 88) = 1107296256;
  *(v12 + 96) = sub_100331448;
  *(v12 + 104) = &unk_100630E28;
  *(v12 + 112) = v74;
  [v70 requestAuthorizationForApplicationWithBundleIdentifier:v71 preparing:0 overrides:v52 currentScreenShareAttributes:v73 completionHandler:v12 + 80];

  return _swift_continuation_await(v12 + 16, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12);
}

uint64_t sub_10044E4C8()
{
  sub_100006810();
  sub_100005F18();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 248) = v2;
  if (v2)
  {
    v3 = sub_10044E674;
  }

  else
  {
    v3 = sub_10044E5D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10044E5D0()
{
  sub_1000066BC();
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);

  v4 = *(v0 + 256);
  swift_unknownObjectRelease();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10044E674()
{
  sub_1000066BC();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  swift_willThrow();

  swift_unknownObjectRelease();

  v4 = sub_10001157C();

  return v5(v4);
}

uint64_t sub_10044E7A8(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_10044E874;

  return sub_10044D718(v8, a2);
}

uint64_t sub_10044E874(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_100008060();
  *v7 = v6;
  v8 = v5[3];
  v9 = v5[2];
  v10 = *v2;
  *v7 = *v2;

  v11 = v5[4];
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(v5[4], a1 & 1, 0);
  }

  _Block_release(v6[4]);
  v13 = v10[1];

  return v13();
}

uint64_t sub_10044EA1C()
{
  sub_1000066BC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10000F8E0(v1);

  return v3(v2);
}

uint64_t sub_10044EABC()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006ABF38);
  sub_10000AF9C(v0, qword_1006ABF38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10044EB3C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1002FA1E0;

  return v6();
}

uint64_t sub_10044EC24()
{
  sub_1000066BC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10000F8E0(v1);

  return v3(v2);
}

uint64_t sub_10044ECC4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1002F92EC;

  return v7();
}

uint64_t sub_10044EDAC()
{
  swift_unknownObjectRelease();

  sub_100008BA8();

  return _swift_deallocObject(v0);
}

uint64_t sub_10044EDE8()
{
  sub_1000066BC();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_10000A58C(v6);
  *v7 = v8;
  v7[1] = sub_1002F92EC;

  return sub_10044ECC4(v2, v3, v4, v5);
}

uint64_t sub_10044EEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_1002EE1BC(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (sub_100015468(v11, 1, v12) == 1)
  {
    sub_1000099A4(v11, &qword_1006A5310, &qword_10057D580);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1000099A4(a3, &qword_1006A5310, &qword_10057D580);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000099A4(a3, &qword_1006A5310, &qword_10057D580);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_10044F174(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10044F26C;

  return v6(a1);
}

uint64_t sub_10044F26C()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10044F354()
{
  sub_10000C698();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v3 = sub_100008040(v1);

  return v4(v3);
}

uint64_t sub_10044F3E8()
{
  sub_1000066BC();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_10000A58C(v8);
  *v9 = v10;
  v9[1] = sub_1002F92EC;

  return sub_10044DA34(v4, v5, v6, v7, v2);
}

unint64_t sub_10044F4A0()
{
  result = qword_1006ABF50;
  if (!qword_1006ABF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABF50);
  }

  return result;
}

_BYTE *_s33ActivitySessionAuthorizationErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10044F5D4()
{
  result = qword_1006ABF58;
  if (!qword_1006ABF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABF58);
  }

  return result;
}

id sub_10044F628(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v6 content:a3 trigger:a4];

  return v7;
}

void sub_10044F6AC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
    sub_10000CE3C(&unk_1006A2600, &unk_1006A4820, TUConversationActivitySession_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v21 = v3;
  v22 = _swiftEmptyArrayStorage;
  v23 = v1;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_24;
      }

      sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
      swift_dynamicCast();
      v13 = v29;
      v4 = v9;
      v5 = v10;
      if (!v29)
      {
LABEL_25:
        v1 = v23;
LABEL_24:
        sub_100022DDC(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_25;
    }

LABEL_18:
    v14 = sub_100021AEC([v13 activity]);
    v16 = v15;

    v9 = v4;
    v10 = v5;
    v1 = v23;
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100017840();
        v22 = v19;
      }

      v17 = v22[2];
      if (v17 >= v22[3] >> 1)
      {
        sub_100017840();
        v22 = v20;
      }

      v22[2] = v17 + 1;
      v18 = &v22[2 * v17];
      v18[4] = v14;
      v18[5] = v16;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

NSString sub_10044F95C()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.foregroundApplicationChanged = result;
  return result;
}

uint64_t *NSNotificationName.foregroundApplicationChanged.unsafeMutableAddressor()
{
  if (qword_1006A0C20 != -1)
  {
    sub_10000F904(&qword_1006A0C20);
  }

  return &static NSNotificationName.foregroundApplicationChanged;
}

id static NSNotificationName.foregroundApplicationChanged.getter()
{
  if (qword_1006A0C20 != -1)
  {
    sub_10000F904(&qword_1006A0C20);
  }

  v1 = static NSNotificationName.foregroundApplicationChanged;

  return v1;
}

unint64_t sub_10044FA74(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100620EB8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10044FAC0()
{
  swift_getObjectType();
  sub_10026D814(&qword_1006ABFD8, &unk_100588060);
  v1 = String.init<A>(describing:)();
  if (*(v0 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_notificationType))
  {
    v2 = 0x656E6F6850;
  }

  else
  {
    v2 = 0x656D695465636146;
  }

  if (*(v0 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_notificationType))
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v6 = v1;

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  return v6;
}

uint64_t sub_10044FB98(uint64_t a1)
{
  v2 = v1;
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
  v40 = v16 - v15;
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C(&qword_1006A0B70);
  }

  v17 = type metadata accessor for Logger();
  sub_10000AF9C(v17, qword_1006BA6D0);
  sub_100009AB0(a1, aBlock);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v39 = v13;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v45[0] = v37;
    *v36 = 136315138;
    v20 = a1;
    v21 = v10;
    v22 = v11;
    v23 = v4;
    v24 = v6;
    v38 = v1;
    v26 = v42;
    v25 = v43;
    sub_100009B14(aBlock, v42);
    v27 = v26;
    v6 = v24;
    v4 = v23;
    v11 = v22;
    v10 = v21;
    a1 = v20;
    v28 = (*(v25 + 2))(v27, v25);
    v30 = v29;
    sub_100009B7C(aBlock);
    v31 = sub_10002741C(v28, v30, v45);
    v2 = v38;

    *(v36 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v18, v19, "Received response with identifier %s", v36, 0xCu);
    sub_100009B7C(v37);
    sub_100005F40(v37);
    v13 = v39;
    sub_100005F40(v36);
  }

  else
  {

    sub_100009B7C(aBlock);
  }

  sub_100009AB0(a1, v45);
  v32 = swift_allocObject();
  sub_10002F0C8(v45, v32 + 16);
  *(v32 + 56) = v2;
  v43 = sub_100455478;
  v44 = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  v42 = &unk_100630FA0;
  v33 = _Block_copy(aBlock);
  v34 = v2;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);
  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v40, v11);
}

void sub_10044FF94(void *a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v4 - 8);
  v6 = (v74 - v5);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  sub_100009B14(a1, v11);
  v79._countAndFlagsBits = (*(v12 + 8))(v11, v12);
  switch(sub_10044FA74(v79))
  {
    case 1u:
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000AF9C(v37, qword_1006BA6D0);
      sub_100009AB0(a1, v76);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_25;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v75[0] = v17;
      *v16 = 136315138;
      v38 = v77;
      v39 = v78;
      sub_100009B14(v76, v77);
      v40 = (*(v39 + 16))(v38, v39);
      v42 = v41;
      sub_100009B7C(v76);
      v43 = sub_10002741C(v40, v42, v75);

      *(v16 + 4) = v43;
      v24 = "continueActivity action for notification: %s";
      goto LABEL_24;
    case 2u:
      v25 = a1[3];
      v26 = a1[4];
      sub_100009B14(a1, v25);
      (*(v26 + 24))(v25, v26);
      v74[1] = 0xD000000000000025;
      v74[2] = 0x8000000100578870;
      AnyHashable.init<A>(_:)();
      sub_100006600();

      sub_100006780(v76);
      if (v75[3])
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_20;
        }

        UUID.init(uuidString:)();

        if (sub_100015468(v6, 1, v7) != 1)
        {
          (*(v8 + 32))(v10, v6, v7);
          v51 = *(a2 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_conversationManager);
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v53 = [v51 activeConversationWithGroupUUID:isa];

          if (v53)
          {
            v54 = sub_100450A24(v53);
            if (!v54)
            {
              (*(v8 + 8))(v10, v7);

              return;
            }

            v55 = v54;
            [v51 joinConversationWithRequest:v54];
            if (qword_1006A0B70 != -1)
            {
              swift_once();
            }

            v56 = type metadata accessor for Logger();
            sub_10000AF9C(v56, qword_1006BA6D0);
            v57 = v55;
            v58 = Logger.logObject.getter();
            v59 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v58, v59))
            {
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              *v60 = 138412290;
              *(v60 + 4) = v57;
              *v61 = v55;
              v62 = v57;
              _os_log_impl(&_mh_execute_header, v58, v59, "Created and sent a joinRequest for conversation %@", v60, 0xCu);
              sub_100009A5C(v61, &unk_1006A2630, &qword_10057CB40);
            }

            else
            {
            }
          }

          else
          {
            if (qword_1006A0B70 != -1)
            {
              swift_once();
            }

            v63 = type metadata accessor for Logger();
            sub_10000AF9C(v63, qword_1006BA6D0);
            sub_100009AB0(a1, v76);
            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v64, v65))
            {

              (*(v8 + 8))(v10, v7);
              goto LABEL_26;
            }

            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v75[0] = v67;
            *v66 = 136315138;
            v68 = v77;
            v69 = v78;
            sub_100009B14(v76, v77);
            v70 = (*(v69 + 16))(v68, v69);
            v72 = v71;
            sub_100009B7C(v76);
            v73 = sub_10002741C(v70, v72, v75);

            *(v66 + 4) = v73;
            _os_log_impl(&_mh_execute_header, v64, v65, "Could not find conversation for notification: %s", v66, 0xCu);
            sub_100009B7C(v67);
          }

          (*(v8 + 8))(v10, v7);
          return;
        }

        v27 = &unk_1006A3DD0;
        v28 = &unk_10057C9D0;
        v29 = v6;
      }

      else
      {
        v27 = &unk_1006A2D10;
        v28 = &unk_10057D940;
        v29 = v75;
      }

      sub_100009A5C(v29, v27, v28);
LABEL_20:
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000AF9C(v44, qword_1006BA6D0);
      sub_100009AB0(a1, v76);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v14, v15))
      {
LABEL_25:

LABEL_26:
        sub_100009B7C(v76);
        return;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v75[0] = v17;
      *v16 = 136315138;
      v45 = v77;
      v46 = v78;
      sub_100009B14(v76, v77);
      v47 = (*(v46 + 16))(v45, v46);
      v49 = v48;
      sub_100009B7C(v76);
      v50 = sub_10002741C(v47, v49, v75);

      *(v16 + 4) = v50;
      v24 = "Could not create groupUUID for notification: %s";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v14, v15, v24, v16, 0xCu);
      sub_100009B7C(v17);

      return;
    case 3u:
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_10000AF9C(v30, qword_1006BA6D0);
      sub_100009AB0(a1, v76);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_25;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v75[0] = v17;
      *v16 = 136315138;
      v31 = v77;
      v32 = v78;
      sub_100009B14(v76, v77);
      v33 = (*(v32 + 8))(v31, v32);
      v35 = v34;
      sub_100009B7C(v76);
      v36 = sub_10002741C(v33, v35, v75);

      *(v16 + 4) = v36;
      v24 = "Unknown notification response received %s";
      goto LABEL_24;
    default:
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000AF9C(v13, qword_1006BA6D0);
      sub_100009AB0(a1, v76);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_25;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v75[0] = v17;
      *v16 = 136315138;
      v18 = v77;
      v19 = v78;
      sub_100009B14(v76, v77);
      v20 = (*(v19 + 16))(v18, v19);
      v22 = v21;
      sub_100009B7C(v76);
      v23 = sub_10002741C(v20, v22, v75);

      *(v16 + 4) = v23;
      v24 = "requestScreenShare action for notification: %s";
      goto LABEL_24;
  }
}

uint64_t sub_100450A24(uint64_t a1)
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 queue];

  sub_10026D814(&unk_1006ABFC8, &unk_100588050);
  OS_dispatch_queue.sync<A>(execute:)();

  return v4;
}

uint64_t type metadata accessor for SharePlayNotificationProvider(uint64_t a1)
{
  result = qword_1006ABFB0;
  if (!qword_1006ABFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100450C80(uint64_t a1)
{
  sub_1002FAAA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100450D88(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for UUID();
  v22 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 callContainer];

  v15 = [v14 frontmostCall];
  swift_unknownObjectRelease();
  v16 = [objc_allocWithZone(TUJoinConversationRequest) initWithConversation:a1 originatingUIType:65];
  [v16 setWantsStagingArea:1];
  if (v15)
  {
    v17 = [v15 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v22 + 32);
    v18(v6, v10, v7);
    sub_10000AF74(v6, 0, 1, v7);
    v18(v12, v6, v7);
  }

  else
  {
    sub_10000AF74(v6, 1, 1, v7);
    v19 = [a1 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_100015468(v6, 1, v7) != 1)
    {
      sub_100009A5C(v6, &unk_1006A3DD0, &unk_10057C9D0);
    }
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v22 + 8))(v12, v7);
  [v16 setUUID:isa];

  *a2 = v16;
}

void sub_10045109C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v54 = *(v4 - 8);
  __chkstk_darwin(v4);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA6D0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v52 = a1;
    v14 = v4;
    v15 = v2;
    v16 = v13;
    v17 = swift_slowAlloc();
    v56 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_10002741C(0xD000000000000023, 0x8000000100578A00, &v56);
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s", v16, 0xCu);
    sub_100009B7C(v17);

    v2 = v15;
    v4 = v14;
    a1 = v52;
  }

  v18 = *(v2 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_queue);
  *v9 = v18;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v18)
  {
    if (TUSharePlayForceDisabled())
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "SharePlay force disabled, not posting foreground application notification.", v22, 2u);
LABEL_12:

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (CPForegroundApplication.applicationType.getter() == 2)
    {
      v23 = a1;
      v20 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v55 = v23;
        v56 = v26;
        *v25 = 136315138;
        type metadata accessor for CPForegroundApplication();
        v27 = v23;
        v28 = String.init<A>(reflecting:)();
        v30 = sub_10002741C(v28, v29, &v56);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v20, v24, "Not posting notification for unsupported foreground application: %s", v25, 0xCu);
        sub_100009B7C(v26);

        goto LABEL_12;
      }

LABEL_13:

      return;
    }

    v31 = [objc_allocWithZone(UNMutableNotificationContent) init];
    v32 = CPForegroundApplication.applicationType.getter();
    v33 = CPForegroundApplication.isGameCenterApplication.getter();
    v34 = "WILL_SHAREPLAY_AUTOMATICALLY";
    v35 = "CHOOSE_CONTENT_TO_USE_SHAREPLAY";
    if (v32 == 1)
    {
      v34 = "PLAY_THIS_GAME_USING_SHAREPLAY";
    }

    v36 = 0xD00000000000001CLL;
    v37 = 0xD00000000000001ELL;
    if (v32 == 1)
    {
      v37 = 0xD000000000000021;
    }

    else
    {
      v35 = "(for:conversation:participant:)";
    }

    if (v32 != 1)
    {
      v36 = 0xD00000000000001FLL;
    }

    if (v33)
    {
      v38 = v37;
    }

    else
    {
      v34 = v35;
      v38 = v36;
    }

    sub_10031E958(v38, (v34 | 0x8000000000000000));
    CPForegroundApplication.localizedApplicationName.getter();
    v39 = String._bridgeToObjectiveC()();

    [v31 setTitle:v39];

    v40 = String._bridgeToObjectiveC()();

    [v31 setBody:v40];

    [v31 setSound:0];
    v41 = sub_10044FAC0();
    sub_1004554A0(v41, v42, v31);
    sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
    v43 = v53;
    UUID.init()();
    v44 = UUID.uuidString.getter();
    v46 = v45;
    (*(v54 + 8))(v43, v4);
    v47 = v31;
    v48 = sub_10044F628(v44, v46, v47, 0);
    [v48 setDestinations:1];
    v49 = *(v2 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_add);
    if (v49)
    {
      v50 = *(v2 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_add + 8);

      v49(v48);

      sub_1000051F8(v49, v50);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}