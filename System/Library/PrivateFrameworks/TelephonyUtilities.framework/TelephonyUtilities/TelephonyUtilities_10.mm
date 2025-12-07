uint64_t sub_100276F1C()
{
  sub_100006810();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 25) = v3;
  v4 = sub_10026D814(&qword_1006A2670, &qword_10057D178);
  *(v1 + 56) = v4;
  sub_100005EB4(v4);
  *(v1 + 64) = v5;
  *(v1 + 72) = swift_task_alloc();
  v6 = sub_10026D814(&qword_1006A2678, &qword_10057D180);
  *(v1 + 80) = v6;
  sub_100005EB4(v6);
  *(v1 + 88) = v7;
  *(v1 + 96) = sub_100015418();
  *(v1 + 104) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v1 + 112) = v8;
  sub_100005EB4(v8);
  *(v1 + 120) = v9;
  *(v1 + 128) = sub_100015418();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  sub_1002869E0();
  sub_10000F484();
  sub_100286020(v10, v11, &protocol conformance descriptor for ConversationCallCoordinator);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  *(v1 + 192) = v12;
  *(v1 + 200) = v13;
  v14 = sub_100286804();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_100277118()
{
  v251 = v0;
  v1 = *(v0 + 25);
  v249 = 0;
  v250 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x8000000100562E40;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0xD000000000000032;
  v3._object = 0x8000000100562E70;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x6E6F736165722820;
  v4._object = 0xEA0000000000203ALL;
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_1002766BC(v1);
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x556C6C6163202C29;
  v6._object = 0xED0000203A444955;
  String.append(_:)(v6);
  sub_100009EDC();
  v9 = sub_100286020(v7, v8, &protocol conformance descriptor for UUID);
  *(v0 + 208) = v9;
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 44;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v13 = v249;
  v12 = v250;
  *(v0 + 216) = v249;
  *(v0 + 224) = v12;
  v14 = sub_1002767F8();
  *(v0 + 232) = v14;
  v15 = v14;
  v247 = v13;
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = [v14 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = static UUID.== infix(_:_:)();
  v21 = *(v17 + 8);
  v20 = v17 + 8;
  v248 = v21;
  *(v0 + 240) = v21;
  *(v0 + 248) = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22 = sub_100005ED0();
  v23(v22);
  if ((v19 & 1) == 0)
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v50 = sub_1002869FC();
    sub_10000AF9C(v50, qword_1006A24E0);
    v51 = sub_10000C6A4();
    v52(v51);

    v53 = v15;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      LODWORD(v235) = v55;
      v232 = *(v0 + 128);
      v56 = *(v0 + 112);
      sub_100015070();
      v57 = swift_slowAlloc();
      v58 = sub_10000C554();
      v249 = v58;
      *v57 = 136315650;
      v66 = sub_10000D5D0(v58, v59, v60, v61, v62, v63, v64, v65, v220, v221, v223, v225, v227, v229, v232, v235, v58, v240, v242, v0, v247);

      *(v57 + 4) = v66;
      *(v57 + 12) = 2080;
      v67 = [v53 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v71 = sub_100005ED0();
      v248(v71);
      v72 = sub_10002741C(v68, v70, &v249);

      *(v57 + 14) = v72;
      *(v57 + 22) = 2080;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      (v248)(v233, v56);
      v76 = sub_10002741C(v73, v75, &v249);

      *(v57 + 24) = v76;
      _os_log_impl(&_mh_execute_header, v54, v236, "%s Tracked conversation has different UUID, expected: %s, provided: %s", v57, 0x20u);
      sub_1002867D4(v77, v78, (&type metadata for Any + 1));
      sub_10000E50C();

      sub_100009ED0();
    }

    else
    {

      v101 = sub_100005ED0();
      v248(v101);
    }

    goto LABEL_25;
  }

  v241 = v9;
  if ([v15 state] == 4)
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v24 = sub_1002869FC();
    sub_10000AF9C(v24, qword_1006A24E0);
    v25 = sub_10000C6A4();
    v26(v25);

    v27 = v15;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      sub_100015070();
      v243 = v20;
      v30 = swift_slowAlloc();
      v31 = sub_10000C554();
      v249 = v31;
      *v30 = 136315650;
      v39 = v27;
      v40 = sub_10000D5D0(v31, v32, v33, v34, v35, v36, v37, v38, v220, v221, v223, v225, v227, v229, v231, v235, v238, v241, v243, v245, v247);

      *(v30 + 4) = v40;
      *(v30 + 12) = 2080;
      *(v0 + 32) = [v39 state];
      type metadata accessor for TUConversationState(0);
      v41 = String.init<A>(reflecting:)();
      v43 = sub_10002741C(v41, v42, &v249);

      *(v30 + 14) = v43;
      *(v30 + 22) = 2080;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v47 = sub_100006B3C();
      v248(v47);
      v48 = v44;
      v27 = v39;
      v49 = sub_10002741C(v48, v46, &v249);

      *(v30 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s Conversation in non-joinable state: %s, conversationUUID: %s", v30, 0x20u);
      swift_arrayDestroy();
      sub_100009ED0();

      sub_100009ED0();
    }

    else
    {

      v102 = sub_100006B3C();
      v248(v102);
    }

    sub_100286294();
    sub_100006104();
    swift_allocError();
    *v103 = 2;
    swift_willThrow();

    sub_100007BD4();

    sub_100009EF4();
    goto LABEL_26;
  }

  v244 = v20;
  v246 = v0;
  if ([v15 state] == 3)
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v79 = sub_1002869FC();
    sub_10000AF9C(v79, qword_1006A24E0);
    v80 = sub_10000C6A4();
    v81(v80);

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();

    v84 = os_log_type_enabled(v82, v83);
    v85 = *(v0 + 144);
    if (v84)
    {
      v86 = sub_100007C08();
      v87 = sub_100007630();
      v249 = v87;
      *v86 = 136315394;
      v95 = sub_10000D5D0(v87, v88, v89, v90, v91, v92, v93, v94, v220, v221, v223, v225, v227, v229, v231, v235, v238, v9, v20, v0, v247);

      *(v86 + 4) = v95;
      sub_100022DE4();
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      sub_10001E3B8();
      sub_100286700();
      v99();
      sub_10002741C(v96, v98, &v249);
      sub_10000771C();

      *(v86 + 14) = v85;
      sub_1002867B8(&_mh_execute_header, v100, v83, "%s Conversation already joined, conversationUUID: %s");
      sub_10004A090();
      sub_100009ED0();

      sub_100009ED0();
    }

    else
    {

      sub_10001E3B8();
      sub_100286700();
      v110();
    }

LABEL_25:
    sub_100007BD4();

    sub_100009EF4();
LABEL_26:

    return v104();
  }

  v105 = *(v0 + 25);
  v106 = [objc_allocWithZone(CSDConversationJoinContext) init];
  *(v0 + 256) = v106;
  v108 = sub_1002766BC(v105) == 0xD000000000000012 && 0x8000000100562D30 == v107;
  v237 = 0xD000000000000012;
  v239 = 0x8000000100562D30;
  if (v108)
  {

    v109 = 0;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100005F0C();

    v109 = ~v16 & 1;
  }

  v112 = *(v0 + 48);
  v113 = *(v246 + 25);
  [v106 setAvMode:v109];
  [v106 setVideo:0];
  [v106 setVideoEnabled:0];
  [v106 setProvider:*(v112 + OBJC_IVAR___CSDConversationCallCoordinator_conversationProvider)];
  [v106 setOneToOneModeEnabled:1];
  v114 = [objc_opt_self() noNotificationInvitationPreferences];
  sub_100006AF0(0, &qword_1006A2680, TUConversationInvitationPreference_ptr);
  sub_10000CE3C(&qword_1006A2688, &qword_1006A2680, TUConversationInvitationPreference_ptr);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v115.super.isa = Set._bridgeToObjectiveC()().super.isa;

  [v106 setInvitationPreferences:v115.super.isa];

  if (sub_1002766BC(v113) == 0xD000000000000014 && 0x8000000100562CF0 == v116)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100005F0C();

    if ((v115.super.isa & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v118 = *(v246 + 25);
  v119 = sub_1002766BC(v118);
  if (v119 == 0xD000000000000014 && 0x8000000100562D50 == v120)
  {
    v122 = 1;
  }

  else
  {
    v122 = sub_100286794(v119);
    v118 = *(v246 + 25);
  }

  v123 = sub_1002766BC(v118);
  if (v123 == 0xD000000000000014 && 0x8000000100562D50 == v124)
  {

    v114 = 1;
  }

  else
  {
    v126 = sub_100286794(v123);

    if (v126)
    {
      v114 = 1;
    }

    else
    {
      v114 = 2;
    }
  }

  v127 = [v15 remoteMembers];
  sub_1000444A4();
  sub_100006AF0(v128, v129, v130);
  sub_1000444A4();
  sub_10000CE3C(v131, v132, v133);
  sub_1000507CC();
  v134 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v135 = sub_1002E8BE0(v134);

  if (v135 && (v136 = [v135 handle], v135, v136))
  {
    sub_100006AF0(0, &qword_1006A26A8, TUScreenSharingRequest_ptr);
    v137 = v136;
    v138 = sub_100278B40(v137, v122 & 1, v114, 0, 0);
    [v106 setScreenSharingRequest:v138];
  }

  else
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v139 = *(v246 + 176);
    v140 = *(v246 + 112);
    v141 = *(v246 + 120);
    v142 = *(v246 + 40);
    v143 = type metadata accessor for Logger();
    sub_10000AF9C(v143, qword_1006A24E0);
    (*(v141 + 16))(v139, v142, v140);

    v114 = Logger.logObject.getter();
    v144 = static os_log_type_t.error.getter();

    v145 = os_log_type_enabled(v114, v144);
    v146 = *(v246 + 176);
    if (v145)
    {
      v147 = sub_100007C08();
      v148 = sub_100007630();
      v249 = v148;
      *v147 = 136315394;
      *(v147 + 4) = sub_10000D5D0(v148, v149, v150, v151, v152, v153, v154, v155, v220, v221, v223, v225, v227, v229, v148, 0xD000000000000012, 0x8000000100562D30, v9, v244, v246, v247);
      sub_100022DE4();
      v156 = dispatch thunk of CustomStringConvertible.description.getter();
      v158 = v157;
      sub_100016F58();
      sub_100286700();
      v159();
      sub_10002741C(v156, v158, &v249);
      sub_10000667C();

      *(v147 + 14) = v146;
      sub_1002867B8(&_mh_execute_header, v160, v144, "%s Failed to find a remote handle to create TUScreenSharingRequest with, conversationUUID: %s");
      swift_arrayDestroy();
      sub_10000E50C();

      sub_100009ED0();
    }

    else
    {

      sub_100016F58();
      sub_100286700();
      v161();
    }
  }

LABEL_59:
  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v162 = *(v246 + 168);
  v163 = *(v246 + 112);
  v164 = *(v246 + 120);
  v165 = sub_1002869FC();
  v166 = sub_10000AF9C(v165, qword_1006A24E0);
  *(v246 + 264) = v166;
  v168 = *(v164 + 16);
  v167 = v164 + 16;
  *(v246 + 272) = v168;
  *(v246 + 280) = v167 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v234 = v167;
  v228 = v168;
  v168(v162, v114, v163);

  v169 = v106;
  v230 = v166;
  v170 = Logger.logObject.getter();
  v171 = static os_log_type_t.default.getter();

  v224 = v169;
  if (os_log_type_enabled(v170, v171))
  {
    sub_100015070();
    v172 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v173 = sub_100007630();
    v249 = v173;
    *v172 = 136315650;
    *(v172 + 4) = sub_10000D5D0(v173, v174, v175, v176, v177, v178, v179, v180, v220, v222, v169, v173, v228, v230, v167, v237, v239, v241, v244, v246, v247);
    sub_100286848();
    v181 = v170;
    v182 = dispatch thunk of CustomStringConvertible.description.getter();
    v184 = v183;
    v185 = sub_100005ED0();
    v186 = v248;
    v248(v185);
    v187 = sub_10002741C(v182, v184, &v249);

    *(v172 + 14) = v187;
    *(v172 + 22) = 2112;
    *(v172 + 24) = v169;
    *v221 = v169;
    v188 = v169;
    _os_log_impl(&_mh_execute_header, v181, v171, "%s Joining conversation, conversationUUID: %s, context: %@", v172, 0x20u);
    sub_100009A04(v221, &unk_1006A2630, &qword_10057CB40);
    sub_10000E50C();

    swift_arrayDestroy();
    sub_10000E50C();

    sub_100009ED0();
  }

  else
  {

    v189 = sub_100005ED0();
    v186 = v248;
    v248(v189);
  }

  v190 = *(*(v246 + 48) + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
  v191 = *(v246 + 25);
  v192 = [v15 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v194 = sub_10001E3B8();
  v186(v194);
  v226 = v190;
  [v190 joinExistingConversationWithUUID:isa context:v224];

  v196 = sub_1002766BC(v191) == v237 && v239 == v195;
  v197 = v186;
  if (v196)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100005F0C();

    if ((v186 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  *(*(v246 + 48) + OBJC_IVAR___CSDConversationCallCoordinator_translationSessionInProgress) = 1;
LABEL_72:
  v228(*(v246 + 160), *(v246 + 40), *(v246 + 112));

  v198 = Logger.logObject.getter();
  v199 = static os_log_type_t.default.getter();

  v200 = os_log_type_enabled(v198, v199);
  v201 = *(v246 + 160);
  if (v200)
  {
    v202 = sub_100007C08();
    v203 = sub_100007630();
    v249 = v203;
    *v202 = 136315394;
    *(v202 + 4) = sub_10000D5D0(v203, v204, v205, v206, v207, v208, v209, v210, v220, v221, v224, v190, v228, v230, v234, v237, v239, v241, v244, v246, v247);
    sub_100022DE4();
    v211 = dispatch thunk of CustomStringConvertible.description.getter();
    v213 = v212;
    sub_100016F58();
    sub_100286700();
    v214();
    sub_10002741C(v211, v213, &v249);
    sub_100044480();

    *(v202 + 14) = v201;
    sub_1002867B8(&_mh_execute_header, v215, v199, "%s Starting audio for conversation, conversationUUID: %s");
    sub_10004A090();
    v197 = v248;
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {

    v216 = sub_100016F58();
    v197(v216);
  }

  v217 = [v15 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v218 = UUID._bridgeToObjectiveC()().super.isa;
  v219 = sub_100005ED0();
  v197(v219);
  [v226 startAudioForConversationWithUUID:v218];

  AsyncBroadcastStream.sequence.getter();

  return _swift_task_switch(sub_1002784EC, 0, 0);
}

uint64_t sub_1002784EC()
{
  sub_10000C698();
  (*(v0[11] + 16))(v0[12], v0[13], v0[10]);
  sub_10001000C(&qword_1006A2690, &qword_1006A2678, &qword_10057D180, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  sub_10000FB84(&qword_1006A2698, &qword_1006A2670, &qword_10057D178);
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  sub_100022C5C(v1);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2);
}

uint64_t sub_1002785F8()
{
  sub_10000C698();
  sub_100005F18();
  v3 = v2;
  sub_100007BC8();
  *v4 = v3;
  v5 = *v1;
  sub_100008060();
  *v6 = v5;

  if (v0)
  {
    v8 = v3[8];
    v7 = v3[9];
    v9 = v3[7];

    (*(v8 + 8))(v7, v9);
    v10 = ScreenSharingActivityManager.carPlayDidDisconnect();
  }

  else
  {
    v10 = sub_100278724;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100278724()
{
  sub_10000C698();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 26) = v2;
  if ((v2 & 1) != 0 || v1 == 3)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v4 = *(v0 + 192);
    v5 = *(v0 + 200);

    return _swift_task_switch(sub_100278838, v4, v5);
  }

  else
  {
    sub_10000FB84(&qword_1006A2698, &qword_1006A2670, &qword_10057D178);
    v3 = swift_task_alloc();
    *(v0 + 288) = v3;
    *v3 = v0;
    sub_100022C5C(v3);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16);
  }
}

uint64_t sub_100278838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10028688C();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = *(v26 + 26);
  (*(*(v26 + 88) + 8))(*(v26 + 104), *(v26 + 80));
  if (v29)
  {
    v30 = *(v26 + 256);
    v31 = *(v26 + 232);

    sub_100286294();
    sub_100006104();
    v63 = swift_allocError();
    *v32 = 1;
    swift_willThrow();

    a12 = *(v26 + 72);

    sub_100009EF4();
  }

  else
  {
    (*(v26 + 272))(*(v26 + 152), *(v26 + 40), *(v26 + 112));

    v33 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10028673C();

    v34 = sub_1002869B0();
    v35 = *(v26 + 256);
    v36 = *(v26 + 232);
    v37 = *(v26 + 240);
    v38 = *(v26 + 224);
    if (v34)
    {
      v64 = *(v26 + 256);
      v39 = *(v26 + 216);
      a10 = *(v26 + 208);
      a11 = *(v26 + 248);
      v40 = sub_100007C08();
      a12 = v36;
      a14 = sub_100007630();
      *v40 = 136315394;
      sub_10002741C(v39, v38, &a14);
      sub_100027E40();

      *(v40 + 4) = v39;
      *(v40 + 12) = 2080;
      dispatch thunk of CustomStringConvertible.description.getter();
      v41 = sub_100286718();
      v37(v41);
      v42 = sub_100006B3C();
      v45 = sub_10002741C(v42, v43, v44);

      *(v40 + 14) = v45;
      sub_100017C80();
      _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
      sub_100018614();
      swift_arrayDestroy();
      sub_100009ED0();

      sub_100009ED0();
    }

    else
    {
      v51 = *(v26 + 152);
      v52 = *(v26 + 112);

      (v37)(v51, v52);
    }

    sub_100007BD4();
    v63 = v53;

    sub_100009EF4();
  }

  sub_10000D3E8();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, v63, a14, a15, a16, a17, a18);
}

id sub_100278B40(void *a1, char a2, uint64_t a3, char a4, void *a5)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHandle:a1 shareMyScreen:a2 & 1 originType:a3 shouldSendLegacyInvite:a4 & 1 metadata:a5];

  return v7;
}

void sub_100278BBC()
{
  sub_100005EF4();
  v1 = v0;
  v145 = v2;
  v146 = type metadata accessor for UUID();
  sub_100007FEC();
  v142 = v3;
  __chkstk_darwin(v4);
  sub_100007BAC();
  v141 = (v5 - v6);
  sub_100006838();
  __chkstk_darwin(v7);
  v9 = &v139 - v8;
  v140 = *(v0 + 16);
  v10 = [v140 remoteParticipantHandles];
  v11 = TUHandle_ptr;
  sub_10000528C();
  v15 = sub_100006AF0(v12, v13, v14);
  sub_10000528C();
  sub_10000CE3C(v16, v17, v18);
  sub_1000507CC();
  v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_10001E550();
  v144 = v0;
  if (!v20)
  {

    v46 = _swiftEmptyArrayStorage;
LABEL_29:
    sub_1002F1D1C(v46);
    sub_10000528C();
    sub_100006AF0(v47, v48, v49);
    sub_10000528C();
    sub_10000CE3C(v50, v51, v52);
    sub_1000507CC();
    Set._bridgeToObjectiveC()();
    sub_10000667C();

    v11 = v145;
    v53 = [v145 isRepresentedByRemoteMembers:&qword_1006A3DE0 andLink:0];

    if ((v53 & 1) == 0)
    {
      goto LABEL_55;
    }

    strcpy(v150, ", callUUID: ");
    BYTE13(v150[0]) = 0;
    HIWORD(v150[0]) = -5120;
    v54 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
    sub_100009EDC();
    v57 = sub_100286020(v55, v56, &protocol conformance descriptor for UUID);
    v148 = v54;
    v149 = v57;
    v15 = v146;
    v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v58);

    v59 = v150[0];
    v60 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
    swift_beginAccess();
    v61 = *(v1 + v60);
    if (v61)
    {
      v147 = *(&v59 + 1);
      v139 = v59;
      v143 = "ActivitySessionContainerID:)";
      v62 = v61;
      v63 = [v62 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = [v11 groupUUID];
      v65 = v141;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100009EDC();
      sub_100286020(v66, v67, &protocol conformance descriptor for UUID);
      v68 = v65;
      LOBYTE(v64) = dispatch thunk of static Comparable.< infix(_:_:)();
      v69 = *(v142 + 8);
      v70 = sub_100027E34();
      v69(v70);
      v71 = sub_100006694();
      v69(v71);
      if (v64)
      {
        v148 = v62;
        if (qword_1006A0770 != -1)
        {
          sub_10000802C();
          swift_once();
        }

        v72 = type metadata accessor for Logger();
        sub_1000075F0(v72, qword_1006A24E0);
        v73 = v11;
        v74 = v147;

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v75, v76))
        {
          sub_100015070();
          v77 = swift_slowAlloc();
          v145 = sub_10000C554();
          v151 = v145;
          v78 = sub_100035720(4.8152e-34);
          sub_100015E8C(v78);
          sub_1002867EC([v73 groupUUID]);

          v79 = v146;
          dispatch thunk of CustomStringConvertible.description.getter();
          (v69)(v9, v79);
          v80 = sub_10000BB1C();
          v83 = sub_10002741C(v80, v81, v82);

          v84 = sub_100286724();
          sub_10002741C(v84, v74, v85);
          sub_10000667C();

          *(v77 + 24) = v83;
          _os_log_impl(&_mh_execute_header, v75, v76, "%s Ignoring new conversation, groupUUID: %s%s", v77, 0x20u);
          swift_arrayDestroy();
          sub_100009ED0();

          sub_100009ED0();
        }

        else
        {
        }

        goto LABEL_56;
      }

      v96 = [v62 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028677C([v11 groupUUID]);
      LOBYTE(v96) = static UUID.< infix(_:_:)();
      v97 = sub_100027E34();
      v69(v97);
      v98 = sub_100006694();
      v69(v98);
      if (v96)
      {
        v148 = v62;
        v99 = v9;
        if (qword_1006A0770 != -1)
        {
          sub_10000802C();
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        sub_1000075F0(v100, qword_1006A24E0);
        v101 = v11;
        v102 = v147;

        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v103, v104))
        {
          sub_100015070();
          v105 = swift_slowAlloc();
          v145 = sub_10000C554();
          v151 = v145;
          v106 = sub_100035720(4.8152e-34);
          sub_100015E8C(v106);
          v107 = [v101 groupUUID];
          LODWORD(v143) = v104;
          v108 = v107;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          dispatch thunk of CustomStringConvertible.description.getter();
          sub_10028670C();
          (v69)(v99, v146);
          v109 = sub_100027E34();
          sub_10002741C(v109, v110, v111);
          sub_100005EC4();
          v15 = v146;

          v112 = sub_100286724();
          v114 = sub_10002741C(v112, v102, v113);

          *(v105 + 24) = v114;
          _os_log_impl(&_mh_execute_header, v103, v143, "%s Picking new conversation, groupUUID: %s%s", v105, 0x20u);
          sub_1002867D4(v115, v116, (&type metadata for Any + 1));
          sub_10000E50C();

          sub_100009ED0();
        }

        else
        {
        }

        v135 = v148;
        v136 = *(v144 + v60);
        *(v144 + v60) = v101;
        v137 = v101;

        v138 = [v135 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10027996C(v99);
        (v69)(v99, v15);
        goto LABEL_56;
      }

      v143 = v9;

      v1 = v144;
    }

    else
    {
      v143 = v9;
      if (qword_1006A0770 != -1)
      {
        sub_10000802C();
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      sub_1000075F0(v86, qword_1006A24E0);
      v87 = v11;

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v88, v89))
      {
        sub_100007C08();
        v151 = sub_100007608();
        *v11 = 136315394;
        v90 = [v87 UUID];
        v139 = v59;
        v91 = v143;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10028670C();
        (*(v142 + 8))(v91, v146);
        v92 = sub_100027E34();
        sub_10002741C(v92, v93, v94);
        sub_100005EC4();
        v15 = v146;

        *(v11 + 1) = v91;
        *(v11 + 6) = 2080;
        v95 = sub_10002741C(v139, *(&v59 + 1), &v151);

        *(v11 + 14) = v95;
        sub_10001C9AC(&_mh_execute_header, v88, v89, "[CSDConversationCallCoordinator] Setting conversation on call, conversationUUID=%s%s");
        swift_arrayDestroy();
        v1 = v144;
        sub_100009ED0();

        v11 = v145;
        sub_100009ED0();
      }

      else
      {
      }

      v117 = *(v1 + v60);
      *(v1 + v60) = v87;
      v118 = v87;
    }

    if (qword_1006A0770 == -1)
    {
LABEL_51:
      v119 = type metadata accessor for Logger();
      sub_1000075F0(v119, qword_1006A24E0);
      v120 = v11;

      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v121, v122))
      {
        sub_100007C08();
        v151 = sub_100007608();
        *v11 = 136315394;
        v123 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_10002741C(v123, v124, &v151);
        sub_100007738();
        *(v11 + 1) = v15;
        *(v11 + 6) = 2080;
        v125 = [v120 UUID];
        v126 = v143;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10028670C();
        v127 = v142;
        (*(v142 + 8))(v126, v146);
        v128 = sub_100027E34();
        sub_10002741C(v128, v129, v130);
        sub_100005EC4();
        v15 = v146;

        *(v11 + 14) = v126;
        sub_10001C9AC(&_mh_execute_header, v121, v122, "[CSDConversationCallCoordinator] Associating call with conversation, callUUID: %s, conversationUUID: %s");
        sub_10004A090();
        sub_100009ED0();

        sub_100009ED0();
      }

      else
      {

        v127 = v142;
        v126 = v143;
      }

      v131 = v140;
      *(v1 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) = 1;
      [v120 setBackedByGroupSession:1];
      v132 = [objc_allocWithZone(CXCallUpdate) init];
      [v132 setConversation:1];
      v133 = [v120 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v127 + 8))(v126, v15);
      [v132 setConversationGroupUUID:isa];

      [v131 updateWithOverrideCallProperties:v132];
LABEL_55:
      sub_100279C9C();
LABEL_56:
      sub_100005EDC();
      return;
    }

LABEL_64:
    sub_10000802C();
    swift_once();
    goto LABEL_51;
  }

  v21 = v20;
  v154 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v151 = sub_10001E578();
  v152 = v22;
  v153 = v23 & 1;
  if (v21 < 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v143 = v9;
  v24 = 0;
  v1 = v19 & 0xC000000000000001;
  if (v19 < 0)
  {
    v25 = v19;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFFF8;
  }

  v148 = (v19 + 56);
  v149 = v25;
  v147 = v19 + 64;
  while (1)
  {
    if (__OFADD__(v24++, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v27 = v151;
    v11 = v152;
    v15 = v153;
    v28 = sub_100007624();
    sub_10001E580(v28, v29, v15, v19);
    v31 = v30;
    [objc_allocWithZone(TUConversationMember) initWithHandle:v30];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v1)
    {
      break;
    }

    if (v15)
    {
      goto LABEL_66;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    v32 = 1 << *(v19 + 32);
    if (v27 >= v32)
    {
      goto LABEL_60;
    }

    v33 = v27 >> 6;
    v34 = *(v148 + (v27 >> 6));
    if (((v34 >> v27) & 1) == 0)
    {
      goto LABEL_61;
    }

    if (*(v19 + 36) != v11)
    {
      goto LABEL_62;
    }

    v35 = v34 & (-2 << (v27 & 0x3F));
    if (v35)
    {
      v32 = __clz(__rbit64(v35)) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v15 = v33 << 6;
      v37 = v33 + 1;
      v38 = (v147 + 8 * v33);
      while (v37 < (v32 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v15 += 64;
        ++v37;
        if (v40)
        {
          v41 = sub_100007624();
          sub_100010000(v41, v42, 0);
          v32 = __clz(__rbit64(v39)) + v15;
          goto LABEL_25;
        }
      }

      v43 = sub_100007624();
      sub_100010000(v43, v44, 0);
    }

LABEL_25:
    v45 = *(v19 + 36);
    v151 = v32;
    v152 = v45;
    v153 = 0;
LABEL_26:
    if (v24 == v21)
    {

      sub_100010000(v151, v152, v153);
      v46 = v154;
      v9 = v143;
      v1 = v144;
      goto LABEL_29;
    }
  }

  if (v15)
  {
    sub_100007624();
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    sub_10026D814(&unk_1006A2650, &qword_10057D170);
    v36 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v36(v150, 0);
    goto LABEL_26;
  }

  __break(1u);
LABEL_66:
  __break(1u);
}

void sub_10027996C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006A24E0);
  (*(v5 + 16))(v7, a1, v4);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = a1;
    v12 = v11;
    v23 = swift_slowAlloc();
    v25 = v23;
    *v12 = 136315394;
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_10002741C(v13, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = sub_10002741C(v17, v18, &v25);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "[CSDConversationCallCoordinator] Leaving conversation, conversationUUID: %s, callUUID: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if (*(v2 + OBJC_IVAR___CSDConversationCallCoordinator_translationSessionInProgress) == 1)
  {
    *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_translationSessionInProgress) = 0;
  }

  v20 = *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v20 leaveConversationWithUUID:isa];

  sub_10027EFB4(0);
}

void sub_100279C9C()
{
  sub_100005EF4();
  v3 = v2;
  v219 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  sub_100008070();
  sub_100006688();
  __chkstk_darwin(v4);
  v6 = &v213[-v5];
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v8 = sub_100007BF0(v7);
  __chkstk_darwin(v8);
  sub_100007BAC();
  v217 = v9 - v10;
  sub_100006838();
  __chkstk_darwin(v11);
  v218 = &v213[-v12];
  sub_100006838();
  __chkstk_darwin(v13);
  sub_10000C0F8();
  v15 = __chkstk_darwin(v14);
  v17 = &v213[-v16];
  __chkstk_darwin(v15);
  v19 = &v213[-v18];
  v20 = type metadata accessor for UUID();
  sub_100007FEC();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_100007FDC();
  v26 = v25 - v24;
  v27 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
  v224 = v3;
  v28 = [v3 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v221 = v27;
  LOBYTE(v28) = static UUID.== infix(_:_:)();
  v29 = *(v22 + 8);
  v222 = v26;
  v223 = v29;
  v30 = v26;
  v31 = v0;
  v225 = v20;
  v32 = v20;
  v33 = v22 + 8;
  v29(v30, v32);
  p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
  if (v28)
  {
LABEL_2:
    if (*(v31 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) == 1)
    {
      v35 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
      v36 = 1;
      sub_1002866E0();
      swift_beginAccess();
      v37 = *(v31 + v35);
      v38 = 0x10067D000;
      v39 = &selRef_setWindowed_;
      if (v37)
      {
        v40 = [v37 avMode];
        if ([*(v31 + 16) disconnectedReason] == 6 && v40 && !objc_msgSend(v224, "avMode"))
        {
          v220 = v33;
          if (p_inst_meths[238] != -1)
          {
            sub_10000802C();
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          sub_1000075F0(v41, qword_1006A24E0);
          v42 = v224;

          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.default.getter();

          v45 = os_log_type_enabled(v43, v44);
          v46 = v222;
          if (v45)
          {
            v47 = sub_100007C08();
            v219 = sub_100007630();
            v227 = v219;
            *v47 = 136315394;
            v48 = [v42 UUID];
            v218 = v43;
            sub_1002869C8(v48);

            sub_100009EDC();
            v51 = sub_100286020(v49, v50, &protocol conformance descriptor for UUID);
            v52 = v225;
            v43 = dispatch thunk of CustomStringConvertible.description.getter();
            v53 = v44;
            v33 = v220;
            v223(v222, v52);
            v54 = sub_100016F58();
            sub_10002741C(v54, v55, v56);
            sub_10000771C();

            *(v47 + 4) = v43;
            sub_100286854();
            sub_100286810();
            v57 = dispatch thunk of CustomStringConvertible.description.getter();
            sub_100286764(v57, v58);
            sub_100007738();
            *(v47 + 14) = v51;
            v46 = v222;
            v59 = v218;
            sub_1002868C8();
            sub_10000E50C();

            v60 = &selRef_prewarmMediaRequest_completion_;
            p_inst_meths = (&OBJC_PROTOCOL___CSDAssistantServicesObserver + 24);
            sub_100009ED0();

            v61 = v223;
          }

          else
          {

            v52 = v225;
            v33 = v220;
            v61 = v223;
            v60 = &selRef_prewarmMediaRequest_completion_;
          }

          sub_1002869C8([v42 v60[145]]);

          sub_10027ADE4(v46);
          v61(v46, v52);
          v38 = v60;
          v39 = &selRef_setWindowed_;
        }

        v131 = *(v31 + v35);
        if (v131)
        {
          v219 = [v131 v39[199]];
          v36 = 0;
        }

        else
        {
          v219 = 0;
          v36 = 1;
        }
      }

      else
      {
        v219 = 0;
      }

      v132 = v224;
      sub_10027EB88(v224);
      v134 = v133;
      v135 = *(v31 + v35);
      *(v31 + v35) = v132;
      v136 = v132;

      v137 = *(v31 + OBJC_IVAR___CSDConversationCallCoordinator__conversationStream);
      v227 = v136;
      v218 = v137;
      AsyncBroadcastStream.yield(_:)();
      if (v134)
      {
        v224 = v136;
        v138 = p_inst_meths[238];
        v139 = v134;
        if (v138 != -1)
        {
          sub_10000802C();
          swift_once();
        }

        v140 = type metadata accessor for Logger();
        sub_10000AF9C(v140, qword_1006A24E0);
        v141 = v224;

        v142 = v139;
        v137 = Logger.logObject.getter();
        v143 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v137, v143))
        {
          sub_100015070();
          v144 = swift_slowAlloc();
          v217 = v36;
          v145 = v144;
          v216 = sub_10000C554();
          v226 = v142;
          v227 = v216;
          *v145 = 136315650;
          sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
          v215 = v137;
          v146 = v142;
          v147 = String.init<A>(reflecting:)();
          sub_100286764(v147, v148);
          v214 = v143;
          sub_100007738();
          *(v145 + 4) = v143;
          *(v145 + 12) = 2080;
          v149 = [v141 *(v38 + 1160)];
          v150 = v33;
          v151 = v31;
          v152 = v222;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100009EDC();
          v155 = sub_100286020(v153, v154, &protocol conformance descriptor for UUID);
          v156 = v152;
          v157 = v134;
          v158 = v225;
          sub_10000C0EC();
          dispatch thunk of CustomStringConvertible.description.getter();
          sub_10028670C();
          v159 = v152;
          v31 = v151;
          v33 = v150;
          v39 = &selRef_setWindowed_;
          v223(v159, v158);
          v160 = sub_100027E34();
          sub_10002741C(v160, v161, v162);
          sub_100005EC4();

          *(v145 + 14) = v156;
          *(v145 + 22) = 2080;
          sub_100286810();
          v134 = v157;
          v163 = dispatch thunk of CustomStringConvertible.description.getter();
          sub_100286764(v163, v164);
          sub_100010160();
          *(v145 + 24) = v155;
          v165 = v215;
          _os_log_impl(&_mh_execute_header, v215, v214, "[CSDConversationCallCoordinator] Applying call-update: %s, conversationUUID: %s, callUUID: %s", v145, 0x20u);
          v137 = v216;
          sub_1002867D4(v166, v167, (&type metadata for Any + 1));
          sub_10000E50C();

          v36 = v217;
          sub_100009ED0();
        }

        else
        {
        }

        [*(v31 + 16) updateWithOverrideCallProperties:v142];

        p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
        v136 = v224;
      }

      v168 = [v136 v39[199]];
      if (v219 == v168)
      {
        v169 = v36;
      }

      else
      {
        v169 = 1;
      }

      if (v169 == 1)
      {
        v170 = v36;
        if (p_inst_meths[238] != -1)
        {
          sub_10000802C();
          swift_once();
        }

        v224 = v134;
        v171 = type metadata accessor for Logger();
        sub_1000075F0(v171, qword_1006A24E0);
        v172 = v136;

        v217 = v137;
        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.default.getter();

        v175 = os_log_type_enabled(v173, v174);
        v220 = v33;
        if (v175)
        {
          v176 = v39;
          v177 = swift_slowAlloc();
          v227 = swift_slowAlloc();
          *v177 = 136315906;
          v178 = v222;
          if (v170)
          {
            v179 = 0xE300000000000000;
            v180 = 7104878;
          }

          else
          {
            v226 = v219;
            type metadata accessor for TUConversationState(0);
            v180 = String.init<A>(reflecting:)();
            v179 = v181;
          }

          sub_10002741C(v180, v179, &v227);
          sub_100010160();
          *(v177 + 4) = v170;
          sub_100022DE4();
          v226 = [v172 v176[199]];
          type metadata accessor for TUConversationState(0);
          v182 = String.init<A>(reflecting:)();
          sub_100286764(v182, v183);
          sub_100010160();
          *(v177 + 14) = v170;
          *(v177 + 22) = 2080;
          sub_1002869C8([v172 UUID]);

          sub_100009EDC();
          v186 = sub_100286020(v184, v185, &protocol conformance descriptor for UUID);
          v187 = v225;
          sub_10000C0EC();
          dispatch thunk of CustomStringConvertible.description.getter();
          v188 = sub_100005EC4();
          v223(v188, v187);
          v189 = sub_100027E34();
          sub_10002741C(v189, v190, v191);
          sub_100005EC4();

          *(v177 + 24) = v178;
          *(v177 + 32) = 2080;
          sub_100286810();
          sub_10000C0EC();
          v192 = dispatch thunk of CustomStringConvertible.description.getter();
          sub_100286764(v192, v193);
          sub_100010160();
          *(v177 + 34) = v186;
          _os_log_impl(&_mh_execute_header, v173, v174, "[CSDConversationCallCoordinator] Conversation changed state, from: %s to: %s, conversationUUID: %s, callUUID: %s", v177, 0x2Au);
          swift_arrayDestroy();
          sub_100009ED0();

          v39 = &selRef_setWindowed_;
          sub_100009ED0();
        }

        v227 = [v172 v39[199]];
        AsyncBroadcastStream.yield(_:)();
        if ([v172 v39[199]] == 4)
        {
          v194 = v172;

          v195 = Logger.logObject.getter();
          v196 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v195, v196))
          {
            v197 = sub_100007C08();
            v219 = sub_100007630();
            v227 = v219;
            *v197 = 136315394;
            v198 = [v194 UUID];
            v199 = v31;
            v200 = v222;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100009EDC();
            v203 = sub_100286020(v201, v202, &protocol conformance descriptor for UUID);
            v204 = v225;
            v205 = dispatch thunk of CustomStringConvertible.description.getter();
            v206 = v200;
            v31 = v199;
            v223(v206, v204);
            v207 = sub_10001E3B8();
            sub_10002741C(v207, v208, v209);
            sub_100044480();

            *(v197 + 4) = v205;
            sub_100286848();
            v210 = dispatch thunk of CustomStringConvertible.description.getter();
            sub_100286764(v210, v211);
            sub_100007738();
            *(v197 + 14) = v203;
            _os_log_impl(&_mh_execute_header, v195, v196, "[CSDConversationCallCoordinator] Conversation in leaving state, conversationUUID: %s, callUUID: %s", v197, 0x16u);
            sub_1002868C8();
            sub_10000E50C();

            sub_100009ED0();
          }

          v212 = OBJC_IVAR___CSDConversationCallCoordinator_canRejoinConversation;
          if ((*(v31 + OBJC_IVAR___CSDConversationCallCoordinator_canRejoinConversation) & 1) == 0)
          {
            AsyncBroadcastStream.finish()();
            AsyncBroadcastStream.finish()();
          }

          *(v31 + v212) = 0;
        }

        else
        {
        }
      }

      else
      {
      }
    }

    goto LABEL_66;
  }

  v62 = *(v0 + 16);
  v63 = [*(v31 + 16) conversationGroupUUID];
  v220 = v22 + 8;
  v216 = v62;
  if (!v63)
  {
    sub_100007928();
    sub_10000AF74(v83, v84, v85, v225);
    sub_100009A04(v19, &unk_1006A3DD0, &unk_10057C9D0);
    p_inst_meths = (&OBJC_PROTOCOL___CSDAssistantServicesObserver + 24);
    goto LABEL_24;
  }

  v64 = v63;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v65 = 1;
  sub_100007C20();
  sub_10000AF74(v66, v67, v68, v225);
  sub_100009A04(v19, &unk_1006A3DD0, &unk_10057C9D0);
  v69 = [v62 conversationGroupUUID];
  if (v69)
  {
    v70 = v69;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = 0;
  }

  p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
  v71 = v225;
  sub_10000AF74(v17, v65, 1, v225);
  v72 = [v224 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007C20();
  sub_10000AF74(v73, v74, v75, v71);
  v76 = v219[12];
  sub_100285FC4(v17, v6, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100285FC4(v1, &v6[v76], &unk_1006A3DD0, &unk_10057C9D0);
  sub_10000C4F8(v6, 1, v71);
  if (v86)
  {
    v62 = &unk_1006A3DD0;
    sub_10000528C();
    sub_100009A04(v77, v78, v79);
    sub_10000528C();
    sub_100009A04(v80, v81, v82);
    sub_10000C4F8(&v6[v76], 1, v71);
    v33 = v220;
    if (v86)
    {
      sub_100009A04(v6, &unk_1006A3DD0, &unk_10057C9D0);
      goto LABEL_2;
    }

    goto LABEL_23;
  }

  sub_100285FC4(v6, v218, &unk_1006A3DD0, &unk_10057C9D0);
  sub_10000C4F8(&v6[v76], 1, v71);
  if (v86)
  {
    v62 = &unk_1006A3DD0;
    sub_10000528C();
    sub_100009A04(v87, v88, v89);
    sub_10000528C();
    sub_100009A04(v90, v91, v92);
    v93 = sub_100006694();
    (v223)(v93);
LABEL_23:
    sub_100009A04(v6, &unk_1006A2A30, &unk_10057D150);
    goto LABEL_24;
  }

  v106 = v31;
  v107 = v222;
  (*(v22 + 32))(v222, &v6[v76], v71);
  sub_100009EDC();
  sub_100286020(v108, v109, &protocol conformance descriptor for UUID);
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();
  v110 = v107;
  v31 = v106;
  v111 = v220;
  v112 = v223;
  v223(v110, v71);
  v113 = sub_10000C0EC();
  sub_100009A04(v113, v114, &unk_10057C9D0);
  sub_100009A04(v17, &unk_1006A3DD0, &unk_10057C9D0);
  v115 = v71;
  v33 = v111;
  v112(v218, v115);
  p_inst_meths = (&OBJC_PROTOCOL___CSDAssistantServicesObserver + 24);
  sub_100009A04(v6, &unk_1006A3DD0, &unk_10057C9D0);
  if (v62)
  {
    goto LABEL_2;
  }

LABEL_24:
  if (p_inst_meths[238] != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v94 = type metadata accessor for Logger();
  sub_1000075F0(v94, qword_1006A24E0);
  v95 = v224;

  v96 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100286920())
  {
    sub_100015070();
    v97 = swift_slowAlloc();
    v228 = sub_10000C554();
    *v97 = 136315650;
    sub_100009EDC();
    sub_100286020(v98, v99, &protocol conformance descriptor for UUID);
    sub_100286810();
    v100 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v101;
    sub_10002741C(v100, v101, &v228);
    sub_10000667C();

    *(v97 + 4) = v62;
    *(v97 + 12) = 2080;
    v103 = [v216 conversationGroupUUID];
    if (v103)
    {
      v102 = v103;
      v104 = v217;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v105 = 0;
    }

    else
    {
      v105 = 1;
      v104 = v217;
    }

    sub_10000AF74(v104, v105, 1, v225);
    sub_1002910A0();
    v116 = sub_100005F0C();
    sub_100009A04(v116, &unk_1006A3DD0, &unk_10057C9D0);
    v117 = sub_100006B30();
    sub_10002741C(v117, v118, v119);
    sub_100005F0C();

    *(v97 + 14) = v102;
    *(v97 + 22) = 2080;
    v120 = [v95 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v121 = dispatch thunk of CustomStringConvertible.description.getter();
    v122 = sub_100006694();
    (v223)(v122);
    v123 = sub_100006B30();
    sub_10002741C(v123, v124, v125);
    sub_100005F0C();

    *(v97 + 24) = v121;
    sub_1002866F0();
    _os_log_impl(v126, v127, v128, v129, v130, 0x20u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

LABEL_66:
  sub_100005EDC();
}

uint64_t sub_10027ADE4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006A24E0);
  (*(v5 + 16))(v7, a1, v4);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = a1;
    v12 = v11;
    v25 = swift_slowAlloc();
    v27 = v25;
    *v12 = 136315394;
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_10002741C(v13, v15, &v27);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = sub_10002741C(v17, v18, &v27);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "[CSDConversationCallCoordinator] Downgrading to AVLess, setting conversation provider to default, conversationUUID: %s, callUUID: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v20 = *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
  v21 = [objc_opt_self() faceTimeProvider];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v20 setProvider:v21 forConversationUUID:isa];

  sub_10027FCB0();
  return sub_10027BD8C(1);
}

void sub_10027B12C()
{
  sub_100005EF4();
  v3 = v2;
  v159 = v4;
  v162 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  sub_100008070();
  sub_100006688();
  __chkstk_darwin(v5);
  v7 = &v157 - v6;
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v9 = sub_100007BF0(v8);
  __chkstk_darwin(v9);
  sub_100007BAC();
  v161 = (v10 - v11);
  sub_100006838();
  __chkstk_darwin(v12);
  v160 = &v157 - v13;
  sub_100006838();
  v15 = __chkstk_darwin(v14);
  v17 = &v157 - v16;
  __chkstk_darwin(v15);
  sub_10000C0F8();
  __chkstk_darwin(v18);
  v20 = &v157 - v19;
  v21 = type metadata accessor for UUID();
  sub_100007FEC();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100007FDC();
  v27 = (v26 - v25);
  v28 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
  v166 = v3;
  v29 = [v3 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v163 = v28;
  LOBYTE(v29) = static UUID.== infix(_:_:)();
  v30 = *(v23 + 8);
  v164 = v27;
  v165 = v30;
  v167 = v21;
  v30(v27, v21);
  if (v29)
  {
LABEL_2:
    v31 = OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation;
    if (*(v0 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) == 1)
    {
      v32 = v0;
      v33 = v166;
      v34 = [v166 state];
      v35 = v165;
      if (v34 && [v33 state] != 4)
      {
        v162 = v31;
        if (qword_1006A0770 != -1)
        {
          sub_10000802C();
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_1000075F0(v36, qword_1006A24E0);
        v37 = v159;
        v38 = v33;

        v39 = v38;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v40, v41))
        {
          sub_100015070();
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v159 = v43;
          v160 = sub_100007630();
          v168[0] = v160;
          *v42 = 138412802;
          *(v42 + 4) = v37;
          *v43 = v37;
          sub_100286848();
          v44 = v37;
          v45 = [v39 UUID];
          v161 = v39;
          v46 = v45;
          LODWORD(v158) = v41;
          v47 = v164;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100009EDC();
          sub_100286020(v48, v49, &protocol conformance descriptor for UUID);
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v165(v47, v167);
          v51 = sub_100016F58();
          sub_10002741C(v51, v52, v53);
          sub_10000771C();
          v33 = v166;
          v54 = v167;

          *(v42 + 14) = v50;
          *(v42 + 22) = 2080;
          v55 = dispatch thunk of CustomStringConvertible.description.getter();
          v57 = sub_10002741C(v55, v56, v168);
          v39 = v161;

          *(v42 + 24) = v57;
          _os_log_impl(&_mh_execute_header, v40, v158, "[CSDConversationCallCoordinator] Leaving conversation since remote active participant left the conversation: %@, conversationUUID: %s, callUUID: %s", v42, 0x20u);
          sub_100009A04(v159, &unk_1006A2630, &qword_10057CB40);
          sub_100009ED0();

          swift_arrayDestroy();
          sub_100009ED0();

          v35 = v165;
          sub_100009ED0();
        }

        else
        {

          v47 = v164;
          v54 = v167;
        }

        v135 = *(v32 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
        sub_1002869C8([v39 UUID]);

        UUID._bridgeToObjectiveC()();
        v136 = sub_100005EC4();
        v35(v136, v54);
        [v135 leaveConversationWithUUID:v47];

        v31 = v162;
      }

      if (qword_1006A0770 != -1)
      {
        sub_10000802C();
        swift_once();
      }

      v137 = type metadata accessor for Logger();
      sub_1000075F0(v137, qword_1006A24E0);
      v138 = v33;

      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.default.getter();

      v141 = os_log_type_enabled(v139, v140);
      v142 = v164;
      if (v141)
      {
        v143 = sub_100007C08();
        v162 = v31;
        v144 = v143;
        v168[0] = sub_100007630();
        *v144 = 136315394;
        v145 = [v138 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100009EDC();
        sub_100286020(v146, v147, &protocol conformance descriptor for UUID);
        v148 = v167;
        dispatch thunk of CustomStringConvertible.description.getter();
        v149 = sub_10000667C();
        v165(v149, v148);
        v150 = sub_100016F58();
        sub_10002741C(v150, v151, v152);
        sub_10000771C();

        *(v144 + 4) = v142;
        sub_100286854();
        v153 = sub_1002868A8();
        sub_10002741C(v153, v154, v168);
        sub_100010160();
        *(v144 + 14) = v148;
        _os_log_impl(&_mh_execute_header, v139, v140, "[CSDConversationCallCoordinator] Stopped tracking conversation for call, conversationUUID: %s, callUUID: %s", v144, 0x16u);
        sub_10004A090();
        sub_100009ED0();

        v31 = v162;
        sub_100009ED0();
      }

      *(v32 + v31) = 0;
      v155 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
      sub_1002866E0();
      swift_beginAccess();
      v156 = *(v32 + v155);
      *(v32 + v155) = 0;

      sub_10027BD8C(2);
    }

    goto LABEL_40;
  }

  v158 = v0;
  v58 = v0[2];
  v0 = &selRef_beginMatchingExtensions;
  v59 = [v58 conversationGroupUUID];
  if (!v59)
  {
    sub_100007928();
    sub_10000AF74(v81, v82, v83, v167);
    v84 = &unk_1006A3DD0;
    v85 = &unk_10057C9D0;
    v86 = v20;
LABEL_22:
    sub_100009A04(v86, v84, v85);
    goto LABEL_23;
  }

  v60 = v59;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = 1;
  sub_100007C20();
  sub_10000AF74(v62, v63, v64, v167);
  sub_100009A04(v20, &unk_1006A3DD0, &unk_10057C9D0);
  v65 = [v58 conversationGroupUUID];
  if (v65)
  {
    v66 = v65;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = 0;
  }

  v68 = v166;
  v67 = v167;
  sub_10000AF74(v1, v61, 1, v167);
  v69 = [v68 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007C20();
  sub_10000AF74(v70, v71, v72, v67);
  v73 = *(v162 + 48);
  v74 = v67;
  v0 = &unk_1006A3DD0;
  sub_100285FC4(v1, v7, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100285FC4(v17, &v7[v73], &unk_1006A3DD0, &unk_10057C9D0);
  sub_10000C4F8(v7, 1, v74);
  if (v87)
  {
    sub_100035CA0();
    sub_100009A04(v75, v76, v77);
    sub_100035CA0();
    sub_100009A04(v78, v79, v80);
    sub_10000C4F8(&v7[v73], 1, v74);
    if (v87)
    {
      sub_100009A04(v7, &unk_1006A3DD0, &unk_10057C9D0);
      v0 = v158;
      goto LABEL_2;
    }

    goto LABEL_21;
  }

  sub_100285FC4(v7, v160, &unk_1006A3DD0, &unk_10057C9D0);
  sub_10000C4F8(&v7[v73], 1, v74);
  if (v87)
  {
    v0 = &unk_1006A3DD0;
    sub_100035CA0();
    sub_100009A04(v88, v89, v90);
    sub_100035CA0();
    sub_100009A04(v91, v92, v93);
    v94 = sub_100007624();
    (v165)(v94);
LABEL_21:
    v84 = &unk_1006A2A30;
    v85 = &unk_10057D150;
    v86 = v7;
    goto LABEL_22;
  }

  v111 = v164;
  (*(v23 + 32))(v164, &v7[v73], v74);
  sub_100009EDC();
  sub_100286020(v112, v113, &protocol conformance descriptor for UUID);
  sub_100027E34();
  LODWORD(v162) = dispatch thunk of static Equatable.== infix(_:_:)();
  v114 = v165;
  v165(v111, v74);
  sub_100006844();
  sub_100009A04(v115, v116, v117);
  sub_100006844();
  sub_100009A04(v118, v119, v120);
  v121 = sub_100007624();
  v114(v121);
  sub_100006844();
  sub_100009A04(v122, v123, v124);
  v0 = v158;
  if (v162)
  {
    goto LABEL_2;
  }

LABEL_23:
  v95 = v58;
  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v96 = type metadata accessor for Logger();
  sub_1000075F0(v96, qword_1006A24E0);
  v97 = v166;

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();

  v100 = os_log_type_enabled(v98, v99);
  v101 = v167;
  if (v100)
  {
    sub_100015070();
    v102 = swift_slowAlloc();
    v166 = sub_10000C554();
    v168[0] = v166;
    *v102 = 136315650;
    sub_100009EDC();
    sub_100286020(v103, v104, &protocol conformance descriptor for UUID);
    v105 = sub_1002868A8();
    sub_10002741C(v105, v106, v168);
    sub_10000667C();

    *(v102 + 4) = v0;
    sub_100286848();
    v107 = [v95 conversationGroupUUID];
    if (v107)
    {
      v108 = v107;
      v109 = v161;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v110 = 0;
    }

    else
    {
      v110 = 1;
      v109 = v161;
    }

    sub_10000AF74(v109, v110, 1, v101);
    v125 = sub_1002910A0();
    sub_100009A04(v109, &unk_1006A3DD0, &unk_10057C9D0);
    v126 = sub_100006B30();
    sub_10002741C(v126, v127, v128);
    sub_100005F0C();

    *(v102 + 14) = v125;
    *(v102 + 22) = 2080;
    v129 = [v97 groupUUID];
    v130 = v164;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v131 = dispatch thunk of CustomStringConvertible.description.getter();
    v165(v130, v101);
    v132 = sub_100006B30();
    sub_10002741C(v132, v133, v134);
    sub_100005F0C();

    *(v102 + 24) = v131;
    _os_log_impl(&_mh_execute_header, v98, v99, "[CSDConversationCallCoordinator] Ignoring handleConversationRemovedActiveParticipant, callUUID: %s, conversationGroupUUID:, %s, groupUUID: %s", v102, 0x20u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

LABEL_40:
  sub_100005EDC();
}

uint64_t sub_10027BD8C(char a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A2548, &unk_10057CFC0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = sub_10026D814(&unk_1006A0CA0, &unk_10057A400);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR___CSDConversationCallCoordinator_tearDownFailsafeTask;
  if (*(v2 + OBJC_IVAR___CSDConversationCallCoordinator_tearDownFailsafeTask))
  {

    Task.cancel()();

    *(v2 + v14) = 0;
  }

  v15 = OBJC_IVAR___CSDConversationCallCoordinator_tearDownContinuation;
  swift_beginAccess();
  sub_100285FC4(v2 + v15, v9, &qword_1006A2548, &unk_10057CFC0);
  if (sub_100015468(v9, 1, v10) == 1)
  {
    return sub_100009A04(v9, &qword_1006A2548, &unk_10057CFC0);
  }

  (*(v11 + 32))(v13, v9, v10);
  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000AF9C(v17, qword_1006A24E0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = v7;
    v21 = v20;
    v28 = swift_slowAlloc();
    v30[0] = v28;
    *v21 = 136315394;
    v22 = sub_10027674C(a1);
    v24 = sub_10002741C(v22, v23, v30);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = sub_10002741C(v25, v26, v30);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "[CSDConversationCallCoordinator] Completing tearDownContinuation, reason: %s, callUUID: %s", v21, 0x16u);
    swift_arrayDestroy();

    v7 = v29;
  }

  CheckedContinuation.resume(returning:)();
  (*(v11 + 8))(v13, v10);
  sub_10000AF74(v7, 1, 1, v10);
  swift_beginAccess();
  sub_100285F54(v7, v2 + v15);
  return swift_endAccess();
}

uint64_t sub_10027C1B4()
{
  sub_100006810();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for UUID();
  v1[5] = v4;
  sub_100005EB4(v4);
  v1[6] = v5;
  v1[7] = sub_100015418();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1002869E0();
  sub_10000F484();
  sub_100286020(v6, v7, &protocol conformance descriptor for ConversationCallCoordinator);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  v1[11] = v8;
  v1[12] = v9;
  v10 = sub_100286804();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10027C2BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t log, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_10028688C();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = sub_1002767F8();
  v26[13] = v29;
  v30 = v29;
  if (static UUID.== infix(_:_:)())
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v31 = v26[2];
    v32 = type metadata accessor for Logger();
    sub_1000075F0(v32, qword_1006A24E0);
    v33 = v31;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v31 = v26[2];
      sub_100007BFC();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v31;
      *v37 = v31;
      v38 = v31;
      _os_log_impl(&_mh_execute_header, v34, v35, "[CSDConversationCallCoordinator] handleActivitySessionCreationRequest: %@", v36, 0xCu);
      sub_100009A04(v37, &unk_1006A2630, &qword_10057CB40);
      sub_100009ED0();

      sub_100009ED0();
    }

    v39 = v26[2];

    v40 = [v39 activityIdentifier];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10028673C();

      if ((v41 & 1) == 0)
      {
        sub_10028677C([v30 UUID]);

        v46 = swift_task_alloc();
        v26[17] = v46;
        *v46 = v26;
        v46[1] = sub_10027CAD4;
        sub_10028681C();
LABEL_18:
        sub_10000D3E8();

        return sub_100276F1C();
      }
    }

    sub_10028677C([v30 UUID]);

    v69 = swift_task_alloc();
    v26[14] = v69;
    *v69 = v26;
    v69[1] = sub_10027C884;
    sub_10028681C();
    goto LABEL_18;
  }

  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v48 = v26[6];
  v47 = v26[7];
  v49 = v26[5];
  v50 = v26[3];
  v51 = type metadata accessor for Logger();
  sub_10000AF9C(v51, qword_1006A24E0);
  v83 = *(v48 + 16);
  v84 = v48 + 16;
  v83(v47, v50, v49);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();

  v54 = os_log_type_enabled(v52, v53);
  v55 = v26[6];
  v56 = v26[7];
  v57 = v26[5];
  if (v54)
  {
    sub_100015070();
    v58 = swift_slowAlloc();
    a10 = sub_10000C554();
    a14 = a10;
    *v58 = 136315650;
    *(v58 + 4) = sub_10002741C(0xD00000000000004CLL, 0x8000000100562DB0, &a14);
    sub_100022DE4();
    sub_100009EDC();
    sub_100286020(v59, v60, &protocol conformance descriptor for UUID);
    a11 = v30;
    log = v52;
    sub_100286718();
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_10002741C(v61, v62, &a14);
    sub_100027E40();

    *(v58 + 14) = v53;
    *(v58 + 22) = 2080;
    sub_100286718();
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v55 + 8))(v56, v57);
    v63 = sub_100006B3C();
    v66 = sub_10002741C(v63, v64, v65);

    *(v58 + 24) = v66;
    _os_log_impl(&_mh_execute_header, log, v53, "[CSDConversationCallCoordinator] %s Skipping handleActivitySessionCreationRequest, callUUID expected: %s, provided: %s", v58, 0x20u);
    sub_1002867D4(v67, v68, (&type metadata for Any + 1));
    sub_10000E50C();

    sub_100009ED0();
  }

  else
  {

    (*(v55 + 8))(v56, v57);
  }

  v72 = v26[5];
  v73 = v26[3];
  type metadata accessor for ConversationCallCoordinator.ActivitySessionCreationError(0);
  sub_100286020(&qword_1006A2628, type metadata accessor for ConversationCallCoordinator.ActivitySessionCreationError, &unk_10057D298);
  sub_100006104();
  swift_allocError();
  v83(v74, v73, v72);
  swift_willThrow();

  sub_100009EF4();
  sub_10000D3E8();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, log, a10, a11, v83, v84, a14, a15, a16, a17, a18);
}

uint64_t sub_10027C884()
{
  sub_10000F984();
  sub_100007648();
  sub_100286860();
  sub_100008060();
  *v3 = v1;
  v4 = v1[10];
  v5 = v1[6];
  v6 = v1[5];
  *v3 = *v2;
  v1[15] = v0;

  v7 = *(v5 + 8);
  v1[16] = v7;
  v7(v4, v6);
  sub_10001540C();
  sub_10001AB70();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10027CA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  v16 = *(v14 + 128);
  sub_10002201C();
  v17 = [v13 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002F1538(v15);
  v16(v15, v12);

  sub_10028686C();
  sub_100005F24();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_10027CAD4()
{
  sub_10000F984();
  sub_100007648();
  sub_100286860();
  sub_100008060();
  *v3 = v1;
  v4 = v1[9];
  v5 = v1[6];
  v6 = v1[5];
  *v3 = *v2;
  v1[18] = v0;

  v7 = *(v5 + 8);
  v1[19] = v7;
  v7(v4, v6);
  sub_10001540C();
  sub_10001AB70();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10027CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  v16 = *(v14 + 152);
  sub_10002201C();
  v17 = [v13 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002F1538(v15);
  v16(v15, v12);

  sub_10028686C();
  sub_100005F24();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_10027CD24()
{
  sub_10000C698();

  sub_100009EF4();

  return v1();
}

uint64_t sub_10027CDAC()
{
  sub_10000C698();

  sub_100009EF4();

  return v1();
}

uint64_t sub_10027CE34()
{
  sub_100006810();
  v1[20] = v2;
  v1[21] = v0;
  v3 = type metadata accessor for URL();
  v1[22] = v3;
  sub_100005EB4(v3);
  v1[23] = v4;
  v1[24] = swift_task_alloc();
  v5 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v1[25] = v5;
  sub_100007BF0(v5);
  v1[26] = swift_task_alloc();
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v6);
  v1[27] = sub_100015418();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v1[31] = v7;
  sub_100005EB4(v7);
  v1[32] = v8;
  v1[33] = sub_100015418();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  sub_1002869E0();
  sub_10000F484();
  sub_100286020(v9, v10, &protocol conformance descriptor for ConversationCallCoordinator);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  v1[40] = v11;
  v1[41] = v12;
  v13 = sub_100286804();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10027D038()
{
  v117 = v0;
  v1 = v0[32];
  v2 = v0[21];
  v3 = &selRef_prewarmMediaRequest_completion_;
  v4 = [v0[20] UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v4) = static UUID.== infix(_:_:)();
  v7 = *(v1 + 8);
  v5 = v1 + 8;
  v6 = v7;
  v0[42] = v7;
  v0[43] = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = sub_100005ED0();
  (v7)(v8);
  if ((v4 & 1) == 0)
  {
    v113 = v2;
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v10 = v0[20];
    v11 = type metadata accessor for Logger();
    sub_1000075F0(v11, qword_1006A24E0);

    v12 = v10;
    v13 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10028673C();

    if (sub_1002869B0())
    {
      v112 = v5;
      v14 = v0[39];
      v15 = v0[31];
      v109 = v0[20];
      sub_100015070();
      v16 = swift_slowAlloc();
      v116[0] = sub_10000C554();
      *v16 = 136315650;
      *(v16 + 4) = sub_100035D9C("handleJoinConversation(request:)", v105, v106, v107, v109, v111, v112, v113);
      *(v16 + 12) = 2080;
      sub_100009EDC();
      sub_100286020(v17, v18, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = sub_10002741C(v19, v20, v116);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2080;
      v22 = [v110 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v6(v14, v15);
      v24 = sub_10001E3B8();
      sub_10002741C(v24, v25, v26);
      sub_100044480();

      *(v16 + 24) = v23;
      sub_100017C80();
      _os_log_impl(v27, v28, v29, v30, v31, 0x20u);
      sub_100018614();
      swift_arrayDestroy();
      sub_100009ED0();

      sub_100009ED0();
    }

    goto LABEL_8;
  }

  v9 = sub_1002767F8();
  v0[44] = v9;
  v34 = v9;
  v35 = 0xD000000000000020;
  if ([v0[20] requestToShareScreen])
  {
    v37 = 4;
  }

  else
  {
    v37 = 1;
  }

  v39 = sub_1002766BC(v37) == 0xD000000000000014 && 0x8000000100562CF0 == v38;
  if (v39)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100005F0C();

    v40 = v0[31];
    v41 = v0[21];
    v42 = [v34 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 1;
    sub_100007C20();
    sub_10000AF74(v44, v45, v46, v40);
    v114 = *(v41 + 16);
    v47 = [v114 conversationGroupUUID];
    if (v47)
    {
      v48 = v47;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = 0;
    }

    v50 = v0[30];
    v49 = v0[31];
    v51 = v0[29];
    v52 = v0[25];
    v53 = v0[26];
    sub_10000AF74(v51, v43, 1, v49);
    v54 = *(v52 + 48);
    v35 = v0;
    v55 = v50;
    v56 = v54;
    sub_100285FC4(v55, v53, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100285FC4(v51, v56 + v53, &unk_1006A3DD0, &unk_10057C9D0);
    v57 = sub_100015468(v53, 1, v49);
    v58 = v0[31];
    if (v57 == 1)
    {
      v59 = v0[30];
      v35 = v56;
      sub_100009A04(v0[29], &unk_1006A3DD0, &unk_10057C9D0);
      sub_100009A04(v59, &unk_1006A3DD0, &unk_10057C9D0);
      sub_10000C4F8(v56 + v53, 1, v58);
      if (!v39)
      {
        goto LABEL_31;
      }

      sub_100009A04(v0[26], &unk_1006A3DD0, &unk_10057C9D0);
      v3 = &selRef_prewarmMediaRequest_completion_;
    }

    else
    {
      sub_100285FC4(v0[26], v0[28], &unk_1006A3DD0, &unk_10057C9D0);
      sub_10000C4F8(v56 + v53, 1, v58);
      if (v39)
      {
        v61 = v0[30];
        v62 = v0[31];
        v63 = v0[28];
        sub_100009A04(v0[29], &unk_1006A3DD0, &unk_10057C9D0);
        sub_100009A04(v61, &unk_1006A3DD0, &unk_10057C9D0);
        v6(v63, v62);
LABEL_31:
        sub_100009A04(v0[26], &unk_1006A2A30, &unk_10057D150);
LABEL_32:
        if (qword_1006A0770 != -1)
        {
          sub_10000802C();
          swift_once();
        }

        v64 = v0[21];
        v65 = type metadata accessor for Logger();
        sub_1000075F0(v65, qword_1006A24E0);
        v66 = v34;

        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = v0[39];
          sub_100015070();
          v70 = swift_slowAlloc();
          v71 = sub_10000C554();
          v116[0] = v71;
          *v70 = 136315650;
          *(v70 + 4) = sub_100035D9C("handleJoinConversation(request:)", v105, v106, v107, v108, v6, v71, v114);
          sub_100286854();
          sub_10028677C([v66 groupUUID]);

          sub_100009EDC();
          sub_100286020(v72, v73, &protocol conformance descriptor for UUID);
          v74 = dispatch thunk of CustomStringConvertible.description.getter();
          v76 = v75;
          v77 = sub_10001E3B8();
          v78(v77);
          sub_10002741C(v74, v76, v116);
          sub_10000771C();

          *(v70 + 14) = v69;
          *(v70 + 22) = 2080;
          v79 = [v115 conversationGroupUUID];
          if (v79)
          {
            v80 = v79;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v81 = 0;
          }

          else
          {
            v81 = 1;
          }

          v99 = v0[27];
          sub_10000AF74(v99, v81, 1, v0[31]);
          v100 = sub_1002910A0();
          v102 = v101;
          sub_100009A04(v99, &unk_1006A3DD0, &unk_10057C9D0);
          sub_10002741C(v100, v102, v116);
          sub_100044480();

          *(v70 + 24) = v99;
          _os_log_impl(&_mh_execute_header, v67, v68, "[CSDConversationCallCoordinator] %s Skipping, groupUUID expected: %s, provided conversationGroupUUID: %s", v70, 0x20u);
          sub_1002867D4(v103, v104, (&type metadata for Any + 1));
          sub_10000E50C();

          sub_100009ED0();
        }

        else
        {
        }

LABEL_8:
        sub_100010140();

        sub_100009EF4();

        return v32();
      }

      v82 = v0[39];
      v84 = v0[31];
      v83 = v0[32];
      v106 = v0[29];
      v107 = v0[30];
      v85 = v0[28];
      v108 = v35[26];
      (*(v83 + 32))(v82, v56 + v53, v84);
      sub_100009EDC();
      sub_100286020(v86, v87, &protocol conformance descriptor for UUID);
      v88 = dispatch thunk of static Equatable.== infix(_:_:)();
      v6(v82, v84);
      sub_1000444A4();
      sub_100009A04(v89, v90, v91);
      sub_1000444A4();
      sub_100009A04(v92, v93, v94);
      v95 = v85;
      v0 = v35;
      v6(v95, v84);
      sub_1000444A4();
      sub_100009A04(v96, v97, v98);
      v3 = &selRef_prewarmMediaRequest_completion_;
      if ((v88 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  sub_10028677C([v34 v3[145]]);

  v60 = swift_task_alloc();
  v0[45] = v60;
  *v60 = v0;
  v60[1] = sub_10027DAE8;

  return sub_100276F1C();
}

uint64_t sub_10027DAE8()
{
  sub_10000C698();
  sub_100286860();
  sub_100007BC8();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 368) = v0;

  sub_10001540C();
  (*(v1 + 336))(*(v1 + 304), *(v1 + 248));
  sub_10001540C();
  v6 = *(v5 + 328);
  v7 = *(v1 + 320);
  if (v0)
  {
    v8 = sub_10027E4A0;
  }

  else
  {
    v8 = sub_10027DC64;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10027DC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v77 = v12;
  v13 = [*(v12 + 160) activity];
  if (!v13)
  {

    goto LABEL_13;
  }

  v14 = v13;
  v15 = *(v12 + 352);
  v16 = *(v12 + 296);
  v17 = *(v12 + 256);
  v18 = [v13 UUID];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = *(v17 + 32);
  v20 = sub_10000BB1C();
  v19(v20);
  v21 = [v15 activitySessions];
  sub_100006844();
  sub_100006AF0(v22, v23, v24);
  sub_100006844();
  sub_10000CE3C(v25, v26, v27);
  sub_1000507CC();
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = swift_task_alloc();
  *(v29 + 16) = v16;
  sub_1002CAE38(sub_10028621C, v29, v28);
  v31 = v30;

  if (!v31)
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000AF9C(v48, qword_1006A24E0);
    sub_10000528C();
    v49();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v12 + 336);
    v54 = *(v12 + 264);
    if (v52)
    {
      sub_100007BFC();
      v75 = v55;
      v56 = swift_slowAlloc();
      sub_100015070();
      v57 = swift_slowAlloc();
      v76 = v57;
      *v56 = 136315138;
      sub_100009EDC();
      sub_100286020(v58, v59, &protocol conformance descriptor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      v63 = sub_100006B3C();
      v53(v63);
      sub_10002741C(v60, v62, &v76);
      sub_100044480();

      *(v56 + 4) = v54;
      sub_100017C80();
      _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
      sub_100009B7C(v57);
      sub_100009ED0();

      sub_100009ED0();
    }

    else
    {

      v69 = sub_100006B3C();
      v53(v69);
    }

    v70 = sub_100025BE0();
    v71(v70);
LABEL_13:
    sub_100010140();
    sub_100286748();

    sub_100009EF4();
    sub_100011274();

    __asm { BRAA            X1, X16 }
  }

  v32 = *(v12 + 272);
  v33 = *(v12 + 280);
  v34 = *(v12 + 248);
  v35 = *(v12 + 168);
  v36 = [v31 UUID];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (v19)(v33, v32, v34);
  v37 = *(v35 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v12 + 376) = isa;
  *(v12 + 16) = v12;
  *(v12 + 24) = sub_10027E144;
  v39 = swift_continuation_init();
  *(v12 + 136) = sub_10026D814(&unk_1006A6330, &unk_10057D160);
  *(v12 + 80) = _NSConcreteStackBlock;
  *(v12 + 88) = 1107296256;
  *(v12 + 96) = sub_1003432B0;
  *(v12 + 104) = &unk_100622110;
  *(v12 + 112) = v39;
  [v37 launchApplicationForActivitySessionUUID:isa authorizedExternally:0 forceBackground:0 completionHandler:?];
  sub_100011274();

  return _swift_continuation_await(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_10027E144()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 384) = v4;
  v5 = v3[41];
  v6 = v3[40];
  if (v4)
  {
    v7 = sub_10027E7F0;
  }

  else
  {
    v7 = sub_10027E268;
  }

  return _swift_task_switch(v7, v6, v5);
}

id sub_10027E268()
{
  v1 = *(v0 + 160);

  v2 = [v1 activity];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isScreenSharingActivity];

    if (v4)
    {
      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v6 = result;
      v7 = [objc_opt_self() screenSharingAppURL];
      if (v7)
      {
        v9 = *(v0 + 184);
        v8 = *(v0 + 192);
        v10 = *(v0 + 176);
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        URL._bridgeToObjectiveC()(v11);
        v7 = v12;
        (*(v9 + 8))(v8, v10);
      }

      v13 = *(v0 + 352);
      v14 = *(v0 + 336);
      v15 = *(v0 + 280);
      v16 = *(v0 + 248);
      [v6 openURL:v7 configuration:0 completionHandler:0];

      v14(v15, v16);
    }

    else
    {
      v19 = *(v0 + 352);
      (*(v0 + 336))(*(v0 + 280), *(v0 + 248));
    }
  }

  else
  {
    v17 = *(v0 + 336);

    v18 = sub_100005ED0();
    v17(v18);
  }

  v20 = sub_100025BE0();
  v21(v20);
  sub_100010140();
  sub_100286748();

  sub_100009EF4();

  return v22();
}

uint64_t sub_10027E4A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void (*a10)(uint64_t), os_log_t log, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_10028688C();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v29 = v26[44];
  v30 = type metadata accessor for Logger();
  sub_1000075F0(v30, qword_1006A24E0);
  v31 = v29;
  swift_errorRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v26[44];
  if (v34)
  {
    v67 = v26[46];
    a10 = v26[42];
    v70 = v33;
    sub_100015070();
    v36 = swift_slowAlloc();
    a15 = sub_10000C554();
    *v36 = 136315650;
    v37 = [v35 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100009EDC();
    sub_100286020(v38, v39, &protocol conformance descriptor for UUID);
    sub_100286718();
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = sub_10001E3B8();
    log = v32;
    a10(v43);
    v44 = sub_10002741C(v40, v42, &a15);

    *(v36 + 4) = v44;
    sub_100286854();
    v45 = [v35 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100286718();
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v49 = sub_10001E3B8();
    a10(v49);
    v50 = sub_10002741C(v46, v48, &a15);

    *(v36 + 14) = v50;
    *(v36 + 22) = 2080;
    v26[18] = v67;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v51 = String.init<A>(reflecting:)();
    v53 = sub_10002741C(v51, v52, &a15);

    *(v36 + 24) = v53;
    _os_log_impl(&_mh_execute_header, v32, v70, "[CSDConversationCallCoordinator] Could not join conversation, conversationUUID: %s, groupUUID: %s, error: %s", v36, 0x20u);
    sub_1002867D4(v54, v55, (&type metadata for Any + 1));
    sub_10000E50C();

    sub_100009ED0();
  }

  else
  {
  }

  sub_100010140();
  v68 = v57;
  v69 = v56;
  v71 = v26[24];

  sub_100009EF4();
  sub_10000D3E8();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, log, v68, v69, v71, a15, a16, a17, a18);
}

void sub_10027E7F0(uint64_t a1)
{
  v2 = v1[47];
  swift_willThrow();

  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000075F0(v3, qword_1006A24E0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[48];
  v8 = v1[44];
  v9 = v1[42];
  v10 = v1[35];
  v11 = v1[31];
  if (v6)
  {
    sub_100007BFC();
    v12 = swift_slowAlloc();
    sub_100015070();
    v21 = v9;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v1[19] = v7;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v14 = String.init<A>(reflecting:)();
    v16 = sub_10002741C(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "[CSDConversationCallCoordinator] LaunchApplication failed with error: %s", v12, 0xCu);
    sub_100009B7C(v13);
    sub_100009ED0();

    sub_100009ED0();

    v21(v10, v11);
  }

  else
  {

    v9(v10, v11);
  }

  v17 = sub_100025BE0();
  v18(v17);
  sub_100010140();
  sub_100286748();

  sub_100009EF4();
  sub_100011274();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10027EA54(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 activity];
  v8 = [v7 UUID];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v9 & 1;
}

void sub_10027EB88(void *a1)
{
  v3 = [objc_allocWithZone(CXCallUpdate) init];
  v4 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
  swift_beginAccess();
  v36 = v1;
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = [v5 isScreenEnabled] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = &selRef_setWindowed_;
  v8 = [a1 state];
  v9 = 0;
  if (v8 == 3 && (v6 & 1) == 0)
  {
    if ([a1 isScreenEnabled])
    {
      v9 = 0;
    }

    else
    {
      [v3 setSharingScreen:0];
      v9 = 1;
    }
  }

  v35 = v9;
  v37 = v3;
  v10 = [a1 activitySessions];
  sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
  sub_10000CE3C(&unk_1006A2600, &unk_1006A4820, TUConversationActivitySession_ptr);
  sub_100027E34();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v11 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v11 = v39;
    v12 = v40;
    v13 = v41;
    v14 = v42;
    v15 = v43;
  }

  else
  {
    v16 = -1 << *(v11 + 32);
    v12 = v11 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v11 + 56);

    v14 = 0;
  }

  v19 = 0;
  v20 = (v13 + 64) >> 6;
  do
  {
    if (v11 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_37;
      }

      swift_dynamicCast();
      v23 = v38;
      if (!v38)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v21 = v14;
      v22 = v15;
      if (!v15)
      {
        while (1)
        {
          v14 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v14 >= v20)
          {
            goto LABEL_37;
          }

          v22 = *(v12 + 8 * v14);
          ++v21;
          if (v22)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        return;
      }

LABEL_21:
      v15 = (v22 - 1) & v22;
      v23 = *(*(v11 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v22)))));
      if (!v23)
      {
        goto LABEL_37;
      }
    }

    if ([v23 v7[199]] == 1)
    {
      v24 = [v23 activity];
      v25 = [v24 activityIdentifier];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
      {

        v32 = 0;
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v32 = (v31 & 1) == 0;
      }

      v7 = &selRef_setWindowed_;
    }

    else
    {

      v32 = 0;
    }

    v33 = __OFADD__(v19, v32);
    v19 += v32;
  }

  while (!v33);
  __break(1u);
LABEL_37:
  sub_100022DDC(v11);

  if (v19 <= 0)
  {
    v34 = v37;
    if (!v19 && ([*(v36 + 16) mixesVoiceWithMedia] & 1) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v34 = v37;
    if (([*(v36 + 16) mixesVoiceWithMedia] & 1) == 0)
    {
LABEL_39:
      [v34 setMixesVoiceWithMedia:v19 > 0];
      return;
    }
  }

  if ((v35 & 1) == 0)
  {
  }
}

uint64_t ConversationCallCoordinator.deinit()
{
  v1 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
  type metadata accessor for UUID();
  sub_100008070();
  (*(v2 + 8))(v0 + v1);

  swift_unknownObjectRelease();
  sub_100009B7C((v0 + OBJC_IVAR___CSDConversationCallCoordinator_identityProvider));

  swift_unknownObjectRelease();

  sub_100009A04(v0 + OBJC_IVAR___CSDConversationCallCoordinator_tearDownContinuation, &qword_1006A2548, &unk_10057CFC0);

  return v0;
}

uint64_t ConversationCallCoordinator.__deallocating_deinit()
{
  ConversationCallCoordinator.deinit();
  v1 = *((swift_isaMask & *v0) + 0x30);
  v2 = *((swift_isaMask & *v0) + 0x34);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10027F194()
{
  sub_100005EF4();
  v3 = v0;
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_10000E4F4();
  if (*(v0 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) == 1)
  {
    v17 = sub_1002767F8();
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000AF9C(v18, qword_1006A24E0);
    v19 = v17;
    v20 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_100286920())
    {
      sub_100007BFC();
      v21 = swift_slowAlloc();
      sub_100015070();
      v40 = swift_slowAlloc();
      *v21 = 136315138;
      v22 = sub_100286998();
      sub_1002867EC(v22);

      sub_100009EDC();
      sub_100286020(v23, v24, &protocol conformance descriptor for UUID);
      dispatch thunk of CustomStringConvertible.description.getter();
      v25 = sub_1000066A0();
      v26(v25);
      v27 = sub_100016F58();
      sub_10002741C(v27, v28, v29);
      sub_10000771C();

      *(v21 + 4) = v2;
      sub_1002866F0();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      sub_100009B7C(v40);
      sub_100009ED0();

      sub_100009ED0();
    }

    v35 = *(v3 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
    v36 = sub_100286998();
    sub_1002867EC(v36);

    UUID._bridgeToObjectiveC()();
    v37 = sub_100286834();
    v38(v37);
    [v35 setIsHeld:1 forConversationUUID:v2];

    goto LABEL_14;
  }

  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000075F0(v5, qword_1006A24E0);

  v39 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100286980();
  if (sub_100286950())
  {
    sub_100007C08();
    v6 = sub_100007608();
    sub_100286828(v6);
    *v1 = 136315394;
    sub_10003DB48();
    v9 = sub_10002741C(0xD000000000000010, v7, v8);
    sub_100015E8C(v9);
    v10 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
    sub_100009EDC();
    sub_100286020(v11, v12, &protocol conformance descriptor for UUID);
    v13 = sub_10003A558();
    sub_100286908(v13, v14);
    sub_10000667C();

    *(v1 + 14) = v10;
    sub_10001C9AC(&_mh_execute_header, v39, v2, "[CSDConversationCallCoordinator] %s Not tracking conversation, callUUID: %s");
    sub_100018614();
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();

LABEL_14:
    sub_100005EDC();
    return;
  }

  sub_100005EDC();
}

void sub_10027F624()
{
  sub_100005EF4();
  v3 = v0;
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_10000E4F4();
  if (*(v0 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) == 1)
  {
    v17 = sub_1002767F8();
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000AF9C(v18, qword_1006A24E0);
    v19 = v17;
    v20 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_100286920())
    {
      sub_100007BFC();
      v21 = swift_slowAlloc();
      sub_100015070();
      v40 = swift_slowAlloc();
      *v21 = 136315138;
      v22 = sub_100286998();
      sub_1002867EC(v22);

      sub_100009EDC();
      sub_100286020(v23, v24, &protocol conformance descriptor for UUID);
      dispatch thunk of CustomStringConvertible.description.getter();
      v25 = sub_1000066A0();
      v26(v25);
      v27 = sub_100016F58();
      sub_10002741C(v27, v28, v29);
      sub_10000771C();

      *(v21 + 4) = v2;
      sub_1002866F0();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      sub_100009B7C(v40);
      sub_100009ED0();

      sub_100009ED0();
    }

    v35 = *(v3 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
    v36 = sub_100286998();
    sub_1002867EC(v36);

    UUID._bridgeToObjectiveC()();
    v37 = sub_100286834();
    v38(v37);
    [v35 setIsHeld:0 forConversationUUID:v2];

    goto LABEL_14;
  }

  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000075F0(v5, qword_1006A24E0);

  v39 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100286980();
  if (sub_100286950())
  {
    sub_100007C08();
    v6 = sub_100007608();
    sub_100286828(v6);
    *v1 = 136315394;
    sub_10003DB48();
    v9 = sub_10002741C(0xD000000000000019, v7, v8);
    sub_100015E8C(v9);
    v10 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
    sub_100009EDC();
    sub_100286020(v11, v12, &protocol conformance descriptor for UUID);
    v13 = sub_10003A558();
    sub_100286908(v13, v14);
    sub_10000667C();

    *(v1 + 14) = v10;
    sub_10001C9AC(&_mh_execute_header, v39, v2, "[CSDConversationCallCoordinator] %s Not tracking conversation, callUUID: %s");
    sub_100018614();
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();

LABEL_14:
    sub_100005EDC();
    return;
  }

  sub_100005EDC();
}

void sub_10027FAC8(char a1, const char *a2, SEL *a3)
{
  if (qword_1006A0770 != -1)
  {
    sub_10000802C();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000075F0(v7, qword_1006A24E0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (sub_100286920())
  {
    v10 = swift_slowAlloc();
    sub_100015070();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2080;
    type metadata accessor for UUID();
    sub_100009EDC();
    sub_100286020(v12, v13, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = sub_10002741C(v14, v15, &v18);

    *(v10 + 10) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, a2, v10, 0x12u);
    sub_100009B7C(v11);
    sub_100009ED0();

    sub_100009ED0();
  }

  v17 = [objc_allocWithZone(CXCallUpdate) init];
  [v17 *a3];
  [*(v3 + 16) updateWithOverrideCallProperties:v17];
}

id sub_10027FCB0()
{
  v1 = v0;
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22[-v3];
  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006A24E0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
    swift_beginAccess();
    v10 = *(v1 + v9);
    if (v10)
    {
      v11 = [v10 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = type metadata accessor for UUID();
    sub_10000AF74(v4, v12, 1, v13);
    v14 = sub_1002910A0();
    v16 = v15;
    sub_100009A04(v4, &unk_1006A3DD0, &unk_10057C9D0);
    v17 = sub_10002741C(v14, v16, &v23);

    *(v8 + 4) = v17;
    *(v8 + 12) = 2080;
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = sub_10002741C(v18, v19, &v23);

    *(v8 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "[CSDConversationCallCoordinator] Unsubscribing from CSDConversationManager callbacks, conversationUUID: %s, callUUID: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  return [*(v1 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager) removeDelegate:v1];
}

uint64_t sub_10027FF94()
{
  sub_100006810();
  *(v1 + 16) = v0;
  *(v1 + 64) = v2;
  sub_1002869E0();
  sub_10000F484();
  *(v1 + 24) = sub_100286020(v3, v4, &protocol conformance descriptor for ConversationCallCoordinator);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  v7 = sub_100286804();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100280030()
{
  sub_1000066BC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100280130;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100280130()
{
  sub_10000C698();
  v1 = *v0;
  v2 = *v0;
  sub_100008060();
  *v3 = v2;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_100280268, v5, v4);
}

uint64_t sub_100280288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v129 = a3;
  v5 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v5 - 8);
  v127 = v120 - v6;
  v135 = type metadata accessor for UUID();
  v132 = *(v135 - 8);
  v7 = __chkstk_darwin(v135);
  v124 = v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v128 = v120 - v10;
  __chkstk_darwin(v9);
  v133 = v120 - v11;
  v12 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v125 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v126 = v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v131 = v120 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = v120 - v18;
  v123 = v20;
  __chkstk_darwin(v17);
  v134 = v120 - v21;
  v22 = sub_10026D814(&qword_1006A2548, &unk_10057CFC0);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v120 - v26;
  v28 = OBJC_IVAR___CSDConversationCallCoordinator_tearDownContinuation;
  swift_beginAccess();
  sub_100285FC4(a2 + v28, v27, &qword_1006A2548, &unk_10057CFC0);
  v29 = sub_10026D814(&unk_1006A0CA0, &unk_10057A400);
  v30 = sub_100015468(v27, 1, v29);
  sub_100009A04(v27, &qword_1006A2548, &unk_10057CFC0);
  if (v30 == 1)
  {
    (*(*(v29 - 8) + 16))(v25, a1, v29);
    sub_10000AF74(v25, 0, 1, v29);
    swift_beginAccess();
    sub_100285F54(v25, a2 + v28);
    swift_endAccess();
    v31 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
    swift_beginAccess();
    v32 = *(a2 + v31);
    v130 = v32;
    if (v32)
    {
      v33 = v32;
      v34 = [v33 UUID];
      v35 = v134;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000AF74(v35, 0, 1, v135);
      v121 = [v33 avMode];
    }

    else
    {
      v35 = v134;
      sub_10000AF74(v134, 1, 1, v135);
      v121 = 0;
    }

    v122 = [*(a2 + 16) disconnectedReason];
    v45 = sub_1002813F4(a2, v122);
    v47 = v46;
    if (qword_1006A0770 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    v49 = sub_10000AF9C(v48, qword_1006A24E0);
    sub_100285FC4(v35, v19, &unk_1006A3DD0, &unk_10057C9D0);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v120[1] = v49;
      v52 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *v52 = 136315906;
      *(v52 + 4) = sub_10002741C(v45, v47, &v137);
      *(v52 + 12) = 2080;
      if (v130)
      {
        v136 = v121;
        v53 = String.init<A>(reflecting:)();
        v55 = v54;
      }

      else
      {
        v55 = 0xE300000000000000;
        v53 = 7104878;
      }

      v58 = sub_10002741C(v53, v55, &v137);

      *(v52 + 14) = v58;
      *(v52 + 22) = 2080;
      v59 = sub_1002910A0();
      v61 = v60;
      sub_100009A04(v19, &unk_1006A3DD0, &unk_10057C9D0);
      v62 = sub_10002741C(v59, v61, &v137);

      *(v52 + 24) = v62;
      *(v52 + 32) = 2080;
      sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v56 = v135;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = sub_10002741C(v63, v64, &v137);

      *(v52 + 34) = v65;
      _os_log_impl(&_mh_execute_header, v50, v51, "[CSDConversationCallCoordinator] Tear-down, %s, avMode: %s, conversationUUID: %s, callUUID: %s", v52, 0x2Au);
      swift_arrayDestroy();

      v35 = v134;
      v57 = v131;
    }

    else
    {

      sub_100009A04(v19, &unk_1006A3DD0, &unk_10057C9D0);
      v56 = v135;
      v57 = v131;
    }

    sub_100285FC4(v35, v57, &unk_1006A3DD0, &unk_10057C9D0);
    v66 = sub_100015468(v57, 1, v56);
    v68 = v132;
    v67 = v133;
    if (v66 == 1)
    {

      sub_100009A04(v57, &unk_1006A3DD0, &unk_10057C9D0);
      goto LABEL_35;
    }

    result = (*(v132 + 32))(v133, v57, v56);
    if (v122 == 52)
    {
LABEL_25:

      v69 = v128;
      (*(v68 + 16))(v128, v67, v56);

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *v72 = 136315394;
        sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LODWORD(v135) = v71;
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v74 = v69;
        v76 = v75;
        v77 = *(v68 + 8);
        v77(v74, v56);
        v78 = sub_10002741C(v73, v76, &v137);

        *(v72 + 4) = v78;
        *(v72 + 12) = 2080;
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = sub_10002741C(v79, v80, &v137);

        *(v72 + 14) = v81;
        v67 = v133;
        _os_log_impl(&_mh_execute_header, v70, v135, "[CSDConversationCallCoordinator] AVLess downgrade detected, conversationUUID: %s, callUUID: %s", v72, 0x16u);
        swift_arrayDestroy();
        v35 = v134;
      }

      else
      {

        v77 = *(v68 + 8);
        v77(v69, v56);
      }

      sub_10027ADE4(v67);

      v77(v67, v56);
      return sub_100009A04(v35, &unk_1006A3DD0, &unk_10057C9D0);
    }

    if (v122 == 6)
    {
      if (!v130 || v121)
      {
        if (!v130)
        {
          __break(1u);
          return result;
        }
      }

      else if ((*(a2 + OBJC_IVAR___CSDConversationCallCoordinator_translationSessionInProgress) & 1) == 0)
      {
        goto LABEL_25;
      }

      v82 = v130;

      v83 = [v82 activeRemoteParticipants];

      sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v84 = sub_10001E550();

      if (v84 >= 1)
      {
        v85 = v124;
        (*(v68 + 16))(v124, v67, v56);

        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v135 = swift_slowAlloc();
          v137 = v135;
          *v88 = 136315394;
          sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v89 = v56;
          LODWORD(v131) = v87;
          v90 = dispatch thunk of CustomStringConvertible.description.getter();
          v91 = v85;
          v92 = v68;
          v94 = v93;
          v132 = *(v92 + 8);
          (v132)(v91, v56);
          v95 = sub_10002741C(v90, v94, &v137);

          *(v88 + 4) = v95;
          *(v88 + 12) = 2080;
          v96 = dispatch thunk of CustomStringConvertible.description.getter();
          v98 = sub_10002741C(v96, v97, &v137);

          *(v88 + 14) = v98;
          _os_log_impl(&_mh_execute_header, v86, v131, "[CSDConversationCallCoordinator] Remote hangup, waiting for conversation avMode to change or remote participant to leave, conversationUUID: %s, callUUID: %s", v88, 0x16u);
          swift_arrayDestroy();

          (v132)(v133, v89);
        }

        else
        {

          v111 = *(v68 + 8);
          v111(v85, v56);
          v111(v67, v56);
        }

        v112 = type metadata accessor for TaskPriority();
        sub_10000AF74(v127, 1, 1, v112);
        v113 = v134;
        v114 = v126;
        sub_100285FC4(v134, v126, &unk_1006A3DD0, &unk_10057C9D0);
        v115 = sub_100286020(&unk_1006A25D0, type metadata accessor for ConversationCallCoordinator, &protocol conformance descriptor for ConversationCallCoordinator);
        v116 = (*(v125 + 80) + 40) & ~*(v125 + 80);
        v117 = swift_allocObject();
        v117[2] = a2;
        v117[3] = v115;
        v117[4] = a2;
        sub_100286068(v114, v117 + v116);
        swift_retain_n();
        sub_1002762F0();
        v119 = v118;

        sub_100009A04(v113, &unk_1006A3DD0, &unk_10057C9D0);
        *(a2 + OBJC_IVAR___CSDConversationCallCoordinator_tearDownFailsafeTask) = v119;
      }
    }

    else
    {
    }

    sub_10027996C(v67);
    (*(v68 + 8))(v67, v56);
    v35 = v134;
LABEL_35:
    v99 = v129;
    v100 = 0;
    switch(v129)
    {
      case 1:
      case 2:
        sub_100281540(v129, a2);
        v100 = 3;
        goto LABEL_45;
      case 3:
        goto LABEL_38;
      case 4:
        v110 = 4;
        goto LABEL_43;
      case 5:
        goto LABEL_45;
      default:
        if (*(a2 + OBJC_IVAR___CSDConversationCallCoordinator_relaySupportEnabled))
        {
LABEL_38:

          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            *v103 = 136315394;
            v104 = sub_100343480(v99);
            v106 = sub_10002741C(v104, v105, &v137);

            *(v103 + 4) = v106;
            *(v103 + 12) = 2080;
            sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v107 = dispatch thunk of CustomStringConvertible.description.getter();
            v109 = sub_10002741C(v107, v108, &v137);

            *(v103 + 14) = v109;
            _os_log_impl(&_mh_execute_header, v101, v102, "[CSDConversationCallCoordinator] Call remains SharePlay capable, reason: %s, callUUID: %s", v103, 0x16u);
            swift_arrayDestroy();
            v35 = v134;
          }
        }

        else
        {
          v110 = 0;
LABEL_43:
          sub_100281540(v110, a2);
        }

        v100 = 0;
LABEL_45:
        sub_10027FCB0();
        sub_10027BD8C(v100);

        break;
    }

    return sub_100009A04(v35, &unk_1006A3DD0, &unk_10057C9D0);
  }

  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000AF9C(v36, qword_1006A24E0);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v138[0] = v40;
    *v39 = 136315138;
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = sub_10002741C(v41, v42, v138);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "[CSDConversationCallCoordinator] tearDownContinuation already set! This indicates a bug in the caller, callUUID: %s", v39, 0xCu);
    sub_100009B7C(v40);
  }

  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1002813F4(uint64_t a1, int a2)
{
  strcpy(v8, "call-status: ");
  HIWORD(v8[1]) = -4864;
  v2 = *(a1 + 16);
  [v2 status];
  v3._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v3);

  v4 = v8[0];
  if ([v2 status] == 5 || objc_msgSend(v2, "status") == 6)
  {
    _StringGuts.grow(_:)(25);

    v5._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 0xD000000000000017;
    v6._object = 0x8000000100562C60;
    String.append(_:)(v6);

    return v8[0];
  }

  return v4;
}

void sub_100281540(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006A24E0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_100343480(v3);
    v10 = sub_10002741C(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = sub_10002741C(v11, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "[CSDConversationCallCoordinator] Call is no longer SharePlay capable, reason: %s, callUUID: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = [objc_allocWithZone(CXCallUpdate) init];
  [v14 setIsSharePlayCapable:0];
  [*(a2 + 16) updateWithOverrideCallProperties:v14];
}

uint64_t sub_100281780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  type metadata accessor for ConversationCallCoordinator(0);
  sub_100286020(&unk_1006A25D0, type metadata accessor for ConversationCallCoordinator, &protocol conformance descriptor for ConversationCallCoordinator);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v9;
  v5[12] = v8;

  return _swift_task_switch(sub_10028192C, v9, v8);
}

uint64_t sub_10028192C()
{
  sub_10000C698();
  v0[13] = [*(v0[2] + OBJC_IVAR___CSDConversationCallCoordinator_serverBag) sharePlayForCallsRemoteHangupFailsafeSeconds];
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_100281A24;
  sub_100007624();

  return sub_1003B3858();
}

uint64_t sub_100281A24()
{
  sub_1000066BC();
  sub_100286860();
  sub_100007BC8();
  *v4 = v3;
  v5 = v1[10];
  v6 = v1[9];
  v7 = v1[8];
  *v4 = *v2;
  *(v3 + 120) = v0;

  (*(v6 + 8))(v5, v7);
  sub_10001540C();
  v9 = *(v8 + 96);
  v10 = v1[11];
  if (v0)
  {
    v11 = sub_100281DF0;
  }

  else
  {
    v11 = sub_100281BAC;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100281DF0()
{
  sub_100006810();

  sub_100009EF4();

  return v0();
}

void ConversationCallCoordinator.handleSetSharingScreen(_:sharingScreen:)()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  sub_100007FEC();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  sub_100016EB4();
  v11 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v11);
  sub_100006688();
  __chkstk_darwin(v12);
  sub_1002868E8();
  sub_100007928();
  sub_10000AF74(v13, v14, v15, v16);
  (*(v7 + 16))(v0, v4, v5);
  v17 = ((*(v7 + 80) + 40) & ~*(v7 + 80)) + v9;
  v18 = swift_allocObject();
  v19 = sub_10003EA40(v18);
  v20(v19);
  *(v18 + v17) = v2;

  sub_10000B9D4();
  sub_1002762F0();

  sub_100005EDC();
}

uint64_t sub_100281FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100035FE0;

  return sub_100282178(a5, v7, 0);
}

uint64_t sub_100282080()
{
  sub_1000066BC();
  v1 = type metadata accessor for UUID();
  sub_100005EB4(v1);
  sub_100286880();
  v3 = v0 + v2;
  v5 = *(v3 + v4);
  v6 = swift_task_alloc();
  v7 = sub_10000A58C(v6);
  *v7 = v8;
  v7[1] = sub_100035FE0;
  v9 = sub_100016244();

  return sub_100281FD0(v9, v10, v11, v12, v3, v5);
}

uint64_t sub_100282178(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  type metadata accessor for ConversationCallCoordinator(0);
  sub_100286020(&unk_1006A25D0, type metadata accessor for ConversationCallCoordinator, &protocol conformance descriptor for ConversationCallCoordinator);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return _swift_task_switch(sub_100282238, v6, v5);
}

uint64_t sub_100282238()
{
  sub_10000B870();
  v17 = v0;
  if (static UUID.== infix(_:_:)())
  {
    v1 = *(v0 + 24);
    if (v1)
    {
      v2 = [objc_opt_self() cxScreenShareAttributesForCallAttributes:v1];
    }

    else
    {
      v2 = 0;
    }

    *(v0 + 56) = v2;
    if (*(v0 + 72) == 1)
    {
      v13 = swift_task_alloc();
      *(v0 + 64) = v13;
      *v13 = v0;
      v13[1] = sub_1002824D0;
      sub_10028681C();

      return sub_100282FE4(v2);
    }

    sub_10028399C();
  }

  else
  {
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v3 = *(v0 + 32);
    v4 = type metadata accessor for Logger();
    sub_1000075F0(v4, qword_1006A24E0);

    v2 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_100286968())
    {
      sub_100007C08();
      v16 = sub_100007608();
      *v3 = 136315394;
      v5 = sub_10002741C(0xD000000000000036, 0x8000000100562EF0, &v16);
      sub_100015E8C(v5);
      v6 = type metadata accessor for UUID();
      sub_100009EDC();
      sub_100286020(v7, v8, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_10002741C(v9, v10, &v16);
      sub_100027E40();

      *(v3 + 14) = v6;
      sub_10003FAEC(&_mh_execute_header, v11, v12, "[CSDConversationCallCoordinator] %s No active call for callUUID: %s");
      sub_100018614();
      swift_arrayDestroy();
      sub_100009ED0();

      sub_100009ED0();
    }
  }

  sub_100009EF4();

  return v15();
}

uint64_t sub_1002824D0()
{
  sub_100006810();
  v1 = *v0;
  v2 = *v0;
  sub_100008060();
  *v3 = v2;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return _swift_task_switch(sub_1002825E4, v5, v4);
}

uint64_t sub_1002825E4()
{
  sub_100006810();

  sub_100009EF4();

  return v1();
}

void ConversationCallCoordinator.handleSetSharingScreen(_:sharingScreen:tuAttributes:)()
{
  sub_100005EF4();
  v2 = v1;
  v24 = v3;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  sub_100007FEC();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v12 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v13);
  sub_100006688();
  __chkstk_darwin(v14);
  sub_1002868E8();
  sub_100007928();
  sub_10000AF74(v15, v16, v17, v18);
  (*(v8 + 16))(v12, v5, v6);
  v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v20 = v19 + v10;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v0;
  (*(v8 + 32))(&v21[v19], v12, v6);
  v21[v20] = v24;
  *&v21[(v20 & 0xFFFFFFFFFFFFFFF8) + 8] = v2;

  v22 = v2;
  sub_10000B9D4();
  sub_1002762F0();

  sub_100005EDC();
}

uint64_t sub_1002828DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100035FE0;

  return sub_100282178(a5, a6, a7);
}

uint64_t sub_100282990()
{
  sub_100007648();
  v1 = type metadata accessor for UUID();
  sub_100005EB4(v1);
  sub_100286880();
  v3 = *(v0 + v2);
  v5 = *(v0 + v4 + 8);
  v6 = swift_task_alloc();
  v7 = sub_10000A58C(v6);
  *v7 = v8;
  v7[1] = sub_100035FE0;
  v9 = sub_100016244();

  return sub_1002828DC(v9, v10, v11, v12, v13, v3, v5);
}

void ConversationCallCoordinator.handleSetScreenShareAttributes(_:tuAttributes:)()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  sub_100007FEC();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  sub_100016EB4();
  v11 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v11);
  sub_100006688();
  __chkstk_darwin(v12);
  type metadata accessor for TaskPriority();
  sub_100007928();
  sub_10000AF74(v13, v14, v15, v16);
  (*(v7 + 16))(v0, v4, v5);
  v17 = (v9 + ((*(v7 + 80) + 40) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = sub_10003EA40(v18);
  v20(v19);
  *(v18 + v17) = v2;

  v21 = v2;
  sub_10000B9D4();
  sub_1002762F0();

  sub_100005EDC();
}

uint64_t sub_100282D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100035FE0;

  return sub_100282178(a5, 1, a6);
}

uint64_t sub_100282DE8()
{
  sub_10000F984();
  sub_100007648();
  v0 = type metadata accessor for UUID();
  sub_100005EB4(v0);
  sub_100286880();
  v1 = swift_task_alloc();
  v2 = sub_10000A58C(v1);
  *v2 = v3;
  v2[1] = sub_100035FE0;
  sub_100016244();
  sub_10001AB70();

  return sub_100282D38(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100282FE4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  type metadata accessor for ConversationCallCoordinator(0);
  sub_100286020(&unk_1006A25D0, type metadata accessor for ConversationCallCoordinator, &protocol conformance descriptor for ConversationCallCoordinator);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v5;
  v2[10] = v4;

  return _swift_task_switch(sub_100283104, v5, v4);
}

uint64_t sub_100283104()
{
  sub_10000B870();
  v2 = sub_1002767F8();
  *(v1 + 88) = v2;
  sub_10028677C([v2 UUID]);

  v3 = swift_task_alloc();
  *(v1 + 96) = v3;
  *v3 = v1;
  v3[1] = sub_100283370;
  sub_10028681C();

  return sub_100276F1C();
}

uint64_t sub_100283370()
{
  sub_10000C698();
  v2 = *v1;
  v3 = *v1;
  sub_100008060();
  *v4 = v3;
  *v4 = *v1;
  v3[13] = v0;

  v5 = v2[8];
  v6 = v2[6];
  v7 = v2[5];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v9(v5, v7);
    v11 = v3[9];
    v12 = v3[10];
    v13 = sub_100283784;
  }

  else
  {
    v3[14] = v9;
    v3[15] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = v3[9];
    v12 = v3[10];
    v13 = sub_1002834E4;
  }

  return _swift_task_switch(v13, v11, v12);
}

void sub_10028399C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) == 1)
  {
    v12 = sub_1002767F8();
    if (qword_1006A0770 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000AF9C(v13, qword_1006A24E0);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = v12;
      v17 = v16;
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315138;
      sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = sub_10002741C(v19, v20, &v27);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "[CSDConversationCallCoordinator] Stopping screen sharing for callUUID: %s", v17, 0xCu);
      sub_100009B7C(v18);

      v12 = v26;
    }

    v22 = *(v0 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
    v23 = [v12 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v4, v1);
    [v22 setScreenEnabled:0 forConversationWithUUID:isa];
  }

  else
  {
    if (qword_1006A0770 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006A24E0);

    v26 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v6))
    {
      v7 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v7 = 136315394;
      *(v7 + 4) = sub_10002741C(0xD000000000000019, 0x8000000100562F60, &v27);
      *(v7 + 12) = 2080;
      sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = sub_10002741C(v8, v9, &v27);

      *(v7 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v26, v6, "[CSDConversationCallCoordinator] %s Not tracking conversation, callUUID: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v11 = v26;
    }
  }
}

void sub_100283F94(void *a1, NSObject *a2)
{
  v115 = a2;
  v116 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  __chkstk_darwin(v116);
  v5 = &v109 - v4;
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = __chkstk_darwin(v6 - 8);
  v113 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v112 = &v109 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v109 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v109 - v15;
  __chkstk_darwin(v14);
  v18 = &v109 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR___CSDConversationCallCoordinator_callUUID;
  v118 = a1;
  v24 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v114 = v23;
  LOBYTE(v24) = static UUID.== infix(_:_:)();
  v25 = *(v20 + 8);
  v117 = v22;
  v26 = v22;
  v27 = v20 + 8;
  v119 = v19;
  v28 = v19;
  v29 = v25;
  v25(v26, v28);
  if (v24)
  {
LABEL_2:
    v30 = OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation;
    if (*(v2 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) == 1)
    {
      v31 = v2;
      v32 = v115;
      if ([v115 type]- 1 > 1)
      {
        if (qword_1006A0770 != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        sub_10000AF9C(v77, qword_1006A24E0);

        v78 = v32;
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v120[0] = v83;
          *v81 = 138412546;
          *(v81 + 4) = v78;
          *v82 = v78;
          *(v81 + 12) = 2080;
          sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v84 = v78;
          v85 = dispatch thunk of CustomStringConvertible.description.getter();
          v87 = sub_10002741C(v85, v86, v120);

          *(v81 + 14) = v87;
          _os_log_impl(&_mh_execute_header, v79, v80, "[CSDConversationCallCoordinator] Ignoring removed screen-share request: %@, callUUID: %s", v81, 0x16u);
          sub_100009A04(v82, &unk_1006A2630, &qword_10057CB40);

          sub_100009B7C(v83);
        }
      }

      else
      {
        v33 = [v118 activeRemoteParticipants];
        sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
        sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
        static Set._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v33) = sub_10039C378();

        if (v33)
        {
          if (qword_1006A0770 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_10000AF9C(v34, qword_1006A24E0);
          v35 = v118;

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();

          v38 = os_log_type_enabled(v36, v37);
          v39 = &selRef_prewarmMediaRequest_completion_;
          v40 = v117;
          if (v38)
          {
            v41 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v120[0] = v116;
            *v41 = 136315394;
            v42 = [v35 UUID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v118 = v35;
            LODWORD(v115) = v37;
            v43 = v119;
            v44 = dispatch thunk of CustomStringConvertible.description.getter();
            v46 = v45;
            v29(v117, v43);
            v47 = sub_10002741C(v44, v46, v120);

            *(v41 + 4) = v47;
            *(v41 + 12) = 2080;
            v35 = v118;
            v48 = dispatch thunk of CustomStringConvertible.description.getter();
            v50 = sub_10002741C(v48, v49, v120);
            v39 = &selRef_prewarmMediaRequest_completion_;

            *(v41 + 14) = v50;
            v40 = v117;
            _os_log_impl(&_mh_execute_header, v36, v115, "[CSDConversationCallCoordinator] Leaving conversation since the screen-share-request was removed, conversationUUID: %s, callUUID: %s", v41, 0x16u);
            v115 = v36;
            swift_arrayDestroy();
          }

          else
          {

            v43 = v119;
          }

          *(v31 + OBJC_IVAR___CSDConversationCallCoordinator_canRejoinConversation) = 1;
          v104 = *(v31 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
          v105 = [v35 v39[145]];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          isa = UUID._bridgeToObjectiveC()().super.isa;
          v29(v40, v43);
          [v104 leaveConversationWithUUID:isa];

          v107 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
          swift_beginAccess();
          v108 = *(v31 + v107);
          *(v31 + v107) = 0;

          *(v31 + v30) = 0;
          *(v31 + v107) = 0;
          swift_endAccess();
        }
      }
    }

    return;
  }

  v111 = v2;
  v51 = *(v2 + 16);
  v52 = [v51 conversationGroupUUID];
  v110 = v51;
  if (!v52)
  {
    sub_10000AF74(v18, 1, 1, v119);
    v60 = &unk_1006A3DD0;
    v61 = &unk_10057C9D0;
    v62 = v18;
LABEL_19:
    sub_100009A04(v62, v60, v61);
    goto LABEL_20;
  }

  v53 = v52;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = 1;
  sub_10000AF74(v18, 0, 1, v119);
  sub_100009A04(v18, &unk_1006A3DD0, &unk_10057C9D0);
  v55 = [v51 conversationGroupUUID];
  if (v55)
  {
    v56 = v55;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = 0;
  }

  v57 = v119;
  sub_10000AF74(v16, v54, 1, v119);
  v58 = [v118 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000AF74(v13, 0, 1, v57);
  v59 = *(v116 + 48);
  sub_100285FC4(v16, v5, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100285FC4(v13, &v5[v59], &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v5, 1, v57) == 1)
  {
    sub_100009A04(v13, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v16, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(&v5[v59], 1, v57) == 1)
    {
      sub_100009A04(v5, &unk_1006A3DD0, &unk_10057C9D0);
      v2 = v111;
      goto LABEL_2;
    }

    goto LABEL_18;
  }

  v63 = v112;
  sub_100285FC4(v5, v112, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(&v5[v59], 1, v57) == 1)
  {
    sub_100009A04(v13, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v16, &unk_1006A3DD0, &unk_10057C9D0);
    v29(v63, v57);
LABEL_18:
    v60 = &unk_1006A2A30;
    v61 = &unk_10057D150;
    v62 = v5;
    goto LABEL_19;
  }

  v88 = v29;
  v89 = v117;
  (*(v20 + 32))(v117, &v5[v59], v57);
  sub_100286020(&qword_1006A2620, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v90 = v63;
  v91 = v57;
  v92 = dispatch thunk of static Equatable.== infix(_:_:)();
  v93 = v89;
  v29 = v88;
  v88(v93, v91);
  sub_100009A04(v13, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v16, &unk_1006A3DD0, &unk_10057C9D0);
  v88(v90, v91);
  sub_100009A04(v5, &unk_1006A3DD0, &unk_10057C9D0);
  v2 = v111;
  if (v92)
  {
    goto LABEL_2;
  }

LABEL_20:
  v116 = v27;
  if (qword_1006A0770 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_10000AF9C(v64, qword_1006A24E0);
  v65 = v118;

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v120[0] = swift_slowAlloc();
    *v68 = 136315650;
    sub_100286020(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v69 = v119;
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = sub_10002741C(v70, v71, v120);

    *(v68 + 4) = v72;
    *(v68 + 12) = 2080;
    v73 = [v110 conversationGroupUUID];
    v109 = v29;
    if (v73)
    {
      v74 = v73;
      v75 = v113;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v76 = 0;
    }

    else
    {
      v76 = 1;
      v75 = v113;
    }

    sub_10000AF74(v75, v76, 1, v69);
    v94 = sub_1002910A0();
    v96 = v95;
    sub_100009A04(v75, &unk_1006A3DD0, &unk_10057C9D0);
    v97 = sub_10002741C(v94, v96, v120);

    *(v68 + 14) = v97;
    *(v68 + 22) = 2080;
    v98 = [v65 groupUUID];
    v99 = v117;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v100 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v101;
    v109(v99, v69);
    v103 = sub_10002741C(v100, v102, v120);

    *(v68 + 24) = v103;
    _os_log_impl(&_mh_execute_header, v66, v67, "[CSDConversationCallCoordinator] Ignoring handleRemovedScreenShareRequest, callUUID: %s, conversationGroupUUID:, %s, groupUUID: %s", v68, 0x20u);
    swift_arrayDestroy();
  }
}

void sub_100284D88(int a1, id a2)
{
  v2 = [a2 provider];
  v3 = [v2 isTelephonyWithSharePlayProvider];

  if (v3)
  {
    sub_100278BBC();
  }
}

uint64_t sub_100284E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_100285BA4(sub_1002862E8, v10, v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v13._object = 0x8000000100562EB0;
    v13._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v13);
    type metadata accessor for ConversationCallCoordinator(0);
    _print_unlocked<A, B>(_:_:)();
    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100285004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = *(v4 + OBJC_IVAR___CSDConversationCallCoordinator_queue);
  *(v13 - v12) = v15;
  (*(v10 + 104))(v13 - v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v14, v8);
  if (v15)
  {
    __chkstk_darwin(result);
    sub_100007918();
    *(v18 - 16) = a2;
    return sub_100284E1C(a3, v19, "callservicesd/ConversationCallCoordinator.swift", 47, 2u, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002851A8(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, id))
{
  v7 = a3;
  v8 = a4;

  a5(v9, v8);
}

uint64_t ConversationCallCoordinator.conversationManager(_:joinConversationWith:)(uint64_t a1, void *a2)
{
  v5 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v5);
  sub_100006688();
  __chkstk_darwin(v6);
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v7);
  sub_10000E4F4();
  sub_10003D4A4(OBJC_IVAR___CSDConversationCallCoordinator_queue);
  v8 = sub_10001625C();
  v9(v8);
  v10 = v3;
  _dispatchPreconditionTest(_:)();
  v11 = sub_100015C78();
  result = v12(v11);
  if (v3)
  {
    type metadata accessor for TaskPriority();
    sub_100007928();
    sub_10000AF74(v14, v15, v16, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v2;
    v18[5] = a2;

    v19 = a2;
    sub_10000B9D4();
    sub_1002762F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002853B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035FE4;

  return sub_10027CE34();
}

uint64_t sub_100285450()
{
  sub_1000066BC();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v1[1] = sub_100035FE4;
  sub_100016244();

  return sub_1002853B4();
}

uint64_t ConversationCallCoordinator.conversationManager(_:conversation:removedActiveParticipant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v6);
  sub_10000E4F4();
  sub_10003D4A4(OBJC_IVAR___CSDConversationCallCoordinator_queue);
  v7 = sub_10001625C();
  v8(v7);
  v9 = v3;
  _dispatchPreconditionTest(_:)();
  v10 = sub_100015C78();
  result = v11(v10);
  if (v3)
  {
    __chkstk_darwin(result);
    sub_100007918();
    *(v13 - 16) = a3;
    *(v13 - 8) = a2;
    v14 = sub_10001C99C();
    return sub_100284E1C(v14, v15, v16, v17, v18, 875);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConversationCallCoordinator.conversationManager(_:screenSharingPickerRequestedForCall:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v6);
  sub_10000E4F4();
  sub_10003D4A4(OBJC_IVAR___CSDConversationCallCoordinator_queue);
  v7 = sub_10001625C();
  v8(v7);
  v9 = v3;
  _dispatchPreconditionTest(_:)();
  v10 = sub_100015C78();
  result = v11(v10);
  if (v3)
  {
    __chkstk_darwin(result);
    sub_100007918();
    *(v13 - 16) = a2;
    *(v13 - 8) = a3;
    v14 = sub_10001C99C();
    return sub_100284E1C(v14, v15, v16, v17, v18, 885);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConversationCallCoordinator.conversationManager(_:conversation:removedScreenShare:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v6);
  sub_10000E4F4();
  sub_10003D4A4(OBJC_IVAR___CSDConversationCallCoordinator_queue);
  v7 = sub_10001625C();
  v8(v7);
  v9 = v3;
  _dispatchPreconditionTest(_:)();
  v10 = sub_100015C78();
  result = v11(v10);
  if (v3)
  {
    __chkstk_darwin(result);
    sub_100007918();
    *(v13 - 16) = a2;
    *(v13 - 8) = a3;
    v14 = sub_10001C99C();
    return sub_100284E1C(v14, v15, v16, v17, v18, 895);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10028596C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100285A98(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100285A98(uint64_t a1)
{
  if (!qword_1006A25B8)
  {
    sub_10026DCB4(&unk_1006A0CA0, &unk_10057A400);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006A25B8);
    }
  }
}

uint64_t sub_100285B14(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(uint64_t, id, id))
{
  v9 = a3;
  v10 = a4;
  v11 = a5;

  a6(v12, v10, v11);
}

uint64_t sub_100285BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v8 = a3;
  sub_100286310(&v8);
}

uint64_t sub_100285C38(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100285D2C;

  return v5(v2 + 32);
}

uint64_t sub_100285D2C()
{
  sub_100006810();
  sub_100005F18();
  v2 = v1;
  sub_100007BC8();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  sub_100008060();
  *v7 = v6;

  *v5 = *(v2 + 32);
  sub_100009EF4();

  return v8();
}

uint64_t sub_100285E28()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v3 = sub_100008040(v1);

  return v4(v3);
}

uint64_t sub_100285EB8()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v3 = sub_100008040(v1);

  return v4(v3);
}

uint64_t sub_100285F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A2548, &unk_10057CFC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100285FC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10026D814(a3, a4);
  sub_100008070();
  v5 = sub_100006B30();
  v6(v5);
  return a2;
}

uint64_t sub_100286020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100286068(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002860D8()
{
  sub_1000066BC();
  v0 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v0);
  sub_100286880();
  v1 = swift_task_alloc();
  v2 = sub_10000A58C(v1);
  *v2 = v3;
  v2[1] = sub_100035FE0;
  v4 = sub_100016244();

  return sub_100281780(v4, v5, v6, v7, v8);
}

uint64_t *sub_1002861B8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10028625C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100286294()
{
  result = qword_1006A26A0;
  if (!qword_1006A26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A26A0);
  }

  return result;
}

uint64_t sub_10028633C()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v3 = sub_100008040(v1);

  return v4(v3);
}

uint64_t getEnumTagSinglePayload for ConversationCallCoordinator.ConversationCreationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConversationCallCoordinator.ConversationCreationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100286530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_100015468(a1, a2, v4);
}

uint64_t sub_100286578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();

  return sub_10000AF74(a1, a2, a3, v6);
}

uint64_t sub_1002865D0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

unint64_t sub_10028667C()
{
  result = qword_1006A2750;
  if (!qword_1006A2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2750);
  }

  return result;
}

uint64_t sub_100286724()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2080;
  return *(v2 - 240);
}

uint64_t sub_100286748()
{
}

uint64_t sub_100286764(uint64_t a1, unint64_t a2)
{

  return sub_10002741C(a1, a2, (v2 - 112));
}

uint64_t sub_10028677C(uint64_t a1)
{

  return static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100286794(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1002867B8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_1002867D4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t sub_1002867EC(uint64_t a1)
{

  return static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1002868A8()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1002868C8()
{

  return swift_arrayDestroy();
}

uint64_t sub_1002868E8()
{

  return type metadata accessor for TaskPriority();
}

uint64_t sub_100286908(uint64_t a1, unint64_t a2)
{

  return sub_10002741C(a1, a2, (v2 - 88));
}

BOOL sub_100286920()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100286938(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_10002741C(a1, a2, &a9);
}

BOOL sub_100286950()
{
  v3 = *(v1 - 104);

  return os_log_type_enabled(v3, v0);
}

BOOL sub_100286968()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100286980()
{
}

id sub_100286998()
{
  v3 = *(v0 + 1160);

  return [v1 v3];
}

BOOL sub_1002869B0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1002869C8(uint64_t a1)
{

  return static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1002869FC()
{

  return type metadata accessor for Logger();
}

id sub_100286A14()
{
  sub_100006AF0(0, &qword_1006A27D0, off_100616610);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [objc_opt_self() sharedInstance];
  type metadata accessor for CommunicationTrustManager();
  v2 = static CommunicationTrustManager.shared.getter();
  v3 = sub_10028785C(v0, v1, v2, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_100286AFC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1004226B4(a1, a2, *(v2 + OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_aliases));
  sub_100286C4C(a1, a2);
  v7 = v6;
  v8 = sub_100286E74(a1, a2);
  v9 = v8 < 0xA;
  v10 = 0x320u >> v8;
  if (qword_1006A0778 != -1)
  {
    sub_100008080(&qword_1006A0778);
  }

  v11 = v9 & v10;
  v12 = type metadata accessor for Logger();
  sub_10000AF9C(v12, qword_1006A2760);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109632;
    *(v15 + 4) = v5;
    *(v15 + 8) = 1024;
    *(v15 + 10) = v7 & 1;
    *(v15 + 14) = 1024;
    *(v15 + 16) = v11;
    _os_log_impl(&_mh_execute_header, v13, v14, "Validating handle with sameAccount:%{BOOL}d, userInCallOnSystem:%{BOOL}d, isTrusted:%{BOOL}d", v15, 0x14u);
  }

  return (v5 | v7 | v11) & 1;
}

void sub_100286C4C(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_callCenter) currentCalls];
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_10000B6F4(v6);
  for (i = 0; ; ++i)
  {
    if (v18 == i)
    {
LABEL_17:

      return;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(v6 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = [v8 handle];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 value];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v13 == a1 && v15 == a2)
      {

        return;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_100286E74(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();
  [v3 destinationIdIsEmailAddress];

  v4 = String._bridgeToObjectiveC()();
  [v4 destinationIdIsPhoneNumber];

  v5 = type metadata accessor for Handle.Kind();
  sub_100007FEC();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v11 destinationIdIsEmailAddress];

  if (v12)
  {
    (*(v7 + 104))(&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Handle.Kind.emailAddress(_:), v5);
    v13 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = v7;
  }

  else
  {
    v15 = String._bridgeToObjectiveC()();
    v16 = [v15 destinationIdIsPhoneNumber];

    if (v16)
    {
      v17 = &enum case for Handle.Kind.phoneNumber(_:);
    }

    else
    {
      v17 = &enum case for Handle.Kind.generic(_:);
    }

    (*(v7 + 104))(&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *v17, v5);
    v13 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = v7;
  }

  type metadata accessor for Handle();
  v40 = &v36;
  sub_100007FEC();
  v37 = v19;
  v38 = v18;
  v20 = __chkstk_darwin(v18);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = *(v14 + 16);
  v39 = v13;
  v23(&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v5);

  Handle.init(type:value:displayName:)();
  sub_100009B14((v2 + OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_commTrustManager), *(v2 + OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_commTrustManager + 24));
  v24 = sub_10026D814(&qword_1006A27C0, &qword_10057D360);
  __chkstk_darwin(v24 - 8);
  v26 = &v36 - v25;
  v27 = type metadata accessor for CommunicationTrustScoreOptions();
  sub_10000AF74(v26, 1, 1, v27);
  v28 = sub_10026D814(&qword_1006A27C8, qword_100581660);
  __chkstk_darwin(v28 - 8);
  v30 = &v36 - v29;
  v31 = enum case for Service.FaceTime(_:);
  v32 = v5;
  v33 = type metadata accessor for Service();
  (*(*(v33 - 8) + 104))(v30, v31, v33);
  sub_10000AF74(v30, 0, 1, v33);
  v34 = CommunicationTrustManager.trustScoreSync(for:countryCode:options:service:)();
  sub_1000099A4(v30, &qword_1006A27C8, qword_100581660);
  sub_1000099A4(v26, &qword_1006A27C0, &qword_10057D360);
  (*(v37 + 8))(v22, v38);
  (*(v14 + 8))(v39, v32);
  return v34;
}

id PodcastRecordingActivityManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10028753C()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A2760);
  sub_10000AF9C(v0, qword_1006A2760);
  return Logger.init(subsystem:category:)();
}

id sub_1002875C0(void *a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v32[3] = type metadata accessor for CommunicationTrustManager();
  v32[4] = &off_100622268;
  v32[0] = a3;
  *&a5[OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_service] = a1;
  *&a5[OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_callCenter] = a2;
  sub_100009AB0(v32, &a5[OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_commTrustManager]);
  v11 = a5;
  if (a4)
  {
    v12 = a1;
    v13 = a2;
  }

  else
  {
    v14 = a1;
    v15 = a2;
    v16 = [v14 aliases];
    a4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  *&a5[OBJC_IVAR____TtC13callservicesd28CSDFaceTimeIMAVPushValidator_aliases] = a4;
  if (qword_1006A0778 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000AF9C(v17, qword_1006A2760);
  v18 = a5;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v29 = ObjectType;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;

    v23 = Set.description.getter();
    v25 = v24;

    v26 = sub_10002741C(v23, v25, &v30);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Initializing push validator with aliases:%s", v21, 0xCu);
    sub_100009B7C(v22);

    ObjectType = v29;
  }

  else
  {
  }

  v31.receiver = v18;
  v31.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v31, "init");

  sub_100009B7C(v32);
  return v27;
}

id sub_10028785C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = type metadata accessor for CommunicationTrustManager();
  v18 = &off_100622268;
  v16[0] = a3;
  v8 = objc_allocWithZone(type metadata accessor for CSDFaceTimeIMAVPushValidator());
  v9 = sub_10001BDB8(v16, v17);
  __chkstk_darwin(v9);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_1002875C0(a1, a2, *v11, a4, v8);
  sub_100009B7C(v16);
  return v13;
}

uint64_t TUConversationState.debugDescription.getter(uint64_t a1)
{
  result = 0x64656E696F6A2ELL;
  switch(a1)
  {
    case 0:
      v3 = 0x69746961772ELL;
      goto LABEL_6;
    case 1:
      return 0x697261706572702ELL;
    case 2:
      v3 = 0x696E696F6A2ELL;
      goto LABEL_6;
    case 3:
      return result;
    case 4:
      v3 = 0x697661656C2ELL;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    default:
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

      v5._countAndFlagsBits = 41;
      v5._object = 0xE100000000000000;
      String.append(_:)(v5);
      result = 0x6E776F6E6B6E752ELL;
      break;
  }

  return result;
}

uint64_t sub_100287AB0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_1000080A0();
}

uint64_t sub_100287AC4()
{
  sub_10000C698();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  type metadata accessor for SynthesisVoice();
  *v2 = v0;
  v2[1] = sub_100287BB4;
  sub_10000D404();
  sub_10000F2CC();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100287BB4()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  sub_10000E51C();
  *v4 = v3;
  v5 = *v1;
  sub_100008060();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100287CD0()
{
  sub_100006810();

  sub_100009EF4();

  return v0();
}

uint64_t sub_100287D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10026D814(&qword_1006A28E0, &qword_10057D578);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  dispatch thunk of DaemonSession.getSynthesisVoice(matching:reply:)();
}

uint64_t sub_100287E7C(void *a1, id a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA5F8);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v28 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v8 = String.init<A>(reflecting:)();
      v10 = sub_10002741C(v8, v9, &v28);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch a Siri voice: %{public}s", v6, 0xCu);
      sub_100009B7C(v7);
    }

    v28 = a2;
LABEL_20:
    sub_10026D814(&qword_1006A28E0, &qword_10057D578);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
LABEL_15:
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000AF9C(v24, qword_1006BA5F8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "DaemonSession API violation detected!", v27, 2u);
    }

    v28 = [objc_allocWithZone(NSError) init];
    goto LABEL_20;
  }

  v11 = a1;
  dispatch thunk of SynthesisVoice.name.getter();
  if (!v12)
  {

    goto LABEL_15;
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA5F8);
  v14 = v11;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136446210;
    type metadata accessor for SynthesisVoice();
    v19 = v14;
    v20 = String.init<A>(reflecting:)();
    v22 = sub_10002741C(v20, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Best available voice is %{public}s", v17, 0xCu);
    sub_100009B7C(v18);
  }

  v28 = v14;
  sub_10026D814(&qword_1006A28E0, &qword_10057D578);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100288280(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1000080A0();
}

uint64_t sub_100288294()
{
  sub_100006810();
  v0 = swift_task_alloc();
  sub_100006850(v0);
  v1 = swift_task_alloc();
  v2 = sub_100035DC0(v1);
  *v2 = v3;
  v2[1] = sub_100288364;
  sub_100007BBC();
  sub_10000F2CC();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100288364()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  sub_10000E51C();
  *v4 = v3;
  v5 = *v1;
  sub_100008060();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100288468()
{
  sub_100006810();

  sub_100009EF4();

  return v0();
}

uint64_t sub_1002884C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  (*(v6 + 16))(&v14 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v12 = a3;
  dispatch thunk of DaemonSession.synthesize(request:didFinish:)();
}

uint64_t sub_100288624(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA5F8);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136446210;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v9 = String.init<A>(reflecting:)();
      v11 = sub_10002741C(v9, v10, &v21);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Outgoing audio message synthesis failed: %{public}s", v7, 0xCu);
      sub_100009B7C(v8);
    }

    v21 = a1;
    sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA5F8);
    v15 = a3;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully generated outgoing message for request: %{public}@", v18, 0xCu);
      sub_10028CA5C(v19);
    }

    sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1002888FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1000080A0();
}

uint64_t sub_100288910()
{
  sub_100006810();
  v0 = swift_task_alloc();
  sub_100006850(v0);
  v1 = swift_task_alloc();
  v2 = sub_100035DC0(v1);
  *v2 = v3;
  v2[1] = sub_1002889E0;
  sub_100007BBC();
  sub_10000F2CC();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1002889E0()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  sub_10000E51C();
  *v4 = v3;
  v5 = *v1;
  sub_100008060();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100288AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  (*(v6 + 32))(v10 + v9, v8, v5);

  dispatch thunk of DaemonSession.subscribe(voices:reply:)();
}

uint64_t sub_100288C38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA5F8);
    swift_errorRetain();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v6 = 136446466;

      sub_10026D814(&qword_1006A28D8, &qword_10057D530);
      v7 = String.init<A>(reflecting:)();
      v9 = sub_10002741C(v7, v8, &v24);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2082;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v10 = String.init<A>(reflecting:)();
      v12 = sub_10002741C(v10, v11, &v24);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to subscribe to greeting voices: %{public}s: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v24 = a1;
    sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA5F8);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v17 = 136446466;

      sub_10026D814(&qword_1006A28D8, &qword_10057D530);
      v18 = String.init<A>(reflecting:)();
      v20 = sub_10002741C(v18, v19, &v24);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      v21 = sub_1002910C8(0);
      v23 = sub_10002741C(v21, v22, &v24);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Successfully subscribed to greeting voices: %{public}s: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
    return CheckedContinuation.resume(returning:)();
  }
}

Swift::Int sub_100289020()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10028906C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1002890AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1000080A0();
}

uint64_t sub_1002890C0()
{
  sub_1000066BC();
  v2 = v0[2];
  v1 = v0[3];
  sub_100007C2C();
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = v2;
  v5 = swift_task_alloc();
  v6 = sub_100035DC0(v5);
  *v6 = v7;
  v6[1] = sub_1002891BC;

  return sub_100289544(&unk_10057D548, v3);
}

uint64_t sub_1002891BC()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  sub_10000E51C();
  *v6 = v5;
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    sub_10000D404();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_1002892F4()
{
  sub_100006810();

  sub_100009EF4();

  return v0();
}

uint64_t sub_100289350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100289374, 0, 0);
}

uint64_t sub_100289374()
{
  sub_100006810();
  v1 = swift_task_alloc();
  v2 = sub_100035DC0(v1);
  *v2 = v3;
  v2[1] = sub_100289404;
  v4 = sub_10000795C(*(v0 + 32));

  return sub_100287AB0(v4);
}

uint64_t sub_100289404()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  sub_10000E51C();
  *v6 = v5;
  v7 = *v1;
  sub_100008060();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    sub_100007BBC();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_100289544(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100289614, 0, 0);
}

uint64_t sub_100289614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  sub_100015E9C();
  v12[2] = v14;
  v12[7] = v12 + 12;
  sub_10000F99C();
  sub_100007934();
  v15 = swift_allocObject();
  sub_10000D6D8(v15);
  sub_100007C2C();
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_10057D560;
  *(v16 + 24) = v13;
  v12[10] = &unk_10057D568;
  v12[11] = v16;

  v17 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  sub_100007940(v17);
  v18 = sub_100007624();
  v19(v18);
  sub_100005F24();

  return _swift_continuation_await(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_10028972C()
{
  sub_1000066BC();
  sub_10000A5B0();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();

    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 96);

    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_100289898(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100289968, 0, 0);
}

uint64_t sub_100289968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  sub_100015E9C();
  v12[2] = v14;
  v12[7] = v12 + 12;
  sub_10000F99C();
  sub_100007934();
  v15 = swift_allocObject();
  sub_10000D6D8(v15);
  sub_100007C2C();
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_10057D4E8;
  *(v16 + 24) = v13;
  v12[10] = &unk_10057D4F0;
  v12[11] = v16;

  v17 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  sub_100007940(v17);
  v18 = sub_100007624();
  v19(v18);
  sub_100005F24();

  return _swift_continuation_await(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_100289A80()
{
  sub_100006810();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  v1[16] = v5;
  sub_100005EB4(v5);
  v1[17] = v6;
  v1[18] = swift_task_alloc();
  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100289B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  sub_100015E9C();
  v14 = v12[12];
  v12[2] = v15;
  v12[7] = v14;
  sub_10000F99C();
  sub_100007934();
  v16 = swift_allocObject();
  sub_10000D6D8(v16);
  sub_100007C2C();
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_10057D5A8;
  *(v17 + 24) = v13;
  v12[10] = &unk_10057D5B0;
  v12[11] = v17;

  v18 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  sub_100007940(v18);
  v19 = sub_100007624();
  v20(v19);
  sub_100005F24();

  return _swift_continuation_await(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_100289C58()
{
  sub_1000066BC();
  sub_100005F18();
  v1 = *v0;
  sub_10000E51C();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_100289D74()
{
  sub_100006810();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  v1[14] = v3;
  sub_100005EB4(v3);
  v1[15] = v4;
  v1[16] = swift_task_alloc();
  sub_100007BBC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100289E30()
{
  sub_10000C698();
  v2 = v0[12];
  v1 = v0[13];
  v0[17] = OBJC_IVAR____TtC13callservicesd21SiriSpeechSynthesizer_queue;
  sub_100007C2C();
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = v2;
  sub_100007BBC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100289EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  sub_100015E9C();
  v13 = v12[18];
  v12[2] = v14;
  v15 = sub_10000F99C();
  sub_100007934();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &unk_10057D478;
  v16[4] = v13;
  sub_100007C2C();
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_10057D488;
  *(v17 + 24) = v16;
  v12[10] = &unk_10057D490;
  v12[11] = v17;

  v18 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  sub_10000FBA8(v18);
  v19 = sub_100007624();
  v20(v19);
  sub_100005F24();

  return _swift_continuation_await(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_100289FF0()
{
  sub_10000C698();
  sub_10000A5B0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 152) = v4;
  if (v4)
  {
    swift_willThrow();
    sub_100007BBC();

    return _swift_task_switch(v5, v6, v7);
  }

  else
  {

    sub_10001E3C4();

    return v8();
  }
}

uint64_t sub_10028A130()
{
  sub_100006810();

  sub_100009EF4();

  return v0();
}

uint64_t sub_10028A198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10028A1B8, 0, 0);
}

uint64_t sub_10028A1B8()
{
  sub_100006810();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10028A24C;
  v2 = sub_10000795C(*(v0 + 24));

  return sub_100288280(v2);
}

uint64_t sub_10028A24C()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  sub_100009EF4();

  return v3();
}

uint64_t sub_10028A32C()
{
  sub_100006810();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  v1[14] = v3;
  sub_100005EB4(v3);
  v1[15] = v4;
  v1[16] = swift_task_alloc();
  sub_100007BBC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10028A3E8()
{
  sub_10000C698();
  v1 = v0[12];
  v2 = v0[13];
  v0[17] = OBJC_IVAR____TtC13callservicesd21SiriSpeechSynthesizer_queue;
  sub_100007C2C();
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_100007BBC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10028A484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  sub_100015E9C();
  v13 = v12[18];
  v12[2] = v14;
  v15 = sub_10000F99C();
  sub_100007934();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &unk_10057D510;
  v16[4] = v13;
  sub_100007C2C();
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_10057D518;
  *(v17 + 24) = v16;
  v12[10] = &unk_10057D520;
  v12[11] = v17;

  v18 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  sub_10000FBA8(v18);
  v19 = sub_100007624();
  v20(v19);
  sub_100005F24();

  return _swift_continuation_await(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_10028A5AC()
{
  sub_10000C698();
  sub_10000A5B0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 152) = v4;
  if (v4)
  {
    swift_willThrow();
    sub_100007BBC();

    return _swift_task_switch(v5, v6, v7);
  }

  else
  {

    sub_10001E3C4();

    return v8();
  }
}

uint64_t sub_10028A6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10028A70C, 0, 0);
}

uint64_t sub_10028A70C()
{
  sub_100006810();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10028D39C;
  v2 = sub_10000795C(*(v0 + 24));

  return sub_1002888FC(v2);
}

uint64_t sub_10028A7A0(uint64_t a1)
{
  v3 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v4 = sub_100007BF0(v3);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_10000AF74(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  sub_1002762F0();
}

uint64_t sub_10028A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_10028A8AC, 0, 0);
}

uint64_t sub_10028A8AC()
{
  sub_100006810();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10028A940;
  v2 = sub_10000795C(*(v0 + 40));

  return sub_1002888FC(v2);
}

uint64_t sub_10028A940()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10028AA38()
{
  v13 = v0;
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA5F8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    *(v0 + 24) = v4;

    sub_10026D814(&qword_1006A28D8, &qword_10057D530);
    v7 = String.init<A>(reflecting:)();
    v9 = sub_10002741C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished subscribing to voices: %{public}s", v5, 0xCu);
    sub_100009B7C(v6);
    sub_100005F40(v6);
    sub_100005F40(v5);
  }

  sub_100009EF4();

  return v10();
}

uint64_t sub_10028ABCC()
{
  v14 = v0;
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA5F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v8 = String.init<A>(reflecting:)();
    v10 = sub_10002741C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Subscribe failed: %{public}s", v6, 0xCu);
    sub_100009B7C(v7);
    sub_100005F40(v7);
    sub_100005F40(v6);
  }

  else
  {
  }

  sub_100009EF4();

  return v11();
}

uint64_t sub_10028AD78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 104) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return sub_1000080A0();
}

uint64_t sub_10028AD98()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  if (v2)
  {
    sub_100007C2C();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = sub_10028CB90;
  }

  else
  {
    v4 = sub_10028B134;
    v3 = 0;
  }

  v5 = *(v0 + 104);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  sub_100007C2C();
  v9 = swift_allocObject();
  *(v0 + 64) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v0 + 72) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  *(v10 + 48) = sub_10028CAC4;
  *(v10 + 56) = v9;
  sub_1000115CC(v2, v1);
  v11 = v8;

  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = sub_10028AF5C;

  return sub_100289898(&unk_10057D4D0, v10);
}

uint64_t sub_10028AF5C()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  sub_10000E51C();
  *v6 = v5;
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {

    *(v5 + 96) = v3;
  }

  sub_10000D404();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10028B06C()
{
  sub_100006810();

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_10028B0D0()
{
  sub_100006810();

  sub_100009EF4();

  return v0();
}

void sub_10028B134(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  if (*a3 < 1)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *a2 * 100.0 / *a3;
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA5F8);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v3;
    _os_log_impl(&_mh_execute_header, oslog, v5, "TTS model download progress: %f", v6, 0xCu);
  }
}

uint64_t sub_10028B260(uint64_t a1, uint64_t a2, uint64_t (*a3)(double *, uint64_t *, uint64_t *), double a4)
{
  v7 = a4;
  v5 = a2;
  v6 = a1;
  return a3(&v7, &v6, &v5);
}

uint64_t sub_10028B2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 88) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return _swift_task_switch(sub_10028B2D4, 0, 0);
}

uint64_t sub_10028B2D4()
{
  sub_1000066BC();
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v15 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 48);
  *(v3 + 16) = v15;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  type metadata accessor for TTSAsset();
  *v5 = v0;
  v5[1] = sub_10028B3E8;
  sub_10000D404();
  sub_10000F2CC();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_10028B3E8()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  sub_10000E51C();
  *v4 = v3;
  v5 = *v1;
  sub_100008060();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_100007BBC();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_100009EF4();

    return v10();
  }
}

uint64_t sub_10028B504()
{
  sub_100006810();

  sub_100009EF4();

  return v0();
}

void sub_10028B560(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t (*a6)(void *a1), uint64_t a7)
{
  v23 = a5;
  v22 = a2;
  v11 = sub_10026D814(&qword_1006A28C8, &qword_10057D4F8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  if (a4)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  v28 = a6;
  v29 = a7;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10028B7C4;
  v27 = &unk_100622458;
  v15 = _Block_copy(&aBlock);

  (*(v12 + 16))(v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v14, v11);
  v28 = sub_10028CC64;
  v29 = v17;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10028BAD0;
  v27 = &unk_1006224A8;
  v18 = _Block_copy(&aBlock);

  v19 = v21;
  [v22 downloadWithReservation:v21 useBattery:v23 & 1 progress:v15 then:v18];
  _Block_release(v18);
  _Block_release(v15);
}

uint64_t sub_10028B7C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t sub_10028B834(void *a1)
{
  if (a1)
  {
    v1 = qword_1006A0B28;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA5F8);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      type metadata accessor for TTSAsset();
      v9 = v4;
      v10 = String.init<A>(reflecting:)();
      v12 = sub_10002741C(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Done downloading %s", v7, 0xCu);
      sub_100009B7C(v8);
    }

    v18 = v4;
    sub_10026D814(&qword_1006A28C8, &qword_10057D4F8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_1006A0B28 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA5F8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Download of TTS asset failed", v17, 2u);
    }

    sub_10028CCDC();
    swift_allocError();
    sub_10026D814(&qword_1006A28C8, &qword_10057D4F8);
    return CheckedContinuation.resume(throwing:)();
  }
}

void sub_10028BAD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10028BB3C()
{
  swift_unknownObjectRelease();
  sub_10028D1D8(v0 + OBJC_IVAR____TtC13callservicesd21SiriSpeechSynthesizer_queue);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SiriSpeechSynthesizer(uint64_t a1)
{
  result = qword_1006A2808;
  if (!qword_1006A2808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028BBFC(uint64_t a1)
{
  sub_10028BCA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10028BCA0(uint64_t a1)
{
  if (!qword_1006A2818)
  {
    sub_10026DCB4(&unk_1006A2820, &qword_10057ED60);
    v1 = type metadata accessor for AsyncStream.Continuation();
    if (!v2)
    {
      atomic_store(v1, &qword_1006A2818);
    }
  }
}

uint64_t sub_10028BD04()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v1[1] = sub_100035FE4;
  v3 = sub_10000A59C();

  return sub_10028A198(v3, v4, v5);
}

uint64_t sub_10028BD94(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10028BE88;

  return v5(v2 + 16);
}

uint64_t sub_10028BE88()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10028BF80()
{
  sub_100006810();
  **(*(*(v0 + 24) + 64) + 40) = *(v0 + 16);
  swift_continuation_throwingResume();
  sub_100009EF4();

  return v1();
}

uint64_t sub_10028BFF4()
{
  sub_100006810();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v0 = swift_allocError();
  sub_100018EF0(v0, v1);
  sub_100009EF4();

  return v2();
}

uint64_t sub_10028C078(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10028C164;

  return v5();
}

uint64_t sub_10028C164()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 32) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10028C25C()
{
  sub_100006810();
  swift_continuation_throwingResume();
  sub_100009EF4();

  return v0();
}

uint64_t sub_10028C2B4()
{
  sub_100006810();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v0 = swift_allocError();
  sub_100018EF0(v0, v1);
  sub_100009EF4();

  return v2();
}

uint64_t sub_10028C338()
{
  sub_10000C698();
  sub_10028D3B0();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v3 = sub_100010178(v1);

  return sub_10028C078(v3, v4);
}

uint64_t sub_10028C3C4()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v3 = sub_100008040(v1);

  return v4(v3);
}

uint64_t sub_10028C45C(void *a1)
{
  v3 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  sub_100005EB4(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100288624(a1, v1 + v8, v9);
}

uint64_t sub_10028C4FC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10028C5F0;

  return v5(v2 + 16);
}

uint64_t sub_10028C5F0()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10028C6E8(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for URL();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_10028C848;

  return v8(v5);
}

uint64_t sub_10028C848()
{
  sub_100006810();
  sub_100005F18();
  sub_10000A5B0();
  *v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10028C940()
{
  sub_100006810();
  (*(v0[4] + 32))(*(*(v0[2] + 64) + 40), v0[5], v0[3]);
  swift_continuation_throwingResume();

  sub_100009EF4();

  return v1();
}

uint64_t sub_10028C9D0()
{
  sub_100006810();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v0 = swift_allocError();
  sub_100018EF0(v0, v1);

  sub_100009EF4();

  return v2();
}

uint64_t sub_10028CA5C(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A2630, &qword_10057CB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10028CACC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  v7 = sub_10000A58C(v6);
  *v7 = v8;
  v9 = sub_10000E52C(v7);

  return sub_10028B2A8(v9, v10, v1, v2, v3, v5, v4);
}

uint64_t sub_10028CBC4()
{
  sub_10000C698();
  sub_10028D3B0();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v3 = sub_100010178(v1);

  return sub_10028C4FC(v3, v4);
}

uint64_t sub_10028CC64(void *a1)
{
  v2 = sub_10026D814(&qword_1006A28C8, &qword_10057D4F8);
  sub_100007BF0(v2);

  return sub_10028B834(a1);
}

unint64_t sub_10028CCDC()
{
  result = qword_1006A28D0;
  if (!qword_1006A28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A28D0);
  }

  return result;
}

uint64_t sub_10028CD30()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v1[1] = sub_100035FE0;
  v3 = sub_10000A59C();

  return sub_10028A6EC(v3, v4, v5);
}

uint64_t sub_10028CDC8(uint64_t a1)
{
  v3 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  sub_100007BF0(v3);
  v4 = *(v1 + 16);

  return sub_100288C38(a1, v4);
}

uint64_t sub_10028CE44()
{

  sub_100007C2C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10028CE80()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v1[1] = sub_100035FE0;
  v3 = sub_10000A59C();

  return sub_100289350(v3, v4, v5);
}

uint64_t sub_10028CF10()
{
  sub_10000C698();
  sub_10028D3B0();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v3 = sub_100010178(v1);

  return sub_10028BD94(v3, v4);
}

uint64_t sub_10028CFA4(uint64_t *a1, uint64_t *a2)
{
  sub_10026D814(a1, a2);
  sub_1000080D0();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return _swift_deallocObject(v2);
}

uint64_t sub_10028D01C(void *a1, void *a2)
{
  v4 = sub_10026D814(&qword_1006A28E0, &qword_10057D578);
  sub_100007BF0(v4);

  return sub_100287E7C(a1, a2);
}

uint64_t sub_10028D0A4()
{
  sub_1000066BC();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = sub_10000A58C(v4);
  *v5 = v6;
  v7 = sub_10000E52C(v5);

  return sub_10028A88C(v7, v8, v1, v3, v2);
}

uint64_t sub_10028D14C()
{
  sub_10000C698();
  sub_10028D3B0();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v3 = sub_100010178(v1);

  return sub_10028C6E8(v3, v4);
}

uint64_t sub_10028D1D8(uint64_t a1)
{
  v2 = type metadata accessor for AsyncSerialQueue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriSpeechSynthesizerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SiriSpeechSynthesizerError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10028D338()
{
  result = qword_1006A28E8;
  if (!qword_1006A28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A28E8);
  }

  return result;
}

void sub_10028D408()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v55 = v13 - v12;
  v56 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v54 = v14;
  __chkstk_darwin(v15);
  sub_100007FDC();
  v53 = v17 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100007FDC();
  v24 = v23 - v22;
  *&v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_queue] = v3;
  *(v23 - v22) = v3;
  (*(v20 + 104))(v23 - v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v25 = v3;
  LOBYTE(v3) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v24, v18);
  if (v3)
  {
    sub_100006AF0(0, &unk_1006A2950, CXInProcessProvider_ptr);
    v26 = sub_10028DA08();
    v27 = v5;
    v28 = sub_1003E15F8(v26, v27);
    v29 = &v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_isAccountActive];
    *v29 = sub_10028DAB4;
    v29[1] = 0;
    v30 = &v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_outgoingSessionProviderGenerator];
    *v30 = sub_10028DB0C;
    v30[1] = 0;
    v31 = &v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_outgoingChatGenerator];
    *v31 = sub_10028DC28;
    v31[1] = 0;
    v32 = &v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_isDestinationValid];
    *v32 = sub_10028DD80;
    v32[1] = 0;
    v33 = &v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_destinationsGenerator];
    *v33 = sub_10028DE0C;
    *(v33 + 1) = 0;
    v51 = v27;
    v34 = sub_100021AEC(v51);
    if (v35)
    {
      v36 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v36 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {
        v37 = objc_opt_self();
        v38 = String._bridgeToObjectiveC()();

        v39 = [v37 tu_contactStoreConfigurationForBundleIdentifier:v38];

LABEL_9:
        v50 = v39;
        v40 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v39];
        v41 = [objc_allocWithZone(TUContactsDataProvider) initWithContactsDataSource:v40];

        *&v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_contactsDataProvider] = v41;
        v58.receiver = v1;
        v58.super_class = ObjectType;
        v49 = v25;
        v42 = objc_msgSendSuper2(&v58, "initWithCapabilities:queue:", v7, v25);
        v43 = *&v42[OBJC_IVAR___CSDTinCanIDSProviderDelegate_queue];
        v44 = swift_allocObject();
        *(v44 + 16) = v42;
        *(v44 + 24) = v28;
        v57[4] = sub_100290A74;
        v57[5] = v44;
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 1107296256;
        v57[2] = sub_100004CEC;
        v57[3] = &unk_100622740;
        v45 = _Block_copy(v57);
        v46 = v42;
        v47 = v43;
        v48 = v28;
        static DispatchQoS.unspecified.getter();
        sub_10000EC90(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
        sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v45);

        swift_unknownObjectRelease();
        (*(v10 + 8))(v55, v8);
        (*(v54 + 8))(v53, v56);

        sub_100005EDC();
        return;
      }
    }

    v39 = [objc_opt_self() tu_contactStoreConfigurationForBundleIdentifier:TUBundleIdentifierTinCan];
    goto LABEL_9;
  }

  __break(1u);
}

id sub_10028DA08()
{
  v0 = [objc_allocWithZone(CXProviderConfiguration) init];
  [v0 setMaximumCallGroups:1];
  [v0 setMaximumCallsPerCallGroup:1];
  [v0 setSupportsAudioOnly:1];
  [v0 setIncludesCallsInRecents:0];
  sub_10039B400();
  CXProviderConfiguration.supportedHandleTypes.setter();
  [v0 setSupportsCurrentPlatform:0];
  return v0;
}

id sub_10028DAB4(void *a1)
{
  v1 = [a1 account];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isActive];

  return v3;
}

id sub_10028DB0C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [a1 account];
  v7 = sub_1002E9784(a2);
  sub_10003E7C0();
  v9 = v8;
  v10 = objc_allocWithZone(IDSSession);
  result = sub_100290868(v6, v7, v9);
  if (result)
  {
    v12 = result;
    sub_100006AF0(0, &qword_1006A2978, off_100616628);
    return sub_10028DBCC(v12, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10028DBCC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSession:a1 queue:a2];

  return v4;
}

void sub_10028DC28(void *a1, uint64_t a2, void *a3, char a4, char a5)
{
  v10 = type metadata accessor for UUID();
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  v14 = [a3 handle];
  v15 = [v14 tuHandle];

  if (v15)
  {
    objc_allocWithZone(CSDIDSChat);
    [sub_10029093C(a1 v12];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10028DD80(void *a1, void *a2)
{
  v3 = [a1 handle];
  v4 = [v3 tuHandle];

  if (!v4)
  {
    return 0;
  }

  sub_10001B8C8(a2, &selRef_countryCode);
  if (!v5)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_10028E0E0(char *a1, void *a2)
{
  v4 = [a1 incomingChatGenerator];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100290A7C;
  *(v6 + 24) = v5;
  v10[4] = sub_100290A84;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10028E31C;
  v10[3] = &unk_1006227B8;
  v7 = _Block_copy(v10);

  [a1 setIncomingChatGenerator:v7];
  _Block_release(v7);
  v8 = *&a1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_queue];
  [a2 setDelegate:a1 queue:v8];
  if (qword_1006A0AB0 != -1)
  {
    swift_once();
  }

  [qword_1006A6800 addServiceDelegate:a1 queue:v8];
}

id sub_10028E284(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = (*(a5 + 16))(a5, a1, a2, a3 & 1, isa);

  return v10;
}

id sub_10028E31C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = a2;
  v11 = a3;
  v12 = v8(v10, v11, a4, v9);

  return v12;
}

id sub_10028E444(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(type metadata accessor for TinCanIDSProviderDelegateCapabilities()) init];
  v6 = [v2 initWithCapabilities:v5 callSource:a1 queue:a2];

  return v6;
}

id sub_10028E500()
{
  v4.receiver = v1;
  v4.super_class = sub_10000FCD0();
  v2 = objc_msgSendSuper2(&v4, "callUpdateForChat:", v0);
  [v2 setMutuallyExclusiveCall:1];
  return v2;
}

void sub_10028E5C8()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = [v3 handle];
  v14 = [v0 waitingChatWithHandle:v13 isOutgoing:0];

  if (v14)
  {
    v16 = sub_100004778(v15);
    v17 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("Tried to make an outgoing call when we already had a ringing call with the same destination", 91, 2, &_mh_execute_header, v16, v17, _swiftEmptyArrayStorage);

    [v3 fail];
    sub_100005EDC();

    swift_unknownObjectRelease();
  }

  else
  {
    v71 = v8;
    if (qword_1006A0AB0 != -1)
    {
      swift_once();
    }

    v19 = qword_1006A6800;
    sub_10000E8EC();

    v20 = v8(v19);

    if (v20)
    {
      sub_10000E8EC();

      v22 = (v8)(v3, v19);

      if (v22)
      {
        sub_10000E8EC();
        v24 = *&v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_contactsDataProvider];

        v70 = v5;
        v25 = v24;
        v67 = (v8)(v3, v19, v25);

        sub_10026D814(&unk_1006A39A0, &unk_10057D700);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10057CA70;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v27;
        *(inited + 72) = &type metadata for Int;
        *(inited + 48) = 0;
        *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 88) = v28;
        *(inited + 120) = &type metadata for Bool;
        *(inited + 96) = 1;
        *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 136) = v29;
        *(inited + 168) = &type metadata for Bool;
        *(inited + 144) = 1;
        *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 184) = v30;
        *(inited + 216) = &type metadata for Bool;
        *(inited + 192) = 1;
        v65 = Dictionary.init(dictionaryLiteral:)();
        sub_10000E8EC();
        v31 = *&v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_queue];

        v69 = type metadata for Bool(v19, v67, v65, v31);

        v63 = [objc_allocWithZone(CSDExternalIDSDualSession) initAsInitiatorWithSessionProvider:v69];
        v32 = sub_100004778(v63);
        v62 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v33 = sub_100009F24(v62);
        *(v33 + 16) = xmmword_10057D6A0;
        *(v33 + 56) = sub_10026D814(&qword_1006A29F0, &unk_100586650);
        *(v33 + 64) = sub_10001000C(&qword_1006A29F8, &qword_1006A29F0, &unk_100586650, &protocol conformance descriptor for Set<A>);
        *(v33 + 32) = v67;
        *(v33 + 96) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
        *(v33 + 104) = sub_10001000C(&qword_1006A3980, &unk_1006A2A00, &unk_10057D710, &protocol conformance descriptor for [A : B]);
        *(v33 + 72) = v65;
        v34 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Created TinCan session to destinations %@ with options: %@", 58, 2, &_mh_execute_header, v32, v34, v33);

        v68 = [objc_allocWithZone(TUCallProviderManager) init];
        v66 = [v68 tinCanProvider];
        v35 = v63;
        [v3 isUpgrade];
        [v35 setInvitationTimeout:TUOutgoingInvitationTimeoutForCallProviderAndIsUpgrade()];

        v64 = v35;
        v36 = *&v1[OBJC_IVAR___CSDTinCanIDSProviderDelegate_outgoingChatGenerator];

        v37 = [v3 callUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v38 = v36(v35, v12, v3, [v3 isVideo], objc_msgSend(v3, "isRelay"));

        v61 = *(v71 + 1);
        v61(v12, v6);
        v39 = sub_100004778([v38 setDelegate:v1]);
        v40 = sub_100009F00(v62);
        *(v40 + 16) = xmmword_10057D690;
        v72[0] = v38;
        swift_unknownObjectRetain();
        sub_10026D814(&qword_1006A29B0, &qword_10057D6F0);
        v41 = String.init<A>(reflecting:)();
        v43 = v42;
        *(v40 + 56) = &type metadata for String;
        *(v40 + 64) = sub_100009D88();
        *(v40 + 32) = v41;
        *(v40 + 40) = v43;
        v44 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Starting TinCan IDS chat: %@", 28, 2, &_mh_execute_header, v39, v44, v40);

        v45 = swift_allocObject();
        *(v45 + 16) = v3;
        v72[4] = sub_100290B80;
        v72[5] = v45;
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 1107296256;
        v72[2] = sub_10028EFB8;
        v72[3] = &unk_100622808;
        v46 = _Block_copy(v72);
        v47 = v3;

        [v38 startWithVideoAspectRatioDescriptor:v47 inviteCompletion:v46];
        _Block_release(v46);
        [v1 updateCacheWithChat:v38];
        v48 = [v47 callUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        v61(v12, v6);
        v50 = [objc_allocWithZone(CXCallUpdate) initWithTinCanIDSChat:v38];
        [v70 reportCallWithUUID:isa updated:v50];

        [v47 fulfill];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_100005EDC();
        return;
      }

      v56 = sub_100004778(v23);
      v57 = static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)("Cannot start TinCan IDS chat using handle because IDS destination was invalid", 77, 2, &_mh_execute_header, v56, v57, _swiftEmptyArrayStorage);
    }

    else
    {
      v51 = sub_100004778(v21);
      static os_log_type_t.error.getter();
      v52 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v53 = sub_100009F00(v52);
      *(v53 + 16) = xmmword_10057D690;
      *(v53 + 56) = type metadata accessor for TinCanIDSService();
      *(v53 + 64) = sub_10000EC90(&unk_1006A29E0, type metadata accessor for TinCanIDSService, &protocol conformance descriptor for NSObject);
      *(v53 + 32) = v19;
      v54 = v19;
      sub_10000F4B0("Cannot start TinCan IDS chat using service %@ because account is not active", 75, v55, &_mh_execute_header);
    }

    sub_100005EDC();

    [v58 v59];
  }
}

id sub_10028EF30(id result, char a2, void *a3)
{
  if (a2)
  {
    v4 = sub_100004778(result);
    v5 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("TinCan IDS chat was canceled", 28, 2, &_mh_execute_header, v4, v5, _swiftEmptyArrayStorage);

    return [a3 fail];
  }

  return result;
}

uint64_t sub_10028EFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4(v5, a3);
}

id sub_10028F0AC(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UUID();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  sub_10001707C();
  if ([a2 isRelaying])
  {
    v11 = [a2 callUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v2, v7);
    v13 = [v2 chatWithUUID:isa];

    if (v13)
    {
      swift_unknownObjectRelease();
      result = [v3 superclass];
      if (result)
      {
        swift_getObjCClassMetadata();
        result = [swift_getObjCClassFromMetadata() instancesRespondToSelector:"provider:performSetRelayingCallAction:"];
        if (result)
        {
          v36.receiver = v3;
          v36.super_class = ObjectType;
          return objc_msgSendSuper2(&v36, "provider:performSetRelayingCallAction:", a1, a2);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v21 = sub_100004778(v14);
      static os_log_type_t.error.getter();
      v22 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v23 = sub_100009F24(v22);
      *(v23 + 16) = xmmword_10057D6A0;
      sub_100009F18();
      *(v23 + 56) = sub_100006AF0(v24, v25, v26);
      sub_100009F18();
      *(v23 + 64) = sub_100290B1C(v27, v28, v29);
      *(v23 + 32) = a2;
      v30 = a2;
      v31 = [v3 chats];
      sub_10026D814(&qword_1006A29B0, &qword_10057D6F0);
      v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      *(v23 + 96) = sub_10026D814(&qword_1006A29B8, &qword_10057D6F8);
      sub_10000A5C0();
      *(v23 + 104) = sub_10001000C(v33, &qword_1006A29B8, &qword_10057D6F8, v34);
      *(v23 + 72) = v32;
      sub_10000F4B0("Could not find chat for set relaying action  %@. All chats: %@", 62, v35, &_mh_execute_header);

      return [v30 fail];
    }
  }

  else
  {
    v16 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v17 = sub_100009F00(v16);
    *(v17 + 16) = xmmword_10057D690;
    *(v17 + 56) = sub_100006AF0(0, &qword_1006A29C8, CXSetRelayingCallAction_ptr);
    *(v17 + 64) = sub_100290B1C(&unk_1006A29D0, &qword_1006A29C8, CXSetRelayingCallAction_ptr);
    *(v17 + 32) = a2;
    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
    v18 = a2;
    v19 = static OS_os_log.default.getter();
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Failing action: %@ since its not relaying", 41, 2, &_mh_execute_header, v19, v20, v17);

    return [v18 fail];
  }

  return result;
}

void sub_10028F4FC()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UUID();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  sub_10001707C();
  if (![v0 superclass])
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_getObjCClassMetadata();
  if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"provider:performSetMutedCallAction:"])
  {
    v43.receiver = v0;
    v43.super_class = ObjectType;
    objc_msgSendSuper2(&v43, "provider:performSetMutedCallAction:", v5, v3);
  }

  v11 = [v3 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v0, v7);
  v13 = [v0 chatWithUUID:isa];

  if (!v13)
  {
    v28 = sub_100004778(v14);
    static os_log_type_t.error.getter();
    v29 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v30 = sub_100009F24(v29);
    *(v30 + 16) = xmmword_10057D6A0;
    sub_100009F18();
    *(v30 + 56) = sub_100006AF0(v31, v32, v33);
    sub_100009F18();
    *(v30 + 64) = sub_100290B1C(v34, v35, v36);
    *(v30 + 32) = v3;
    v37 = v3;
    v38 = [v1 chats];
    sub_10026D814(&qword_1006A29B0, &qword_10057D6F0);
    v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v30 + 96) = sub_10026D814(&qword_1006A29B8, &qword_10057D6F8);
    sub_10000A5C0();
    *(v30 + 104) = sub_10001000C(v40, &qword_1006A29B8, &qword_10057D6F8, v41);
    *(v30 + 72) = v39;
    sub_10000F4B0("Could not find chat for set muted action  %@. All chats: %@", 59, v42, &_mh_execute_header);

    [v37 fail];
    goto LABEL_9;
  }

  v15 = [objc_allocWithZone(CSDMessagingCallMessage) init];
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  [v15 setType:2];
  v17 = sub_100004778([v16 setSenderMuteUplink:{objc_msgSend(v13, "isMuted")}]);
  v18 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v19 = sub_100009F00(v18);
  *(v19 + 16) = xmmword_10057D690;
  *(v19 + 56) = sub_100006AF0(0, &qword_1006A2988, off_100616648);
  *(v19 + 64) = sub_100290B1C(&unk_1006A2990, &qword_1006A2988, off_100616648);
  *(v19 + 32) = v16;
  v20 = v16;
  v21 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Sending TinCan message for sender mute uplink: %@", 49, 2, &_mh_execute_header, v17, v21, v19);

  v22 = v20;
  v23 = sub_1003DD48C(v22);
  if (v24 >> 60 != 15)
  {
    v25 = v23;
    v26 = v24;

    v27 = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(v25, v26);
    [v13 sendDataUnreliably:v27];
    swift_unknownObjectRelease();

LABEL_9:
    sub_100005EDC();
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_10028F99C()
{
  v5.receiver = v1;
  v5.super_class = sub_10000FCD0();
  objc_msgSendSuper2(&v5, "providerDidBegin:", v0);
  v2 = [v1 provider];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10028DA08();
    [v3 setConfiguration:v4];
  }
}

void sub_10028FA88()
{
  sub_100005EF4();
  v2 = v1;
  v3 = sub_10000FCD0();
  v4 = type metadata accessor for Date();
  sub_100007FEC();
  v27 = v5;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for UUID();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  if ([v2 superclass])
  {
    swift_getObjCClassMetadata();
    if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"chatStartedConnecting:"])
    {
      v28.receiver = v2;
      v28.super_class = v3;
      objc_msgSendSuper2(&v28, "chatStartedConnecting:", v0);
    }

    if ([v0 isOutgoing])
    {
      v17 = [v2 provider];
      if (v17)
      {
        v18 = v17;
        v19 = [v0 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v20.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v12 + 8))(v16, v10);
        isa = [v0 dateStartedConnecting];
        if (isa)
        {
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v27 + 8))(v9, v4);
        }

        [v18 reportOutgoingCallWithUUID:v20.super.isa startedConnectingAtDate:isa];
      }

      v22 = [objc_allocWithZone(CXCallUpdate) initWithTinCanIDSChat:v0];
      v23 = [v2 provider];
      if (v23)
      {
        v24 = v23;
        v25 = [v0 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v12 + 8))(v16, v10);
        [v24 reportCallWithUUID:v26 updated:v22];
      }
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_10028FDA8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UUID();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  sub_10001707C();
  if ([v1 superclass])
  {
    swift_getObjCClassMetadata();
    if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"chatConnected:"])
    {
      v13.receiver = v1;
      v13.super_class = ObjectType;
      objc_msgSendSuper2(&v13, "chatConnected:", a1);
    }

    v8 = [objc_allocWithZone(CXCallUpdate) initWithTinCanIDSChat:a1];
    v9 = [v1 provider];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v6 + 8))(v1, v4);
      [v10 reportCallWithUUID:isa updated:v8];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10028FF6C()
{
  sub_100005EF4();
  v2 = v1;
  v3 = sub_10000FCD0();
  v4 = type metadata accessor for Date();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for UUID();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100007FDC();
  sub_10001707C();
  [v1 updateCacheWithChat:v0];
  if ([v0 endedReason] != -1)
  {
    v15 = [v1 provider];
    if (v15)
    {
      v16 = v15;
      v20 = v3;
      v17 = [v0 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v18.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v13 + 8))(v1, v11);
      isa = [v0 dateEnded];
      if (isa)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v6 + 8))(v10, v4);
      }

      [v16 reportCallWithUUID:v18.super.isa endedAtDate:isa privateReason:{objc_msgSend(v0, "endedReason")}];

      v3 = v20;
    }
  }

  if ([v2 superclass])
  {
    swift_getObjCClassMetadata();
    if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"chatEnded:"])
    {
      v21.receiver = v2;
      v21.super_class = v3;
      objc_msgSendSuper2(&v21, "chatEnded:", v0);
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_100290200(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_100290278()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for UUID();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  objc_allocWithZone(CSDMessagingCallMessage);
  sub_100290AC4(v5, v3);
  v15 = sub_100290A00(v5, v3);
  if (!v15)
  {
    v47 = sub_100004778(0);
    v29 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("CSDMessagingCallMessage could not be read", 41, 2, &_mh_execute_header, v47, v29, _swiftEmptyArrayStorage);
    goto LABEL_17;
  }

  v16 = v15;
  v44 = v10;
  v45 = v1;
  v17 = sub_100004778(v15);
  v18 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v19 = sub_100009F00(v18);
  *(v19 + 16) = xmmword_10057D690;
  v20 = sub_100006AF0(0, &qword_1006A2988, off_100616648);
  *(v19 + 56) = v20;
  v21 = sub_100290B1C(&unk_1006A2990, &qword_1006A2988, off_100616648);
  *(v19 + 64) = v21;
  *(v19 + 32) = v16;
  v46 = v16;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Received TinCan message: %@", 27, 2, &_mh_execute_header, v17, v22, v19);

  v23 = [v46 type];
  if (v23 == 2)
  {
    [v7 setRemoteUplinkMuted:{objc_msgSend(v46, "senderMuteUplink")}];
    v24 = [objc_allocWithZone(CXCallUpdate) initWithTinCanIDSChat:v7];
    v25 = [v45 provider];
    if (v25)
    {
      v26 = v25;
      v27 = [v7 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v44 + 8))(v14, v8);
      [v26 reportCallWithUUID:isa updated:v24];

      sub_100005EDC();
      return;
    }

    goto LABEL_17;
  }

  v30 = sub_100004778(v23);
  v31 = static os_log_type_t.error.getter();
  v32 = sub_100009F24(v18);
  *(v32 + 16) = xmmword_10057D6A0;
  v33 = [v46 type];
  if (v33 == 2)
  {
    v34 = @"SenderMuteUplink";
  }

  else if (v33 == 1)
  {
    v34 = @"Invite";
  }

  else
  {
    if (v33)
    {
      v34 = [NSString stringWithFormat:@"(unknown: %i)", v33];
      goto LABEL_15;
    }

    v34 = @"Unknown";
  }

  v35 = v34;
LABEL_15:
  v36 = v34;
  if (!v36)
  {
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  *(v32 + 56) = &type metadata for String;
  v41 = sub_100009D88();
  *(v32 + 32) = v38;
  *(v32 + 40) = v40;
  *(v32 + 96) = v20;
  *(v32 + 104) = v21;
  *(v32 + 64) = v41;
  *(v32 + 72) = v46;
  v46;
  os_log(_:dso:log:type:_:)("TinCan message was of unknown type %@: %@", 41, 2, &_mh_execute_header, v30, v31, v32);

LABEL_17:
  sub_100005EDC();
}

id sub_100290868(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6.super.isa = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7.super.isa = 0;
    goto LABEL_6;
  }

  v6.super.isa = Set._bridgeToObjectiveC()().super.isa;

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v8 = [v3 initWithAccount:a1 destinations:v6.super.isa options:v7.super.isa];

  return v8;
}

id sub_10029093C(void *a1, uint64_t a2, void *a3, char a4, char a5)
{
  v6 = v5;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v6 initOutgoingWithSession:a1 UUID:isa remoteHandle:a3 wantsVideo:a4 & 1 isRelaying:a5 & 1];

  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 8))(a2, v14);
  return v13;
}

id sub_100290A00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(a1, a2);
  }

  v6 = [v2 initWithData:isa];

  return v6;
}

void *sub_100290A84()
{
  v1 = (*(v0 + 16))();
  [v1 setRemoteUplinkMuted:1];
  return v1;
}

uint64_t sub_100290AC4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100290B1C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006AF0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100290B6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100049B14(result, a2);
  }

  return result;
}

uint64_t sub_100290B90(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v10 = 1;
  }

  else
  {
    v7 = sub_100006884();
    v10 = sub_10004A0AC(v7, v8, v9);
  }

  return v10 & 1;
}

uint64_t sub_100290C08(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000796C696DLL;
  v3 = 0x6146656369766564;
  v4 = a1;
  v5 = "systemRootLayerTransform";
  v6 = 0x6146656369766564;
  v7 = 0xEC000000796C696DLL;
  v8 = "deviceHomeButtonType";
  switch(v4)
  {
    case 1:
      v6 = 0xD000000000000014;
      v7 = 0x8000000100561200;
      break;
    case 2:
      v7 = 0xE500000000000000;
      v6 = 0x656C797473;
      break;
    case 3:
      v6 = 0x5379616C70736964;
      v9 = 1701601635;
      goto LABEL_10;
    case 4:
      v7 = 0x8000000100561230;
      v6 = 0xD000000000000018;
      break;
    case 5:
      v6 = 0x636146656C616373;
      v7 = 0xEB00000000726F74;
      break;
    case 6:
      v6 = 0x615272656E726F63;
      v9 = 1937074532;
LABEL_10:
      v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 7:
      v6 = sub_100007750();
      v7 = 0xED00006874646957;
      break;
    case 8:
      v6 = sub_100007750();
      v7 = 0xEE00746867696548;
      break;
    case 9:
      v6 = 0x776F646E69577369;
      v7 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000014;
      v2 = (v8 - 32) | 0x8000000000000000;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x656C797473;
      break;
    case 3:
      v3 = 0x5379616C70736964;
      v10 = 1701601635;
      goto LABEL_21;
    case 4:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000018;
      break;
    case 5:
      v3 = 0x636146656C616373;
      v2 = 0xEB00000000726F74;
      break;
    case 6:
      v3 = 0x615272656E726F63;
      v10 = 1937074532;
LABEL_21:
      v2 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 7:
      sub_10003FB0C();
      v2 = 0xED00006874646957;
      break;
    case 8:
      sub_10003FB0C();
      v2 = 0xEE00746867696548;
      break;
    case 9:
      v3 = 0x776F646E69577369;
      v2 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100290EAC(char a1, char a2)
{
  v2 = "StartCallTranslation";
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = "joinSharePlayActivity";
  }

  else
  {
    v5 = "StartCallTranslation";
  }

  if (a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if ((a2 & 1) == 0)
  {
    v2 = "joinSharePlayActivity";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004A0AC(v4, v5 | 0x8000000000000000, v6);
  }

  return v8 & 1;
}

uint64_t sub_100290F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v13 = 1;
  }

  else
  {
    v10 = sub_100006884();
    v13 = sub_10004A0AC(v10, v11, v12);
  }

  return v13 & 1;
}

uint64_t sub_100290FE0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656E6F6850;
  }

  else
  {
    v3 = 0x656D695465636146;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x656E6F6850;
  }

  else
  {
    v5 = 0x656D695465636146;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10004A0AC(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1002910C8(uint64_t a1)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  swift_errorRetain();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  return String.init<A>(reflecting:)();
}

uint64_t sub_10029112C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  swift_unknownObjectRetain();

  return String.init<A>(reflecting:)();
}