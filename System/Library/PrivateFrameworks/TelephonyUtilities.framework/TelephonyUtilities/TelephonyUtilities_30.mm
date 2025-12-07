void sub_1004516CC(void *a1, NSObject *a2, void *a3)
{
  v4 = v3;
  v125 = a3;
  v127 = a2;
  v124 = type metadata accessor for URL();
  v119 = *(v124 - 8);
  __chkstk_darwin(v124);
  v118 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v8 = __chkstk_darwin(v7 - 8);
  v122 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v123 = &v111 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v126 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v121 = &v111 - v15;
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000AF9C(v16, qword_1006BA6D0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v129 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_10002741C(0xD00000000000002FLL, 0x8000000100578940, &v129);
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s", v19, 0xCu);
    sub_100009B7C(v20);
  }

  if ((TUSharePlayForceDisabled() & 1) == 0)
  {
    v117 = v11;
    v24 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v27 = 136446466;
      v128 = [v24 sessionEventType];
      type metadata accessor for TUConversationNoticeEventType(0);
      v28 = String.init<A>(reflecting:)();
      v120 = v12;
      v30 = sub_10002741C(v28, v29, &v129);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      v128 = v24;
      sub_100006AF0(0, &qword_1006ABFF8, TUConversationNotice_ptr);
      v31 = v24;
      v32 = String.init<A>(reflecting:)();
      v34 = sub_10002741C(v32, v33, &v129);
      v4 = v3;

      *(v27 + 14) = v34;
      v12 = v120;
      _os_log_impl(&_mh_execute_header, v25, v26, "Generating notification for notice type: %{public}s and notice: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    v35 = v127;
    v36 = *(v4 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_displayStringProvider);
    v37 = [v127 provider];
    v38 = [v37 isTelephonyWithSharePlayProvider];

    sub_1003EA65C(v24, v38, v36, v39, v40, v41, v42, v43, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
    if (v45)
    {
      v46 = v45;
      v113 = v44;
      v115 = [v125 identifier];
      v116 = [v35 localParticipantIdentifier];
      if ([v24 sessionEventType] != 13 || (v47 = objc_msgSend(v24, "session"), v48 = objc_msgSend(v47, "activity"), v47, LODWORD(v47) = objc_msgSend(v48, "isScreenSharingActivity"), v48, !v47) || v115 != v116)
      {
        v114 = v46;
        v111 = [objc_allocWithZone(UNMutableNotificationContent) init];
        sub_10026D814(&qword_1006A4458, &unk_100588070);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10057E830;
        v129 = 0x4449656C646E7562;
        v130 = 0xE800000000000000;
        AnyHashable.init<A>(_:)();
        v58 = [v24 session];
        v59 = [v58 UUID];

        v60 = v121;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v61 = UUID.uuidString.getter();
        v63 = v62;
        v65 = *(v12 + 8);
        v64 = v12 + 8;
        v125 = v65;
        (v65)(v60, v117);
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v61;
        *(inited + 80) = v63;
        v129 = 0x6B6361626C6C6163;
        v130 = 0xEB000000004C5255;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = sub_10026D814(&qword_1006ABFF0, &qword_100588080);
        v66 = [v24 actionURL];
        if (v66)
        {
          v67 = v66;
          v68 = v122;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v69 = 0;
          v70 = v124;
        }

        else
        {
          v69 = 1;
          v70 = v124;
          v68 = v122;
        }

        sub_10000AF74(v68, v69, 1, v70);
        v76 = v123;
        sub_1002A01B0(v68, v123);
        v77 = sub_100015468(v76, 1, v70);
        v78 = v117;
        v112 = v4;
        v120 = v64;
        if (v77)
        {
          sub_100009A5C(v76, &unk_1006A52C0, &unk_10057D930);
          v79 = 0;
          v80 = 0;
        }

        else
        {
          v82 = v118;
          v81 = v119;
          (*(v119 + 16))(v118, v76, v70);
          sub_100009A5C(v76, &unk_1006A52C0, &unk_10057D930);
          v79 = URL.absoluteString.getter();
          v80 = v83;
          (*(v81 + 8))(v82, v70);
        }

        *(inited + 144) = v79;
        *(inited + 152) = v80;
        v129 = 0xD000000000000025;
        v130 = 0x8000000100578870;
        AnyHashable.init<A>(_:)();
        v84 = v127;
        v85 = [v127 groupUUID];
        v86 = v126;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v87 = UUID.uuidString.getter();
        v89 = v88;
        (v125)(v86, v78);
        *(inited + 240) = &type metadata for String;
        *(inited + 216) = v87;
        *(inited + 224) = v89;
        Dictionary.init(dictionaryLiteral:)();
        sub_10031E958(0x40255F524F46, 0xE600000000000000);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_10057D690;
        v91 = [v84 displayName];
        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = v93;

        *(v90 + 56) = &type metadata for String;
        *(v90 + 64) = sub_100009D88();
        *(v90 + 32) = v92;
        *(v90 + 40) = v94;
        String.init(format:_:)();

        v96 = v111;
        v95 = v112;
        v97 = String._bridgeToObjectiveC()();

        [v96 setTitle:v97];

        v98 = String._bridgeToObjectiveC()();

        [v96 setBody:v98];

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v96 setUserInfo:isa];

        [v96 setSound:0];
        v100 = String._bridgeToObjectiveC()();
        [v96 setCategoryIdentifier:v100];

        v101 = sub_10044FAC0();
        sub_1004554A0(v101, v102, v96);
        sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
        v103 = v126;
        UUID.init()();
        v104 = UUID.uuidString.getter();
        v106 = v105;
        (v125)(v103, v78);
        v107 = v96;
        v108 = sub_10044F628(v104, v106, v107, 0);
        [v108 setDestinations:1];
        v109 = *(v95 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_add);
        if (v109)
        {
          v110 = *(v95 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_add + 8);

          v109(v108);

          sub_1000051F8(v109, v110);
        }

        else
        {
        }

        return;
      }

      v49 = v24;
      v50 = v125;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138543618;
        *(v53 + 4) = v49;
        *(v53 + 12) = 2112;
        *(v53 + 14) = v50;
        *v54 = v49;
        v54[1] = v50;
        v55 = v49;
        v56 = v50;
        _os_log_impl(&_mh_execute_header, v51, v52, "Not posting notification as detected locally ended screen sharing for notice: %{public}@ with participant: %@", v53, 0x16u);
        sub_10026D814(&unk_1006A2630, &qword_10057CB40);
        swift_arrayDestroy();
LABEL_23:
      }
    }

    else
    {
      v71 = v24;
      v51 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v51, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138543362;
        *(v73 + 4) = v71;
        *v74 = v71;
        v75 = v71;
        _os_log_impl(&_mh_execute_header, v51, v72, "Not posting notification for unsupported notice: %{public}@", v73, 0xCu);
        sub_100009A5C(v74, &unk_1006A2630, &qword_10057CB40);
        goto LABEL_23;
      }
    }

    return;
  }

  v127 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v127, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v127, v21, "SharePlay force disabled, not posting notification for notice.", v22, 2u);
  }

  v23 = v127;
}

void sub_10045247C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v150 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000AF9C(v11, qword_1006BA6D0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v149 = a2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v155 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_10002741C(0xD000000000000036, 0x80000001005788E0, &v155);
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s", v16, 0xCu);
    sub_100009B7C(v17);
  }

  if (TUSharePlayForceDisabled())
  {
    v150 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v150, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v150, v18, "SharePlay force disabled, not posting new activity session notification.", v19, 2u);
    }

    v20 = v150;

    return;
  }

  v21 = *&v4[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_removeNotification];
  if (v21)
  {
    v22 = *&v4[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_removeNotification + 8];

    v23 = [a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = UUID.uuidString.getter();
    v26 = v25;
    (v150[1].isa)(v10, v8);
    v21(v24, v26);
    sub_1000051F8(v21, v22);
  }

  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v146 = a3;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v148 = v10;
    v32 = v12;
    v33 = a3;
    v34 = v8;
    v35 = v4;
    v36 = v31;
    v37 = swift_slowAlloc();
    v155 = v37;
    *v36 = 134349314;
    *(v36 + 4) = v33;
    *(v36 + 12) = 2080;
    *&v153 = v27;
    sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
    v38 = v27;
    v39 = String.init<A>(reflecting:)();
    v41 = sub_10002741C(v39, v40, &v155);

    *(v36 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v28, v29, "Generating notification for new launch state: %{public}lu activity session: %s", v36, 0x16u);
    sub_100009B7C(v37);

    v4 = v35;
    v8 = v34;
    v12 = v32;
    v10 = v148;
  }

  v42 = v149;
  v148 = v4;
  sub_1003EA0F4();
  if (v43)
  {
    v147 = v27;
    v44 = [v27 activity];
    v45 = [v44 originator];

    if (v45)
    {
      v46 = [v42 remoteParticipantForLightweightParticipantHandle:v45];
      if (v46)
      {
        v47 = v46;
        sub_1003E9E64();
        v49 = v48;

        if (v49)
        {
        }
      }

      else
      {
      }
    }

    v53 = [objc_allocWithZone(UNMutableNotificationContent) init];
    v54 = String._bridgeToObjectiveC()();

    [v53 setTitle:v54];

    v55 = v147;
    v56 = [v147 activity];
    v57 = [v56 isScreenSharingActivity];

    v145 = v12;
    if (v57)
    {
      if (([v55 isLocallyInitiated] & 1) == 0)
      {
        sub_10031E958(0xD000000000000016, 0x80000001005748F0);
      }

      v93 = v148;
      v94 = String._bridgeToObjectiveC()();

      [v53 setBody:v94];

      v83 = v10;
    }

    else
    {
      v144 = v53;
      sub_10031E958(0x5F44455452415453, 0xEA00000000004025);
      v142[1] = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v58 = swift_allocObject();
      v143 = xmmword_10057D690;
      *(v58 + 16) = xmmword_10057D690;
      v59 = [v55 activity];
      v60 = [v59 concatenatedDescription];

      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      *(v58 + 56) = &type metadata for String;
      v142[0] = sub_100009D88();
      *(v58 + 64) = v142[0];
      *(v58 + 32) = v61;
      *(v58 + 40) = v63;
      v64 = String.init(format:_:)();
      v66 = v65;

      if (v146 == 1)
      {
        v67 = v66;
        v68 = [v55 activity];
        v69 = [v68 isSupported];

        if (v69)
        {
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&_mh_execute_header, v70, v71, "Showing Join SharePlay because activity is supported", v72, 2u);
          }

          v155 = v64;
          v156 = v66;
          *&v153 = 4203786;
          *(&v153 + 1) = 0xE300000000000000;
          v73 = swift_allocObject();
          *(v73 + 16) = v143;
          v74 = sub_10031E958(0x4148535F4E494F4ALL, 0xEE0059414C504552);
          v75 = v142[0];
          *(v73 + 56) = &type metadata for String;
          *(v73 + 64) = v75;
          *(v73 + 32) = v74;
          *(v73 + 40) = v76;
          sub_10001E364();
          StringProtocol.appendingFormat<A>(_:_:)();

          v77 = String._bridgeToObjectiveC()();

          [v144 setBody:v77];

          *&v153 = 0xD000000000000019;
          *(&v153 + 1) = 0x80000001005788C0;
          AnyHashable.init<A>(_:)();
          v78 = [v147 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v79 = UUID.uuidString.getter();
          v81 = v80;
          isa = v150[1].isa;
          (isa)(v10, v8);
          v154 = &type metadata for String;
          *&v153 = v79;
          *(&v153 + 1) = v81;
          sub_10003EBF0(&v153, v152);
          swift_isUniquelyReferenced_nonNull_native();
          v151 = _swiftEmptyDictionarySingleton;
          sub_100378C74(v152, &v155);
          v83 = v10;
          v84 = v151;
          sub_100006780(&v155);
          v85 = v149;
          v86 = [v149 provider];
          v87 = [objc_opt_self() telephonyWithSharePlayProvider];
          v88 = [v86 isEqualToConversationProvider:v87];

          if (v88)
          {
            *&v153 = 0xD000000000000025;
            *(&v153 + 1) = 0x8000000100578870;
            AnyHashable.init<A>(_:)();
            v89 = [v85 groupUUID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v90 = UUID.uuidString.getter();
            v92 = v91;
            (isa)(v83, v8);
            v154 = &type metadata for String;
            *&v153 = v90;
            *(&v153 + 1) = v92;
            sub_10003EBF0(&v153, v152);
            swift_isUniquelyReferenced_nonNull_native();
            v151 = v84;
            sub_100378C74(v152, &v155);
            sub_100006780(&v155);
          }

          v93 = v148;
          v53 = v144;
          goto LABEL_47;
        }

        v101 = [v55 activity];
        v102 = [v101 isEligibleForWebBrowser];

        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.default.getter();
        v105 = os_log_type_enabled(v103, v104);
        if (!v102)
        {
          if (v105)
          {
            v116 = swift_slowAlloc();
            *v116 = 0;
            _os_log_impl(&_mh_execute_header, v103, v104, "Showing Get the App because app for the activity is not installed", v116, 2u);
          }

          v155 = v64;
          v156 = v67;
          *&v153 = 4203786;
          *(&v153 + 1) = 0xE300000000000000;
          v117 = swift_allocObject();
          *(v117 + 16) = v143;
          v118 = sub_10031E958(0x40255F544547, 0xE600000000000000);
          v119 = v142[0];
          *(v117 + 56) = &type metadata for String;
          *(v117 + 64) = v119;
          *(v117 + 32) = v118;
          *(v117 + 40) = v120;
          sub_10001E364();
          StringProtocol.appendingFormat<A>(_:_:)();

          v121 = String._bridgeToObjectiveC()();

          v53 = v144;
          [v144 setBody:v121];

          v122 = sub_100021AEC([v147 activity]);
          if (v123)
          {
            v124 = v122;
            v125 = v123;
            *&v153 = 0xD000000000000015;
            *(&v153 + 1) = 0x80000001005788A0;
            AnyHashable.init<A>(_:)();
            v154 = &type metadata for String;
            *&v153 = v124;
            *(&v153 + 1) = v125;
            sub_10003EBF0(&v153, v152);
            swift_isUniquelyReferenced_nonNull_native();
            v151 = _swiftEmptyDictionarySingleton;
            sub_100378C74(v152, &v155);
            sub_100006780(&v155);
          }

          v93 = v148;
          v83 = v10;
          goto LABEL_47;
        }

        if (v105)
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&_mh_execute_header, v103, v104, "Showing Open in Safari because activity is supported in web browser", v106, 2u);
        }

        v155 = v64;
        v156 = v67;
        *&v153 = 4203786;
        *(&v153 + 1) = 0xE300000000000000;
        v107 = swift_allocObject();
        *(v107 + 16) = v143;
        v108 = sub_10031E958(0x5F4E495F4E45504FLL, 0xEE00495241464153);
        v109 = v142[0];
        *(v107 + 56) = &type metadata for String;
        *(v107 + 64) = v109;
        *(v107 + 32) = v108;
        *(v107 + 40) = v110;
        sub_10001E364();
        StringProtocol.appendingFormat<A>(_:_:)();

        v111 = String._bridgeToObjectiveC()();

        v53 = v144;
        [v144 setBody:v111];

        *&v153 = 0xD000000000000019;
        *(&v153 + 1) = 0x80000001005788C0;
        AnyHashable.init<A>(_:)();
        v112 = [v147 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v113 = UUID.uuidString.getter();
        v115 = v114;
        (v150[1].isa)(v10, v8);
        v154 = &type metadata for String;
        *&v153 = v113;
        *(&v153 + 1) = v115;
        sub_10003EBF0(&v153, v152);
        swift_isUniquelyReferenced_nonNull_native();
        v151 = _swiftEmptyDictionarySingleton;
        sub_100378C74(v152, &v155);
        v83 = v10;
        sub_100006780(&v155);
      }

      else
      {
        v95 = String._bridgeToObjectiveC()();

        v53 = v144;
        [v144 setBody:v95];

        sub_10026D814(&qword_1006A4458, &unk_100588070);
        inited = swift_initStackObject();
        *(inited + 16) = v143;
        v155 = 0x4449656C646E7562;
        v156 = 0xE800000000000000;
        AnyHashable.init<A>(_:)();
        v97 = [v55 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v98 = UUID.uuidString.getter();
        v100 = v99;
        (v150[1].isa)(v10, v8);
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v98;
        *(inited + 80) = v100;
        Dictionary.init(dictionaryLiteral:)();
        v83 = v10;
      }

      v93 = v148;
    }

LABEL_47:
    v126 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v53 setUserInfo:v126];

    v127 = sub_10044FAC0();
    sub_1004554A0(v127, v128, v53);
    sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
    UUID.init()();
    v129 = UUID.uuidString.getter();
    v131 = v130;
    (v150[1].isa)(v83, v8);
    v132 = v53;
    v133 = sub_10044F628(v129, v131, v132, 0);
    [v133 setDestinations:1];
    v134 = v133;
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v137 = 138412290;
      *(v137 + 4) = v134;
      *v138 = v134;
      v139 = v134;
      _os_log_impl(&_mh_execute_header, v135, v136, "Delivering user notification for new activity session: %@", v137, 0xCu);
      sub_100009A5C(v138, &unk_1006A2630, &qword_10057CB40);
    }

    v140 = *&v93[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_add];
    if (v140)
    {
      v141 = *&v93[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_add + 8];

      v140(v134);

      sub_1000051F8(v140, v141);
    }

    else
    {
    }

    return;
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Not posting notification for launched activity session because it's locally originated", v52, 2u);
  }
}

uint64_t sub_100453828(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notification();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v17[1] = *&v1[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_queue];
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  (*(v10 + 32))(v13 + v12, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  aBlock[4] = sub_100455504;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100630FF0;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

void sub_100453B70(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (!v78)
  {
    sub_100009A5C(v77, &unk_1006A2D10, &unk_10057D940);
LABEL_6:
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

  type metadata accessor for CPForegroundApplication();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = v74;
  v71 = a2;
  v68 = *&a2[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_conversationManager];
  v9 = [v68 activeConversations];
  v7 = TUConversation_ptr;
  v10 = sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
  v11 = sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v72 = v8;
  v73 = v10;
  v67 = v11;
  v70 = v12;
  if ((v12 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v12 = v77[0];
    v13 = v77[1];
    a1 = v77[2];
    v5 = v78;
    v4 = v79;
  }

  else
  {
    v26 = -1 << *(v12 + 32);
    v13 = v12 + 56;
    a1 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v4 = v28 & *(v12 + 56);

    v5 = 0;
  }

  v69 = a1;
  v29 = (a1 + 64) >> 6;
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v30 = __CocoaSet.Iterator.next()();
  if (v30)
  {
    v76 = v30;
    swift_dynamicCast();
    v31 = v74;
    v32 = v5;
    v7 = v4;
    if (v74)
    {
      while (1)
      {
        if ([v31 state] == 3 || (a1 = objc_msgSend(v31, "provider"), a2 = objc_msgSend(a1, "isTelephonyWithSharePlayProvider"), a1, (a2 & 1) != 0))
        {
          sub_100022DDC(v12);

          v48 = [v31 activitySessions];
          sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
          sub_10000CE3C(&unk_1006A2600, &unk_1006A4820, TUConversationActivitySession_ptr);
          v49 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10044F6AC(v49);

          v50 = v72;
          v74 = CPForegroundApplication.bundleIdentifier.getter();
          v75 = v51;
          __chkstk_darwin(v74);
          *(&v67 - 2) = &v74;
          v52 = sub_100013094();

          if (v52)
          {
            v53 = v71;
            if (qword_1006A0B70 != -1)
            {
              swift_once();
            }

            v54 = type metadata accessor for Logger();
            sub_10000AF9C(v54, qword_1006BA6D0);
            v55 = v53;
            v56 = v50;
            v57 = Logger.logObject.getter();
            v58 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v76 = v61;
              *v59 = 138543618;
              *(v59 + 4) = v55;
              *v60 = v55;
              *(v59 + 12) = 2080;
              v62 = v55;
              v74 = CPForegroundApplication.bundleIdentifier.getter();
              v75 = v63;
              v64 = String.init<A>(reflecting:)();
              v66 = sub_10002741C(v64, v65, &v76);

              *(v59 + 14) = v66;
              _os_log_impl(&_mh_execute_header, v57, v58, "%{public}@: Ignoring notice for foreground application with existing activity session: %s", v59, 0x16u);
              sub_100009A5C(v60, &unk_1006A2630, &qword_10057CB40);

              sub_100009B7C(v61);
            }

            else
            {
            }
          }

          else
          {
            sub_10045109C(v50);
          }

          return;
        }

        v5 = v32;
        v4 = v7;
        if (v12 < 0)
        {
          goto LABEL_15;
        }

LABEL_18:
        v33 = v5;
        v34 = v4;
        v32 = v5;
        if (!v4)
        {
          break;
        }

LABEL_22:
        v7 = ((v34 - 1) & v34);
        v31 = *(*(v12 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v34)))));
        if (!v31)
        {
          goto LABEL_27;
        }
      }

      while (1)
      {
        v32 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v32 >= v29)
        {
          goto LABEL_27;
        }

        v34 = *(v13 + 8 * v32);
        ++v33;
        if (v34)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_41:
      swift_once();
LABEL_7:
      v14 = type metadata accessor for Logger();
      sub_10000AF9C(v14, qword_1006BA6D0);
      (*(v5 + 16))(v7, a1, v4);
      v15 = a2;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v74 = v20;
        *v18 = 138543618;
        *(v18 + 4) = v15;
        *v19 = v15;
        *(v18 + 12) = 2080;
        v21 = v15;
        Notification.object.getter();
        v22 = sub_100291184();
        v24 = v23;
        sub_100009A5C(v77, &unk_1006A2D10, &unk_10057D940);
        (*(v5 + 8))(v7, v4);
        v25 = sub_10002741C(v22, v24, &v74);

        *(v18 + 14) = v25;
        _os_log_impl(&_mh_execute_header, v16, v17, "%{public}@: Received invalid notification object for foreground application change notification: %s", v18, 0x16u);
        sub_100009A5C(v19, &unk_1006A2630, &qword_10057CB40);

        sub_100009B7C(v20);
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }

      return;
    }
  }

LABEL_27:
  sub_100022DDC(v12);

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000AF9C(v35, qword_1006BA6D0);
  v36 = v71;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v74 = v41;
    *v39 = 138543618;
    *(v39 + 4) = v36;
    *v40 = v36;
    *(v39 + 12) = 2080;
    v42 = v36;
    v43 = [v68 activeConversations];
    v44 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = v44;
    sub_10026D814(&unk_1006AC000, &qword_100588088);
    v45 = String.init<A>(reflecting:)();
    v47 = sub_10002741C(v45, v46, &v74);

    *(v39 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v37, v38, "%{public}@: Could not find active conversation in conversations: %s", v39, 0x16u);
    sub_100009A5C(v40, &unk_1006A2630, &qword_10057CB40);

    sub_100009B7C(v41);
  }
}

void sub_100454630(uint64_t a1, void *a2, void *a3, void *a4)
{
  v99 = a3;
  v7 = type metadata accessor for UUID();
  sub_100007FEC();
  v98 = v8;
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  v97 = &v94 - v12;
  __chkstk_darwin(v11);
  v14 = &v94 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100007FDC();
  v21 = v20 - v19;
  v100 = v4;
  v22 = *(v4 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_queue);
  *(v20 - v19) = v22;
  (*(v17 + 104))(v20 - v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v21, v15);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if ([a2 state] != 3)
  {
    v24 = [a2 provider];
    v25 = [v24 isTelephonyWithSharePlayProvider];

    if (!v25)
    {
      if (qword_1006A0B70 != -1)
      {
        sub_10000860C(&qword_1006A0B70);
      }

      v39 = type metadata accessor for Logger();
      sub_10000AF9C(v39, qword_1006BA6D0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_15;
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Not posting notification for activity because conversation is not joined or telephonyProvider", v42, 2u);
      v43 = v42;
      goto LABEL_14;
    }
  }

  if ([a4 sessionEventType] != 12)
  {
    goto LABEL_6;
  }

  v26 = [a4 session];
  v27 = [v26 isLocallyInitiated];

  if (v27)
  {
    goto LABEL_6;
  }

  v44 = [a4 sessionUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_activitySessionMap;
  v46 = v100;
  swift_beginAccess();
  v47 = sub_100025C58(v14, *(v46 + v45));
  if (!v47)
  {
    swift_endAccess();
    v96 = *(v98 + 8);
    v96(v14, v7);
LABEL_25:
    v74 = *(v100 + v45);

    v75 = [a4 sessionUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v74 + 16))
    {
      sub_100021E24();
      v77 = v76;

      v78 = sub_1000183A4();
      v79(v78);
      v80 = &selRef_isInstalled;
      v81 = &selRef_normalizedValue;
      if (v77)
      {
        goto LABEL_6;
      }
    }

    else
    {

      v82 = sub_1000183A4();
      v83(v82);
      v80 = &selRef_isInstalled;
      v81 = &selRef_normalizedValue;
    }

    v84 = [a2 v81[439]];
    v85 = [v84 v80[144]];

    if (v85)
    {
LABEL_6:
      if (qword_1006A0B70 == -1)
      {
LABEL_7:
        v28 = type metadata accessor for Logger();
        sub_10000AF9C(v28, qword_1006BA6D0);
        v29 = a4;
        v30 = a2;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = sub_100007C08();
          v34 = sub_10001158C();
          *v33 = 138412546;
          *(v33 + 4) = v29;
          *(v33 + 12) = 2112;
          *(v33 + 14) = v30;
          *v34 = v29;
          v34[1] = v30;
          v35 = v29;
          v36 = v30;
          sub_10000EC34(&_mh_execute_header, v37, v38, "Posting notification for activity session notice: %@ on conversation: %@");
          sub_10026D814(&unk_1006A2630, &qword_10057CB40);
          swift_arrayDestroy();
          sub_100005F40(v34);
          sub_100005F40(v33);
        }

        sub_1004516CC(v29, v30, v99);
        return;
      }

LABEL_35:
      sub_10000860C(&qword_1006A0B70);
      goto LABEL_7;
    }

    if (qword_1006A0B70 != -1)
    {
      sub_10000860C(&qword_1006A0B70);
    }

    v86 = type metadata accessor for Logger();
    sub_10000AF9C(v86, qword_1006BA6D0);
    v87 = a4;
    v88 = a2;
    v40 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v40, v89))
    {
LABEL_15:

      return;
    }

    v90 = sub_100007C08();
    v91 = sub_10001158C();
    *v90 = 138412546;
    *(v90 + 4) = v87;
    *(v90 + 12) = 2112;
    *(v90 + 14) = v88;
    *v91 = v87;
    v91[1] = v88;
    v92 = v87;
    v93 = v88;
    _os_log_impl(&_mh_execute_header, v40, v89, "Not posting notification for activity session start notice: %@ on conversation: %@ since activitySessionLaunch has not already posted", v90, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
    sub_100005F40(v91);
    v43 = v90;
LABEL_14:
    sub_100005F40(v43);
    goto LABEL_15;
  }

  v48 = v47;
  swift_endAccess();
  v49 = *(v98 + 8);
  v50 = v14;
  v51 = v7;
  v95 = v98 + 8;
  v96 = v49;
  v49(v50, v7);
  v52 = [a4 session];
  v53 = [v52 activity];

  LOBYTE(v52) = [v48 isEquivalentToActivity:v53];
  if ((v52 & 1) == 0)
  {

    goto LABEL_25;
  }

  if (qword_1006A0B70 != -1)
  {
    sub_10000860C(&qword_1006A0B70);
  }

  v54 = type metadata accessor for Logger();
  sub_10000AF9C(v54, qword_1006BA6D0);
  v55 = a4;
  v56 = a2;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = sub_100007C08();
    v60 = sub_10001158C();
    *v59 = 138412546;
    *(v59 + 4) = v55;
    *(v59 + 12) = 2112;
    *(v59 + 14) = v56;
    *v60 = v55;
    v60[1] = v56;
    v61 = v55;
    v62 = v56;
    _os_log_impl(&_mh_execute_header, v57, v58, "Not posting notification for activity session start notice: %@ on conversation: %@ since activitySessionLaunch has already posted", v59, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
    sub_100005F40(v60);
    sub_100005F40(v59);
  }

  v63 = [v55 sessionUUID];
  v64 = v97;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1003846E4(v64, v65, v66, v67, v68, v69, v70, v71, v94, v95);
  v73 = v72;
  swift_endAccess();

  v96(v64, v51);
}

void sub_100454F34(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v45 = a2;
  v46 = a3;
  v7 = type metadata accessor for UUID();
  sub_100007FEC();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100007FDC();
  v22 = v21 - v20;
  v23 = *(v5 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_queue);
  *(v21 - v20) = v23;
  (*(v18 + 104))(v21 - v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v22, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    sub_10000860C(&qword_1006A0B70);
    goto LABEL_10;
  }

  if ([a4 isLocallyInitiated])
  {
    return;
  }

  v25 = [a4 state];
  if (v25 > 5 || ((1 << v25) & 0x23) == 0)
  {
    return;
  }

  v26 = OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_activitySessionMap;
  swift_beginAccess();
  v27 = *(v5 + v26);

  v28 = [a4 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v27 + 16))
  {
    sub_100021E24();
    v30 = v29;

    v31 = *(v9 + 8);
    v31(v15, v7);
    if (v30)
    {
      return;
    }
  }

  else
  {

    v31 = *(v9 + 8);
    v31(v15, v7);
  }

  v32 = [a4 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = [a4 activity];
  [v33 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006AF0(0, &unk_1006ABFE0, TUConversationActivity_ptr);
  swift_dynamicCast();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v5 + v26);
  sub_10037A48C();
  *(v5 + v26) = v47;
  v31(v13, v7);
  swift_endAccess();
  if (qword_1006A0B70 != -1)
  {
    goto LABEL_15;
  }

LABEL_10:
  v34 = type metadata accessor for Logger();
  sub_10000AF9C(v34, qword_1006BA6D0);
  v35 = a4;
  v36 = v45;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = sub_100007C08();
    v40 = sub_10001158C();
    *v39 = 138412546;
    *(v39 + 4) = v35;
    *(v39 + 12) = 2112;
    *(v39 + 14) = v36;
    *v40 = v35;
    v40[1] = v36;
    v41 = v35;
    v42 = v36;
    sub_10000EC34(&_mh_execute_header, v43, v44, "Posting notification for activity session launch: %@ on conversation: %@");
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
    sub_100005F40(v40);
    sub_100005F40(v39);
  }

  sub_10045247C(v35, v36, v46);
}

void sub_1004554A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setNotificationProviderIdentifier:v4];
}

void sub_100455504()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100453B70(v0 + v2, v3);
}

void sub_100455590()
{
  sub_100027EF4();
  if (v1)
  {
    sub_10026D814(&unk_1006A7590, &qword_100582CF0);
    v2 = sub_10001AC80();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(v0 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    sub_10000B904();
    v11 = v10[1];
    v14 = *(v13 + 8 * v12);
    *&v48 = *v10;
    *(&v48 + 1) = v11;

    swift_dynamicCast();
    sub_10026D814(&unk_1006AC0B0, &unk_10057E750);
    swift_dynamicCast();
    v15 = sub_1000053D0();
    v16 = sub_10003EBF0(v15, v47);
    sub_100006C58(v16, v17, v18, v19, v20, v21, v22, v23, v30, v14, v33, v35, v36, v38, v39, v41, v42, v43, v44, v45, v46);
    sub_10003EBF0(v47, &v48);
    v24 = AnyHashable._rawHashValue(seed:)(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v24) & ~v7[v24 >> 6]) == 0)
    {
      sub_10000E7C0();
      while (1)
      {
        sub_100007A0C();
        if (v28)
        {
          if (v26)
          {
            goto LABEL_26;
          }
        }

        if (v25 == v27)
        {
          v25 = 0;
        }

        if (v7[v25] != -1)
        {
          sub_10000A950();
          goto LABEL_22;
        }
      }
    }

    sub_10000FE84();
LABEL_22:
    v5 &= v5 - 1;
    sub_100007DC0();
    sub_100008C78(v29, v31, v32, v34, v37, v40);
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

    v5 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1004557B0()
{
  sub_100027EF4();
  if (v1)
  {
    sub_10026D814(&unk_1006AC0A0, &qword_100586618);
    v3 = sub_10001AC80();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  sub_100007990();
  v6 = v5 & v4;
  sub_1004582A8();

  v7 = 0;
  while (v6)
  {
    v8 = v7;
LABEL_10:
    v6 &= v6 - 1;
    sub_10000B904();
    v11 = *v9;
    v10 = v9[1];

    swift_dynamicCast();
    sub_10003EBF0(&v22, v24);
    sub_10003EBF0(v24, v25);
    sub_10003EBF0(v25, &v23);
    v12 = sub_100005208(v11, v10);
    if (v13)
    {
      sub_10004A130();
      *v14 = v11;
      v14[1] = v10;

      v15 = (v3[7] + 32 * v12);
      sub_100009B7C(v15);
      sub_10003EBF0(&v23, v15);
      v7 = v8;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_17;
      }

      sub_10003A5CC();
      *(v3 + v16 + 64) |= v17;
      sub_10004A130();
      *v18 = v11;
      v18[1] = v10;
      sub_10003EBF0(&v23, (v3[7] + 32 * v12));
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_18;
      }

      v3[2] = v21;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v2)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v8);
    ++v7;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1004559AC()
{
  sub_100027EF4();
  if (v1)
  {
    sub_10026D814(&qword_1006AC068, &qword_1005880C8);
    v3 = sub_10001AC80();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  sub_100007990();
  v6 = v5 & v4;
  sub_1004582A8();

  v7 = 0;
  while (v6)
  {
    v8 = v7;
LABEL_10:
    v6 &= v6 - 1;
    sub_10000B904();
    v11 = *v9;
    v10 = v9[1];
    v14 = *(v13 + 8 * v12);

    v15 = v14;
    v16 = sub_10000F2EC();
    v18 = sub_100005208(v16, v17);
    if (v19)
    {
      sub_10004A130();
      *v20 = v11;
      v20[1] = v10;

      v21 = v3[7];
      v22 = *(v21 + 8 * v18);
      *(v21 + 8 * v18) = v15;

      v7 = v8;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_17;
      }

      sub_10003A5CC();
      *(v3 + v23 + 64) |= v24;
      sub_10004A130();
      *v25 = v11;
      v25[1] = v10;
      *(v3[7] + 8 * v18) = v15;
      v26 = v3[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v3[2] = v28;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v2)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v8);
    ++v7;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_100455B60(uint64_t a1, void *a2)
{
  type metadata accessor for AnalyticsReporter();
  v3 = sub_10000667C();
  sub_10045722C(v3);
  v5 = v4;
  v6 = sub_100017E58();
  sub_100456FA4(v6, v7, v5);

  return sub_100455C24(a2);
}

uint64_t sub_100455C24(void *a1)
{
  if (qword_1006A0C28 != -1)
  {
    sub_100007E54(&qword_1006A0C28);
  }

  v2 = sub_1004582B4();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FA2C();

  sub_100017F18(v3);
  v4 = sub_100006718();
  v7 = sub_1000513D8(v4, v5, v6);
  swift_endAccess();

  if (v7)
  {
  }

  else
  {
    v8 = sub_1004582B4();
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_1004582B4();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for CallRecordingTracker();
    swift_allocObject();
    v13 = sub_100006C30();
    v15 = sub_1003EDBBC(v13, v14);
    sub_100008D34(&qword_1006AC010, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10037A4B4(v15, v9, v11, isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, qword_1006AC010, v34[0]);
    qword_1006AC010 = v33;

    swift_endAccess();
  }

  v21 = sub_1004582B4();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FA2C();

  sub_100017F18(v22);
  v23 = sub_100006718();
  v26 = sub_1000513D8(v23, v24, v25);

  if (!v26)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  v27 = sub_1003EDC2C(a1);

  if (v27)
  {
    sub_10045722C(a1);
    v30 = v29;
    v31 = sub_100017E58();
    sub_100456FA4(v31, v32, v30);
  }

  return result;
}

uint64_t sub_100455E14(void *a1)
{
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5B0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100005274();
    v7 = sub_100005E84();
    v15 = v7;
    *v6 = 136315138;
    sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, &v15);

    *(v6 + 4) = v11;
    sub_100005FCC(&_mh_execute_header, v12, v13, "Logged manual launch needed event for session: %s");
    sub_100009B7C(v7);
    sub_100005F64();
    sub_100006868();
  }

  return sub_1004568EC(v3, 0xD000000000000011, 0x8000000100579040);
}

uint64_t sub_100455FC4(char a1)
{
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v2 = type metadata accessor for Logger();
  sub_1000075F0(v2, qword_1006BA5B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100005274();
    v6 = sub_100005E84();
    v11 = v6;
    *v5 = 136315138;
    v7 = String.init<A>(reflecting:)();
    v9 = sub_10002741C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Logged incoming IMAV call with silenced: %s", v5, 0xCu);
    sub_100009B7C(v6);
    sub_100005F64();
    sub_100008AE8();
  }

  return sub_100456AD4(a1 & 1);
}

uint64_t sub_100456124()
{
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v0 = type metadata accessor for Logger();
  sub_1000075F0(v0, qword_1006BA5B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10000689C(v2))
  {
    *swift_slowAlloc() = 0;
    sub_10000A154();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    sub_100008AE8();
  }

  return sub_100456BD4();
}

uint64_t sub_100456204(void *a1)
{
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5B0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100005274();
    v7 = sub_100005E84();
    v15 = v7;
    *v6 = 136315138;
    sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, &v15);

    *(v6 + 4) = v11;
    sub_100005FCC(&_mh_execute_header, v12, v13, "Logged manual launch attempt event for session: %s");
    sub_100009B7C(v7);
    sub_100005F64();
    sub_100006868();
  }

  return sub_1004568EC(v3, 0xD000000000000015, 0x8000000100579020);
}

void sub_1004563B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_100017014();
  a31 = v32;
  a32 = v33;
  v35 = v34;
  v37 = v36;
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v38 = type metadata accessor for Logger();
  sub_1000075F0(v38, qword_1006BA5B0);
  v39 = v37;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    a10 = v43;
    *v42 = 136315394;
    sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
    v44 = v39;
    v45 = String.init<A>(reflecting:)();
    v47 = sub_10002741C(v45, v46, &a10);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    type metadata accessor for IDSGroupSessionServerErrorCode(0);
    v48 = String.init<A>(reflecting:)();
    v50 = sub_10002741C(v48, v49, &a10);

    *(v42 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v40, v41, "Logged session server termination event for session: %s reason: %s", v42, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v43);
    sub_100006868();
  }

  sub_100021AEC([v39 activity]);
  if (v51)
  {
    sub_10000FA2C();
    sub_10026D814(&unk_1006AC070, &qword_1005880D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D6A0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x8000000100565550;
    v53 = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
    v54 = sub_100006718();
    *(inited + 48) = sub_100050758(v54, v55);
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000100578FC0;
    LODWORD(a10) = v35;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 72) = sub_100050758(v56, v57);
    Dictionary.init(dictionaryLiteral:)();
    sub_1004559AC();
    sub_10000667C();

    sub_1000517AC(0xD00000000000003BLL, 0x8000000100578FE0, v53);
  }

  else
  {
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Couldn't log server termination event because of no bundleIdentifier on activitySession", v60, 2u);
      sub_100005F40(v60);
    }
  }

  sub_1000100E0();
}

uint64_t sub_100456740(char a1)
{
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v2 = type metadata accessor for Logger();
  sub_1000075F0(v2, qword_1006BA5B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_10000689C(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v5[1] = a1 & 1;
    sub_10000A154();
    _os_log_impl(v6, v7, v8, v9, v10, 8u);
    sub_100008AE8();
  }

  sub_10026D814(&qword_1006A3490, &qword_1005880C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000100578F70;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  Dictionary.init(dictionaryLiteral:)();
  sub_1004559AC();
  sub_10000667C();

  sub_1000517AC(0xD000000000000027, 0x8000000100578F90, inited);
}

uint64_t sub_1004568EC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 activity];
  v6 = [v5 metadata];

  if (v6)
  {
    v7 = [v6 context];

    v8 = [v7 analyticsIdentifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E55;
  }

  sub_10026D814(&unk_1006AC070, &qword_1005880D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D6A0;
  strcpy((inited + 32), "activity_type");
  *(inited + 46) = -4864;
  v13 = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
  *(inited + 48) = sub_100050758(v9, v11);
  *(inited + 56) = 0x745F6E6F69746361;
  *(inited + 64) = 0xEB00000000657079;

  *(inited + 72) = sub_100050758(a2, a3);
  Dictionary.init(dictionaryLiteral:)();
  sub_1004559AC();
  sub_10000667C();

  sub_1000517AC(0xD00000000000002ELL, 0x8000000100578F40, v13);
}

uint64_t sub_100456AD4(char a1)
{
  sub_10026D814(&qword_1006A3490, &qword_1005880C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = 0x6465636E656C6973;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  Dictionary.init(dictionaryLiteral:)();
  sub_1004559AC();
  sub_10000667C();

  sub_1000517AC(0xD00000000000002ALL, 0x8000000100578F10, inited);
}

uint64_t sub_100456BD4()
{
  sub_10026D814(&qword_1006A3490, &qword_1005880C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = 0x796C706572;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  Dictionary.init(dictionaryLiteral:)();
  sub_1004559AC();
  sub_10000667C();

  sub_1000517AC(0xD00000000000002BLL, 0x8000000100578EE0, NSNumber_ptr);
}

id sub_100456CCC(int a1, void *a2, id a3)
{
  v4 = v3;
  result = [a3 status];
  if (result != 5)
  {
    result = [a3 status];
    if (result != 6)
    {
      if (qword_1006A0B10 != -1)
      {
        sub_1000085AC(&qword_1006A0B10);
      }

      v8 = type metadata accessor for Logger();
      sub_10000AF9C(v8, qword_1006BA5B0);
      v9 = a3;
      v10 = a2;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v25 = sub_100005E84();
        v27[0] = v25;
        *v13 = 136315394;
        v15 = [v9 callUUID];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = sub_10002741C(v16, v18, v27);

        *(v13 + 4) = v19;
        *(v13 + 12) = 2112;
        *(v13 + 14) = v10;
        *v14 = v10;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v11, v12, "Audio route update for %s: %@", v13, 0x16u);
        sub_1000099A4(v14, &unk_1006A2630, &qword_10057CB40);
        sub_100005F40(v14);
        sub_100009B7C(v25);
        sub_100005F40(v25);
        sub_100006868();
      }

      type metadata accessor for AnalyticsReporter();
      v21 = sub_100037034(v10);
      v23 = v22;
      v24 = OBJC_IVAR___CSDAnalyticsReporter_callToAudioRoutesTracker;
      sub_100008D34(v4 + OBJC_IVAR___CSDAnalyticsReporter_callToAudioRoutesTracker, v27);
      swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v4 + v24);
      sub_1000371E0(v21, v23, v9);
      *(v4 + v24) = v26;
      return swift_endAccess();
    }
  }

  return result;
}

void sub_100456FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0xD000000000000018;
  v19 = 0x8000000100578E90;
  String.append(_:)(*&a1);
  if (a3)
  {
    if (qword_1006A0B10 != -1)
    {
      sub_1000085AC(&qword_1006A0B10);
    }

    v4 = type metadata accessor for Logger();
    sub_1000075F0(v4, qword_1006BA5B0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315394;
      v9 = sub_10000F2EC();
      *(v7 + 4) = sub_10002741C(v9, v10, v11);
      *(v7 + 12) = 2080;
      sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
      v12 = Dictionary.description.getter();
      v14 = sub_10002741C(v12, v13, &v18);

      *(v7 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "Returning ca event of %s, payload: %s", v7, 0x16u);
      swift_arrayDestroy();
      sub_100005F40(v8);
      sub_100005F64();
    }
  }

  sub_10000F2EC();
  v15 = String._bridgeToObjectiveC()();

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v22 = sub_100458298;
  v23 = v16;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1000518F8;
  v21 = &unk_100631040;
  v17 = _Block_copy(&v18);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

void sub_10045722C(void *a1)
{
  v2 = type metadata accessor for Date();
  sub_1000083C0();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  v9 = Dictionary.init(dictionaryLiteral:)();
  v10 = [a1 recordingStartedDate];
  if (v10)
  {
    v11 = v10;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = [a1 recordingEndedDate];
    if (v12)
    {
      v13 = v12;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSince(_:)();
      sub_100017248();
      if (v15 ^ v16 | v14)
      {
        sub_100035D70();
        if (!(v15 ^ v16 | v14))
        {
          sub_100035C84();
          if (v15)
          {
            [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v17];
            v18 = sub_10002F700();
            sub_10002F798(v13, v19, 0x8000000100578E50, v18, v20, v21, v22, v23, v43, v9);
            v24 = *(v4 + 8);
            v24(v8, v2);
            v25 = sub_10000F2EC();
            (v24)(v25);
            return;
          }

          goto LABEL_16;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v26 = sub_10000F2EC();
    v27(v26);
  }

  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v28 = type metadata accessor for Logger();
  sub_10000AF9C(v28, qword_1006BA5B0);
  v29 = a1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_100005274();
    v33 = sub_100005E84();
    v43 = v29;
    v44 = v33;
    *v32 = 136315138;
    sub_100006AF0(0, &qword_1006A7A60, TUCallRecordingSession_ptr);
    v34 = v29;
    v35 = String.init<A>(reflecting:)();
    v37 = sub_10002741C(v35, v36, &v44);

    *(v32 + 4) = v37;
    sub_10000A154();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    sub_100009B7C(v33);
    sub_100006868();
    sub_100008AE8();
  }
}

uint64_t sub_10045755C(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t sub_100457574(uint64_t a1)
{
  sub_1002A21FC(a1, v13);
  if (v14)
  {
    if (swift_dynamicCast())
    {
      sub_10000BC6C();
      v2 = v11 == 0xD000000000000010 && v1 == v12;
      if (v2 || (sub_100005ED0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        return 2;
      }

      sub_10000BC6C();
      v5 = v11 == 0xD000000000000011 && v4 == v12;
      if (v5 || (sub_100005ED0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        return 3;
      }

      sub_10000BC6C();
      v7 = v11 == 0xD000000000000015 && v6 == v12;
      if (v7 || (sub_100005ED0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        return 1;
      }

      sub_10000BC6C();
      if (v11 == 0xD000000000000010 && v8 == v12)
      {

        return 4;
      }

      sub_100005ED0();
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        return 4;
      }
    }
  }

  else
  {
    sub_1000099A4(v13, &unk_1006A2D10, &unk_10057D940);
  }

  return 0;
}

id sub_100457708()
{
  *&v0[OBJC_IVAR___CSDAnalyticsReporter_callToStartTransportType] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR___CSDAnalyticsReporter_callToAudioRoutesTracker] = _swiftEmptyDictionarySingleton;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsReporter();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100457780()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsReporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100457800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v8, 1))
  {
    *v3 = sub_100457898(v7, v8 + 1);
LABEL_7:
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_10037A4DC(a1, a2);
    *v3 = v9;
    return;
  }

  __break(1u);
}

Swift::Int sub_100457898(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10026D814(&unk_1006AC058, &qword_1005880B8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaDictionary.makeIterator()();
    while (1)
    {
      v3 = __CocoaDictionary.Iterator.next()();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
      swift_dynamicCast();
      sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_100457FF0(v4 + 1, 1);
      }

      v2 = v17;
      result = NSObject._rawHashValue(seed:)(*(v17 + 40));
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100457AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_100017014();
  sub_1000069B4();
  sub_10026D814(&qword_1006A2E98, &unk_10057DEF0);
  v38 = sub_10001E450();
  if (!*(v35 + 16))
  {
LABEL_29:

    *v34 = v38;
    sub_1000100E0();
    return;
  }

  v39 = 0;
  sub_1000153A8();
  sub_10003EACC();
  if (!v36)
  {
LABEL_4:
    v40 = v39;
    while (1)
    {
      v39 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v39 >= v34)
      {
        break;
      }

      ++v40;
      if (*(v35 + 64 + 8 * v39))
      {
        sub_100007C8C();
        v36 = v42 & v41;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_10000BAFC();
      if (v50 != v51)
      {
        sub_100035E98(v49);
      }

      else
      {
        sub_10000D78C(v49);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_10003EBC0();
LABEL_9:
    sub_10003DE64();
    if ((v43 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_10000EAC4();
    sub_10004A064();
    if (v44)
    {
      break;
    }

    sub_10000FE84();
LABEL_21:
    sub_100007DC0();
    sub_1000160E0(v48);
    if (!v36)
    {
      goto LABEL_4;
    }
  }

  sub_10000E7C0();
  while (1)
  {
    sub_100007A0C();
    if (v44)
    {
      if (v46)
      {
        break;
      }
    }

    if (v45 == v47)
    {
      v45 = 0;
    }

    if (*(v37 + 8 * v45) != -1)
    {
      sub_10000A950();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_100457C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_100017014();
  v33 = v32;
  v34 = *v32;
  v68 = v37;
  sub_10026D814(v35, v36);
  v38 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!v34[2])
  {
LABEL_29:

LABEL_30:
    *v33 = v38;
    sub_1000100E0();
    return;
  }

  v67 = v34;
  v39 = 0;
  v40 = v34 + 8;
  sub_1000153A8();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  v46 = v38 + 8;
  if ((v42 & v41) == 0)
  {
LABEL_4:
    v48 = v39;
    while (1)
    {
      v39 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v39 >= v45)
      {
        break;
      }

      ++v48;
      if (v40[v39])
      {
        sub_100007C8C();
        v43 = v50 & v49;
        goto LABEL_9;
      }
    }

    if ((v68 & 1) == 0)
    {

      v33 = v32;
      goto LABEL_30;
    }

    sub_10000BAFC();
    v33 = v32;
    if (v65 != v66)
    {
      sub_100035E98(v64);
    }

    else
    {
      sub_10000D78C(v64);
    }

    v34[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v47 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
LABEL_9:
    v51 = v47 | (v39 << 6);
    v52 = (v34[6] + 16 * v51);
    v53 = *v52;
    v54 = v52[1];
    v55 = *(v34[7] + 8 * v51);
    if ((v68 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_10000EAC4();
    sub_10004A064();
    if (v56)
    {
      break;
    }

    sub_10000FE84();
LABEL_21:
    sub_100007DC0();
    *(v46 + v60) |= v61;
    v63 = (v38[6] + 16 * v62);
    *v63 = v53;
    v63[1] = v54;
    *(v38[7] + 8 * v62) = v55;
    ++v38[2];
    v34 = v67;
    if (!v43)
    {
      goto LABEL_4;
    }
  }

  sub_10000E7C0();
  while (1)
  {
    sub_100007A0C();
    if (v56)
    {
      if (v58)
      {
        break;
      }
    }

    if (v57 == v59)
    {
      v57 = 0;
    }

    if (v46[v57] != -1)
    {
      sub_10000A950();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_100457E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_100017014();
  sub_1000069B4();
  sub_10026D814(&qword_1006AC098, &unk_1005880E0);
  v38 = sub_10001E450();
  if (!v35[2])
  {
LABEL_29:

    *v34 = v38;
    sub_1000100E0();
    return;
  }

  v39 = 0;
  sub_1000153A8();
  sub_10003EACC();
  if (!v36)
  {
LABEL_4:
    v40 = v39;
    while (1)
    {
      v39 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v39 >= v34)
      {
        break;
      }

      ++v40;
      if (v35[v39 + 8])
      {
        sub_100007C8C();
        v36 = v42 & v41;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_10000BAFC();
      if (v51 != v52)
      {
        sub_100035E98(v50);
      }

      else
      {
        sub_10000D78C(v50);
      }

      v35[2] = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_10003EBC0();
LABEL_9:
    sub_10003DE64();
    if ((v43 & 1) == 0)
    {

      v44 = v35;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_10000EAC4();
    sub_10004A064();
    if (v45)
    {
      break;
    }

    sub_10000FE84();
LABEL_21:
    sub_100007DC0();
    sub_1000160E0(v49);
    if (!v36)
    {
      goto LABEL_4;
    }
  }

  sub_10000E7C0();
  while (1)
  {
    sub_100007A0C();
    if (v45)
    {
      if (v47)
      {
        break;
      }
    }

    if (v46 == v48)
    {
      v46 = 0;
    }

    if (*(v37 + 8 * v46) != -1)
    {
      sub_10000A950();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_100457FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10026D814(&unk_1006AC058, &qword_1005880B8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_32:
    *v3 = v7;
    return result;
  }

  v32 = v2;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        sub_100396044(0, (v31 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
      v21 = v19;
      v22 = v20;
    }

    result = NSObject._rawHashValue(seed:)(*(v7 + 40));
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
    *(*(v7 + 48) + 8 * v26) = v19;
    *(*(v7 + 56) + 8 * v26) = v20;
    ++*(v7 + 16);
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

id sub_1004582B4()
{
  v3 = *(v1 + 1176);

  return [v0 v3];
}

void sub_1004582CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_100458338()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(REMStore) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1004583A4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10045849C, 0, 0);
}

uint64_t sub_10045849C()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (!v2)
  {

    sub_100009EF4();
LABEL_12:

    return v28();
  }

  v63 = v0 + 16;
  v3 = *(v0 + 80);
  v4 = objc_opt_self();
  v6 = *(v3 + 16);
  v3 += 16;
  v5 = v6;
  v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v64 = *(v3 + 56);
  v66 = v4;
  v8 = (v3 - 8);
  do
  {
    v9 = v69[11];
    v10 = v69[12];
    v11 = v69[9];
    v5(v10, v7, v11);
    v5(v9, v10, v11);
    v12 = [v66 cdEntityName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = objc_allocWithZone(REMObjectID);
    sub_1004592E0(v9);
    (*v8)(v10, v11);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v7 += v64;
    --v2;
  }

  while (v2);
  v14 = v69[8];
  v15 = sub_100458338();
  v16 = [objc_allocWithZone(REMSaveRequest) initWithStore:v15];
  v69[13] = v16;

  v17 = *(v14 + 16);
  sub_100006AF0(0, &unk_1006A3C00, REMObjectID_ptr);
  v18 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v69[6] = 0;
  v20 = [v18 fetchRemindersWithObjectIDs:isa error:v69 + 6];

  v21 = v69[6];
  if (!v20)
  {
    v29 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100009EF4();
    goto LABEL_12;
  }

  sub_100006AF0(0, &qword_1006AC1A0, REMReminder_ptr);
  sub_10045939C();
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v21;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v27 = __CocoaDictionary.count.getter();
    }

    else
    {
      v27 = *(v22 + 16);
    }

    *(v26 + 4) = v27;

    _os_log_impl(&_mh_execute_header, v24, v25, "Found %ld reminders", v26, 0xCu);
  }

  else
  {
  }

  v32 = sub_10045964C(v31);
  v68 = v16;
  if (v32)
  {
    v33 = v32;
    specialized ContiguousArray.reserveCapacity(_:)();
    v70 = sub_1004595EC(v22);
    v71 = v34;
    v72 = v35 & 1;
    if (v33 < 0)
    {
      goto LABEL_45;
    }

    v36 = 0;
    v65 = v22 & 0xC000000000000001;
    v67 = v22;
    do
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_44;
      }

      v38 = sub_100008898();
      sub_100459738(v38, v39, v40, v67);
      v42 = v41;
      v43 = [v16 updateReminder:v41];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v65)
      {
        if (!v72)
        {
          goto LABEL_46;
        }

        v16 = v68;
        if (__CocoaDictionary.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_10026D814(&qword_1006AC1B0, &unk_100588150);
        v56 = Dictionary.Index._asCocoa.modify();
        __CocoaDictionary.formIndex(after:isUnique:)();
        v56(v63, 0);
      }

      else
      {
        v44 = sub_100008898();
        sub_100459404(v44, v45, v46, v67);
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v53 = sub_100008898();
        sub_100010000(v53, v54, v55);
        v70 = v48;
        v71 = v50;
        v72 = v52 & 1;
        v16 = v68;
      }

      ++v36;
    }

    while (v37 != v33);
    swift_bridgeObjectRelease_n();
    sub_100010000(v70, v71, v72);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v57 = sub_10000B6F4(_swiftEmptyArrayStorage);
  for (i = 0; v57 != i; ++i)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v59 = _swiftEmptyArrayStorage[i + 4];
    }

    v60 = v59;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    [v59 setCompleted:1];
  }

  v61 = swift_task_alloc();
  v69[14] = v61;
  *(v61 + 16) = v68;
  v62 = swift_task_alloc();
  v69[15] = v62;
  *v62 = v69;
  v62[1] = sub_100458C0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v62, 0, 0, 0xD00000000000001ELL, 0x80000001005790C0, sub_1004598D0, v61, &type metadata for () + 1);
}

uint64_t sub_100458C0C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100458DF8;
  }

  else
  {

    v2 = sub_100458D5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100458D5C()
{

  sub_100009EF4();

  return v1();
}

uint64_t sub_100458DF8()
{

  sub_100009EF4();

  return v1();
}

void sub_100458EA4(uint64_t a1, void *a2)
{
  v4 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_1004598D8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004582CC;
  aBlock[3] = &unk_1006310F0;
  v11 = _Block_copy(aBlock);

  [a2 saveWithQueue:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_100459080(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1004590F4()
{
  v1 = OBJC_IVAR____TtC13callservicesd13ReminderStore_logger;
  type metadata accessor for Logger();
  sub_1000080D0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ReminderStore(uint64_t a1)
{
  result = qword_1006AC0F0;
  if (!qword_1006AC0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004591E0(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10045927C()
{
  *(v0 + 16) = 0;
  Logger.init(subsystem:category:)();
  return v0;
}

id sub_1004592E0(uint64_t a1)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = String._bridgeToObjectiveC()();

  v6 = [v2 initWithUUID:isa entityName:v5];

  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

unint64_t sub_10045939C()
{
  result = qword_1006AC1A8;
  if (!qword_1006AC1A8)
  {
    sub_100006AF0(255, &unk_1006A3C00, REMObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AC1A8);
  }

  return result;
}

void sub_100459404(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (__CocoaDictionary.Index.age.getter() == *(a4 + 36))
    {
      __CocoaDictionary.Index.key.getter();
      sub_100006AF0(0, &unk_1006A3C00, REMObjectID_ptr);
      swift_dynamicCast();
      sub_1002DA91C();
      v5 = v4;

      if (v5)
      {
        __CocoaDictionary.Index.dictionary.getter();
        __CocoaDictionary.index(after:)();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(a4 + 36) == a2)
  {
    _HashTable.occupiedBucket(after:)();
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_10045956C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return _HashTable.occupiedBucket(after:)();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1004595EC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaDictionary.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t sub_10045964C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaDictionary.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_10045966C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1004596E8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100459738(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v5 = a2;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaDictionary.value(at:)();
      sub_100006AF0(0, &qword_1006AC1A0, REMReminder_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == v5)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  __CocoaDictionary.Index.key.getter();
  sub_100006AF0(0, &unk_1006A3C00, REMObjectID_ptr);
  swift_dynamicCast();
  v5 = v12;
  sub_1002DA91C();
  a1 = v7;
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a4 + 56) + 8 * a1);

  v11 = v10;
}

uint64_t sub_1004598D8(uint64_t a1)
{
  sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);

  return sub_100459080(a1);
}

uint64_t sub_100459954()
{
  sub_10045AB38();
  result = NSString.init(stringLiteral:)();
  qword_1006BAA40 = result;
  return result;
}

uint64_t sub_1004599E0()
{
  sub_10045AB38();
  result = NSString.init(stringLiteral:)();
  qword_1006BAA48 = result;
  return result;
}

id sub_100459A24(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_100459B04()
{
  v1 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_account);

  return v1;
}

uint64_t sub_100459BB0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDKeychainPasswordItem_account);
  *v3 = a1;
  v3[1] = a2;
}

id sub_100459BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR___CSDKeychainPasswordItem_service];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR___CSDKeychainPasswordItem_account];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR___CSDKeychainPasswordItem_accessGroup];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "init");
}

char *sub_100459CEC()
{
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100459DF8();
  if (!v0)
  {
    v6 = v4;
    v7 = v5;
    static String.Encoding.utf8.getter();
    v8 = String.init(data:encoding:)();
    if (v9)
    {
      v3 = v8;
    }

    else
    {
      v11 = sub_10045AAE4();
      sub_100008248(&type metadata for KeychainPasswordItem.KeychainError, v11);
      *v12 = 1;
      *(v12 + 4) = 1;
      swift_willThrow();
    }

    sub_100049B14(v6, v7);
  }

  return v3;
}

uint64_t sub_100459DF8()
{
  v0 = sub_10045A544();
  v12 = &type metadata for Bool;
  LOBYTE(v11) = 1;
  sub_10003EBF0(&v11, result);
  v1 = kSecReturnData;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10037A5D8(result, v1);

  result[0] = 0;
  type metadata accessor for CFString(0);
  sub_10045AA8C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  SecItemCopyMatching(isa, result);

  if (result[0] && (v9 = result[0], swift_unknownObjectRetain(), v3 = swift_dynamicCast(), (v3 & 1) != 0))
  {
    v0 = v11;
    v4 = sub_100004778(v3);
    v5 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Successfully read data from keychain", 36, 2, &_mh_execute_header, v4, v5, _swiftEmptyArrayStorage, v9);

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = sub_10045AAE4();
    sub_100008248(&type metadata for KeychainPasswordItem.KeychainError, v6);
    *v7 = 0;
    *(v7 + 4) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return v0;
}

uint64_t sub_10045A090(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_10045A1B4(v6, v8);
    return sub_100290B6C(v6, v8);
  }

  return result;
}

void sub_10045A1B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10045A544();
  v24 = &type metadata for Data;
  *&v23 = a1;
  *(&v23 + 1) = a2;
  sub_10003EBF0(&v23, v22);
  v5 = kSecValueData;
  sub_100290AC4(a1, a2);
  swift_isUniquelyReferenced_nonNull_native();
  v25 = v4;
  sub_10037A5D8(v22, v5);

  type metadata accessor for CFString(0);
  sub_10045AA8C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = SecItemAdd(isa, 0);

  if (v7 == -25299)
  {
    sub_10045A544();

    sub_10026D814(&qword_1006AC200, &qword_100588178);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D690;
    *(inited + 32) = v5;
    *(inited + 40) = a1;
    *(inited + 48) = a2;
    v9 = v5;
    sub_100290AC4(a1, a2);
    Dictionary.init(dictionaryLiteral:)();
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_10045A544();
    v11 = Dictionary._bridgeToObjectiveC()().super.isa;

    v12 = SecItemUpdate(v11, v10.super.isa);

    v13 = noErr.getter();
    if (v12 == v13)
    {
      v14 = sub_100004778(v13);
      v15 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Successfully updated item from keychain", 39, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);

LABEL_6:
      return;
    }

    v18 = sub_10045AAE4();
    sub_100008248(&type metadata for KeychainPasswordItem.KeychainError, v18);
    *v19 = -25299;
    *(v19 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    v16 = noErr.getter();
    if (v7 == v16)
    {
      v14 = sub_100004778(v16);
      v17 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Successfully added item to keychain", 35, 2, &_mh_execute_header, v14, v17, _swiftEmptyArrayStorage);
      goto LABEL_6;
    }

    v20 = sub_10045AAE4();
    sub_100008248(&type metadata for KeychainPasswordItem.KeychainError, v20);
    *v21 = v7;
    *(v21 + 4) = 0;
    swift_willThrow();
  }
}

uint64_t sub_10045A544()
{
  sub_10026D814(&qword_1006AC208, &qword_100588180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057CA70;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v2;
  *(inited + 72) = kSecAttrService;
  v3 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_service + 8);
  *(inited + 80) = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_service);
  *(inited + 88) = v3;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccount;
  v4 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_account + 8);
  *(inited + 120) = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_account);
  *(inited + 128) = v4;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrAccessGroup;
  v5 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_accessGroup);
  v6 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_accessGroup + 8);
  *(inited + 184) = &type metadata for String;
  *(inited + 160) = v5;
  *(inited + 168) = v6;
  sub_10045AA8C();
  v7 = kSecClass;
  v8 = kSecClassGenericPassword;
  v9 = kSecAttrService;

  v10 = kSecAttrAccount;

  v11 = kSecAttrAccessGroup;

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10045A8A0()
{
  swift_getObjectType();
  v6 = _typeName(_:qualified:)();
  v0._countAndFlagsBits = 40;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3D746E756F636361;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  return v6;
}

unint64_t sub_10045AA8C()
{
  result = qword_1006A1D68;
  if (!qword_1006A1D68)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A1D68);
  }

  return result;
}

unint64_t sub_10045AAE4()
{
  result = qword_1006AC1F8;
  if (!qword_1006AC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AC1F8);
  }

  return result;
}

unint64_t sub_10045AB38()
{
  result = qword_1006A9E70;
  if (!qword_1006A9E70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A9E70);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for KeychainPasswordItem.KeychainError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for KeychainPasswordItem.KeychainError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for KeychainPasswordItem.KeychainError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10045ABDC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045ABF8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

NSString sub_10045AC28()
{
  result = String._bridgeToObjectiveC()();
  static HandoffAudioController.routeIdentifierChangedNotification = result;
  return result;
}

uint64_t *HandoffAudioController.routeIdentifierChangedNotification.unsafeMutableAddressor()
{
  if (qword_1006A0C40 != -1)
  {
    sub_1000153C4(&qword_1006A0C40);
  }

  return &static HandoffAudioController.routeIdentifierChangedNotification;
}

NSString sub_10045ACEC()
{
  result = String._bridgeToObjectiveC()();
  static HandoffAudioController.continueHandoffAudioRouteNotification = result;
  return result;
}

uint64_t *HandoffAudioController.continueHandoffAudioRouteNotification.unsafeMutableAddressor()
{
  if (qword_1006A0C48 != -1)
  {
    swift_once();
  }

  return &static HandoffAudioController.continueHandoffAudioRouteNotification;
}

uint64_t HandoffAudioController.init()()
{
  swift_getObjectType();
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 queue];

  v3 = [v0 sharedInstance];
  v4 = [v3 conversationManager];

  HandoffAudioController.__allocating_init(callCenterQueue:audioDeviceController:routeController:conversationManager:)();
  v6 = v5;
  swift_deallocPartialClassInstance();
  return v6;
}

id sub_10045AEE0(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 *a1];

  return v3;
}

void HandoffAudioController.__allocating_init(callCenterQueue:audioDeviceController:routeController:conversationManager:)()
{
  sub_100005EF4();
  v21 = v0;
  v22 = v1;
  v19 = v2;
  v20 = v3;
  v17 = v4;
  v18 = v5;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  sub_100007FDC();
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  sub_100007FDC();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v24[5] = _swiftEmptyArrayStorage;
  sub_100017FB0(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24[2] = v17;
  v24[3] = v18;
  v23[2] = v19;
  v23[3] = v20;
  v15 = [objc_allocWithZone(type metadata accessor for SharedConversationServerBag()) init];
  sub_10045CDB4(v14, v21, sub_10045B200, v24, sub_10045D864, v23, v22, v15);
  sub_100005EDC();
}

char *HandoffAudioController.__allocating_init(queue:callCenterQueue:audioDeviceController:routeController:conversationManager:serverBag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100017418(a1, a2, a3, a4, a5, a6, a7, a8);
  v8 = sub_1000183BC();
  return sub_10045D220(v8, v9, v10, v11, v12, v13, v14, v15);
}

char *HandoffAudioController.init(queue:callCenterQueue:audioDeviceController:routeController:conversationManager:serverBag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100017418(a1, a2, a3, a4, a5, a6, a7, a8);
  v8 = sub_1000183BC();
  return sub_10045D2BC(v8, v9, v10, v11, v12, v13, v14, v15, v17);
}

void sub_10045B2C8(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR___CSDHandoffAudioController_routeController;
    [*(Strong + OBJC_IVAR___CSDHandoffAudioController_routeController) addDelegate:Strong];
    v12 = [*&v10[v11] pickedRoute];
    if (v12)
    {
      v13 = v12;
      if ([v12 isBluetooth])
      {
        v21 = *&v10[OBJC_IVAR___CSDHandoffAudioController_queue];
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = v13;
        v20 = v14;
        aBlock[4] = sub_10045D844;
        aBlock[5] = v15;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004CEC;
        aBlock[3] = &unk_100631430;
        v18 = _Block_copy(aBlock);

        v19 = v13;
        static DispatchQoS.unspecified.getter();
        v22 = _swiftEmptyArrayStorage;
        v17[1] = sub_100017FB0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
        sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v16 = v18;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v16);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v8, v5);

        return;
      }
    }
  }
}

char *sub_10045B658(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = sub_10045B6CC();
    v4 = &v2[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
    *v4 = v3;
    v4[1] = v5;
  }

  return result;
}

uint64_t sub_10045B6CC()
{
  v1 = [v0 isBluetooth];
  v2 = [v0 uniqueIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v1)
  {
    return v3;
  }

  sub_10001E364();
  v4 = StringProtocol.components<A>(separatedBy:)();

  if (*(v4 + 16))
  {
    v3 = *(v4 + 32);

    return v3;
  }

  __break(1u);
  return result;
}

void HandoffAudioController.__deallocating_deinit()
{
  sub_100005EF4();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v1);
  sub_100007FDC();
  v18 = sub_100007CD8();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  [*&v0[OBJC_IVAR___CSDHandoffAudioController_conversationManager] removeDelegate:v0];
  v8 = *&v0[OBJC_IVAR___CSDHandoffAudioController_callCenterQueue];
  sub_100006890();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  v21[4] = sub_10045D71C;
  v21[5] = v9;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v21[2] = v10;
  v21[3] = &unk_100631250;
  v11 = _Block_copy(v21);
  v12 = v8;
  v17 = v0;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000AB3C();
  sub_100017FB0(v13, v14, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  v15 = sub_10000FE14();
  v16(v15);
  (*(v3 + 8))(v7, v18);

  v19.receiver = v17;
  v19.super_class = type metadata accessor for HandoffAudioController();
  objc_msgSendSuper2(&v19, "dealloc");
  sub_100005EDC();
}

uint64_t sub_10045BAD0(uint64_t a1, NSString a2)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1006A0C40 != -1)
  {
    sub_1000153C4(&qword_1006A0C40);
  }

  v4 = static HandoffAudioController.routeIdentifierChangedNotification;
  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  [v3 postNotificationName:v4 object:a2];

  return swift_unknownObjectRelease();
}

void sub_10045BB8C()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v27 = v5;
  __chkstk_darwin(v6);
  sub_100007FDC();
  sub_100007CD8();
  sub_100007FEC();
  v25 = v8;
  v26 = v7;
  __chkstk_darwin(v7);
  sub_100007FDC();
  sub_1000115B0();
  v9 = type metadata accessor for Notification();
  sub_100007FEC();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v24[1] = *(v2 + OBJC_IVAR___CSDHandoffAudioController_queue);
  sub_100006890();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v9);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v29[4] = sub_10045D764;
  v29[5] = v17;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v29[2] = v18;
  v29[3] = &unk_100631368;
  v19 = _Block_copy(v29);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10000AB3C();
  sub_100017FB0(v20, v21, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  v22 = sub_10000FE14();
  v23(v22);
  (*(v25 + 8))(v1, v26);

  sub_100005EDC();
}

uint64_t sub_10045BE9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (!v25[3])
  {
    v7 = sub_10004975C(v25);
    goto LABEL_6;
  }

  v7 = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
LABEL_6:
    v17 = sub_100010B20(v7);
    v18 = static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10057D690;
    (*(v4 + 16))(v6, a1, v3);
    v20 = String.init<A>(reflecting:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100009D88();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:type:_:)("Could not parse audio route identifier from continue handoff notification: %@", 77, 2, &_mh_execute_header, v17, v18, v19);
    goto LABEL_7;
  }

  v9 = v24[0];
  v8 = v24[1];
  v10 = sub_100010B20(v7);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D690;
  v25[0] = v9;
  v25[1] = v8;

  v12 = String.init<A>(reflecting:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100009D88();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Continuing handoff of audio route with identifier %@", 52, 2, &_mh_execute_header, v10, v15, v11);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_10045C144();
LABEL_7:
  }
}

void sub_10045C144()
{
  sub_100005EF4();
  v3 = v2;
  v26 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v5);
  sub_100007FDC();
  v27 = sub_100007CD8();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  sub_1000115B0();
  v9 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = *&v0[OBJC_IVAR___CSDHandoffAudioController_queue];
  *(v14 - v13) = v16;
  (*(v11 + 104))(v14 - v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v9);
  if (v16)
  {
    v18 = swift_allocObject();
    v18[2] = v0;
    v18[3] = v26;
    v18[4] = v3;
    v28[4] = sub_10045D7F0;
    v28[5] = v18;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v28[2] = v19;
    v28[3] = &unk_1006313B8;
    v20 = _Block_copy(v28);
    v21 = v0;

    static DispatchQoS.unspecified.getter();
    sub_10000AB3C();
    sub_100017FB0(v22, v23, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    sub_10000E9E4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100008AB0();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    v24 = sub_10000FE14();
    v25(v24);
    (*(v7 + 8))(v1, v27);

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_10045C524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = OBJC_IVAR___CSDHandoffAudioController_routeController;
  v5 = [*(a1 + OBJC_IVAR___CSDHandoffAudioController_routeController) routes];
  sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_10000B6F4(v6);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      v16 = sub_100010B20(v15);
      v17 = static os_log_type_t.error.getter();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10057D690;

      v19 = String.init<A>(reflecting:)();
      v21 = v20;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_100009D88();
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      os_log(_:dso:log:type:_:)("Could not take audio route with identifier %@ active because either it could not be found as a valid route", 106, 2, &_mh_execute_header, v16, v17, v18);

      return;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v24 = v9;
    v10 = [v9 isBluetooth];
    v11 = v24;
    if (!v10)
    {
      goto LABEL_13;
    }

    if (sub_10045B6CC() == a2 && v12 == a3)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v24;
    if (v14)
    {
      goto LABEL_17;
    }

LABEL_13:
  }

LABEL_17:

  [*(a1 + v22) pickRoute:v24];
}

void HandoffAudioController.conversationManager(_:stateChangedFor:)()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v50 = v5;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v48 = v11;
  v49 = v10;
  __chkstk_darwin(v10);
  sub_100007FDC();
  sub_1000115B0();
  v12 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v19 = *(v0 + OBJC_IVAR___CSDHandoffAudioController_callCenterQueue);
  *(v17 - v16) = v19;
  (*(v14 + 104))(v17 - v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v12);
  if (v21)
  {
    if ([v3 state] == 3)
    {
      v47 = v4;
      v22 = sub_100010B20(3);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10057D690;
      v24 = OBJC_IVAR___CSDHandoffAudioController_routeController;
      v25 = [*(v0 + OBJC_IVAR___CSDHandoffAudioController_routeController) pickedRoute];
      v26 = sub_100291654(v25);
      v28 = v27;

      *(v23 + 56) = &type metadata for String;
      v29 = sub_100009D88();
      *(v23 + 64) = v29;
      *(v23 + 32) = v26;
      *(v23 + 40) = v28;
      v30 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Conversation become joined, current route is %@", 47, 2, &_mh_execute_header, v22, v30, v23);

      v31 = [*(v0 + v24) pickedRoute];
      if (v31)
      {
        v32 = v31;
        if ([v31 isBluetooth])
        {
          sub_100006890();
          v33 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v34 = swift_allocObject();
          *(v34 + 16) = v33;
          *(v34 + 24) = v32;
          v51[4] = sub_10045D75C;
          v51[5] = v34;
          sub_100009FE4();
          sub_1000081D4(COERCE_DOUBLE(1107296256));
          v51[2] = v35;
          v51[3] = &unk_1006312C8;
          v36 = _Block_copy(v51);

          v37 = v32;
          static DispatchQoS.unspecified.getter();
          sub_10000AB3C();
          sub_100017FB0(v38, v39, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
          sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v36);

          (*(v50 + 8))(v9, v47);
          (*(v48 + 8))(v1, v49);

          goto LABEL_8;
        }
      }

      v40 = sub_100010B20(v31);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_10057D690;
      v42 = [*(v0 + v24) pickedRoute];
      v43 = sub_100291654(v42);
      v45 = v44;

      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = v29;
      *(v41 + 32) = v43;
      *(v41 + 40) = v45;
      v46 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Not triggering route change notification for handoff in response to conversation becoming joined, as a non-bluetooth route is in use: %@", 136, 2, &_mh_execute_header, v40, v46, v41);
    }

LABEL_8:
    sub_100005EDC();
    return;
  }

  __break(1u);
}

char *sub_10045CCB8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = sub_10045B6CC();
    v4 = &v2[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
    *v4 = v3;
    v4[1] = v5;

    v6 = sub_10045B6CC();
    sub_10045BAD0(v6, v7);
  }

  return result;
}

char *sub_10045CDB4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, void *a7, void *a8)
{
  v38 = a8;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v32 - 8);
  __chkstk_darwin(v32);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v33 = *(v14 - 8);
  v34 = v14;
  __chkstk_darwin(v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandoffAudioController();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v18[OBJC_IVAR___CSDHandoffAudioController_routeController] = a5();
  *&v18[OBJC_IVAR___CSDHandoffAudioController_queue] = a1;
  *&v18[OBJC_IVAR___CSDHandoffAudioController_callCenterQueue] = a2;
  *&v18[OBJC_IVAR___CSDHandoffAudioController_conversationManager] = a7;
  *&v18[OBJC_IVAR___CSDHandoffAudioController_serverBag] = v38;
  v41.receiver = v18;
  v41.super_class = v17;
  v38 = a1;
  v36 = a2;
  v35 = a7;
  v20 = objc_msgSendSuper2(&v41, "init");
  v21 = *&v20[OBJC_IVAR___CSDHandoffAudioController_conversationManager];
  v22 = OBJC_IVAR___CSDHandoffAudioController_callCenterQueue;
  v23 = *&v20[OBJC_IVAR___CSDHandoffAudioController_callCenterQueue];
  v24 = v20;
  [v21 addDelegate:v24 queue:v23];
  v25 = *&v20[v22];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10045D860;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100631458;
  v27 = _Block_copy(aBlock);
  v28 = v25;

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_100017FB0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v29 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v37 + 8))(v13, v29);
  (*(v33 + 8))(v16, v34);

  v30 = [objc_opt_self() defaultCenter];
  if (qword_1006A0C48 != -1)
  {
    swift_once();
  }

  [v30 addObserver:v24 selector:"handleContinueHandoffAudioRouteNotification:" name:static HandoffAudioController.continueHandoffAudioRouteNotification object:{0, v32}];

  return v24;
}

char *sub_10045D220(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void *a7, uint64_t a8)
{
  v18 = objc_allocWithZone(type metadata accessor for HandoffAudioController());

  return sub_10045D2BC(a1, a2, a3, a4, a5, a6, a7, a8, v18);
}

char *sub_10045D2BC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void *a7, uint64_t a8, char *a9)
{
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v35 = *(v16 - 8);
  v36 = v16;
  v17 = __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &a9[OBJC_IVAR___CSDHandoffAudioController_pickedRouteUniqueIdentifier];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&a9[OBJC_IVAR___CSDHandoffAudioController_routeController] = a5(v17);
  *&a9[OBJC_IVAR___CSDHandoffAudioController_queue] = a1;
  *&a9[OBJC_IVAR___CSDHandoffAudioController_callCenterQueue] = a2;
  *&a9[OBJC_IVAR___CSDHandoffAudioController_conversationManager] = a7;
  *&a9[OBJC_IVAR___CSDHandoffAudioController_serverBag] = a8;
  v21 = type metadata accessor for HandoffAudioController();
  v43.receiver = a9;
  v43.super_class = v21;
  v40 = a1;
  v39 = a2;
  v38 = a7;
  v22 = objc_msgSendSuper2(&v43, "init");
  v23 = *&v22[OBJC_IVAR___CSDHandoffAudioController_conversationManager];
  v24 = OBJC_IVAR___CSDHandoffAudioController_callCenterQueue;
  v25 = *&v22[OBJC_IVAR___CSDHandoffAudioController_callCenterQueue];
  v26 = v22;
  [v23 addDelegate:v26 queue:v25];
  v27 = *&v22[v24];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10045D7FC;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_1006313E0;
  v29 = _Block_copy(aBlock);
  v30 = v27;

  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_100017FB0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v31 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v37 + 8))(v15, v31);
  (*(v35 + 8))(v19, v36);

  v32 = [objc_opt_self() defaultCenter];
  if (qword_1006A0C48 != -1)
  {
    swift_once();
  }

  [v32 addObserver:v26 selector:"handleContinueHandoffAudioRouteNotification:" name:static HandoffAudioController.continueHandoffAudioRouteNotification object:{0, v34}];

  return v26;
}

uint64_t sub_10045D764()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10045BE9C(v0 + v2, v3);
}

uint64_t sub_10045D804()
{

  return _swift_deallocObject(v0);
}

void sub_10045D880(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
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
    v41 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    v38 = sub_10001E578();
    v39 = v3;
    v40 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v38;
        v8 = v40;
        v35 = v39;
        v9 = v1;
        sub_10001E580(v38, v39, v40, v1);
        v11 = v10;
        v12 = sub_10001E1D4();
        v14 = v13;

        v15 = v36;
        v41 = v36;
        v17 = v36[2];
        v16 = v36[3];
        if (v17 >= v16 >> 1)
        {
          sub_10039A2E0(v16 > 1, v17 + 1, 1);
          v15 = v41;
        }

        v15[2] = v17 + 1;
        v18 = &v15[2 * v17];
        v18[4] = v12;
        v18[5] = v14;
        v36 = v15;
        if (v34)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v23 = v33;
          sub_10026D814(&unk_1006A2650, &qword_10057D170);
          v24 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v24(v37, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v19 = 1 << *(v9 + 32);
          if (v7 >= v19)
          {
            goto LABEL_32;
          }

          v20 = v7 >> 6;
          v21 = *(v32 + 8 * (v7 >> 6));
          if (((v21 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v35)
          {
            goto LABEL_34;
          }

          v22 = v21 & (-2 << (v7 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v23 = v33;
          }

          else
          {
            v25 = v20 << 6;
            v26 = v20 + 1;
            v27 = (v31 + 8 * v20);
            v23 = v33;
            while (v26 < (v19 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_100010000(v7, v35, 0);
                v19 = __clz(__rbit64(v28)) + v25;
                goto LABEL_27;
              }
            }

            sub_100010000(v7, v35, 0);
          }

LABEL_27:
          v30 = *(v9 + 36);
          v38 = v19;
          v39 = v30;
          v40 = 0;
        }

        if (v5 == v23)
        {
          sub_100010000(v38, v39, v40);
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

void sub_10045DB80(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
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
    v42 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    v39 = sub_10001E578();
    v40 = v3;
    v41 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v39;
        v8 = v41;
        v36 = v40;
        v9 = v1;
        sub_1002E96BC(v39, v40, v41, v1);
        v11 = v10;
        v12 = [v10 handle];
        v13 = sub_10001E1D4();
        v15 = v14;

        v16 = v37;
        v42 = v37;
        v18 = v37[2];
        v17 = v37[3];
        if (v18 >= v17 >> 1)
        {
          sub_10039A2E0(v17 > 1, v18 + 1, 1);
          v16 = v42;
        }

        v16[2] = v18 + 1;
        v19 = &v16[2 * v18];
        v19[4] = v13;
        v19[5] = v15;
        v37 = v16;
        if (v35)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v24 = v34;
          sub_10026D814(&qword_1006AC408, &unk_1005882D0);
          v25 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v25(v38, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v20 = 1 << *(v9 + 32);
          if (v7 >= v20)
          {
            goto LABEL_32;
          }

          v21 = v7 >> 6;
          v22 = *(v33 + 8 * (v7 >> 6));
          if (((v22 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v36)
          {
            goto LABEL_34;
          }

          v23 = v22 & (-2 << (v7 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v24 = v34;
          }

          else
          {
            v26 = v21 << 6;
            v27 = v21 + 1;
            v28 = (v32 + 8 * v21);
            v24 = v34;
            while (v27 < (v20 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_100010000(v7, v36, 0);
                v20 = __clz(__rbit64(v29)) + v26;
                goto LABEL_27;
              }
            }

            sub_100010000(v7, v36, 0);
          }

LABEL_27:
          v31 = *(v9 + 36);
          v39 = v20;
          v40 = v31;
          v41 = 0;
        }

        if (v5 == v24)
        {
          sub_100010000(v39, v40, v41);
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

void *sub_10045DE9C(uint64_t a1)
{
  v40 = type metadata accessor for CharacterSet();
  v3 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v34[1] = v1;
    v47 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v5, 0);
    v7 = v47;
    v10 = sub_100308264(a1);
    result = v7;
    v11 = 0;
    v44 = a1 + 56;
    v37 = a1;
    v38 = (v3 + 8);
    v35 = a1 + 64;
    v36 = v5;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(a1 + 32))
      {
        v12 = v10 >> 6;
        if ((*(v44 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_30;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_31;
        }

        v42 = v9;
        v41 = v8;
        v43 = result;
        v13 = (*(a1 + 48) + 16 * v10);
        v14 = v13[1];
        v45 = *v13;
        v46 = v14;

        v15 = v39;
        static CharacterSet.controlCharacters.getter();
        sub_10001E364();
        v16 = StringProtocol.trimmingCharacters(in:)();
        v18 = v17;
        (*v38)(v15, v40);
        v19 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        if (!v19)
        {

          if (qword_1006A0C50 != -1)
          {
            swift_once();
          }

          v16 = qword_1006AC3A0;
          v18 = *algn_1006AC3A8;
        }

        result = v43;
        v47 = v43;
        v21 = v43[2];
        v20 = v43[3];
        if (v21 >= v20 >> 1)
        {
          sub_10039A2E0(v20 > 1, v21 + 1, 1);
          result = v47;
        }

        result[2] = v21 + 1;
        v22 = &result[2 * v21];
        v22[4] = v16;
        v22[5] = v18;
        if (v42)
        {
          goto LABEL_35;
        }

        a1 = v37;
        v23 = 1 << *(v37 + 32);
        if (v10 >= v23)
        {
          goto LABEL_32;
        }

        v24 = *(v44 + 8 * v12);
        if ((v24 & (1 << v10)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v37 + 36) != v41)
        {
          goto LABEL_34;
        }

        v25 = v24 & (-2 << (v10 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v26 = v36;
        }

        else
        {
          v27 = v12 << 6;
          v28 = v12 + 1;
          v26 = v36;
          v29 = (v35 + 8 * v12);
          while (v28 < (v23 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              v32 = result;
              sub_100010000(v10, v41, 0);
              result = v32;
              v23 = __clz(__rbit64(v30)) + v27;
              goto LABEL_25;
            }
          }

          v33 = result;
          sub_100010000(v10, v41, 0);
          result = v33;
        }

LABEL_25:
        if (++v11 == v26)
        {
          return result;
        }

        v9 = 0;
        v8 = *(a1 + 36);
        v10 = v23;
        if (v23 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  return result;
}

void sub_10045E238(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v7 = a3 + 64;
  sub_100007990();
  sub_10000D568(v8, v9, v10);
  v11 = 0;
  if (v5)
  {
    while (1)
    {
      v12 = v11;
LABEL_6:
      v13 = (*(a3 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v5)))));
      v14 = v13[1];
      v17[0] = *v13;
      v17[1] = v14;

      v15 = v18(v17);
      if (v3)
      {
        break;
      }

      v16 = v15;

      if (v16)
      {
        goto LABEL_10;
      }

      v5 &= v5 - 1;
      v11 = v12;
      if (!v5)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    sub_100015C08();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v4)
      {
LABEL_10:

        goto LABEL_11;
      }

      v5 = *(v7 + 8 * v12);
      ++v11;
      if (v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

BOOL sub_10045E360()
{
  sub_100016114();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v11 = *v4;
    v7 = v11;
    v8 = v1(&v11);
    if (v0)
    {

      return v5 != 0;
    }

    v9 = v8;

    ++v4;
  }

  while ((v9 & 1) == 0);
  return v5 != 0;
}

void sub_10045E400(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v7 = a3 + 64;
  sub_100007990();
  sub_10000D568(v8, v9, v10);
  v11 = 0;
  if (v5)
  {
    while (1)
    {
      v12 = v11;
LABEL_6:
      v17 = *(*(a3 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v5)))));
      v13 = v17;
      v14 = a1(&v17);
      if (v3)
      {
        break;
      }

      v15 = v14;

      if (v15)
      {
        goto LABEL_10;
      }

      v5 &= v5 - 1;
      v11 = v12;
      if (!v5)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    sub_100015C08();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v4)
      {
LABEL_10:

        goto LABEL_11;
      }

      v5 = *(v7 + 8 * v12);
      ++v11;
      if (v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_10045E51C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006AC410, CXMember_ptr);
    sub_10000CE3C(&qword_1006A3898, &qword_1006AC410, CXMember_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
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

  v22 = _swiftEmptyArrayStorage;
LABEL_8:
  v9 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100006AF0(0, &qword_1006AC410, CXMember_ptr), swift_dynamicCast(), v12 = v28, v9 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_, !v28))
    {
LABEL_25:
      sub_100022DDC(v1);
      return;
    }

LABEL_18:
    v13 = [v12 v9[120]];
    v14 = [v13 tuHandle];

    if (v14)
    {
      v15 = sub_10001E1D4();
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100017840();
        v22 = v20;
      }

      v18 = v22[2];
      if (v18 >= v22[3] >> 1)
      {
        sub_100017840();
        v22 = v21;
      }

      v22[2] = v18 + 1;
      v19 = &v22[2 * v18];
      v19[4] = v15;
      v19[5] = v17;
      goto LABEL_8;
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_10045E7EC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1006AC3A0 = result;
  *algn_1006AC3A8 = v1;
  return result;
}

void sub_10045E81C()
{
  sub_100005EF4();
  v2 = v1;
  v30 = v3;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v34 = v4;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v8 = v7 - v6;
  v33 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v31 = v9;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
  sub_100006AF0(0, &unk_1006A2B70, STConversation_ptr);
  *&v0[v14] = sub_100017E7C();
  v15 = OBJC_IVAR___CSDScreenTimeCallFilter_synchronousConversationsForBundleIdentifier;
  *&v0[v15] = sub_100017E7C();
  v16 = OBJC_IVAR___CSDScreenTimeCallFilter_contextsForCallIdentifier;
  type metadata accessor for UUID();
  sub_100006AF0(0, &unk_1006A7560, STConversationContext_ptr);
  sub_100461DBC(&qword_1006A3BE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *&v0[v16] = Dictionary.init(dictionaryLiteral:)();
  v17 = OBJC_IVAR___CSDScreenTimeCallFilter_observationForCallIdentifier;
  type metadata accessor for NSKeyValueObservation();
  *&v0[v17] = Dictionary.init(dictionaryLiteral:)();
  *&v0[OBJC_IVAR___CSDScreenTimeCallFilter_providerManager] = v30;
  swift_unknownObjectWeakAssign();
  v36.receiver = v0;
  v36.super_class = type metadata accessor for ScreenTimeCallFilter();
  v18 = v30;
  v19 = objc_msgSendSuper2(&v36, "initWithQueue:", v2);
  v20 = *&v19[OBJC_IVAR___CSDScreenTimeCallFilter_providerManager];
  v21 = v19;
  [v20 addDelegate:v21 queue:v2];
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v2;
  v35[4] = sub_100461E5C;
  v35[5] = v22;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 1107296256;
  sub_10000A600();
  v35[2] = v23;
  v35[3] = &unk_100631688;
  v24 = _Block_copy(v35);
  v25 = v21;
  v26 = v2;
  static DispatchQoS.unspecified.getter();
  sub_10000F924();
  sub_100461DBC(v27, v28, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v34 + 8))(v8, v32);
  (*(v31 + 8))(v13, v33);

  v29 = [objc_opt_self() defaultCenter];
  [v29 addObserver:v25 selector:"handleCallRemoteParticipantsChanged:" name:TUCallRemoteParticipantHandlesChangedNotification object:0];

  swift_unknownObjectRelease();
  sub_100005EDC();
}

void sub_10045EC68(uint64_t a1, uint64_t a2)
{
  sub_100460458();
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 conversationManager];

  [v5 addDelegate:a1 queue:a2];
}

uint64_t sub_10045ED64(uint64_t a1)
{
  if (a1)
  {
    sub_10001E1D4();
  }

  else if (qword_1006A0C50 != -1)
  {
    sub_10000AB54(&qword_1006A0C50);
  }

  return 0;
}

uint64_t sub_10045EE0C(void *a1, void *a2)
{
  v4 = sub_100461450(a1);
  v5 = sub_1002C89F0(a2);
  v7 = sub_10001DAF4(v4, v5, v6);

  if (v7)
  {
    [a1 setFilteredOutReason:5];
  }

  return v7 & 1;
}

uint64_t sub_10045EEFC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
  sub_100005298(v3 + OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier, v15);
  v7 = *(v3 + v6);

  v8 = sub_100007764();
  sub_100023E48(v8, v9, v7);
  sub_10000C768();
  if (a3)
  {
    sub_10045DE9C(a1);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [a3 allowableByContactsHandles:isa];

    v12 = [v11 allowedByContactsHandle];
    sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
    return Dictionary.init(dictionaryLiteral:)();
  }

  return v13;
}

uint64_t sub_10045F144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100460A98();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;

  v6 = sub_10001E78C(v5);
  sub_10045DE9C(v6);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v4 allowableByContactsHandles:isa];

  v9 = [v8 shouldBeAllowedDuringGeneralScreenTime];
  v10 = [v8 allowedByScreenTime];
  v11 = [v8 applicationCurrentlyLimited];
  v12 = 1;
  if (!v11)
  {
    v12 = 2;
  }

  if (v10)
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = 3;
  }

  if (qword_1006A0AA0 != -1)
  {
    sub_100008134(&qword_1006A0AA0);
  }

  v25 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057E830;
  type metadata accessor for CSDCallFilterStatus(0);
  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_100009D88();
  *(v14 + 64) = v18;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;

  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  v19 = String.init<A>(reflecting:)();
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v18;
  *(v14 + 72) = v19;
  *(v14 + 80) = v20;

  v21 = String.init<A>(reflecting:)();
  *(v14 + 136) = &type metadata for String;
  *(v14 + 144) = v18;
  *(v14 + 112) = v21;
  *(v14 + 120) = v22;
  v23 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Screen time: Filter status is %@ for addresses %@ with bundle identifier: %@", 76, 2, &_mh_execute_header, v25, v23, v14);

  return v13;
}

uint64_t sub_10045F420(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
  sub_100005298(v3 + OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier, v17);
  v6 = *(v3 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_100007764();
    v9 = sub_100005208(v7, v8);
    if (v10)
    {
      v11 = *(*(v6 + 56) + 8 * v9);
      sub_10000C768();

      v13 = sub_10001E78C(v12);
      sub_10045DE9C(v13);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v15 = [a3 allowableByContactsHandles:isa];

      LODWORD(isa) = [v15 shouldBeAllowedByScreenTimeWhenLimited];
      return isa ^ 1;
    }
  }

  return 0;
}

uint64_t sub_10045F5BC(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{

  v8 = sub_10001E78C(v7);
  v9 = sub_10045DE9C(v8);

  if (a4)
  {
    sub_1004615A4();
  }

  else
  {
    v10 = sub_10001DAF4(v9, a2, a3);
  }

  v11 = v10;

  return v11 & 1;
}

void sub_10045F7C0()
{
  sub_100005EF4();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v3);
  sub_100007FDC();
  v22 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = v10;
  v12[4] = v0;
  v23[4] = sub_100461E3C;
  v23[5] = v12;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  sub_10000A600();
  v23[2] = v13;
  v23[3] = &unk_100631520;
  v14 = _Block_copy(v23);
  v15 = v2;
  v16 = v10;
  v17 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000F924();
  sub_100461DBC(v18, v19, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  v20 = sub_100007764();
  v21(v20);
  (*(v5 + 8))(v9, v22);

  sub_100005EDC();
}

void sub_10045FA54(void *a1, void *a2, uint64_t a3)
{
  v43 = a3;
  v42 = type metadata accessor for UUID();
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v8 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v9 = swift_allocObject();
  v44 = xmmword_10057D690;
  *(v9 + 16) = xmmword_10057D690;
  aBlock[0] = a1;
  v10 = sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
  v11 = a1;
  v41[1] = v10;
  v12 = String.init<A>(reflecting:)();
  v14 = v13;
  *(v9 + 56) = &type metadata for String;
  v45 = sub_100009D88();
  *(v9 + 64) = v45;
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  v15 = static os_log_type_t.default.getter();
  v46 = v8;
  os_log(_:dso:log:type:_:)("Screen time: Handling active participants changed for conversation: %@", 70, 2, &_mh_execute_header, v8, v15, v9);

  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100461E48;
  *(v17 + 24) = v16;
  aBlock[4] = sub_10002E4BC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E470;
  aBlock[3] = &unk_100631598;
  v18 = _Block_copy(aBlock);
  v19 = v11;

  v20 = [a2 callPassingTest:v18];
  _Block_release(v18);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v20)
    {
      v21 = v20;
      v22 = [v21 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = OBJC_IVAR___CSDScreenTimeCallFilter_contextsForCallIdentifier;
      v24 = v43;
      swift_beginAccess();
      v25 = *(v24 + v23);

      v26 = sub_100025C58(v7, v25);

      (*(v5 + 8))(v7, v42);
      if (v26)
      {

        v27 = swift_allocObject();
        *(v27 + 16) = v44;
        v47 = v19;
        v28 = v19;
        v29 = String.init<A>(reflecting:)();
        v30 = v45;
        *(v27 + 56) = &type metadata for String;
        *(v27 + 64) = v30;
        *(v27 + 32) = v29;
        *(v27 + 40) = v31;
        v32 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Screen time: Found call for conversation, updating call", 55, 2, &_mh_execute_header, v46, v32, v27);

        sub_10002156C();

        return;
      }
    }

    v33 = swift_allocObject();
    *(v33 + 16) = v44;
    v34 = [objc_opt_self() sharedInstance];
    v35 = [v34 currentAudioAndVideoCalls];

    sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = v36;
    sub_10026D814(&unk_1006AC438, &qword_100588300);
    v37 = String.init<A>(reflecting:)();
    v38 = v45;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = v38;
    *(v33 + 32) = v37;
    *(v33 + 40) = v39;
    v40 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Screen time: Could not find call in all calls: %@", 49, 2, &_mh_execute_header, v46, v40, v33);
  }
}

uint64_t sub_10045FF70(void *a1, void *a2)
{
  if (![a1 isConversation] || (v4 = objc_msgSend(a1, "remoteParticipantHandles"), sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr), sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr), v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v4, v6 = sub_10001E558(v5), , v7 = objc_msgSend(a2, "remoteMembers"), sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr), sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr), v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v7, v9 = sub_10001E558(v8), , v6 != v9))
  {
    v38 = 0;
    return v38 & 1;
  }

  v10 = [a1 remoteParticipantHandles];
  v40 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = [a2 remoteMembers];
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_10001E558(v12);
  if (!v13)
  {

    v37 = _swiftEmptyArrayStorage;
LABEL_29:
    v39 = sub_1002F1FE8(v37);
    v38 = sub_1002F5908(v40, v39);

    return v38 & 1;
  }

  v14 = v13;
  v45 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = sub_10001E578();
  v42 = result;
  v43 = v16;
  v44 = v17 & 1;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    while (!__OFADD__(v18++, 1))
    {
      v20 = v42;
      v21 = v43;
      v22 = v44;
      sub_1002E944C(v42, v43, v44, v12);
      v24 = v23;
      v25 = [v23 handle];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if ((v12 & 0xC000000000000001) != 0)
      {
        if (!v22)
        {
          goto LABEL_36;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_10026D814(&unk_1006A3C40, &unk_100580340);
        v30 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v30(v41, 0);
      }

      else
      {
        if (v22)
        {
          goto LABEL_37;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        v26 = 1 << *(v12 + 32);
        if (v20 >= v26)
        {
          goto LABEL_32;
        }

        v27 = v20 >> 6;
        v28 = *(v12 + 56 + 8 * (v20 >> 6));
        if (((v28 >> v20) & 1) == 0)
        {
          goto LABEL_33;
        }

        if (*(v12 + 36) != v21)
        {
          goto LABEL_34;
        }

        v29 = v28 & (-2 << (v20 & 0x3F));
        if (v29)
        {
          v26 = __clz(__rbit64(v29)) | v20 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v27 << 6;
          v32 = v27 + 1;
          v33 = (v12 + 64 + 8 * v27);
          while (v32 < (v26 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              result = sub_100010000(v20, v21, 0);
              v26 = __clz(__rbit64(v34)) + v31;
              goto LABEL_24;
            }
          }

          result = sub_100010000(v20, v21, 0);
        }

LABEL_24:
        v36 = *(v12 + 36);
        v42 = v26;
        v43 = v36;
        v44 = 0;
      }

      if (v18 == v14)
      {

        sub_100010000(v42, v43, v44);
        v37 = v45;
        goto LABEL_29;
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
  return result;
}

void sub_100460458()
{
  sub_100005EF4();
  v2 = v0;
  v3 = [*(v0 + OBJC_IVAR___CSDScreenTimeCallFilter_providerManager) localProvidersByIdentifierForRemoteClients:0];
  sub_100006AF0(0, &unk_1006A7B10, TUCallProvider_ptr);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007990();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = v4 + 64;
  v11 = 0;
  v76 = _swiftEmptyArrayStorage;
  v79 = v4 + 64;
  while (v7)
  {
LABEL_7:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = sub_1002C89F0(*(*(v4 + 56) + ((v11 << 9) | (8 * v13))));
    v10 = v79;
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100017840();
        v76 = v21;
      }

      v18 = v76[2];
      v10 = v79;
      if (v18 >= v76[3] >> 1)
      {
        sub_100017840();
        v10 = v79;
        v76 = v22;
      }

      v19 = v76;
      v76[2] = v18 + 1;
      v20 = &v19[2 * v18];
      v20[4] = v16;
      v20[5] = v17;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v12 >= v9)
    {
      break;
    }

    v7 = *(v10 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_7;
    }
  }

  v74 = v4;

  v1 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
  sub_100005298(v2 + OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier, &v83);
  v23 = *(v2 + v1) + 64;
  sub_100007990();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v75 = v29;

  v31 = 0;
  v78 = 0;
  v80 = _swiftEmptyArrayStorage;
  while (v26)
  {
    v32 = v31;
LABEL_19:
    v77 = &v73;
    v33 = (*(v75 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v26)))));
    v34 = *v33;
    v35 = v33[1];
    v26 &= v26 - 1;
    v81[0] = *v33;
    v81[1] = v35;
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    *(&v73 - 2) = v81;

    v36 = v78;
    v37 = sub_100013094();
    v78 = v36;
    if (v37)
    {

      v31 = v32;
    }

    else
    {
      v38 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10039A2E0(0, v38[2] + 1, 1);
        v38 = v82;
      }

      v40 = v38[2];
      v39 = v38[3];
      v41 = (v40 + 1);
      if (v40 >= v39 >> 1)
      {
        v80 = (v40 + 1);
        sub_10039A2E0(v39 > 1, v40 + 1, 1);
        v41 = v80;
        v38 = v82;
      }

      v38[2] = v41;
      v80 = v38;
      v42 = &v38[2 * v40];
      v42[4] = v34;
      v42[5] = v35;
      v31 = v32;
    }
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v28)
    {

      v43 = 0;
      v44 = v80;
      v45 = v80[2];
      v46 = v80 + 5;
      while (v45 != v43)
      {
        if (v43 >= v44[2])
        {
          goto LABEL_47;
        }

        v48 = *(v46 - 1);
        v47 = *v46;
        swift_beginAccess();

        v49 = sub_100005208(v48, v47);
        if (v50)
        {
          v51 = v49;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          v82 = *(v2 + v1);
          v53 = v82;
          *(v2 + v1) = 0x8000000000000000;
          v54 = v53[3];
          sub_10026D814(&qword_1006A6EA0, &qword_100582680);
          v55 = v52;
          v44 = v80;
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v55, v54);
          v56 = v82;

          sub_100006AF0(0, &unk_1006A2B70, STConversation_ptr);
          _NativeDictionary._delete(at:)();
          *(v2 + v1) = v56;
        }

        swift_endAccess();

        v46 += 2;
        ++v43;
      }

      v57 = v74;
      v58 = 1 << *(v74 + 32);
      v59 = -1;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      v60 = v59 & *(v74 + 64);
      v61 = (v58 + 63) >> 6;

      v62 = 0;
      while (v60)
      {
        v63 = v62;
LABEL_41:
        v64 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        v65 = *(*(v57 + 56) + 8 * (v64 | (v63 << 6)));

        v66 = v65;
        sub_100461180(v66);
      }

      while (1)
      {
        v63 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_46;
        }

        if (v63 >= v61)
        {

          if (qword_1006A0AA0 != -1)
          {
            goto LABEL_48;
          }

          goto LABEL_43;
        }

        v60 = *(v79 + 8 * v63);
        ++v62;
        if (v60)
        {
          v62 = v63;
          goto LABEL_41;
        }
      }
    }

    v26 = *(v23 + 8 * v32);
    ++v31;
    if (v26)
    {
      goto LABEL_19;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  sub_100008134(&qword_1006A0AA0);
LABEL_43:
  v67 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_10057D690;
  v81[0] = *(v2 + v1);

  sub_10026D814(&unk_1006AC428, &unk_1005882F0);
  v69 = String.init<A>(reflecting:)();
  v71 = v70;
  *(v68 + 56) = &type metadata for String;
  *(v68 + 64) = sub_100009D88();
  *(v68 + 32) = v69;
  *(v68 + 40) = v71;
  v72 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Screen time: Conversation for providers: %@", 43, 2, &_mh_execute_header, v67, v72, v68);

  sub_100005EDC();
}

void sub_100460A98()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchTime();
  sub_100007FEC();
  v51 = v7;
  v52 = v6;
  v8 = __chkstk_darwin(v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v47 - v11;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v12);
  sub_100007FDC();
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  sub_100007FDC();
  v14 = OBJC_IVAR___CSDScreenTimeCallFilter_synchronousConversationsForBundleIdentifier;
  sub_100005298(&v1[OBJC_IVAR___CSDScreenTimeCallFilter_synchronousConversationsForBundleIdentifier], &v61);
  v48 = v14;
  v15 = *&v1[v14];
  if (*(v15 + 16))
  {

    v16 = sub_100005208(v5, v3);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);
      sub_10000C768();
      goto LABEL_13;
    }
  }

  sub_100006890();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v49 = (v19 + 16);
  static DispatchQoS.default.getter();
  sub_10026D814(&unk_1006AC418, &unk_1005882E0);
  v53 = v3;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10057D6A0;
  static DispatchWorkItemFlags.inheritQoS.getter();
  static DispatchWorkItemFlags.assignCurrentContext.getter();
  v55 = v20;
  sub_10000F924();
  sub_100461DBC(v21, v22, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008BA8();
  v23 = swift_allocObject();
  v23[2] = v19;
  v23[3] = v5;
  v47 = v5;
  v24 = v19;
  v23[4] = v53;
  v23[5] = v1;
  v59 = sub_100461E04;
  v60 = v23;
  v55 = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_100004CEC;
  v58 = &unk_1006314D0;
  _Block_copy(&v55);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();

  v25 = v1;
  DispatchWorkItem.init(qos:flags:block:)();

  v26 = [v25 queue];
  OS_dispatch_queue.async(execute:)();

  static DispatchTime.now()();
  v27 = v50;
  + infix(_:_:)();
  v28 = v52;
  v29 = *(v51 + 8);
  v29(v10, v52);
  LOBYTE(v26) = dispatch thunk of DispatchWorkItem.wait(timeout:)();
  v29(v27, v28);
  if (v26)
  {
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134(&qword_1006A0AA0);
    }

    v30 = qword_1006BA380;
    v31 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("Screen time: Timed out creating conversation", 44, 2, &_mh_execute_header, v30, v31, _swiftEmptyArrayStorage);
    v32 = v49;
  }

  else
  {
    if (qword_1006A0AA0 != -1)
    {
      sub_100008134(&qword_1006A0AA0);
    }

    v33 = qword_1006BA380;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10057E830;
    v32 = v49;
    sub_100005298(v49, &v54);
    v35 = *v32;
    v36 = *v32;
    v37 = sub_100291668(v35);
    v39 = v38;

    *(v34 + 56) = &type metadata for String;
    v40 = sub_100009D88();
    *(v34 + 64) = v40;
    *(v34 + 32) = v37;
    *(v34 + 40) = v39;
    v55 = v47;
    v56 = v53;

    v41 = String.init<A>(reflecting:)();
    *(v34 + 96) = &type metadata for String;
    *(v34 + 104) = v40;
    *(v34 + 72) = v41;
    *(v34 + 80) = v42;
    v55 = *&v1[v48];

    sub_10026D814(&unk_1006AC428, &unk_1005882F0);
    v43 = String.init<A>(reflecting:)();
    *(v34 + 136) = &type metadata for String;
    *(v34 + 144) = v40;
    *(v34 + 112) = v43;
    *(v34 + 120) = v44;
    v45 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Screen time: Created synchronous conversation %@ for bundle identifier: %@. All synchronous conversations: %@", 109, 2, &_mh_execute_header, v33, v45, v34);
  }

  sub_100005298(v32, &v55);
  v46 = *(v24 + 16);

LABEL_13:
  sub_100005EDC();
}

uint64_t sub_100461068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100006AF0(0, &unk_1006A2B70, STConversation_ptr);

  v8 = sub_1004613DC(a2, a3, &selRef_initSynchronouslyWithBundleIdentifier_);
  swift_beginAccess();
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;

  v10 = OBJC_IVAR___CSDScreenTimeCallFilter_synchronousConversationsForBundleIdentifier;
  swift_beginAccess();
  if (v8)
  {
    v11 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10037A6CC(v11, a2, a3, isUniquelyReferenced_nonNull_native, v13, v14, v15, v16, v18, *(a4 + v10));
    *(a4 + v10) = v19;
  }

  else
  {
  }

  return swift_endAccess();
}

void sub_100461180(void *a1)
{
  v2 = v1;
  v4 = sub_1002C89F0(a1);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier;
    sub_100005298(v2 + OBJC_IVAR___CSDScreenTimeCallFilter_conversationsForBundleIdentifier, v36);
    v9 = *(v2 + v8);

    v10 = sub_100007764();
    v12 = sub_100023E48(v10, v11, v9);

    if (v12)
    {
    }

    else
    {
      if (qword_1006A0AA0 != -1)
      {
        sub_100008134(&qword_1006A0AA0);
      }

      v34 = qword_1006BA380;
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10057D6A0;

      v14 = String.init<A>(reflecting:)();
      v16 = v15;
      *(v13 + 56) = &type metadata for String;
      v17 = sub_100009D88();
      *(v13 + 64) = v17;
      *(v13 + 32) = v14;
      *(v13 + 40) = v16;
      sub_100006AF0(0, &unk_1006A7B10, TUCallProvider_ptr);
      v18 = a1;
      v19 = String.init<A>(reflecting:)();
      *(v13 + 96) = &type metadata for String;
      *(v13 + 104) = v17;
      *(v13 + 72) = v19;
      *(v13 + 80) = v20;
      v21 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Screen time: Adding conversation for bundle identifier: %@ provider: %@", 71, 2, &_mh_execute_header, v34, v21, v13);

      sub_100006AF0(0, &unk_1006A2B70, STConversation_ptr);

      v22 = sub_100007764();
      v25 = sub_1004613DC(v22, v23, v24);
      swift_beginAccess();
      if (v25)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_10037A6CC(v25, v6, v7, isUniquelyReferenced_nonNull_native, v27, v28, v29, v30, v34, *(v2 + v8));
        *(v2 + v8) = v35;
      }

      else
      {
        v31 = sub_100007764();
        v33 = sub_100384730(v31, v32);
      }

      swift_endAccess();
    }
  }
}

id sub_1004613DC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 *a3];

  return v6;
}

void *sub_100461450(void *a1)
{
  if ([a1 isConversation])
  {
    v2 = sub_100461D20(a1);
    if (v2)
    {
      sub_10045E51C(v2);
      v4 = v3;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v5 = [a1 remoteMember];
    if (v5 && (v6 = v5, v7 = [v5 handle], v6, v8 = objc_msgSend(v7, "tuHandle"), v7, v8))
    {
      v9 = sub_10001E1D4();
      v11 = v10;
    }

    else
    {
      if (qword_1006A0C50 != -1)
      {
        sub_10000AB54(&qword_1006A0C50);
      }

      v9 = qword_1006AC3A0;
      v11 = *algn_1006AC3A8;
    }

    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    sub_100008BA8();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10057D690;
    *(v4 + 32) = v9;
    *(v4 + 40) = v11;
  }

  return v4;
}

void sub_1004615A4()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = (v8 - v7);
  *v9 = [(objc_class *)isa queue];
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v12(v9, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    sub_100008134(&qword_1006A0AA0);
    goto LABEL_5;
  }

  if (!v2)
  {
    goto LABEL_16;
  }

  sub_100006884();
  sub_100460A98();
  if (!v13)
  {
    goto LABEL_16;
  }

  v11 = v13;
  v9 = &type metadata for String;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = [v11 allowableByContactsHandles:isa];

  v38 = v14;
  LODWORD(isa) = [v14 allowedByScreenTime];
  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_18;
  }

LABEL_5:
  v37 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10057CA70;
  if (isa)
  {
    v16 = 0x6465776F6C6C61;
  }

  else
  {
    v16 = 0x6F6C6C6120746F6ELL;
  }

  if (isa)
  {
    v17 = 0xE700000000000000;
  }

  else
  {
    v17 = 0xEB00000000646577;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  v19 = String.init<A>(reflecting:)();
  v21 = v20;
  *(v15 + 56) = v9;
  v22 = sub_100009D88();
  *(v15 + 64) = v22;
  *(v15 + 32) = v19;
  *(v15 + 40) = v21;
  v23 = Array._bridgeToObjectiveC()().super.isa;
  v24 = TULoggableStringForHandles();

  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = sub_10001E478(v25, v27);
  v30 = v29;

  *(v15 + 96) = v9;
  *(v15 + 104) = v22;
  *(v15 + 72) = v28;
  *(v15 + 80) = v30;
  sub_100006AF0(0, &unk_1006A2B70, STConversation_ptr);
  v31 = v11;
  v32 = String.init<A>(reflecting:)();
  *(v15 + 136) = v9;
  *(v15 + 144) = v22;
  *(v15 + 112) = v32;
  *(v15 + 120) = v33;

  v34 = String.init<A>(reflecting:)();
  *(v15 + 176) = v9;
  *(v15 + 184) = v22;
  *(v15 + 152) = v34;
  *(v15 + 160) = v35;
  v36 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Screen time: Policy %@ for handles: %@ with existing conversation: %@ with bundle identifier: %@", 96, 2, &_mh_execute_header, v37, v36, v15);

LABEL_16:
  sub_100005EDC();
}

id sub_100461960(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScreenTimeCallFilter();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100461AEC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_100461BF0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100461C38(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100461CC4()
{
  sub_100016114();
  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_100461D20(void *a1)
{
  v1 = [a1 remoteParticipantHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100006AF0(0, &qword_1006AC410, CXMember_ptr);
  sub_10000CE3C(&qword_1006A3898, &qword_1006AC410, CXMember_ptr);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100461DBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100461EA0()
{
  sub_10000C698();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 185) = v3;
  *(v1 + 184) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 24) = v7;
  v8 = type metadata accessor for URL();
  *(v1 + 64) = v8;
  sub_100005EB4(v8);
  *(v1 + 72) = v9;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  v10 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v10);
  *(v1 + 112) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v1 + 120) = v11;
  *v11 = v1;
  v11[1] = sub_100461FF8;

  return sub_100272C6C();
}

uint64_t sub_100461FF8()
{
  sub_1000066BC();
  sub_100005F18();
  v3 = v2;
  sub_100007BC8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v5;

  if (v0)
  {

    v6 = sub_10001157C();

    return v7(v6);
  }

  else
  {
    sub_100007BBC();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_100462160(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_t log, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10003EBD4();
  a27 = v29;
  a28 = v30;
  sub_10000C1A0();
  a26 = v28;
  v31 = *(v28 + 128);
  v32 = *(v28 + 112);
  v33 = *(v28 + 56);
  v34 = type metadata accessor for TaskPriority();
  sub_10000AF74(v32, 1, 1, v34);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v33;
  v35[5] = v31;

  v36 = v31;
  sub_100276028();

  v37 = dispatch thunk of SynthesisVoice.name.getter();
  v39 = v38;
  v40 = sub_100271F70();
  if (v39)
  {
    if (v41)
    {
      if (v37 == v40 && v39 == v41)
      {

        v43 = 1;
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    if (!v41)
    {
      v43 = 1;
      goto LABEL_13;
    }

    v43 = 0;
  }

LABEL_13:
  v44 = *(v28 + 185);
  v45 = *(v28 + 184);
  v46 = sub_100272258();
  v47 = v46;
  if ((v43 & 1) == 0 || (v46 & 1) == 0 || (v45 & 1) != 0 || v44)
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0(&qword_1006A0B28);
    }

    v79 = *(v28 + 128);
    v80 = *(v28 + 104);
    v81 = *(v28 + 64);
    v82 = *(v28 + 72);
    v83 = *(v28 + 40);
    v84 = type metadata accessor for Logger();
    *(v28 + 136) = sub_10000AF9C(v84, qword_1006BA5F8);
    v85 = *(v82 + 16);
    *(v28 + 144) = v85;
    *(v28 + 152) = (v82 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v85(v80, v83, v81);
    v86 = v79;
    sub_100044498();

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v121 = v88;
      v89 = *(v28 + 104);
      loga = v87;
      v91 = *(v28 + 64);
      v90 = *(v28 + 72);
      v119 = *(v28 + 184);
      v120 = *(v28 + 185);
      v117 = *(v28 + 32);
      v118 = *(v28 + 128);
      v116 = *(v28 + 24);
      v92 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      a17 = swift_slowAlloc();
      *v92 = 136447746;
      sub_10001744C();
      sub_10000F270(v93, v94, &protocol conformance descriptor for URL);
      dispatch thunk of CustomStringConvertible.description.getter();
      v95 = *(v90 + 8);
      v95(v89, v91);
      v96 = sub_100005334();
      v99 = sub_10002741C(v96, v97, v98);

      *(v92 + 4) = v99;
      *(v92 + 12) = 2082;
      *(v92 + 14) = sub_10002741C(v116, v117, &a17);
      *(v92 + 22) = 2114;
      *(v92 + 24) = v118;
      *v115 = v118;
      *(v92 + 32) = 1026;
      *(v92 + 34) = (v47 & 1) == 0;
      *(v92 + 38) = 1026;
      *(v92 + 40) = (v43 & 1) == 0;
      *(v92 + 44) = 1026;
      *(v92 + 46) = v119;
      *(v92 + 50) = 1026;
      *(v92 + 52) = v120;
      v100 = v118;
      _os_log_impl(&_mh_execute_header, loga, v121, "Creating a new outgoing message with URL: %{public}s, utterance: %{public}s, voice: %{public}@ because the existing file is missing (%{BOOL,public}d, the best voice changed (%{BOOL,public}d), the utterance changed (%{BOOL,public}d), or recreation was forced (%{BOOL,public}d).", v92, 0x38u);
      sub_100009A04(v115, &unk_1006A2630, &qword_10057CB40);
      sub_100006868();
      swift_arrayDestroy();
      sub_10000F674();
      sub_100005F64();
    }

    else
    {
      v101 = *(v28 + 104);
      v102 = *(v28 + 64);
      v103 = *(v28 + 72);

      v95 = *(v103 + 8);
      v95(v101, v102);
    }

    *(v28 + 160) = v95;
    v104 = swift_task_alloc();
    *(v28 + 168) = v104;
    *v104 = v28;
    v104[1] = sub_100462880;
    sub_10000C638();

    return sub_10027270C();
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0(&qword_1006A0B28);
    }

    v48 = *(v28 + 128);
    v50 = *(v28 + 72);
    v49 = *(v28 + 80);
    v51 = *(v28 + 64);
    v52 = *(v28 + 48);
    v53 = type metadata accessor for Logger();
    sub_10000AF9C(v53, qword_1006BA5F8);
    (*(v50 + 16))(v49, v52, v51);

    v54 = v48;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v28 + 128);
    v60 = *(v28 + 72);
    v59 = *(v28 + 80);
    v61 = *(v28 + 64);
    if (v57)
    {
      a15 = *(v28 + 56);
      v62 = swift_slowAlloc();
      log = swift_slowAlloc();
      a17 = log;
      *v62 = 136446722;
      sub_10001744C();
      sub_10000F270(v63, v64, &protocol conformance descriptor for URL);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      (*(v60 + 8))(v59, v61);
      v68 = sub_10002741C(v65, v67, &a17);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2082;
      *(v28 + 16) = v58;
      type metadata accessor for SynthesisVoice();
      v69 = v58;
      v70 = String.init<A>(reflecting:)();
      v72 = sub_10002741C(v70, v71, &a17);

      *(v62 + 14) = v72;
      *(v62 + 22) = 2082;
      v73 = sub_100271F70();
      v75 = sub_10001E478(v73, v74);
      v77 = v76;

      v78 = sub_10002741C(v75, v77, &a17);

      *(v62 + 24) = v78;
      _os_log_impl(&_mh_execute_header, v55, v56, "No need to generate a new outgoing message. The file already exists (%{public}s) and the Siri voice (%{public}s matches the existing voice (%{public}s.", v62, 0x20u);
      swift_arrayDestroy();
      sub_100005F40(log);
      sub_100006868();
    }

    else
    {

      (*(v60 + 8))(v59, v61);
    }

    sub_10001157C();
    sub_10000C638();

    return v109(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, a12, a13, a14, a15, log, a17, a18, a19, a20);
  }
}

uint64_t sub_100462880()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 176) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10046297C()
{
  v52 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v1(*(v0 + 96), *(v0 + 40), v3);
  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100016F00();
  log = v5;
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 160);
  if (v7)
  {
    v49 = v4;
    v9 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v9 = 136446466;
    sub_10001744C();
    sub_10000F270(v10, v11, &protocol conformance descriptor for URL);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v15 = sub_100006B3C();
    v8(v15);
    v16 = sub_10002741C(v12, v14, v51);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2082;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = sub_10000534C();
    v8(v20);
    v21 = sub_10002741C(v17, v19, v51);

    *(v9 + 14) = v21;
    _os_log_impl(&_mh_execute_header, log, v49, "Copying from temp url (%{public}s into sandbox container (%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    sub_10000F674();
    sub_100006868();
  }

  else
  {

    v22 = sub_10000534C();
    v8(v22);
    v23 = sub_100006B3C();
    v8(v23);
  }

  v24 = *(v0 + 176);
  sub_1002722C4(*(v0 + 40), *(v0 + 48));
  if (v24)
  {
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 128);
    if (!v27)
    {

      goto LABEL_12;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Copying from temp url failed: %{public}@", v29, 0xCu);
    sub_100009A04(v30, &unk_1006A2630, &qword_10057CB40);
    sub_100005F64();
    sub_100006868();
  }

  else
  {
    v32 = *(v0 + 128);
    v33 = dispatch thunk of SynthesisVoice.name.getter();
    sub_100272018(v33, v34);
    v35 = v32;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    v38 = os_log_type_enabled(v36, v37);
    v25 = *(v0 + 128);
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51[0] = v40;
      *v39 = 136315138;
      v41 = dispatch thunk of SynthesisVoice.name.getter();
      v43 = sub_10001E478(v41, v42);
      v45 = v44;

      v46 = sub_10002741C(v43, v45, v51);

      *(v39 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "Set last used voice to %s", v39, 0xCu);
      sub_100009B7C(v40);
      sub_1000079DC();
      sub_100005F64();

      goto LABEL_12;
    }
  }

LABEL_12:

  v47 = *(v0 + 8);

  return v47(v24 == 0);
}

uint64_t sub_100462E00()
{
  sub_1000066BC();

  v1 = sub_10001157C();

  return v2(v1);
}

uint64_t sub_100462E9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100462F38;

  return sub_1002731DC();
}

uint64_t sub_100462F38()
{
  sub_100006810();
  sub_100005F18();
  v2 = *v1;
  sub_100008060();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = *(v2 + 8);

  return v4(v0 != 0);
}

uint64_t sub_100463030(uint64_t a1, uint64_t a2)
{
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

id sub_1004630C0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4 options:0];

  type metadata accessor for URL();
  sub_100008070();
  (*(v7 + 8))(a1);
  return v6;
}

uint64_t sub_100463158(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100009B14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_100463030(v4, a3);
  }

  sub_100006AF0(0, &qword_1006AC520, AVAssetTrack_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1004631F0(v4, v6, &_swift_continuation_throwingResume);
}

void sub_100463218()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v7 = sub_100007BF0(v6);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_100343100(v3, v20 - v8, &qword_1006A5310, &qword_10057D580);
  v10 = type metadata accessor for TaskPriority();
  v11 = sub_100015468(v9, 1, v10);

  if (v11 == 1)
  {
    sub_100009A04(v9, &qword_1006A5310, &qword_10057D580);
  }

  else
  {
    TaskPriority.rawValue.getter();
    v12 = sub_100006B3C();
    v13(v12);
  }

  v14 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v21[0] = 0;
        v21[1] = 0;
        v19 = v21;
        v21[2] = v15;
        v21[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v20[1] = 7;
      v20[2] = v19;
      v20[3] = v18;
      sub_10046A9E0();

      sub_100009A04(v3, &qword_1006A5310, &qword_10057D580);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_100009A04(v3, &qword_1006A5310, &qword_10057D580);
  if (v17 | v15)
  {
    v21[4] = 0;
    v21[5] = 0;
    v21[6] = v15;
    v21[7] = v17;
  }

  sub_10046A9E0();
LABEL_14:
  sub_100005EDC();
}

void sub_100463470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, unsigned __int8 a23, unsigned __int8 a24, uint64_t a25, uint64_t a26)
{
  sub_100005EF4();
  v99 = v26;
  v89 = v27;
  v90 = v28;
  v96 = v29;
  v97 = v30;
  v108 = v31;
  v92 = v32;
  v102 = a26;
  v100 = v33;
  v101 = a25;
  v94 = a23;
  v93 = a24;
  v95 = a21;
  v91 = a22;
  v105 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v107 = v34;
  __chkstk_darwin(v35);
  sub_1000151DC();
  v103 = v36;
  sub_10000D414();
  v106 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v104 = v37;
  __chkstk_darwin(v38);
  sub_1000151DC();
  v98 = v39;
  sub_10000D414();
  v40 = type metadata accessor for URL();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v88 = &v86 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v86 - v44;
  v87 = &v86 - v44;
  v46 = sub_100006C30();
  v48 = sub_10026D814(v46, v47);
  v49 = sub_100005EB4(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v49);
  v55 = &v86 - v54;
  sub_100343100(v89, &v86 - v54, &qword_1006A5360, &qword_10057CB80);
  v56 = *(v41 + 16);
  v86 = v40;
  v56(v45, v91, v40);
  v56(&v86 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v90, v40);
  v57 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v58 = v57 + v53;
  v59 = *(v41 + 80);
  v60 = (v59 + v58 + 2) & ~v59;
  v61 = v42 + 7;
  v62 = (v42 + 7 + v60) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 23) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v59 + v63 + 16) & ~v59;
  v91 = (v61 + v64) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v67 = v108;
  *(v66 + 16) = v92;
  *(v66 + 24) = v67;
  sub_10046A210(v55, v66 + v57);
  v68 = (v66 + v58);
  *v68 = v93;
  v68[1] = v94;
  v69 = *(v41 + 32);
  v70 = v86;
  v69(v66 + v60, v87, v86);
  v71 = (v66 + v62);
  v72 = v97;
  *v71 = v96;
  v71[1] = v72;
  v73 = (v66 + v63);
  v74 = v95;
  *v73 = v99;
  v73[1] = v74;
  v69(v66 + v64, v88, v70);
  v76 = v100;
  v75 = v101;
  *(v66 + v91) = v100;
  v77 = (v66 + v65);
  v78 = v102;
  *v77 = v75;
  v77[1] = v78;
  v110[4] = sub_10046A280;
  v110[5] = v66;
  v110[0] = _NSConcreteStackBlock;
  v110[1] = 1107296256;
  sub_10000A600();
  v110[2] = v79;
  v110[3] = &unk_1006318B8;
  v80 = _Block_copy(v110);

  swift_unknownObjectRetain();
  v76;
  sub_1000115CC(v75, v78);
  v81 = v98;
  static DispatchQoS.unspecified.getter();
  v109 = _swiftEmptyArrayStorage;
  sub_1000088A8();
  sub_10000F270(v82, v83, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  v84 = v103;
  sub_10000B910();
  v85 = v105;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v80);
  (*(v107 + 8))(v84, v85);
  (*(v104 + 8))(v81, v106);

  sub_100005EDC();
}

uint64_t sub_1004639C8(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14)
{
  v128 = a7;
  v129 = a8;
  v133 = a6;
  v136 = a4;
  v142 = a2;
  v135 = a1;
  v130 = a11;
  v16 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v16 - 8);
  v143 = &v109 - v17;
  v119 = type metadata accessor for Locale();
  v120 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v126 = *(v19 - 8);
  v20 = __chkstk_darwin(v19 - 8);
  v141 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v116 = &v109 - v23;
  v127 = v24;
  __chkstk_darwin(v22);
  v26 = &v109 - v25;
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v139 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v30);
  v138 = &v109 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v109 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v109 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v109 - v40;
  sub_100304AAC(v39, v42, v43, v44, v45, v46, v47, v48, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
  if (qword_1006A0B50 != -1)
  {
    swift_once();
  }

  v134 = a5;
  v125 = a14;
  v124 = a13;
  v123 = a12;
  v121 = a10;
  v122 = a9;
  v49 = type metadata accessor for Logger();
  sub_10000AF9C(v49, qword_1006BA670);
  v131 = a3;
  sub_100343100(a3, v26, &qword_1006A5360, &qword_10057CB80);
  v137 = v28;
  v50 = v28 + 16;
  v51 = *(v28 + 16);
  v140 = v41;
  v51(v38, v41, v27);
  v132 = v51;
  v118 = v50;
  v51(v35, v133, v27);
  v52 = v142;

  v53 = v26;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  HIDWORD(v115) = v55;
  if (os_log_type_enabled(v54, v55))
  {
    v111 = v54;
    v113 = v38;
    v114 = v35;
    v56 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v144 = v110;
    *v56 = 136316418;
    *(v56 + 4) = sub_10002741C(v135, v52, &v144);
    *(v56 + 12) = 2080;
    v57 = v116;
    sub_100343100(v53, v116, &qword_1006A5360, &qword_10057CB80);
    v58 = v119;
    v59 = sub_100015468(v57, 1, v119);
    v112 = v29;
    if (v59 == 1)
    {
      v60 = v117;
      static Locale.current.getter();
      if (sub_100015468(v57, 1, v58) != 1)
      {
        sub_100009A04(v57, &qword_1006A5360, &qword_10057CB80);
      }
    }

    else
    {
      v60 = v117;
      v120[4](v117, v57, v58);
    }

    sub_10000F270(&qword_1006A3448, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    (v120[1])(v60, v58);
    sub_100009A04(v53, &qword_1006A5360, &qword_10057CB80);
    v66 = sub_10002741C(v63, v65, &v144);

    *(v56 + 14) = v66;
    *(v56 + 22) = 1024;
    *(v56 + 24) = v136 & 1;
    *(v56 + 28) = 1024;
    *(v56 + 30) = v134 & 1;
    *(v56 + 34) = 2080;
    v62 = v138;
    v67 = v113;
    v68 = v132;
    v132(v138, v113, v27);
    v69 = String.init<A>(reflecting:)();
    v71 = v70;
    v72 = *(v137 + 8);
    v119 = (v137 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v72)(v67, v27);
    v73 = sub_10002741C(v69, v71, &v144);

    *(v56 + 36) = v73;
    *(v56 + 44) = 2080;
    v74 = v114;
    v68(v62, v114, v27);
    v75 = String.init<A>(reflecting:)();
    v77 = v76;
    v120 = v72;
    (v72)(v74, v27);
    v78 = sub_10002741C(v75, v77, &v144);

    *(v56 + 46) = v78;
    v79 = v111;
    _os_log_impl(&_mh_execute_header, v111, BYTE4(v115), "createAudioDisclosure: utterance: %s, locale: %s, utteranceChanged: %{BOOL}d, force: %{BOOL}d, tmpDirectoryURL: %s, directoryURL: %s", v56, 0x36u);
    swift_arrayDestroy();

    v29 = v112;
  }

  else
  {

    v61 = *(v137 + 8);
    v119 = (v137 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v61)(v35, v27);
    v120 = v61;
    (v61)(v38, v27);
    sub_100009A04(v53, &qword_1006A5360, &qword_10057CB80);
    v62 = v138;
  }

  v80 = v140;
  sub_1003046D0();
  sub_1003046D0();
  v144 = v128;
  v145 = v129;

  v81._countAndFlagsBits = 1717658414;
  v81._object = 0xE400000000000000;
  String.append(_:)(v81);
  v133 = v144;
  v129 = v145;
  v82 = type metadata accessor for TaskPriority();
  sub_10000AF74(v143, 1, 1, v82);
  v83 = v132;
  v132(v62, v80, v27);
  v83(v139, v130, v27);
  sub_100343100(v131, v141, &qword_1006A5360, &qword_10057CB80);
  v84 = v137;
  v85 = *(v137 + 80);
  v86 = (v85 + 64) & ~v85;
  v87 = (v29 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v85 + v87 + 16) & ~v85;
  v89 = v88 + v29;
  v131 = (*(v126 + 80) + v89 + 2) & ~*(v126 + 80);
  v132 = ((v127 + v131 + 7) & 0xFFFFFFFFFFFFFFF8);
  v90 = (v132 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  v92 = v27;
  v93 = v91;
  v91[2] = 0;
  v91[3] = 0;
  v94 = v121;
  v91[4] = v122;
  v91[5] = v94;
  v95 = v142;
  v91[6] = v135;
  v91[7] = v95;
  v96 = *(v84 + 32);
  v97 = v91 + v86;
  v98 = v92;
  v96(v97, v138);
  v99 = (v93 + v87);
  v100 = v129;
  *v99 = v133;
  v99[1] = v100;
  v101 = v98;
  (v96)(v93 + v88, v139, v98);
  v102 = v93 + v89;
  *v102 = v136 & 1;
  v102[1] = v134 & 1;
  sub_10046A210(v141, v93 + v131);
  v103 = v123;
  *(v132 + v93) = v123;
  v104 = (v93 + v90);
  v105 = v124;
  v106 = v125;
  *v104 = v124;
  v104[1] = v106;

  swift_unknownObjectRetain();
  v107 = v103;
  sub_1000115CC(v105, v106);
  sub_100463218();

  return (v120)(v140, v101);
}

uint64_t sub_100464454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v21;
  *(v8 + 168) = v22;
  *(v8 + 144) = v19;
  *(v8 + 152) = v20;
  *(v8 + 306) = v18;
  *(v8 + 305) = v17;
  *(v8 + 136) = v16;
  *(v8 + 120) = v15;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a4;
  *(v8 + 96) = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v8 + 224) = v11;
  v12 = *(v11 - 8);
  *(v8 + 232) = v12;
  *(v8 + 240) = *(v12 + 64);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_100464624, 0, 0);
}

uint64_t sub_100464624()
{
  sub_100006810();
  URL.appendingPathComponent(_:)();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1004646EC;

  return sub_100461EA0();
}

uint64_t sub_1004646EC()
{
  sub_1000066BC();
  sub_100005F18();
  v3 = v2;
  sub_100007BC8();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v3 + 307) = v9;
  *(v3 + 280) = v0;

  *(v3 + 288) = *(v6 + 8);
  *(v3 + 296) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = sub_100008B88();
  v11(v10);
  sub_100007BBC();

  return _swift_task_switch(v12, v13, v14);
}

void sub_10046485C()
{
  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 136);
  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006BA670);
  v46 = *(v3 + 16);
  v46(v1, v4, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 288);
  v10 = *(v0 + 256);
  v45 = *(v0 + 307);
  if (v8)
  {
    v11 = *(v0 + 248);
    log = v6;
    v12 = *(v0 + 224);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v15 = 136315650;
    *(v0 + 64) = v14;
    *(v0 + 72) = v13;

    v16 = String.init<A>(reflecting:)();
    sub_10002741C(v16, v17, &v47);
    sub_10000BC78();

    *(v15 + 4) = v14;
    *(v15 + 12) = 2080;
    v46(v11, v10, v12);
    sub_10000534C();
    String.init<A>(reflecting:)();
    v18 = sub_100006C30();
    v9(v18);
    v19 = sub_100005334();
    v22 = sub_10002741C(v19, v20, v21);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2080;
    *(v0 + 304) = v45;
    v23 = String.init<A>(reflecting:)();
    v25 = sub_10002741C(v23, v24, &v47);

    *(v15 + 24) = v25;
    _os_log_impl(&_mh_execute_header, log, v7, "File for disclosure %s file is at %s, wroteNewFile: %s", v15, 0x20u);
    swift_arrayDestroy();
    sub_10000F674();
    sub_100005F40(v15);
  }

  else
  {
    v26 = *(v0 + 224);

    (v9)(v10, v26);
  }

  v27 = *(v0 + 248);
  v29 = *(v0 + 224);
  v28 = *(v0 + 232);
  v41 = *(v0 + 192);
  v42 = *(v0 + 176);
  v31 = *(v0 + 160);
  v30 = *(v0 + 168);
  v43 = *(v0 + 184);
  v46(v27, *(v0 + 136), v29);
  v32 = (*(v28 + 80) + 33) & ~*(v28 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v30;
  *(v33 + 32) = v45;
  (*(v28 + 32))(v33 + v32, v27, v29);
  *(v0 + 48) = sub_10046A5C4;
  *(v0 + 56) = v33;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_100004CEC;
  *(v0 + 40) = &unk_100631930;
  v34 = _Block_copy((v0 + 16));
  sub_1000115CC(v31, v30);
  static DispatchQoS.unspecified.getter();
  *(v0 + 80) = _swiftEmptyArrayStorage;
  sub_1000088A8();
  sub_10000F270(v35, v36, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_100006B3C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);
  (*(v43 + 8))(v41, v42);
  v37 = sub_100022080();
  v38(v37);

  sub_100009EF4();
  sub_100007D18();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100464CF4()
{
  sub_10000C698();

  sub_100009EF4();

  return v0();
}

uint64_t sub_100464D84(void (*a1)(void, char *), uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  result = __chkstk_darwin(v7 - 8);
  v10 = &v12 - v9;
  if (a1)
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 16))(v10, a4, v11);
    sub_10000AF74(v10, 0, 1, v11);
    a1(a3 & 1, v10);
    return sub_100009A04(v10, &unk_1006A52C0, &unk_10057D930);
  }

  return result;
}

void sub_100464E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100005EF4();
  v157 = v22;
  v158 = v21;
  LODWORD(v159) = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v161 = v30;
  v156 = v31;
  v150 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v149 = v32;
  __chkstk_darwin(v33);
  sub_1000151DC();
  v147 = v34;
  sub_10000D414();
  v148 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v146 = v35;
  __chkstk_darwin(v36);
  sub_1000151DC();
  v145 = v37;
  v38 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v39 = sub_100007BF0(v38);
  __chkstk_darwin(v39);
  v154 = &v136 - v40;
  sub_10000D414();
  v41 = type metadata accessor for URL();
  sub_100007FEC();
  v43 = v42;
  v45 = __chkstk_darwin(v44);
  v153 = &v136 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v49 = &v136 - v48;
  v50 = __chkstk_darwin(v47);
  v52 = &v136 - v51;
  v53 = __chkstk_darwin(v50);
  v55 = &v136 - v54;
  v155 = v56;
  __chkstk_darwin(v53);
  v58 = &v136 - v57;
  URL.deletingLastPathComponent()();
  v165 = v58;
  v143 = v27;
  v144 = v25;
  URL.appendingPathComponent(_:)();
  v162 = v43;
  v59 = *(v43 + 8);
  v160 = v55;
  v60 = v41;
  v163 = v59;
  v164 = v43 + 8;
  (v59)(v55, v41);
  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v61 = type metadata accessor for Logger();
  v62 = sub_10000AF9C(v61, qword_1006BA670);
  v63 = v162 + 16;
  v64 = *(v162 + 16);
  v65 = v29;
  (v64)(v52, v29, v60);
  (v64)(v49, v165, v60);
  v66 = v161;

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  v141 = v68;
  v69 = os_log_type_enabled(v67, v68);
  v142 = v65;
  v152 = v63;
  v151 = v64;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v140 = v62;
    v71 = v70;
    v139 = swift_slowAlloc();
    v167[0] = v139;
    *v71 = 136315906;
    *(v71 + 4) = sub_10002741C(v156, v66, v167);
    *(v71 + 12) = 2080;
    v72 = v160;
    sub_1000333B4();
    v64();
    v73 = String.init<A>(reflecting:)();
    v137 = v49;
    v138 = v67;
    v75 = v74;
    v76 = sub_100008B88();
    v77 = v60;
    v78 = v163;
    v163(v76);
    v79 = sub_10002741C(v73, v75, v167);

    *(v71 + 14) = v79;
    *(v71 + 22) = 1024;
    *(v71 + 24) = v159 & 1;
    *(v71 + 28) = 2080;
    (v64)(v72, v137, v77);
    v80 = String.init<A>(reflecting:)();
    v82 = v81;
    v83 = sub_10000534C();
    v78(v83);
    v60 = v77;
    v84 = sub_10002741C(v80, v82, v167);

    *(v71 + 30) = v84;
    v85 = v138;
    _os_log_impl(&_mh_execute_header, v138, v141, "addEndTone: for: %s from: %s force: %{BOOL}d, completedURL: %s", v71, 0x26u);
    swift_arrayDestroy();
    sub_10000F674();
    sub_100005F40(v71);
  }

  else
  {

    v86 = v163;
    (v163)(v49, v60);
    v87 = sub_100008B88();
    v86(v87);
  }

  if (v159)
  {
    v88 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v89);
    v91 = v90;
    v167[0] = 0;
    v92 = [v88 removeItemAtURL:v90 error:v167];

    v93 = v167[0];
    if (!v92)
    {
      sub_10000667C();
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v94 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v95 = String._bridgeToObjectiveC()();

  v96 = [v94 fileExistsAtPath:v95];

  v97 = v151;
  if (v96)
  {
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = sub_100006DC4();
      sub_100018630(v100);
      _os_log_impl(&_mh_execute_header, v98, v99, "addEndTone: greeting with tone existed, returning it", v95, 2u);
      sub_100005F64();
    }

    v101 = v160;
    v102 = v165;
    v103 = v60;
    (v97)(v160, v165, v60);
    v104 = v162;
    v105 = (*(v162 + 80) + 32) & ~*(v162 + 80);
    v106 = swift_allocObject();
    v107 = v157;
    *(v106 + 2) = v157;
    *(v106 + 3) = a21;
    (*(v104 + 32))(&v106[v105], v101, v103);
    v167[4] = sub_10046A8C0;
    v167[5] = v106;
    v167[0] = _NSConcreteStackBlock;
    v167[1] = 1107296256;
    sub_10000A600();
    v167[2] = v108;
    v167[3] = &unk_100631700;
    v109 = _Block_copy(v167);
    sub_1000115CC(v107, a21);
    v110 = v145;
    static DispatchQoS.unspecified.getter();
    v166 = _swiftEmptyArrayStorage;
    sub_1000088A8();
    sub_10000F270(v111, v112, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    v113 = v147;
    sub_10000B910();
    v114 = v150;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v109);
    (*(v149 + 8))(v113, v114);
    (*(v146 + 8))(v110, v148);
    (v163)(v102, v103);
  }

  else
  {
    v115 = type metadata accessor for TaskPriority();
    sub_10000AF74(v154, 1, 1, v115);
    v116 = v160;
    v136 = v60;
    (v97)(v160, v142, v60);
    (v97)(v153, v165, v60);
    v117 = *(v162 + 80);
    v118 = (v117 + 32) & ~v117;
    v119 = v162;
    v120 = (v155 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
    v121 = (v120 + 15) & 0xFFFFFFFFFFFFFFF8;
    v122 = (v121 + 23) & 0xFFFFFFFFFFFFFFF8;
    v123 = (v122 + 23) & 0xFFFFFFFFFFFFFFF8;
    v159 = (v117 + v123 + 16) & ~v117;
    v124 = swift_allocObject();
    *(v124 + 16) = 0;
    *(v124 + 24) = 0;
    v125 = *(v119 + 32);
    v126 = v116;
    v127 = v136;
    v125(v124 + v118, v126, v136);
    v128 = v158;
    *(v124 + v120) = v158;
    v129 = (v124 + v121);
    v130 = v157;
    *v129 = v157;
    v129[1] = a21;
    v131 = (v124 + v122);
    v132 = v144;
    *v131 = v143;
    v131[1] = v132;
    v133 = (v124 + v123);
    v134 = v161;
    *v133 = v156;
    v133[1] = v134;
    v125(v124 + v159, v153, v127);

    v135 = v128;
    sub_1000115CC(v130, a21);

    sub_1002762F0();

    (v163)(v165, v127);
  }

  sub_100005EDC();
}

uint64_t sub_100465938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 696) = v17;
  *(v8 + 688) = v16;
  *(v8 + 672) = v15;
  *(v8 + 664) = a8;
  *(v8 + 656) = a7;
  *(v8 + 648) = a6;
  *(v8 + 640) = a5;
  *(v8 + 632) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 704) = v9;
  *(v8 + 712) = *(v9 - 8);
  *(v8 + 720) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 728) = v10;
  *(v8 + 736) = *(v10 - 8);
  *(v8 + 744) = swift_task_alloc();
  sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  *(v8 + 752) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v8 + 760) = v11;
  v12 = *(v11 - 8);
  *(v8 + 768) = v12;
  *(v8 + 776) = *(v12 + 64);
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = swift_task_alloc();
  *(v8 + 832) = swift_task_alloc();

  return _swift_task_switch(sub_100465B8C, 0, 0);
}

uint64_t sub_100465B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10003EBD4();
  sub_10000C1A0();
  v21 = v20[95];
  v22 = v20[94];
  sub_100304C20();
  if (sub_100015468(v22, 1, v21) == 1)
  {
    sub_100009A04(v20[94], &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0B50 != -1)
    {
      sub_100008194(&qword_1006A0B50);
    }

    v23 = type metadata accessor for Logger();
    sub_1000075F0(v23, qword_1006BA670);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_100006DC4();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "addEndTone: creating temporary message file failed, will use message without end tone", v26, 2u);
      sub_10000F674();
    }

    v27 = v20[103];
    v28 = v20[96];
    v29 = v20[95];
    v76 = v20[92];
    v77 = v20[91];
    v71 = v20[93];
    v72 = v20[90];
    v73 = v20[88];
    v30 = v20[82];
    v31 = v20[81];
    v74 = v20[80];
    v75 = v20[89];
    v32 = v20[79];

    (*(v28 + 16))(v27, v32, v29);
    v33 = ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    *(v34 + 24) = v30;
    (*(v28 + 32))(&v33[v34], v27, v29);
    v20[54] = sub_10046A0A8;
    v20[55] = v34;
    v20[50] = _NSConcreteStackBlock;
    v20[51] = 1107296256;
    v20[52] = sub_100004CEC;
    v20[53] = &unk_100631750;
    _Block_copy(v20 + 50);
    v35 = sub_10000BC78();
    sub_1000115CC(v35, v30);
    static DispatchQoS.unspecified.getter();
    v20[75] = _swiftEmptyArrayStorage;
    sub_1000088A8();
    sub_10000F270(v36, v37, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);
    v38 = sub_100008B88();
    v39(v38);
    (*(v76 + 8))(v71, v77);

    sub_10000AB74();

    sub_100009EF4();
    sub_10000C638();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v71, v72, v73, v74, v75, v76, v77, a17, a18, a19, a20);
  }

  else
  {
    v49 = v20[104];
    v50 = v20[96];
    v51 = v20[95];
    v52 = v20[94];
    v53 = *(v50 + 32);
    v20[105] = v53;
    v20[106] = (v50 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v53(v49, v52, v51);
    sub_100006AF0(0, &qword_1006A3FC8, AVURLAsset_ptr);
    if (qword_1006A0C58 != -1)
    {
      swift_once();
    }

    v54 = v20[104];
    v55 = v20[103];
    v56 = v20[96];
    v57 = v20[95];
    v58 = sub_10000AF9C(v57, qword_1006BAA60);
    v59 = *(v56 + 16);
    v20[107] = v59;
    v20[108] = (v56 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v59(v55, v58, v57);
    v60 = sub_1004630C0(v55);
    v20[109] = v60;
    v59(v55, v54, v57);
    v20[110] = sub_1004630C0(v55);
    v20[111] = AVMediaTypeAudio;
    v20[18] = v20;
    v20[23] = v20 + 74;
    v20[19] = sub_100466134;
    v61 = swift_continuation_init();
    v62 = sub_10026D814(&qword_1006A3FD0, &unk_10057ED80);
    v20[112] = v62;
    v20[41] = v62;
    v20[34] = _NSConcreteStackBlock;
    v20[35] = 1107296256;
    v20[36] = sub_100463158;
    v20[37] = &unk_100631778;
    v20[38] = v61;
    [v60 loadTracksWithMediaType:AVMediaTypeAudio completionHandler:?];
    sub_10000C638();

    return _swift_continuation_await(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12);
  }
}

uint64_t sub_100466134()
{
  sub_100006810();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 904) = *(v3 + 176);
  sub_100007BBC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100466264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = v12[74];
  if (sub_10000B6F4(v15))
  {
    sub_10039C390(0, (v15 & 0xC000000000000001) == 0, v15);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v16 = *(v15 + 32);
    }

    v12[114] = v16;
    v17 = v12[112];
    v18 = v12[111];
    v19 = v12[110];

    v12[2] = v12;
    v12[7] = v12 + 70;
    v12[3] = sub_100466548;
    v20 = swift_continuation_init();
    v12[49] = v17;
    v12[42] = _NSConcreteStackBlock;
    v12[43] = 1107296256;
    v12[44] = sub_100463158;
    v12[45] = &unk_1006317A0;
    v12[46] = v20;
    [v19 loadTracksWithMediaType:v18 completionHandler:v12 + 42];

    return _swift_continuation_await(v12 + 2, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  else
  {

    if (qword_1006A0B50 != -1)
    {
      sub_100008194(&qword_1006A0B50);
    }

    v28 = type metadata accessor for Logger();
    sub_1000075F0(v28, qword_1006BA670);
    v29 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100016F00();
    os_log_type_enabled(v29, v30);
    sub_100007E88();
    if (v31)
    {
      v32 = sub_100006DC4();
      sub_100018630(v32);
      sub_100027748(&_mh_execute_header, v33, v34, "addEndTone: cannot create tracks for tone or messge, will use message without end tone");
      sub_100005F64();
      v35 = v29;
    }

    else
    {
      sub_10000C5EC();
    }

    v36 = sub_10005168C();
    v37(v36);
    sub_10000AB74();

    sub_100009EF4();

    return v38();
  }
}

uint64_t sub_100466548()
{
  sub_100006810();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 920) = *(v3 + 48);
  sub_100007BBC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1004670AC()
{
  sub_1000066BC();
  v2 = *v1;
  sub_100008060();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 968) = v0;

  if (v0)
  {
    v4 = *(v2 + 944);
  }

  else
  {
  }

  sub_100007BBC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100467210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v60 = v15;
  v19 = *(v15 + 944);
  v20 = *(v15 + 928);
  *(v15 + 1312) = *(v15 + 1264);
  *(v15 + 1328) = *(v15 + 1280);
  *(v15 + 1344) = *(v15 + 1296);
  epoch = kCMTimeZero.epoch;
  *(v15 + 624) = 0;
  *(v15 + 1384) = kCMTimeZero.value;
  *(v15 + 1392) = *&kCMTimeZero.timescale;
  *(v15 + 1400) = epoch;
  v22 = [v19 insertTimeRange:v15 + 1312 ofTrack:v20 atTime:v15 + 1384 error:{v15 + 624, a7, a8}];

  v23 = *(v15 + 624);
  if (!v22)
  {
    v36 = v23;
    sub_100010264();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B50 != -1)
    {
      sub_100008194(&qword_1006A0B50);
    }

    v37 = type metadata accessor for Logger();
    sub_10000AF9C(v37, qword_1006BA670);
    sub_10000667C();
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_10046A950();
    sub_10046A938();
    sub_1000153E4();
    v56 = v40;
    v57 = v39;
    v58 = *(v15 + 872);
    v41 = *(v15 + 832);
    v42 = *(v15 + 768);
    v43 = *(v15 + 760);
    if (v44)
    {
      sub_10002F7B0();
      v59 = sub_100021F34();
      sub_10000C4DC(4.8149e-34);
      v45 = sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v46 = sub_1000444CC(v45);
      sub_10002741C(v46, v47, &v59);
      sub_10000BC78();

      *(v41 + 4) = v18;
      sub_100015C24(&_mh_execute_header, v48, v49, "addEndTone: cannot combine tracks, will use message without end tone: %s");
      sub_10000D588();
      sub_1000079DC();

      (*(v42 + 8))(v41, v43);
    }

    else
    {

      v50 = sub_100017E9C();
      v52(v50, v51);
    }

    sub_10000AB74();

    sub_100009EF4();
    sub_100007D18();

    __asm { BRAA            X1, X16 }
  }

  v24 = *(v15 + 944);
  v25 = v23;
  *(v15 + 976) = sub_10026D814(&qword_1006AC518, &qword_1005883E0);
  v26 = v24;
  *(v15 + 984) = static AVPartialAsyncProperty<A>.timeRange.getter();
  v27 = swift_task_alloc();
  *(v15 + 992) = v27;
  *v27 = v15;
  v27[1] = sub_1004675AC;
  sub_10046A968();
  sub_100007D18();

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1004675AC()
{
  sub_10000C698();
  v2 = *v1;
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v2 + 1000) = v0;

  if (v0)
  {
    v6 = *(v2 + 944);
  }

  else
  {
  }

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1004676F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000C698();
  *(v14 + 1120) = *(v14 + 1072);
  *(v14 + 1136) = *(v14 + 1088);
  *(v14 + 1152) = *(v14 + 1104);
  *(v14 + 1008) = static AVPartialAsyncProperty<A>.timeRange.getter();
  v15 = swift_task_alloc();
  *(v14 + 1016) = v15;
  *v15 = v14;
  v15[1] = sub_1004677EC;
  sub_10046A968();

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1004677EC()
{
  sub_1000066BC();
  v2 = *v1;
  sub_100008060();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1024) = v0;

  if (v0)
  {
    v4 = *(v2 + 944);
  }

  else
  {
  }

  sub_100007BBC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10046834C()
{
  sub_100006810();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;
  sub_100007BBC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100468448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  sub_10046A9A4();
  a41 = v45;
  a42 = v46;
  a40 = v43;
  v47 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;
  v48 = [*(v43 + 1056) defaultManager];
  URL.path.getter();
  String._bridgeToObjectiveC()();
  sub_100010264();

  v50 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
  v51 = sub_10000F5E4(v49, "fileExistsAtPath:");

  if (v51)
  {
    v52 = *(v43 + 856);
    v53 = *(v43 + 784);
    v54 = *(v43 + 760);
    v55 = *(v43 + 696);
    v52(*(v43 + 792), *(v43 + 816), v54);
    v52(v53, v55, v54);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    v58 = os_log_type_enabled(v56, v57);
    v44 = *(v43 + 1048);
    v59 = *(v43 + 1040);
    if (v58)
    {
      v135 = v57;
      v60 = *(v43 + 856);
      v61 = *(v43 + 824);
      v62 = *(v43 + 792);
      v131 = *(v43 + 784);
      v51 = *(v43 + 1048);
      v44 = *(v43 + 760);
      v63 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      a30 = v137;
      *v63 = 136315394;
      v64 = sub_100005334();
      v60(v64);
      sub_10000534C();
      v65 = String.init<A>(reflecting:)();
      v133 = v56;
      v67 = v66;
      v59(v62, v44);
      v68 = sub_10002741C(v65, v67, &a30);

      *(v63 + 4) = v68;
      v50 = &selRef_fetchCurrentProcessStatesForBundleIdentifier_;
      *(v63 + 12) = 2080;
      (v60)(v61, v131, v44);
      sub_10000534C();
      v69 = String.init<A>(reflecting:)();
      v59(v131, v44);
      sub_10046A91C();
      sub_100044498();
      v47 = &selRef_conversationManager_conversationScreenSharingChanged_forParticipant_;

      *(v63 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v133, v135, "addEndTone: copy from  %s to %s", v63, 0x16u);
      swift_arrayDestroy();
      sub_100005F40(v137);
      sub_100005F40(v63);
    }

    else
    {
      v74 = *(v43 + 792);
      v63 = *(v43 + 784);
      v51 = *(v43 + 760);

      v75 = sub_100008B88();
      (v59)(v75);
      v59(v74, v51);
    }

    v73 = *(v43 + 1032);
    sub_1003042B4();
  }

  else
  {
    v70 = *(v43 + 1032);
    v71 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    v72 = os_log_type_enabled(v71, v63);
    v73 = *(v43 + 1032);
    if (v72)
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = [v73 status];

      _os_log_impl(&_mh_execute_header, v71, v63, "addEndTone: export of new greeting did not complete successfully: %ld", v51, 0xCu);
      sub_100006868();
    }

    else
    {
    }
  }

  (*(v43 + 1040))(*(v43 + 816), *(v43 + 760));
  sub_10046A8E4();
  v76 = [objc_opt_self() v47[209]];
  URL.path.getter();
  String._bridgeToObjectiveC()();
  sub_100010264();

  v78 = sub_10000F5E4(v77, v50[8]);

  v136 = *(v43 + 944);
  v130 = *(v43 + 936);
  v122 = *(v43 + 928);
  v125 = *(v43 + 880);
  v127 = *(v43 + 872);
  v79 = *(v43 + 856);
  v119 = *(v43 + 848);
  v120 = *(v43 + 912);
  v80 = *(v43 + 840);
  v81 = *(v43 + 824);
  v132 = *(v43 + 768);
  v134 = *(v43 + 832);
  v138 = *(v43 + 760);
  v128 = *(v43 + 736);
  v129 = *(v43 + 744);
  v126 = *(v43 + 728);
  v123 = *(v43 + 712);
  v124 = *(v43 + 720);
  v121 = *(v43 + 704);
  if (v78)
  {
    a10 = *(v43 + 688);
    v82 = v51;
    v83 = *(v43 + 680);
    a11 = *(v43 + 656);
    a12 = v43 + 496;
    v84 = *(v43 + 648);
    v118 = *(v43 + 640);
    v79(v81, *(v43 + 696), v138);
    v85 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v86 = (v85 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    v80(v87 + v85, v81, v138);
    v88 = (v87 + v86);
    *v88 = v83;
    v88[1] = a10;
    v89 = (v87 + ((v86 + 23) & 0xFFFFFFFFFFFFFFF8));
    v90 = v84;
    *v89 = v84;
    v89[1] = a11;
    sub_10000E880();
    *(v43 + 536) = v87;
    *(v43 + 496) = _NSConcreteStackBlock;
    sub_1000105BC(COERCE_DOUBLE(1107296256));
    *(v43 + 520) = &unk_100631840;
    v92 = _Block_copy(v91);

    sub_10001DAC4(v90);
    *(v43 + 576) = _swiftEmptyArrayStorage;
    sub_1000088A8();
    sub_10000F270(v93, v94, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_10000B910();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_1000100FC();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v92);
  }

  else
  {
    v95 = *(v43 + 656);
    v96 = *(v43 + 648);
    v118 = *(v43 + 640);
    v79(v81, *(v43 + 632), v138);
    sub_10003DC40();
    v98 = v97 & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    v80(v99 + v51, v81, v138);
    v100 = (v99 + v98);
    *v100 = v96;
    v100[1] = v95;
    *(v43 + 480) = sub_10046A100;
    *(v43 + 488) = v99;
    *(v43 + 448) = _NSConcreteStackBlock;
    sub_1000183E4(COERCE_DOUBLE(1107296256));
    *(v43 + 464) = v101;
    *(v43 + 472) = &unk_1006317F0;
    v102 = _Block_copy((v43 + 448));
    sub_1000115CC(v96, v95);
    static DispatchQoS.unspecified.getter();
    *(v43 + 568) = _swiftEmptyArrayStorage;
    sub_1000088A8();
    sub_10000F270(v103, v104, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_10000B910();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_1000100FC();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v102);
  }

  v105 = sub_100006C30();
  v106(v105);
  v107 = sub_100022080();
  v108(v107, v126);
  (*(v132 + 8))(v134, v138);

  sub_10000AB74();

  sub_100009EF4();
  sub_100008DF8();

  return v110(v109, v110, v111, v112, v113, v114, v115, v116, a9, a10, a11, a12, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v132, v134, v136, v138, a30, a31, a32, a33, a34);
}

uint64_t sub_100468C50(uint64_t a1)
{
  swift_willThrow();

  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v3 = type metadata accessor for Logger();
  sub_1000075F0(v3, qword_1006BA670);
  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100016F00();
  os_log_type_enabled(v4, v5);
  sub_100007E88();
  if (v6)
  {
    v7 = sub_100006DC4();
    sub_100018630(v7);
    sub_100027748(&_mh_execute_header, v8, v9, "addEndTone: cannot create tracks for tone or messge, will use message without end tone");
    sub_100005F64();
    v10 = v4;
  }

  else
  {
    sub_10000C5EC();
  }

  v11 = sub_10005168C();
  v12(v11);
  sub_10000AB74();

  sub_100009EF4();

  return v13();
}

uint64_t sub_100468DF0(uint64_t a1)
{
  v4 = *(v1 + 912);
  swift_willThrow();

  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v5 = type metadata accessor for Logger();
  sub_1000075F0(v5, qword_1006BA670);
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100016F00();
  os_log_type_enabled(v6, v7);
  sub_100007E88();
  if (v8)
  {
    v9 = sub_100006DC4();
    sub_100018630(v9);
    sub_100027748(&_mh_execute_header, v10, v11, "addEndTone: cannot create tracks for tone or messge, will use message without end tone");
    sub_100005F64();
    v12 = v6;
  }

  else
  {
    sub_10000C5EC();
  }

  v13 = sub_10005168C();
  v14(v13);
  sub_10000AB74();

  sub_100009EF4();

  return v15();
}

uint64_t sub_100468F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10003EBD4();
  a27 = v34;
  a28 = v35;
  sub_10000C1A0();
  a26 = v29;
  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v36 = type metadata accessor for Logger();
  sub_10000AF9C(v36, qword_1006BA670);
  sub_10000667C();
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10046A950();
  sub_10046A938();
  sub_1000153E4();
  sub_100008CD4();
  if (v38)
  {
    a12 = v32;
    sub_10002F7B0();
    a11 = v31;
    sub_100021F34();
    sub_100017F38();
    sub_10000C4DC(4.8149e-34);
    v39 = sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v40 = sub_1000444CC(v39);
    sub_10002741C(v40, v41, &a16);
    a9 = v33;
    sub_10000BC78();

    *(v31 + 4) = v33;
    sub_100015C24(&_mh_execute_header, v42, v43, "addEndTone: cannot combine tracks, will use message without end tone: %s");
    sub_10000D588();
    sub_1000079DC();

    (*(v28 + 8))(v31, a10);
  }

  else
  {

    v44 = sub_100017E9C();
    v46(v44, v45);
  }

  sub_10000AB74();

  sub_100009EF4();
  sub_10000C638();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1004691BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10003EBD4();
  a27 = v34;
  a28 = v35;
  sub_10000C1A0();
  a26 = v29;
  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v36 = type metadata accessor for Logger();
  sub_10000AF9C(v36, qword_1006BA670);
  sub_10000667C();
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10046A950();
  sub_10046A938();
  sub_1000153E4();
  sub_100008CD4();
  if (v38)
  {
    a12 = v32;
    sub_10002F7B0();
    a11 = v31;
    sub_100021F34();
    sub_100017F38();
    sub_10000C4DC(4.8149e-34);
    v39 = sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v40 = sub_1000444CC(v39);
    sub_10002741C(v40, v41, &a16);
    a9 = v33;
    sub_10000BC78();

    *(v31 + 4) = v33;
    sub_100015C24(&_mh_execute_header, v42, v43, "addEndTone: cannot combine tracks, will use message without end tone: %s");
    sub_10000D588();
    sub_1000079DC();

    (*(v28 + 8))(v31, a10);
  }

  else
  {

    v44 = sub_100017E9C();
    v46(v44, v45);
  }

  sub_10000AB74();

  sub_100009EF4();
  sub_10000C638();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1004693E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10003EBD4();
  a27 = v34;
  a28 = v35;
  sub_10000C1A0();
  a26 = v29;
  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v36 = type metadata accessor for Logger();
  sub_10000AF9C(v36, qword_1006BA670);
  sub_10000667C();
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10046A950();
  sub_10046A938();
  sub_1000153E4();
  sub_100008CD4();
  if (v38)
  {
    a12 = v32;
    sub_10002F7B0();
    a11 = v31;
    sub_100021F34();
    sub_100017F38();
    sub_10000C4DC(4.8149e-34);
    v39 = sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v40 = sub_1000444CC(v39);
    sub_10002741C(v40, v41, &a16);
    a9 = v33;
    sub_10000BC78();

    *(v31 + 4) = v33;
    sub_100015C24(&_mh_execute_header, v42, v43, "addEndTone: cannot combine tracks, will use message without end tone: %s");
    sub_10000D588();
    sub_1000079DC();

    (*(v28 + 8))(v31, a10);
  }

  else
  {

    v44 = sub_100017E9C();
    v46(v44, v45);
  }

  sub_10000AB74();

  sub_100009EF4();
  sub_10000C638();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_100469604(uint64_t a1)
{
  v1 = *sub_100009B14((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume(v1);
}

void sub_100469638(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v33 = a2;
  v9 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v9 - 8);
  v11 = &v28[-v10];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1006A0B50 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000AF9C(v16, qword_1006BA670);
  v34 = *(v13 + 16);
  v35 = a1;
  v34(v15, a1, v12);

  v17 = a3;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = a5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32 = a4;
    v30 = v22;
    v36 = v22;
    *v21 = 136315394;
    sub_10000F270(&qword_1006A3BD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v29 = v19;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v11;
    v26 = v25;
    (*(v13 + 8))(v15, v12);
    v27 = sub_10002741C(v23, v26, &v36);
    v11 = v24;

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10002741C(v33, v17, &v36);
    _os_log_impl(&_mh_execute_header, v18, v29, "addEndTone: updating to greetingURL=%s for %s", v21, 0x16u);
    swift_arrayDestroy();
    a4 = v32;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  if (a4)
  {
    v34(v11, v35, v12);
    sub_10000AF74(v11, 0, 1, v12);
    a4(v11);
    sub_100009A04(v11, &unk_1006A52C0, &unk_10057D930);
  }
}

void sub_1004699C4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B50 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA670);
  v26 = *(v10 + 16);
  v27 = a1;
  v26(v12, a1, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = v8;
    v17 = v16;
    v23 = swift_slowAlloc();
    v28 = v23;
    *v17 = 136315138;
    sub_10000F270(&qword_1006A3BD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = a3;
    v19 = a2;
    v21 = v20;
    (*(v10 + 8))(v12, v9);
    v22 = sub_10002741C(v18, v21, &v28);
    a2 = v19;

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "addEndTone: the tone file didn't exist, returning %s", v17, 0xCu);
    sub_100009B7C(v23);

    v8 = v24;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  if (a2)
  {
    v26(v8, v27, v9);
    sub_10000AF74(v8, 0, 1, v9);
    a2(v8);
    sub_100009A04(v8, &unk_1006A52C0, &unk_10057D930);
  }
}

uint64_t sub_100469D00(void (*a1)(char *))
{
  v2 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v3 = sub_100007BF0(v2);
  result = __chkstk_darwin(v3);
  v6 = &v9 - v5;
  if (a1)
  {
    v7 = type metadata accessor for URL();
    sub_100008070();
    sub_1000333B4();
    v8();
    sub_10000AF74(v6, 0, 1, v7);
    a1(v6);
    return sub_100009A04(v6, &unk_1006A52C0, &unk_10057D930);
  }

  return result;
}

id sub_100469E18(void *a1)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 initWithAsset:a1 presetName:v3];

  return v4;
}

uint64_t sub_100469E84(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  sub_100005EB4(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  sub_10003FBCC();
  v15 = *(v1 + 24);
  v16 = *(v1 + 16);
  v14 = *(v1 + v6);
  v8 = *(v1 + v7);
  v9 = *(v1 + v7 + 8);
  v11 = *(v1 + v10);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100035FE4;

  return sub_100465938(a1, v16, v15, v1 + v5, v14, v8, v9, v11);
}

uint64_t sub_100469FF4()
{
  type metadata accessor for URL();
  sub_100007FEC();
  v2 = *(v1 + 80);
  if (*(v0 + 16))
  {
  }

  v3 = sub_10046A990(v2 + 32);
  v4(v3);

  return _swift_deallocObject(v0);
}

uint64_t sub_10046A0AC()
{
  v1 = type metadata accessor for URL();
  sub_100007BF0(v1);
  return sub_100469D00(*(v0 + 16));
}

void sub_10046A100()
{
  v1 = type metadata accessor for URL();
  sub_100005EB4(v1);
  sub_10001C9E4();
  v4 = v0 + v3;
  v5 = *v4;
  v6 = *(v4 + 8);

  sub_1004699C4(v0 + v2, v5, v6);
}

void sub_10046A180()
{
  v1 = type metadata accessor for URL();
  sub_100005EB4(v1);
  sub_10001C9E4();
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);

  sub_100469638(v0 + v2, v6, v7, v8, v9);
}

uint64_t sub_10046A210(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046A280()
{
  v1 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = type metadata accessor for URL();
  sub_100005EB4(v6);
  sub_10003FBCC();
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1004639C8(*(v0 + 16), *(v0 + 24), v0 + v3, *(v0 + v5), *(v0 + v5 + 1), v0 + v12, *(v0 + v10), *(v0 + v10 + 8), *(v0 + v11), *(v0 + v11 + 8), v0 + v7, *(v0 + v9), *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10046A3BC()
{
  sub_10000C1A0();
  v1 = type metadata accessor for URL();
  sub_100005EB4(v1);
  v2 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  sub_100005EB4(v2);
  sub_10001C9E4();
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_100035FE4;
  sub_10000C638();

  return sub_100464454(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10046A5C4()
{
  v1 = type metadata accessor for URL();
  sub_100007BF0(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = v0 + ((*(v2 + 80) + 33) & ~*(v2 + 80));

  return sub_100464D84(v3, v4, v5, v6);
}

uint64_t sub_10046A628(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10046A6E0;

  return sub_100462E9C();
}

uint64_t sub_10046A6E0()
{
  sub_100006810();
  v2 = v1;
  sub_100005F18();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_100008060();
  *v6 = v5;

  *v4 = v2 & 1;
  sub_100009EF4();

  return v7();
}