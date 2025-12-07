void sub_1001F87B4(int a1, uint64_t a2, unint64_t a3, NSObject *a4)
{
  v73 = a2;
  v72 = a1;
  v7 = type metadata accessor for Participant();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    if (qword_100529B70 == -1)
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
  v17 = type metadata accessor for Logger();
  v18 = sub_100015AFC(v17, qword_100529B78);
  v19 = *(v8 + 16);
  v69 = a4;
  v19(v10, a4, v7);
  v20 = v4;
  v21 = v73;
  sub_1001C3FE0(v73, a3);
  v71 = v18;
  v22 = a3;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  sub_1001C4034(v21, v22);
  v25 = os_log_type_enabled(v23, v24);
  v70 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v67 = v27;
    v68 = swift_slowAlloc();
    v75 = v68;
    *v26 = 138544386;
    *(v26 + 4) = v20;
    *v27 = v20;
    *(v26 + 12) = 2082;
    v28 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v29 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v30 = v20;
    *(v26 + 14) = sub_10002C9C8(v28, v29, &v75);
    *(v26 + 22) = 2080;
    sub_100004858(&qword_1005222C0, 255, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v8 + 8))(v10, v7);
    v34 = sub_10002C9C8(v31, v33, &v75);

    *(v26 + 24) = v34;
    *(v26 + 32) = 2082;
    v35 = v72;
    v74 = v72;
    sub_1002244E4();
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = sub_10002C9C8(v36, v37, &v75);

    *(v26 + 34) = v38;
    *(v26 + 42) = 2080;
    v39 = Data.description.getter();
    v41 = sub_10002C9C8(v39, v40, &v75);

    *(v26 + 44) = v41;
    v21 = v73;
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}@]<%{public}s> received message from %s. Type: %{public}s. Payload: %s", v26, 0x34u);
    sub_1000038A4(v67, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v35 = v72;
  }

  if (*&v20[OBJC_IVAR___MRDFastSyncGroupSession__state] != 3)
  {
    v47 = v20;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v48, v49))
    {
LABEL_19:

      return;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v75 = v52;
    *v50 = 138543618;
    *(v50 + 4) = v47;
    *v51 = v47;
    *(v50 + 12) = 2082;
    v53 = *&v47[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v54 = *&v47[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v55 = v47;
    *(v50 + 14) = sub_10002C9C8(v53, v54, &v75);
    v56 = "[%{public}@]<%{public}s> dropping message received while not joined.";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v48, v49, v56, v50, 0x16u);
    sub_1000038A4(v51, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v52);

    goto LABEL_19;
  }

  LOBYTE(v75) = v35;
  v74 = 0;
  sub_100224490();
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((v42 & 1) == 0 && !*&v20[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8] && !*&v20[OBJC_IVAR___MRDFastSyncGroupSession_leaderFastSyncIdentifier + 8])
  {
    v62 = v20;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_19;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v75 = v52;
    *v50 = 138543618;
    *(v50 + 4) = v62;
    *v51 = v62;
    *(v50 + 12) = 2082;
    v63 = *&v62[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v64 = *&v62[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v65 = v62;
    *(v50 + 14) = sub_10002C9C8(v63, v64, &v75);
    v56 = "[%{public}@]<%{public}s> dropping message received before leader discovered.";
    goto LABEL_18;
  }

  v43 = v70;
  if (v20[OBJC_IVAR___MRDFastSyncGroupSession_isLeader])
  {
    goto LABEL_22;
  }

  LOBYTE(v75) = v35;
  v74 = 0;
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v42)
  {
    goto LABEL_22;
  }

  v44 = Participant.handle.getter();
  v46 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8];
  if (!v46)
  {

LABEL_36:
    v58 = v20;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_19;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v75 = v52;
    *v50 = 138543618;
    *(v50 + 4) = v58;
    *v51 = v58;
    *(v50 + 12) = 2082;
    v59 = *&v58[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v60 = *&v58[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v61 = v58;
    *(v50 + 14) = sub_10002C9C8(v59, v60, &v75);
    v56 = "[%{public}@]<%{public}s> dropping message that did not come from leader.";
    goto LABEL_18;
  }

  if (v44 == *&v20[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle] && v46 == v45)
  {

    goto LABEL_22;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v57 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if (v35 <= 4u)
  {
    if (v35 <= 1u)
    {
      if (v35)
      {
        sub_1001F9A7C(v42, v21, v43, v69);
      }

      else
      {
        sub_1001F9130(v42, v21, v43, v69);
      }
    }

    else if (v35 == 2)
    {
      sub_1001FBC40(v42, v21, v43, v69);
    }

    else if (v35 == 3)
    {
      sub_1001FC544(v42, v21, v43);
    }

    else
    {
      sub_1002207A4(v69);
    }
  }

  else if (v35 > 7u)
  {
    if (v35 == 8)
    {
      sub_1001FEC2C(v42, v21, v43, v69);
    }

    else if (v35 == 9)
    {
      sub_1001FFEB0(v42, v21, v43, &v69->isa);
    }

    else
    {
      sub_100221AB4(v69);
    }
  }

  else if (v35 == 5)
  {
    sub_1001FD64C(v42, v21, v43, v69);
  }

  else if (v35 == 6)
  {
    sub_100220C10(v69);
  }

  else
  {
    sub_1001FE2F4(v42, v21, v43);
  }
}

uint64_t sub_1001F9130(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a4;
  v58 = type metadata accessor for Participant();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v58);
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v56 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v5[OBJC_IVAR___MRDFastSyncGroupSession_isLeader])
  {
    if (qword_100529B70 == -1)
    {
LABEL_4:
      v19 = type metadata accessor for Logger();
      sub_100015AFC(v19, qword_100529B78);
      v20 = v5;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138543362;
        *(v23 + 4) = v20;
        *v24 = v20;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}@] Leader should not receive leader discovery messages.", v23, 0xCu);
        sub_1000038A4(v24, &qword_100521870, &unk_10044EA70);
      }

      v27 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v26 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v28 = type metadata accessor for TaskPriority();
      (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = v57;
      v30 = v58;
      (*(v8 + 16))(v57, v59, v58);
      v32 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v33 = swift_allocObject();
      *(v33 + 2) = 0;
      *(v33 + 3) = 0;
      *(v33 + 4) = v29;
      (*(v8 + 32))(&v33[v32], v31, v30);
      v34 = &v33[(v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8];
      *v34 = v27;
      *(v34 + 1) = v26;

      sub_1001BF864(0, 0, v12, &unk_100450150, v33);
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  sub_1001C3FE0(a2, a3);
  sub_10036CC7C(a2, a3, &type metadata for LeaderDiscoveryMessage, &off_100527F88, &v60);
  v36 = v61;
  if (v61 >> 60 == 15)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100015AFC(v37, qword_100529B78);
    v38 = v5;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138543362;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&_mh_execute_header, v39, v40, "[%{public}@] LeaderDiscovery message payload is malformed.", v41, 0xCu);
      sub_1000038A4(v42, &qword_100521870, &unk_10044EA70);
    }

    sub_10021DECC();
    v44 = swift_allocError();
    *v45 = 4;
    sub_100204BF8(v44);
  }

  else
  {
    v47 = v59;
    v46 = v60;
    v48 = Participant.handle.getter();
    v49 = &v5[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
    *v49 = v48;
    v49[1] = v50;

    v51 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
    if (v51)
    {
      sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_10044EC70;
      v53 = v51;
      *(v52 + 32) = Participant.handle.getter();
      *(v52 + 40) = v54;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v53 updateAllowedDestinations:isa];

      sub_10020CD20();
      sub_10020BC30(v47);
      return sub_100045968(v46, v36);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001F97D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return _swift_task_switch(sub_1001F97F4, 0, 0);
}

uint64_t sub_1001F97F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    v0[12] = dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

    v3 = Participant.handle.getter();
    v5 = v4;
    v0[13] = v4;
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_1001F9938;

    return NearbyGroup.kickMember(_:)(v3, v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1001F9938()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002253BC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1001F9A7C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v308 = a4;
  v8 = type metadata accessor for Participants();
  v301 = *(v8 - 8);
  v302 = v8;
  __chkstk_darwin(v8);
  v300 = &v283 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  v293 = *(v10 - 8);
  v294 = v10;
  __chkstk_darwin(v10);
  v292 = &v283 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = type metadata accessor for NearbyGroup.Member();
  v298 = *(v296 - 8);
  v12 = __chkstk_darwin(v296);
  v299 = (&v283 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v295 = &v283 - v14;
  v15 = sub_1001BC5A8(&qword_1005222A0, &unk_10044F5A0);
  __chkstk_darwin(v15 - 8);
  v291 = &v283 - v16;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v306 = v17;
  v307 = v18;
  __chkstk_darwin(v17);
  v305 = (&v283 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Participant();
  v21 = *(v20 - 8);
  i = v20;
  v304 = v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v283 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v283 - v25;
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v283 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
  *v30 = v31;
  (*(v28 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v27);
  v32 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v30, v27);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_102:

LABEL_104:
    v221 = v291;
    (v30)(v291, v299, a2);
    v220 = 0;
    v222 = v306;
LABEL_105:
    v223 = v298;
    (*(v298 + 7))(v221, v220, 1, a2);

    if (v223[6](v221, 1, a2) == 1)
    {
      sub_1000038A4(v221, &qword_1005222A0, &unk_10044F5A0);
    }

    else
    {
      i = NearbyGroup.Member.tokenDestination.getter();
      v225 = v224;
      (*v304)(v221, a2);
      if (v225)
      {
        goto LABEL_109;
      }
    }

    v225 = v222[3];
    i = v222[2];

LABEL_109:
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v226 = type metadata accessor for Logger();
    sub_100015AFC(v226, qword_100529B78);
    v227 = v5;

    v228 = Logger.logObject.getter();
    v229 = static os_log_type_t.info.getter();

    v230 = os_log_type_enabled(v228, v229);
    v304 = v225;
    if (v230)
    {
      v231 = swift_slowAlloc();
      v232 = v225;
      v233 = swift_slowAlloc();
      v299 = v233;
      v310 = swift_slowAlloc();
      *v231 = 138543874;
      *(v231 + 4) = v227;
      *v233 = v227;
      *(v231 + 12) = 2082;
      v234 = v222[2];
      v235 = v222[3];
      v236 = v227;

      v237 = sub_10002C9C8(v234, v235, &v310);

      *(v231 + 14) = v237;
      *(v231 + 22) = 2082;
      *(v231 + 24) = sub_10002C9C8(i, v232, &v310);
      _os_log_impl(&_mh_execute_header, v228, v229, "[%{public}@] Send transportMigrationReply push to: %{public}s, dst: %{public}s.", v231, 0x20u);
      sub_1000038A4(v299, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v238 = *&v227[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
    if (!v238)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v299 = v227;
    sub_1001BC5A8(&unk_1005222B0, &qword_10044EB98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10044F540;
    v298 = v238;
    v240 = sub_10036C46C();
    v242 = *v240;
    v241 = *(v240 + 1);
    v310 = v242;
    v311 = v241;
    v296 = v241;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    v243 = sub_10036C4CC();
    v245 = *v243;
    v244 = v243[1];
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v245;
    *(inited + 80) = v244;

    v246 = sub_10036C484();
    v248 = *v246;
    v247 = *(v246 + 1);
    v310 = v248;
    v311 = v247;
    v295 = v247;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();

    v249 = v292;
    static String.Encoding.utf8.getter();
    v250 = String.data(using:allowLossyConversion:)();
    v252 = v251;

    (*(v293 + 8))(v249, v294);
    if (v252 >> 60 == 15)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    *(inited + 168) = &type metadata for Data;
    *(inited + 144) = v250;
    *(inited + 152) = v252;
    v253 = sub_10036C490();
    v254 = v253[1];
    v310 = *v253;
    v311 = v254;
    swift_bridgeObjectRetain_n();
    v255 = AnyHashable.init<A>(_:)();
    v256 = v306;
    v257 = (*(*v306 + 216))(v255);
    *(inited + 240) = &type metadata for Int;
    *(inited + 216) = v257;
    v258 = sub_10036C49C();
    v260 = *v258;
    v259 = v258[1];
    v310 = v260;
    v311 = v259;
    v294 = v259;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    v261 = v299;
    v263 = *(v299 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
    v262 = *(v299 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);
    *(inited + 312) = &type metadata for String;
    *(inited + 288) = v263;
    *(inited + 296) = v262;

    v264 = sub_10036C478();
    v265 = v264[1];
    v310 = *v264;
    v311 = v265;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    v267 = v256[2];
    v266 = v256[3];
    *(inited + 384) = &type metadata for String;
    *(inited + 360) = v267;
    *(inited + 368) = v266;

    v268 = sub_10036C460();
    v269 = v268[1];
    v310 = *v268;
    v311 = v269;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    v270 = *(v261 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8);
    if (!v270)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v271 = *(v261 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle);

    *(inited + 456) = &type metadata for String;
    *(inited + 432) = v271;
    *(inited + 440) = v270;
    sub_1001C2534(inited);
    swift_setDeallocating();
    sub_1001BC5A8(&qword_1005216C0, qword_10044EBA0);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
    v273 = swift_initStackObject();
    *(v273 + 16) = xmmword_10044EC70;
    v274 = v304;
    *(v273 + 32) = i;
    *(v273 + 40) = v274;

    sub_10021FAD4(v273);
    swift_setDeallocating();
    sub_1001E6204(v273 + 32);
    v275 = Set._bridgeToObjectiveC()().super.isa;

    v276 = v298;
    [v298 sendMessage:isa toDestinations:v275];

    v277 = *(&v305->isa + v5);
    if (!v277)
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v278 = v306[2];
    v279 = v306[3];
    v280 = *(*v277 + 392);

    v281 = v278;
    v282 = v287;
    v280(0, v281, v279);
    v41 = v288;
    v72 = v297;
    if (!v282)
    {

LABEL_98:
      LODWORD(v306) = 1;
LABEL_70:
      v36 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger);
      if (v36)
      {
        v175 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
        swift_beginAccess();
        v176 = *(v5 + v175);

        sub_1001BD5E8(v72, v41, v176);

        v307 = v307;
        sub_10036D3A4();
        if (!*(v5 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier + 8))
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        v181 = v177;
        v182 = v178;
        v183 = v179;
        v184 = v180;

        v185 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_localIdentity);
        sub_10036D3A4();
        sub_10036DBD8(v181, v182, v183, v184 & 0x10101, v187, v188, v189, v186 & 0x10101, &v310);
        v190 = sub_10036DE58();
        sub_1002240F0(&v310);
        v191 = v190;
        v192 = v300;
        static Participants.only(_:)();
        v193 = swift_allocObject();
        *(v193 + 16) = v5;
        v194 = v5;
        sub_10020CF20(2u, v190, v192, v36, sub_100224144, v193);

        (*(v301 + 8))(v192, v302);
        if (v306)
        {
          sub_1002021D8(1);
        }
      }

      else
      {

        if (qword_100529B70 != -1)
        {
          swift_once();
        }

        v195 = type metadata accessor for Logger();
        sub_100015AFC(v195, qword_100529B78);
        v196 = v5;
        v197 = Logger.logObject.getter();
        v198 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v197, v198))
        {
          v199 = swift_slowAlloc();
          v200 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          v310 = v201;
          *v199 = 138543618;
          *(v199 + 4) = v196;
          *v200 = v196;
          *(v199 + 12) = 2082;
          v202 = *&v196[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
          v203 = *&v196[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
          v204 = v196;
          *(v199 + 14) = sub_10002C9C8(v202, v203, &v310);
          _os_log_impl(&_mh_execute_header, v197, v198, "[%{public}@]<%{public}s> No messenger to respond to identity share.", v199, 0x16u);
          sub_1000038A4(v200, &qword_100521870, &unk_10044EA70);

          sub_100026A44(v201);
        }
      }

      return;
    }

    if (qword_100529B70 == -1)
    {
LABEL_64:
      v163 = type metadata accessor for Logger();
      sub_100015AFC(v163, qword_100529B78);
      v164 = v5;

      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        v305 = v165;
        v168 = v167;
        v169 = v41;
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v310 = v171;
        *v168 = 138543618;
        *(v168 + 4) = v164;
        *v170 = v164;
        *(v168 + 12) = 2082;
        v172 = v164;
        *(v168 + 14) = sub_10002C9C8(v72, v169, &v310);
        v173 = v166;
        v174 = v305;
        _os_log_impl(&_mh_execute_header, v305, v173, "[%{public}@] realtime transition failure for: %{public}s. Resolve by removing participant.", v168, 0x16u);
        sub_1000038A4(v170, &qword_100521870, &unk_10044EA70);
        v41 = v169;

        sub_100026A44(v171);
      }

      else
      {
      }

      (*((swift_isaMask & *v164) + 0x538))(v72, v41);

      goto LABEL_98;
    }

LABEL_126:
    swift_once();
    goto LABEL_64;
  }

  if (*(v5 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader) != 1)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100015AFC(v56, qword_100529B78);
    v57 = v5;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_18;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138543362;
    *(v60 + 4) = v57;
    *v61 = v57;
    v62 = v57;
    v63 = "[%{public}@] Participants should not receive IdentityShare messages.";
    goto LABEL_17;
  }

  sub_1001C3FE0(a2, a3);
  sub_10036CC7C(a2, a3, &type metadata for IdentityShareMessage, &off_100527FB8, &v310);
  v33 = v310;
  if (!v310)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100015AFC(v64, qword_100529B78);
    v65 = v5;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_18;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138543362;
    *(v60 + 4) = v65;
    *v61 = v65;
    v66 = v65;
    v63 = "[%{public}@] IdentityShare message payload is malformed.";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v58, v59, v63, v60, 0xCu);
    sub_1000038A4(v61, &qword_100521870, &unk_10044EA70);

LABEL_18:

    return;
  }

  v34 = Participant.handle.getter();
  v36 = v35;
  v37 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v290 = v37;
  v38 = *(v5 + v37);
  if (*(v38 + 16))
  {

    v34 = sub_10000698C(v34, v36);
    v30 = v39;

    if (v30)
    {
      v40 = *(v38 + 56) + 16 * v34;
      v42 = *v40;
      v41 = *(v40 + 8);

      v43 = [v33 identifier];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
      swift_beginAccess();
      v48 = *(v5 + v47);
      if (*(v48 + 16))
      {

        v49 = sub_10000698C(v44, v46);
        v51 = v50;

        if (v51)
        {
          v52 = *(*(v48 + 56) + 8 * v49);

          sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
          v53 = v33;
          v54 = v52;
          v55 = static NSObject.== infix(_:_:)();

          LODWORD(v306) = v55 ^ 1;
          goto LABEL_56;
        }
      }

LABEL_42:

      LODWORD(v306) = 1;
LABEL_56:
      while (1)
      {
        v127 = Participant.handle.getter();
        v129 = v128;
        v130 = v290;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v309[0] = *&v130[v5];
        *&v130[v5] = 0x8000000000000000;
        sub_100035B14(v42, v41, v127, v129, isUniquelyReferenced_nonNull_native);

        *&v130[v5] = v309[0];
        swift_endAccess();
        v132 = [v33 identifier];
        v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v135 = v134;

        v136 = v33;
        v137 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
        swift_beginAccess();
        v138 = swift_isUniquelyReferenced_nonNull_native();
        v309[0] = *(v5 + v137);
        *(v5 + v137) = 0x8000000000000000;
        v297 = v42;
        sub_100035B14(v133, v135, v42, v41, v138);

        *(v5 + v137) = v309[0];
        swift_endAccess();
        v139 = [v136 identifier];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v141 = v140;

        v142 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
        swift_beginAccess();
        v143 = v136;
        v144 = swift_isUniquelyReferenced_nonNull_native();
        v309[0] = *(v5 + v142);
        *(v5 + v142) = 0x8000000000000000;
        v307 = v143;
        sub_10021ACB8(v143, v36, v141, v144, &unk_100522930, &unk_100450098);

        *(v5 + v142) = v309[0];
        swift_endAccess();
        v145 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
        v146 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);
        if (!v146)
        {
          break;
        }

        v147 = *(*v146 + 200);

        v149 = v147(v148);

        v150 = Participant.handle.getter();
        if (!*(v149 + 16))
        {

LABEL_67:

LABEL_69:
          v72 = v297;
          goto LABEL_70;
        }

        v152 = sub_10000698C(v150, v151);
        v154 = v153;

        if ((v154 & 1) == 0)
        {
          goto LABEL_67;
        }

        v155 = *(*(v149 + 56) + 8 * v152);

        v157 = (*(*v155 + 168))(v156);
        if (!sub_10036FD5C(v157, 2u) || (v158 = (*(*v155 + 144))(), !sub_10036FD4C(v158 & 1, 1)))
        {

          goto LABEL_69;
        }

        v305 = v145;
        v159 = *(&v145->isa + v5);
        if (!v159)
        {
          goto LABEL_136;
        }

        v160 = v155[2];
        v161 = v155[3];
        v162 = *(*v159 + 368);

        v162(0, v160, v161);
        v306 = v155;

        v205 = OBJC_IVAR___MRDFastSyncGroupSession_expectedRealtimeParticipants;
        swift_beginAccess();
        v206 = *(v5 + v205);
        v208 = v155[2];
        v207 = v155[3];

        v209 = sub_1001BD5E8(v208, v207, v206);

        if ((v209 & 1) == 0)
        {

          LODWORD(v306) = 1;
          goto LABEL_69;
        }

        v287 = 0;
        v288 = v41;
        v210 = v155[2];
        v211 = v155[3];
        swift_beginAccess();
        sub_1001C0CA0(v210, v211);
        swift_endAccess();

        dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

        v30 = NearbyGroup.members.getter();

        v34 = v30 + 56;
        v212 = 1 << *(v30 + 32);
        v213 = -1;
        if (v212 < 64)
        {
          v213 = ~(-1 << v212);
        }

        v33 = v213 & *(v30 + 56);
        v214 = (v212 + 63) >> 6;
        v289 = v298 + 16;
        v290 = v298 + 32;
        v304 = (v298 + 8);

        v215 = 0;
        v72 = v295;
        a2 = v296;
        for (i = v30; v33; v30 = i)
        {
          v26 = v215;
LABEL_89:
          v216 = v298;
          (*(v298 + 2))(v72, *(v30 + 48) + *(v298 + 9) * (__clz(__rbit64(v33)) | (v26 << 6)), a2);
          v30 = *(v216 + 4);
          (v30)(v299, v72, a2);
          if (NearbyGroup.Member.handle.getter() == v306[2] && v217 == v306[3])
          {
            goto LABEL_102;
          }

          v219 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v219)
          {

            a2 = v296;
            goto LABEL_104;
          }

          v33 &= v33 - 1;
          a2 = v296;
          (*v304)(v299, v296);
          v215 = v26;
        }

        while (1)
        {
          v26 = v215 + 1;
          if (__OFADD__(v215, 1))
          {
            break;
          }

          if (v26 >= v214)
          {

            v220 = 1;
            v221 = v291;
            v222 = v306;
            goto LABEL_105;
          }

          v33 = *(v34 + 8 * v26);
          ++v215;
          if (v33)
          {
            goto LABEL_89;
          }
        }

        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        swift_once();
LABEL_52:
        v112 = type metadata accessor for Logger();
        sub_100015AFC(v112, qword_100529B78);
        (*(v72 + 16))(v26, v308, v30);
        v113 = v5;

        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v297 = v34;
          LODWORD(v288) = v115;
          v117 = v72;
          v118 = v116;
          v119 = swift_slowAlloc();
          v287 = v119;
          v304 = swift_slowAlloc();
          v310 = v304;
          *v118 = 138543874;
          *(v118 + 4) = v113;
          *v119 = v113;
          *(v118 + 12) = 2082;
          v120 = v113;
          v121 = v305;
          v286 = v114;
          Participant.id.getter();
          v122 = UUID.uuidString.getter();
          v124 = v123;
          (*(v307 + 1))(v121, v306);
          (*(v117 + 8))(v26, v30);
          v125 = sub_10002C9C8(v122, v124, &v310);

          *(v118 + 14) = v125;
          *(v118 + 22) = 2082;
          *(v118 + 24) = sub_10002C9C8(v297, v33, &v310);
          v126 = v286;
          _os_log_impl(&_mh_execute_header, v286, v288, "[%{public}@] Mapping fast sync participant: %{public}s to prewarmed identifier %{public}s.", v118, 0x20u);
          sub_1000038A4(v287, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();

          v42 = v297;
        }

        else
        {

          (*(v72 + 8))(v26, v30);
          v42 = v34;
        }

        LODWORD(v306) = 1;
        v41 = v33;
        v33 = v289;
      }

      __break(1u);
      goto LABEL_128;
    }
  }

  v67 = OBJC_IVAR___MRDFastSyncGroupSession_prewarmedParticipantIdentifiers;
  swift_beginAccess();
  v68 = *(v5 + v67);
  if (!v68)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v69 = *(v68 + 16);
  v289 = v33;
  if (!v69)
  {
LABEL_29:
    v81 = v305;
    UUID.init()();
    v297 = UUID.uuidString.getter();
    v41 = v82;
    v83 = *(v307 + 1);
    v307 += 8;
    v287 = v83;
    v83(v81, v306);
    v84 = qword_100529B70;

    if (v84 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_100015AFC(v85, qword_100529B78);
    v86 = i;
    v87 = v304;
    v304[2](v24, v308, i);
    v88 = v5;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();

    LODWORD(v286) = v90;
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v288 = v41;
      v92 = v91;
      v93 = swift_slowAlloc();
      v284 = v93;
      v285 = swift_slowAlloc();
      v310 = v285;
      *v92 = 138543874;
      *(v92 + 4) = v88;
      *v93 = v88;
      *(v92 + 12) = 2082;
      v94 = v88;
      v95 = v305;
      v283 = v89;
      Participant.id.getter();
      v96 = UUID.uuidString.getter();
      v98 = v97;
      v287(v95, v306);
      (v87[1])(v24, v86);
      v99 = sub_10002C9C8(v96, v98, &v310);

      *(v92 + 14) = v99;
      *(v92 + 22) = 2082;
      v33 = v289;
      v42 = v297;
      *(v92 + 24) = sub_10002C9C8(v297, v288, &v310);
      v100 = v283;
      _os_log_impl(&_mh_execute_header, v283, v286, "[%{public}@] Mapping fast sync participant: %{public}s to identifier %{public}s.", v92, 0x20u);
      sub_1000038A4(v284, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();

      v41 = v288;
    }

    else
    {

      (v87[1])(v24, v86);
      v42 = v297;
      v33 = v289;
    }

    goto LABEL_42;
  }

  v36 = v33;

  sub_1002186FC(v36);
  if ((v70 & 1) == 0)
  {

    goto LABEL_29;
  }

  swift_beginAccess();
  if (!*(v5 + v67))
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v71 = v36;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v309[0] = *(v5 + v67);
  v73 = v309[0];
  *(v5 + v67) = 0x8000000000000000;
  v297 = v71;
  v75 = sub_1002186FC(v71);
  v76 = *(v73 + 16);
  v77 = (v74 & 1) == 0;
  v78 = v76 + v77;
  if (__OFADD__(v76, v77))
  {
    goto LABEL_120;
  }

  v41 = v74;
  if (*(v73 + 24) >= v78)
  {
    if ((v72 & 1) == 0)
    {
      goto LABEL_124;
    }

    v72 = v304;
    if (v74)
    {
LABEL_37:
      while (1)
      {
        v101 = v309[0];
        v102 = *(v309[0] + 56);
        v103 = *(v102 + 8 * v75);
        if (!*(v103 + 2))
        {
          break;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v104 = *(v103 + 2);
          if (v104)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v103 = sub_10021C354(v103);
          v104 = *(v103 + 2);
          if (v104)
          {
LABEL_40:
            v105 = v104 - 1;
            v106 = &v103[16 * v105];
            v34 = *(v106 + 4);
            v33 = *(v106 + 5);
            *(v103 + 2) = v105;
            v102 = *(v101 + 56);
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_124:
        sub_10021A5C0();
        v72 = v304;
        if ((v41 & 1) == 0)
        {
          goto LABEL_125;
        }
      }

      v34 = 0;
      v33 = 0;
LABEL_44:
      *(v102 + 8 * v75) = v103;
      v36 = v297;

      *(v5 + v67) = v101;
      swift_endAccess();
      if (v33)
      {
        v107 = *(v5 + v67);
        if (v107)
        {
          if (*(v107 + 16))
          {
            v36 = v36;

            v108 = sub_1002186FC(v36);
            if (v109)
            {
              v110 = *(*(v107 + 56) + 8 * v108);

              v111 = *(v110 + 16);

              v30 = i;
              if (!v111)
              {
                swift_beginAccess();
                if (!*(v5 + v67))
                {
                  goto LABEL_135;
                }

                sub_1001EC8FC(0, v36);
                swift_endAccess();
              }

              if (qword_100529B70 == -1)
              {
                goto LABEL_52;
              }

              goto LABEL_121;
            }

LABEL_134:

            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

LABEL_133:

          __break(1u);
          goto LABEL_134;
        }

LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    goto LABEL_125;
  }

  sub_1002198B0(v78, v72);
  v79 = sub_1002186FC(v297);
  if ((v41 & 1) == (v80 & 1))
  {
    v75 = v79;
    v72 = v304;
    if (v41)
    {
      goto LABEL_37;
    }

LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

LABEL_141:
  sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1001FBC40(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v5 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader))
  {
    if (qword_100529B70 == -1)
    {
LABEL_4:
      v19 = type metadata accessor for Logger();
      sub_100015AFC(v19, qword_100529B78);
      v20 = v5;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v21, v22))
      {
LABEL_14:

        return;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      v26 = "[%{public}@] Leader should not receive IdentityShareReply messages.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v21, v22, v26, v23, 0xCu);
      sub_1000038A4(v24, &qword_100521870, &unk_10044EA70);

      goto LABEL_14;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  sub_1001C3FE0(a2, a3);
  sub_10036CC7C(a2, a3, &type metadata for IdentityShareReplyMessage, &off_100528078, &aBlock);
  *&v70[11] = *(v68 + 11);
  v69[1] = v67;
  *v70 = v68[0];
  v69[0] = aBlock;
  v27 = *(&aBlock + 1);
  if (!*(&aBlock + 1))
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100015AFC(v56, qword_100529B78);
    v57 = v5;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_14;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    *(v23 + 4) = v57;
    *v24 = v57;
    v58 = v57;
    v26 = "[%{public}@] IdentityShareReply message payload is malformed.";
    goto LABEL_13;
  }

  v59 = v9;
  v60 = v8;
  v29 = *&v70[8];
  v28 = *&v70[16];
  v30 = *v70;
  v31 = v70[26];
  v32 = v70[25];
  v33 = v70[24];
  v34 = (v5 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier);
  *v34 = *&v69[0];
  v34[1] = v27;

  v35 = (v5 + OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipantIdentifier);
  *v35 = v30;
  v35[1] = v29;
  swift_bridgeObjectRetain_n();

  v36 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
  v37 = v28;
  v38 = String._bridgeToObjectiveC()();
  v39 = [v36 initWithIdentifier:v38 identity:v37 connected:v33 & 1 guest:v32 & 1 hidden:v31 & 1];

  (*((swift_isaMask & *v5) + 0x2A8))(v39);
  sub_1001BC5A8(&qword_1005228A8, &unk_100450030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = Participant.handle.getter();
  *(inited + 40) = v41;
  *(inited + 48) = v30;
  *(inited + 56) = v29;

  v42 = sub_10021EF3C(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228B0, &qword_10045AFF0);
  v43 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  *(v5 + v43) = v42;

  v44 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);
  if (v44)
  {

    v45 = *(*v44 + 360);

    v45(v46);

    sub_1001E6ABC();
    v47 = sub_1001E687C();

    (*((swift_isaMask & *v47) + 0xD0))(v48);

    v49 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings;
    *&aBlock = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings);
    v50 = type metadata accessor for JoinTimingEvents();

    sub_10023231C(v50, &off_1004C33A8);
    *(v5 + v49) = aBlock;

    v51 = swift_allocObject();
    *(v51 + 16) = v5;
    *&v68[0] = sub_1002253C8;
    *(&v68[0] + 1) = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v67 = sub_100003D98;
    *(&v67 + 1) = &unk_1004C3C10;
    v52 = _Block_copy(&aBlock);
    v53 = v5;
    static DispatchQoS.unspecified.getter();
    v65 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v54 = v62;
    v55 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v52);
    sub_1000038A4(v69, &qword_1005229C0, &qword_100450138);
    (*(v59 + 8))(v54, v55);
    (*(v61 + 8))(v12, v63);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001FC544(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v68 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v4[OBJC_IVAR___MRDFastSyncGroupSession_isLeader])
  {
    if (qword_100529B70 == -1)
    {
LABEL_4:
      v18 = type metadata accessor for Logger();
      sub_100015AFC(v18, qword_100529B78);
      v19 = v4;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v20, v21))
      {
LABEL_20:

        return;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      v25 = "[%{public}@] Leader should not receive MemberSync messages.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v20, v21, v25, v22, 0xCu);
      sub_1000038A4(v23, &qword_100521870, &unk_10044EA70);

      goto LABEL_20;
    }

LABEL_24:
    swift_once();
    goto LABEL_4;
  }

  sub_1001C3FE0(a2, a3);
  sub_10036CC7C(a2, a3, &type metadata for MemberSyncMessage, &off_1005280A8, &aBlock);
  v26 = aBlock;
  if (!aBlock)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100015AFC(v49, qword_100529B78);
    v50 = v4;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_20;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138543362;
    *(v22 + 4) = v50;
    *v23 = v50;
    v51 = v50;
    v25 = "[%{public}@] MemberSync message payload is malformed.";
    goto LABEL_19;
  }

  v27 = v72;
  v60 = v73;
  v28 = aBlock[2];
  v29 = &OBJC_IVAR___MRDNowPlayingObserverState__contentItems;
  v30 = _swiftEmptyArrayStorage;
  v64 = v7;
  v65 = v4;
  v62 = aBlock;
  v63 = v8;
  v61 = v72;
  if (v28)
  {
    aBlock = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v31 = v26 + 58;
    do
    {
      v32 = *(v31 - 10);
      v33 = *(v31 - 2);
      v34 = *(v31 - 1);
      v35 = *v31;
      v31 += 32;
      v36 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);

      v37 = v32;
      v38 = String._bridgeToObjectiveC()();

      [v36 initWithIdentifier:v38 identity:v37 connected:v33 guest:v34 hidden:v35];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v28;
    }

    while (v28);
    v30 = aBlock;
    v7 = v64;
    v4 = v65;
    v8 = v63;
    v27 = v61;
    v29 = &OBJC_IVAR___MRDNowPlayingObserverState__contentItems;
  }

  v59 = v30;
  v39 = *(v27 + 16);
  if (v39)
  {
    aBlock = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v40 = (v27 + 58);
    do
    {
      v41 = *(v40 - 10);
      v42 = *(v40 - 2);
      v43 = *(v40 - 1);
      v44 = *v40;
      v40 += 32;
      v45 = objc_allocWithZone((v29 + 732));

      v46 = v41;
      v47 = String._bridgeToObjectiveC()();

      [v45 initWithIdentifier:v47 identity:v46 connected:v42 guest:v43 hidden:v44];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v39;
    }

    while (v39);
    v48 = aBlock;
    v7 = v64;
    v4 = v65;
    v8 = v63;
  }

  else
  {
    v48 = _swiftEmptyArrayStorage;
  }

  v52 = swift_allocObject();
  v53 = v59;
  v54 = v60;
  v52[2] = v4;
  v52[3] = v54;
  v52[4] = v53;
  v52[5] = v48;
  v75 = sub_100223E94;
  v76 = v52;
  aBlock = _NSConcreteStackBlock;
  v72 = 1107296256;
  v73 = sub_100003D98;
  v74 = &unk_1004C3BC0;
  v55 = _Block_copy(&aBlock);
  v56 = v4;
  v57 = v66;
  static DispatchQoS.unspecified.getter();
  v70 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  v58 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v55);
  (*(v8 + 8))(v58, v7);
  (*(v67 + 8))(v57, v69);
}

void *sub_1001FCD38(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v38 = a3;
  v37 = a2(0);
  v5 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = v30 - v6;
  v7 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v30[1] = v3;
    v43 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v7, 0);
    v41 = a1 + 56;
    v42 = v43;
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v34 = v5 + 8;
    v35 = v5 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v41 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      v16 = (*(v5 + 16))(v36, *(a1 + 48) + *(v5 + 72) * v9, v37);
      v40 = v38(v16);
      v18 = v17;
      result = (*(v5 + 8))(v14, v15);
      v19 = v42;
      v43 = v42;
      v21 = v42[2];
      v20 = v42[3];
      if (v21 >= v20 >> 1)
      {
        result = sub_1000089FC((v20 > 1), v21 + 1, 1);
        v19 = v43;
      }

      v19[2] = v21 + 1;
      v22 = &v19[2 * v21];
      v22[4] = v40;
      v22[5] = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v23 = *(v41 + 8 * v13);
      if ((v23 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v9 & 0x3F));
      if (v24)
      {
        v11 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v32;
        v5 = v33;
      }

      else
      {
        v25 = v13 << 6;
        v26 = v13 + 1;
        v12 = v32;
        v27 = (v31 + 8 * v13);
        v5 = v33;
        while (v26 < (v11 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_10000A16C(v9, v39, 0);
            v11 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_10000A16C(v9, v39, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_1001FD048(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v21 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v21 + 56;
    result = _HashTable.startBucket.getter();
    v5 = v21;
    v6 = result;
    v7 = 0;
    v8 = *(v21 + 36);
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = v4;
      v12 = objc_allocWithZone(SKHandle);

      v13 = String._bridgeToObjectiveC()();
      [v12 initWithString:v13];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v5 = v21;
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v14 = *(v11 + 8 * v10);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v4 = v11;
      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v10 << 6;
        v17 = v10 + 1;
        v18 = (v21 + 64 + 8 * v10);
        while (v17 < (v9 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_10000A16C(v6, v8, 0);
            v5 = v21;
            v9 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        result = sub_10000A16C(v6, v8, 0);
        v5 = v21;
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1001FD2C4(uint64_t a1)
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
    sub_1000089FC(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v39;
        v9 = v41;
        v36 = v40;
        v10 = v1;
        sub_10021C130(v39, v40, v41, v1);
        v12 = v11;
        v13 = [v11 handle];
        v14 = [v13 handleString];

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_1000089FC((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_1001BC5A8(&qword_100522898, &qword_100450010);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v38, 0);
          if (v5 == v34)
          {
LABEL_32:
            sub_10000A16C(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v22 = 1 << *(v10 + 32);
          if (v8 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v8 >> 6;
          v24 = *(v33 + 8 * (v8 >> 6));
          if (((v24 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v8 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_10000A16C(v8, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_10000A16C(v8, v36, 0);
          }

LABEL_31:
          v31 = *(v10 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1001FD64C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for Participant();
  v81 = *(v9 - 8);
  __chkstk_darwin(v9);
  v79 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = v10;
  v11 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v74[-v12];
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v20 = (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v21 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader);
  v78 = v9;
  if (v21 != 1)
  {
    v51 = (*((swift_isaMask & *v5) + 0x2A0))(v20);
    if (!v51)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v22 = Participant.handle.getter();
  v24 = v23;
  v25 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v26 = *(v5 + v25);
  if (!*(v26 + 16))
  {

    goto LABEL_16;
  }

  v76 = a3;
  v77 = a4;

  v27 = sub_10000698C(v22, v24);
  v29 = v28;

  if ((v29 & 1) == 0)
  {

    a4 = v77;
    goto LABEL_16;
  }

  v30 = (*(v26 + 56) + 16 * v27);
  v31 = *v30;
  v32 = v30[1];

  v33 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
  swift_beginAccess();
  v34 = *(v5 + v33);

  v35 = sub_1001BD5E8(v31, v32, v34);

  v36 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
  swift_beginAccess();
  v37 = *(v5 + v36);
  if (!*(v37 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v38 = sub_10000698C(v31, v32);
  if ((v39 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v75 = v35;
  v40 = (*(v37 + 56) + 16 * v38);
  v42 = *v40;
  v41 = v40[1];
  v43 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
  swift_beginAccess();
  v44 = *(v5 + v43);
  if (!*(v44 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v45 = sub_10000698C(v42, v41);
  v47 = v46;

  if ((v47 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v48 = *(*(v44 + 56) + 8 * v45);

  v49 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
  v50 = String._bridgeToObjectiveC()();

  v51 = [v49 initWithIdentifier:v50 identity:v48 connected:1 guest:v75 & 1];

  a4 = v77;
  a3 = v76;
  if (v51)
  {
LABEL_12:
    v52 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);
    if (v52)
    {
      v82[3] = &type metadata for Data;
      v82[0] = a2;
      v82[1] = a3;

      sub_1001C3FE0(a2, a3);
      v53 = Participant.handle.getter();
      (*(*v52 + 432))(v82, v53, v54, 0);

      sub_100026A44(v82);
      return;
    }

    goto LABEL_26;
  }

LABEL_16:
  if (qword_100529B70 != -1)
  {
LABEL_21:
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100015AFC(v55, qword_100529B78);
  v56 = v5;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  v59 = os_log_type_enabled(v57, v58);
  v60 = v78;
  if (v59)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 138543362;
    *(v61 + 4) = v56;
    *v62 = v56;
    v63 = v56;
    _os_log_impl(&_mh_execute_header, v57, v58, "[%{public}@] Received remote control message from unmapped participant. Kicking.", v61, 0xCu);
    sub_1000038A4(v62, &qword_100521870, &unk_10044EA70);
  }

  v65 = *(v56 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  v64 = *(v56 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);
  v66 = type metadata accessor for TaskPriority();
  (*(*(v66 - 8) + 56))(v13, 1, 1, v66);
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = v81;
  v69 = v79;
  (*(v81 + 16))(v79, a4, v60);
  v70 = (*(v68 + 80) + 40) & ~*(v68 + 80);
  v71 = (v80 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  *(v72 + 2) = 0;
  *(v72 + 3) = 0;
  *(v72 + 4) = v67;
  (*(v68 + 32))(&v72[v70], v69, v60);
  v73 = &v72[v71];
  *v73 = v65;
  *(v73 + 1) = v64;

  sub_1001BF864(0, 0, v13, &unk_100450128, v72);
}

uint64_t sub_1001FDDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return _swift_task_switch(sub_1001FDDF8, 0, 0);
}

uint64_t sub_1001FDDF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    v0[12] = dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

    v3 = Participant.handle.getter();
    v5 = v4;
    v0[13] = v4;
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_1001FDF3C;

    return NearbyGroup.kickMember(_:)(v3, v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1001FDF3C()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001FE080, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1001FE080()
{
  v14 = v0;

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100529B78);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 138543874;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v6 + 4) = Strong;
    *v7 = Strong;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_10002C9C8(v5, v4, &v13);
    *(v6 + 22) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v10;
    v7[1] = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}@]<%{public}s> Error kicking member: %{public}@", v6, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v8);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001FE2F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_11;
  }

  v13 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
  if (v13)
  {
    v14 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion + 8];
    sub_10021DF20(*&v4[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion], v14);
    sub_1001C3FE0(a2, a3);
    sub_10036CC7C(a2, a3, &type metadata for ErrorReplyMessage, &off_1005280D8, &v55);
    v15 = v56;
    if (v56)
    {
      if (v56 == 1)
      {
        if (qword_100529B70 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_100015AFC(v16, qword_100529B78);
        v17 = v4;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138543362;
          *(v20 + 4) = v17;
          *v21 = v17;
          v22 = v17;
          _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}@] TransportMigrationReply message payload is malformed.", v20, 0xCu);
          sub_1000038A4(v21, &qword_100521870, &unk_10044EA70);
        }

        sub_10021DECC();
        swift_allocError();
        *v23 = 6;
        v13();

        v24 = swift_allocError();
        *v25 = 6;
        sub_100204BF8(v24);
        goto LABEL_24;
      }

      v40 = v55;
      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_100015AFC(v41, qword_100529B78);
      v42 = v4;
      sub_100223D54(v40, v15);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.fault.getter();

      sub_100223D68(v40, v15);
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v55 = v47;
        *v45 = 138543618;
        *(v45 + 4) = v42;
        *v46 = v42;
        *(v45 + 12) = 2080;
        v48 = v42;
        *(v45 + 14) = sub_10002C9C8(v40, v15, &v55);
        _os_log_impl(&_mh_execute_header, v43, v44, "[%{public}@] TransportMigrationReply error: %s. Cancel transition to low power.", v45, 0x16u);
        sub_1000038A4(v46, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v47);
      }

      v49 = *&v42[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
      if (v49)
      {
        v50 = &v42[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
        v51 = *&v42[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
        if (v51)
        {
          v52 = *v50;

          sub_100223D68(v40, v15);
          (*(*v49 + 416))(1, v52, v51);

          sub_10021DECC();
          swift_allocError();
          *v53 = 6;
          v13();
LABEL_24:

          return sub_1001C7C2C(v13, v14);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v35 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
      if (v35)
      {
        v36 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
        if (v36)
        {
          v37 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
          v38 = *(*v35 + 392);

          v38(1, v37, v36);

          (v13)(0);
          return sub_1001C7C2C(v13, v14);
        }

        goto LABEL_30;
      }

      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (qword_100529B70 != -1)
  {
    goto LABEL_27;
  }

LABEL_11:
  v26 = type metadata accessor for Logger();
  sub_100015AFC(v26, qword_100529B78);
  v27 = v4;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138543362;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}@] Received transport migration reply with no completion.", v30, 0xCu);
    sub_1000038A4(v31, &qword_100521870, &unk_10044EA70);
  }

  sub_10021DECC();
  v33 = swift_allocError();
  *v34 = 6;
  sub_100204BF8(v33);
}

void sub_1001FEC2C(uint64_t a1, uint64_t a2, unint64_t a3, NSObject *a4)
{
  v5 = v4;
  v142 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v137 = *(v8 - 8);
  __chkstk_darwin(v8);
  v134 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for DispatchQoS();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Participant();
  v139 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v138 = &v127 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(&v5->isa + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_1001C3FE0(a2, a3);
  sub_10036CC7C(a2, a3, &type metadata for JoinResponseMessage, &off_100528018, &aBlock);
  v22 = v145;
  if (!v145)
  {
LABEL_26:
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100015AFC(v62, qword_100529B78);
    v63 = v5;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v64, v65))
    {
      goto LABEL_34;
    }

    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    aBlock = v68;
    *v66 = 138543618;
    *(v66 + 4) = v63;
    *v67 = v63;
    *(v66 + 12) = 2080;
    v69 = v63;
    *(v66 + 14) = sub_10002C9C8(0xD000000000000028, 0x800000010043BBD0, &aBlock);
    _os_log_impl(&_mh_execute_header, v64, v65, "[%{public}@] %s message payload is malformed.", v66, 0x16u);
    sub_1000038A4(v67, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v68);

LABEL_33:

LABEL_34:

    return;
  }

  v141 = aBlock;
  v23 = v146;
  v24 = Participant.handle.getter();
  v26 = v25;
  v27 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v28 = *(&v5->isa + v27);
  if (!*(v28 + 16) || (v131 = v8, , v29 = sub_10000698C(v24, v26), v31 = v30, , (v31 & 1) == 0))
  {

    v16 = v139;
    if (qword_100529B70 == -1)
    {
LABEL_31:
      v70 = type metadata accessor for Logger();
      sub_100015AFC(v70, qword_100529B78);
      (*(v16 + 16))(v14, v142, v11);
      v71 = v11;
      v72 = v5;
      v64 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v64, v73))
      {

        (*(v16 + 8))(v14, v71);
        return;
      }

      v74 = v16;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v75 = 138543874;
      *(v75 + 4) = v72;
      *v76 = v72;
      *(v75 + 12) = 2080;
      v77 = v72;
      *(v75 + 14) = sub_10002C9C8(0xD000000000000028, 0x800000010043BBD0, &aBlock);
      *(v75 + 22) = 2082;
      v78 = Participant.handle.getter();
      v79 = v71;
      v81 = v80;
      (*(v74 + 8))(v14, v79);
      v82 = sub_10002C9C8(v78, v81, &aBlock);

      *(v75 + 24) = v82;
      _os_log_impl(&_mh_execute_header, v64, v73, "[%{public}@] %s message received from unknown handle: %{public}s", v75, 0x20u);
      sub_1000038A4(v76, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();

      goto LABEL_33;
    }

LABEL_59:
    swift_once();
    goto LABEL_31;
  }

  v32 = (*(v28 + 56) + 16 * v29);
  v33 = *v32;
  v14 = v32[1];

  v34 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
  swift_beginAccess();
  v35 = *(&v5->isa + v34);

  v36 = sub_1001BD5E8(v33, v14, v35);

  v37 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
  swift_beginAccess();
  v38 = *(&v5->isa + v37);
  if (!*(v38 + 16))
  {
    __break(1u);
    goto LABEL_61;
  }

  LODWORD(v130) = v36;
  v132 = v5;
  v140 = v22;

  v35 = v38;
  v39 = sub_10000698C(v33, v14);
  if ((v40 & 1) == 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v41 = (*(v38 + 56) + 16 * v39);
  v43 = *v41;
  v42 = v41[1];
  v44 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
  v45 = v132;
  swift_beginAccess();
  v35 = *(&v45->isa + v44);
  if (!*(v35 + 16))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v46 = sub_10000698C(v43, v42);
  v48 = v47;

  if ((v48 & 1) == 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v49 = *(*(v35 + 56) + 8 * v46);

  v50 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
  v51 = String._bridgeToObjectiveC()();

  v130 = [v50 initWithIdentifier:v51 identity:v49 connected:1 guest:v130 & 1];

  v52 = OBJC_IVAR___MRDFastSyncGroupSession_pendingParticipants;
  v53 = v132;
  swift_beginAccess();
  v35 = *(&v53->isa + v52);
  v129 = v11;
  v128 = v23;
  if (!(v35 >> 62))
  {
    v16 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_64:
  v16 = _CocoaArrayWrapper.endIndex.getter();
LABEL_11:
  v5 = v140;

  if (v16)
  {
    v54 = 0;
    while (1)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        if (v54 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_58;
        }

        v14 = *(v35 + 8 * v54 + 32);
        swift_unknownObjectRetain();
        v11 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_25;
        }
      }

      v55 = [v14 identifier];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = v56;
      v5 = v140;
      if (v59 == v141 && v140 == v58)
      {
        break;
      }

      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v61)
      {
        goto LABEL_43;
      }

      swift_unknownObjectRelease();
      ++v54;
      if (v11 == v16)
      {
        goto LABEL_36;
      }
    }

LABEL_43:

    v91 = [v14 identifier];
    v92 = v129;
    if (!v91)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = String._bridgeToObjectiveC()();
    }

    v93 = [v14 identity];
    v94 = [objc_allocWithZone(MRDFastSyncGroupSessionParticipant) initWithIdentifier:v91 identity:v93 connected:0 guest:objc_msgSend(v14 hidden:{"guest"), objc_msgSend(v14, "hidden")}];

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100015AFC(v95, qword_100529B78);
    v96 = v139;
    v97 = v138;
    (*(v139 + 16))(v138, v142, v92);
    v98 = v132;

    v99 = v94;
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();

    v102 = os_log_type_enabled(v100, v101);
    v142 = v99;
    if (v102)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      aBlock = v141;
      *v103 = 138544386;
      *(v103 + 4) = v98;
      *v104 = v98;
      v132 = v100;
      *(v103 + 12) = 2080;
      v105 = v98;
      *(v103 + 14) = sub_10002C9C8(0xD000000000000028, 0x800000010043BBD0, &aBlock);
      *(v103 + 22) = 2080;
      v127 = v101;
      v106 = v128;
      if (v128)
      {
        v107 = 0x6465766F72707061;
      }

      else
      {
        v107 = 0x64657463656A6572;
      }

      v108 = sub_10002C9C8(v107, 0xE800000000000000, &aBlock);

      *(v103 + 24) = v108;
      *(v103 + 32) = 2112;
      *(v103 + 34) = v99;
      v104[1] = v99;
      *(v103 + 42) = 2082;
      v109 = v99;
      v110 = v138;
      v111 = Participant.handle.getter();
      v113 = v112;
      (*(v96 + 8))(v110, v129);
      v114 = sub_10002C9C8(v111, v113, &aBlock);

      *(v103 + 44) = v114;
      v115 = v132;
      _os_log_impl(&_mh_execute_header, v132, v127, "[%{public}@] %s %s %@ from: %{public}s", v103, 0x34u);
      sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    else
    {

      (*(v96 + 8))(v97, v92);

      v106 = v128;
    }

    v141 = *(&v98->isa + OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue);
    v116 = swift_allocObject();
    v117 = v142;
    v116[2] = v98;
    v116[3] = v117;
    v118 = v130;
    v116[4] = v130;
    if (v106)
    {
      v148 = sub_100223C98;
      v149 = v116;
      aBlock = _NSConcreteStackBlock;
      v145 = 1107296256;
      v119 = &unk_1004C3B48;
    }

    else
    {
      v148 = sub_100223C44;
      v149 = v116;
      aBlock = _NSConcreteStackBlock;
      v145 = 1107296256;
      v119 = &unk_1004C3AF8;
    }

    v146 = sub_100003D98;
    v147 = v119;
    v120 = _Block_copy(&aBlock);
    v121 = v98;
    v122 = v117;
    v123 = v118;
    v124 = v133;
    static DispatchQoS.unspecified.getter();
    v143 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v125 = v134;
    v126 = v131;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v120);

    swift_unknownObjectRelease();
    (*(v137 + 8))(v125, v126);
    (*(v135 + 8))(v124, v136);
  }

  else
  {
LABEL_36:

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    sub_100015AFC(v83, qword_100529B78);
    v84 = v132;

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v87 = 138543874;
      *(v87 + 4) = v84;
      *v88 = v84;
      *(v87 + 12) = 2080;
      v89 = v84;
      *(v87 + 14) = sub_10002C9C8(0xD000000000000028, 0x800000010043BBD0, &aBlock);
      *(v87 + 22) = 2082;
      v90 = sub_10002C9C8(v141, v5, &aBlock);

      *(v87 + 24) = v90;
      _os_log_impl(&_mh_execute_header, v85, v86, "[%{public}@] %s message received for unknown participant: %{public}s", v87, 0x20u);
      sub_1000038A4(v88, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1001FFEB0(uint64_t a1, uint64_t a2, unint64_t a3, void **a4)
{
  v5 = v4;
  v137 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v133 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for DispatchQoS();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for Participant();
  v135 = *(v136 - 8);
  v12 = __chkstk_darwin(v136);
  v14 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v130 = &v124 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v23 = *(v17 + 8);
  v22 = v17 + 8;
  v23(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  sub_1001C3FE0(a2, a3);
  sub_10036CC7C(a2, a3, &type metadata for RemoveRequestMessage, &off_100528048, &aBlock);
  v24 = v140;
  if (!v140)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_100015AFC(v90, qword_100529B78);
    v91 = v5;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v92, v93))
    {
      goto LABEL_25;
    }

    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    aBlock = v96;
    *v94 = 138543618;
    *(v94 + 4) = v91;
    *v95 = v91;
    *(v94 + 12) = 2080;
    v97 = v91;
    *(v94 + 14) = sub_10002C9C8(0xD000000000000029, 0x800000010043BBA0, &aBlock);
    _os_log_impl(&_mh_execute_header, v92, v93, "[%{public}@] %s message payload is malformed.", v94, 0x16u);
    sub_1000038A4(v95, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v96);

LABEL_24:

LABEL_25:

    return;
  }

  v25 = aBlock;
  v26 = Participant.handle.getter();
  v28 = v27;
  v29 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v30 = *&v5[v29];
  if (!*(v30 + 16) || (, v31 = sub_10000698C(v26, v28), v33 = v32, , (v33 & 1) == 0))
  {

    v22 = v136;

    v9 = v135;
    if (qword_100529B70 == -1)
    {
LABEL_22:
      v98 = type metadata accessor for Logger();
      sub_100015AFC(v98, qword_100529B78);
      v9[2](v14, v137, v22);
      v99 = v5;
      v92 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v92, v100))
      {

        (v9[1])(v14, v22);
        return;
      }

      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v101 = 138543874;
      *(v101 + 4) = v99;
      *v102 = v99;
      *(v101 + 12) = 2080;
      v103 = v99;
      *(v101 + 14) = sub_10002C9C8(0xD000000000000029, 0x800000010043BBA0, &aBlock);
      *(v101 + 22) = 2082;
      v104 = Participant.handle.getter();
      v106 = v105;
      (v9[1])(v14, v22);
      v107 = sub_10002C9C8(v104, v106, &aBlock);

      *(v101 + 24) = v107;
      _os_log_impl(&_mh_execute_header, v92, v100, "[%{public}@] %s message received from unknown handle: %{public}s", v101, 0x20u);
      sub_1000038A4(v102, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();

      goto LABEL_24;
    }

LABEL_36:
    swift_once();
    goto LABEL_22;
  }

  v129 = v25;
  v34 = (*(v30 + 56) + 16 * v31);
  v35 = *v34;
  v36 = v34[1];

  v37 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
  swift_beginAccess();
  v38 = *&v5[v37];

  LODWORD(v128) = sub_1001BD5E8(v35, v36, v38);

  v39 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
  swift_beginAccess();
  v40 = *&v5[v39];
  if (!*(v40 + 16))
  {
    __break(1u);
    goto LABEL_38;
  }

  v125 = v37;
  v124 = v8;

  v41 = sub_10000698C(v35, v36);
  if ((v42 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v127 = v9;
  v43 = (*(v40 + 56) + 16 * v41);
  v45 = *v43;
  v44 = v43[1];
  v46 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
  swift_beginAccess();
  v126 = v46;
  v47 = *&v5[v46];
  if (!*(v47 + 16))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v48 = sub_10000698C(v45, v44);
  v9 = v49;

  if ((v9 & 1) == 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v50 = *(*(v47 + 56) + 8 * v48);

  v51 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
  v52 = String._bridgeToObjectiveC()();

  v9 = [v51 initWithIdentifier:v52 identity:v50 connected:1 guest:v128 & 1];

  v53 = *&v5[v39];
  v54 = v127;
  if (!*(v53 + 16))
  {
    goto LABEL_28;
  }

  v55 = sub_10000698C(v129, v24);
  if ((v56 & 1) == 0 || (v57 = (*(v53 + 56) + 16 * v55), v59 = *v57, v58 = v57[1], , , v60 = *&v5[v126], !*(v60 + 16)) || (, v61 = sub_10000698C(v59, v58), v63 = v62, , (v63 & 1) == 0))
  {

LABEL_28:
    if (qword_100529B70 == -1)
    {
LABEL_29:
      v108 = type metadata accessor for Logger();
      sub_100015AFC(v108, qword_100529B78);
      v109 = v5;

      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v112 = 138543874;
        *(v112 + 4) = v109;
        *v113 = v109;
        *(v112 + 12) = 2080;
        v114 = v109;
        *(v112 + 14) = sub_10002C9C8(0xD000000000000029, 0x800000010043BBA0, &aBlock);
        *(v112 + 22) = 2082;
        v115 = sub_10002C9C8(v129, v24, &aBlock);

        *(v112 + 24) = v115;
        _os_log_impl(&_mh_execute_header, v110, v111, "[%{public}@] %s message received for unknown participant identifier: %{public}s", v112, 0x20u);
        sub_1000038A4(v113, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      else
      {
      }

      return;
    }

LABEL_41:
    swift_once();
    goto LABEL_29;
  }

  v64 = *(*(v60 + 56) + 8 * v61);

  v65 = *&v5[v125];

  v66 = sub_1001BD5E8(v129, v24, v65);

  v67 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
  v68 = v64;
  v69 = String._bridgeToObjectiveC()();

  v70 = [v67 initWithIdentifier:v69 identity:v68 connected:1 guest:v66 & 1];

  v129 = v68;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_100015AFC(v71, qword_100529B78);
  v72 = v135;
  v73 = v130;
  v74 = v136;
  v135[2](v130, v137, v136);
  v75 = v5;
  v76 = v70;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v128 = v77;
    v80 = v79;
    v81 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    aBlock = v137;
    *v80 = 138544130;
    *(v80 + 4) = v75;
    *v81 = v75;
    *(v80 + 12) = 2080;
    LODWORD(v126) = v78;
    v82 = v75;
    *(v80 + 14) = sub_10002C9C8(0xD000000000000029, 0x800000010043BBA0, &aBlock);
    *(v80 + 22) = 2112;
    *(v80 + 24) = v76;
    v81[1] = v76;
    *(v80 + 32) = 2082;
    v83 = v76;
    v84 = Participant.handle.getter();
    v85 = v73;
    v87 = v86;
    (v72[1])(v85, v74);
    v88 = sub_10002C9C8(v84, v87, &aBlock);

    *(v80 + 34) = v88;
    v89 = v128;
    _os_log_impl(&_mh_execute_header, v128, v126, "[%{public}@] %s %@ from: %{public}s", v80, 0x2Au);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  else
  {

    (v72[1])(v73, v74);
  }

  v116 = v124;
  v137 = *&v75[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
  v117 = swift_allocObject();
  v117[2] = v75;
  v117[3] = v76;
  v117[4] = v9;
  v143 = sub_100223C38;
  v144 = v117;
  aBlock = _NSConcreteStackBlock;
  v140 = 1107296256;
  v141 = sub_100003D98;
  v142 = &unk_1004C3AA8;
  v118 = _Block_copy(&aBlock);
  v119 = v75;
  v120 = v76;
  v121 = v9;
  v122 = v131;
  static DispatchQoS.unspecified.getter();
  v138 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  v123 = v133;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v118);

  (v54[1])(v123, v116);
  (*(v132 + 8))(v122, v134);
}

void sub_100200EC8(uint64_t a1)
{
  v2 = v1;
  v168 = a1;
  v166 = type metadata accessor for UUID();
  v3 = *(v166 - 8);
  v4 = __chkstk_darwin(v166);
  v161 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v150 - v7;
  __chkstk_darwin(v6);
  v10 = &v150 - v9;
  v169 = type metadata accessor for Participant();
  v167 = *(v169 - 8);
  v11 = __chkstk_darwin(v169);
  v160 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v150 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  v23 = *(v16 + 8);
  v22 = v16 + 8;
  v23(v18, v15);
  if ((v21 & 1) == 0)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v22 = OBJC_IVAR___MRDFastSyncGroupSession__state;
  if (*&v2[OBJC_IVAR___MRDFastSyncGroupSession__state] == 3)
  {
    if (*&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupSession])
    {
      v24 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8];
      if (v24)
      {
        v154 = v8;
        v155 = v2;
        v162 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
        v25 = v168 + 56;
        v26 = 1 << *(v168 + 32);
        v27 = -1;
        if (v26 < 64)
        {
          v27 = ~(-1 << v26);
        }

        v28 = v27 & *(v168 + 56);
        v29 = &v2[OBJC_IVAR___MRDFastSyncGroupSession_localFastSyncIdentifier];
        v157 = v24;
        v158 = &v2[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
        v2 = ((v26 + 63) >> 6);
        v164 = v167 + 16;
        v165 = (v3 + 8);
        v163 = (v167 + 8);

        v156 = &_swiftEmptyDictionarySingleton;
        v159 = v29;
        v30 = 0;
        if (v28)
        {
          while (1)
          {
            v22 = v30;
LABEL_12:
            v31 = __clz(__rbit64(v28));
            v28 &= v28 - 1;
            (*(v167 + 16))(v14, *(v168 + 48) + *(v167 + 72) * (v31 | (v22 << 6)), v169);
            Participant.id.getter();
            v32 = UUID.uuidString.getter();
            v34 = v33;
            v35 = *v165;
            (*v165)(v10, v166);
            v36 = *(v29 + 1);
            if (!v36)
            {
              break;
            }

            if (v32 == *v29 && v36 == v34)
            {
            }

            else
            {
              v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v37 & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v38 = v158[1];
            if (v38)
            {
              v153 = *v158;

LABEL_23:
              v40 = v154;
              Participant.id.getter();
              v152 = UUID.uuidString.getter();
              v151 = v41;
              v35(v40, v166);
              v42 = v156;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v171[0] = v42;
              v45 = sub_10000698C(v153, v38);
              v46 = *(v42 + 16);
              v47 = (v44 & 1) == 0;
              v48 = v46 + v47;
              if (__OFADD__(v46, v47))
              {
                __break(1u);
LABEL_111:
                __break(1u);
LABEL_112:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
LABEL_113:
                v170 = v80;
                _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
                __break(1u);
                return;
              }

              if (*(v42 + 24) >= v48)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v69 = v44;
                  sub_10021A724();
                  LOBYTE(v44) = v69;
                }

                v49 = v153;
                v52 = v171[0];
                if (v44)
                {
                  goto LABEL_32;
                }
              }

              else
              {
                LODWORD(v156) = v44;
                sub_100219B20(v48, isUniquelyReferenced_nonNull_native);
                v49 = v153;
                v50 = sub_10000698C(v153, v38);
                if ((v156 & 1) != (v51 & 1))
                {
                  goto LABEL_112;
                }

                v45 = v50;
                v52 = v171[0];
                if (v156)
                {
LABEL_32:

                  v57 = v52;
                  goto LABEL_33;
                }
              }

              v52[(v45 >> 6) + 8] |= 1 << v45;
              v53 = (v52[6] + 16 * v45);
              *v53 = v49;
              v53[1] = v38;
              *(v52[7] + 8 * v45) = _swiftEmptyArrayStorage;
              v54 = v52[2];
              v55 = __OFADD__(v54, 1);
              v56 = v54 + 1;
              if (v55)
              {
                goto LABEL_111;
              }

              v57 = v52;
              v52[2] = v56;
LABEL_33:
              v58 = *(v57 + 56);
              v59 = *(v58 + 8 * v45);
              v60 = swift_isUniquelyReferenced_nonNull_native();
              v153 = v45;
              *(v58 + 8 * v45) = v59;
              v61 = v58;
              v156 = v57;
              if ((v60 & 1) == 0)
              {
                v59 = sub_10002AFD0(0, *(v59 + 2) + 1, 1, v59);
                *(v58 + 8 * v153) = v59;
              }

              v63 = *(v59 + 2);
              v62 = *(v59 + 3);
              if (v63 >= v62 >> 1)
              {
                v68 = sub_10002AFD0((v62 > 1), v63 + 1, 1, v59);
                *(v61 + 8 * v153) = v68;
              }

              (*v163)(v14, v169);
              v64 = v152;
              v65 = *(v61 + 8 * v153);
              *(v65 + 16) = v63 + 1;
              v66 = v65 + 16 * v63;
              v67 = v151;
              *(v66 + 32) = v64;
              *(v66 + 40) = v67;
              v29 = v159;
              v30 = v22;
              if (!v28)
              {
                goto LABEL_9;
              }
            }

            else
            {
              (*v163)(v14, v169);
              v30 = v22;
              v29 = v159;
              if (!v28)
              {
                goto LABEL_9;
              }
            }
          }

LABEL_21:
          v153 = Participant.handle.getter();
          v38 = v39;
          goto LABEL_23;
        }

        while (1)
        {
LABEL_9:
          v22 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
            goto LABEL_107;
          }

          if (v22 >= v2)
          {
            break;
          }

          v28 = *(v25 + 8 * v22);
          ++v30;
          if (v28)
          {
            goto LABEL_12;
          }
        }

        v83 = sub_10021AF80(v156);

        if (v83[2])
        {
          v84 = v155;
          if (qword_100529B70 != -1)
          {
            swift_once();
          }

          v85 = type metadata accessor for Logger();
          sub_100015AFC(v85, qword_100529B78);
          v86 = v84;

          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v171[0] = v159;
            *v89 = 138543874;
            *(v89 + 4) = v86;
            *v90 = v86;
            *(v89 + 12) = 2082;
            v92 = *&v86[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
            v91 = *&v86[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
            v93 = v86;
            *(v89 + 14) = sub_10002C9C8(v92, v91, v171);
            *(v89 + 22) = 2082;
            sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
            v94 = Dictionary.description.getter();
            v96 = v95;

            v97 = sub_10002C9C8(v94, v96, v171);

            *(v89 + 24) = v97;
            _os_log_impl(&_mh_execute_header, v87, v88, "[%{public}@]<%{public}s> Handle collision detected: %{public}s", v89, 0x20u);
            sub_1000038A4(v90, &qword_100521870, &unk_10044EA70);
            v84 = v155;

            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {

          v84 = v155;
        }

        v114 = v160;
        v2 = v161;
        v115 = 1 << *(v168 + 32);
        v116 = -1;
        if (v115 < 64)
        {
          v116 = ~(-1 << v115);
        }

        v117 = v116 & *(v168 + 56);
        v22 = v84 + OBJC_IVAR___MRDFastSyncGroupSession_leaderFastSyncIdentifier;
        v118 = (v115 + 63) >> 6;

        v119 = 0;
        while (v117)
        {
LABEL_74:
          (*(v167 + 16))(v114, *(v168 + 48) + *(v167 + 72) * (__clz(__rbit64(v117)) | (v119 << 6)), v169);
          if (Participant.handle.getter() == v162 && v157 == v121)
          {

            goto LABEL_100;
          }

          v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v122)
          {

LABEL_100:

            (*v163)(v114, v169);
LABEL_103:
            if ((*(v84 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader) & 1) == 0)
            {
              sub_10020CD20();
            }

            sub_10020B668();
            sub_1002021D8(0);
            return;
          }

          v117 &= v117 - 1;
          Participant.id.getter();
          v123 = UUID.uuidString.getter();
          v125 = v124;
          (*v165)(v2, v166);
          v126 = *(v22 + 8);
          if (v126)
          {
            if (v123 == *v22 && v126 == v125)
            {

              (*v163)(v114, v169);
LABEL_102:

              goto LABEL_103;
            }

            v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*v163)(v114, v169);
            if (v127)
            {
              goto LABEL_102;
            }
          }

          else
          {

            (*v163)(v114, v169);
          }
        }

        while (1)
        {
          v120 = v119 + 1;
          if (__OFADD__(v119, 1))
          {
            break;
          }

          if (v120 >= v118)
          {

            if (qword_100529B70 != -1)
            {
              swift_once();
            }

            v128 = type metadata accessor for Logger();
            sub_100015AFC(v128, qword_100529B78);
            v129 = v84;
            v130 = Logger.logObject.getter();
            v131 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              v133 = swift_slowAlloc();
              v134 = swift_slowAlloc();
              v171[0] = v134;
              *v132 = 138543618;
              *(v132 + 4) = v129;
              *v133 = v129;
              *(v132 + 12) = 2082;
              v135 = *&v129[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
              v136 = *&v129[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
              v137 = v129;
              *(v132 + 14) = sub_10002C9C8(v135, v136, v171);
              _os_log_impl(&_mh_execute_header, v130, v131, "[%{public}@]<%{public}s> Leader lost from participants.", v132, 0x16u);
              sub_1000038A4(v133, &qword_100521870, &unk_10044EA70);

              sub_100026A44(v134);
            }

            if (v129[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] == 1)
            {
              v138 = v129;
              v139 = Logger.logObject.getter();
              v140 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v139, v140))
              {
                v141 = swift_slowAlloc();
                v142 = swift_slowAlloc();
                v143 = swift_slowAlloc();
                v171[0] = v143;
                *v141 = 138543618;
                *(v141 + 4) = v138;
                *v142 = v138;
                *(v141 + 12) = 2082;
                v144 = *&v138[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
                v145 = *&v138[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
                v146 = v138;
                *(v141 + 14) = sub_10002C9C8(v144, v145, v171);
                _os_log_impl(&_mh_execute_header, v139, v140, "[%{public}@]<%{public}s> Leader lost from own participants.", v141, 0x16u);
                sub_1000038A4(v142, &qword_100521870, &unk_10044EA70);

                sub_100026A44(v143);
              }

              sub_10021DECC();
              v147 = swift_allocError();
              *v148 = 4;
              sub_100204BF8(v147);
            }

            else
            {
              sub_10020C2E4();
            }

            return;
          }

          v117 = *(v25 + 8 * v120);
          ++v119;
          if (v117)
          {
            v119 = v120;
            goto LABEL_74;
          }
        }

LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      sub_100015AFC(v109, qword_100529B78);
      v110 = v2;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v100, v101))
      {
LABEL_59:

        return;
      }

      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v171[0] = v104;
      *v102 = 138543618;
      *(v102 + 4) = v110;
      *v103 = v110;
      *(v102 + 12) = 2082;
      v111 = *&v110[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v112 = *&v110[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v113 = v110;
      *(v102 + 14) = sub_10002C9C8(v111, v112, v171);
      v108 = "[%{public}@]<%{public}s> Dropping handleParticipantsChanged before leader discovered.";
    }

    else
    {
      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v98 = type metadata accessor for Logger();
      sub_100015AFC(v98, qword_100529B78);
      v99 = v2;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v100, v101))
      {
        goto LABEL_59;
      }

      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v171[0] = v104;
      *v102 = 138543618;
      *(v102 + 4) = v99;
      *v103 = v99;
      *(v102 + 12) = 2082;
      v105 = *&v99[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v106 = *&v99[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v107 = v99;
      *(v102 + 14) = sub_10002C9C8(v105, v106, v171);
      v108 = "[%{public}@]<%{public}s> Dropping handleParticipantsChanged with no session.";
    }

    _os_log_impl(&_mh_execute_header, v100, v101, v108, v102, 0x16u);
    sub_1000038A4(v103, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v104);

    goto LABEL_59;
  }

  if (qword_100529B70 != -1)
  {
LABEL_109:
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  sub_100015AFC(v70, qword_100529B78);
  v71 = v2;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v171[0] = swift_slowAlloc();
    *v74 = 138543874;
    *(v74 + 4) = v71;
    *v75 = v71;
    *(v74 + 12) = 2082;
    v76 = v2;
    v77 = *&v71[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v78 = *&v71[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v79 = v71;
    *(v74 + 14) = sub_10002C9C8(v77, v78, v171);
    *(v74 + 22) = 2080;
    v80 = *&v76[v22];
    if (v80 <= 1)
    {
      if (v80)
      {
        if (v80 != 1)
        {
          goto LABEL_113;
        }

        v81 = 0xE500000000000000;
        v82 = 0x7472617473;
      }

      else
      {
        v81 = 0xE700000000000000;
        v82 = 0x6C616974696E69;
      }
    }

    else
    {
      switch(v80)
      {
        case 2:
          v81 = 0xE700000000000000;
          v82 = 0x676E696E696F6ALL;
          break;
        case 3:
          v81 = 0xE600000000000000;
          v82 = 0x64656E696F6ALL;
          break;
        case 4:
          v81 = 0xEB00000000646574;
          v82 = 0x6164696C61766E69;
          break;
        default:
          goto LABEL_113;
      }
    }

    v149 = sub_10002C9C8(v82, v81, v171);

    *(v74 + 24) = v149;
    _os_log_impl(&_mh_execute_header, v72, v73, "[%{public}@]<%{public}s> Dropping handleParticipantsChanged in state: %s.", v74, 0x20u);
    sub_1000038A4(v75, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }
}

void sub_1002021D8(int a1)
{
  v2 = v1;
  LODWORD(v304) = a1;
  v3 = type metadata accessor for Participants();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v271 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v301 = &v271 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = type metadata accessor for DispatchQoS();
  v300 = *(v302 - 8);
  __chkstk_darwin(v302);
  v299 = &v271 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v271 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(&v2->isa + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v303 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    goto LABEL_158;
  }

  if (*(&v2->isa + OBJC_IVAR___MRDFastSyncGroupSession_isLeader) != 1)
  {
    return;
  }

  v291 = v8;
  v8 = OBJC_IVAR___MRDFastSyncGroupSession__state;
  if (*(&v2->isa + OBJC_IVAR___MRDFastSyncGroupSession__state) != 3)
  {
    if (qword_100529B70 != -1)
    {
      goto LABEL_161;
    }

    goto LABEL_9;
  }

  if (!*(&v2->isa + OBJC_IVAR___MRDFastSyncGroupSession_groupSession))
  {
    if (qword_100529B70 != -1)
    {
      goto LABEL_163;
    }

    goto LABEL_15;
  }

  v282 = GroupSession.activeParticipants.getter();
  v286 = sub_1001FCD38(v282, &type metadata accessor for Participant, &Participant.handle.getter);
  v16 = objc_opt_self();
  v17 = [v16 currentSettings];
  if (!v17)
  {
    goto LABEL_166;
  }

  v19 = v17;
  v20 = [v17 supportGroupSessionLowPowerMode];

  v276 = v16;
  if (v20)
  {
    v21 = *(&v2->isa + OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource);
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v21;
    static Published.subscript.getter();

    v23 = aBlock;
  }

  else
  {
    v23 = &_swiftEmptySetSingleton;
  }

  v280 = 0;
  v287 = v7;
  v273 = v6;
  v274 = v4;
  v275 = v3;

  v279 = v23;
  v44 = sub_10021E220(v43, v23);

  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  v18 = *(&v2[1].isa + OBJC_IVAR___MRDFastSyncGroupSession_localHandle);
  if (!v18)
  {
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  *(inited + 32) = *(v2 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle);
  v46 = inited + 32;
  *(inited + 40) = v18;
  v47 = inited;

  v8 = sub_10021E220(v47, v44);
  swift_setDeallocating();
  sub_1001E6204(v46);
  v48 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v296 = v48;
  v49 = *(&v2->isa + v48);
  v50 = (v49 + 64);
  v51 = 1 << *(v49 + 32);
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & *(v49 + 64);
  v54 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToPresenceTimeoutTimerMap;
  v285 = (v2 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  v290 = OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource;
  v55 = OBJC_IVAR___MRDFastSyncGroupSession_timedOutParticipantHandles;
  v284 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
  v283 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
  v298 = v49;
  swift_bridgeObjectRetain_n();
  v297 = v54;
  swift_beginAccess();
  v288 = v55;
  swift_beginAccess();
  v56 = 0;
  v57 = (v51 + 63) >> 6;
  v58 = v8 + 56;
  v281 = &v308;
  *&v59 = 138543874;
  v277 = v59;
  v289 = v2;
  v292 = v8;
  v293 = v57;
  v295 = v8 + 56;
  v294 = v50;
  while (v53)
  {
LABEL_28:
    v61 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v62 = (*(v298 + 48) + ((v56 << 10) | (16 * v61)));
    v63 = *v62;
    v64 = v62[1];
    if (*(v8 + 16))
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v65 = Hasher._finalize()();
      v66 = -1 << *(v8 + 32);
      v67 = v65 & ~v66;
      if (((*(v58 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
      {
        goto LABEL_39;
      }

      v68 = ~v66;
      while (1)
      {
        v69 = (*(v8 + 48) + 16 * v67);
        v70 = *v69 == v63 && v69[1] == v64;
        if (v70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v67 = (v67 + 1) & v68;
        if (((*(v58 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      if (!*(*(v297 + v2) + 16))
      {
        goto LABEL_81;
      }

      sub_10000698C(v63, v64);
      if ((v103 & 1) == 0)
      {
LABEL_77:

LABEL_81:

        goto LABEL_98;
      }

      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      sub_100015AFC(v104, qword_100529B78);

      v105 = v2;
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v271 = v106;
        v110 = v109;
        v272 = swift_slowAlloc();
        aBlock = v272;
        *v108 = v277;
        *(v108 + 4) = v105;
        *v110 = v2;
        *(v108 + 12) = 2082;
        v111 = *v285;
        v112 = v285[1];
        v113 = v105;
        v114 = v112;
        v2 = v289;
        *(v108 + 14) = sub_10002C9C8(v111, v114, &aBlock);
        *(v108 + 22) = 2080;
        *(v108 + 24) = sub_10002C9C8(v63, v64, &aBlock);
        v115 = v271;
        _os_log_impl(&_mh_execute_header, v271, v107, "[%{public}@]<%{public}s> Cancel timeout timer for: %s.", v108, 0x20u);
        sub_1000038A4(v110, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v58 = v295;
      }

      else
      {
      }

      v8 = v292;
      v122 = *(v297 + v2);
      if (*(v122 + 16))
      {

        v123 = sub_10000698C(v63, v64);
        if (v124)
        {
          v125 = *(*(v122 + 56) + 8 * v123);

          [v125 invalidate];
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_1001EC6DC(0, v63, v64);
      swift_endAccess();
LABEL_98:
      v50 = v294;
      v57 = v293;
    }

    else
    {

LABEL_39:
      v71 = *(*(&v2->isa + v290) + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members);
      if (!*(v71 + 16))
      {
        goto LABEL_49;
      }

      Hasher.init(_seed:)();

      String.hash(into:)();
      v72 = Hasher._finalize()();
      v73 = -1 << *(v71 + 32);
      v74 = v72 & ~v73;
      if (((*(v71 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
      {
LABEL_48:

LABEL_49:
        if (*(*(v297 + v2) + 16))
        {

          sub_10000698C(v63, v64);
          v79 = v78;

          if (v79)
          {
            v80 = *(v297 + v2);
            if (*(v80 + 16))
            {

              v81 = sub_10000698C(v63, v64);
              if (v82)
              {
                v83 = *(*(v80 + 56) + 8 * v81);

                [v83 invalidate];
              }

              else
              {
              }
            }

            swift_beginAccess();

            sub_1001EC6DC(0, v63, v64);
            swift_endAccess();
            if (qword_100529B70 != -1)
            {
              swift_once();
            }

            v126 = type metadata accessor for Logger();
            sub_100015AFC(v126, qword_100529B78);

            v127 = v2;
            v128 = Logger.logObject.getter();
            v8 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v128, v8))
            {
              v129 = swift_slowAlloc();
              v130 = swift_slowAlloc();
              v304 = swift_slowAlloc();
              aBlock = v304;
              *v129 = v277;
              *(v129 + 4) = v127;
              *v130 = v2;
              *(v129 + 12) = 2082;
              v272 = v128;
              v132 = *v285;
              v131 = v285[1];
              v133 = v127;
              v134 = v132;
              v2 = v289;
              *(v129 + 14) = sub_10002C9C8(v134, v131, &aBlock);
              *(v129 + 22) = 2080;
              *(v129 + 24) = sub_10002C9C8(v63, v64, &aBlock);
              v128 = v272;
              _os_log_impl(&_mh_execute_header, v272, v8, "[%{public}@]<%{public}s> Ending timeout timer early and unmapping: %s.", v129, 0x20u);
              sub_1000038A4(v130, &qword_100521870, &unk_10044EA70);

              swift_arrayDestroy();
            }
          }
        }

LABEL_92:
        v135 = *(&v2->isa + v296);
        if (!*(v135 + 16))
        {
          goto LABEL_159;
        }

        v136 = sub_10000698C(v63, v64);
        if ((v137 & 1) == 0)
        {
          goto LABEL_160;
        }

        v138 = (*(v135 + 56) + 16 * v136);
        v140 = *v138;
        v139 = v138[1];

        swift_beginAccess();

        sub_1001EC7F4(0, 0, v140, v139);
        swift_endAccess();
        swift_beginAccess();
        sub_1001EC7F4(0, 0, v63, v64);
        swift_endAccess();
        swift_beginAccess();
        v141 = v140;
        v8 = v292;
        sub_1001C0CA0(v141, v139);
        swift_endAccess();

        LODWORD(v304) = 1;
        goto LABEL_95;
      }

      v75 = ~v73;
      while (1)
      {
        v76 = (*(v71 + 48) + 16 * v74);
        v77 = *v76 == v63 && v76[1] == v64;
        if (v77 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v74 = (v74 + 1) & v75;
        if (((*(v71 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v84 = *(&v2->isa + v288);
      if (*(v84 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v85 = Hasher._finalize()();
        v86 = -1 << *(v84 + 32);
        v87 = v85 & ~v86;
        if ((*(v84 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87))
        {
          v88 = ~v86;
          while (1)
          {
            v89 = (*(v84 + 48) + 16 * v87);
            v90 = *v89 == v63 && v89[1] == v64;
            if (v90 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v87 = (v87 + 1) & v88;
            if (((*(v84 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          swift_beginAccess();
          sub_1001C0CA0(v63, v64);
          swift_endAccess();

          goto LABEL_92;
        }

LABEL_63:
      }

      v58 = v295;
      if (*(*(v297 + v2) + 16))
      {

        sub_10000698C(v63, v64);
        if (v91)
        {
          goto LABEL_77;
        }
      }

      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      sub_100015AFC(v92, qword_100529B78);

      v93 = v2;
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v271 = v94;
        v98 = v97;
        v272 = swift_slowAlloc();
        aBlock = v272;
        *v96 = v277;
        *(v96 + 4) = v93;
        *v98 = v2;
        *(v96 + 12) = 2082;
        v100 = *v285;
        v99 = v285[1];
        v101 = v93;
        *(v96 + 14) = sub_10002C9C8(v100, v99, &aBlock);
        *(v96 + 22) = 2082;
        *(v96 + 24) = sub_10002C9C8(v63, v64, &aBlock);
        v102 = v271;
        _os_log_impl(&_mh_execute_header, v271, v95, "[%{public}@]<%{public}s> Starting timeout timer for: %{public}s.", v96, 0x20u);
        sub_1000038A4(v98, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      else
      {
      }

      v8 = v292;
      v116 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v117 = swift_allocObject();
      v117[2] = v116;
      v117[3] = v63;
      v117[4] = v64;
      v118 = objc_allocWithZone(MSVTimer);
      v310 = sub_1002237D0;
      v311 = v117;
      aBlock = _NSConcreteStackBlock;
      v307 = 1107296256;
      v308 = sub_100003D98;
      v309 = &unk_1004C3A08;
      v119 = _Block_copy(&aBlock);
      v120 = v303;

      v121 = [v118 initWithInterval:0 repeats:v120 queue:v119 block:15.0];
      _Block_release(v119);

      v2 = v289;
      swift_beginAccess();
      sub_1001EC6DC(v121, v63, v64);
      swift_endAccess();
LABEL_95:
      v50 = v294;
      v57 = v293;
      v58 = v295;
    }
  }

  while (1)
  {
    v60 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v60 >= v57)
    {

      v142 = *(&v2->isa + v296);
      v143 = v2;

      v145 = v280;
      v146 = sub_10021E2A0(v144, v143);
      v290 = v145;

      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v147 = type metadata accessor for Logger();
      v148 = sub_100015AFC(v147, qword_100529B78);
      v149 = v143;

      v293 = v148;
      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.info.getter();

      v152 = os_log_type_enabled(v150, v151);
      v295 = v142;
      if (v152)
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v153 = 138544130;
        *(v153 + 4) = v149;
        *v154 = v2;
        *(v153 + 12) = 2082;
        v155 = *v285;
        v156 = v285[1];
        v157 = v149;
        *(v153 + 14) = sub_10002C9C8(v155, v156, &aBlock);
        *(v153 + 22) = 2080;
        *(v153 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &aBlock);
        *(v153 + 32) = 2080;
        v158 = Array.description.getter();
        v160 = sub_10002C9C8(v158, v159, &aBlock);

        *(v153 + 34) = v160;
        _os_log_impl(&_mh_execute_header, v150, v151, "[%{public}@]<%{public}s> %s mapped participants: %s", v153, 0x2Au);
        sub_1000038A4(v154, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      v161 = v287;
      v162 = v146[2];
      v163 = _swiftEmptyArrayStorage;
      v297 = v146;
      if (v162)
      {
        v303 = v149;
        aBlock = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v164 = v146 + 58;
        do
        {
          v165 = *(v164 - 10);
          v166 = *(v164 - 2);
          v167 = *(v164 - 1);
          v168 = *v164;
          v164 += 32;
          v169 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);

          v170 = v165;
          v171 = String._bridgeToObjectiveC()();

          [v169 initWithIdentifier:v171 identity:v170 connected:v166 guest:v167 hidden:v168];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v162;
        }

        while (v162);
        v163 = aBlock;
        v161 = v287;
        v149 = v303;
      }

      v172 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
      swift_beginAccess();
      v173 = v149;
      v174 = *(&v149->isa + v172);
      v175 = *(v174 + 16);
      v303 = v163;
      if (v175)
      {
        v176 = sub_100218674(v175, 0);
        v177 = sub_10021BFDC(&aBlock, v176 + 4, v175, v174);
        v2 = aBlock;

        sub_100045960(v2);
        if (v177 == v175)
        {
          v161 = v287;
          v178 = v176;
          v163 = v303;
          goto LABEL_111;
        }

        __break(1u);
LABEL_163:
        swift_once();
LABEL_15:
        v35 = type metadata accessor for Logger();
        sub_100015AFC(v35, qword_100529B78);
        v36 = v2;
        v26 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v26, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v38 = 138543874;
          *(v38 + 4) = v36;
          *v39 = v36;
          *(v38 + 12) = 2082;
          v40 = *(&v36->isa + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
          v41 = *(&v36[1].isa + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
          v42 = v36;
          *(v38 + 14) = sub_10002C9C8(v40, v41, &aBlock);
          *(v38 + 22) = 2080;
          *(v38 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &aBlock);
          _os_log_impl(&_mh_execute_header, v26, v37, "[%{public}@]<%{public}s> %s No group session when updateParticipants called.", v38, 0x20u);
          sub_1000038A4(v39, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();
          goto LABEL_139;
        }

        goto LABEL_140;
      }

      v178 = _swiftEmptyArrayStorage;
LABEL_111:
      v179 = swift_allocObject();
      v179[2] = v173;
      v179[3] = v178;
      v179[4] = v163;
      v310 = sub_100223AE0;
      v311 = v179;
      aBlock = _NSConcreteStackBlock;
      v307 = 1107296256;
      v308 = sub_100003D98;
      v309 = &unk_1004C3A58;
      v180 = _Block_copy(&aBlock);
      v181 = v173;
      v294 = v178;

      v182 = v299;
      static DispatchQoS.unspecified.getter();
      v305 = _swiftEmptyArrayStorage;
      sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v183 = v301;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v180);
      (*(v291 + 8))(v183, v161);
      (*(v300 + 8))(v182, v302);

      v18 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
      v184 = *(&v181->isa + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);
      if (!v184)
      {
        goto LABEL_168;
      }

      v185 = v289;
      v186 = *(*v184 + 360);

      v186(v187);

      if (v304)
      {
        v188 = v181;
        v189 = v282;

        v191 = sub_10021EA38(v190, v188);

        if (*(v191 + 16))
        {
          v192 = [v276 currentSettings];
          v18 = &v313;
          if (!v192)
          {
            goto LABEL_169;
          }

          v193 = v192;

          v194 = [v193 groupSessionSynchronizePendingParticipants];

          v302 = v191;
          if (v194)
          {
            v195 = OBJC_IVAR___MRDFastSyncGroupSession_pendingParticipants;
            swift_beginAccess();
            v196 = *&v188[v195];
            if (v196 >> 62)
            {
              v270 = *&v188[v195];
              v197 = _CocoaArrayWrapper.endIndex.getter();
              v196 = v270;
            }

            else
            {
              v197 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v197)
            {
              v301 = v188;
              v305 = _swiftEmptyArrayStorage;
              v198 = v196;

              sub_10021AE54(0, v197 & ~(v197 >> 63), 0);
              if ((v197 & 0x8000000000000000) == 0)
              {
                v199 = 0;
                v200 = v198;
                v303 = (v198 & 0xC000000000000001);
                v201 = v305;
                v304 = v198;
                do
                {
                  if (v303)
                  {
                    v202 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v202 = *(v200 + 8 * v199 + 32);
                    swift_unknownObjectRetain();
                  }

                  v203 = [v202 identifier];
                  static String._unconditionallyBridgeFromObjectiveC(_:)();

                  v204 = [v202 identity];
                  [v202 guest];
                  [v202 hidden];
                  sub_10036D3A4();
                  v206 = v205;
                  v208 = v207;
                  v210 = v209;
                  v212 = v211;
                  swift_unknownObjectRelease();
                  v305 = v201;
                  v214 = v201[2];
                  v213 = v201[3];
                  if (v214 >= v213 >> 1)
                  {
                    sub_10021AE54((v213 > 1), v214 + 1, 1);
                    v201 = v305;
                  }

                  ++v199;
                  v201[2] = v214 + 1;
                  v215 = &v201[4 * v214];
                  v215[4] = v206;
                  v215[5] = v208;
                  v215[6] = v210;
                  *(v215 + 56) = v212 & 1;
                  *(v215 + 57) = BYTE1(v212) & 1;
                  *(v215 + 58) = BYTE2(v212) & 1;
                  v200 = v304;
                }

                while (v197 != v199);

                v189 = v282;
                v191 = v302;
                v188 = v301;
                goto LABEL_141;
              }

              __break(1u);
LABEL_166:
              __break(1u);
              goto LABEL_167;
            }
          }

LABEL_141:
          v229 = *(v189 + 16);

          v230 = v229 + ~*(v191 + 16);
          if (v230 >= 1)
          {
            v231 = v188;
            v232 = Logger.logObject.getter();
            v233 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v232, v233))
            {
              v234 = swift_slowAlloc();
              v235 = swift_slowAlloc();
              v301 = v188;
              v236 = v235;
              v305 = swift_slowAlloc();
              *v234 = 138544130;
              *(v234 + 4) = v231;
              *v236 = v289;
              *(v234 + 12) = 2082;
              v237 = *v285;
              v238 = v285[1];
              v239 = v231;
              *(v234 + 14) = sub_10002C9C8(v237, v238, &v305);
              *(v234 + 22) = 2080;
              *(v234 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &v305);
              *(v234 + 32) = 2048;
              *(v234 + 34) = v230;
              _os_log_impl(&_mh_execute_header, v232, v233, "[%{public}@]<%{public}s> %s Will not message %ld unmapped participants.", v234, 0x2Au);
              sub_1000038A4(v236, &qword_100521870, &unk_10044EA70);
              v188 = v301;

              swift_arrayDestroy();
            }
          }

          v240 = *&v188[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
          if (v240)
          {

            MRDFastSyncGroupSessionState.rawValue.getter();
            v244 = sub_10036E094(v241, v242, v243);

            v245 = v188;
            v246 = Logger.logObject.getter();
            v247 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v246, v247))
            {
              v248 = swift_slowAlloc();
              v249 = swift_slowAlloc();
              v250 = swift_slowAlloc();
              v304 = v244;
              v305 = v250;
              *v248 = 138544130;
              *(v248 + 4) = v245;
              *v249 = v289;
              *(v248 + 12) = 2082;
              v251 = *v285;
              v252 = v285[1];
              v253 = v245;
              *(v248 + 14) = sub_10002C9C8(v251, v252, &v305);
              *(v248 + 22) = 2080;
              *(v248 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &v305);
              *(v248 + 32) = 2080;

              v254 = Array.description.getter();
              v256 = v255;

              v257 = sub_10002C9C8(v254, v256, &v305);

              *(v248 + 34) = v257;
              _os_log_impl(&_mh_execute_header, v246, v247, "[%{public}@]<%{public}s> %s Sending message with pending participants: %s", v248, 0x2Au);
              sub_1000038A4(v249, &qword_100521870, &unk_10044EA70);

              swift_arrayDestroy();
              v244 = v304;
            }

            v258 = v275;
            v259 = v274;
            v260 = v273;
            *v273 = v302;
            (*(v259 + 104))(v260, enum case for Participants.only(_:), v258);
            v261 = v244;
            sub_10020CF20(3u, v244, v260, v240, 0, 0);

            (*(v259 + 8))(v260, v258);
            goto LABEL_155;
          }

          v262 = v188;
          v263 = Logger.logObject.getter();
          v264 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v263, v264))
          {
            v265 = swift_slowAlloc();
            v266 = swift_slowAlloc();
            v305 = swift_slowAlloc();
            *v265 = v277;
            *(v265 + 4) = v262;
            *v266 = v289;
            *(v265 + 12) = 2082;
            v267 = *v285;
            v268 = v285[1];
            v269 = v262;
            *(v265 + 14) = sub_10002C9C8(v267, v268, &v305);
            *(v265 + 22) = 2080;
            *(v265 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &v305);
            _os_log_impl(&_mh_execute_header, v263, v264, "[%{public}@]<%{public}s> %s Drop identity broadcast we are not ready.", v265, 0x20u);
            sub_1000038A4(v266, &qword_100521870, &unk_10044EA70);

            swift_arrayDestroy();
          }
        }

        else
        {

          v216 = v188;

          v217 = Logger.logObject.getter();
          v218 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v217, v218))
          {
            v219 = swift_slowAlloc();
            v220 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v219 = 138544130;
            *(v219 + 4) = v216;
            *v220 = v185;
            *(v219 + 12) = 2082;
            v221 = *v285;
            v222 = v285[1];
            v223 = v216;
            *(v219 + 14) = sub_10002C9C8(v221, v222, &aBlock);
            *(v219 + 22) = 2080;
            *(v219 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &aBlock);
            *(v219 + 32) = 2082;
            type metadata accessor for Participant();
            sub_100004858(&qword_100521D68, 255, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
            v224 = Set.description.getter();
            v226 = v225;

            v227 = sub_10002C9C8(v224, v226, &aBlock);

            *(v219 + 34) = v227;
            _os_log_impl(&_mh_execute_header, v217, v218, "[%{public}@]<%{public}s> %s No mapped participants to sync participants to. activeFastSyncParticipants: %{public}s", v219, 0x2Au);
            sub_1000038A4(v220, &qword_100521870, &unk_10044EA70);

            swift_arrayDestroy();
          }

          else
          {
          }
        }
      }

      else
      {
      }

LABEL_155:

      return;
    }

    v53 = v50[v60];
    ++v56;
    if (v53)
    {
      v56 = v60;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  swift_once();
LABEL_9:
  v24 = type metadata accessor for Logger();
  sub_100015AFC(v24, qword_100529B78);
  v25 = v2;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v26, v27))
  {
    goto LABEL_140;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  aBlock = swift_slowAlloc();
  *v28 = 138544130;
  *(v28 + 4) = v25;
  *v29 = v25;
  *(v28 + 12) = 2082;
  v30 = *(&v25->isa + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  v31 = *(&v25[1].isa + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  v32 = v25;
  *(v28 + 14) = sub_10002C9C8(v30, v31, &aBlock);
  *(v28 + 22) = 2080;
  *(v28 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &aBlock);
  *(v28 + 32) = 2080;
  v18 = *(&v2->isa + v8);
  if (v18 <= 1)
  {
    if (!v18)
    {
      v33 = 0xE700000000000000;
      v34 = 0x6C616974696E69;
      goto LABEL_138;
    }

    if (v18 != 1)
    {
      goto LABEL_170;
    }

    v33 = 0xE500000000000000;
    v34 = 0x7472617473;
LABEL_138:
    v228 = sub_10002C9C8(v34, v33, &aBlock);

    *(v28 + 34) = v228;
    _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}@]<%{public}s> %s Dropping updateParticipants in state: %s.", v28, 0x2Au);
    sub_1000038A4(v29, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
LABEL_139:

LABEL_140:
  }

  else
  {
    switch(v18)
    {
      case 2:
        v33 = 0xE700000000000000;
        v34 = 0x676E696E696F6ALL;
        goto LABEL_138;
      case 3:
        v33 = 0xE600000000000000;
        v34 = 0x64656E696F6ALL;
        goto LABEL_138;
      case 4:
        v33 = 0xEB00000000646574;
        v34 = 0x6164696C61766E69;
        goto LABEL_138;
    }

LABEL_170:
    v312 = v18;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }
}

uint64_t sub_100204BF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  result = *&v2[OBJC_IVAR___MRDFastSyncGroupSession__state];
  if (result == 4)
  {
    return result;
  }

  *&v2[OBJC_IVAR___MRDFastSyncGroupSession__state] = 4;
  sub_1001E6BC0(result);
  v14 = &v2[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
  v15 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
  v16 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion + 8];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_1001C7C2C(v15, v16);
  v17 = OBJC_IVAR___MRDFastSyncGroupSession_sessionCancellables;
  swift_beginAccess();
  *&v2[v17] = &_swiftEmptySetSingleton;

  v18 = OBJC_IVAR___MRDFastSyncGroupSession_cancellables;
  swift_beginAccess();
  *&v2[v18] = &_swiftEmptySetSingleton;

  if (*&v2[OBJC_IVAR___MRDFastSyncGroupSession_presenceTask])
  {

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (*&v2[OBJC_IVAR___MRDFastSyncGroupSession_joinProviderTask])
  {

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (*&v2[OBJC_IVAR___MRDFastSyncGroupSession_observeSessionTask])
  {

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  sub_10021DECC();
  swift_allocError();
  *v19 = 5;
  swift_errorRetain();
  v20 = _convertErrorToNSError(_:)();
  v21 = _convertErrorToNSError(_:)();
  sub_100018D7C(0, &qword_100522A60, NSError_ptr);
  v22 = static NSObject.== infix(_:_:)();

  if (v22)
  {

LABEL_12:
    sub_1001E6B44();
    v23 = sub_1001E69BC();

    (*((swift_isaMask & *v23) + 0xD0))(v24);

    v25 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings;
    v51 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings];
    v26 = type metadata accessor for SessionTimingEvents();

    sub_10023231C(v26, &off_1004C3360);
    *&v2[v25] = v51;
    goto LABEL_14;
  }

  v51 = sub_1001E6ABC();
  v27 = type metadata accessor for JoinTimingEvents();
  sub_100232B4C(a1, v27, &off_1004C33A8);
  *&v2[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings] = v51;

  v51 = sub_1001E6B44();
  v28 = type metadata accessor for SessionTimingEvents();
  sub_100232B4C(a1, v28, &off_1004C3360);

  *&v2[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings] = v51;
LABEL_14:

  if (qword_100529B70 != -1)
  {
LABEL_26:
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100015AFC(v29, qword_100529B78);
  swift_errorRetain();
  v30 = v2;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v49 = v6;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v33 = 138543874;
    *(v33 + 4) = v30;
    *v34 = v30;
    *(v33 + 12) = 2082;
    v35 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v36 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v37 = v30;
    *(v33 + 14) = sub_10002C9C8(v35, v36, &v53);
    *(v33 + 22) = 2082;
    v38 = 0xE000000000000000;
    if (a1)
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      v39._countAndFlagsBits = 0x7265206874697720;
      v39._object = 0xED0000203A726F72;
      String.append(_:)(v39);
      v50 = a1;
      sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      _print_unlocked<A, B>(_:_:)();
      v40 = v51;
      v38 = v52;
    }

    else
    {
      v40 = 0;
    }

    v6 = v49;
    v41 = sub_10002C9C8(v40, v38, &v53);

    *(v33 + 24) = v41;
    _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}@]<%{public}s> invalidate%{public}s.", v33, 0x20u);
    sub_1000038A4(v34, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v42 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_provider];
  v43 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource];
  if (*&v30[OBJC_IVAR___MRDFastSyncGroupSession_groupSession])
  {

    v44 = v43;

    GroupSession.end()();
  }

  else
  {

    v45 = v43;
  }

  v46 = type metadata accessor for TaskPriority();
  (*(*(v46 - 8) + 56))(v6, 1, 1, v46);
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = v42;
  v47[5] = v43;
  sub_1001BF864(0, 0, v6, &unk_1004501C8, v47);
}

uint64_t sub_1002053AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1002053CC, 0, 0);
}

uint64_t sub_1002053CC(uint64_t a1)
{
  *(v1 + 32) = dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_10020546C;

  return NearbyGroup.leave()();
}

uint64_t sub_10020546C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  v5 = sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  v6 = sub_10000462C(&qword_100522950, &qword_100522160, &unk_10044F580, &protocol conformance descriptor for NearbyGroupSessionProvider<A>);
  *v4 = v3;
  v4[1] = sub_100205614;

  return GroupSessionProvider.leave()(v5, v6);
}

uint64_t sub_100205614()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = swift_task_alloc();
  *(v2 + 56) = v4;
  *v4 = v3;
  v4[1] = sub_100205754;

  return sub_100216718();
}

uint64_t sub_100205754()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_100205854()
{
  v1 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v44 - v2;
  v4 = sub_1001BC5A8(&qword_100522940, &qword_1004500A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v45 = v13;
    v46 = v4;
    v47 = v3;
    v13 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v8 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v14 = qword_100529B70;

    if (v14 == -1)
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
  v15 = type metadata accessor for Logger();
  sub_100015AFC(v15, qword_100529B78);

  v16 = v0;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48[0] = v21;
    *v19 = 138543618;
    *(v19 + 4) = v16;
    *v20 = v16;
    *(v19 + 12) = 2082;
    v22 = v16;
    *(v19 + 14) = sub_10002C9C8(v13, v8, v48);
    _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}@]<%{public}s> Bind presence data source to nearby group.", v19, 0x16u);
    sub_1000038A4(v20, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v21);
  }

  v23 = v47;

  dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

  NearbyGroup.$members.getter();

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v13;
  v25[4] = v8;
  sub_10000462C(&qword_100522948, &qword_100522940, &qword_1004500A8, &protocol conformance descriptor for Published<A>.Publisher);

  v26 = v13;
  v27 = v46;
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v28 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource];

  dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

  v29 = NearbyGroup.members.getter();

  v30 = sub_1001FCD38(v29, &type metadata accessor for NearbyGroup.Member, &NearbyGroup.Member.handle.getter);

  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  result = swift_initStackObject();
  *(result + 16) = xmmword_10044EC70;
  v32 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
  if (v32)
  {
    *(result + 32) = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
    *(result + 40) = v32;
    v48[0] = v30;
    v33 = result;

    sub_10021B8A8(v33);
    v34 = sub_100008280(v48[0]);

    v35 = *&v28[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members];
    *&v28[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members] = v34;
    sub_100213C90(v35);

    v36 = type metadata accessor for TaskPriority();
    v37 = *(*(v36 - 8) + 56);
    v37(v23, 1, 1, v36);
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v38;
    v39[5] = v26;
    v40 = v45;
    v39[6] = v8;
    v39[7] = v40;
    v41 = v40;

    *&v16[OBJC_IVAR___MRDFastSyncGroupSession_presenceTask] = sub_1001CB290(0, 0, v23, &unk_1004500B8, v39);

    v37(v23, 1, 1, v36);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v43[4] = v42;
    v43[5] = v26;
    v43[6] = v8;
    *&v16[OBJC_IVAR___MRDFastSyncGroupSession_joinProviderTask] = sub_1001CB290(0, 0, v23, &unk_1004500C8, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100205FB8(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100015AFC(v11, qword_100529B78);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v31 = a3;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 138543874;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v16 + 4) = Strong;
    *v17 = Strong;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_10002C9C8(a3, a4, aBlock);
    *(v16 + 22) = 2080;
    type metadata accessor for NearbyGroup.Member();
    sub_100004858(&qword_100522980, 255, &type metadata accessor for NearbyGroup.Member, &protocol conformance descriptor for NearbyGroup.Member);
    v19 = Set.description.getter();
    v21 = sub_10002C9C8(v19, v20, aBlock);

    *(v16 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}@]<%{public}s> NearbyGroup members changed: %s.", v16, 0x20u);
    sub_1000038A4(v17, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    v7 = v30;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v24 = swift_allocObject();
    v24[2] = v10;
    v24[3] = v23;
    v24[4] = v31;
    v24[5] = a4;
    aBlock[4] = sub_1002237C4;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C39B8;
    v25 = _Block_copy(aBlock);

    v26 = v23;
    v27 = v32;
    static DispatchQoS.unspecified.getter();
    v37 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v28 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);
    (*(v36 + 8))(v28, v7);
    (*(v33 + 8))(v27, v35);
  }

  return result;
}

void sub_100206520(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v52 = a4;
  v50 = a3;
  v5 = type metadata accessor for NearbyGroup.Member();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v54 = v6 + 16;
  v55 = a1;

  v14 = 0;
  v53 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v6 + 16))(v8, *(v55 + 48) + *(v6 + 72) * (v15 | (v14 << 6)), v5);
      v16 = NearbyGroup.Member.tokenDestination.getter();
      v18 = v17;
      (*(v6 + 8))(v8, v5);
      if (v18)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_10002AFD0(0, *(v53 + 2) + 1, 1, v53);
    }

    v21 = *(v53 + 2);
    v20 = *(v53 + 3);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v48 = *(v53 + 2);
      v49 = v21 + 1;
      v25 = sub_10002AFD0((v20 > 1), v21 + 1, 1, v53);
      v21 = v48;
      v22 = v49;
      v53 = v25;
    }

    v23 = v53;
    *(v53 + 2) = v22;
    v24 = &v23[16 * v21];
    *(v24 + 4) = v16;
    *(v24 + 5) = v18;
  }

  while (v12);
  while (1)
  {
LABEL_6:
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v19 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v19);
    ++v14;
    if (v12)
    {
      v14 = v19;
      goto LABEL_4;
    }
  }

  if (qword_100529B70 == -1)
  {
    goto LABEL_17;
  }

LABEL_25:
  swift_once();
LABEL_17:
  v26 = type metadata accessor for Logger();
  sub_100015AFC(v26, qword_100529B78);
  v27 = v51;
  v28 = v52;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v31 = 138543874;
    *(v31 + 4) = v27;
    *v32 = v27;
    *(v31 + 12) = 2082;
    v33 = v27;
    *(v31 + 14) = sub_10002C9C8(v50, v28, &v56);
    *(v31 + 22) = 2080;
    v34 = Array.description.getter();
    v36 = sub_10002C9C8(v34, v35, &v56);

    *(v31 + 24) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}@]<%{public}s> NearbyGroup tokens: %s", v31, 0x20u);
    sub_1000038A4(v32, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v37 = sub_1001FCD38(v55, &type metadata accessor for NearbyGroup.Member, &NearbyGroup.Member.handle.getter);
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  v39 = *&v27[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
  if (v39)
  {
    *(inited + 32) = *&v27[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
    *(inited + 40) = v39;
    v56 = v37;
    v40 = inited;

    sub_10021B8A8(v40);
    v41 = *&v27[OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource];

    v43 = sub_100008280(v42);

    v44 = *&v41[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members];
    *&v41[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members] = v43;
    sub_100213C90(v44);

    if (v27[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] != 1)
    {

      return;
    }

    v45 = *&v27[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
    if (v45)
    {
      v46 = v45;

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v46 updateAllowedDestinations:isa];

      sub_1002021D8(0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100206AA0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
    sub_100222D2C();
    Set.Iterator.init(_cocoa:)();
    v1 = v30;
    v2 = v31;
    v3 = v32;
    v4 = v33;
    v5 = v34;
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

  v35 = _swiftEmptyArrayStorage;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (v1 < 0)
  {
    v14 = __CocoaSet.Iterator.next()();
    if (!v14 || (*&v28 = v14, sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr), swift_dynamicCast(), v13 = v26, v4 = v9, v5 = v10, !v26))
    {
LABEL_34:
      sub_100045960(v1);
      return;
    }

LABEL_18:
    v15 = [v13 presencePayload];
    v16 = [v15 payloadDictionary];

    if (!v16)
    {
      goto LABEL_25;
    }

    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (!*(v17 + 16) || (v18 = sub_10001BF64(&v26), (v19 & 1) == 0))
    {

      sub_10001BF10(&v26);
LABEL_25:
      v28 = 0u;
      v29 = 0u;
      goto LABEL_26;
    }

    sub_100020E0C(*(v17 + 56) + 32 * v18, &v28);
    sub_10001BF10(&v26);

    if (*(&v29 + 1))
    {
      if (swift_dynamicCast())
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_26:
    sub_1000038A4(&v28, &qword_100522890, &qword_100450610);
LABEL_27:
    v26 = 0;
    v27 = 0;
LABEL_28:

    v20 = v27;
    v9 = v4;
    v10 = v5;
    if (v27)
    {
      v21 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_10002AFD0(0, *(v35 + 2) + 1, 1, v35);
      }

      v23 = *(v35 + 2);
      v22 = *(v35 + 3);
      if (v23 >= v22 >> 1)
      {
        v35 = sub_10002AFD0((v22 > 1), v23 + 1, 1, v35);
      }

      v24 = v35;
      *(v35 + 2) = v23 + 1;
      v25 = &v24[16 * v23];
      *(v25 + 4) = v21;
      *(v25 + 5) = v20;
      goto LABEL_8;
    }
  }

  v11 = v9;
  v12 = v10;
  v4 = v9;
  if (v10)
  {
LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_34;
    }

    goto LABEL_18;
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
      goto LABEL_34;
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

uint64_t sub_100206E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[47] = a6;
  v7[48] = a7;
  v7[45] = a4;
  v7[46] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[49] = v8;
  v7[50] = *(v8 - 8);
  v7[51] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v7[52] = v9;
  v7[53] = *(v9 - 8);
  v7[54] = swift_task_alloc();
  sub_1001BC5A8(&qword_100522958, &qword_1004500D0);
  v7[55] = swift_task_alloc();
  v10 = type metadata accessor for AddressableMember();
  v7[56] = v10;
  v7[57] = *(v10 - 8);
  v7[58] = swift_task_alloc();

  return _swift_task_switch(sub_100206FF8, 0, 0);
}

uint64_t sub_100206FF8()
{
  v66 = v0;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[59] = sub_100015AFC(v1, qword_100529B78);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[46];
    v4 = v0[47];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v65 = v8;
    *v6 = 138543618;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v6 + 4) = Strong;
    *v7 = Strong;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_10002C9C8(v5, v4, &v65);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}@]<%{public}s> Asserting presence.", v6, 0x16u);
    sub_1000038A4(v7, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v8);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    v0[12] = 0;
    *(v0 + 4) = 0u;
    *(v0 + 5) = 0u;
    goto LABEL_15;
  }

  v11 = v10;

  dispatch thunk of NearbyGroupSessionProvider.localMember.getter();

  if (!v0[11])
  {
LABEL_15:
    v28 = v0[56];
    v29 = v0[57];
    v30 = v0[55];
    sub_1000038A4((v0 + 8), &qword_100522960, &qword_1004500D8);
    (*(v29 + 56))(v30, 1, 1, v28);
    goto LABEL_16;
  }

  v12 = v0[56];
  v13 = v0[57];
  v14 = v0[55];
  sub_1001BC5A8(&qword_100522968, &qword_1004500E0);
  v15 = swift_dynamicCast();
  (*(v13 + 56))(v14, v15 ^ 1u, 1, v12);
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
LABEL_16:
    sub_1000038A4(v0[55], &qword_100522958, &qword_1004500D0);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v34 = v0[46];
      v33 = v0[47];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v65 = v37;
      *v35 = 138543618;
      swift_beginAccess();
      v38 = swift_unknownObjectWeakLoadStrong();
      *(v35 + 4) = v38;
      *v36 = v38;
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_10002C9C8(v34, v33, &v65);
      _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}@]<%{public}s> No local handle to assert presence with.", v35, 0x16u);
      sub_1000038A4(v36, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v37);
    }

    v39 = v0[54];
    v40 = v0[51];
    v61 = v0[53];
    v63 = v0[52];
    v41 = v0[49];
    v60 = v0[50];
    v42 = swift_allocObject();
    swift_beginAccess();
    v43 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v0[6] = sub_100223280;
    v0[7] = v42;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100003D98;
    v0[5] = &unk_1004C3800;
    v44 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[43] = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);
    (*(v60 + 8))(v40, v41);
    (*(v61 + 8))(v39, v63);

    goto LABEL_19;
  }

  (*(v0[57] + 32))(v0[58], v0[55], v0[56]);
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    sub_1001E6ABC();

    v18 = sub_1001E6758();

    (*((swift_isaMask & *v18) + 0xC0))(v19);
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = *(v20 + OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource);
    v0[60] = v21;
    v22 = v20;
    v21;

    v23 = AddressableMember.handle.getter();
    v25 = v24;
    v0[61] = v24;
    v26 = swift_task_alloc();
    v0[62] = v26;
    *v26 = v0;
    v26[1] = sub_100207A04;

    return sub_100215B8C(v23, v25);
  }

  swift_beginAccess();
  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    sub_1001E6ABC();

    v48 = sub_1001E6758();

    (*((swift_isaMask & *v48) + 0xD0))(v49);
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();

  v52 = os_log_type_enabled(v50, v51);
  v54 = v0[57];
  v53 = v0[58];
  v55 = v0[56];
  if (v52)
  {
    v62 = v0[46];
    v64 = v0[47];
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v65 = v58;
    *v56 = 138543618;
    swift_beginAccess();
    v59 = swift_unknownObjectWeakLoadStrong();
    *(v56 + 4) = v59;
    *v57 = v59;
    *(v56 + 12) = 2082;
    *(v56 + 14) = sub_10002C9C8(v62, v64, &v65);
    _os_log_impl(&_mh_execute_header, v50, v51, "[%{public}@]<%{public}s> Asserted presence.", v56, 0x16u);
    sub_1000038A4(v57, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v58);
  }

  (*(v54 + 8))(v53, v55);
LABEL_19:

  v45 = v0[1];

  return v45();
}

uint64_t sub_100207A04()
{
  v2 = *(*v1 + 480);
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_100207DE4;
  }

  else
  {
    v3 = sub_100207B54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100207B54()
{
  v20 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001E6ABC();

    v3 = sub_1001E6758();

    (*((swift_isaMask & *v3) + 0xD0))(v4);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[57];
  v8 = v0[58];
  v10 = v0[56];
  if (v7)
  {
    v17 = v0[46];
    v18 = v0[47];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v11 = 138543618;
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_10002C9C8(v17, v18, &v19);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}@]<%{public}s> Asserted presence.", v11, 0x16u);
    sub_1000038A4(v12, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v13);
  }

  (*(v9 + 8))(v8, v10);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100207DE4()
{
  v17 = v0;
  (*(v0[57] + 8))(v0[58], v0[56]);

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[46];
    v3 = v0[47];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 138543874;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v5 + 4) = Strong;
    *v6 = Strong;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10002C9C8(v4, v3, &v16);
    *(v5 + 22) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v9;
    v6[1] = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}@]<%{public}s> Error asserting presence %{public}@. Low-power mode will not function.", v5, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v7);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  v11 = v0[63];
  if (v10)
  {
    v12 = v10;
    v0[44] = sub_1001E6ABC();
    v13 = type metadata accessor for JoinTimingEvents();
    sub_100232B4C(v11, v13, &off_1004C33A8);

    *&v12[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings] = v0[44];
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002080B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  return _swift_task_switch(sub_1002080D8, 0, 0);
}

uint64_t sub_1002080D8()
{
  v36 = v0;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[23] = sub_100015AFC(v1, qword_100529B78);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v6 = 138543618;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v6 + 4) = Strong;
    *v7 = Strong;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_10002C9C8(v5, v4, &v35);
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}@]<%{public}s> Joining provider.", v6, 0x16u);
    sub_1000038A4(v7, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v8);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_1001E6ABC();

    v12 = sub_1001E675C();

    (*((swift_isaMask & *v12) + 0xC0))(v13);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v0[24] = *(v14 + OBJC_IVAR___MRDFastSyncGroupSession_provider);
    v15 = v14;

    v16 = swift_task_alloc();
    v0[25] = v16;
    v17 = sub_1001BC5A8(&qword_100522160, &unk_10044F580);
    v18 = sub_10000462C(&qword_100522950, &qword_100522160, &unk_10044F580, &protocol conformance descriptor for NearbyGroupSessionProvider<A>);
    *v16 = v0;
    v16[1] = sub_100208670;

    return GroupSessionProvider.join()(v17, v18);
  }

  else
  {
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      sub_1001E6ABC();

      v21 = sub_1001E675C();

      (*((swift_isaMask & *v21) + 0xD0))(v22);
    }

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[21];
      v25 = v0[22];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v27 = 138543618;
      swift_beginAccess();
      v30 = swift_unknownObjectWeakLoadStrong();
      *(v27 + 4) = v30;
      *v28 = v30;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_10002C9C8(v26, v25, &v35);
      _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}@]<%{public}s> Joined provider.", v27, 0x16u);
      sub_1000038A4(v28, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v29);
    }

    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v32 = v31;
      sub_1001EAA1C();
    }

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_100208670()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100208A00;
  }

  else
  {

    v2 = sub_10020878C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10020878C()
{
  v18 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001E6ABC();

    v3 = sub_1001E675C();

    (*((swift_isaMask & *v3) + 0xD0))(v4);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[21];
    v7 = v0[22];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 138543618;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    *(v9 + 4) = v12;
    *v10 = v12;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_10002C9C8(v8, v7, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}@]<%{public}s> Joined provider.", v9, 0x16u);
    sub_1000038A4(v10, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v11);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_1001EAA1C();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100208A00()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100208A64(uint64_t a1)
{
  v2 = v1;
  v170 = a1;
  v155 = type metadata accessor for DispatchWorkItemFlags();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v152 = &v146 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for DispatchQoS();
  v151 = *(v153 - 8);
  __chkstk_darwin(v153);
  v150 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for UUID();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v168 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for Participant();
  v169 = *(v166 - 8);
  __chkstk_darwin(v166);
  v167 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_100522920, &qword_100450090);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v165 = (&v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v161 = &v146 - v12;
  v13 = __chkstk_darwin(v11);
  v162 = &v146 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v146 - v16;
  __chkstk_darwin(v15);
  v171 = &v146 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v22, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
LABEL_4:
    v26 = type metadata accessor for Logger();
    v27 = sub_100015AFC(v26, qword_100529B78);
    v28 = *(v8 + 16);
    v28(v17, v170, v7);
    v29 = v2;
    v159 = v27;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    v32 = os_log_type_enabled(v30, v31);
    v160 = v25;
    v164 = v8 + 16;
    v158 = v28;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v148 = v34;
      v149 = swift_slowAlloc();
      aBlock[0] = v149;
      *v33 = 138543874;
      *(v33 + 4) = v29;
      v34->isa = v29;
      v147 = v30;
      *(v33 + 12) = 2082;
      v35 = &v29[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v36 = v29;
      v38 = *&v29[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v37 = *(v35 + 1);
      v39 = v36;
      *(v33 + 14) = sub_10002C9C8(v38, v37, aBlock);
      *(v33 + 22) = 2082;
      v28(v162, v17, v7);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      v163 = *(v8 + 8);
      v163(v17, v7);
      v43 = sub_10002C9C8(v40, v42, aBlock);
      v29 = v36;

      *(v33 + 24) = v43;
      v44 = v147;
      _os_log_impl(&_mh_execute_header, v147, v31, "[%{public}@]<%{public}s> GroupSession.State changed: %{public}s.", v33, 0x20u);
      sub_1000038A4(v148, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    else
    {

      v163 = *(v8 + 8);
      v163(v17, v7);
    }

    v45 = v166;
    v46 = v167;
    v47 = v169;
    sub_10000462C(&qword_100522928, &qword_100522920, &qword_100450090, &protocol conformance descriptor for GroupSession<A>.State);
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v59 = v168;
    v60 = v158;
    if ((v58 & 1) == 0)
    {
      v61 = v45;
      v149 = v8;
      v62 = v161;
      v158(v161, v171, v7);
      v63 = v29;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      v148 = v64;
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v146 = v67;
        v147 = swift_slowAlloc();
        aBlock[0] = v147;
        *v66 = 138543874;
        *(v66 + 4) = v63;
        *v67 = v63;
        v68 = v7;
        *(v66 + 12) = 2082;
        v69 = v60;
        v70 = v29;
        v71 = *&v63[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v72 = *&v63[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v73 = v63;
        v74 = v72;
        v29 = v70;
        *(v66 + 14) = sub_10002C9C8(v71, v74, aBlock);
        *(v66 + 22) = 2082;
        v69(v162, v62, v68);
        v75 = String.init<A>(describing:)();
        v77 = v76;
        v8 = v149;
        v163(v62, v68);
        v78 = sub_10002C9C8(v75, v77, aBlock);
        v7 = v68;

        *(v66 + 24) = v78;
        v60 = v69;
        v45 = v166;
        v79 = v65;
        v80 = v148;
        _os_log_impl(&_mh_execute_header, v148, v79, "[%{public}@]<%{public}s> GroupSession.State change differs from session: %{public}s.", v66, 0x20u);
        sub_1000038A4(v146, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v59 = v168;

        v47 = v169;
        v46 = v167;
      }

      else
      {

        v8 = v149;
        v163(v62, v7);
        v46 = v167;
        v45 = v61;
        v59 = v168;
        v47 = v169;
      }
    }

    v81 = v165;
    v60(v165, v170, v7);
    v82 = (*(v8 + 88))(v81, v7);
    if (v82 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      v83 = *(v8 + 96);
      v170 = v7;
      v83(v81, v7);
      v84 = *v81;
      v85 = v29;
      swift_errorRetain();
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        aBlock[0] = v169;
        *v88 = 138543874;
        *(v88 + 4) = v85;
        *v89 = v85;
        *(v88 + 12) = 2082;
        v90 = *&v85[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v91 = *&v85[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v92 = v85;
        *(v88 + 14) = sub_10002C9C8(v90, v91, aBlock);
        *(v88 + 22) = 2082;
        v173 = v84;
        swift_errorRetain();
        sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
        v93 = String.init<A>(describing:)();
        v95 = sub_10002C9C8(v93, v94, aBlock);

        *(v88 + 24) = v95;
        _os_log_impl(&_mh_execute_header, v86, v87, "[%{public}@]<%{public}s> GroupSession.State invalidated with error: %{public}s.", v88, 0x20u);
        sub_1000038A4(v89, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      swift_errorRetain();
      sub_100204BF8(v84);

      v163(v171, v170);
      return;
    }

    if (v82 == enum case for GroupSession.State.waiting<A>(_:))
    {
      v163(v171, v7);

      return;
    }

    if (v82 != enum case for GroupSession.State.joined<A>(_:))
    {
      v142 = v163;
      v163(v171, v7);

      v142(v81, v7);
      return;
    }

    v149 = v8;
    v170 = v7;
    v96 = *&v29[OBJC_IVAR___MRDFastSyncGroupSession__state];
    *&v29[OBJC_IVAR___MRDFastSyncGroupSession__state] = 3;
    sub_1001E6BC0(v96);
    GroupSession.localParticipant.getter();
    Participant.id.getter();
    v97 = *(v47 + 8);
    v169 = v47 + 8;
    v167 = v97;
    (v97)(v46, v45);
    v98 = UUID.uuidString.getter();
    v100 = v99;
    v101 = *(v156 + 8);
    v102 = v157;
    v101(v59, v157);
    v103 = &v29[OBJC_IVAR___MRDFastSyncGroupSession_localFastSyncIdentifier];
    *v103 = v98;
    v103[1] = v100;

    sub_1001E6ABC();
    v104 = sub_1001E681C();

    (*((swift_isaMask & *v104) + 0xD0))(v105);

    if (v29[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] == 1)
    {
      GroupSession.localParticipant.getter();
      Participant.id.getter();
      (v167)(v46, v166);
      v106 = UUID.uuidString.getter();
      v108 = v107;
      v101(v59, v102);
      v109 = v29;
      v110 = &v29[OBJC_IVAR___MRDFastSyncGroupSession_leaderFastSyncIdentifier];
      *v110 = v106;
      v110[1] = v108;

      v111 = *&v29[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
      if (v111)
      {
        v112 = *&v29[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
        v113 = &v29[OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier];
        v114 = *&v29[OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier];
        v115 = *&v29[OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier + 8];
        swift_beginAccess();

        sub_1001EC7F4(v114, v115, v112, v111);
        swift_endAccess();
        v116 = v113[1];
        if (v116)
        {
          v117 = *v113;
          v118 = OBJC_IVAR___MRDFastSyncGroupSession_localIdentity;
          v119 = *&v109[OBJC_IVAR___MRDFastSyncGroupSession_localIdentity];

          v120 = [v119 identifier];
          v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v123 = v122;

          v124 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v173 = *&v109[v124];
          *&v109[v124] = 0x8000000000000000;
          sub_100035B14(v121, v123, v117, v116, isUniquelyReferenced_nonNull_native);

          *&v109[v124] = v173;
          swift_endAccess();
          v126 = [*&v109[v118] identifier];
          v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v129 = v128;

          v130 = *&v109[v118];
          v131 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
          swift_beginAccess();
          v132 = v130;
          v133 = swift_isUniquelyReferenced_nonNull_native();
          v173 = *&v109[v131];
          *&v109[v131] = 0x8000000000000000;
          sub_10021ACB8(v132, v127, v129, v133, &unk_100522930, &unk_100450098);

          *&v109[v131] = v173;
          swift_endAccess();
          v134 = swift_allocObject();
          *(v134 + 16) = v109;
          aBlock[4] = sub_100223110;
          aBlock[5] = v134;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100003D98;
          aBlock[3] = &unk_1004C3710;
          v135 = _Block_copy(aBlock);
          v136 = v109;
          v137 = v150;
          static DispatchQoS.unspecified.getter();
          v173 = _swiftEmptyArrayStorage;
          sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1001BC5A8(&unk_100522280, &unk_10044F590);
          sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
          v138 = v152;
          v139 = v155;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v135);
          (*(v154 + 8))(v138, v139);
          (*(v151 + 8))(v137, v153);

          v140 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings;
          aBlock[0] = *&v136[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings];
          v141 = type metadata accessor for JoinTimingEvents();

          sub_10023231C(v141, &off_1004C33A8);
          *&v136[v140] = aBlock[0];

LABEL_30:
          v145 = GroupSession.activeParticipants.getter();
          sub_100200EC8(v145);

          (*(v149 + 8))(v171, v170);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    if (!*&v29[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8])
    {

      v143 = sub_1001E687C();

      (*((swift_isaMask & *v143) + 0xC0))(v144);

      sub_10020C2E4();
    }

    goto LABEL_30;
  }

  v25 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];
  if (v25)
  {

    GroupSession.state.getter();
    if (qword_100529B70 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100015AFC(v48, qword_100529B78);
  v49 = v2;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v52 = 138543618;
    *(v52 + 4) = v49;
    *v53 = v49;
    *(v52 + 12) = 2082;
    v55 = *&v49[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v56 = *&v49[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v57 = v49;
    *(v52 + 14) = sub_10002C9C8(v55, v56, aBlock);
    _os_log_impl(&_mh_execute_header, v50, v51, "[%{public}@]<%{public}s> State changed without group session.", v52, 0x16u);
    sub_1000038A4(v53, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v54);
  }
}

void sub_100209EA8()
{
  v1 = sub_1001BC5A8(&unk_100522900, &unk_100450080);
  v45 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v38[-v2];
  v4 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger;
  if (*&v0[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger])
  {
    return;
  }

  v13 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];
  if (v13)
  {
    v14 = qword_100529B70;

    if (v14 == -1)
    {
LABEL_5:
      v15 = type metadata accessor for Logger();
      sub_100015AFC(v15, qword_100529B78);
      v44 = v0;
      v16 = v0;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v43 = v13;
        v20 = v19;
        v21 = swift_slowAlloc();
        v40 = v21;
        v41 = swift_slowAlloc();
        v47[0] = v41;
        *v20 = 138543618;
        *(v20 + 4) = v16;
        *v21 = v16;
        *(v20 + 12) = 2082;
        v39 = v18;
        v42 = v1;
        v23 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v22 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v24 = v16;
        v1 = v42;
        *(v20 + 14) = sub_10002C9C8(v23, v22, v47);
        _os_log_impl(&_mh_execute_header, v17, v39, "[%{public}@]<%{public}s> Configuring messenger.", v20, 0x16u);
        sub_1000038A4(v40, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v41);
      }

      (*(v46 + 104))(v6, enum case for GroupSessionMessenger.DeliveryMode.reliable(_:), v4);
      type metadata accessor for GroupSessionMessenger();
      swift_allocObject();

      v35 = GroupSessionMessenger.init<A>(session:deliveryMode:)();
      GroupSessionMessenger.receive(_:)();
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      *(v37 + 16) = sub_100222ED8;
      *(v37 + 24) = v36;
      sub_10000462C(&unk_100529140, &unk_100522900, &unk_100450080, &protocol conformance descriptor for GroupSessionMessenger.MessageStream<A>);
      Publisher<>.sink(receiveValue:)();

      (*(v45 + 8))(v3, v1);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      *(v10 + v44) = v35;

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100015AFC(v25, qword_100529B78);
  v26 = v0;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v47[0] = v31;
    *v29 = 138543618;
    *(v29 + 4) = v26;
    *v30 = v26;
    *(v29 + 12) = 2082;
    v32 = *&v26[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v33 = *&v26[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v34 = v26;
    *(v29 + 14) = sub_10002C9C8(v32, v33, v47);
    _os_log_impl(&_mh_execute_header, v27, v28, "[%{public}@]<%{public}s> No session to create messenger.", v29, 0x16u);
    sub_1000038A4(v30, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v31);
  }
}

void sub_10020A578(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_1001C3FE0(a1, a2);
    v18 = sub_10036C6B8(a1, a2);
    if (v18 == 11)
    {
      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100015AFC(v21, qword_100529B78);
      v22 = v17;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock[0] = v27;
        *v25 = 138543618;
        *(v25 + 4) = v22;
        *v26 = v17;
        *(v25 + 12) = 2082;
        v28 = *&v22[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v29 = *&v22[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v22 = v22;

        v30 = sub_10002C9C8(v28, v29, aBlock);

        *(v25 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}@]<%{public}s> Error decoding message.", v25, 0x16u);
        sub_1000038A4(v26, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v27);
      }
    }

    else
    {
      v31 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
      v48 = v9;
      v49 = v31;
      v32 = *(v14 + 16);
      v45 = v12;
      v33 = v18;
      v34 = v19;
      v35 = v20;
      v32(&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13);
      v36 = (*(v14 + 80) + 48) & ~*(v14 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = v17;
      *(v37 + 24) = v33;
      v46 = v33;
      *(v37 + 32) = v34;
      *(v37 + 40) = v35;
      (*(v14 + 32))(v37 + v36, &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
      aBlock[4] = sub_100222F44;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004C3620;
      v38 = _Block_copy(aBlock);
      v47 = v17;
      v39 = v34;
      v40 = v34;
      v41 = v35;
      sub_100222F5C(v33, v39, v35);
      v42 = v45;
      static DispatchQoS.unspecified.getter();
      v54 = _swiftEmptyArrayStorage;
      sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
      v43 = v48;
      v44 = v53;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);
      sub_100222F78(v46, v40, v41);
      (*(v52 + 8))(v43, v44);
      (*(v50 + 8))(v42, v51);
    }
  }
}

uint64_t sub_10020AB44(char *a1, int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v60 = a4;
  v9 = type metadata accessor for Participant();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v58 = *(v15 - 8);
  __chkstk_darwin(v15);
  v57 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  if (*&a1[OBJC_IVAR___MRDFastSyncGroupSession__state] == 3)
  {
    GroupSessionMessenger.MessageContext.source.getter();
    sub_1001F87B4(a2, a3, v60, v12);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v50 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = v20;
    v52 = v19;
    v53 = a5;
    v49 = a2;
    v48 = a3;
    v22 = v60;
    v55 = v13;
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v54 = v15;
    v23 = type metadata accessor for Logger();
    sub_100015AFC(v23, qword_100529B78);
    v24 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v27 = 138543618;
      *(v27 + 4) = v24;
      *v28 = v24;
      *(v27 + 12) = 2082;
      v30 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v31 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v32 = v24;
      *(v27 + 14) = sub_10002C9C8(v30, v31, aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}@]<%{public}s> Got message when not joined. Will attempt to correct ordering.", v27, 0x16u);
      sub_1000038A4(v28, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v29);
    }

    v33 = v22;
    v34 = v48;
    v35 = v49;
    v36 = v53;
    sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
    v60 = static OS_dispatch_queue.main.getter();
    v37 = v50;
    v38 = v51;
    v39 = v52;
    (*(v51 + 16))(v50, v36, v52);
    v40 = (*(v38 + 80) + 48) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v24;
    *(v41 + 24) = v35;
    *(v41 + 32) = v34;
    *(v41 + 40) = v33;
    (*(v38 + 32))(v41 + v40, v37, v39);
    aBlock[4] = sub_100222F94;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C3670;
    v42 = _Block_copy(aBlock);
    v43 = v24;
    sub_1001C3FE0(v34, v33);

    v44 = v57;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v45 = v59;
    v46 = v56;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v60;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);

    (*(v55 + 8))(v45, v46);
    return (*(v58 + 8))(v44, v54);
  }
}

uint64_t sub_10020B19C(char *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v27 = a4;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v30 = *(v11 - 8);
  v31 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  (*(v15 + 16))(v17, a5, v14);
  v18 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  v20 = a3;
  v21 = v27;
  *(v19 + 40) = v27;
  (*(v15 + 32))(v19 + v18, v17, v14);
  aBlock[4] = sub_100223078;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C36C0;
  v22 = _Block_copy(aBlock);
  v23 = a1;
  sub_1001C3FE0(v20, v21);
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  v24 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v32 + 8))(v10, v24);
  (*(v30 + 8))(v13, v31);
}

uint64_t sub_10020B56C(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for Participant();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  GroupSessionMessenger.MessageContext.source.getter();
  sub_1001F87B4(a2, a3, a4, v10);
  return (*(v8 + 8))(v10, v7);
}

void sub_10020B668()
{
  v1 = v0;
  v2 = type metadata accessor for Participants();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  if (v1[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] != 1)
  {
    return;
  }

  if (qword_100529B70 != -1)
  {
    goto LABEL_17;
  }

LABEL_4:
  v12 = type metadata accessor for Logger();
  sub_100015AFC(v12, qword_100529B78);
  v13 = v1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v46 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v47 = v2;
    v48 = v19;
    v20 = v19;
    *v16 = 138543618;
    *(v16 + 4) = v13;
    *v18 = v13;
    *(v16 + 12) = 2082;
    v22 = *&v13[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v21 = *&v13[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v23 = v13;
    *(v16 + 14) = sub_10002C9C8(v22, v21, &v48);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}@]<%{public}s> Broadcast leader discovery.", v16, 0x16u);
    sub_1000038A4(v18, &qword_100521870, &unk_10044EA70);
    v3 = v46;

    sub_100026A44(v20);
    v2 = v47;
  }

  if (*&v13[OBJC_IVAR___MRDFastSyncGroupSession__state] == 3)
  {
    v24 = *&v13[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
    if (v24)
    {

      j___s12mediaremoted28MRDFastSyncGroupSessionStateO8rawValueSivg();
      v26 = v25;
      v28 = v27;
      v29 = sub_10036D0F8(v25, v27);
      sub_1001C4034(v26, v28);
      (*(v3 + 104))(v5, enum case for Participants.all(_:), v2);
      v30 = v29;
      sub_10020CF20(0, v29, v5, v24, 0, 0);

      (*(v3 + 8))(v5, v2);
      return;
    }

    v41 = v13;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_14;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v48 = v36;
    *v34 = 138543618;
    *(v34 + 4) = v41;
    *v35 = v41;
    *(v34 + 12) = 2082;
    v42 = *&v41[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v43 = *&v41[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v44 = v41;
    *(v34 + 14) = sub_10002C9C8(v42, v43, &v48);
    v40 = "[%{public}@]<%{public}s> No messenger to send leader message.";
    goto LABEL_13;
  }

  v31 = v13;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v48 = v36;
    *v34 = 138543618;
    *(v34 + 4) = v31;
    *v35 = v31;
    *(v34 + 12) = 2082;
    v37 = *&v31[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v38 = *&v31[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v39 = v31;
    *(v34 + 14) = sub_10002C9C8(v37, v38, &v48);
    v40 = "[%{public}@]<%{public}s> Drop leader message because we are not joined.";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v32, v33, v40, v34, 0x16u);
    sub_1000038A4(v35, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v36);
  }

LABEL_14:
}

void sub_10020BC30(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Participants();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v2[OBJC_IVAR___MRDFastSyncGroupSession_isLeader])
  {
    return;
  }

  v13 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = *(*v13 + 248);

  LOBYTE(v14) = v14(v15);

  if (sub_10036FD5C(v14, 1u))
  {
    if (qword_100529B70 == -1)
    {
LABEL_6:
      v16 = type metadata accessor for Logger();
      sub_100015AFC(v16, qword_100529B78);
      v17 = v2;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v18, v19))
      {
LABEL_20:

        return;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v55 = v22;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v21 = v17;
      *(v20 + 12) = 2082;
      v23 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v24 = *&v17[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v25 = v17;
      *(v20 + 14) = sub_10002C9C8(v23, v24, &v55);
      v26 = "[%@]<%{public}s> Skip identity share because we are entering low power.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v18, v19, v26, v20, 0x16u);
      sub_1000038A4(v21, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v22);

      goto LABEL_20;
    }

LABEL_23:
    swift_once();
    goto LABEL_6;
  }

  if (!*&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupSession] || (v27 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger]) == 0)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100015AFC(v44, qword_100529B78);
    v45 = v2;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_20;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v55 = v22;
    *v20 = 138412546;
    *(v20 + 4) = v45;
    *v21 = v45;
    *(v20 + 12) = 2082;
    v46 = *&v45[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v47 = *&v45[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v48 = v45;
    *(v20 + 14) = sub_10002C9C8(v46, v47, &v55);
    v26 = "[%@]<%{public}s> No messenger available to share identity.";
    goto LABEL_19;
  }

  v28 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_localIdentity];

  v29 = v28;
  MRDFastSyncGroupSessionState.rawValue.getter();
  v31 = v30;
  v54 = sub_10036D264(v30);

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100015AFC(v32, qword_100529B78);
  v33 = v2;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v53 = v27;
    v37 = v36;
    v38 = swift_slowAlloc();
    v51 = v38;
    v52 = swift_slowAlloc();
    v55 = v52;
    *v37 = 138412546;
    *(v37 + 4) = v33;
    *v38 = v33;
    *(v37 + 12) = 2082;
    v50 = v35;
    v40 = *&v33[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v39 = *&v33[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v41 = v33;
    *(v37 + 14) = sub_10002C9C8(v40, v39, &v55);
    _os_log_impl(&_mh_execute_header, v34, v50, "[%@]<%{public}s> Sharing identity.", v37, 0x16u);
    sub_1000038A4(v51, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v52);

    v27 = v53;
  }

  v42 = v54;
  v43 = v54;
  static Participants.only(_:)();
  sub_10020CF20(1u, v42, v6, v27, 0, 0);

  (*(v4 + 8))(v6, v3);
}

void sub_10020C2E4()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v49 = OBJC_IVAR___MRDFastSyncGroupSession_leaderDiscoveryTimer;
  if (!*&v0[OBJC_IVAR___MRDFastSyncGroupSession_leaderDiscoveryTimer])
  {
    sub_1001E6B44();
    v12 = sub_1001E69BC();

    (*((swift_isaMask & *v12) + 0x68))(v13);

    v14 = "v52@0:8Q16@24@32B40@44" + 19;
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1000038A4(v4, &qword_1005228D8, &unk_100450060);
    }

    else
    {
      v15 = *(v6 + 32);
      v15(v11, v4, v5);
      v16 = sub_1001E6ABC();
      swift_beginAccess();
      v17 = *(v16 + 16);

      if (v17 == 1)
      {
        v48 = kMREventGroupSessionLeaderLost;
        (*(v6 + 16))(v9, v11, v5);
        v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
        v19 = swift_allocObject();
        v15((v19 + v18), v9, v5);
        v54 = sub_100222DE8;
        v55 = v19;
        aBlock = _NSConcreteStackBlock;
        v14 = "@44";
        v51 = 1107296256;
        v52 = sub_1001CDC04;
        v53 = &unk_1004C3580;
        v20 = _Block_copy(&aBlock);
        v21 = v48;

        MRAnalyticsSendEvent();
        _Block_release(v20);

        (*(v6 + 8))(v11, v5);
      }

      else
      {
        (*(v6 + 8))(v11, v5);
        v14 = "@44";
      }
    }

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100015AFC(v22, qword_100529B78);
    v23 = v1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v26 = 138412546;
      *(v26 + 4) = v23;
      *v27 = v23;
      *(v26 + 12) = 2082;
      v29 = v1;
      v30 = v14;
      v31 = *&v23[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v32 = *&v23[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v33 = v23;
      v34 = v31;
      v14 = v30;
      v1 = v29;
      *(v26 + 14) = sub_10002C9C8(v34, v32, &aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "[%@]<%{public}s> Start leader discovery timer.", v26, 0x16u);
      sub_1000038A4(v27, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v28);
    }

    v35 = [objc_opt_self() currentSettings];
    if (v35)
    {
      v36 = v35;
      [v35 groupSessionLeaderDiscoveryInterval];
      v38 = v37;

      v39 = *&v23[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
      v40 = swift_allocObject();
      *(v40 + 16) = v23;
      v41 = objc_allocWithZone(MSVTimer);
      v54 = sub_100222DE0;
      v55 = v40;
      aBlock = _NSConcreteStackBlock;
      v51 = *(v14 + 323);
      v52 = sub_100003D98;
      v53 = &unk_1004C3530;
      v42 = _Block_copy(&aBlock);
      v43 = v23;
      v44 = v39;

      v45 = [v41 initWithInterval:0 repeats:v44 queue:v42 block:v38];
      _Block_release(v42);

      v46 = *&v1[v49];
      *&v1[v49] = v45;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10020C904(char *a1)
{
  v36 = type metadata accessor for Participant();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1[OBJC_IVAR___MRDFastSyncGroupSession_groupSession])
  {

    v5 = GroupSession.activeParticipants.getter();

    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 56);
    v33 = a1;
    v35 = &a1[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
    a1 = ((v6 + 63) >> 6);
    v34 = v2 + 16;
    v9 = (v2 + 8);

    v10 = 0;
    v11 = v36;
    while (v8)
    {
LABEL_11:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      (*(v2 + 16))(v4, *(v5 + 48) + *(v2 + 72) * (v13 | (v10 << 6)), v11);
      v14 = Participant.handle.getter();
      v16 = *(v35 + 1);
      if (v16)
      {
        if (v14 == *v35 && v16 == v15)
        {

          (*v9)(v4, v36);
LABEL_24:
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v11 = v36;
        (*v9)(v4, v36);
        if (v18)
        {
          goto LABEL_24;
        }
      }

      else
      {

        (*v9)(v4, v11);
      }
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= a1)
      {

        a1 = v33;
        goto LABEL_19;
      }

      v8 = *(v5 + 56 + 8 * v12);
      ++v10;
      if (v8)
      {
        v10 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_19:
  if (qword_100529B70 != -1)
  {
LABEL_26:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100015AFC(v19, qword_100529B78);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v23 = 138412546;
    *(v23 + 4) = v20;
    *v24 = v20;
    *(v23 + 12) = 2082;
    v26 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v27 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v28 = v20;
    *(v23 + 14) = sub_10002C9C8(v26, v27, &v37);
    _os_log_impl(&_mh_execute_header, v21, v22, "[%@]<%{public}s> Leader remains undiscovered.", v23, 0x16u);
    sub_1000038A4(v24, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v25);
  }

  sub_10021DECC();
  v29 = swift_allocError();
  *v30 = 4;
  sub_100204BF8(v29);
}

void sub_10020CD20()
{
  v1 = OBJC_IVAR___MRDFastSyncGroupSession_leaderDiscoveryTimer;
  v2 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_leaderDiscoveryTimer];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
    *&v0[v1] = 0;

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100015AFC(v4, qword_100529B78);
    v5 = v0;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v7 = 138412546;
      *(v7 + 4) = v5;
      *v8 = v5;
      *(v7 + 12) = 2082;
      v10 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v11 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v12 = v5;
      *(v7 + 14) = sub_10002C9C8(v10, v11, &v14);
      _os_log_impl(&_mh_execute_header, oslog, v6, "[%@]<%{public}s> Stop leader discovery timer.", v7, 0x16u);
      sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_10020CF20(unsigned int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v91 = a4;
  v92 = a2;
  v93 = a1;
  v10 = type metadata accessor for Participants();
  v84 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v78 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v72 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v18 = v19;
  v20 = *(v16 + 104);
  v88 = enum case for DispatchPredicate.onQueue(_:);
  v89 = v16 + 104;
  v87 = v20;
  v20(v18);
  v85 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v21 = *(v16 + 8);
  v90 = v16 + 8;
  v86 = v21;
  v21(v18, v15);
  if (v19)
  {
    v83 = v15;
    v79 = a5;
    v80 = a6;
    if (qword_100529B70 == -1)
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
  v22 = type metadata accessor for Logger();
  sub_100015AFC(v22, qword_100529B78);
  v23 = v84;
  v77 = *(v84 + 16);
  v77(v14, a3, v10);
  v24 = v92;
  v25 = v92;
  v26 = v6;
  v82 = v10;
  v27 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  v30 = os_log_type_enabled(v28, v29);
  v81 = a3;
  if (v30)
  {
    v74 = v29;
    v75 = v28;
    v31 = v27;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v94[0] = v73;
    *v32 = 138413314;
    *(v32 + 4) = v31;
    v72 = v33;
    *v33 = v31;
    *(v32 + 12) = 2082;
    v35 = *&v31[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v34 = *&v31[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v76 = v31;
    v36 = v31;
    *(v32 + 14) = sub_10002C9C8(v35, v34, v94);
    *(v32 + 22) = 2080;
    v37 = sub_10036C51C(v93);
    v39 = sub_10002C9C8(v37, v38, v94);

    *(v32 + 24) = v39;
    *(v32 + 32) = 2080;
    v40 = v78;
    v41 = v82;
    v77(v78, v14, v82);
    v42 = (*(v23 + 88))(v40, v41);
    v43 = v23;
    if (v42 == enum case for Participants.only(_:))
    {
      (*(v23 + 96))(v40, v41);
      type metadata accessor for Participant();
      sub_100004858(&qword_100521D68, 255, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
      v44 = Set.description.getter();
      v46 = v45;

      (*(v43 + 8))(v14, v41);
    }

    else
    {
      v48 = v42;
      v49 = enum case for Participants.all(_:);
      v50 = *(v23 + 8);
      v50(v14, v41);
      if (v48 == v49)
      {
        v46 = 0xE300000000000000;
        v44 = 7105633;
      }

      else
      {
        v50(v78, v41);
        v46 = 0xE700000000000000;
        v44 = 0x6E776F6E6B6E75;
      }
    }

    v51 = v75;
    v52 = sub_10002C9C8(v44, v46, v94);

    *(v32 + 34) = v52;
    *(v32 + 42) = 2112;
    *(v32 + 44) = v25;
    v53 = v92;
    v72[1] = v92;
    v54 = v25;
    _os_log_impl(&_mh_execute_header, v51, v74, "[%@]<%{public}s> Sending message type: %s to: %s with payload: %@", v32, 0x34u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v27 = v76;
    v47 = v83;
    if (!v53)
    {
      goto LABEL_14;
    }
  }

  else
  {

    (*(v23 + 8))(v14, v82);
    v47 = v83;
    if (!v24)
    {
      goto LABEL_14;
    }
  }

  v55 = [v25 data];
  if (v55)
  {
    v56 = v55;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_14:
  MRDFastSyncGroupSessionState.rawValue.getter();
  v58 = v57;
  v60 = v59;
  sub_10036C864(v61);
  v63 = v62;
  v65 = v64;
  *v18 = v85;
  v87(v18, v88, v47);
  v66 = _dispatchPreconditionTest(_:)();
  result = v86(v18, v47);
  if (v66)
  {
    v68 = swift_allocObject();
    v70 = v79;
    v69 = v80;
    v68[2] = v27;
    v68[3] = v70;
    v68[4] = v69;
    v71 = v27;
    sub_10021DF20(v70, v69);
    GroupSessionMessenger.send(_:to:completion:)();

    sub_1001C4034(v63, v65);
    return sub_1001C4034(v58, v60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10020D64C(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100015AFC(v8, qword_100529B78);
    swift_errorRetain();
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v10, v11))
    {

      if (!a3)
      {
        return;
      }

      goto LABEL_7;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v12 = 138412802;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2082;
    v15 = *&v9[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v14 = *&v9[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v16 = v9;
    *(v12 + 14) = sub_10002C9C8(v15, v14, &v19);
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    v13[1] = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%@]<%{public}s> Message send error %@.", v12, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v18);
  }

  if (!a3)
  {
    return;
  }

LABEL_7:

  a3(a1);

  sub_1001C7C2C(a3, a4);
}

void sub_10020D8BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v18 = *(v12 + 8);
  v17 = v12 + 8;
  v18(v14, v11);
  if ((v15 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1001C3FE0(a1, a2);
  v119 = a1;
  MRDFastSyncGroupSessionState.rawValue.getter();
  v107 = v19;
  v17 = v20;
  v124 = v21;
  v22 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipantIdentifier + 8];
  v121 = v20;
  if (v22)
  {
    v116 = a2;
    v104 = a4;
    swift_beginAccess();
    v123 = v5;

    v24 = 0;
    v25 = sub_100222A00(v23, a3);

    v26 = &unk_100522000;
    v5 = "v52@0:8Q16@24@32B40@44" + 19;
    v27 = v25[2] == *(a3 + 16);
    v118 = v25;
    v103 = a5;
    if (!v27)
    {
      v28 = v17;
      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100015AFC(v29, qword_100529B78);
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      a4 = v123;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v126[0] = v125;
        *v32 = 138413058;
        *(v32 + 4) = a4;
        *v33 = a4;
        *(v32 + 12) = 2082;
        v34 = *(a4 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
        v35 = *(a4 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);
        v36 = a4;
        *(v32 + 14) = sub_10002C9C8(v34, v35, v126);
        a4 = 2048;
        *(v32 + 22) = 2048;
        v37 = *(a3 + 16);

        *(v32 + 24) = v37;
        v25 = v118;

        *(v32 + 32) = 2048;
        v38 = v25[2];

        *(v32 + 34) = v38;

        _os_log_impl(&_mh_execute_header, v30, v31, "[%@]<%{public}s> Not all participant identifiers mapped to send message. Provided: %ld, Mapped: %ld.", v32, 0x2Au);
        sub_1000038A4(v33, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v125);
        v17 = v121;

        v26 = &unk_100522000;
        v5 = "v52@0:8Q16@24@32B40@44" + 19;
      }

      else
      {

        swift_bridgeObjectRelease_n();

        v5 = "@44";
        v26 = &unk_100522000;
        v17 = v28;
      }
    }

    v53 = v25 + 8;
    v54 = 1 << *(v25 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & v25[8];
    v106 = &v123[v26[43]];
    v117 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
    v57 = (v54 + 63) >> 6;

    v58 = 0;
    *&v59 = *(v5 + 241);
    v105 = v59;
    v114 = v57;
    v115 = v25 + 8;
    if (v56)
    {
      while (1)
      {
        v60 = v58;
LABEL_21:
        v61 = (v60 << 10) | (16 * __clz(__rbit64(v56)));
        v62 = v25[7];
        v63 = v25[6] + v61;
        v64 = *(v63 + 8);
        v125 = *v63;
        v65 = (v62 + v61);
        v66 = v65[1];
        v111 = *v65;
        v67 = qword_100529B70;

        v122 = v66;

        if (v67 != -1)
        {
          swift_once();
        }

        v68 = type metadata accessor for Logger();
        v69 = sub_100015AFC(v68, qword_100529B78);
        v70 = v123;
        v71 = v123;

        v72 = v124;
        sub_1001C3FE0(v17, v124);
        v113 = v69;
        v73 = Logger.logObject.getter();
        a4 = v17;
        v74 = static os_log_type_t.info.getter();

        sub_1001C4034(a4, v72);

        v120 = v74;
        v75 = os_log_type_enabled(v73, v74);
        v112 = v71;
        if (v75)
        {
          v76 = swift_slowAlloc();
          v109 = v73;
          v77 = a4;
          v78 = v76;
          v79 = swift_slowAlloc();
          v108 = v79;
          a4 = swift_slowAlloc();
          v127[0] = a4;
          *v78 = v105;
          *(v78 + 4) = v71;
          *v79 = v70;
          *(v78 + 12) = 2082;
          v110 = 0;
          v80 = v124;
          v81 = *v106;
          v82 = v106[1];
          v83 = v71;
          *(v78 + 14) = sub_10002C9C8(v81, v82, v127);
          *(v78 + 22) = 2080;
          LOBYTE(v126[0]) = v107;
          v126[1] = v77;
          v126[2] = v80;
          sub_1001C3FE0(v77, v80);
          v84 = String.init<A>(describing:)();
          v86 = sub_10002C9C8(v84, v85, v127);
          v70 = v123;

          *(v78 + 24) = v86;
          v24 = v110;
          *(v78 + 32) = 2080;
          *(v78 + 34) = sub_10002C9C8(v125, v64, v127);
          v73 = v109;
          _os_log_impl(&_mh_execute_header, v109, v120, "[%@]<%{public}s> Enqueue message %s for handle: %s.", v78, 0x2Au);
          sub_1000038A4(v108, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();
        }

        v5 = *&v70[v117];
        if (!v5)
        {
          __break(1u);
          return;
        }

        v87 = *(*v5 + 440);

        v87(v119, v116, v125, v64);
        if (v24)
        {
          break;
        }

        v56 &= v56 - 1;

        v58 = v60;
        v17 = v121;
        v25 = v118;
        v57 = v114;
        v53 = v115;
        if (!v56)
        {
          goto LABEL_18;
        }
      }

      v88 = v112;
      v89 = v122;

      swift_errorRetain();
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v126[0] = swift_slowAlloc();
        *v92 = v105;
        *(v92 + 4) = v88;
        *v93 = v123;
        *(v92 + 12) = 2082;
        v94 = *v106;
        v95 = v106[1];
        v96 = v88;
        *(v92 + 14) = sub_10002C9C8(v94, v95, v126);
        *(v92 + 22) = 2080;
        v97 = sub_10002C9C8(v111, v89, v126);

        *(v92 + 24) = v97;
        *(v92 + 32) = 2112;
        swift_errorRetain();
        v98 = _swift_stdlib_bridgeErrorToNSError();
        *(v92 + 34) = v98;
        v93[1] = v98;
        _os_log_impl(&_mh_execute_header, v90, v91, "[%@]<%{public}s> Error enqueuing message for id: %s - %@.", v92, 0x2Au);
        sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
        swift_arrayDestroy();

        swift_arrayDestroy();
      }

      else
      {
      }

      v99 = v104;
      v100 = v121;
      sub_10021DECC();
      v101 = swift_allocError();
      *v102 = 3;
      v99(v101);

      v52 = v100;
      goto LABEL_12;
    }

LABEL_18:
    while (1)
    {
      v60 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v60 >= v57)
      {
        sub_1001C4034(v17, v124);

        return;
      }

      v56 = v53[v60];
      ++v58;
      if (v56)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  if (qword_100529B70 != -1)
  {
LABEL_36:
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100015AFC(v39, qword_100529B78);
  v40 = v5;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v128 = v125;
    *v43 = 138412546;
    *(v43 + 4) = v40;
    *v44 = v40;
    *(v43 + 12) = 2082;
    v45 = a4;
    v46 = *&v40[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v47 = *&v40[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v48 = v40;
    v49 = v47;
    a4 = v45;
    *(v43 + 14) = sub_10002C9C8(v46, v49, &v128);
    _os_log_impl(&_mh_execute_header, v41, v42, "[%@]<%{public}s> Cannot send message before identity exchange.", v43, 0x16u);
    sub_1000038A4(v44, &qword_100521870, &unk_10044EA70);
    v17 = v121;

    sub_100026A44(v125);
  }

  sub_10021DECC();
  v50 = swift_allocError();
  *v51 = 3;
  (a4)(v50);

  v52 = v17;
LABEL_12:
  sub_1001C4034(v52, v124);
}

void sub_10020E4B0(uint64_t a1, uint64_t a2, void **a3, void **a4)
{
  v214 = a4;
  v205 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v203 = *(v7 - 8);
  v204 = v7;
  __chkstk_darwin(v7);
  v200 = &v198 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v201 = *(v9 - 8);
  v202 = v9;
  __chkstk_darwin(v9);
  v199 = &v198 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for NearbyGroup.Member();
  v212 = *(v209 - 8);
  v11 = __chkstk_darwin(v209);
  v213 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v210 = &v198 - v13;
  v14 = sub_1001BC5A8(&qword_1005222A0, &unk_10044F5A0);
  __chkstk_darwin(v14 - 8);
  v208 = &v198 - v15;
  v16 = type metadata accessor for String.Encoding();
  v206 = *(v16 - 8);
  v207 = v16;
  __chkstk_darwin(v16);
  v18 = (&v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v198 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v211 = v4;
  v23 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v22, v19);
  if (v23)
  {
    static String.Encoding.utf8.getter();
    v25 = String.init(data:encoding:)();
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      v29 = sub_10036C4C0();
      if (v27 == *v29 && v28 == v29[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v30 = v214;
        v31 = (*(*v214 + 168))();
        if (!sub_10036FD5C(v31, 0))
        {

          v48 = v30[2];
          v47 = v30[3];
          swift_beginAccess();

          sub_100008318(&v216, v48, v47);
          swift_endAccess();

          return;
        }

        v200 = v28;
        v201 = v18;

        dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

        v32 = NearbyGroup.members.getter();

        v22 = (v32 + 56);
        v33 = 1 << *(v32 + 32);
        v34 = -1;
        if (v33 < 64)
        {
          v34 = ~(-1 << v33);
        }

        v35 = v34 & *(v32 + 56);
        v36 = (v33 + 63) >> 6;
        v202 = v212 + 16;
        v203 = v212 + 32;
        v204 = (v212 + 8);

        v37 = 0;
        v38 = v209;
        if (v35)
        {
          while (1)
          {
            v39 = v37;
LABEL_14:
            v40 = v32;
            v41 = v212;
            v42 = v210;
            (*(v212 + 16))(v210, *(v32 + 48) + *(v212 + 72) * (__clz(__rbit64(v35)) | (v39 << 6)), v38);
            v43 = *(v41 + 32);
            v43(v213, v42, v38);
            if (NearbyGroup.Member.handle.getter() == v214[2] && v44 == v214[3])
            {

              goto LABEL_65;
            }

            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v46)
            {
              break;
            }

            v35 &= v35 - 1;
            (*v204)(v213, v38);
            v37 = v39;
            v32 = v40;
            if (!v35)
            {
              goto LABEL_11;
            }
          }

LABEL_65:
          v52 = v208;
          v43(v208, v213, v38);
          v49 = 0;
          v50 = v214;
          v51 = v211;
LABEL_66:
          v143 = v212;
          (*(v212 + 56))(v52, v49, 1, v38);

          if ((*(v143 + 48))(v52, 1, v38) == 1)
          {
            sub_1000038A4(v52, &qword_1005222A0, &unk_10044F5A0);
          }

          else
          {
            v213 = NearbyGroup.Member.tokenDestination.getter();
            v145 = v144;
            (*v204)(v52, v38);
            if (v145)
            {
              goto LABEL_70;
            }
          }

          v145 = v50[3];
          v213 = v50[2];

LABEL_70:
          if (qword_100529B70 != -1)
          {
            swift_once();
          }

          v146 = type metadata accessor for Logger();
          sub_100015AFC(v146, qword_100529B78);
          v147 = v51;

          v148 = Logger.logObject.getter();
          v149 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v148, v149))
          {
            v150 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v150 = 138413058;
            *(v150 + 4) = v147;
            *v151 = v147;
            *(v150 + 12) = 2082;
            v152 = *&v147[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
            v153 = *&v147[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
            v154 = v147;
            v155 = v153;
            v156 = v145;
            v157 = v214;
            *(v150 + 14) = sub_10002C9C8(v152, v155, &aBlock);
            *(v150 + 22) = 2080;
            v158 = v157[2];
            v159 = v157[3];
            v145 = v156;
            *(v150 + 24) = sub_10002C9C8(v158, v159, &aBlock);
            *(v150 + 32) = 2080;
            *(v150 + 34) = sub_10002C9C8(v213, v156, &aBlock);
            _os_log_impl(&_mh_execute_header, v148, v149, "[%@]<%{public}s> Send transportMigrationReply push to: %s, dst: %s.", v150, 0x2Au);
            sub_1000038A4(v151, &qword_100521870, &unk_10044EA70);

            swift_arrayDestroy();
          }

          v160 = *&v147[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
          if (v160)
          {
            v212 = v145;
            sub_1001BC5A8(&unk_1005222B0, &qword_10044EB98);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10044F540;
            v211 = v160;
            v162 = sub_10036C46C();
            v164 = *v162;
            v163 = *(v162 + 1);
            aBlock = v164;
            v218 = v163;
            v210 = v163;
            swift_bridgeObjectRetain_n();
            AnyHashable.init<A>(_:)();
            v165 = sub_10036C4CC();
            v167 = *v165;
            v166 = v165[1];
            *(inited + 96) = &type metadata for String;
            *(inited + 72) = v167;
            *(inited + 80) = v166;

            v168 = sub_10036C484();
            v170 = *v168;
            v169 = *(v168 + 1);
            aBlock = v170;
            v218 = v169;
            v209 = v169;
            swift_bridgeObjectRetain_n();
            AnyHashable.init<A>(_:)();

            v171 = v201;
            static String.Encoding.utf8.getter();
            v172 = String.data(using:allowLossyConversion:)();
            v174 = v173;

            (*(v206 + 8))(v171, v207);
            if (v174 >> 60 != 15)
            {
              *(inited + 168) = &type metadata for Data;
              *(inited + 144) = v172;
              *(inited + 152) = v174;
              v175 = sub_10036C490();
              v176 = *(v175 + 1);
              aBlock = *v175;
              v218 = v176;
              swift_bridgeObjectRetain_n();
              v177 = AnyHashable.init<A>(_:)();
              v178 = v214;
              v179 = (*(*v214 + 216))(v177);
              *(inited + 240) = &type metadata for Int;
              *(inited + 216) = v179;
              v180 = sub_10036C49C();
              v181 = v180[1];
              aBlock = *v180;
              v218 = v181;
              swift_bridgeObjectRetain_n();
              AnyHashable.init<A>(_:)();
              v183 = *&v147[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
              v182 = *&v147[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
              *(inited + 312) = &type metadata for String;
              *(inited + 288) = v183;
              *(inited + 296) = v182;

              v184 = sub_10036C478();
              v185 = *(v184 + 1);
              aBlock = *v184;
              v218 = v185;
              swift_bridgeObjectRetain_n();
              AnyHashable.init<A>(_:)();
              v187 = v178[2];
              v186 = v178[3];
              *(inited + 384) = &type metadata for String;
              v214 = v187;
              *(inited + 360) = v187;
              *(inited + 368) = v186;
              v208 = v186;

              v188 = sub_10036C460();
              v189 = *(v188 + 1);
              aBlock = *v188;
              v218 = v189;
              swift_bridgeObjectRetain_n();
              AnyHashable.init<A>(_:)();
              v190 = *&v147[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
              if (v190)
              {
                v191 = *&v147[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];

                *(inited + 456) = &type metadata for String;
                *(inited + 432) = v191;
                *(inited + 440) = v190;
                sub_1001C2534(inited);
                swift_setDeallocating();
                sub_1001BC5A8(&qword_1005216C0, qword_10044EBA0);
                swift_arrayDestroy();
                isa = Dictionary._bridgeToObjectiveC()().super.isa;

                sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
                v193 = swift_initStackObject();
                *(v193 + 16) = xmmword_10044EC70;
                v194 = v212;
                *(v193 + 32) = v213;
                v195 = v193 + 32;
                *(v193 + 40) = v194;
                sub_10021FAD4(v193);
                swift_setDeallocating();
                sub_1001E6204(v195);
                v196 = Set._bridgeToObjectiveC()().super.isa;

                v197 = v211;
                [v211 sendMessage:isa toDestinations:v196];

                (*(*v205 + 392))(0, v214, v208);
                return;
              }

              goto LABEL_88;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

LABEL_11:
        while (1)
        {
          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v39 >= v36)
          {

            v49 = 1;
            v50 = v214;
            v51 = v211;
            v52 = v208;
            goto LABEL_66;
          }

          v35 = v22[v39];
          ++v37;
          if (v35)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_79;
      }
    }

    static String.Encoding.utf8.getter();
    v53 = a2;
    v54 = String.init(data:encoding:)();
    v22 = v211;
    v56 = v214;
    if (v55)
    {
      v57 = v54;
      v58 = v55;
      v59 = sub_10036C4CC();
      if (v57 == *v59 && v58 == v59[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (qword_100529B70 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_80;
      }
    }

    v85 = v56[2];
    v86 = v56[3];
    if (*(v22 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader) != 1)
    {
      v119 = *(v22 + OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8);
      if (!v119)
      {
LABEL_91:
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        return;
      }

      if (v85 == *(v22 + OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle) && v119 == v86 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v120 = swift_allocObject();
        v120[2] = v22;
        v120[3] = v53;
        v120[4] = a3;
        v221 = sub_10021DCBC;
        v222 = v120;
        aBlock = _NSConcreteStackBlock;
        v218 = 1107296256;
        v219 = sub_100003D98;
        v220 = &unk_1004C30D0;
        v121 = _Block_copy(&aBlock);
        v122 = v22;
        sub_1001C3FE0(v53, a3);
        v123 = v199;
        static DispatchQoS.unspecified.getter();
        v216 = _swiftEmptyArrayStorage;
        sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
        v124 = v200;
        v125 = v204;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v121);
        (*(v203 + 8))(v124, v125);
        v201[1](v123, v202);
        goto LABEL_52;
      }

      if (qword_100529B70 == -1)
      {
        goto LABEL_59;
      }

      goto LABEL_85;
    }

    v87 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
    swift_beginAccess();
    v88 = *(v22 + v87);
    if (*(v88 + 16))
    {

      v89 = sub_10000698C(v85, v86);
      if (v90)
      {
        v214 = a3;
        v91 = (*(v88 + 56) + 16 * v89);
        v85 = *v91;
        v92 = v91[1];

        v93 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
        swift_beginAccess();
        v94 = *(v22 + v93);

        v95 = sub_1001BD5E8(v85, v92, v94);

        v96 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
        swift_beginAccess();
        v97 = *(v22 + v96);
        if (*(v97 + 16))
        {
          LODWORD(v213) = v95;
          v98 = v22;

          v99 = sub_10000698C(v85, v92);
          if (v100)
          {
            v101 = (*(v97 + 56) + 16 * v99);
            v102 = *v101;
            v86 = v101[1];
            v103 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
            swift_beginAccess();
            v104 = *(v22 + v103);
            if (*(v104 + 16))
            {

              v105 = sub_10000698C(v102, v86);
              v22 = v106;

              if (v22)
              {
                v107 = *(*(v104 + 56) + 8 * v105);

                v108 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
                v109 = String._bridgeToObjectiveC()();

                v110 = [v108 initWithIdentifier:v109 identity:v107 connected:1 guest:v213 & 1];

                v111 = swift_allocObject();
                v111[2] = v98;
                v111[3] = v53;
                v112 = v214;
                v111[4] = v214;
                v111[5] = v110;
                v221 = sub_10021DDE4;
                v222 = v111;
                aBlock = _NSConcreteStackBlock;
                v218 = 1107296256;
                v219 = sub_100003D98;
                v220 = &unk_1004C3120;
                v113 = _Block_copy(&aBlock);
                v114 = v98;
                sub_1001C3FE0(v53, v112);
                v115 = v110;
                v116 = v199;
                static DispatchQoS.unspecified.getter();
                v215 = _swiftEmptyArrayStorage;
                sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                sub_1001BC5A8(&unk_100522280, &unk_10044F590);
                sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
                v117 = v200;
                v118 = v204;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v113);

                (*(v203 + 8))(v117, v118);
                v201[1](v116, v202);
LABEL_52:

                return;
              }

              goto LABEL_84;
            }

LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            swift_once();
LABEL_59:
            v137 = type metadata accessor for Logger();
            sub_100015AFC(v137, qword_100529B78);
            v138 = v22;

            v128 = Logger.logObject.getter();
            v129 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v128, v129))
            {
LABEL_62:

              return;
            }

            v130 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            v214 = v86;
            v132 = v139;
            aBlock = swift_slowAlloc();
            *v130 = 138412802;
            *(v130 + 4) = v138;
            *v132 = v138;
            *(v130 + 12) = 2082;
            v140 = *(v138 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
            v141 = *(v138 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);
            v142 = v138;
            *(v130 + 14) = sub_10002C9C8(v140, v141, &aBlock);
            *(v130 + 22) = 2080;
            *(v130 + 24) = sub_10002C9C8(v85, v214, &aBlock);
            v136 = "[%@]<%{public}s> Received message from connection manager participant that does not match leader: %s.";
LABEL_61:
            _os_log_impl(&_mh_execute_header, v128, v129, v136, v130, 0x20u);
            sub_1000038A4(v132, &qword_100521870, &unk_10044EA70);

            swift_arrayDestroy();

            goto LABEL_62;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_83;
      }
    }

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v126 = type metadata accessor for Logger();
    sub_100015AFC(v126, qword_100529B78);
    v127 = v22;

    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v128, v129))
    {
      goto LABEL_62;
    }

    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v214 = v86;
    v132 = v131;
    aBlock = swift_slowAlloc();
    *v130 = 138412802;
    *(v130 + 4) = v127;
    *v132 = v127;
    *(v130 + 12) = 2082;
    v134 = *(v127 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
    v133 = *(v127 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);
    v135 = v127;
    *(v130 + 14) = sub_10002C9C8(v134, v133, &aBlock);
    *(v130 + 22) = 2080;
    *(v130 + 24) = sub_10002C9C8(v85, v214, &aBlock);
    v136 = "[%@]<%{public}s> Received message but no mapped participant for connection manager participant: %s.";
    goto LABEL_61;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  swift_once();
LABEL_29:
  v60 = type metadata accessor for Logger();
  sub_100015AFC(v60, qword_100529B78);
  v61 = v22;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    aBlock = v214;
    *v64 = 138412546;
    *(v64 + 4) = v61;
    *v65 = v61;
    *(v64 + 12) = 2082;
    v67 = *(v61 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
    v66 = *(v61 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);
    v68 = v61;
    *(v64 + 14) = sub_10002C9C8(v67, v66, &aBlock);
    _os_log_impl(&_mh_execute_header, v62, v63, "[%@]<%{public}s> Received transportMigrationReply push.", v64, 0x16u);
    sub_1000038A4(v65, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v214);
  }

  v69 = *(v61 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion);
  if (v69)
  {
    v70 = *(v61 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);
    if (v70)
    {
      v71 = *(v61 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8);
      if (v71)
      {
        v72 = *(v61 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion + 8);
        v73 = *(v61 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle);
        sub_10021DF20(*(v61 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion), v72);

        (*(*v70 + 392))(0, v73, v71);

        v69(0);
        sub_1001C7C2C(v69, v72);
        return;
      }

      goto LABEL_90;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v74 = v61;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    aBlock = v79;
    *v77 = 138412546;
    *(v77 + 4) = v74;
    *v78 = v74;
    *(v77 + 12) = 2082;
    v80 = *&v74[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v81 = *&v74[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v82 = v74;
    *(v77 + 14) = sub_10002C9C8(v80, v81, &aBlock);
    _os_log_impl(&_mh_execute_header, v75, v76, "[%@]<%{public}s> Received transportMigrationReply with no completion.", v77, 0x16u);
    sub_1000038A4(v78, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v79);
  }

  sub_10021DECC();
  v83 = swift_allocError();
  *v84 = 6;
  sub_100204BF8(v83);
}

void sub_10020FF08(uint64_t a1, NSObject *a2, unint64_t a3, NSObject *a4, int a5)
{
  LODWORD(v307) = a5;
  v317 = a4;
  v305 = type metadata accessor for DispatchPredicate();
  v297 = *(v305 - 8);
  __chkstk_darwin(v305);
  v304 = &v281 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Participants();
  v296 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v281 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  __chkstk_darwin(v15 - 8);
  v303 = &v281 - v16;
  v17 = type metadata accessor for Participant();
  v312 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v295 = &v281 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v300 = &v281 - v21;
  v22 = __chkstk_darwin(v20);
  v301 = &v281 - v23;
  v24 = __chkstk_darwin(v22);
  v313 = (&v281 - v25);
  v26 = __chkstk_darwin(v24);
  v308 = (&v281 - v27);
  __chkstk_darwin(v26);
  v29 = &v281 - v28;
  v30 = type metadata accessor for NearbyGroup.Member();
  v31 = *(v30 - 8);
  v314 = v30;
  v315 = v31;
  v32 = __chkstk_darwin(v30);
  v316 = (&v281 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v311 = (&v281 - v34);
  v35 = sub_1001BC5A8(&qword_1005222A0, &unk_10044F5A0);
  __chkstk_darwin(v35 - 8);
  v302 = &v281 - v36;
  v310 = v5;
  if (v307)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v320 = 0;
    v38 = [(objc_class *)isa compressedDataUsingAlgorithm:0 error:&v320];

    v39 = v320;
    v17 = a3;
    if (v38)
    {
      v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = 0;
    }

    else
    {
      v60 = v39;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v40 = 0;
      v43 = 0;
      v42 = 0xF000000000000000;
    }

    v322 = v40;
    v323 = v42;
    v61 = sub_10036C454();
    if (v42 >> 60 == 15)
    {
      goto LABEL_45;
    }

    v58 = *v61;
    v62 = v42 >> 62;
    if ((v42 >> 62) > 1)
    {
      if (v62 != 2)
      {
        v63 = 0;
        goto LABEL_33;
      }

      v65 = v40[2].isa;
      v64 = v40[3].isa;
      v66 = __OFSUB__(v64, v65);
      v63 = v64 - v65;
      if (!v66)
      {
LABEL_33:
        v67 = v17 >> 62;
        if ((v17 >> 62) > 1)
        {
          if (v67 == 2)
          {
            v69 = a2[2].isa;
            v68 = a2[3].isa;
            v66 = __OFSUB__(v68, v69);
            v70 = v68 - v69;
            if (v66)
            {
LABEL_181:
              __break(1u);
              goto LABEL_182;
            }

            if (v70 < v63)
            {
              goto LABEL_45;
            }
          }

          else if (v63 > 0)
          {
LABEL_45:
            v322 = a2;
            v323 = v17;
            sub_1001C3FE0(a2, v17);
            sub_100045968(v40, v42);
            v58 = *sub_10036C448();

            if (v17 >> 60 == 15)
            {
LABEL_195:
              __break(1u);
              goto LABEL_196;
            }

            v42 = v17;
            v40 = a2;
LABEL_47:
            v72 = v42 >> 62;
            if ((v42 >> 62) > 1)
            {
              if (v72 != 2)
              {
                v73 = 0;
                goto LABEL_57;
              }

              v75 = v40[2].isa;
              v74 = v40[3].isa;
              v66 = __OFSUB__(v74, v75);
              v73 = v74 - v75;
              if (!v66)
              {
LABEL_57:
                v76 = v17 >> 62;
                v307 = v58;
                v308 = v71;
                v306 = 0;
                if ((v17 >> 62) <= 1)
                {
                  if (!v76)
                  {
                    v77 = BYTE6(v17);
                    goto LABEL_67;
                  }

LABEL_64:
                  LODWORD(v77) = HIDWORD(a2) - a2;
                  if (!__OFSUB__(HIDWORD(a2), a2))
                  {
                    v77 = v77;
                    goto LABEL_67;
                  }

                  goto LABEL_175;
                }

                if (v76 == 2)
                {
                  v79 = a2[2].isa;
                  v78 = a2[3].isa;
                  v66 = __OFSUB__(v78, v79);
                  v77 = v78 - v79;
                  if (v66)
                  {
                    __break(1u);
                    goto LABEL_64;
                  }
                }

                else
                {
                  v77 = 0;
                }

LABEL_67:
                v8 = v73 / v77;

                dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

                v80 = NearbyGroup.members.getter();

                v44 = v80 + 56;
                v81 = 1 << *(v80 + 32);
                v82 = -1;
                if (v81 < 64)
                {
                  v82 = ~(-1 << v81);
                }

                v83 = v82 & *(v80 + 56);
                v84 = (v81 + 63) >> 6;
                v309 = v315 + 16;
                v312 = v315 + 32;
                v313 = (v315 + 8);

                v85 = 0;
                v6 = v314;
                if (!v83)
                {
LABEL_71:
                  while (1)
                  {
                    v86 = v85 + 1;
                    if (__OFADD__(v85, 1))
                    {
                      break;
                    }

                    if (v86 >= v84)
                    {

                      v92 = 1;
                      v44 = v310;
                      v93 = v302;
                      goto LABEL_85;
                    }

                    v83 = *(v44 + 8 * v86);
                    ++v85;
                    if (v83)
                    {
                      goto LABEL_74;
                    }
                  }

                  __break(1u);
LABEL_166:
                  __break(1u);
LABEL_167:
                  swift_once();
LABEL_91:
                  v97 = type metadata accessor for Logger();
                  sub_100015AFC(v97, qword_100529B78);
                  swift_retain_n();
                  v98 = v44;

                  v99 = Logger.logObject.getter();
                  v100 = static os_log_type_t.info.getter();

                  v101 = os_log_type_enabled(v99, v100);
                  v315 = v6;
                  if (v101)
                  {
                    v102 = swift_slowAlloc();
                    v103 = swift_slowAlloc();
                    v313 = swift_slowAlloc();
                    v320 = v313;
                    *v102 = 138413826;
                    *(v102 + 4) = v98;
                    *v103 = v98;
                    *(v102 + 12) = 2082;
                    v104 = *&v98[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
                    v105 = *&v98[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
                    v314 = v98;
                    v106 = v98;
                    *(v102 + 14) = sub_10002C9C8(v104, v105, &v320);
                    *(v102 + 22) = 2080;
                    swift_beginAccess();
                    v107 = v323;
                    if (v323 >> 60 == 15)
                    {
LABEL_196:

                      __break(1u);
                      return;
                    }

                    v108 = v322;
                    sub_1001E5270(v322, v323);
                    v109 = Data.description.getter();
                    v111 = v110;
                    sub_100045968(v108, v107);
                    v112 = sub_10002C9C8(v109, v111, &v320);

                    *(v102 + 24) = v112;
                    *(v102 + 32) = 2080;
                    v113 = v317;
                    *(v102 + 34) = sub_10002C9C8(*(v317 + 2), *(v317 + 3), &v320);
                    *(v102 + 42) = 2080;
                    a2 = v113;
                    *(v102 + 44) = sub_10002C9C8(v316, v315, &v320);
                    *(v102 + 52) = 2048;
                    v114 = (*(v113->isa + 27))();

                    *(v102 + 54) = v114;

                    *(v102 + 62) = 2048;
                    *(v102 + 64) = v8;
                    _os_log_impl(&_mh_execute_header, v99, v100, "[%@]<%{public}s> Send remoteControl push message: %s to: %s, dst: %s. Timestamp: %ld. Ratio: %f.", v102, 0x48u);
                    sub_1000038A4(v103, &qword_100521870, &unk_10044EA70);

                    swift_arrayDestroy();

                    v98 = v314;
                  }

                  else
                  {
                  }

                  v115 = *&v98[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
                  if (v115)
                  {
                    sub_1001BC5A8(&unk_1005222B0, &qword_10044EB98);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_10044F550;
                    v317 = v115;
                    v117 = sub_10036C46C();
                    v119 = *v117;
                    v118 = *(v117 + 1);
                    v320 = v119;
                    v321 = v118;
                    v314 = v118;
                    swift_bridgeObjectRetain_n();
                    AnyHashable.init<A>(_:)();
                    v120 = sub_10036C4B4();
                    v122 = *v120;
                    v121 = *(v120 + 1);
                    *(inited + 96) = &type metadata for String;
                    *(inited + 72) = v122;
                    *(inited + 80) = v121;

                    v123 = sub_10036C484();
                    v125 = *v123;
                    v124 = *(v123 + 1);
                    v320 = v125;
                    v321 = v124;
                    v313 = v124;
                    swift_bridgeObjectRetain_n();
                    AnyHashable.init<A>(_:)();
                    swift_beginAccess();
                    v126 = v323;
                    if (v323 >> 60 != 15)
                    {
                      v127 = v322;
                      *(inited + 168) = &type metadata for Data;
                      *(inited + 144) = v127;
                      *(inited + 152) = v126;
                      sub_1001C3FE0(v127, v126);
                      v128 = sub_10036C4A8();
                      v129 = v128[1];
                      v318 = *v128;
                      v319 = v129;
                      swift_bridgeObjectRetain_n();
                      AnyHashable.init<A>(_:)();
                      *(inited + 240) = &type metadata for String;
                      v130 = v308;
                      *(inited + 216) = v307;
                      *(inited + 224) = v130;

                      v131 = sub_10036C490();
                      v132 = *(v131 + 1);
                      v318 = *v131;
                      v319 = v132;
                      swift_bridgeObjectRetain_n();
                      v133 = AnyHashable.init<A>(_:)();
                      v134 = (*(a2->isa + 27))(v133);
                      *(inited + 312) = &type metadata for Int;
                      *(inited + 288) = v134;
                      v135 = sub_10036C49C();
                      v136 = v135[1];
                      v318 = *v135;
                      v319 = v136;
                      swift_bridgeObjectRetain_n();
                      AnyHashable.init<A>(_:)();
                      v138 = *&v98[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
                      v137 = *&v98[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
                      *(inited + 384) = &type metadata for String;
                      *(inited + 360) = v138;
                      *(inited + 368) = v137;

                      v139 = sub_10036C478();
                      v140 = *(v139 + 1);
                      v318 = *v139;
                      v319 = v140;
                      swift_bridgeObjectRetain_n();
                      AnyHashable.init<A>(_:)();
                      v142 = a2[2].isa;
                      v141 = a2[3].isa;
                      *(inited + 456) = &type metadata for String;
                      *(inited + 432) = v142;
                      *(inited + 440) = v141;

                      v143 = sub_10036C460();
                      v144 = *(v143 + 1);
                      v318 = *v143;
                      v319 = v144;
                      swift_bridgeObjectRetain_n();
                      AnyHashable.init<A>(_:)();
                      v145 = *&v98[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
                      if (v145)
                      {
                        v146 = *&v98[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];

                        *(inited + 528) = &type metadata for String;
                        *(inited + 504) = v146;
                        *(inited + 512) = v145;
                        sub_1001C2534(inited);
                        swift_setDeallocating();
                        sub_1001BC5A8(&qword_1005216C0, qword_10044EBA0);
                        swift_arrayDestroy();
                        v147 = Dictionary._bridgeToObjectiveC()().super.isa;

                        sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
                        v148 = swift_initStackObject();
                        *(v148 + 16) = xmmword_10044EC70;
                        v149 = v315;
                        *(v148 + 32) = v316;
                        v150 = v148 + 32;
                        *(v148 + 40) = v149;
                        sub_10021FAD4(v148);
                        swift_setDeallocating();
                        sub_1001E6204(v150);
                        v151 = Set._bridgeToObjectiveC()().super.isa;

                        v152 = v317;
                        [v317 sendMessage:v147 toDestinations:v151];

                        sub_100045968(v322, v323);
                        return;
                      }

                      goto LABEL_194;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  __break(1u);
LABEL_194:
                  __break(1u);
                  goto LABEL_195;
                }

                while (1)
                {
                  v86 = v85;
LABEL_74:
                  v87 = v315;
                  a2 = v311;
                  (*(v315 + 16))(v311, *(v80 + 48) + *(v315 + 72) * (__clz(__rbit64(v83)) | (v86 << 6)), v6);
                  v88 = *(v87 + 32);
                  v88(v316, a2, v6);
                  if (NearbyGroup.Member.handle.getter() == *(v317 + 2) && v89 == *(v317 + 3))
                  {

                    goto LABEL_84;
                  }

                  v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v91)
                  {
                    break;
                  }

                  v83 &= v83 - 1;
                  v6 = v314;
                  (*v313)(v316, v314);
                  v85 = v86;
                  if (!v83)
                  {
                    goto LABEL_71;
                  }
                }

                v6 = v314;
LABEL_84:
                v93 = v302;
                v88(v302, v316, v6);
                v92 = 0;
                v44 = v310;
LABEL_85:
                v94 = v315;
                (*(v315 + 56))(v93, v92, 1, v6);

                if ((*(v94 + 48))(v93, 1, v6) == 1)
                {
                  sub_1000038A4(v93, &qword_1005222A0, &unk_10044F5A0);
                }

                else
                {
                  v316 = NearbyGroup.Member.tokenDestination.getter();
                  v95 = v6;
                  v6 = v96;
                  (*v313)(v93, v95);
                  if (v6)
                  {
                    a2 = v317;
                    goto LABEL_90;
                  }
                }

                a2 = v317;
                v6 = *(v317 + 3);
                v316 = *(v317 + 2);

LABEL_90:
                if (qword_100529B70 == -1)
                {
                  goto LABEL_91;
                }

                goto LABEL_167;
              }

              __break(1u);
            }

            else if (!v72)
            {
              v73 = BYTE6(v42);
              goto LABEL_57;
            }

            LODWORD(v73) = HIDWORD(v40) - v40;
            if (__OFSUB__(HIDWORD(v40), v40))
            {
              __break(1u);
LABEL_175:
              __break(1u);
LABEL_176:
              __break(1u);
LABEL_177:
              __break(1u);
              goto LABEL_178;
            }

            v73 = v73;
            goto LABEL_57;
          }
        }

        else if (v67)
        {
          if (__OFSUB__(HIDWORD(a2), a2))
          {
LABEL_182:
            __break(1u);
LABEL_183:
            swift_once();
LABEL_113:
            v166 = type metadata accessor for Logger();
            sub_100015AFC(v166, qword_100529B78);
            v167 = v295;
            (*v315)(v295, v14, v17);
            v168 = v42;
            v169 = Logger.logObject.getter();
            v170 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v169, v170))
            {
              v171 = v167;
              v172 = swift_slowAlloc();
              v173 = swift_slowAlloc();
              v315 = v173;
              v317 = swift_slowAlloc();
              v320 = v317;
              *v172 = 138412802;
              *(v172 + 4) = v168;
              *v173 = v168;
              *(v172 + 12) = 2082;
              v174 = *&v168[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
              v175 = *&v168[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
              v176 = v168;
              *(v172 + 14) = sub_10002C9C8(v174, v175, &v320);
              *(v172 + 22) = 2080;
              sub_100004858(&qword_1005222C0, 255, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
              v177 = v171;
              v178 = dispatch thunk of CustomStringConvertible.description.getter();
              v180 = v179;
              v181 = *v316;
              (*v316)(v177, v17);
              v182 = sub_10002C9C8(v178, v180, &v320);

              *(v172 + 24) = v182;
              _os_log_impl(&_mh_execute_header, v169, v170, "[%@]<%{public}s> No messenger to send message to participant: %s.", v172, 0x20u);
              sub_1000038A4(v315, &qword_100521870, &unk_10044EA70);

              swift_arrayDestroy();

              v181(v306, v309);
            }

            else
            {

              v218 = *v316;
              (*v316)(v167, v17);
              v218(v14, v17);
            }

            return;
          }

          if (HIDWORD(a2) - a2 < v63)
          {
            goto LABEL_45;
          }
        }

        else if (BYTE6(v17) < v63)
        {
          goto LABEL_45;
        }

        goto LABEL_47;
      }

      __break(1u);
    }

    else if (!v62)
    {
      v63 = BYTE6(v42);
      goto LABEL_33;
    }

    LODWORD(v63) = HIDWORD(v40) - v40;
    if (__OFSUB__(HIDWORD(v40), v40))
    {
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    v63 = v63;
    goto LABEL_33;
  }

  if (!*(v5 + OBJC_IVAR___MRDFastSyncGroupSession_groupSession))
  {
    v59 = v303;
    (*(v312 + 56))(v303, 1, 1, v17);
    v42 = v310;
    goto LABEL_103;
  }

  v302 = v14;
  v294 = v12;
  v298 = a3;
  v299 = a2;
  v306 = v29;

  v44 = GroupSession.activeParticipants.getter();

  v45 = v44 + 56;
  v46 = 1 << *(v44 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v44 + 56);
  v49 = (v46 + 63) >> 6;
  v314 = (v312 + 32);
  v315 = v312 + 16;
  v316 = (v312 + 8);

  v50 = 0;
  v309 = v17;
  if (v48)
  {
    while (1)
    {
      v51 = v50;
LABEL_12:
      v6 = v44;
      v52 = v312;
      a2 = v308;
      (*(v312 + 16))(v308, *(v44 + 48) + *(v312 + 72) * (__clz(__rbit64(v48)) | (v51 << 6)), v17);
      v53 = *(v52 + 32);
      v53(v313, a2, v17);
      if (Participant.handle.getter() == *(v317 + 2) && v54 == *(v317 + 3))
      {

        goto LABEL_101;
      }

      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v56)
      {
        break;
      }

      v48 &= v48 - 1;
      v17 = v309;
      (*v316)(v313, v309);
      v50 = v51;
      v44 = v6;
      if (!v48)
      {
        goto LABEL_9;
      }
    }

    v17 = v309;
LABEL_101:
    v59 = v303;
    v53(v303, v313, v17);
    v57 = 0;
    v14 = v306;
    v7 = v298;
    v12 = v299;
    v42 = v310;
    v58 = v300;
  }

  else
  {
    while (1)
    {
LABEL_9:
      v51 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_166;
      }

      if (v51 >= v49)
      {
        break;
      }

      v48 = *(v45 + 8 * v51);
      ++v50;
      if (v48)
      {
        goto LABEL_12;
      }
    }

    v57 = 1;
    v14 = v306;
    v7 = v298;
    v12 = v299;
    v42 = v310;
    v58 = v300;
    v59 = v303;
  }

  v153 = v312;
  (*(v312 + 56))(v59, v57, 1, v17);

  if ((*(v153 + 48))(v59, 1, v17) != 1)
  {
    (*v314)(v14, v59, v17);
    v303 = *(v42 + OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger);
    if (!v303)
    {
      if (qword_100529B70 == -1)
      {
        goto LABEL_113;
      }

      goto LABEL_183;
    }

    v164 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v164 != 2)
      {
        goto LABEL_122;
      }

      v184 = *(v12 + 16);
      v183 = *(v12 + 24);
      v66 = __OFSUB__(v183, v184);
      v165 = v183 - v184;
      if (!v66)
      {
LABEL_117:
        if (v165 > 90000)
        {
          v317 = HIDWORD(v12);
          if (v164 != 2)
          {
            LODWORD(v187) = v317 - v12;
            if (__OFSUB__(v317, v12))
            {
              goto LABEL_191;
            }

            v187 = v187;
LABEL_131:
            v219 = ceilf(v187 / 90000.0);
            if ((LODWORD(v219) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              if (v219 > -9.2234e18)
              {
                if (v219 < 9.2234e18)
                {
                  v17 = v219;
                  v220 = qword_100529B70;

                  if (v220 == -1)
                  {
LABEL_135:
                    v221 = type metadata accessor for Logger();
                    v222 = sub_100015AFC(v221, qword_100529B78);
                    sub_1001C3FE0(v12, v7);
                    v14 = v42;
                    v293 = v222;
                    v223 = Logger.logObject.getter();
                    v224 = static os_log_type_t.info.getter();

                    sub_1001C4034(v12, v7);
                    v225 = os_log_type_enabled(v223, v224);
                    v43 = &unk_100522000;
                    v300 = v17;
                    v295 = v14;
                    if (v225)
                    {
                      v42 = swift_slowAlloc();
                      v226 = swift_slowAlloc();
                      v227 = v7 >> 62;
                      v320 = swift_slowAlloc();
                      *v42 = 138413058;
                      *(v42 + 4) = v295;
                      *v226 = v295;
                      *(v42 + 12) = 2082;
                      v228 = *&v295[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
                      v229 = *&v295[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
                      v230 = v295;
                      *(v42 + 14) = sub_10002C9C8(v228, v229, &v320);
                      *(v42 + 22) = 2080;
                      v231 = Data.description.getter();
                      v43 = v232;
                      v233 = sub_10002C9C8(v231, v232, &v320);

                      *(v42 + 24) = v233;
                      v7 = v298;
                      v12 = v299;
                      *(v42 + 32) = 2048;
                      *(v42 + 34) = v300;
                      _os_log_impl(&_mh_execute_header, v223, v224, "[%@]<%{public}s> Split remoteControl payload: %s into %ld chunks.", v42, 0x2Au);
                      sub_1000038A4(v226, &qword_100521870, &unk_10044EA70);

                      swift_arrayDestroy();
                      v164 = v227;
                      v14 = v295;
                      v17 = v300;
                    }

                    if ((v17 & 0x8000000000000000) == 0)
                    {
                      if (!v17)
                      {

                        (*v316)(v306, v309);
                        return;
                      }

                      v17 = 0;
                      v58 = 0;
                      v292 = *&v14[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
                      v284 = &v14[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
                      v235 = __OFSUB__(v317, v12);
                      v282 = v235;
                      v281 = v317 - v12;
                      v285 = BYTE6(v7);
                      v291 = enum case for DispatchPredicate.onQueue(_:);
                      v289 = (v297 + 8);
                      v290 = (v297 + 104);
                      ++v296;
                      *&v234 = 138413570;
                      v283 = v234;
                      v288 = v164;
                      while (v58 != 0x5D34EDEE9D61)
                      {
                        if (v164 > 1)
                        {
                          if (v164 == 2)
                          {
                            v238 = *(v12 + 16);
                            v237 = *(v12 + 24);
                            v66 = __OFSUB__(v237, v238);
                            v236 = v237 - v238;
                            if (v66)
                            {
                              goto LABEL_176;
                            }
                          }

                          else
                          {
                            v236 = 0;
                          }
                        }

                        else
                        {
                          v236 = v285;
                          if (v164)
                          {
                            v236 = v281;
                            if (v282)
                            {
                              goto LABEL_177;
                            }
                          }
                        }

                        v66 = __OFSUB__(v236, v17);
                        v239 = v236 - v17;
                        if (v66)
                        {
                          goto LABEL_169;
                        }

                        if (v239 >= 90000)
                        {
                          v239 = 90000;
                        }

                        if (__OFADD__(v17, v239))
                        {
                          goto LABEL_170;
                        }

                        if ((v17 + v239) < v17)
                        {
                          goto LABEL_171;
                        }

                        v240 = Data.subdata(in:)();
                        v242 = v241;
                        sub_1001C3FE0(v240, v241);
                        MRDFastSyncGroupSessionState.rawValue.getter();
                        LODWORD(v312) = v243;
                        v313 = v245;
                        v314 = v244;
                        v246 = v301;
                        (*v315)(v301, v306, v309);
                        v247 = v14;
                        sub_1001C3FE0(v240, v242);
                        v248 = v247;
                        v249 = Logger.logObject.getter();
                        v250 = v14;
                        v251 = static os_log_type_t.info.getter();

                        sub_1001C4034(v240, v242);
                        LODWORD(v297) = v251;
                        v311 = v249;
                        v252 = os_log_type_enabled(v249, v251);
                        v317 = v58 + 1;
                        v310 = v17;
                        v307 = v248;
                        v308 = v240;
                        if (v252)
                        {
                          v253 = swift_slowAlloc();
                          v254 = swift_slowAlloc();
                          v286 = v254;
                          v320 = swift_slowAlloc();
                          *v253 = v283;
                          *(v253 + 4) = v248;
                          *v254 = v250;
                          *(v253 + 12) = 2082;
                          v255 = v248;
                          v256 = *v284;
                          v257 = v284[1];
                          v258 = v255;
                          *(v253 + 14) = sub_10002C9C8(v256, v257, &v320);
                          *(v253 + 22) = 2080;
                          sub_1001C3FE0(v240, v242);
                          v259 = Data.description.getter();
                          v261 = v260;
                          sub_1001C4034(v240, v242);
                          v262 = sub_10002C9C8(v259, v261, &v320);

                          *(v253 + 24) = v262;
                          *(v253 + 32) = 2080;
                          sub_100004858(&qword_1005222C0, 255, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
                          v263 = v309;
                          v264 = dispatch thunk of CustomStringConvertible.description.getter();
                          v266 = v265;
                          v287 = *v316;
                          v287(v246, v263);
                          v267 = sub_10002C9C8(v264, v266, &v320);

                          *(v253 + 34) = v267;
                          *(v253 + 42) = 2048;
                          *(v253 + 44) = v317;
                          *(v253 + 52) = 2048;
                          *(v253 + 54) = v300;
                          v268 = v311;
                          _os_log_impl(&_mh_execute_header, v311, v297, "[%@]<%{public}s> Send remoteControl message: %s to: %s. Chunk %ld of %ld", v253, 0x3Eu);
                          sub_1000038A4(v286, &qword_100521870, &unk_10044EA70);

                          swift_arrayDestroy();
                        }

                        else
                        {

                          v287 = *v316;
                          v287(v246, v309);
                        }

                        v270 = v313;
                        v269 = v314;
                        sub_10036C864(v312);
                        v42 = v271;
                        v273 = v272;
                        v274 = v302;
                        static Participants.only(_:)();
                        v43 = v304;
                        v275 = v305;
                        v276 = v292;
                        *v304 = v292;
                        (*v290)(v43, v291, v275);
                        v277 = v276;
                        LOBYTE(v276) = _dispatchPreconditionTest(_:)();
                        (*v289)(v43, v275);
                        if ((v276 & 1) == 0)
                        {
                          goto LABEL_172;
                        }

                        v278 = swift_allocObject();
                        v279 = v307;
                        v278[2] = v307;
                        v278[3] = MRDFastSyncGroupSessionState.rawValue.getter;
                        v278[4] = 0;
                        v280 = v279;
                        GroupSessionMessenger.send(_:to:completion:)();

                        sub_1001C4034(v269, v270);
                        sub_1001C4034(v42, v273);
                        sub_1001C4034(v308, v242);
                        (*v296)(v274, v294);
                        v17 = v310 + 90000;
                        v12 = v299;
                        v58 = v317;
                        v7 = v298;
                        LODWORD(v164) = v288;
                        v14 = v295;
                        if (v300 == v317)
                        {

                          v287(v306, v309);
                          return;
                        }
                      }

                      __break(1u);
LABEL_169:
                      __break(1u);
LABEL_170:
                      __break(1u);
LABEL_171:
                      __break(1u);
LABEL_172:
                      __break(1u);
                      goto LABEL_173;
                    }

                    __break(1u);
LABEL_191:
                    __break(1u);
                  }

LABEL_189:
                  swift_once();
                  goto LABEL_135;
                }

LABEL_188:
                __break(1u);
                goto LABEL_189;
              }

LABEL_187:
              __break(1u);
              goto LABEL_188;
            }

LABEL_186:
            __break(1u);
            goto LABEL_187;
          }

          v186 = *(v12 + 16);
          v185 = *(v12 + 24);
          v66 = __OFSUB__(v185, v186);
          v187 = v185 - v186;
          if (!v66)
          {
            goto LABEL_131;
          }

          __break(1u);
        }

LABEL_122:
        sub_1001C3FE0(v12, v7);

        MRDFastSyncGroupSessionState.rawValue.getter();
        LODWORD(v314) = v188;
        v43 = v189;
        v317 = v190;
        if (qword_100529B70 == -1)
        {
LABEL_123:
          v191 = type metadata accessor for Logger();
          sub_100015AFC(v191, qword_100529B78);
          (*v315)(v58, v14, v17);
          sub_1001C3FE0(v12, v7);
          v192 = v42;
          v193 = Logger.logObject.getter();
          v194 = static os_log_type_t.info.getter();

          sub_1001C4034(v12, v7);
          if (os_log_type_enabled(v193, v194))
          {
            v195 = swift_slowAlloc();
            v196 = swift_slowAlloc();
            v311 = v196;
            v312 = swift_slowAlloc();
            v320 = v312;
            *v195 = 138413058;
            *(v195 + 4) = v192;
            v196->isa = v192;
            *(v195 + 12) = 2082;
            LODWORD(v310) = v194;
            v197 = v58;
            v198 = *&v192[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
            v199 = *&v192[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
            v200 = v192;
            *(v195 + 14) = sub_10002C9C8(v198, v199, &v320);
            *(v195 + 22) = 2080;
            v201 = Data.description.getter();
            v203 = sub_10002C9C8(v201, v202, &v320);

            *(v195 + 24) = v203;
            *(v195 + 32) = 2080;
            sub_100004858(&qword_1005222C0, 255, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
            v204 = dispatch thunk of CustomStringConvertible.description.getter();
            v206 = v205;
            v315 = *v316;
            (v315)(v197, v17);
            v207 = sub_10002C9C8(v204, v206, &v320);

            *(v195 + 34) = v207;
            _os_log_impl(&_mh_execute_header, v193, v310, "[%@]<%{public}s> Send remoteControl message: %s to: %s.", v195, 0x2Au);
            sub_1000038A4(v311, &qword_100521870, &unk_10044EA70);

            swift_arrayDestroy();
          }

          else
          {

            v315 = *v316;
            (v315)(v58, v17);
          }

          v313 = v43;
          sub_10036C864(v314);
          v42 = v208;
          v210 = v209;
          v211 = v302;
          v17 = v306;
          static Participants.only(_:)();
          v212 = *&v192[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
          v14 = v304;
          v213 = v305;
          *v304 = v212;
          v214 = v297;
          (*(v297 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v213);
          v215 = v212;
          LOBYTE(v212) = _dispatchPreconditionTest(_:)();
          (*(v214 + 8))(v14, v213);
          if (v212)
          {
            v216 = swift_allocObject();
            v216[2] = v192;
            v216[3] = MRDFastSyncGroupSessionState.rawValue.getter;
            v216[4] = 0;
            v217 = v192;
            GroupSessionMessenger.send(_:to:completion:)();

            sub_1001C4034(v313, v317);
            sub_1001C4034(v42, v210);
            v296[1](v211, v294);
            (v315)(v17, v309);
            return;
          }

          __break(1u);
          goto LABEL_180;
        }

LABEL_178:
        swift_once();
        goto LABEL_123;
      }
    }

    else
    {
      if (!v164)
      {
        goto LABEL_122;
      }

      LODWORD(v165) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
        v165 = v165;
        goto LABEL_117;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_186;
  }

LABEL_103:
  sub_1000038A4(v59, &qword_100529110, &qword_10044F5B0);
  if (qword_100529B70 != -1)
  {
LABEL_173:
    swift_once();
  }

  v154 = type metadata accessor for Logger();
  sub_100015AFC(v154, qword_100529B78);
  v155 = v317;

  v156 = v42;
  v157 = Logger.logObject.getter();
  v158 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v320 = swift_slowAlloc();
    *v159 = 138412802;
    *(v159 + 4) = v156;
    *v160 = v156;
    *(v159 + 12) = 2082;
    v161 = *&v156[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v162 = *&v156[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v163 = v156;
    *(v159 + 14) = sub_10002C9C8(v161, v162, &v320);
    *(v159 + 22) = 2080;
    *(v159 + 24) = sub_10002C9C8(v155[2], v155[3], &v320);
    _os_log_impl(&_mh_execute_header, v157, v158, "[%@]<%{public}s> No active participant to send message to connection manager participant: %s.", v159, 0x20u);
    sub_1000038A4(v160, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }
}