uint64_t sub_1003547F4(char a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[1] = a7;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  if (a3)
  {
    a3(a1 & 1, a2);
  }

  v17 = Date.init()();
  sub_100366E70(v17, v18);
  Date.addingTimeInterval(_:)();
  v19 = *(v11 + 8);
  v19(v14, v10);
  sub_100359550();
  result = (v19)(v16, v10);
  if (a1)
  {
    return sub_1003EFB64(0);
  }

  return result;
}

void sub_100354A48()
{
  sub_100005EF4();
  v128 = v2;
  v129 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v9 = sub_100007BF0(v8);
  __chkstk_darwin(v9);
  v11 = &v112[-v10];
  v12 = type metadata accessor for UUID();
  sub_100007FEC();
  v122 = v13;
  __chkstk_darwin(v14);
  sub_100007BAC();
  __chkstk_darwin(v15);
  sub_10001C9F4();
  __chkstk_darwin(v16);
  v18 = &v112[-v17];
  v131 = type metadata accessor for Date();
  sub_100007FEC();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100007BAC();
  v123 = (v22 - v23);
  sub_100006838();
  __chkstk_darwin(v24);
  v130 = &v112[-v25];
  v26 = objc_opt_self();
  v124 = v7;
  v125 = v5;
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 tu_predicateForConversationLinkDescriptorsWithPseudonym:v27];

  v126 = v0;
  v29 = *(v0 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  v134[0] = 0;
  v132 = v28;
  sub_10000C740();
  v32 = [v30 v31];
  v33 = v134[0];
  p_inst_meths = (&OBJC_PROTOCOL___CSDAssistantServicesObserver + 24);
  if (v32)
  {
    v35 = v32;
    v121 = v29;
    v36 = sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v33;

    if (sub_10000B6F4(v37))
    {
      v120 = v36;
      sub_10039C390(0, (v37 & 0xC000000000000001) == 0, v37);
      if ((v37 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v37 + 32);
      }

      v127 = v39;
      v40 = v20;

      [v127 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
      if (swift_dynamicCast())
      {
        v41 = v133;
        [v133 setActivated:1];
        v42 = v130;
        Date.init()();
        isa = Date._bridgeToObjectiveC()().super.isa;
        v45 = *(v40 + 8);
        v44 = v40 + 8;
        v119 = v45;
        v45(v42, v131);
        [v41 setCreationDate:isa];

        [v41 setDeletionDate:0];
        sub_100285FC4(v128, v11, &unk_1006A3DD0, &unk_10057C9D0);
        if (sub_100015468(v11, 1, v12) == 1)
        {
          sub_100009A04(v11, &unk_1006A3DD0, &unk_10057C9D0);
        }

        else
        {
          v48 = v122;
          (*(v122 + 32))(v18, v11, v12);
          if (qword_1006A0B20 != -1)
          {
            sub_10000854C();
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          sub_1000075F0(v49, qword_1006BA5E0);
          (*(v48 + 16))(v1, v18, v12);
          v128 = v41;
          v50 = v41;
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.default.getter();

          v53 = sub_10003EB80();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = sub_100007C08();
            v115 = v55;
            v116 = swift_slowAlloc();
            v134[0] = v116;
            *v55 = 136315394;
            v56 = [v50 groupUUID];
            v117 = v50;
            v57 = v48;
            v58 = v56;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100017230();
            sub_100369F50(v59, v60);
            v114 = v51;
            v61 = dispatch thunk of CustomStringConvertible.description.getter();
            v118 = v44;
            v63 = v62;
            v113 = v52;
            v64 = *(v57 + 8);
            v65 = sub_100005334();
            v64(v65);
            v66 = sub_10002741C(v61, v63, v134);

            v67 = v115;
            *(v115 + 1) = v66;
            *(v67 + 6) = 2080;
            dispatch thunk of CustomStringConvertible.description.getter();
            sub_10000A224();
            (v64)(v1, v12);
            v50 = v117;
            v68 = sub_100006B30();
            v71 = sub_10002741C(v68, v69, v70);

            *(v67 + 14) = v71;
            v72 = v114;
            _os_log_impl(&_mh_execute_header, v114, v113, "In activating link, updating the groupUUID from %s to %s", v67, 0x16u);
            swift_arrayDestroy();
            sub_100009ED0();

            sub_100018250();
          }

          else
          {

            v64 = *(v48 + 8);
            (v64)(v1, v12);
          }

          v73 = UUID._bridgeToObjectiveC()().super.isa;
          [v50 setGroupUUID:v73];

          (v64)(v18, v12);
          v41 = v128;
        }

        v74 = v129;
        if (v129)
        {
          if (qword_1006A0B20 != -1)
          {
            sub_10000854C();
            swift_once();
          }

          v75 = type metadata accessor for Logger();
          sub_1000075F0(v75, qword_1006BA5E0);

          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v76, v77))
          {
            sub_100007BFC();
            v78 = swift_slowAlloc();
            v79 = sub_100005E84();
            v128 = v41;
            v80 = v79;
            v134[0] = v79;
            *v78 = 136315138;
            v81 = sub_10036BEA8();
            sub_100006AF0(v81, v82, TUHandle_ptr);
            sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
            v83 = Set.description.getter();
            v85 = sub_10002741C(v83, v84, v134);

            *(v78 + 4) = v85;
            sub_10000C1F8();
            _os_log_impl(v86, v87, v88, v89, v78, 0xCu);
            sub_100009B7C(v80);
            v41 = v128;
            sub_100009ED0();

            sub_100009ED0();
          }

          sub_1003696E4(v74, v41);
        }

        sub_1003540EC();
        sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
        sub_100007934();
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_10057CA80;
        *(v90 + 32) = v41;
        v91 = v41;
        sub_100051648();
        Array._bridgeToObjectiveC()();
        sub_10000667C();

        v134[0] = 0;
        v92 = [v121 addOrUpdateConversationLinkDescriptors:v41 error:v134];

        if (v92)
        {
          v93 = v134[0];
          sub_1003EFB64(0);
          v94 = v123;
          v95 = Date.init()();
          sub_100366E70(v95, v96);
          v97 = v130;
          Date.addingTimeInterval(_:)();
          v98 = v94;
          v99 = v131;
          v100 = v119;
          v119(v98, v131);
          sub_10000C740();
          sub_100359550();
          v100(v97, v99);
          [objc_allocWithZone(TUConversationLink) initWithDescriptor:v41];

          goto LABEL_32;
        }

        v101 = v134[0];

        _convertNSErrorToError(_:)();
        swift_willThrow();

        p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
        goto LABEL_27;
      }

      v47 = v127;
    }

    else
    {

      v47 = v132;
    }

    goto LABEL_32;
  }

  v46 = v134[0];
  sub_10000667C();
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_27:
  if (p_inst_meths[356] != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  sub_1000075F0(v102, qword_1006BA5E0);
  swift_errorRetain();
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v103, v104))
  {
    sub_100007BFC();
    v105 = swift_slowAlloc();
    sub_100015DC0();
    v106 = swift_slowAlloc();
    *v105 = 138412290;
    swift_errorRetain();
    v107 = _swift_stdlib_bridgeErrorToNSError();
    *(v105 + 4) = v107;
    *v106 = v107;
    sub_10000C1F8();
    _os_log_impl(v108, v109, v110, v111, v105, 0xCu);
    sub_100009A04(v106, &unk_1006A2630, &qword_10057CB40);
    sub_10000EA64();

    sub_100009ED0();
  }

  else
  {
  }

LABEL_32:
  sub_100005EDC();
}

void sub_1003556E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(uint64_t a1, uint64_t a2), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100016EEC();
  a21 = v23;
  a22 = v24;
  v25 = v22;
  v27 = v26;
  v28 = *&v25[OBJC_IVAR___CSDConversationLinkManager_dataSource];
  v29 = sub_1003557B4();
  sub_100007C2C();
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  a13 = sub_10036A878;
  a14 = v30;
  sub_10000A204();
  sub_100015220();
  a11 = v31;
  a12 = &unk_100629890;
  v32 = _Block_copy(&a9);
  v33 = v25;
  v34 = v27;

  [v28 conversationLinkDescriptorCountWithPredicate:v29 completion:v32];
  _Block_release(v32);

  sub_10000B980();
}

id sub_1003557B4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100581AB0;
  v6 = objc_opt_self();
  *(v5 + 32) = [v6 tu_predicateForConversationLinkDescriptorsWithActivated:0];
  *(v5 + 40) = [v6 tu_predicateForConversationLinkDescriptorsWithOriginatorHandle:v0];
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v8 = [v6 tu_predicateForConversationLinkDescriptorsWithExpirationDateAfter:isa];

  *(v5 + 48) = v8;
  return sub_10000C350();
}

void sub_100355BE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100355CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(uint64_t a1, uint64_t a2), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100016EEC();
  a21 = v23;
  a22 = v24;
  v25 = v22;
  v27 = v26;
  v29 = v28;
  v30 = *&v25[OBJC_IVAR___CSDConversationLinkManager_dataSource];
  v31 = sub_1003557B4();
  sub_100007934();
  v32 = swift_allocObject();
  *(v32 + 16) = v25;
  *(v32 + 24) = v27;
  *(v32 + 32) = v29;
  a13 = sub_10036A868;
  a14 = v32;
  sub_10000A204();
  sub_100015220();
  a11 = v33;
  a12 = &unk_1006297F0;
  v34 = _Block_copy(&a9);
  v35 = v25;
  v36 = v29;

  [v30 conversationLinkDescriptorCountWithPredicate:v31 completion:v34];
  _Block_release(v34);

  sub_10000B980();
}

void sub_100355DA0(uint64_t a1, uint64_t a2, char *a3, char a4, void *a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (NSNotFound.getter() == a1)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA5E0);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v25, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    if (a2)
    {
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v18;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    *(v16 + 4) = v18;
    *v17 = v19;
    _os_log_impl(&_mh_execute_header, v25, v15, "Fetching conversation link descriptor count failed with error %@", v16, 0xCu);
    sub_100009A04(v17, &unk_1006A2630, &qword_10057CB40);
  }

  else
  {
    if (sub_100367024() > a1 || (a4 & 1) != 0 && sub_100367024() == a1)
    {
      UUID.init()();
      sub_10035F6CC(v13, a5, 0, 0, 0, a3, [*&a3[OBJC_IVAR___CSDConversationLinkManager_serverBag] inactiveLinkPseudonymExpiry]);
      (*(v11 + 8))(v13, v10);
      return;
    }

    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000AF9C(v20, qword_1006BA5E0);
    v24 = a3;
    v25 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v25, v21))
    {

      v23 = v24;
      goto LABEL_19;
    }

    v22 = swift_slowAlloc();
    *v22 = 134218240;
    *(v22 + 4) = a1;
    *(v22 + 12) = 2048;
    *(v22 + 14) = sub_100367024();

    _os_log_impl(&_mh_execute_header, v25, v21, "Count of inactive links ({public}%ld) reached the cache limit ({public}%ld); not provisioning another.", v22, 0x16u);
  }

LABEL_18:
  v23 = v25;
LABEL_19:
}

void sub_100356130(void *a1, uint64_t a2)
{
  if (!a2)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA5E0);
    v11 = a1;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = a1;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Provisioned inactive link %@", v13, 0xCu);
      sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA5E0);
  swift_errorRetain();
  v4 = a1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v4;
    *v7 = a1;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v8 = v4;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Failed to provision inactive link %@ %@", v6, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();

LABEL_10:

    return;
  }
}

void sub_100356488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(uint64_t a1, uint64_t a2), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100016EEC();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v28 = sub_1003557B4();
  sub_100007C2C();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v25;
  a13 = sub_10036A860;
  a14 = v29;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v30;
  a12 = &unk_1006297A0;
  v31 = _Block_copy(&a9);

  sub_10000C740();
  [v32 v33];
  _Block_release(v31);

  sub_10000B980();
}

void sub_100356564(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  if (a1 && sub_10000B6F4(a1))
  {
    sub_10039C390(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = v6;
    v8 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v6];
  }

  else
  {
    v8 = 0;
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA5E0);
  v15 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v15;
    *v13 = v8;
    v14 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "Asked for inactive link, returning: %@", v12, 0xCu);
    sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);
  }

  a3(v8, a2);
}

id sub_1003567F8()
{
  v1 = sub_1003557B4();
  sub_10000C740();
  v4 = [v2 v3];

  if (v4)
  {
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    sub_100007694();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = 0;

    if (sub_10000B6F4(v5))
    {
      v7 = (v5 & 0xC000000000000001);
      sub_10039C390(0, (v5 & 0xC000000000000001) == 0, v5);
      if ((v5 & 0xC000000000000001) != 0)
      {
        sub_10036BEA8();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v5 + 32);
      }

      sub_10000667C();

      v9 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v5 & 0xC000000000000001];

      v10 = v9;
    }

    else
    {

      v9 = 0;
    }

    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000075F0(v12, qword_1006BA5E0);
    v13 = v9;
    v14 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    v15 = sub_10003A5B4();
    if (os_log_type_enabled(v15, v16))
    {
      sub_100007BFC();
      swift_slowAlloc();
      sub_100015FDC();
      v17 = swift_slowAlloc();
      *v0 = 138412290;
      *(v0 + 4) = v13;
      *v17 = v9;
      sub_1000079AC();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      sub_100009A04(v17, &unk_1006A2630, &qword_10057CB40);
      sub_100009ED0();

      sub_10000EA64();
    }

    else
    {
    }
  }

  else
  {
    v11 = 0;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v9;
}

void sub_100356ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100035794();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = objc_opt_self();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 tu_predicateForConversationLinkDescriptorsWithPseudonym:v33];

  if (v31)
  {
    sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
    sub_100008BA8();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10057DEC0;
    *(v35 + 32) = v34;
    v36 = v34;
    *(v35 + 40) = [v32 tu_predicateForConversationLinkDescriptorsWithActivated:1];
    sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
    v34 = sub_10000C350();
  }

  sub_100007C2C();
  v37 = swift_allocObject();
  *(v37 + 16) = v29;
  *(v37 + 24) = v27;
  a13 = sub_10036BE18;
  a14 = v37;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v38;
  a12 = &unk_100629750;
  v39 = _Block_copy(&a9);

  sub_10000D494();
  [v40 v41];
  _Block_release(v39);

  sub_10036BED4();
}

void sub_100356D28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _convertErrorToNSError(_:)();
  }

  v2 = sub_100006B30();
  v5 = v3;
  v4(v2);
}

void *sub_100356D94(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v8 = v7 - v6;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = objc_opt_self();
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v28 = v13;
    v29 = v11;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v27 = *(v12 + 56);
    v10 = v12;
    do
    {
      v28(v8, v14, v2);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v16 = [v29 tu_predicateForConversationLinkDescriptorsWithGroupUUID:isa];

      v17 = sub_10000B8B0();
      v18(v17);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += v27;
      --v9;
    }

    while (v9);
    sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
    sub_10000667C();
    v19 = sub_100421378();
    sub_10000D494();
    v22 = [v20 v21];
    if (v22)
    {
      v23 = v22;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = 0;
    }

    else
    {
      v25 = 0;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v10;
}

void sub_100357130()
{
  v1 = v0;
  if ([*&v0[OBJC_IVAR___CSDConversationLinkManager_service] hasActiveAccounts])
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000075F0(v2, qword_1006BA5E0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = sub_100006DC4();
      *v5 = 0;
      sub_10000C1F8();
      _os_log_impl(v6, v7, v8, v9, v5, 2u);
      sub_100009ED0();
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    aBlock[4] = sub_10036A6FC;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    sub_10000A8B8();
    aBlock[2] = v11;
    aBlock[3] = &unk_1006295E8;
    v12 = _Block_copy(aBlock);
    v13 = v1;

    sub_10000C740();
    [v14 v15];
    _Block_release(v12);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000075F0(v16, qword_1006BA5E0);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = sub_100006DC4();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v17, "validateAllLinks: No active accounts on the service, skipping link validation for now", v18, 2u);
      sub_100009ED0();
    }
  }
}

void sub_100357370(uint64_t a1, unint64_t i, uint64_t (*a3)(id *))
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v15 = v107 - v14;
  if (!a1 || i)
  {
    if (qword_1006A0B20 == -1)
    {
LABEL_4:
      v16 = type metadata accessor for Logger();
      sub_10000AF9C(v16, qword_1006BA5E0);
      swift_errorRetain();
      v117 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v117, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        if (i)
        {
          swift_errorRetain();
          v20 = _swift_stdlib_bridgeErrorToNSError();
          v21 = v20;
        }

        else
        {
          v20 = 0;
          v21 = 0;
        }

        *(v18 + 4) = v20;
        *v19 = v21;
        _os_log_impl(&_mh_execute_header, v117, v17, "No descriptors fetched -- validation over {error: %@}", v18, 0xCu);
        sub_100009A04(v19, &unk_1006A2630, &qword_10057CB40);
      }

      v49 = v117;

      return;
    }

LABEL_59:
    swift_once();
    goto LABEL_4;
  }

  v109 = v13;
  v110 = v12;
  Date.init(timeIntervalSinceNow:)();
  v22 = _swiftEmptyArrayStorage;
  v125 = _swiftEmptyArrayStorage;
  v23 = sub_10000B6F4(a1);
  v112 = v6;
  v113 = v7;
  v114 = v15;
  v116 = a3;
  v117 = a1;
  v111 = v10;
  if (v23)
  {
    v24 = v23;
    if (v23 < 1)
    {
      __break(1u);
      return;
    }

    v25 = 0;
    v26 = a1 & 0xC000000000000001;
    do
    {
      if (v26)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(a1 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v27];
      if ([v29 isLocallyCreated])
      {
        v30 = v28;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v22 = v125;
        a1 = v117;
      }

      else
      {
      }

      ++v25;
    }

    while (v24 != v25);
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_10000AF9C(v31, qword_1006BA5E0);
  v34 = v113;
  v33 = v114;
  v35 = v109;
  v36 = v112;
  v108 = *(v113 + 16);
  v108(v109, v114, v112);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v37, v38);
  v115 = v22;
  v107[1] = v32;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v107[0] = swift_slowAlloc();
    aBlock = v107[0];
    *v40 = 136315394;
    sub_100369F50(&unk_1006A6740, &type metadata accessor for Date);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v109 = *(v34 + 8);
    v109(v35, v36);
    v44 = sub_10002741C(v41, v43, &aBlock);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);

    v45 = Array.description.getter();
    v47 = v46;

    v48 = sub_10002741C(v45, v47, &aBlock);
    v22 = v115;

    *(v40 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v37, v38, "validateAllLinks: Links expiration must be newer than date %s for descriptors: %s", v40, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v109 = *(v34 + 8);
    v109(v35, v36);
  }

  v50 = v116;
  v51 = v111;
  v108(v111, v33, v36);
  v52 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v53 = swift_allocObject();
  (*(v34 + 32))(v53 + v52, v51, v36);
  v126 = v22;
  v127 = sub_10036A704;
  v128 = v53;
  *(swift_allocObject() + 16) = v50;

  v54 = v50;
  sub_10026D814(&unk_1006A6798, &unk_100581B50);
  LazyFilterSequence.filter(_:)();

  v56 = aBlock;
  v55 = v120;
  v57 = v121;

  v116 = v55;
  sub_100369BCC(v56, v55);
  v59 = v58;
  v60 = sub_10000B6F4(v56);
  v111 = v54;
  if (v59 != v60)
  {

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v126 = v64;
      *v63 = 134218242;
      v65 = v116;
      sub_100369BCC(v56, v116);
      v67 = v66;
      v68 = sub_10000B6F4(v56);
      sub_100369CA4(v67, v68, v56, v65);
      *(v63 + 4) = v69;

      *(v63 + 12) = 2080;
      aBlock = v56;
      v120 = v65;
      v121 = v57;
      v122 = sub_1003584E8;
      v123 = 0;

      sub_10026D814(&qword_1006A67A8, &unk_100581B60);
      v70 = String.init<A>(reflecting:)();
      v72 = sub_10002741C(v70, v71, &v126);

      *(v63 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v61, v62, "validateAllLinks: We have some invalid links to cleanup {count: %ld, pseudonyms: %s}", v63, 0x16u);
      sub_100009B7C(v64);
    }

    else
    {
    }

    if (_TUIsInternalInstall())
    {
      v73 = [objc_opt_self() tu_defaults];
      v74 = String._bridgeToObjectiveC()();
      v75 = [v73 BOOLForKey:v74 withDefault:0];

      if (v75)
      {
        v76 = sub_10000B6F4(v56);

        for (i = 0; ; ++i)
        {
          if (v76 == i)
          {

            v54 = v111;
            goto LABEL_46;
          }

          if ((v56 & 0xC000000000000001) != 0)
          {
            v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (i >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v77 = *(v56 + 8 * i + 32);
          }

          v78 = v77;
          if (__OFADD__(i, 1))
          {
            break;
          }

          aBlock = v77;
          if (v116(&aBlock))
          {
            sub_1003650F4();
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

LABEL_46:
    v79 = swift_allocObject();
    v79[2] = sub_100358540;
    v79[3] = 0;
    v80 = v116;
    v79[4] = v56;
    v79[5] = v80;
    v79[6] = v57;
    v79[7] = sub_1003584E8;
    v79[8] = 0;
    v126 = v56;
    v127 = v80;
    v128 = v57;
    v129 = sub_10036A7C0;
    v130 = v79;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_1003690C0(&v126);

    sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
    v81 = sub_100421378();
    v82 = *(v54 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
    v83 = swift_allocObject();
    v83[2] = v54;
    v83[3] = v56;
    v83[4] = v80;
    v83[5] = v57;
    v123 = sub_10036A7CC;
    v124 = v83;
    aBlock = _NSConcreteStackBlock;
    v120 = 1107296256;
    v121 = sub_100355BE4;
    v122 = &unk_1006296B0;
    v84 = _Block_copy(&aBlock);
    v85 = v54;

    [v82 removeConversationLinkDescriptorsWithPredicate:v81 deleteReason:5 completion:v84];
    _Block_release(v84);
  }

  sub_10036618C();
  v87 = v86;
  if (*(v86 + 16))
  {
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v118 = v87;
      aBlock = v91;
      *v90 = 134218242;
      *(v90 + 4) = *(v87 + 16);
      *(v90 + 12) = 2080;

      sub_10026D814(&unk_1006A3C60, &unk_10057D910);
      v92 = String.init<A>(reflecting:)();
      v94 = sub_10002741C(v92, v93, &aBlock);

      *(v90 + 14) = v94;
      _os_log_impl(&_mh_execute_header, v88, v89, "validateAllLinks: We have some deleted links to remove from database {count: %ld, pseudonyms: %s}", v90, 0x16u);
      sub_100009B7C(v91);
    }

    v95 = *(v87 + 16);
    if (v95)
    {
      aBlock = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v96 = objc_opt_self();
      v97 = v87 + 40;
      do
      {

        v98 = String._bridgeToObjectiveC()();
        v99 = [v96 tu_predicateForConversationLinkDescriptorsWithPseudonym:v98];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v97 += 16;
        --v95;
      }

      while (v95);

      v100 = aBlock;
    }

    else
    {

      v100 = _swiftEmptyArrayStorage;
    }

    sub_100274264(v100);
    sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
    v101 = sub_100421378();
    v102 = v111;
    v103 = *(v111 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
    v104 = swift_allocObject();
    v104[2] = v102;
    v104[3] = v56;
    v104[4] = v116;
    v104[5] = v57;
    v123 = sub_10036A838;
    v124 = v104;
    aBlock = _NSConcreteStackBlock;
    v120 = 1107296256;
    v121 = sub_100355BE4;
    v122 = &unk_100629700;
    v105 = _Block_copy(&aBlock);
    v106 = v102;

    [v103 removeLinkDescriptorsFromDataSourceWithPredicate:v101 completion:v105];
    _Block_release(v105);

    swift_bridgeObjectRelease_n();

    v109(v114, v112);
  }

  else
  {
    v109(v114, v36);

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_10035829C(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 expirationDate];
  if (v7)
  {
    v8 = v7;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = static Date.> infix(_:_:)();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA5E0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "validateAllLinks: no valid expirationDate", v13, 2u);
    }

    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_100358460(id *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___CSDConversationLinkManager_service);
  v3 = [*a1 pseudonym];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = [v2 checkValidityForSelfPseudonymString:v3];

  return v4 ^ 1;
}

void sub_1003584E8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 pseudonym];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_100358540(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 tu_predicateForConversationLinkDescriptorsWithPseudonym:v3];

  *a1 = v4;
}

void sub_1003585B4()
{
  sub_10000D698();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000075F0(v8, qword_1006BA5E0);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100007C08();
    sub_100015DC0();
    v12 = swift_slowAlloc();
    *v11 = 134218242;
    *(v11 + 4) = v7;
    *(v11 + 12) = 2112;
    if (v5)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v11 + 14) = v13;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, v1, v11, 0x16u);
    sub_100009A04(v12, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    sub_100009ED0();
  }

  if (NSNotFound.getter() == v7 || (v15 = *(v3 + OBJC_IVAR___CSDConversationLinkManager_delegate)) == 0)
  {
    sub_100006048();
  }

  else
  {
    swift_unknownObjectRetain();
    v16 = sub_100006694();
    sub_100369300(v16, v17);
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 linkManager:v3 removedLinkDescriptorsFromIDSSignal:isa];

    sub_100006048();

    swift_unknownObjectRelease();
  }
}

void sub_1003589B0(void *a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void, void), uint64_t a6, char *a7, uint64_t a8)
{
  if (a1)
  {
    v15 = objc_allocWithZone(TUConversationLink);
    v16 = a1;
    v48 = [v15 initWithDescriptor:v16];
    if ([v48 isLocallyCreated])
    {
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000AF9C(v17, qword_1006BA5E0);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v47 = a8;
        v20 = a6;
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_10002741C(a3, a4, aBlock);
        _os_log_impl(&_mh_execute_header, v18, v19, "Asking IDS to revoke pseudonym %s because it was locally generated for link being invalidated", v21, 0xCu);
        sub_100009B7C(v22);

        a6 = v20;
        a8 = v47;
      }

      sub_1003650F4();
      v23 = *&a7[OBJC_IVAR___CSDConversationLinkManager_service];
      v24 = [v48 pseudonym];
      if (!v24)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = String._bridgeToObjectiveC()();
      }

      v25 = swift_allocObject();
      v25[2] = a5;
      v25[3] = a6;
      v25[4] = a7;
      v25[5] = v48;
      v25[6] = a8;
      aBlock[4] = sub_10036A6E4;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_100629598;
      v26 = _Block_copy(aBlock);
      sub_1000115CC(a5, a6);
      v27 = a7;
      v28 = v48;

      [v23 revokePseudonymString:v24 completionHandler:v26];

      _Block_release(v26);
    }

    else
    {
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000AF9C(v37, qword_1006BA5E0);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = a3;
        v43 = a5;
        v44 = a8;
        v45 = a6;
        v46 = v41;
        aBlock[0] = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_10002741C(v42, a4, aBlock);
        _os_log_impl(&_mh_execute_header, v38, v39, "Removing link with pseudonym %s from storage without invalidating as it's not locally created", v40, 0xCu);
        sub_100009B7C(v46);
        a6 = v45;
        a8 = v44;
        a5 = v43;
      }

      sub_10035921C(v48, a8, a5, a6);
    }
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000AF9C(v30, qword_1006BA5E0);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10002741C(a3, a4, aBlock);
      _os_log_impl(&_mh_execute_header, v31, v32, "Asked to invalidate link for pseudonym %s but none was found.", v33, 0xCu);
      sub_100009B7C(v34);
    }

    if (a5)
    {
      v35 = a2;
      if (!a2)
      {
        v36 = objc_allocWithZone(NSError);
        v35 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
      }

      swift_errorRetain();
      a5(0, v35);
    }
  }
}

void sub_100358FB0(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a2)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA5E0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Pseudonym invalidation failed with error %@)", v12, 0xCu);
      sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);
    }

    if (a3)
    {
      a3(0, a2);
    }
  }

  else
  {
    sub_10035921C(a6, a7, a3, a4);
  }
}

uint64_t sub_10035921C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA5E0);
  v11 = a1;
  v12 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100033378())
  {
    sub_100007BFC();
    v35 = v5;
    v13 = swift_slowAlloc();
    v34 = a2;
    v14 = sub_100005E84();
    var58[0] = v14;
    *v13 = 136315138;
    v15 = [v11 pseudonym];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10002741C(v16, v18, var58);

    *(v13 + 4) = v19;
    sub_100008968(&_mh_execute_header, v20, v21, "Removing conversation link for pseudonym %s");
    sub_100009B7C(v14);
    a2 = v34;
    sub_100009ED0();

    sub_100009ED0();
  }

  v22 = [v11 pseudonym];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  sub_100007C2C();
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = sub_100006694();
  sub_1000115CC(v27, v28);
  sub_10035EA6C(v23, v25, a2, sub_10036A60C, v26, v29, v30, v31, v33, v34, v35, var58[0], var58[1], var58[2], var58[3], var58[4], var58[5], var58[6], var58[7], var58[8], var58[9], var58[10], var58[11], vars8);
}

uint64_t sub_100359424(uint64_t result, uint64_t a2, uint64_t (*a3)(_BOOL8, uint64_t))
{
  if (a3)
  {
    v5 = NSNotFound.getter() != result;
    return a3(v5, a2);
  }

  return result;
}

void sub_1003596B8(void *a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void, id), unint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v21 = a1;
    sub_100362958(v21, a8, a5, a6);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA5E0);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_10002741C(a3, a4, &v22);
      _os_log_impl(&_mh_execute_header, v15, v16, "Asked to renew link for pseudonym %s but none was found.", v17, 0xCu);
      sub_100009B7C(v18);
    }

    if (a5)
    {
      v19 = a2;
      if (!a2)
      {
        v20 = objc_allocWithZone(NSError);
        v19 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
      }

      swift_errorRetain();
      a5(0, v19);
    }
  }
}

void sub_100359BEC(void *a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, char *, id), uint64_t a6, char *a7)
{
  v96 = a3;
  v97 = a5;
  v12 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v89 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 1);
  __chkstk_darwin(v18);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v95 = a7;
    v22 = a6;
    v23 = a1;
    [v23 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
    if (swift_dynamicCast())
    {
      v92 = v23;
      v24 = *&v95[OBJC_IVAR___CSDConversationLinkManager_service];
      v94 = v104;
      v25 = [v104 pseudonym];
      if (!v25)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = String._bridgeToObjectiveC()();
      }

      v26 = [v24 pseudonymForPseudonymString:v25];

      v27 = v22;
      v93 = v17;
      if (v26)
      {
        if (!sub_100366D2C(v26))
        {
          v74 = [v26 properties];
          v75 = [v74 expirationDate];

          static Date._unconditionallyBridgeFromObjectiveC(_:)();
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v19 + 8))(v21, v18);
          v28 = v94;
          [v94 setExpirationDate:isa];

          sub_1003540EC();
          v77 = v95;
          v78 = *&v95[OBJC_IVAR___CSDConversationLinkManager_dataSource];
          sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_10057CA80;
          *(v79 + 32) = v28;
          sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
          v80 = v28;
          v81 = Array._bridgeToObjectiveC()().super.isa;

          v82 = swift_allocObject();
          *(v82 + 16) = v80;
          *(v82 + 24) = v77;
          v102 = sub_10036A588;
          v103 = v82;
          aBlock = _NSConcreteStackBlock;
          v99 = 1107296256;
          v100 = sub_1003541FC;
          v101 = &unk_1006294D0;
          v83 = _Block_copy(&aBlock);
          v84 = v80;
          v85 = v77;

          [v78 addOrUpdateConversationLinkDescriptors:v81 completion:v83];

          _Block_release(v83);
          v73 = 1;
          v62 = v92;
LABEL_29:
          v15 = v93;
          if (!v97)
          {

            return;
          }

          v86 = [v28 expirationDate];
          if (v86)
          {
            v87 = v86;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v88 = 0;
          }

          else
          {
            v88 = 1;
          }

          sub_10000AF74(v15, v88, 1, v18);
          v97(v73, v15, 0);

          goto LABEL_35;
        }

        v28 = v94;
      }

      else
      {
        if (qword_1006A0B20 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_10000AF9C(v37, qword_1006BA5E0);
        v28 = v94;
        v38 = v94;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v91 = v22;
          v42 = v41;
          v90 = swift_slowAlloc();
          aBlock = v90;
          *v42 = 136315138;
          v43 = [v38 pseudonym];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          v47 = sub_10002741C(v44, v46, &aBlock);
          v28 = v94;

          *(v42 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v39, v40, "Could not retrieve IDS pseudonym object for pseudonym string %s", v42, 0xCu);
          sub_100009B7C(v90);

          v27 = v91;
        }
      }

      v91 = v27;
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_10000AF9C(v48, qword_1006BA5E0);
      v49 = v28;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        aBlock = v53;
        *v52 = 136315138;
        v54 = [v49 pseudonym];
        v90 = v18;
        v55 = v54;
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59 = v56;
        v28 = v94;
        v60 = sub_10002741C(v59, v58, &aBlock);
        v61 = &selRef_normalizedValue;

        *(v52 + 4) = v60;
        v18 = v90;
        _os_log_impl(&_mh_execute_header, v50, v51, "Removing invalid conversation link with pseudonym %s", v52, 0xCu);
        sub_100009B7C(v53);

        v62 = v92;
        v63 = v95;
      }

      else
      {

        v62 = v92;
        v63 = v95;
        v61 = &selRef_normalizedValue;
      }

      sub_1003650F4();
      v64 = [v49 v61[506]];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68 = swift_allocObject();
      v68[2] = v96;
      v68[3] = a4;
      v68[4] = v63;
      v68[5] = v49;
      v69 = v49;
      v63;

      sub_10035EA6C(v65, v67, 3, sub_10036A57C, v68, v70, v71, v72, v89, v90, v91, v92, v93, v94, v95, v96, v97, aBlock, v99, v100, v101, v102, v103, v104);

      v73 = 0;
      goto LABEL_29;
    }
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000AF9C(v29, qword_1006BA5E0);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = v18;
    v34 = swift_slowAlloc();
    aBlock = v34;
    *v32 = 136315138;
    *(v32 + 4) = sub_10002741C(v96, a4, &aBlock);
    _os_log_impl(&_mh_execute_header, v30, v31, "Asked to check validity of link for pseudonym %s but none was found.", v32, 0xCu);
    sub_100009B7C(v34);
    v18 = v33;
  }

  if (v97)
  {
    sub_10000AF74(v15, 1, 1, v18);
    v35 = a2;
    if (!a2)
    {
      v36 = objc_allocWithZone(NSError);
      v35 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
    }

    swift_errorRetain();
    v97(0, v15, v35);

LABEL_35:
    sub_100009A04(v15, &qword_1006A3C70, &unk_10057EA80);
  }
}

void sub_10035A5BC(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    sub_1003EFB64(0);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA5E0);
    v6 = a3;
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v8 = 136315394;
      v11 = [v6 pseudonym];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_10002741C(v12, v14, &v19);

      *(v8 + 4) = v15;
      *(v8 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v8 + 14) = v16;
      *v9 = v17;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Saving expiration date for pseudonym %s failed with error %@", v8, 0x16u);
      sub_100009A04(v9, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v10);
    }
  }
}

void sub_10035A804(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (NSNotFound.getter() == a1)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA5E0);

    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_10002741C(a3, a4, &v23);
      *(v13 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 14) = v16;
      *v14 = v17;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Removal of invalid conversation link with pseudonym %%%s failed with error %@", v13, 0x16u);
      sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v15);
    }
  }

  else
  {
    v18 = *(a5 + OBJC_IVAR___CSDConversationLinkManager_delegate);
    if (v18)
    {
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10057CA80;
      *(v19 + 32) = a6;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      swift_unknownObjectRetain();
      v20 = a6;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v18 linkManager:a5 removedLinkDescriptorsFromValidityCheck:isa];

      swift_unknownObjectRelease();
    }

    sub_1003EFB64(0);
  }
}

void sub_10035ABA0(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - v9;
  sub_100285FC4(a2, &v13 - v9, &qword_1006A3C70, &unk_10057EA80);
  v11 = type metadata accessor for Date();
  isa = 0;
  if (sub_100015468(v10, 1, v11) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (a3)
  {
    a3 = _convertErrorToNSError(_:)();
  }

  (*(a4 + 16))(a4, a1 & 1, isa, a3);
}

void sub_10035ADC8(void *a1, void *a2, void *a3, void (*a4)(void, id), uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v15 = a1;
    [v15 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
    if (swift_dynamicCast())
    {
      v16 = v40;
      sub_100369938(a7, a8, v40);
      sub_1003540EC();
      v38 = *&a6[OBJC_IVAR___CSDConversationLinkManager_dataSource];
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10057CA80;
      *(v17 + 32) = v16;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v18 = v16;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v20 = swift_allocObject();
      v20[2] = v15;
      v20[3] = a4;
      v20[4] = a5;
      v20[5] = a6;
      v20[6] = a3;
      v20[7] = a7;
      v20[8] = a8;
      aBlock[4] = sub_10036A4E4;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_100629430;
      v21 = _Block_copy(aBlock);
      v22 = v15;
      sub_1000115CC(a4, a5);
      v23 = a6;
      v24 = a3;

      [v38 addOrUpdateConversationLinkDescriptors:isa completion:v21];
      _Block_release(v21);

      return;
    }
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000AF9C(v25, qword_1006BA5E0);
  v26 = a3;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315138;
    v31 = [v26 pseudonym];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_10002741C(v32, v34, aBlock);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "Asked to set link name for pseudonym %s but none was found.", v29, 0xCu);
    sub_100009B7C(v30);
  }

  if (a4)
  {
    v36 = a2;
    if (!a2)
    {
      v37 = objc_allocWithZone(NSError);
      v36 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
    }

    swift_errorRetain();
    a4(0, v36);
  }
}

void sub_10035B1C0(char a1, void *a2, void *a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000AF9C(v13, qword_1006BA5E0);
    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v42 = a8;
      v17 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = v41;
      *v17 = 136315138;
      v18 = [v14 pseudonym];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = a4;
      v22 = v21;

      v23 = sub_10002741C(v19, v22, &v43);
      a4 = v20;

      *(v17 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Updated link name for pseudonym %s", v17, 0xCu);
      sub_100009B7C(v41);

      a8 = v42;
    }

    sub_100369990(a8, a9, a7);
    if (a4)
    {
      a4(a7, 0);
    }

    sub_1003EFB64(0);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000AF9C(v25, qword_1006BA5E0);
    v26 = a3;
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v29 = 136315394;
      v32 = [v26 pseudonym];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_10002741C(v33, v35, &v43);

      *(v29 + 4) = v36;
      *(v29 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        v38 = v37;
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      *(v29 + 14) = v37;
      *v30 = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "Saving link name for pseudonym %s failed with error %@", v29, 0x16u);
      sub_100009A04(v30, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v31);

      if (!a4)
      {
        return;
      }
    }

    else
    {

      if (!a4)
      {
        return;
      }
    }

    v39 = a2;
    if (!a2)
    {
      v40 = objc_allocWithZone(NSError);
      v39 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
    }

    swift_errorRetain();
    a4(0, v39);
  }
}

void sub_10035B71C(void *a1, void *a2, uint64_t a3, void (**a4)(void, void, void, void))
{
  if ([a1 type] == 10 && objc_msgSend(a1, "hasLink"))
  {
    v7 = sub_1003DD48C(a1);
    if (v8 >> 60 != 15)
    {
      v9 = v7;
      v10 = v8;
      v11 = [objc_allocWithZone(CSDMessagingEncryptedConversationMessage) init];
      if (v11)
      {
        v12 = v11;
        v13 = [a2 publicKey];
        v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = objc_allocWithZone(type metadata accessor for LetMeInRequestorKeyAgreement(0));
        v39 = sub_1002BB864(v14, v16);
        v40 = sub_1002BC008(v9, v10);
        v42 = v41;
        v44 = v43;
        v46 = v45;

        isa = Data._bridgeToObjectiveC()().super.isa;
        [v12 setConversationMessageBytes:isa];

        v48 = Data._bridgeToObjectiveC()().super.isa;
        [v12 setPublicKey:v48];

        (a4)[2](a4, v12, v39, 0);
        sub_100290B6C(v9, v10);
        sub_100049B14(v44, v46);
        sub_100049B14(v40, v42);

LABEL_17:

        _Block_release(a4);
        return;
      }

      sub_100290B6C(v9, v10);
    }

    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000AF9C(v32, qword_1006BA5E0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to retrieve the data bytes from the let me in request, or failed to init a CSDMessagingEncryptedConversationMessage", v35, 2u);
    }

    v36 = objc_allocWithZone(NSError);
    v37 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 7, 0);
    v38 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, 0, v38);

    goto LABEL_17;
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000AF9C(v18, qword_1006BA5E0);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v22 = 136315394;
    [v19 type];
    type metadata accessor for CSDMessagingConversationMessageType(0);
    v23 = String.init<A>(reflecting:)();
    v25 = sub_10002741C(v23, v24, &v49);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    [v19 hasLink];
    v26 = String.init<A>(reflecting:)();
    v28 = sub_10002741C(v26, v27, &v49);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to encrypt let me in request because either the type was wrong (%s or missing the link (%s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v29 = objc_allocWithZone(NSError);
  v30 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 7, 0);
  v31 = _convertErrorToNSError(_:)();
  (a4)[2](a4, 0, 0, v31);

  _Block_release(a4);
}

void sub_10035C00C()
{
  sub_100005EF4();
  v72 = v0;
  v73 = v1;
  v3 = v2;
  v5 = v4;
  type metadata accessor for SymmetricKey();
  sub_100007FEC();
  v74 = v6;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = sub_10026D814(&qword_1006A6790, &qword_100581B48);
  v12 = sub_100007BF0(v11);
  __chkstk_darwin(v12);
  v14 = &v71 - v13;
  v15 = type metadata accessor for ConversationLinkKeyAgreement(0);
  sub_100008070();
  __chkstk_darwin(v16);
  sub_100007FDC();
  v19 = v18 - v17;
  if ([v5 type] != 16 || !objc_msgSend(v5, "hasLink") || !objc_msgSend(v5, "hasIsLetMeInApproved"))
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000075F0(v23, qword_1006BA5E0);
    v24 = v5;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_10;
    }

    v27 = sub_100005E84();
    v75[0] = swift_slowAlloc();
    *v27 = 136315650;
    v76 = [v24 type];
    type metadata accessor for CSDMessagingConversationMessageType(0);
    v28 = String.init<A>(reflecting:)();
    v30 = sub_10002741C(v28, v29, v75);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    LOBYTE(v76) = [v24 hasLink] ^ 1;
    v31 = String.init<A>(reflecting:)();
    v33 = sub_10002741C(v31, v32, v75);

    *(v27 + 14) = v33;
    *(v27 + 22) = 2080;
    LOBYTE(v76) = [v24 hasIsLetMeInApproved] ^ 1;
    v34 = String.init<A>(reflecting:)();
    v36 = sub_10002741C(v34, v35, v75);

    *(v27 + 24) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to encrypt let me in response because either the type was wrong (%s, missing the link %s, or approval was not specified (%s)", v27, 0x20u);
    swift_arrayDestroy();
    sub_100009ED0();

    goto LABEL_9;
  }

  v20 = v19;
  v21 = [v3 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = sub_10035E580();

  if (!v22)
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000075F0(v43, qword_1006BA5E0);
    v25 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (!sub_10000A648(v44))
    {
      goto LABEL_10;
    }

    v45 = sub_100006DC4();
    sub_100008944(v45);
    sub_100008A90(&_mh_execute_header, v46, v47, "Failed to retrieve link");
LABEL_9:
    sub_100009ED0();

LABEL_10:

    goto LABEL_11;
  }

  v71 = v22;
  sub_1003DF994(v14);
  if (sub_100015468(v14, 1, v15) == 1)
  {
    sub_100009A04(v14, &qword_1006A6790, &qword_100581B48);
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000075F0(v37, qword_1006BA5E0);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (sub_10000A648(v39))
    {
      v40 = sub_100006DC4();
      sub_100008944(v40);
      sub_100008A90(&_mh_execute_header, v41, v42, "Failed to initialize key agreement from link's private key, or private key is absent, aborting.");
      sub_100009ED0();
    }
  }

  else
  {
    sub_10036A424(v14, v20);
    sub_1003DD48C(v5);
    if (v48 >> 60 != 15)
    {
      sub_10000C130();
      v49 = [objc_allocWithZone(CSDMessagingEncryptedConversationMessage) init];
      if (v49)
      {
        v50 = v49;
        v75[0] = v72;
        v75[1] = v73;
        sub_100290AC4(v72, v73);
        SymmetricKey.init<A>(data:)();
        v51 = sub_100005334();
        v63 = sub_10039C6E0(v51, v52, v10);
        v65 = v64;
        isa = Data._bridgeToObjectiveC()().super.isa;
        [v50 setConversationMessageBytes:isa];
        v67 = sub_100005334();
        sub_100290B6C(v67, v68);

        sub_100049B14(v63, v65);
        v69 = sub_10000B8B0();
        v70(v69);
        sub_10036A364(v20);
        goto LABEL_11;
      }

      v53 = sub_100005334();
      sub_100290B6C(v53, v54);
    }

    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000075F0(v55, qword_1006BA5E0);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = sub_100006DC4();
      *v58 = 0;
      sub_10000C1F8();
      _os_log_impl(v59, v60, v61, v62, v58, 2u);
      sub_100009ED0();
    }

    sub_10036A364(v20);
  }

LABEL_11:
  sub_100005EDC();
}

void sub_10035C968()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  sub_100008BA8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10057D690;
  v11 = [v7 value];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  sub_1003F03A8();

  sub_1003D91DC(v9, v7, v5, v3, v1);
  sub_100005EDC();
}

void sub_10035CF84(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, unint64_t, id), uint64_t a8)
{
  v54 = a8;
  v55 = a7;
  v52[1] = a6;
  v53 = a3;
  v11 = type metadata accessor for SymmetricKey();
  v52[0] = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v52 - v15;
  v17 = sub_10026D814(&qword_1006A6790, &qword_100581B48);
  __chkstk_darwin(v17 - 8);
  v19 = v52 - v18;
  v20 = type metadata accessor for ConversationLinkKeyAgreement(0);
  __chkstk_darwin(v20);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000AF9C(v30, qword_1006BA5E0);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v35 = _swift_stdlib_bridgeErrorToNSError();
        v36 = v35;
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      *(v33 + 4) = v35;
      *v34 = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to retrieve link with error %@) triggering link recovery for LMI", v33, 0xCu);
      sub_100009A04(v34, &unk_1006A2630, &qword_10057CB40);
    }

    v37 = v55;
    sub_10035C968();
    v38 = objc_allocWithZone(NSError);
    v53 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
    v37(0, 0, 0xF000000000000000, v53);
    v39 = v53;
  }

  else
  {
    v23 = a1;
    sub_1003DF994(v19);
    if (sub_100015468(v19, 1, v20) == 1)
    {
      sub_100009A04(v19, &qword_1006A6790, &qword_100581B48);
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000AF9C(v24, qword_1006BA5E0);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to initialize key agreement from link's private key, or private key is absent, aborting.", v27, 2u);
      }

      v28 = objc_allocWithZone(NSError);
      v29 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 8, 0);
      v55(0, 0, 0xF000000000000000, v29);
    }

    else
    {
      sub_10036A424(v19, v22);
      sub_10039C97C(v14, a4);
      v41 = v40;
      (*(v52[0] + 32))(v16, v14, v11);
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000AF9C(v42, qword_1006BA5E0);
      v43 = v41;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        *(v46 + 4) = v43;
        *v47 = v43;
        v48 = v43;
        _os_log_impl(&_mh_execute_header, v44, v45, "decryptedLetMeInRequest: %@", v46, 0xCu);
        sub_100009A04(v47, &unk_1006A2630, &qword_10057CB40);
      }

      v49 = v43;
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v50 = v56;
      v51 = v57;
      v55(v43, v56, v57, 0);
      sub_100049B14(v50, v51);

      (*(v52[0] + 8))(v16, v11);
      sub_10036A364(v22);
    }
  }
}

void sub_10035D7F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 60 == 15)
  {
    isa = 0;
    if (a4)
    {
LABEL_3:
      v9 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1, isa);
}

id sub_10035D8A0(void *a1)
{
  if (![a1 hasConversationMessageBytes])
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000075F0(v8, qword_1006BA5E0);
    v9 = a1;
    v3 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (!sub_10000A648(v10))
    {

      return 0;
    }

    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = [v9 hasPublicKey];
    *(v11 + 8) = 1024;
    *(v11 + 10) = [v9 hasConversationMessageBytes];

    sub_100008A6C();
    _os_log_impl(v12, v13, v14, v15, v16, 0xEu);
    goto LABEL_11;
  }

  if (LetMeInRequestorKeyAgreement.isExhausted.getter())
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000075F0(v2, qword_1006BA5E0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!sub_10000A648(v4))
    {
      goto LABEL_14;
    }

    v5 = sub_100006DC4();
    sub_100008944(v5);
    sub_100008A90(&_mh_execute_header, v6, v7, "Failed to decrypt let me in response because the requestor's key agreement has already been used to decrypt a response.");
LABEL_11:
    sub_100009ED0();

LABEL_14:

    return 0;
  }

  result = sub_1003699E8(a1);
  if (v18 >> 60 != 15)
  {
    v19 = result;
    v20 = v18;
    v21 = sub_1002BC560(result, v18);
    sub_100290B6C(v19, v20);
    return v21;
  }

  __break(1u);
  return result;
}

void sub_10035DB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100581AB0;
  v9 = objc_opt_self();
  *(v8 + 32) = [v9 tu_predicateForConversationLinkDescriptorsWithActivated:1];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 tu_predicateForConversationLinkDescriptorsWithPseudonym:v10];

  *(v8 + 40) = v11;
  v12 = [v9 tu_predicateForConversationLinkDescriptorsWithPrivateKey:0];
  v13 = [objc_opt_self() notPredicateWithSubpredicate:v12];

  *(v8 + 48) = v13;
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  v14 = sub_10000C350();
  v15 = *(a4 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  v39 = 0;
  v16 = [v15 conversationLinkDescriptorsWithPredicate:v14 limit:0 offset:0 error:&v39];
  v17 = v39;
  if (v16)
  {
    v18 = v16;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v17;

    if (sub_10000B6F4(v19))
    {
      sub_10039C390(0, (v19 & 0xC000000000000001) == 0, v19);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v19 + 32);
      }

      v22 = v21;

      v38 = sub_100364914(v22, a1);
      (a5)[2](a5, v38, 0);
    }

    else
    {

      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000AF9C(v31, qword_1006BA5E0);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Cannot add invited member handles for pseudonym %%@ because no link matching this pseudonym was found", v34, 2u);
      }

      v35 = objc_allocWithZone(NSError);
      v36 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
      v37 = _convertErrorToNSError(_:)();
      (a5)[2](a5, 0, v37);
    }
  }

  else
  {
    v23 = v39;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000AF9C(v24, qword_1006BA5E0);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to add invited member handles with error %@)", v27, 0xCu);
      sub_100009A04(v28, &unk_1006A2630, &qword_10057CB40);
    }

    swift_errorRetain();
    v30 = _convertErrorToNSError(_:)();
    (a5)[2](a5, 0, v30);
  }

  _Block_release(a5);
}

void sub_10035E1D0(char a1)
{
  if (a1)
  {
    sub_1003EFEA4();
  }

  else
  {
    sub_1003EFC4C(0, 0);
  }
}

void sub_10035E2F8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  sub_1003F63E0(a1);
  v4 = String._bridgeToObjectiveC()();
  (a3)[2](a3, v4);

  _Block_release(a3);
}

void sub_10035E3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100035794();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  sub_100008BA8();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10057DEC0;
  v31 = objc_opt_self();
  sub_10000B8B0();
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 tu_predicateForConversationLinkDescriptorsWithPseudonym:v32];

  *(v30 + 32) = v33;
  *(v30 + 40) = [v31 tu_predicateForConversationLinkDescriptorsWithActivated:1];
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  sub_100007694();
  v34 = sub_10000C350();
  sub_100007C2C();
  v35 = swift_allocObject();
  *(v35 + 16) = v29;
  *(v35 + 24) = v27;
  a13 = sub_10036BE18;
  a14 = v35;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v36;
  a12 = &unk_100629390;
  v37 = _Block_copy(&a9);
  v38 = v34;
  sub_10000667C();

  sub_10000D494();
  [v39 v40];
  _Block_release(v37);

  sub_10036BED4();
}

id sub_10035E580()
{
  sub_10000E564();
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  sub_100008BA8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10057DEC0;
  v2 = objc_opt_self();
  sub_10000B8B0();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 tu_predicateForConversationLinkDescriptorsWithPseudonym:v3];

  *(v1 + 32) = v4;
  *(v1 + 40) = [v2 tu_predicateForConversationLinkDescriptorsWithActivated:1];
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  sub_100007694();
  v5 = sub_10000C350();
  sub_10000D494();
  v8 = [v6 v7];
  v9 = 0;
  if (v8)
  {
    v10 = v8;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = 0;

    if (sub_10000B6F4(v11))
    {
      sub_10039C390(0, (v11 & 0xC000000000000001) == 0, v11);
      if ((v11 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v11 + 32);
      }

      v9 = v13;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v14 = 0;
    sub_10000C58C();
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v9;
}

void sub_10035E798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100016EEC();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v28 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v30 = [v28 tu_predicateForConversationLinkDescriptorsWithGroupUUID:isa];

  sub_100007C2C();
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  *(v31 + 24) = v25;
  a13 = sub_10036A498;
  a14 = v31;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v32;
  a12 = &unk_100629340;
  v33 = _Block_copy(&a9);
  v34 = v30;
  sub_100051648();

  sub_100025C24();
  sub_10000C740();
  [v35 v36];
  _Block_release(v33);

  sub_10000B980();
}

void sub_10035E8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100016EEC();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v28 = objc_opt_self();
  sub_100006694();
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 tu_predicateForConversationLinkDescriptorsWithPseudonym:v29];

  sub_100007C2C();
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  *(v31 + 24) = v25;
  a13 = sub_10036BE18;
  a14 = v31;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v32;
  a12 = &unk_1006292F0;
  v33 = _Block_copy(&a9);
  v34 = v30;
  sub_100051648();

  sub_100025C24();
  sub_10000C740();
  [v35 v36];
  _Block_release(v33);

  sub_10000B980();
}

void sub_10035E9CC()
{
  sub_10004A0D0();
  if (v1)
  {
    v2 = v1;
    v1 = sub_10000B6F4(v1);
    if (v1)
    {
      sub_10039C390(0, (v2 & 0xC000000000000001) == 0, v2);
      if ((v2 & 0xC000000000000001) != 0)
      {
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v1 = *(v2 + 32);
      }
    }
  }

  v3 = v1;
  v0();
}

void sub_10035EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100035794();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v31 = v30;
  sub_10004A0D0();
  v32 = objc_opt_self();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 tu_predicateForConversationLinkDescriptorsWithPseudonym:v33];

  v35 = *(v25 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
  a13 = v31;
  a14 = v29;
  sub_10000A204();
  sub_100015220();
  a11 = v36;
  a12 = &unk_1006292A0;
  v37 = _Block_copy(&a9);

  [v35 removeConversationLinkDescriptorsWithPredicate:v34 deleteReason:v24 completion:v37];
  _Block_release(v37);

  sub_10036BED4();
}

void sub_10035EB60(unint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, char *a6, void (**a7)(void, void, void), double a8)
{
  v112 = a5;
  v113 = a1;
  v111 = a4;
  v115 = a3;
  v116 = type metadata accessor for UUID();
  v114 = *(v116 - 8);
  v12 = __chkstk_darwin(v116);
  v109 = v13;
  v110 = &isa - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &isa - v14;
  v15 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &isa - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ConversationLinkKeyAgreement(0);
  v107 = *(v19 - 8);
  v20 = *(v107 + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v108 = &isa - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &isa - v22;
  v24 = swift_allocObject();
  v117 = a6;
  v118 = v24;
  *(v24 + 16) = a7;
  v25 = *&a6[OBJC_IVAR___CSDConversationLinkManager_generateKeyAgreement];
  v26 = a7;
  _Block_copy(a7);

  v119 = v23;
  v25(v27);

  v28 = TUNormalizedHandleForTUHandle();
  if (!v28)
  {
    goto LABEL_10;
  }

  v29 = v28;
  sub_10005104C(v28);
  if (!v30)
  {

LABEL_10:
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000AF9C(v41, qword_1006BA5E0);
    v42 = a2;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v42;
      v47 = v42;
      _os_log_impl(&_mh_execute_header, v43, v44, "Cannot normalize value for originator handle %@", v45, 0xCu);
      sub_100009A04(v46, &unk_1006A2630, &qword_10057CB40);
    }

    v48 = objc_allocWithZone(NSError);
    v39 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 10, 0);
    v40 = _convertErrorToNSError(_:)();
    (a7)[2](a7, 0, v40);
    goto LABEL_15;
  }

  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v31 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  v33 = v32;
  (*(v16 + 8))(v18, v15);
  if (v33 >> 60 == 15)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000AF9C(v34, qword_1006BA5E0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unable to generate publicKey compact representation for private key, was compactRepresentable set to true when initializing the private key?", v37, 2u);
    }

    v38 = objc_allocWithZone(NSError);
    v39 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 0, 0);
    v40 = _convertErrorToNSError(_:)();
    (a7)[2](a7, 0, v40);

LABEL_15:
    goto LABEL_16;
  }

  v105 = v31;
  v104 = a7;
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_10000AF9C(v49, qword_1006BA5E0);
  v50 = v114;
  v51 = *(v114 + 16);
  v52 = v106;
  v53 = v116;
  v101 = v114 + 16;
  v100 = v51;
  v51(v106, v113, v116);
  v54 = v115;

  v55 = a2;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  v58 = os_log_type_enabled(v56, v57);
  v103 = v29;
  v102 = v33;
  if (v58)
  {
    v59 = v50;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    aBlock[0] = v99;
    *v60 = 136316162;
    sub_100369F50(&qword_1006A25E0, &type metadata accessor for UUID);
    isa = v56;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v52;
    v65 = v64;
    (*(v59 + 8))(v63, v53);
    v66 = sub_10002741C(v62, v65, aBlock);

    *(v60 + 4) = v66;
    *(v60 + 12) = 2112;
    *(v60 + 14) = v55;
    *v61 = v55;
    *(v60 + 22) = 2080;
    v67 = v55;
    v68 = sub_10029147C(v54);
    LOBYTE(v59) = v57;
    v70 = sub_10002741C(v68, v69, aBlock);

    *(v60 + 24) = v70;
    *(v60 + 32) = 1024;
    *(v60 + 34) = v111 & 1;
    *(v60 + 38) = 2080;
    v53 = v116;
    v120 = v112;
    type metadata accessor for TUConversationLinkLifetimeScope(0);
    v71 = String.init<A>(reflecting:)();
    v73 = sub_10002741C(v71, v72, aBlock);

    *(v60 + 40) = v73;
    v74 = isa;
    _os_log_impl(&_mh_execute_header, isa, v59, "Provisioning pseudonym to generate link for groupUUID: %s, originatorHandle: %@, invitedHandles: %s, isActivated: %{BOOL}d, linkLifetimeScope: %s", v60, 0x30u);
    sub_100009A04(v61, &unk_1006A2630, &qword_10057CB40);

    swift_arrayDestroy();
  }

  else
  {

    (*(v50 + 8))(v52, v53);
  }

  v99 = *&v117[OBJC_IVAR___CSDConversationLinkManager_service];
  v75 = v99;
  v106 = String._bridgeToObjectiveC()();
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_10057D690;
  v77 = [v75 name];
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  *(v76 + 32) = v78;
  *(v76 + 40) = v80;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v81 = v110;
  v100(v110, v113, v53);
  v82 = v108;
  sub_10036A3C0(v119, v108);
  v83 = v114;
  v84 = (*(v114 + 80) + 48) & ~*(v114 + 80);
  v113 = (v84 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v84 + v109 + 31) & 0xFFFFFFFFFFFFFFF8;
  v86 = (*(v107 + 80) + v85 + 8) & ~*(v107 + 80);
  v87 = swift_allocObject();
  v88 = v117;
  v89 = v118;
  *(v87 + 2) = sub_10036BE20;
  *(v87 + 3) = v89;
  v90 = v103;
  *(v87 + 4) = v88;
  *(v87 + 5) = v90;
  (*(v83 + 32))(&v87[v84], v81, v116);
  v91 = &v87[v113];
  v92 = v102;
  *v91 = v105;
  *(v91 + 1) = v92;
  v91[16] = v111 & 1;
  *&v87[v85] = v115;
  sub_10036A424(v82, &v87[v86]);
  *&v87[(v20 + v86 + 7) & 0xFFFFFFFFFFFFFFF8] = v112;
  aBlock[4] = sub_10036BE90;
  aBlock[5] = v87;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002A07DC;
  aBlock[3] = &unk_100629D68;
  v93 = _Block_copy(aBlock);

  v94 = v117;
  v40 = v90;
  v95 = v105;
  sub_1002EAE60(v105, v92);

  v96 = v106;
  v97 = isa;
  [v99 provisionPseudonymForHandle:v40 featureID:v106 scopeID:0 expiryDuration:isa allowedServices:v93 completionHandler:a8];
  _Block_release(v93);

  sub_100290B6C(v95, v92);
  v26 = v104;
LABEL_16:

  sub_10036A364(v119);

  _Block_release(v26);
}

uint64_t sub_10035F6CC(unint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, char *a6, double a7)
{
  v104 = a5;
  v105 = a1;
  v103 = a4;
  v107 = a3;
  v106 = type metadata accessor for UUID();
  v108 = *(v106 - 8);
  v10 = *(v108 + 64);
  v11 = __chkstk_darwin(v106);
  v102 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v91 - v12;
  v14 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ConversationLinkKeyAgreement(0);
  v100 = *(v18 - 8);
  v19 = *(v100 + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v101 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v91 - v21;
  v109 = a6;
  v23 = *&a6[OBJC_IVAR___CSDConversationLinkManager_generateKeyAgreement];

  v110 = v22;
  v23(v24);

  v25 = TUNormalizedHandleForTUHandle();
  if (v25)
  {
    v26 = v25;
    sub_10005104C(v25);
    if (v27)
    {

      P256.KeyAgreement.PrivateKey.publicKey.getter();
      v28 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
      v30 = v29;
      (*(v15 + 8))(v17, v14);
      if (v30 >> 60 == 15)
      {
        if (qword_1006A0B20 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_10000AF9C(v31, qword_1006BA5E0);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Unable to generate publicKey compact representation for private key, was compactRepresentable set to true when initializing the private key?", v34, 2u);
        }

        v35 = objc_allocWithZone(NSError);
        v36 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 0, 0);
        sub_100356130(0, v36);
      }

      else
      {
        v98 = v30;
        if (qword_1006A0B20 != -1)
        {
          swift_once();
        }

        v95 = v26;
        v45 = type metadata accessor for Logger();
        sub_10000AF9C(v45, qword_1006BA5E0);
        v46 = *(v108 + 16);
        v47 = v106;
        v97 = v108 + 16;
        v96 = v46;
        v46(v13, v105, v106);
        v48 = v107;

        v49 = a2;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();

        v52 = os_log_type_enabled(v50, v51);
        v99 = v28;
        if (v52)
        {
          v53 = swift_slowAlloc();
          LODWORD(v93) = v51;
          v54 = v53;
          v55 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          aBlock[0] = v94;
          *v54 = 136316162;
          sub_100369F50(&qword_1006A25E0, &type metadata accessor for UUID);
          v56 = dispatch thunk of CustomStringConvertible.description.getter();
          v57 = v47;
          v59 = v58;
          (*(v108 + 8))(v13, v57);
          v60 = sub_10002741C(v56, v59, aBlock);

          *(v54 + 4) = v60;
          *(v54 + 12) = 2112;
          *(v54 + 14) = v49;
          *v55 = v49;
          *(v54 + 22) = 2080;
          v61 = v49;
          v62 = sub_10029147C(v48);
          v64 = sub_10002741C(v62, v63, aBlock);

          *(v54 + 24) = v64;
          *(v54 + 32) = 1024;
          *(v54 + 34) = v103 & 1;
          *(v54 + 38) = 2080;
          v111 = v104;
          type metadata accessor for TUConversationLinkLifetimeScope(0);
          v65 = String.init<A>(reflecting:)();
          v67 = sub_10002741C(v65, v66, aBlock);

          *(v54 + 40) = v67;
          _os_log_impl(&_mh_execute_header, v50, v93, "Provisioning pseudonym to generate link for groupUUID: %s, originatorHandle: %@, invitedHandles: %s, isActivated: %{BOOL}d, linkLifetimeScope: %s", v54, 0x30u);
          sub_100009A04(v55, &unk_1006A2630, &qword_10057CB40);

          swift_arrayDestroy();
        }

        else
        {

          (*(v108 + 8))(v13, v47);
        }

        v93 = *&v109[OBJC_IVAR___CSDConversationLinkManager_service];
        v68 = v93;
        v94 = String._bridgeToObjectiveC()();
        sub_10026D814(&qword_1006A4760, &unk_10057EA60);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_10057D690;
        v70 = [v68 name];
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        *(v69 + 32) = v71;
        *(v69 + 40) = v73;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v74 = v102;
        v75 = v106;
        v96(v102, v105, v106);
        v76 = v101;
        sub_10036A3C0(v110, v101);
        v77 = v108;
        v78 = (*(v108 + 80) + 48) & ~*(v108 + 80);
        v105 = (v78 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
        v79 = (v78 + v10 + 31) & 0xFFFFFFFFFFFFFFF8;
        v80 = (*(v100 + 80) + v79 + 8) & ~*(v100 + 80);
        v81 = swift_allocObject();
        *(v81 + 2) = sub_100356130;
        *(v81 + 3) = 0;
        v82 = v95;
        *(v81 + 4) = v109;
        *(v81 + 5) = v82;
        (*(v77 + 32))(&v81[v78], v74, v75);
        v83 = &v81[v105];
        v84 = v99;
        v85 = v98;
        *v83 = v99;
        *(v83 + 1) = v85;
        v83[16] = v103 & 1;
        *&v81[v79] = v107;
        sub_10036A424(v76, &v81[v80]);
        *&v81[(v19 + v80 + 7) & 0xFFFFFFFFFFFFFFF8] = v104;
        aBlock[4] = sub_10036BE90;
        aBlock[5] = v81;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002A07DC;
        aBlock[3] = &unk_100629840;
        v86 = _Block_copy(aBlock);

        v87 = v109;
        v36 = v82;
        sub_1002EAE60(v84, v85);

        v88 = v94;
        v89 = isa;
        [v93 provisionPseudonymForHandle:v36 featureID:v94 scopeID:0 expiryDuration:isa allowedServices:v86 completionHandler:a7];
        _Block_release(v86);

        sub_100290B6C(v84, v85);
      }

      goto LABEL_21;
    }
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000AF9C(v37, qword_1006BA5E0);
  v38 = a2;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v38;
    *v42 = v38;
    v43 = v38;
    _os_log_impl(&_mh_execute_header, v39, v40, "Cannot normalize value for originator handle %@", v41, 0xCu);
    sub_100009A04(v42, &unk_1006A2630, &qword_10057CB40);
  }

  v44 = objc_allocWithZone(NSError);
  v36 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 10, 0);
  sub_100356130(0, v36);
LABEL_21:

  return sub_10036A364(v110);
}

uint64_t sub_100360184(uint64_t a1, _DWORD *a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, double a8)
{
  v136 = a6;
  v137 = a7;
  v130 = a5;
  v131 = a1;
  v129 = a4;
  v133 = a3;
  v132 = type metadata accessor for UUID();
  sub_100007FEC();
  v134 = v12;
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v15);
  v128 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v117 - v17;
  v19 = type metadata accessor for P256.KeyAgreement.PublicKey();
  sub_100007FEC();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100007FDC();
  v25 = v24 - v23;
  v26 = type metadata accessor for ConversationLinkKeyAgreement(0);
  v27 = sub_100005EB4(v26);
  v126 = v28;
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v27);
  v127 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  sub_10000BB28();
  v135 = v8;
  v32 = *&v8[OBJC_IVAR___CSDConversationLinkManager_generateKeyAgreement];

  v138 = v9;
  v32(v33);

  v34 = TUNormalizedHandleForTUHandle();
  if (v34)
  {
    v35 = v34;
    sub_10005104C(v34);
    if (v36)
    {

      P256.KeyAgreement.PrivateKey.publicKey.getter();
      v37 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
      v39 = v38;
      (*(v21 + 8))(v25, v19);
      if (v39 >> 60 == 15)
      {
        if (qword_1006A0B20 != -1)
        {
          sub_10000854C();
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_1000075F0(v40, qword_1006BA5E0);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        if (sub_10000A648(v42))
        {
          *sub_100006DC4() = 0;
          sub_100008A6C();
          _os_log_impl(v43, v44, v45, v46, v47, 2u);
          sub_100009ED0();
        }

        v48 = objc_allocWithZone(NSError);
        v49 = sub_1000162D8();
        v51 = sub_100323698(v49, v50, 0, 0);
        v52 = sub_10036BEA8();
        v136(v52);
      }

      else
      {
        v124 = v39;
        v125 = v37;
        if (qword_1006A0B20 != -1)
        {
          sub_10000854C();
          swift_once();
        }

        v70 = type metadata accessor for Logger();
        sub_1000075F0(v70, qword_1006BA5E0);
        v71 = *(v134 + 16);
        v72 = v132;
        v122 = v134 + 16;
        v121 = v71;
        v71(v18, v131, v132);
        v73 = v133;

        v74 = a2;
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();

        v77 = os_log_type_enabled(v75, v76);
        v123 = v35;
        if (v77)
        {
          swift_slowAlloc();
          LODWORD(v119) = v76;
          sub_100015FDC();
          v78 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          aBlock[0] = v120;
          *v76 = 136316162;
          sub_100017230();
          sub_100369F50(v79, v80);
          isa = v75;
          dispatch thunk of CustomStringConvertible.description.getter();
          v81 = v72;
          sub_10000A224();
          (*(v134 + 8))(v18, v72);
          v82 = sub_100006B30();
          v85 = sub_10002741C(v82, v83, v84);

          *(v76 + 4) = v85;
          *(v76 + 12) = 2112;
          *(v76 + 14) = v74;
          *v78 = v74;
          *(v76 + 22) = 2080;
          v86 = v74;
          v87 = sub_10029147C(v73);
          sub_10002741C(v87, v88, aBlock);
          sub_10000667C();

          *(v76 + 24) = v18;
          *(v76 + 32) = 1024;
          *(v76 + 34) = v129 & 1;
          *(v76 + 38) = 2080;
          v139 = v130;
          type metadata accessor for TUConversationLinkLifetimeScope(0);
          v89 = String.init<A>(reflecting:)();
          sub_10002741C(v89, v90, aBlock);
          sub_10000667C();

          *(v76 + 40) = v18;
          v91 = isa;
          _os_log_impl(&_mh_execute_header, isa, v119, "Provisioning pseudonym to generate link for groupUUID: %s, originatorHandle: %@, invitedHandles: %s, isActivated: %{BOOL}d, linkLifetimeScope: %s", v76, 0x30u);
          sub_100009A04(v78, &unk_1006A2630, &qword_10057CB40);
          sub_100009ED0();

          swift_arrayDestroy();
          sub_100009ED0();

          sub_10000EA64();
        }

        else
        {

          (*(v134 + 8))(v18, v72);
          v81 = v72;
        }

        v119 = *&v135[OBJC_IVAR___CSDConversationLinkManager_service];
        v92 = v119;
        v120 = String._bridgeToObjectiveC()();
        sub_10026D814(&qword_1006A4760, &unk_10057EA60);
        sub_100008BA8();
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_10057D690;
        v94 = [v92 name];
        v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v97 = v96;

        *(v93 + 32) = v95;
        *(v93 + 40) = v97;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v98 = v128;
        v121(v128, v131, v81);
        v99 = v127;
        sub_10036A3C0(v138, v127);
        v100 = v134;
        v101 = (*(v134 + 80) + 48) & ~*(v134 + 80);
        v102 = (v101 + v14 + 31) & 0xFFFFFFFFFFFFFFF8;
        v103 = (*(v126 + 80) + v102 + 8) & ~*(v126 + 80);
        v104 = swift_allocObject();
        v105 = v137;
        *(v104 + 2) = v136;
        *(v104 + 3) = v105;
        v106 = v100;
        v107 = v123;
        *(v104 + 4) = v135;
        *(v104 + 5) = v107;
        (*(v106 + 32))(&v104[v101], v98, v132);
        v108 = &v104[(v101 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
        v109 = v124;
        *v108 = v125;
        *(v108 + 1) = v109;
        v108[16] = v129 & 1;
        *&v104[v102] = v133;
        sub_10036A424(v99, &v104[v103]);
        *&v104[(v30 + v103 + 7) & 0xFFFFFFFFFFFFFFF8] = v130;
        aBlock[4] = sub_10036A488;
        aBlock[5] = v104;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002A07DC;
        aBlock[3] = &unk_100629228;
        v110 = _Block_copy(aBlock);

        v111 = v135;
        v51 = v107;
        v112 = v125;
        v113 = v124;
        sub_1002EAE60(v125, v124);

        v114 = v120;
        v115 = isa;
        [v119 provisionPseudonymForHandle:v51 featureID:v120 scopeID:0 expiryDuration:isa allowedServices:v110 completionHandler:a8];
        _Block_release(v110);

        sub_100290B6C(v112, v113);
      }

      goto LABEL_21;
    }
  }

  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_1000075F0(v53, qword_1006BA5E0);
  v54 = a2;
  v55 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  v56 = sub_10003FB78();
  if (os_log_type_enabled(v56, v57))
  {
    sub_100007BFC();
    swift_slowAlloc();
    sub_100015FDC();
    v58 = swift_slowAlloc();
    *a2 = 138412290;
    *(a2 + 1) = v54;
    *v58 = v54;
    v59 = v54;
    sub_10000D368();
    _os_log_impl(v60, v61, v62, v63, v64, v65);
    sub_100009A04(v58, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    sub_10000EA64();
  }

  v66 = objc_allocWithZone(NSError);
  v67 = sub_1000162D8();
  v51 = sub_100323698(v67, v68, 10, 0);
  v69 = sub_10036BEA8();
  v136(v69);
LABEL_21:

  return sub_10036A364(v138);
}

void sub_100360B7C(void *a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, char *a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v86 = a7;
  v87 = a8;
  v85 = a6;
  v90 = a5;
  v91 = a1;
  v92 = a3;
  v93 = a4;
  v88 = a12;
  v89 = a13;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000AF9C(v22, qword_1006BA5E0);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to provision pseudonym with error from IDS: %@)", v25, 0xCu);
      sub_100009A04(v26, &unk_1006A2630, &qword_10057CB40);
    }

    swift_errorRetain();
    v92(0, a2);
  }

  else
  {
    v80 = a9;
    v81 = a10;
    v82 = v17;
    v83 = v15;
    v84 = a11;
    v28 = v91;
    if (v91)
    {
      sub_100006AF0(0, &unk_1006A6780, TUConversationLinkOriginator_ptr);
      v29 = v85;
      v30 = v28;
      v31 = sub_100353E3C(v29);
      (*(v19 + 16))(v21, v86, v18);
      v32 = v31;
      v33 = [v30 URI];
      v34 = [v33 prefixedURI];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = objc_allocWithZone(TUMutableConversationLinkDescriptor);
      v39 = v87;
      v40 = v80;
      sub_100290AC4(v87, v80);
      v41 = v21;
      v42 = v30;
      v43 = sub_1003F7684(v41, v32, v35, v37, v39, v40);
      [v43 setActivated:v81 & 1];
      v44 = v82;
      Date.init()();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v46 = *(v83 + 8);
      v46(v44, v14);
      [v43 setCreationDate:isa];

      v47 = [v30 properties];
      v48 = [v47 expirationDate];

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = Date._bridgeToObjectiveC()().super.isa;
      v46(v44, v14);
      [v43 setExpirationDate:v49];

      if (v84)
      {
        sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
        sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
        v50.super.isa = Set._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v50.super.isa = 0;
      }

      v57 = v89;
      v58 = v90;
      [v43 setInvitedHandles:v50.super.isa];

      v59 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
      sub_100369A44(v59, v60, v43);
      [v43 setLinkLifetimeScope:v57];
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_10000AF9C(v61, qword_1006BA5E0);
      v62 = v42;
      v63 = v43;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v66 = 138412546;
        *(v66 + 4) = v62;
        *(v66 + 12) = 2112;
        *(v66 + 14) = v63;
        *v67 = v91;
        v67[1] = v63;
        v68 = v62;
        v69 = v63;
        _os_log_impl(&_mh_execute_header, v64, v65, "Successfully provisioned pseudonym %@ and link descriptor %@", v66, 0x16u);
        sub_10026D814(&unk_1006A2630, &qword_10057CB40);
        swift_arrayDestroy();
      }

      v70 = *&v58[OBJC_IVAR___CSDConversationLinkManager_dataSource];
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_10057CA80;
      *(v71 + 32) = v63;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v72 = v63;
      v73 = Array._bridgeToObjectiveC()().super.isa;

      v74 = swift_allocObject();
      v75 = v93;
      v74[2] = v92;
      v74[3] = v75;
      v74[4] = v72;
      v74[5] = v58;
      aBlock[4] = sub_10036A48C;
      aBlock[5] = v74;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_100629278;
      v76 = _Block_copy(aBlock);
      v77 = v72;

      v78 = v58;

      [v70 addConversationLinkDescriptors:v73 completion:v76];
      _Block_release(v76);
    }

    else
    {
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000AF9C(v51, qword_1006BA5E0);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Failed to provision pseudonym with error from IDS, pseudonym was nil", v54, 2u);
      }

      v55 = objc_allocWithZone(NSError);
      v91 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 0, 0);
      v92(0, v91);
      v56 = v91;
    }
  }
}

uint64_t sub_1003614A0(char a1, uint64_t a2, uint64_t (*a3)(id, uint64_t), uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    return (a3)(0, a2, a3, a4, a5);
  }

  v7 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:a5];
  a3(v7, a2);

  return sub_1003EFB64(1);
}

uint64_t sub_10036153C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100361560, 0, 0);
}

uint64_t sub_100361560()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = type metadata accessor for Date();
  *v5 = v0;
  v5[1] = sub_10036166C;
  v7 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD00000000000001ALL, 0x800000010056E2B0, sub_10036A1D0, v4, v6);
}

uint64_t sub_10036166C()
{
  v2 = *v1;
  sub_100008060();
  *v3 = v2;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003617A0, 0, 0);
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1003617A0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10036198C(void *a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a2;
  v45 = a5;
  v42 = a3;
  v43 = a4;
  v46 = sub_10026D814(&qword_1006A6778, &unk_100581B38);
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v46);
  v11 = v41 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v41 - v17;
  if (a1)
  {
    v43 = v8;
    v19 = a1;
    sub_100362588(v19);
    if (v20)
    {
      static Date.now.getter();
      v41[1] = a6;
      [*(a6 + OBJC_IVAR___CSDConversationLinkManager_serverBag) linkRenewalExtensionTime];
      Date.addingTimeInterval(_:)();
      v21 = *(v13 + 8);
      v42 = v13 + 8;
      v44 = v21;
      v21(v16, v12);
      v22 = v43;
      (*(v43 + 16))(v11, v45, v46);
      (*(v13 + 16))(v16, v18, v12);
      v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v24 = (v9 + *(v13 + 80) + v23) & ~*(v13 + 80);
      v25 = swift_allocObject();
      (*(v22 + 32))(v25 + v23, v11, v46);
      (*(v13 + 32))(v25 + v24, v16, v12);
      sub_100362958(v19, v18, sub_10036A280, v25);

      v44(v18, v12);
    }

    else
    {
      if (v44)
      {
        v37 = v44;
      }

      else
      {
        v38 = objc_allocWithZone(NSError);
        v37 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 15, 0);
      }

      v47 = v37;
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    v27 = v42;
    v26 = v43;
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000AF9C(v28, qword_1006BA5E0);
    v29 = v44;
    swift_errorRetain();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v47 = v34;
      *v32 = 136315394;
      *(v32 + 4) = sub_10002741C(v27, v26, &v47);
      *(v32 + 12) = 2112;
      if (v29)
      {
        swift_errorRetain();
        v35 = _swift_stdlib_bridgeErrorToNSError();
        v36 = v35;
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      *(v32 + 14) = v35;
      *v33 = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Asked to renew link for pseudonym %s but none was found %@", v32, 0x16u);
      sub_100009A04(v33, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v34);
    }

    v39 = v29;
    if (!v29)
    {
      v40 = objc_allocWithZone(NSError);
      v39 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 3, 0);
    }

    v47 = v39;
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100361EBC(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA5E0);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = a2;
      v25 = v15;
      *v14 = 136315138;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v16 = String.init<A>(reflecting:)();
      v18 = sub_10002741C(v16, v17, &v25);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Renewing pseudonym failed with error %s", v14, 0xCu);
      sub_100009B7C(v15);
    }

    v25 = a2;
    sub_10026D814(&qword_1006A6778, &unk_100581B38);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000AF9C(v20, qword_1006BA5E0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v21, v22, "Renewing pseudonym succeeded %{BOOL}d", v23, 8u);
    }

    (*(v8 + 16))(v10, a4, v7);
    sub_10026D814(&qword_1006A6778, &unk_100581B38);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100362288(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for Date();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v3[7] = v9;
  a3;
  v11 = swift_task_alloc();
  v3[8] = v11;
  *v11 = v3;
  v11[1] = sub_1003623D0;

  return sub_10036153C(v7, v8, v10);
}

uint64_t sub_1003623D0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_100008060();
  *v6 = v5;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_100010264();

    isa = 0;
    v8 = v3;
  }

  else
  {
    v10 = v2[4];
    v9 = v2[5];
    v11 = v2[3];
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v9, v11);
    v3 = 0;
    v8 = isa;
  }

  v12 = v2[6];
  (v12)[2](v12, isa, v3);

  _Block_release(v12);

  v13 = *(v5 + 8);

  return v13();
}

void sub_100362588(void *a1)
{
  v2 = v1;
  type metadata accessor for Date();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  v5 = [a1 expirationDate];
  if (v5)
  {
    v6 = v5;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceNow.getter();
    if (v7 < 0.0)
    {
      if (qword_1006A0B20 != -1)
      {
        sub_10000854C();
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000075F0(v8, qword_1006BA5E0);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (!sub_10000D654(v10))
      {
        goto LABEL_18;
      }

      v11 = sub_100006DC4();
      sub_10000D6E8(v11);
      sub_1000079AC();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
LABEL_17:
      sub_100009ED0();

LABEL_18:

      v43 = sub_100006884();
      v44(v43);
      return;
    }

    v30 = sub_1003F7AA0(a1);
    if (v31 >> 60 == 15)
    {
      if (qword_1006A0B20 != -1)
      {
        sub_10000854C();
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_1000075F0(v32, qword_1006BA5E0);
      v33 = a1;
      v9 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v9, v34))
      {
        goto LABEL_18;
      }

      sub_100007BFC();
      v35 = swift_slowAlloc();
      sub_100015DC0();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v33;
      *v36 = v33;
      v37 = v33;
      sub_100006BC4();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      sub_100009A04(v36, &unk_1006A2630, &qword_10057CB40);
      sub_100009ED0();

      goto LABEL_17;
    }

    sub_100290B6C(v30, v31);
    Date.timeIntervalSinceNow.getter();
    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v45 > -1.0)
    {
      if (v45 < 1.84467441e19)
      {
        [*(v2 + OBJC_IVAR___CSDConversationLinkManager_serverBag) linkRemainingTimeBeforeAutoRenewal];
        v46 = sub_100006884();
        v47(v46);
        return;
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000075F0(v17, qword_1006BA5E0);
  v18 = a1;
  v19 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v20 = sub_10003FB78();
  if (os_log_type_enabled(v20, v21))
  {
    sub_100007BFC();
    v22 = swift_slowAlloc();
    sub_100015DC0();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v18;
    v24 = v18;
    sub_100008A6C();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    sub_100009A04(v23, &unk_1006A2630, &qword_10057CB40);
    sub_10000EA64();

    sub_100009ED0();
  }
}

void sub_100362958(uint64_t a1, uint64_t a2, void (*a3)(void, id), unint64_t *a4)
{
  v155 = a2;
  v8 = type metadata accessor for DispatchTime();
  sub_100007FEC();
  v154 = v9;
  __chkstk_darwin(v10);
  sub_100007BAC();
  v152 = v11 - v12;
  sub_100006838();
  __chkstk_darwin(v13);
  v153 = &v137 - v14;
  v150 = type metadata accessor for DispatchWorkItemFlags();
  sub_100008070();
  __chkstk_darwin(v15);
  sub_100007FDC();
  v151 = v17 - v16;
  type metadata accessor for Date();
  sub_100007FEC();
  v148 = v19;
  v149 = v18;
  __chkstk_darwin(v18);
  v146 = v20;
  v147 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B20 != -1)
  {
LABEL_54:
    sub_10000854C();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000075F0(v21, qword_1006BA5E0);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    sub_100007BFC();
    v25 = swift_slowAlloc();
    sub_100015DC0();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "Asking to renew pseudonym for %@", v25, 0xCu);
    sub_100009A04(v26, &unk_1006A2630, &qword_10057CB40);
    sub_10000EA64();

    sub_100009ED0();
  }

  [v22 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
  if (swift_dynamicCast())
  {
    v144 = v4;
    v142 = v8;
    v145 = v164;
    v143 = v22;
    v28 = [v22 originator];
    v29 = [v28 identifier];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = *&v156[OBJC_IVAR___CSDConversationLinkManager_service];
    v8 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
    v34 = [v33 localDeviceUniqueID];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      if (v30 == v36 && v32 == v38)
      {

LABEL_35:
        v83 = v156;
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();

        v86 = sub_10003A5B4();
        if (os_log_type_enabled(v86, v87))
        {
          v141 = a4;
          sub_100007BFC();
          v88 = swift_slowAlloc();
          v89 = sub_100005E84();
          aBlock = v89;
          *v88 = 136315138;
          v90 = [v33 localDeviceUniqueID];
          if (v90)
          {
            v91 = v90;
            v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v94 = v93;
          }

          else
          {
            v92 = 0;
            v94 = 0;
          }

          sub_10001E478(v92, v94);
          sub_10000C130();

          v124 = sub_100005334();
          v127 = sub_10002741C(v124, v125, v126);

          *(v88 + 4) = v127;
          _os_log_impl(&_mh_execute_header, v84, v85, "The local device (%s) generated this link, sending renew request now.", v88, 0xCu);
          sub_100009B7C(v89);
          sub_100009ED0();

          sub_100009ED0();

          a4 = v141;
        }

        else
        {
        }

        v128 = v143;
        v129 = [v143 pseudonym];
        if (!v129)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v129 = String._bridgeToObjectiveC()();
        }

        isa = Date._bridgeToObjectiveC()().super.isa;
        sub_100015D0C();
        v131 = swift_allocObject();
        *(v131 + 2) = a3;
        *(v131 + 3) = a4;
        v132 = v145;
        *(v131 + 4) = v145;
        *(v131 + 5) = v83;
        *(v131 + 6) = v128;
        v162 = sub_100369F94;
        v163 = v131;
        sub_100006028();
        v159 = 1107296256;
        v160 = sub_100363A5C;
        v161 = &unk_100629070;
        v133 = _Block_copy(&aBlock);
        v134 = v128;
        v135 = v83;
        sub_1000115CC(a3, a4);
        v136 = v132;

        [v33 renewPseudonymString:v129 expirationDate:isa completionHandler:v133];
        _Block_release(v133);

        return;
      }

      sub_100008DB8();
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v40)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    v55 = [v33 localDeviceUniqueID];
    if (v55)
    {
      v56 = v55;
      v141 = a4;
      v140 = a3;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      sub_100008BA8();
      a4 = swift_allocObject();
      *(a4 + 1) = xmmword_10057D690;
      v138 = v57;
      a4[4] = v57;
      a4[5] = v59;
      v139 = v59;

      v60 = [v33 devices];
      sub_100006AF0(0, &qword_1006A4470, IDSDevice_ptr);
      a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      a3 = sub_10000B6F4(a1);
      v61 = 0;
      v157 = a1 & 0xC000000000000001;
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      while (a3 != v61)
      {
        if (v157)
        {
          v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v61 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v62 = *(a1 + 8 * v61 + 32);
        }

        v63 = v62;
        if (__OFADD__(v61, 1))
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v64 = sub_1003698E0(v62, &selRef_uniqueID);
        if (!v65)
        {
          __break(1u);

          __break(1u);
          return;
        }

        v66 = v64;
        v67 = v65;
        v8 = a4[2];
        if (v8 >= a4[3] >> 1)
        {
          sub_100017840();
          a4 = v69;
        }

        a4[2] = v8 + 1;
        v68 = &a4[2 * v8];
        v68[4] = v66;
        v68[5] = v67;
        ++v61;
      }

      aBlock = a4;

      sub_1003686C0(&aBlock);

      v70 = sub_1003C970C(v138, v139, aBlock);
      v72 = v71;

      v73 = v140;
      if ((v72 & 1) == 0)
      {
        v104 = v148;
        v103 = v149;
        v105 = *(v148 + 16);
        v157 = v70;
        v106 = v147;
        v105(v147, v155, v149);
        v107 = (*(v104 + 80) + 56) & ~*(v104 + 80);
        v108 = swift_allocObject();
        v109 = v156;
        v110 = v145;
        *(v108 + 2) = v156;
        *(v108 + 3) = v110;
        v111 = v143;
        *(v108 + 4) = v143;
        *(v108 + 5) = v73;
        v112 = v141;
        *(v108 + 6) = v141;
        (*(v104 + 32))(&v108[v107], v106, v103);
        v162 = sub_100369EE8;
        v163 = v108;
        sub_100006028();
        v159 = 1107296256;
        v160 = sub_100004CEC;
        v161 = &unk_100629020;
        _Block_copy(&aBlock);
        v164 = _swiftEmptyArrayStorage;
        v113 = v111;
        v114 = v109;
        v115 = sub_10000C58C();
        sub_1000115CC(v115, v112);
        sub_100369F50(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
        v116 = v110;
        sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
        sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        type metadata accessor for DispatchWorkItem();
        swift_allocObject();
        v117 = DispatchWorkItem.init(flags:block:)();

        *&v111[OBJC_IVAR___CSDConversationLinkManager_renewPseudonymTask] = v117;

        sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
        v118 = static OS_dispatch_queue.main.getter();
        v119 = v152;
        static DispatchTime.now()();
        v120 = v153;
        + infix(_:_:)();
        v121 = *(v154 + 8);
        v122 = v119;
        v123 = v142;
        v121(v122, v142);
        OS_dispatch_queue.asyncAfter(deadline:execute:)();

        v121(v120, v123);
        return;
      }

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      if (sub_10000A648(v75))
      {
        v76 = sub_100006DC4();
        sub_100008944(v76);
        sub_100008A90(&_mh_execute_header, v77, v78, "Could not find index of our own uniqueID, aborting...");
        sub_100009ED0();
      }

      if (v73)
      {
        v79 = objc_allocWithZone(NSError);
        v80 = sub_1000162D8();
        v82 = sub_100323698(v80, v81, 9, 0);
        v73(0, v82);
        goto LABEL_43;
      }
    }

    else
    {
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      if (sub_10000A648(v96))
      {
        v97 = sub_100006DC4();
        sub_100008944(v97);
        sub_100008A90(&_mh_execute_header, v98, v99, "No IDS unique ID found, cannot schedule renew.");
        sub_100009ED0();
      }

      if (a3)
      {
        v100 = objc_allocWithZone(NSError);
        v101 = sub_1000162D8();
        v82 = sub_100323698(v101, v102, 9, 0);
        a3(0, v82);
LABEL_43:
      }
    }
  }

  else
  {
    v41 = v22;
    v42 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    v43 = sub_10003FB78();
    if (os_log_type_enabled(v43, v44))
    {
      sub_100007BFC();
      v45 = swift_slowAlloc();
      sub_100015DC0();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v41;
      *v46 = v41;
      v47 = v41;
      sub_100008A6C();
      _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
      sub_100009A04(v46, &unk_1006A2630, &qword_10057CB40);
      sub_10000EA64();

      sub_100009ED0();
    }

    if (a3)
    {
      sub_100369E94();
      v53 = swift_allocError();
      *v54 = 3;
      a3(0, v53);
    }
  }
}

uint64_t sub_100363654(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), uint64_t a5, objc_class *a6, char *a7, void *a8)
{
  v43 = a8;
  v44 = a7;
  v42 = a6;
  v46 = a5;
  v47 = a4;
  LODWORD(v45) = a1;
  v10 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v40 - v18;
  sub_100285FC4(a2, v12, &qword_1006A3C70, &unk_10057EA80);
  if (sub_100015468(v12, 1, v13) == 1)
  {
    result = sub_100009A04(v12, &qword_1006A3C70, &unk_10057EA80);
  }

  else
  {
    v21 = *(v14 + 32);
    v21(v19, v12, v13);
    if (!a3)
    {
      v22.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v41 = v21;
      isa = v22.super.isa;
      v24 = v42;
      [(objc_class *)v42 setExpirationDate:v22.super.isa];

      sub_1003540EC();
      [(objc_class *)v24 setDeletionDate:0];
      v45 = *&v44[OBJC_IVAR___CSDConversationLinkManager_dataSource];
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10057CA80;
      *(v25 + 32) = v24;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v26 = v24;
      v42 = Array._bridgeToObjectiveC()().super.isa;

      (*(v14 + 16))(v17, v19, v13);
      v27 = (*(v14 + 80) + 24) & ~*(v14 + 80);
      v28 = (v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
      v30 = swift_allocObject();
      v31 = v43;
      *(v30 + 16) = v43;
      v41(v30 + v27, v17, v13);
      v32 = (v30 + v28);
      v33 = v46;
      v34 = v47;
      *v32 = v47;
      v32[1] = v33;
      v35 = v44;
      *(v30 + v29) = v44;
      aBlock[4] = sub_100369FA4;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_1006290C0;
      v36 = _Block_copy(aBlock);
      v37 = v31;
      sub_1000115CC(v34, v33);
      v38 = v35;

      v39 = v42;
      [v45 addOrUpdateConversationLinkDescriptors:v42 completion:v36];
      _Block_release(v36);

      return (*(v14 + 8))(v19, v13);
    }

    result = (*(v14 + 8))(v19, v13);
  }

  if (v47)
  {
    return v47(v45 & 1, a3);
  }

  return result;
}

uint64_t sub_100363A5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = *(a1 + 32);
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for Date();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = 1;
  }

  sub_10000AF74(v10, v13, 1, v12);

  v14 = a4;
  v11(a2, v10, a4);

  return sub_100009A04(v10, &qword_1006A3C70, &unk_10057EA80);
}

void sub_100363D2C(void *a1, uint64_t a2, void *a3, void (*a4)(void, uint64_t), uint64_t a5, char *a6)
{
  if (a1 && ([a1 mutableCopy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v28;
    v11 = *&a6[OBJC_IVAR___CSDConversationLinkManager_service];
    v12 = [v28 pseudonym];
    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    isa = Date._bridgeToObjectiveC()().super.isa;
    v14 = swift_allocObject();
    v14[2] = a4;
    v14[3] = a5;
    v14[4] = v10;
    v14[5] = a6;
    aBlock[4] = sub_10036A028;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100363A5C;
    aBlock[3] = &unk_100629138;
    v15 = _Block_copy(aBlock);
    sub_1000115CC(a4, a5);
    v16 = v10;
    v17 = a6;

    [v11 renewPseudonymString:v12 expirationDate:isa completionHandler:v15];
    _Block_release(v15);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000AF9C(v18, qword_1006BA5E0);
    v19 = a3;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create mutable descriptor for descriptor %@", v22, 0xCu);
      sub_100009A04(v23, &unk_1006A2630, &qword_10057CB40);
    }

    if (a4)
    {
      sub_100369E94();
      v25 = swift_allocError();
      *v26 = 3;
      a4(0, v25);
    }
  }
}

uint64_t sub_100364060(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), uint64_t a5, objc_class *a6, char *a7)
{
  v44 = a6;
  v45 = a7;
  v47 = a4;
  LODWORD(v46) = a1;
  v10 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v43 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  sub_100285FC4(a2, v12, &qword_1006A3C70, &unk_10057EA80);
  if (sub_100015468(v12, 1, v13) == 1)
  {
    result = sub_100009A04(v12, &qword_1006A3C70, &unk_10057EA80);
  }

  else
  {
    v42 = a5;
    v20 = *(v14 + 32);
    v20(v18, v12, v13);
    if (!a3)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      v22 = v44;
      [(objc_class *)v44 setExpirationDate:isa];

      sub_1003540EC();
      v46 = *&v45[OBJC_IVAR___CSDConversationLinkManager_dataSource];
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10057CA80;
      *(v23 + 32) = v22;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v24 = v22;
      v44 = Array._bridgeToObjectiveC()().super.isa;

      v25 = v14;
      v41 = v14;
      v26 = *(v14 + 16);
      v27 = v43;
      v26(v43, v18, v13);
      v28 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      v29 = (v15 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
      v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      *(v31 + 16) = v24;
      v20((v31 + v28), v27, v13);
      v32 = (v31 + v29);
      v33 = v47;
      v34 = v42;
      *v32 = v47;
      v32[1] = v34;
      v35 = v45;
      *(v31 + v30) = v45;
      aBlock[4] = sub_10036A11C;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_100629188;
      v36 = _Block_copy(aBlock);
      v37 = v24;
      sub_1000115CC(v33, v34);
      v38 = v35;

      v39 = v44;
      [v46 addOrUpdateConversationLinkDescriptors:v44 completion:v36];
      _Block_release(v36);

      return (*(v41 + 8))(v18, v13);
    }

    result = (*(v14 + 8))(v18, v13);
  }

  if (v47)
  {
    return v47(v46 & 1, a3);
  }

  return result;
}

void sub_10036446C()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v53 = v8;
  v10 = v9;
  v11 = type metadata accessor for Date();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v52 = v10;
  if ((v10 & 1) == 0)
  {
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000075F0(v34, qword_1006BA5E0);
    v35 = v7;
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = sub_10003A5B4();
    if (os_log_type_enabled(v38, v39))
    {
      v51 = v3;
      v40 = sub_100007C08();
      sub_100015DC0();
      v41 = swift_slowAlloc();
      v42 = sub_100005E84();
      v54 = v42;
      *v40 = 136315394;
      v43 = [v35 pseudonym];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_10002741C(v44, v46, &v54);

      *(v40 + 4) = v47;
      *(v40 + 12) = 2112;
      if (v53)
      {
        swift_errorRetain();
        v48 = _swift_stdlib_bridgeErrorToNSError();
        v49 = v48;
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      v3 = v51;
      *(v40 + 14) = v48;
      *v41 = v49;
      _os_log_impl(&_mh_execute_header, v36, v37, v1, v40, 0x16u);
      sub_100009A04(v41, &unk_1006A2630, &qword_10057CB40);
      sub_100009ED0();

      sub_100009B7C(v42);
      sub_100009ED0();

      sub_100018250();

      if (!v51)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (!v3)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    v3(v52 & 1, v53);
    goto LABEL_19;
  }

  v50 = v3;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000AF9C(v18, qword_1006BA5E0);
  (*(v13 + 16))(v17, v5, v11);
  v19 = v7;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_100007C08();
    v54 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = [v19 pseudonym];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_10002741C(v24, v26, &v54);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    sub_10002F654();
    sub_100369F50(v28, v29);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v13 + 8))(v17, v11);
    v33 = sub_10002741C(v30, v32, &v54);

    *(v22 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v20, v21, "Updated expiration date for pseudonym %s to %s", v22, 0x16u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {

    (*(v13 + 8))(v17, v11);
  }

  v3 = v50;
  if (v50)
  {
    goto LABEL_18;
  }

LABEL_19:
  sub_1003EFB64(0);
  sub_100005EDC();
}

id sub_100364914(_DWORD *a1, uint64_t a2)
{
  v4 = a1;
  v5 = sub_1003F7AAC(a1);
  v6 = &_swiftEmptySetSingleton;
  if (v5)
  {
    v6 = v5;
  }

  v58 = v6;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v2 = &qword_1006A2640;
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    Set.Iterator.init(_cocoa:)();
    a2 = v59[4];
    v7 = v59[5];
    v9 = v59[6];
    v8 = v59[7];
    v10 = v59[8];
  }

  else
  {
    v11 = -1 << *(a2 + 32);
    v7 = (a2 + 56);
    v9 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = (v13 & *(a2 + 56));

    v8 = 0;
  }

  v14 = &selRef_setWindowed_;
  while (1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v15 = v8;
      v16 = v10;
      v17 = v8;
      if (!v10)
      {
        while (1)
        {
          v17 = (v15 + 1);
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v17 >= ((v9 + 64) >> 6))
          {
            goto LABEL_47;
          }

          v16 = v7[v17];
          ++v15;
          if (v16)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_58:
        sub_10000854C();
        swift_once();
        goto LABEL_52;
      }

LABEL_15:
      v56 = (v16 - 1) & v16;
      v2 = *(*(a2 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v2)
      {
        break;
      }

      goto LABEL_19;
    }

    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      break;
    }

    v57 = v18;
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    swift_dynamicCast();
    v2 = v59[0];
    v17 = v8;
    v56 = v10;
    v14 = &selRef_setWindowed_;
    if (!v59[0])
    {
      break;
    }

LABEL_19:
    if ([v2 v14[470]] == 1)
    {

      v8 = v17;
      v10 = v56;
    }

    else
    {
      v19 = [v2 v14[470]];
      if (v19 == 1)
      {
        v20 = [v2 value];
        if (!v20)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          String._bridgeToObjectiveC()();
          sub_10000667C();
        }

        v21 = [objc_opt_self() normalizedGenericHandleForValue:v20];
        goto LABEL_34;
      }

      if (v19 == 2)
      {
        v22 = [v2 value];
        if (!v22)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = String._bridgeToObjectiveC()();
        }

        sub_100050CF0(v2);
        if (v23)
        {
          v20 = String._bridgeToObjectiveC()();
        }

        else
        {
          v20 = 0;
        }

        v24 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v22 isoCountryCode:v20];

LABEL_43:
        if (v24)
        {
          sub_100396370(v59, v24);
        }

        else
        {
        }

        v8 = v17;
        v10 = v56;
        v14 = &selRef_setWindowed_;
      }

      else
      {
        if (v19 == 3)
        {
          v20 = [v2 value];
          if (!v20)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            String._bridgeToObjectiveC()();
            sub_10000667C();
          }

          v21 = [objc_opt_self() normalizedEmailAddressHandleForValue:v20];
LABEL_34:
          v24 = v21;
          goto LABEL_43;
        }

        v54 = v4;
        if (qword_1006A0B20 != -1)
        {
          sub_10000854C();
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_10000AF9C(v25, qword_1006BA5E0);
        v26 = v2;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v27, v28))
        {
          sub_100007BFC();
          log = v27;
          v29 = swift_slowAlloc();
          sub_100015DC0();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v26;
          *v30 = v2;
          v2 = v26;
          _os_log_impl(&_mh_execute_header, log, v28, "Unknown handle type used for invited handle %@", v29, 0xCu);
          sub_100009A04(v30, &unk_1006A2630, &qword_10057CB40);
          sub_100009ED0();

          sub_100009ED0();
        }

        else
        {
        }

        v8 = v17;
        v10 = v56;
        v4 = v54;
        v14 = &selRef_setWindowed_;
      }
    }
  }

LABEL_47:
  sub_10031E890(a2);
  [v4 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
  if (swift_dynamicCast())
  {
    sub_10036962C(v58, v57);
    sub_1003540EC();
    v31 = *(v55 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
    sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
    sub_100007934();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10057CA80;
    *(v32 + 32) = v57;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v33 = v57;
    sub_10000C58C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v59[0] = 0;
    v35 = [v31 addOrUpdateConversationLinkDescriptors:isa error:v59];

    if (v35)
    {
      v36 = v59[0];
      sub_1003EFB64(0);
      v37 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v2];
    }

    else
    {
      v37 = v59[0];

      _convertNSErrorToError(_:)();
      swift_willThrow();
    }

    return v37;
  }

  if (qword_1006A0B20 != -1)
  {
    goto LABEL_58;
  }

LABEL_52:
  v38 = type metadata accessor for Logger();
  sub_10000AF9C(v38, qword_1006BA5E0);
  v39 = v4;
  v40 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  v41 = sub_10003FB78();
  if (os_log_type_enabled(v41, v42))
  {
    sub_100007BFC();
    swift_slowAlloc();
    sub_100015FDC();
    v43 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 1) = v39;
    *v43 = v39;
    v44 = v39;
    sub_10000D368();
    _os_log_impl(v45, v46, v47, v48, v49, v50);
    sub_100009A04(v43, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    sub_10000EA64();
  }

  sub_100369E94();
  swift_allocError();
  *v51 = 3;
  swift_willThrow();
  return v37;
}

void sub_1003650F4()
{
  sub_100005EF4();
  v89 = v1;
  v91 = v2;
  v3 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v4 = sub_100007BF0(v3);
  __chkstk_darwin(v4);
  sub_100007BAC();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v86 - v9;
  v11 = type metadata accessor for Date();
  sub_100007FEC();
  v90 = v12;
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  sub_10000BB28();
  if (_TUIsInternalInstall())
  {
    v17 = [objc_opt_self() tu_defaults];
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 BOOLForKey:v18 withDefault:0];

    if (v19)
    {
      v87 = v0;
      v88 = v11;
      Date.init()();
      v20 = objc_allocWithZone(TUConversationLink);
      v21 = [v20 initWithDescriptor:v91];
      *&v92 = 0xD00000000000001ALL;
      *(&v92 + 1) = 0x800000010056E0D0;
      v22 = [v21 pseudonym];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26._countAndFlagsBits = v23;
      v26._object = v25;
      String.append(_:)(v26);

      v27 = String._bridgeToObjectiveC()();

      v28 = String._bridgeToObjectiveC()();
      *&v92 = 0;
      *(&v92 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(90);
      v29._countAndFlagsBits = 0xD000000000000058;
      v29._object = 0x800000010056E110;
      String.append(_:)(v29);
      v86 = v21;
      v30 = [v21 URL];
      if (v30)
      {
        v31 = v30;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      v33 = type metadata accessor for URL();
      sub_10000AF74(v7, v32, 1, v33);
      sub_1002A01B0(v7, v10);
      v34 = sub_100015468(v10, 1, v33);
      v35 = v87;
      if (v34 == 1)
      {
        sub_100009A04(v10, &unk_1006A52C0, &unk_10057D930);
        v36 = 0;
        v37 = 0;
      }

      else
      {
        v36 = URL.absoluteString.getter();
        v37 = v38;
        (*(*(v33 - 8) + 8))(v10, v33);
      }

      v39 = objc_opt_self();
      v40 = sub_10001E478(v36, v37);
      v42 = v41;

      v43._countAndFlagsBits = v40;
      v43._object = v42;
      String.append(_:)(v43);

      v44 = sub_10000B8B0();
      v51 = sub_100369794(v44, v45, v46, v47, v48, v49, v50, 0xE700000000000000, 0, v39);

      if (v51)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v97 = 0u;
        v98 = 0u;
      }

      v52 = v90;
      v92 = v97;
      v93 = v98;
      if (*(&v98 + 1))
      {
        v53 = sub_100006AF0(0, &unk_1006A6758, IMUserNotification_ptr);
        if (sub_10036BEB4(v53, v54, v55, v53))
        {
          v56 = v96;
          goto LABEL_17;
        }
      }

      else
      {
        sub_100009A04(&v92, &unk_1006A2D10, &unk_10057D940);
      }

      v56 = 0;
LABEL_17:
      [v56 setUsesNotificationCenter:0];
      if (v56)
      {
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10036987C(v57, v58, v56);
        v59 = objc_opt_self();
        v60 = v56;
        if ([v59 sharedInstance])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v97 = 0u;
          v98 = 0u;
        }

        v92 = v97;
        v93 = v98;
        if (*(&v98 + 1))
        {
          v61 = sub_100006AF0(0, &qword_1006A6750, IMUserNotificationCenter_ptr);
          if (sub_10036BEB4(v61, v62, v63, v61))
          {
            v90 = v96;
            v64 = v88;
            (*(v52 + 2))(&v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v88);
            v65 = (v52[80] + 32) & ~v52[80];
            v66 = swift_allocObject();
            v67 = v86;
            v68 = v91;
            *(v66 + 16) = v86;
            *(v66 + 24) = v68;
            (*(v52 + 4))(v66 + v65, &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v64);
            *(v66 + v65 + v14) = v89 & 1;
            v94 = sub_100369E08;
            v95 = v66;
            *&v92 = _NSConcreteStackBlock;
            *(&v92 + 1) = 1107296256;
            *&v93 = sub_10028BAD0;
            *(&v93 + 1) = &unk_100628FD0;
            v69 = _Block_copy(&v92);
            v70 = v60;
            v71 = v67;
            v35 = v87;
            v72 = v71;
            v73 = v68;

            v74 = v90;
            [v90 addUserNotification:v70 listener:0 completionHandler:v69];
            _Block_release(v69);

            v75 = v70;
            v76 = v70;
LABEL_31:

            (*(v52 + 1))(v35, v88);
            goto LABEL_32;
          }
        }

        else
        {

          sub_100009A04(&v92, &unk_1006A2D10, &unk_10057D940);
        }
      }

      if (qword_1006A0B20 != -1)
      {
        sub_10000854C();
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      sub_1000075F0(v77, qword_1006BA5E0);
      v76 = Logger.logObject.getter();
      v78 = static os_log_type_t.fault.getter();
      v79 = sub_10000D654(v78);
      v75 = v86;
      if (v79)
      {
        v80 = sub_100006DC4();
        sub_10000D6E8(v80);
        sub_1000079AC();
        _os_log_impl(v81, v82, v83, v84, v85, 2u);
        sub_10000EA64();

        v70 = v56;
      }

      else
      {
        v70 = v76;
        v76 = v56;
      }

      goto LABEL_31;
    }
  }

LABEL_32:
  sub_100005EDC();
}

void sub_100365860(void *a1, void *a2, void *a3, NSObject *a4, int a5)
{
  v75 = a4;
  v9 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v70 - v14;
  __chkstk_darwin(v13);
  v17 = &v70 - v16;
  v18 = type metadata accessor for URLComponents();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && ![a1 response])
  {
    v73 = a5;
    v70 = v19;
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v71 = v18;
    v26 = type metadata accessor for Logger();
    sub_10000AF9C(v26, qword_1006BA5E0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "User chose File a Radar from Link Deletion Alert", v29, 2u);
    }

    v30 = [objc_allocWithZone(NSDateFormatter) init];
    [v30 setDateStyle:4];
    v74 = v30;
    [v30 setTimeStyle:4];
    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.host.setter();
    sub_10026D814(&unk_1006A47B0, &unk_1005805E0);
    type metadata accessor for URLQueryItem();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100581010;
    v72 = v31;
    URLQueryItem.init(name:value:)();
    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(109);
    v32._countAndFlagsBits = 0xD000000000000041;
    v32._object = 0x800000010056E1C0;
    String.append(_:)(v32);
    v33 = [a2 URL];
    if (v33)
    {
      v34 = v33;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v36 = type metadata accessor for URL();
    sub_10000AF74(v15, v35, 1, v36);
    sub_1002A01B0(v15, v17);
    if (sub_100015468(v17, 1, v36) == 1)
    {
      sub_100009A04(v17, &unk_1006A52C0, &unk_10057D930);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v37 = URL.absoluteString.getter();
      v38 = v39;
      (*(*(v36 - 8) + 8))(v17, v36);
    }

    v40 = sub_10001E478(v37, v38);
    v42 = v41;

    v43._countAndFlagsBits = v40;
    v43._object = v42;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 0x706972637365440ALL;
    v44._object = 0xED0000203A726F74;
    String.append(_:)(v44);
    v45 = [a3 description];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49._countAndFlagsBits = v46;
    v49._object = v48;
    String.append(_:)(v49);

    v50._countAndFlagsBits = 0x203A656D69540ALL;
    v50._object = 0xE700000000000000;
    String.append(_:)(v50);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v52 = v74;
    v53 = [v74 stringFromDate:isa];

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57._countAndFlagsBits = v54;
    v57._object = v56;
    String.append(_:)(v57);

    v58._object = 0x800000010056E210;
    v58._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v58);
    if (v73)
    {
      v59 = 1702195828;
    }

    else
    {
      v59 = 0x65736C6166;
    }

    if (v73)
    {
      v60 = 0xE400000000000000;
    }

    else
    {
      v60 = 0xE500000000000000;
    }

    v61 = v60;
    String.append(_:)(*&v59);

    URLQueryItem.init(name:value:)();

    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    URLComponents.queryItems.setter();
    v62 = [objc_opt_self() defaultWorkspace];
    if (v62)
    {
      v63 = v62;
      URLComponents.url.getter();
      v64 = sub_100015468(v12, 1, v36);
      v67 = v70;
      v66 = v71;
      if (v64 == 1)
      {
        v68 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v65);
        v68 = v69;
        (*(*(v36 - 8) + 8))(v12, v36);
      }

      [v63 openURL:v68 configuration:0 completionHandler:{0, v70}];

      (*(v67 + 8))(v21, v66);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000AF9C(v22, qword_1006BA5E0);
    v75 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v75, v23, "User chose Dismiss from Link Deletion Alert", v24, 2u);
    }

    v25 = v75;
  }
}

void sub_10036618C()
{
  sub_100005EF4();
  v113 = v2;
  v122 = type metadata accessor for Date();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007BAC();
  v115 = (v6 - v7);
  sub_100006838();
  __chkstk_darwin(v8);
  v108 = &v107 - v9;
  sub_100006838();
  v11 = __chkstk_darwin(v10);
  v13 = &v107 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v107 - v15;
  __chkstk_darwin(v14);
  v120 = &v107 - v17;
  sub_100006838();
  __chkstk_darwin(v18);
  v116 = &v107 - v19;
  sub_100006838();
  __chkstk_darwin(v20);
  sub_10001C9F4();
  __chkstk_darwin(v21);
  v23 = &v107 - v22;
  Date.init(timeIntervalSinceNow:)();
  if (qword_1006A0B20 != -1)
  {
LABEL_105:
    sub_10000854C();
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000075F0(v24, qword_1006BA5E0);
  v25 = *(v4 + 16);
  v25(v1, v23, v122);
  v119 = v0;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v109 = v23;
  if (v28)
  {
    sub_100007BFC();
    v29 = swift_slowAlloc();
    *&v117 = v29;
    v123 = sub_100005E84();
    v124[0] = v123;
    *v29 = 136315138;
    sub_10002F654();
    sub_100369F50(v30, v31);
    LODWORD(v114) = v27;
    v32 = v16;
    v33 = v122;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v37 = *(v4 + 8);
    v4 += 8;
    v38 = v33;
    v16 = v32;
    v121 = v37;
    v37(v1, v38);
    v39 = sub_10002741C(v34, v36, v124);
    v23 = v109;

    v40 = v117;
    *(v117 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v26, v114, "Links deletion date must be before %s", v40, 0xCu);
    sub_100009B7C(v123);
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {

    v41 = *(v4 + 8);
    v4 += 8;
    v121 = v41;
    v41(v1, v122);
  }

  v42 = v122;
  v25(v116, v23, v122);
  v25(v120, v23, v42);
  v0 = v113;
  v43 = sub_10000B6F4(v113);
  v44 = v0 & 0xC000000000000001;
  v45 = v0 & 0xFFFFFFFFFFFFFF8;
  v123 = (v0 + 32);

  v1 = 0;
  *&v46 = 138412290;
  v117 = v46;
  v118 = v16;
  v114 = v43;
  while (v43 != v1)
  {
    if (v44)
    {
      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *(v45 + 16))
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v47 = *&v113[8 * v1 + 32];
    }

    v0 = v47;
    v48 = [v47 deletionDate];
    if (v48)
    {
      v49 = v48;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v49) = static Date.< infix(_:_:)();
      v121(v16, v122);

      if (v49)
      {
        v43 = v1;
        break;
      }
    }

    else
    {
      v50 = v0;
      v0 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (sub_100033378())
      {
        sub_100007BFC();
        v51 = swift_slowAlloc();
        sub_100015DC0();
        v52 = swift_slowAlloc();
        *v51 = v117;
        *(v51 + 4) = v50;
        *v52 = v50;
        v53 = v50;
        _os_log_impl(&_mh_execute_header, v0, v23, "getDeletedPseudonyms: no deleted descriptors for %@", v51, 0xCu);
        sub_100009A04(v52, &unk_1006A2630, &qword_10057CB40);
        v16 = v118;
        sub_100009ED0();

        v43 = v114;
        sub_100009ED0();
      }
    }

    v54 = __OFADD__(v1++, 1);
    if (v54)
    {
      goto LABEL_97;
    }
  }

  v55 = sub_10000B6F4(v113);
  v23 = v55;
  if (v55 < v43)
  {
    v112 = -1;
    v110 = v43;
LABEL_24:
    v0 = v113;
    v111 = sub_10000B6F4(v113);
    v56 = sub_10000B6F4(v0);
    v57 = 0;
    v118 = v4;
    while (2)
    {
      v54 = __OFADD__(v57, v112);
      v58 = v57 + v112;
      if (v54)
      {
        goto LABEL_98;
      }

      if (v23 == v111)
      {
LABEL_99:
        __break(1u);
      }

      else
      {
        v114 = v58;
        while (1)
        {
          v0 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            v23 = v1;
            v0 = v114;
            goto LABEL_65;
          }

          if (v0 == v56)
          {
            break;
          }

          if (v44)
          {
            v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v0 & 0x8000000000000000) != 0)
            {
              goto LABEL_62;
            }

            if (v0 >= *(v45 + 16))
            {
              goto LABEL_63;
            }

            v59 = v123[v0];
          }

          v60 = v59;
          v61 = [v59 deletionDate];
          if (v61)
          {
            v62 = v61;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v1 = static Date.< infix(_:_:)();
            v121(v13, v122);

            if (v1)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v63 = v60;
            v64 = Logger.logObject.getter();
            v1 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v64, v1))
            {
              sub_100007BFC();
              v16 = swift_slowAlloc();
              sub_100015DC0();
              v65 = swift_slowAlloc();
              *v16 = v117;
              *(v16 + 4) = v63;
              *v65 = v63;
              v66 = v63;
              _os_log_impl(&_mh_execute_header, v64, v1, "getDeletedPseudonyms: no deleted descriptors for %@", v16, 0xCu);
              sub_100009A04(v65, &unk_1006A2630, &qword_10057CB40);
              v4 = v118;
              sub_100009ED0();

              sub_100018250();
            }
          }

          ++v23;
        }

        v0 = v56;
LABEL_43:
        v23 = v0;
        v57 = v114;
        if (v0 != v110)
        {
          continue;
        }

        if (!v114)
        {
          goto LABEL_92;
        }

        v124[0] = _swiftEmptyArrayStorage;
        sub_10039A2E0(0, v114 & ~(v114 >> 63), 0);
        v0 = v114;
        v112 = v124[0];
        v23 = sub_10000B6F4(v113);
        v1 = 0;
        v13 = v108;
        while (v23 != v1)
        {
          if (v44)
          {
            v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v1 >= *(v45 + 16))
            {
              goto LABEL_103;
            }

            v67 = *&v113[8 * v1 + 32];
          }

          v68 = v67;
          v69 = [v67 deletionDate];
          if (v69)
          {
            v70 = v69;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v4 = static Date.< infix(_:_:)();
            v121(v13, v122);

            if (v4)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v71 = v68;
            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v72, v73))
            {
              sub_100007BFC();
              swift_slowAlloc();
              sub_100015FDC();
              v16 = swift_slowAlloc();
              *v4 = v117;
              *(v4 + 4) = v71;
              *v16 = v71;
              v74 = v71;
              sub_10000D368();
              _os_log_impl(v75, v76, v77, v78, v79, v80);
              sub_100009A04(v16, &unk_1006A2630, &qword_10057CB40);
              sub_100018250();

              sub_10000EA64();
            }
          }

          v54 = __OFADD__(v1++, 1);
          v0 = v114;
          if (v54)
          {
            goto LABEL_104;
          }
        }

LABEL_65:
        v13 = v113;
        if ((v0 & 0x8000000000000000) != 0)
        {
          __break(1u);
          return;
        }

        v110 = sub_10000B6F4(v113);
        v81 = sub_10000B6F4(v13);
        v82 = 0;
        while (2)
        {
          if (v82 < v0)
          {
            v0 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_101;
            }

            sub_10039C390(v23, v44 == 0, v13);
            v111 = v0;
            if (v44)
            {
              v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v83 = v123[v23];
            }

            v0 = v83;
            v84 = [v0 pseudonym];
            v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v86 = v85;

            v87 = v112;
            v124[0] = v112;
            v4 = *(v112 + 16);
            v88 = *(v112 + 24);
            v13 = (v4 + 1);
            if (v4 >= v88 >> 1)
            {
              v0 = v124;
              sub_10039A2E0(v88 > 1, v4 + 1, 1);
              v87 = v124[0];
            }

            *(v87 + 16) = v13;
            v89 = v87 + 16 * v4;
            *(v89 + 32) = v1;
            *(v89 + 40) = v86;
            if (v23 != v110)
            {
              v112 = v87;
              v13 = v113;
              while (1)
              {
                v0 = v23 + 1;
                if (__OFADD__(v23, 1))
                {
                  __break(1u);
LABEL_94:
                  __break(1u);
LABEL_95:
                  __break(1u);
                  goto LABEL_96;
                }

                if (v0 == v81)
                {
                  break;
                }

                if (v44)
                {
                  v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if ((v0 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_94;
                  }

                  if (v0 >= *(v45 + 16))
                  {
                    goto LABEL_95;
                  }

                  v90 = v123[v0];
                }

                v1 = v90;
                v91 = [v90 deletionDate];
                if (v91)
                {
                  v92 = v91;
                  v16 = v13;
                  v93 = v115;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v4 = static Date.< infix(_:_:)();
                  v94 = v93;
                  v13 = v16;
                  v121(v94, v122);

                  if (v4)
                  {
                    goto LABEL_91;
                  }
                }

                else
                {
                  v1 = v1;
                  v95 = Logger.logObject.getter();
                  static os_log_type_t.default.getter();

                  v96 = sub_10003EB80();
                  if (os_log_type_enabled(v96, v97))
                  {
                    sub_100007BFC();
                    swift_slowAlloc();
                    sub_100015FDC();
                    v16 = swift_slowAlloc();
                    *v4 = v117;
                    *(v4 + 4) = v1;
                    *v16 = v1;
                    v98 = v1;
                    sub_10000D368();
                    _os_log_impl(v99, v100, v101, v102, v103, v104);
                    sub_100009A04(v16, &unk_1006A2630, &qword_10057CB40);
                    sub_100018250();

                    sub_10000EA64();
                  }
                }

                ++v23;
              }

              v0 = v81;
LABEL_91:
              v23 = v0;
              v0 = v114;
              v82 = v111;
              v4 = v118;
              if (v111 != v114)
              {
                continue;
              }

              goto LABEL_92;
            }

            goto LABEL_102;
          }

          break;
        }
      }

      break;
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v43 != v55)
  {
    v112 = 1;
    v110 = v55;
    v23 = v43;
    goto LABEL_24;
  }

LABEL_92:

  v105 = v121;
  v106 = v122;
  v121(v120, v122);
  v105(v116, v106);
  v105(v109, v106);
  sub_100005EDC();
}

BOOL sub_100366D2C(void *a1)
{
  v2 = type metadata accessor for Date();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v8 = v7 - v6;
  v9 = [objc_allocWithZone(NSDate) init];
  v10 = [a1 properties];
  v11 = [v10 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v8, v2);
  v13 = [v9 compare:isa];

  return v13 == 1;
}

double sub_100366E70(uint64_t a1, uint64_t a2)
{
  if (_TUIsInternalInstall())
  {
    v3 = objc_opt_self();
    v4 = [v3 tu_defaults];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100009A04(v12, &unk_1006A2D10, &unk_10057D940);
      v7 = [v3 tu_defaults];
      v8 = String._bridgeToObjectiveC()();
      [v7 doubleForKey:v8];
      v10 = v9;

      if (v10 > 0.0)
      {
        return v10;
      }
    }

    else
    {
      memset(v12, 0, sizeof(v12));
      sub_100009A04(v12, &unk_1006A2D10, &unk_10057D940);
    }
  }

  return [*(v2 + OBJC_IVAR___CSDConversationLinkManager_serverBag) linkPseudonymExpiry];
}

unint64_t sub_100367024()
{
  result = [*(v0 + OBJC_IVAR___CSDConversationLinkManager_serverBag) inactiveLinkCacheLimit];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

id sub_100367058()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationLinkManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100367160(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
  sub_100008DB8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v39 = 0;
  v6 = sub_100025C24();
  v8 = [v6 v7];

  if (v8)
  {
    v9 = qword_1006A0B20;
    v10 = v39;
    if (v9 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000075F0(v11, qword_1006BA5E0);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      sub_100007BFC();
      v14 = swift_slowAlloc();
      v15 = sub_100005E84();
      v39 = v15;
      *v14 = 136315138;
      sub_100008DB8();
      v16 = Array.description.getter();
      v18 = sub_10002741C(v16, v17, &v39);

      *(v14 + 4) = v18;
      sub_100006BC4();
      _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
      sub_100009B7C(v15);
      sub_100009ED0();

      sub_100009ED0();
    }

    sub_1003D9ECC(a2);
    v24 = *&v3[OBJC_IVAR___CSDConversationLinkManager_delegate];
    if (v24)
    {
      swift_unknownObjectRetain();
      sub_100008DB8();
      v25 = Array._bridgeToObjectiveC()().super.isa;
      [v24 linkManager:v3 updatedLinkDescriptorsFromSync:v25];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v26 = v39;
    sub_100010264();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000075F0(v27, qword_1006BA5E0);

    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    v30 = sub_10003EB80();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = sub_100007C08();
      sub_100015DC0();
      v33 = swift_slowAlloc();
      v34 = sub_100005E84();
      v39 = v34;
      *v32 = 136315394;
      sub_100008DB8();
      v35 = Array.description.getter();
      v37 = sub_10002741C(v35, v36, &v39);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v38;
      *v33 = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "ConversationLinkSync: Failed to persist links %s {error: %@)}", v32, 0x16u);
      sub_100009A04(v33, &unk_1006A2630, &qword_10057CB40);
      sub_100018250();

      sub_100009B7C(v34);
      sub_100009ED0();

      sub_100009ED0();
    }

    else
    {
    }
  }
}

void sub_100367900(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (NSNotFound.getter() == a1)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA5E0);

    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_10002741C(a3, a4, &v23);
      *(v13 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 14) = v16;
      *v14 = v17;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Removal of invalid conversation link with pseudonym %s failed with error %@", v13, 0x16u);
      sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v15);
    }

    else
    {
    }
  }

  else
  {
    v18 = *(a5 + OBJC_IVAR___CSDConversationLinkManager_delegate);
    if (v18)
    {
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10057CA80;
      *(v19 + 32) = a6;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      swift_unknownObjectRetain();
      v20 = a6;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v18 linkManager:a5 removedLinkDescriptorsFromIDSSignal:isa];

      swift_unknownObjectRelease();
    }
  }
}

void sub_100367DF4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, char *a6)
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = a1;
    [v16 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
    if (swift_dynamicCast())
    {
      v17 = aBlock[6];
      v18 = [a5 properties];
      v19 = [v18 expirationDate];

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v13 + 8))(v15, v12);
      [v17 setExpirationDate:isa];

      sub_1003540EC();
      v21 = *&a6[OBJC_IVAR___CSDConversationLinkManager_dataSource];
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_10057CA80;
      *(v22 + 32) = v17;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v23 = v17;
      v24 = Array._bridgeToObjectiveC()().super.isa;

      v25 = swift_allocObject();
      v25[2] = a5;
      v25[3] = a6;
      v25[4] = v16;
      aBlock[4] = sub_10036869C;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_100628F30;
      v26 = _Block_copy(aBlock);
      v27 = v16;
      v28 = a5;
      v29 = a6;

      [v21 addOrUpdateConversationLinkDescriptors:v24 completion:v26];
      _Block_release(v26);

      return;
    }
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000AF9C(v30, qword_1006BA5E0);

  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v33 = 136315394;
    *(v33 + 4) = sub_10002741C(a3, a4, aBlock);
    *(v33 + 12) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      v37 = v36;
    }

    else
    {
      v36 = 0;
      v37 = 0;
    }

    *(v33 + 14) = v36;
    *v34 = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Updating expiration of conversation link with pseudonym %s failed, unable to find link with error %@)", v33, 0x16u);
    sub_100009A04(v34, &unk_1006A2630, &qword_10057CB40);

    sub_100009B7C(v35);
  }
}

void sub_100368290(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v6 = *(a4 + OBJC_IVAR___CSDConversationLinkManager_delegate);
    if (v6)
    {
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_10057CA80;
      *(v8 + 32) = a5;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      swift_unknownObjectRetain();
      v9 = a5;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v6 linkManager:a4 updatedLinkDescriptorsFromIDSSignal:isa];

      swift_unknownObjectRelease();
    }

    sub_1003EFB64(0);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000AF9C(v13, qword_1006BA5E0);
    v14 = a3;
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v14;
      *v17 = v14;
      *(v16 + 12) = 2112;
      v18 = v14;
      if (a2)
      {
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v16 + 14) = v19;
      v17[1] = v20;
      _os_log_impl(&_mh_execute_header, oslog, v15, "Saving expiration date for pseudonym %@ failed with error %@)", v16, 0x16u);
      sub_10026D814(&unk_1006A2630, &qword_10057CB40);
      swift_arrayDestroy();
    }
  }
}

void sub_1003685F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = a2 + 64;
    do
    {
      v4 = *(v3 - 32);
      v5 = *(v3 - 24);
      v6 = *(v3 - 16);
      v3 += 40;
      v7 = v4;
      v8 = v5;
      v9 = v6;

      sub_10035CD24();

      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_1003686C0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003A631C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_10036872C(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_10036872C(uint64_t *a1)
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
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1003688E8(v7, v8, a1, v4);
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
    return sub_100368820(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100368820(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1003688E8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10047002C(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_10047002C(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_100368F1C((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_100368DF0(&v92, *result, a3);
LABEL_102:
}

uint64_t sub_100368DF0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1003A5940(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_100368F1C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_100368F1C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_100060528(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_100060528(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

void sub_1003690C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v25 = a1[3];
  v3 = sub_10000B6F4(*a1);
  v29 = 0;
  v4 = 0;
  v26 = _swiftEmptyArrayStorage;
  v27 = &_swiftEmptyArrayStorage[4];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v5 = *(v1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_32;
    }

    v32 = v5;
    if (v2(&v32))
    {
      v32 = v6;
      v25(&v31, &v32);

      v9 = v29;
      v8 = v31;
      if (!v29)
      {
        v10 = v26[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v30 = v31;
        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
        v13 = swift_allocObject();
        v14 = (j__malloc_size(v13) - 32) / 8;
        v13[2] = v12;
        v13[3] = (2 * v14) | 1;
        v15 = (v13 + 4);
        v16 = v26[3];
        v17 = v16 >> 1;
        if (v26[2])
        {
          if (v13 != v26 || v15 >= &v26[v17 + 4])
          {
            v28 = v14;
            v24 = v26[3];
            memmove(v13 + 4, v26 + 4, 8 * v17);
            v15 = (v13 + 4);
            v16 = v24;
            v14 = v28;
          }

          v26[2] = 0;
        }

        v27 = (v15 + 8 * v17);
        v9 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - (v16 >> 1);

        v26 = v13;
        v8 = v30;
      }

      v19 = __OFSUB__(v9, 1);
      v20 = v9 - 1;
      if (v19)
      {
        goto LABEL_34;
      }

      *v27++ = v8;
      v29 = v20;
      v4 = v7;
    }

    else
    {

      ++v4;
    }
  }

  v21 = v26[3];
  if (v21 < 2)
  {
    return;
  }

  v22 = v21 >> 1;
  v19 = __OFSUB__(v22, v29);
  v23 = v22 - v29;
  if (!v19)
  {
    v26[2] = v23;
    return;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_100369300(uint64_t a1, uint64_t (*a2)(id *))
{
  v4 = sub_10000B6F4(a1);
  v5 = 0;
  v6 = 0;
  v28 = _swiftEmptyArrayStorage;
  v29 = &_swiftEmptyArrayStorage[4];
  while (v4 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_32;
    }

    v32 = v7;
    if (a2(&v32))
    {
      if (!v5)
      {
        v10 = *(v28 + 3);
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        v30 = v12;
        sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
        v13 = swift_allocObject();
        v14 = j__malloc_size(v13);
        v15 = v13;
        v16 = (v14 - 32) / 8;
        *(v13 + 2) = v30;
        *(v13 + 3) = (2 * v16) | 1;
        v17 = v13 + 32;
        v18 = *(v28 + 3);
        v19 = v18 >> 1;
        v27 = v15;
        if (*(v28 + 2))
        {
          if (v15 != v28 || v17 >= &v28[8 * v19 + 32])
          {
            v21 = v17;
            v26 = (v14 - 32) / 8;
            v31 = *(v28 + 3);
            memmove(v17, v28 + 32, 8 * v19);
            v17 = v21;
            v18 = v31;
            v16 = v26;
          }

          *(v28 + 2) = 0;
        }

        v29 = &v17[8 * v19];
        v5 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - (v18 >> 1);

        v28 = v27;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_34;
      }

      *v29 = v8;
      v29 += 8;
      v6 = v9;
    }

    else
    {

      ++v6;
    }
  }

  v23 = *(v28 + 3);
  if (v23 < 2)
  {
    return;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    *(v28 + 2) = v25;
    return;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_10036951C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4)
{
  v7 = a1;
  (*(a4 + 24))(&v6, &v7);
  a2(&v8, &v6);

  return v8;
}

uint64_t sub_100369594(void *a1)
{
  v1 = [a1 invitedMemberHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  sub_100008DB8();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10036962C(uint64_t a1, void *a2)
{
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [a2 setInvitedHandles:isa];
}

void sub_1003696E4(uint64_t a1, void *a2)
{
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;
  [a2 setInvitedHandles:isa];
}

id sub_100369794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [a10 userNotificationWithIdentifier:a1 title:a2 message:v12 defaultButton:v13 alternateButton:v14 otherButton:a9];

  return v15;
}

void sub_10036987C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setRepresentedApplicationBundle:v4];
}

uint64_t sub_1003698E0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000A224();
  }

  return sub_100006B30();
}

void sub_100369938(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setName:v4];
}

void sub_100369990(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setLinkName:v4];
}

uint64_t sub_1003699E8(void *a1)
{
  v1 = [a1 conversationMessageBytes];
  if (v1)
  {
    v2 = v1;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000A224();
  }

  return sub_100006B30();
}

void sub_100369A44(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100049B14(a1, a2);
  [a3 setPrivateKey:isa];
}

char *sub_100369AB8(void *a1, void *a2, void *a3)
{
  v5 = qword_1006A0AC8;
  v6 = a1;
  v7 = a3;
  if (v5 != -1)
  {
    swift_once();
  }

  v8 = sub_10036AEA8(v6, v7, qword_1006A7FD0);

  v9 = objc_allocWithZone(type metadata accessor for ConversationLinkManager());
  v10 = a2;

  v11 = sub_10036B374(v6, v10, v7, v8, v9);
  v12 = *&v11[OBJC_IVAR___CSDConversationLinkManager_service];
  v13 = v11;
  v14 = v12;
  [v14 setDelegate:v13];

  return v13;
}

void sub_100369BCC(uint64_t a1, uint64_t (*a2)(id *))
{
  v4 = sub_10000B6F4(a1);
  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v10 = v6;
    v8 = a2(&v10);

    if (v8)
    {
      return;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_13;
    }
  }
}

void sub_100369CA4(int64_t a1, int64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v6 = a2;
  if (a2 >= a1)
  {
    if (a1 == a2)
    {
      return;
    }

    v20 = 1;
    v18 = a2;
    v6 = a1;
  }

  else
  {
    v20 = -1;
    v18 = a1;
  }

  v19 = sub_10000B6F4(a3);
  v7 = sub_10000B6F4(a3);
  v8 = 0;
  v9 = a3 & 0xC000000000000001;
  v10 = a3 & 0xFFFFFFFFFFFFFF8;
  v11 = a3 + 32;
  while (2)
  {
    v12 = __OFADD__(v8, v20);
    v13 = v8 + v20;
    if (v12)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v6 == v19)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v21 = v13;
    while (1)
    {
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v14 == v7)
      {
        break;
      }

      if (v9)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (v14 >= *(v10 + 16))
        {
          goto LABEL_23;
        }

        v15 = *(v11 + 8 * v14);
      }

      v16 = v15;
      v22 = v15;
      v17 = a4(&v22);

      ++v6;
      if (v17)
      {
        goto LABEL_19;
      }
    }

    v14 = v7;
LABEL_19:
    v6 = v14;
    v8 = v21;
    if (v14 != v18)
    {
      continue;
    }

    break;
  }
}

void sub_100369E08(void *a1)
{
  v3 = type metadata accessor for Date();
  sub_100005EB4(v3);
  v6 = (v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
  v7 = *(&v6->isa + *(v5 + 64));
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);

  sub_100365860(a1, v8, v9, v6, v7);
}

unint64_t sub_100369E94()
{
  result = qword_1006A6768;
  if (!qword_1006A6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6768);
  }

  return result;
}

uint64_t sub_100369EE8()
{
  v1 = type metadata accessor for Date();
  sub_100007BF0(v1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0 + ((*(v2 + 80) + 56) & ~*(v2 + 80));

  return sub_100363B78(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100369F50(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100007694();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100369FB0()
{
  sub_10000FC34();
  v0 = type metadata accessor for Date();
  sub_100007BF0(v0);
  v1 = sub_100006884();

  sub_100363D2C(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_10036A034()
{
  v1 = type metadata accessor for Date();
  sub_100007FEC();
  v3 = v2;
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  if (*(v0 + v6))
  {
  }

  return _swift_deallocObject(v0);
}

void sub_10036A128(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  sub_10004A0D0();
  v3 = type metadata accessor for Date();
  sub_100005EB4(v3);
  sub_10001C9E4();
  sub_10036446C();
}

void sub_10036A1DC()
{
  sub_100010060();
  v0 = sub_10026D814(&qword_1006A6778, &unk_100581B38);
  sub_100005EB4(v0);
  sub_10001C9E4();
  v1 = sub_100006884();

  sub_10036198C(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_10036A280(char a1, void *a2)
{
  v5 = sub_10026D814(&qword_1006A6778, &unk_100581B38);
  sub_100005EB4(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for Date();
  sub_100007BF0(v10);
  v12 = v2 + ((v7 + v9 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_100361EBC(a1, a2, v2 + v7, v12);
}

uint64_t sub_10036A364(uint64_t a1)
{
  v2 = type metadata accessor for ConversationLinkKeyAgreement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10036A3C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationLinkKeyAgreement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036A424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationLinkKeyAgreement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036A530(void (*a1)(void))
{
  a1(*(v1 + 24));

  sub_100008BA8();

  return _swift_deallocObject(v2);
}

void sub_10036A590()
{
  sub_10000FC34();
  v0 = type metadata accessor for Date();
  sub_100007BF0(v0);
  v1 = sub_100006884();

  sub_1003596B8(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10036A614()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10036A688()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10036A704(id *a1)
{
  v3 = type metadata accessor for Date();
  sub_100007BF0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_10035829C(a1, v5);
}

uint64_t sub_10036A778@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = *(a4 + 16);
  v9[0] = *a4;
  v9[1] = v7;
  v10 = *(a4 + 32);
  result = sub_10036951C(v6, a2, a3, v9);
  *a5 = result;
  return result;
}

uint64_t sub_10036A7F4()
{

  sub_100008BA8();

  return _swift_deallocObject(v1);
}

void sub_10036A900()
{
  sub_10000FC34();
  v1 = type metadata accessor for UUID();
  sub_100005EB4(v1);
  sub_10001C9E4();
  v11 = *(v0 + ((((((((v2 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
  v3 = sub_100006884();
  sub_100352614(v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10036A9CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10036AA80;

  return sub_100362288(v2, v3, v4);
}

uint64_t sub_10036AA80()
{
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10036AB74()
{

  sub_100022D00();

  return _swift_deallocObject(v1);
}

uint64_t sub_10036AC0C()
{
  sub_100005EF4();
  type metadata accessor for UUID();
  sub_100007FEC();
  v3 = ((*(v1 + 80) + 48) & ~*(v1 + 80)) + *(v2 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for ConversationLinkKeyAgreement(0);
  sub_100005EB4(v6);
  v8 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);

  v9 = sub_100007728();
  v10(v9);
  sub_100049B14(*(v0 + v4), *(v0 + v4 + 8));

  type metadata accessor for P256.KeyAgreement.PrivateKey();
  sub_100008070();
  (*(v11 + 8))(v0 + v8);
  sub_100005EDC();

  return _swift_deallocObject(v12);
}

void *sub_10036AEA8(uint64_t a1, void *a2, void *a3)
{
  v29 = a3;
  v30 = a2;
  v28 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v33[3] = &type metadata for ConversationLinkDataSourceTUWrapper;
  v33[4] = &off_100622FB8;
  v33[0] = a1;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v27 = "MeInRecoveryManager";
  static DispatchQoS.unspecified.getter();
  v32[0] = _swiftEmptyArrayStorage;
  sub_100369F50(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v28);
  static OS_dispatch_queue.main.getter();
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for ConversationLinkSyncMessageQueue();
  swift_allocObject();
  v10 = sub_1002B7C14(v9, sub_1003EF728, 0);
  sub_100009AB0(v33, v32);
  v11 = qword_1006A0C10;
  v12 = v9;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1006BA858;
  v14 = sub_10001BDB8(v32, v32[3]);
  __chkstk_darwin(v14);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v31[4] = &off_100622FB8;
  v31[3] = &type metadata for ConversationLinkDataSourceTUWrapper;
  v31[0] = v18;
  type metadata accessor for ConversationLinkSyncManager();
  v19 = swift_allocObject();
  v20 = sub_10001BDB8(v31, &type metadata for ConversationLinkDataSourceTUWrapper);
  __chkstk_darwin(v20);
  v22 = (&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;

  v25 = sub_10036B7F4(v24, v12, v29, v10, v30, v13, v19);
  sub_100009B7C(v33);
  sub_100009B7C(v31);
  sub_100009B7C(v32);
  return v25;
}

char *sub_10036B374(void *a1, void *a2, void *a3, uint64_t a4, char *a5)
{
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14 - 8);
  *&a5[OBJC_IVAR___CSDConversationLinkManager_renewPseudonymTask] = 0;
  v15 = &a5[OBJC_IVAR___CSDConversationLinkManager_generateKeyAgreement];
  *v15 = variable initialization expression of LetMeInRequestorKeyAgreement.localKey;
  *(v15 + 1) = 0;
  *&a5[OBJC_IVAR___CSDConversationLinkManager_delegate] = 0;
  *&a5[OBJC_IVAR___CSDConversationLinkManager_dataSource] = a1;
  *&a5[OBJC_IVAR___CSDConversationLinkManager_service] = a2;
  *&a5[OBJC_IVAR___CSDConversationLinkManager_serverBag] = a3;
  v28 = a4;
  *&a5[OBJC_IVAR___CSDConversationLinkManager_linkSyncManager] = a4;
  v16 = sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v26[1] = "onym8@NSError16";
  v26[2] = v16;
  v31 = a1;
  v30 = a2;
  v27 = a3;

  static DispatchQoS.unspecified.getter();
  v32[0] = _swiftEmptyArrayStorage;
  sub_100369F50(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for LetMeInRecoveryManager();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyDictionarySingleton;
  *(v18 + 24) = _swiftEmptyDictionarySingleton;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0;
  v19 = v27;
  *(v18 + 32) = v17;
  *(v18 + 40) = v19;
  *&a5[OBJC_IVAR___CSDConversationLinkManager_lmiRecoveryManager] = v18;
  v20 = type metadata accessor for ConversationLinkManager();
  v33.receiver = a5;
  v33.super_class = v20;
  v21 = v19;
  swift_unknownObjectRetain();
  v22 = objc_msgSendSuper2(&v33, "init");
  v23 = *&v22[OBJC_IVAR___CSDConversationLinkManager_lmiRecoveryManager];
  v32[3] = v20;
  v32[4] = &off_100628EB8;
  v32[0] = v22;
  swift_beginAccess();
  v24 = v22;

  sub_10036B784(v32, v23 + 48);
  swift_endAccess();

  *(v28 + 24) = &off_100628ED0;
  swift_unknownObjectWeakAssign();
  sub_1003F00CC();

  return v24;
}

uint64_t sub_10036B784(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A67C0, &qword_100581B88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_10036B7F4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v26[3] = &type metadata for ConversationLinkDataSourceTUWrapper;
  v26[4] = &off_100622FB8;
  v26[0] = a1;
  a7[3] = 0;
  swift_unknownObjectWeakInit();
  a7[16] = 0;
  sub_100009AB0(v26, (a7 + 4));
  a7[15] = a2;
  a7[13] = a4;
  a7[10] = a5;
  v13 = objc_allocWithZone(type metadata accessor for ConversationLinkSyncIDSInteractor());
  v14 = a2;

  v15 = a5;
  v16 = a3;
  a7[9] = sub_10036BAB4(v16, v14, v13);
  a7[14] = a6;

  v17 = [v15 linkSyncRecoverFailureLimit];
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v25 = v16;
  v18 = v14;
  v14 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
  result = [objc_allocWithZone(IDSRateLimiter) initWithLimit:v17 timeLimit:{objc_msgSend(v15, "linkSyncRecoverTimeLimit")}];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  a7[11] = result;
  v20 = [v15 linkSyncRecoverFailureLimit];
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = [objc_allocWithZone(IDSRateLimiter) initWithLimit:v20 timeLimit:{objc_msgSend(v15, "linkSyncRecoverTimeLimit")}];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  a7[12] = result;
  *(a7[9] + OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_delegate + 8) = &off_10062E688;
  swift_unknownObjectWeakAssign();
  v14 = v18;
  if (qword_1006A0B20 != -1)
  {
LABEL_11:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA5E0);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "ConversationLinkSync: ConversationLinkSyncManager init", v24, 2u);
  }

  sub_1003F2C10();
  sub_1003F6320();

  sub_100009B7C(v26);
  return a7;
}

char *sub_10036BAB4(void *a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_service] = a1;
  *&a3[OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_knownDestinations] = &_swiftEmptySetSingleton;
  v10.receiver = a3;
  v10.super_class = type metadata accessor for ConversationLinkSyncIDSInteractor();
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v10, "init");
  v7 = *&v6[OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_service];
  v8 = v6;
  [v7 addServiceDelegate:v8 queue:{a2, v10.receiver, v10.super_class}];

  return v8;
}

unint64_t sub_10036BBA4()
{
  result = qword_1006A67C8;
  if (!qword_1006A67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A67C8);
  }

  return result;
}

unint64_t sub_10036BBFC()
{
  result = qword_1006A67D0;
  if (!qword_1006A67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A67D0);
  }

  return result;
}

unint64_t sub_10036BC54()
{
  result = qword_1006A67D8;
  if (!qword_1006A67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A67D8);
  }

  return result;
}

unint64_t sub_10036BCAC()
{
  result = qword_1006A67E0;
  if (!qword_1006A67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A67E0);
  }

  return result;
}

unint64_t sub_10036BD04()
{
  result = qword_1006A67E8;
  if (!qword_1006A67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A67E8);
  }

  return result;
}

unint64_t sub_10036BD58()
{
  result = qword_1006A67F0;
  if (!qword_1006A67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A67F0);
  }

  return result;
}

uint64_t sub_10036BEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id sub_10036BEEC()
{
  if (qword_1006A0AB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1006A6800;

  return v1;
}

id sub_10036BF48(uint64_t a1)
{
  type metadata accessor for TinCanIDSService();
  result = sub_1003A03A0();
  qword_1006A6800 = result;
  return result;
}

id sub_10036BFB8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v10.receiver = v4;
  v10.super_class = type metadata accessor for TinCanIDSService();
  v8 = objc_msgSendSuper2(&v10, "initWithName:service:queryController:", v7, a3, a4);

  return v8;
}

id sub_10036C0AC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TinCanIDSService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10036C108(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10036C13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100370924();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

unint64_t sub_10036C190@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10036C108(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10036C1C4(uint64_t a1)
{
  v2 = sub_100370924();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_10036C200(uint64_t a1)
{
  v2 = sub_100370924();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_10036C25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100370924();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t sub_10036C2B0(uint64_t a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 3:
      result = 0xD000000000000015;
      break;
    case 2:
    case 5:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

id sub_10036C38C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  v7 = objc_opt_self();
  v8 = a1;
  result = [v7 sharedInstance];
  if (result)
  {
    v10 = result;
    v11 = objc_allocWithZone(TUVouchingEnablementImpl);
    v12 = v10;
    v13 = [v11 init];
    *v6 = 10;
    (*(v4 + 104))(v6, enum case for DispatchTimeInterval.seconds(_:), v3);
    v14 = sub_100370308(v8, v12, v13, v6, objc_allocWithZone(ObjectType));

    swift_deallocPartialClassInstance();
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10036C594(uint64_t a1, unint64_t a2, void *a3, char *a4, void (**a5)(void, void, void))
{
  v46 = a2;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v50 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchTime();
  v49 = *(v51 - 8);
  v13 = __chkstk_darwin(v51);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = &v36 - v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  v18 = *&a4[OBJC_IVAR___CSDVoucherManagerImpl_vouchingEnablement];
  _Block_copy(a5);
  if ([v18 isEnabled])
  {
    v19 = swift_allocObject();
    v43 = v11;
    v20 = v19;
    v21 = swift_allocObject();
    v22 = v46;
    v21[2] = a1;
    v21[3] = v22;
    v21[4] = sub_1003701E0;
    v21[5] = v17;
    v40 = v17;
    v21[6] = a4;
    v21[7] = a3;
    *(v20 + 16) = sub_100370220;
    *(v20 + 24) = v21;
    v37 = a3;
    v42 = a5;
    v24 = *&a4[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 24];
    v23 = *&a4[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 32];
    v39 = sub_100009B14(&a4[OBJC_IVAR___CSDVoucherManagerImpl_idsService], v24);
    v25 = swift_allocObject();
    v41 = v10;
    v26 = v25;
    *(v25 + 16) = a4;
    *(v25 + 24) = v20;
    v38 = *(v23 + 16);
    v27 = a4;
    sub_100290AC4(a1, v22);

    v28 = v37;

    v38(a1, v22, 3, sub_100370288, v26, v24, v23);

    v46 = *&v27[OBJC_IVAR___CSDVoucherManagerImpl_completionQueue];
    static DispatchTime.now()();
    v29 = v48;
    + infix(_:_:)();
    v49 = *(v49 + 8);
    (v49)(v15, v51);
    aBlock[4] = sub_100370290;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062A230;
    v30 = _Block_copy(aBlock);

    v31 = v50;
    static DispatchQoS.unspecified.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    v33 = v44;
    v32 = v45;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v30);
    (*(v47 + 8))(v33, v32);
    (*(v43 + 8))(v31, v41);
    (v49)(v29, v51);

    _Block_release(v42);
  }

  else
  {
    sub_1003700EC();
    swift_allocError();
    *v34 = 3;
    v35 = _convertErrorToNSError(_:)();
    (a5)[2](a5, 0, v35);

    _Block_release(a5);
  }
}

uint64_t sub_10036CB84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id, uint64_t), uint64_t a7, uint64_t a8, void *a9)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_1006A0B00 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000AF9C(v13, qword_1006BA580);
    swift_errorRetain();
    sub_100290AC4(a4, a5);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50 = v17;
      *v16 = 134218242;
      *(v16 + 4) = Data.hashValue.getter();
      sub_100049B14(a4, a5);
      *(v16 + 12) = 2080;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v18 = String.init<A>(describing:)();
      v20 = sub_10002741C(v18, v19, &v50);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to sign data (%ld) due to error %s.", v16, 0x16u);
      sub_100009B7C(v17);
    }

    else
    {
      sub_100049B14(a4, a5);
    }

    swift_errorRetain();
    a6(0, a3);
  }

  else if (a2 >> 60 == 15)
  {
    if (qword_1006A0B00 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000AF9C(v22, qword_1006BA580);
    sub_100290AC4(a4, a5);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = Data.hashValue.getter();
      sub_100049B14(a4, a5);
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to sign data (%ld) because encrypted data was missing from response (without an error).", v25, 0xCu);
    }

    else
    {
      sub_100049B14(a4, a5);
    }

    sub_1003700EC();
    v46 = swift_allocError();
    *v47 = 2;
    a6(0, v46);
  }

  else
  {
    v29 = *(a8 + OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler + 24);
    v28 = *(a8 + OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler + 32);
    sub_100009B14((a8 + OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler), v29);
    v30 = *(v28 + 8);
    sub_100290AC4(a1, a2);
    v31 = v30(v29, v28);
    v33 = v32;
    sub_10036D194(a9);
    v35 = v34;
    v37 = v36;
    sub_100049B14(v31, v33);
    objc_allocWithZone(TUVoucher);
    sub_100290AC4(a4, a5);
    sub_1002EAE60(a1, a2);
    v38 = sub_10037000C(a9, v35, v37, a4, a5, a1, a2);
    if (qword_1006A0B00 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000AF9C(v39, qword_1006BA580);
    sub_100290AC4(a4, a5);
    v40 = v38;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 134218242;
      *(v43 + 4) = Data.hashValue.getter();
      sub_100049B14(a4, a5);
      *(v43 + 12) = 2112;
      *(v43 + 14) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "Successfully signed data (%ld) into %@.", v43, 0x16u);
      sub_100009A5C(v44, &unk_1006A2630, &qword_10057CB40);
    }

    else
    {
      sub_100049B14(a4, a5);
    }

    v48 = v40;
    a6(v40, 0);

    return sub_100290B6C(a1, a2);
  }
}

void sub_10036D194(uint64_t a1)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v2 = TUCopyIDSFromIDForHandle();
  v3 = IDSCopyIDForTokenWithID();

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10036D21C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_100370298;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062A280;
  v16 = _Block_copy(aBlock);

  sub_1002EAE60(a1, a2);
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v11, v9);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_10036D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 24);

    v8(a2, a3, a4);
    sub_1000051F8(v8, v9);
  }

  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_1000051F8(v10, v11);
}

uint64_t sub_10036D5B8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    sub_1003700EC();
    v4 = swift_allocError();
    *v5 = 0;

    v2(0, 0xF000000000000000, v4);
    sub_1000051F8(v2, v3);
  }

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_1000051F8(v6, v7);
}

void sub_10036D740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_10036D7B0(void *a1, char *a2, void (**a3)(void, void, void))
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v132 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DispatchTime();
  v131 = *(v133 - 8);
  v13 = __chkstk_darwin(v133);
  v129 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v130 = &v119 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v17 = *&a2[OBJC_IVAR___CSDVoucherManagerImpl_vouchingEnablement];
  _Block_copy(a3);
  if ([v17 isEnabled])
  {
    v125 = v10;
    v126 = v7;
    v127 = v6;
    v128 = a3;
    if (qword_1006A0B00 != -1)
    {
      swift_once();
    }

    v123 = v11;
    v124 = v9;
    v134 = v16;
    v18 = type metadata accessor for Logger();
    sub_10000AF9C(v18, qword_1006BA580);
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = "com.apple.callservicesd.shareplay-session-server-terminated";
    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v19;
      *v24 = v19;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "Requested to verify %@.", v23, 0xCu);
      sub_100009A5C(v24, &unk_1006A2630, &qword_10057CB40);
    }

    v26 = OBJC_IVAR___CSDVoucherManagerImpl_verificationCache;
    swift_beginAccess();
    v27 = sub_10036E814(v19, *&a2[v26]);
    if (v28 != -1)
    {
      v29 = v27;
      v30 = v28;
      swift_endAccess();
      if (v30)
      {
        sub_10026D814(&unk_1006ACA40, &qword_100581F70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10057D690;
        v32 = swift_allocObject();
        v33 = v134;
        *(v32 + 16) = sub_10036AC04;
        *(v32 + 24) = v33;
        *(inited + 32) = sub_100370988;
        *(inited + 40) = v32;
        aBlock[0] = v29;
        v34 = v19;

        sub_100370188(v29, v30);
        sub_1004142C0(inited);
        v35 = aBlock[0];
        swift_beginAccess();
        v36 = *&a2[v26];
        v37 = sub_10026D814(&qword_1006A6A20, &qword_100581F78);
        v38 = objc_allocWithZone(v37);
        v39 = &v38[*((swift_isaMask & *v38) + 0x68)];
        *v39 = v35;
        v39[8] = 1;
        v136.receiver = v38;
        v136.super_class = v37;

        v40 = objc_msgSendSuper2(&v136, "init");
        v41 = sub_10026D814(&qword_1006A6A28, &unk_100581F80);
        v42 = objc_allocWithZone(v41);
        *&v42[*((swift_isaMask & *v42) + 0x68)] = v34;
        v135.receiver = v42;
        v135.super_class = v41;
        v43 = objc_msgSendSuper2(&v135, "init");
        [v36 setObject:v40 forKey:v43];
        swift_endAccess();

        sub_1003701AC(v29, v30);
LABEL_9:

        v44 = v128;
        goto LABEL_12;
      }

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 67109120;
        *(v61 + 4) = v29 & 1;
        _os_log_impl(&_mh_execute_header, v59, v60, "Retrieved previously verified voucher: %{BOOL}d.", v61, 8u);
      }

      v62 = v128;
      v128[2](v128, v29 & 1, 0);
LABEL_31:

      v44 = v62;
      goto LABEL_12;
    }

    swift_endAccess();
    v47 = [v19 handle];
    v48 = TUCopyIDSFromIDForHandle();

    if (v48)
    {
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = [v19 tokenPrefixedURI];
      if (!v52)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = String._bridgeToObjectiveC()();
      }

      v53 = IDSCopyAddressDestinationForDestination();

      if (v53)
      {
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        if (v49 == v54 && v51 == v56)
        {

          v22 = "com.apple.callservicesd.shareplay-session-server-terminated";
LABEL_33:
          sub_100006AF0(0, &qword_1006A2BA0, IDSURI_ptr);
          v72 = [v19 tokenPrefixedURI];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v73 = sub_10036EAE0();
          if (v73)
          {
            v122 = v73;
            sub_10026D814(&unk_1006ACA40, &qword_100581F70);
            v74 = swift_allocObject();
            *(v74 + 16) = xmmword_10057D690;
            v75 = swift_allocObject();
            v76 = v134;
            *(v75 + 16) = sub_10036AC04;
            *(v75 + 24) = v76;
            *(v74 + 32) = sub_100370140;
            *(v74 + 40) = v75;
            swift_beginAccess();
            v77 = *&a2[v26];
            v78 = sub_10026D814(&qword_1006A6A20, &qword_100581F78);
            v79 = objc_allocWithZone(v78);
            v80 = &v79[*((swift_isaMask & *v79) + 0x68)];
            *v80 = v74;
            v80[8] = 1;
            v140.receiver = v79;
            v140.super_class = v78;
            v81 = v19;

            v82 = objc_msgSendSuper2(&v140, "init");
            v83 = sub_10026D814(&qword_1006A6A28, &unk_100581F80);
            v84 = objc_allocWithZone(v83);
            *&v84[*((swift_isaMask & *v84) + 0x68)] = v81;
            v139.receiver = v84;
            v139.super_class = v83;
            v85 = objc_msgSendSuper2(&v139, "init");
            [v77 setObject:v82 forKey:v85];
            swift_endAccess();

            v86 = swift_allocObject();
            v87 = swift_allocObject();
            *(v86 + 16) = sub_100370170;
            *(v87 + 16) = v81;
            *(v87 + 24) = a2;
            *(v86 + 24) = v87;
            v88 = v81;
            v89 = a2;
            if ([v17 shouldForceVerificationFailures])
            {
              sub_1003700EC();
              v90 = swift_allocError();
              *v91 = 5;

              sub_100370170(0, v90);
              sub_1000051F8(sub_100370170, v87);

              v92 = *(v86 + 16);
              v93 = *(v86 + 24);
              *(v86 + 16) = 0;
              *(v86 + 24) = 0;
              sub_1000051F8(v92, v93);
            }

            else
            {
              v100 = *&v89[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 32];
              v120 = *&v89[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 24];
              v121 = sub_100009B14(&v89[OBJC_IVAR___CSDVoucherManagerImpl_idsService], v120);
              v101 = [v88 encryptedData];
              v102 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v119 = v103;

              v104 = [v88 unsafeData];
              v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v107 = v106;

              v108 = swift_allocObject();
              *(v108 + 16) = v89;
              *(v108 + 24) = v86;
              v109 = *(v100 + 8);
              v110 = v89;

              v118 = v100;
              v111 = v119;
              v109(v102, v119, v105, v107, v122, 3, sub_100370178, v108, v120, v118);

              sub_100049B14(v105, v107);
              sub_100049B14(v102, v111);
              v121 = *&v110[OBJC_IVAR___CSDVoucherManagerImpl_completionQueue];
              v112 = v129;
              static DispatchTime.now()();
              v113 = v130;
              + infix(_:_:)();
              v131 = *(v131 + 8);
              (v131)(v112, v133);
              aBlock[4] = sub_100370180;
              aBlock[5] = v86;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100004CEC;
              aBlock[3] = &unk_10062A0F0;
              v114 = _Block_copy(aBlock);

              v115 = v132;
              static DispatchQoS.unspecified.getter();
              v137 = _swiftEmptyArrayStorage;
              sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
              sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
              v116 = v124;
              v117 = v127;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

              _Block_release(v114);
              (*(v126 + 8))(v116, v117);
              (*(v123 + 8))(v115, v125);
              (v131)(v113, v133);
            }

            goto LABEL_9;
          }

          v94 = v19;
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            *v97 = *(v22 + 464);
            *(v97 + 4) = v94;
            *v98 = v94;
            v99 = v94;
            _os_log_impl(&_mh_execute_header, v95, v96, "Failed to verify %@ because we couldn't create a URI.", v97, 0xCu);
            sub_100009A5C(v98, &unk_1006A2630, &qword_10057CB40);
          }

          sub_1003700EC();
          swift_allocError();
          v70 = 1;
          goto LABEL_30;
        }

        v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v22 = "com.apple.callservicesd.shareplay-session-server-terminated";
        if (v58)
        {
          goto LABEL_33;
        }
      }

      else
      {

        v22 = "com.apple.callservicesd.shareplay-session-server-terminated";
      }
    }

    v63 = v19;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = *(v22 + 464);
      *(v66 + 4) = v63;
      *v67 = v63;
      v68 = v63;
      _os_log_impl(&_mh_execute_header, v64, v65, "Failed to verify %@ because the token prefixed URI did not come from the handle.", v66, 0xCu);
      sub_100009A5C(v67, &unk_1006A2630, &qword_10057CB40);
    }

    sub_1003700EC();
    swift_allocError();
    v70 = 4;
LABEL_30:
    *v69 = v70;
    v71 = _convertErrorToNSError(_:)();
    v62 = v128;
    (v128)[2](v128, 0, v71);

    goto LABEL_31;
  }

  sub_1003700EC();
  swift_allocError();
  *v45 = 3;
  v46 = _convertErrorToNSError(_:)();
  (a3)[2](a3, 0, v46);

  v44 = a3;

LABEL_12:
  _Block_release(v44);
}