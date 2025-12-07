uint64_t sub_1002A0DA0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[54] = a1;

  v4 = swift_task_alloc();
  v2[55] = v4;
  *v4 = v3;
  v4[1] = sub_1002A0F2C;
  v5 = v2[41];
  v6 = v2[40];
  v7 = v2[39];
  v8 = v2[38];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_1002A0F2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v6 = v4[2];

    return _swift_task_switch(sub_1002A14E8, v6, 0);
  }

  else
  {

    v4[57] = a1;
    v7 = swift_task_alloc();
    v4[58] = v7;
    *v7 = v5;
    v7[1] = sub_1002A10B8;

    return sub_100006424();
  }
}

uint64_t sub_1002A10B8(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 472) = a1;

  return _swift_task_switch(sub_1002A11D0, v2, 0);
}

uint64_t sub_1002A11D0()
{

  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = sub_1002A1270;
  v2 = *(v0 + 472);

  return sub_100013670(v2);
}

uint64_t sub_1002A1270()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1002A139C, v1, 0);
}

uint64_t sub_1002A139C()
{
  (*(v0[30] + 8))(v0[34], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002A14E8()
{
  v1 = v0[34];
  v2 = v0[29];
  v3 = v0[30];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002A166C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_100297328;

    return sub_1002A1754();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1002A1754()
{
  v1[2] = v0;
  v2 = type metadata accessor for Fence.TriggerPosition();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for Fence.TriggerID();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Fence.ID();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_10004B564(&qword_1005B0B98, &qword_1004D27F0);
  v1[14] = swift_task_alloc();
  sub_10004B564(&qword_1005B0BB0, &qword_1004D2830);
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for DateInterval();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v6 = type metadata accessor for Fence.Schedule.Matcher();
  v1[19] = v6;
  v1[20] = *(v6 - 8);
  v1[21] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v1[22] = swift_task_alloc();
  v7 = type metadata accessor for Fence.Participant();
  v1[23] = v7;
  v1[24] = *(v7 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = type metadata accessor for Fence.AcceptanceStatus();
  v1[27] = v8;
  v1[28] = *(v8 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v9 = type metadata accessor for Fence.Variant();
  v1[31] = v9;
  v1[32] = *(v9 - 8);
  v1[33] = swift_task_alloc();
  v10 = type metadata accessor for Fence.Schedule();
  v1[34] = v10;
  v1[35] = *(v10 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v11 = type metadata accessor for Fence();
  v1[38] = v11;
  v1[39] = *(v11 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v1[44] = v12;
  v1[45] = *(v12 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();

  return _swift_task_switch(sub_1002A1CF0, v0, 0);
}

uint64_t sub_1002A1CF0()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 416) = sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Schedule Grace Timer fired", v4, 2u);
  }

  static Date.now.getter();
  v5 = swift_task_alloc();
  *(v0 + 424) = v5;
  *v5 = v0;
  v5[1] = sub_1002A1E4C;

  return daemon.getter();
}

uint64_t sub_1002A1E4C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[54] = a1;

  v3 = swift_task_alloc();
  v2[55] = v3;
  v4 = type metadata accessor for Daemon();
  v2[56] = v4;
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1002AB19C(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[57] = v6;
  v7 = sub_1002AB19C(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002A202C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002A202C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v6 = v4[2];

    return _swift_task_switch(sub_1002A2ED8, v6, 0);
  }

  else
  {

    v4[59] = a1;
    v7 = swift_task_alloc();
    v4[60] = v7;
    *v7 = v5;
    v7[1] = sub_1002A21B8;

    return sub_100006424();
  }
}

uint64_t sub_1002A21B8(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 488) = a1;

  return _swift_task_switch(sub_1002A22D0, v2, 0);
}

uint64_t sub_1002A22D0()
{
  v127 = v0;
  v1 = *(v0 + 488);

  v2 = *(v1 + 16);
  *(v0 + 496) = v2;
  if (!v2)
  {
LABEL_24:
    v101 = *(v0 + 408);
    v103 = *(v0 + 352);
    v102 = *(v0 + 360);

    (*(v102 + 8))(v101, v103);

    v104 = *(v0 + 8);

    return v104();
  }

  v3 = 0;
  *(v0 + 648) = *(*(v0 + 312) + 80);
  *(v0 + 652) = enum case for Fence.Variant.scheduled(_:);
  *(v0 + 656) = enum case for Fence.AcceptanceStatus.accepted(_:);
  *(v0 + 660) = enum case for Fence.Participant.me(_:);
  *(v0 + 664) = enum case for Fence.TriggerPosition.undetermined(_:);
  while (1)
  {
    *(v0 + 504) = v3;
    v4 = *(v0 + 488);
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v5 = *(v0 + 652);
    v6 = *(v0 + 344);
    v7 = *(v0 + 304);
    v8 = *(v0 + 312);
    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = *(v0 + 248);
    v13 = *(v8 + 16);
    v8 += 16;
    v12 = v13;
    v14 = v4 + ((*(v0 + 648) + 32) & ~*(v0 + 648)) + *(v8 + 56) * v3;
    *(v0 + 512) = v13;
    *(v0 + 520) = v8 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v6, v14, v7);
    Fence.variant.getter();
    if ((*(v10 + 88))(v9, v11) == v5)
    {
      break;
    }

    v35 = *(v0 + 344);
    v36 = *(v0 + 304);
    v37 = *(v0 + 312);
    v39 = *(v0 + 256);
    v38 = *(v0 + 264);
    v40 = *(v0 + 248);
LABEL_14:
    (*(v37 + 8))(v35, v36);
    (*(v39 + 8))(v38, v40);
LABEL_15:
    v3 = *(v0 + 504) + 1;
    if (v3 == *(v0 + 496))
    {
      goto LABEL_24;
    }
  }

  v120 = v12;
  v123 = *(v0 + 656);
  v15 = *(v0 + 296);
  v16 = *(v0 + 272);
  v17 = *(v0 + 280);
  v18 = *(v0 + 264);
  v19 = *(v0 + 240);
  v20 = *(v0 + 224);
  v21 = *(v0 + 232);
  v22 = *(v0 + 216);
  (*(*(v0 + 256) + 96))(v18, *(v0 + 248));
  (*(v17 + 32))(v15, v18, v16);
  Fence.acceptanceStatus.getter();
  (*(v20 + 104))(v21, v123, v22);
  v23 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v24 = *(v20 + 8);
  v24(v21, v22);
  v24(v19, v22);
  if ((v23 & 1) == 0 || (v25 = *(v0 + 660), v27 = *(v0 + 200), v26 = *(v0 + 208), v28 = *(v0 + 184), v29 = *(v0 + 192), Fence.finder.getter(), (*(v29 + 104))(v27, v25, v28), v30 = static Fence.Participant.== infix(_:_:)(), v31 = *(v29 + 8), v31(v27, v28), v31(v26, v28), (v30 & 1) == 0))
  {
LABEL_13:
    v38 = *(v0 + 344);
    v40 = *(v0 + 304);
    v39 = *(v0 + 312);
    v35 = *(v0 + 296);
    v36 = *(v0 + 272);
    v37 = *(v0 + 280);
    goto LABEL_14;
  }

  v32 = *(v0 + 352);
  v33 = *(v0 + 360);
  v34 = *(v0 + 176);
  Fence.muteEndDate.getter();
  if ((*(v33 + 48))(v34, 1, v32) != 1)
  {
    v41 = *(v0 + 400);
    v42 = *(v0 + 352);
    v43 = *(v0 + 360);
    (*(v43 + 32))(v41, *(v0 + 176), v42);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v44 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v43 + 8))(v41, v42);
    if (v44)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  sub_100002CE0(*(v0 + 176), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_11:
  v45 = *(v0 + 408);
  v47 = *(v0 + 384);
  v46 = *(v0 + 392);
  v114 = *(v0 + 376);
  v117 = *(v0 + 368);
  v49 = *(v0 + 352);
  v48 = *(v0 + 360);
  v51 = *(v0 + 160);
  v50 = *(v0 + 168);
  v52 = *(v0 + 152);
  v112 = *(*(v0 + 280) + 16);
  v112(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousEndDate(from:)();
  v110 = *(v51 + 8);
  v110(v50, v52);
  v53 = *(v48 + 16);
  *(v0 + 528) = v53;
  *(v0 + 536) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v53(v47, v46, v49);
  v53(v114, v45, v49);
  v53(v117, v46, v49);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  v56 = os_log_type_enabled(v54, v55);
  v58 = *(v0 + 376);
  v57 = *(v0 + 384);
  v59 = *(v0 + 360);
  v60 = *(v0 + 368);
  v61 = *(v0 + 352);
  if (v56)
  {
    v115 = *(v0 + 376);
    v62 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v126[0] = v124;
    *v62 = 136446466;
    v118 = v55;
    v63 = Date.localISO8601.getter();
    v65 = v64;
    v66 = *(v59 + 8);
    v66(v57, v61);
    v67 = sub_10000D01C(v63, v65, v126);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v69 = v68;
    v66(v60, v61);
    v66(v115, v61);
    *(v62 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v54, v118, "scheduleGraceTimerFired: endDate: %{public}s timeDelta: %{public}f", v62, 0x16u);
    sub_100004984(v124);
  }

  else
  {

    v66 = *(v59 + 8);
    v66(v60, v61);
    v66(v58, v61);
    v66(v57, v61);
  }

  *(v0 + 544) = v66;
  Date.timeIntervalSince(_:)();
  if (v70 > 300.0)
  {
    v71 = *(v0 + 344);
    v72 = *(v0 + 304);
    v73 = *(v0 + 312);
    v74 = *(v0 + 296);
    v75 = *(v0 + 272);
    v76 = *(v0 + 280);
    v66(*(v0 + 392), *(v0 + 352));
    (*(v76 + 8))(v74, v75);
    (*(v73 + 8))(v71, v72);
    goto LABEL_15;
  }

  v77 = *(v0 + 168);
  v78 = *(v0 + 152);
  v79 = *(v0 + 128);
  v80 = *(v0 + 136);
  v81 = *(v0 + 120);
  v112(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v110(v77, v78);
  if ((*(v80 + 48))(v81, 1, v79) == 1)
  {
    v82 = *(v0 + 344);
    v83 = *(v0 + 328);
    v84 = *(v0 + 304);
    sub_100002CE0(*(v0 + 120), &qword_1005B0BB0, &qword_1004D2830);
    v120(v83, v82, v84);
    v85 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    v86 = os_log_type_enabled(v85, v119);
    v122 = *(v0 + 352);
    v125 = *(v0 + 392);
    v87 = *(v0 + 344);
    v88 = *(v0 + 328);
    v90 = *(v0 + 304);
    v89 = *(v0 + 312);
    v91 = *(v0 + 296);
    v92 = *(v0 + 280);
    v121 = *(v0 + 272);
    if (v86)
    {
      v116 = *(v0 + 344);
      v93 = *(v0 + 96);
      v113 = *(v0 + 296);
      v94 = *(v0 + 80);
      v108 = *(v0 + 72);
      buf = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v126[0] = v111;
      *buf = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v85;
      v97 = v96;
      (*(v94 + 8))(v93, v108);
      v98 = *(v89 + 8);
      v98(v88, v90);
      v99 = sub_10000D01C(v95, v97, v126);

      *(buf + 4) = v99;
      _os_log_impl(&_mh_execute_header, log, v119, "No valid interval for endDate, fence id: %{public}s", buf, 0xCu);
      sub_100004984(v111);

      v66(v125, v122);
      (*(v92 + 8))(v113, v121);
      v98(v116, v90);
    }

    else
    {

      v100 = *(v89 + 8);
      v100(v88, v90);
      v66(v125, v122);
      (*(v92 + 8))(v91, v121);
      v100(v87, v90);
    }

    goto LABEL_15;
  }

  (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v106 = swift_task_alloc();
  *(v0 + 552) = v106;
  *v106 = v0;
  v106[1] = sub_1002A30BC;

  return daemon.getter();
}

uint64_t sub_1002A2ED8()
{
  v1 = v0[51];
  v2 = v0[44];
  v3 = v0[45];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002A30BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 560) = a1;

  v5 = swift_task_alloc();
  *(v3 + 568) = v5;
  v6 = type metadata accessor for LocalStorageService();
  v7 = sub_1002AB19C(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v5 = v4;
  v5[1] = sub_1002A3270;
  v8 = *(v2 + 456);
  v9 = *(v2 + 448);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1002A3270(uint64_t a1)
{
  v3 = *v2;
  v3[72] = a1;
  v3[73] = v1;

  if (v1)
  {
    v4 = v3[2];

    v5 = sub_1002A53D8;
  }

  else
  {
    v4 = v3[2];

    v5 = sub_1002A33CC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002A33CC(uint64_t a1)
{
  Fence.id.getter();
  v2 = swift_task_alloc();
  v1[74] = v2;
  *v2 = v1;
  v2[1] = sub_1002A3474;
  v3 = v1[18];
  v5 = v1[13];
  v4 = v1[14];

  return sub_100306C9C(v4, v5, v3);
}

uint64_t sub_1002A3474()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  v3 = v2[13];
  v4 = v2[9];
  v5 = v2[10];
  if (v0)
  {
    v6 = v2[2];
    (*(v5 + 8))(v3, v4);

    v7 = sub_1002A562C;
    v8 = v6;
  }

  else
  {
    v9 = v2[2];
    v10 = *(v5 + 8);
    v2[76] = v10;
    v2[77] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v3, v4);
    v7 = sub_1002A35E4;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1002A35E4()
{
  v168 = v0;
  v1 = *(v0 + 112);
  v2 = type metadata accessor for FenceTriggerRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0 + 512))(*(v0 + 336), *(v0 + 344), *(v0 + 304));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v155 = *(v0 + 608);
      v150 = *(v0 + 336);
      v5 = *(v0 + 312);
      v161 = *(v0 + 304);
      v6 = *(v0 + 96);
      v7 = *(v0 + 72);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v167[0] = v9;
      *v8 = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      v155(v6, v7);
      v13 = *(v5 + 8);
      v13(v150, v161);
      v14 = sub_10000D01C(v10, v12, v167);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "Schedule Grace Timer about to trigger fence: %{public}s", v8, 0xCu);
      sub_100004984(v9);
    }

    else
    {
      v28 = *(v0 + 336);
      v29 = *(v0 + 304);
      v30 = *(v0 + 312);

      v13 = *(v30 + 8);
      v13(v28, v29);
    }

    *(v0 + 624) = v13;
    v31 = *(v0 + 528);
    v163 = *(v0 + 664);
    v32 = *(v0 + 392);
    v33 = *(v0 + 352);
    v34 = *(v0 + 32);
    v35 = *(v0 + 40);
    v36 = *(v0 + 24);
    Fence.id.getter();
    Fence.TriggerID.init()();
    v31(v35, v32, v33);
    (*(v34 + 104))(v35, v163, v36);
    v37 = swift_task_alloc();
    *(v0 + 632) = v37;
    *v37 = v0;
    v37[1] = sub_1002A4518;
    v38 = *(v0 + 88);
    v39 = *(v0 + 64);
    v40 = *(v0 + 40);

    return sub_100274D00(v38, v39, v40);
  }

  v15 = *(v0 + 352);
  v162 = *(v0 + 344);
  v16 = *(v0 + 312);
  v156 = *(v0 + 544);
  v159 = *(v0 + 304);
  v146 = *(v0 + 392);
  v151 = *(v0 + 296);
  v18 = *(v0 + 272);
  v17 = *(v0 + 280);
  v19 = *(v0 + 136);
  v20 = *(v0 + 144);
  v21 = *(v0 + 128);

  (*(v19 + 8))(v20, v21);
  v156(v146, v15);
  (*(v17 + 8))(v151, v18);
  (*(v16 + 8))(v162, v159);
  sub_100002CE0(v1, &qword_1005B0B98, &qword_1004D27F0);
  v22 = *(v0 + 504) + 1;
  if (v22 == *(v0 + 496))
  {
LABEL_5:
    v23 = *(v0 + 408);
    v25 = *(v0 + 352);
    v24 = *(v0 + 360);

    (*(v24 + 8))(v23, v25);

    v26 = *(v0 + 8);

    return v26();
  }

  while (1)
  {
    *(v0 + 504) = v22;
    v41 = *(v0 + 488);
    if (v22 >= *(v41 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v42 = *(v0 + 652);
    v43 = *(v0 + 344);
    v44 = *(v0 + 304);
    v45 = *(v0 + 312);
    v47 = *(v0 + 256);
    v46 = *(v0 + 264);
    v48 = *(v0 + 248);
    v50 = *(v45 + 16);
    v45 += 16;
    v49 = v50;
    v51 = v41 + ((*(v0 + 648) + 32) & ~*(v0 + 648)) + *(v45 + 56) * v22;
    *(v0 + 512) = v50;
    *(v0 + 520) = v45 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v50(v43, v51, v44);
    Fence.variant.getter();
    if ((*(v47 + 88))(v46, v48) == v42)
    {
      break;
    }

    v72 = *(v0 + 344);
    v73 = *(v0 + 304);
    v74 = *(v0 + 312);
    v76 = *(v0 + 256);
    v75 = *(v0 + 264);
    v77 = *(v0 + 248);
LABEL_23:
    (*(v74 + 8))(v72, v73);
    (*(v76 + 8))(v75, v77);
LABEL_24:
    v22 = *(v0 + 504) + 1;
    if (v22 == *(v0 + 496))
    {
      goto LABEL_5;
    }
  }

  v157 = v49;
  v164 = *(v0 + 656);
  v52 = *(v0 + 296);
  v53 = *(v0 + 272);
  v54 = *(v0 + 280);
  v55 = *(v0 + 264);
  v56 = *(v0 + 240);
  v57 = *(v0 + 224);
  v58 = *(v0 + 232);
  v59 = *(v0 + 216);
  (*(*(v0 + 256) + 96))(v55, *(v0 + 248));
  (*(v54 + 32))(v52, v55, v53);
  Fence.acceptanceStatus.getter();
  (*(v57 + 104))(v58, v164, v59);
  v60 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v61 = *(v57 + 8);
  v61(v58, v59);
  v61(v56, v59);
  if ((v60 & 1) == 0 || (v62 = *(v0 + 660), v64 = *(v0 + 200), v63 = *(v0 + 208), v65 = *(v0 + 184), v66 = *(v0 + 192), Fence.finder.getter(), (*(v66 + 104))(v64, v62, v65), v67 = static Fence.Participant.== infix(_:_:)(), v68 = *(v66 + 8), v68(v64, v65), v68(v63, v65), (v67 & 1) == 0))
  {
LABEL_22:
    v75 = *(v0 + 344);
    v77 = *(v0 + 304);
    v76 = *(v0 + 312);
    v72 = *(v0 + 296);
    v73 = *(v0 + 272);
    v74 = *(v0 + 280);
    goto LABEL_23;
  }

  v69 = *(v0 + 352);
  v70 = *(v0 + 360);
  v71 = *(v0 + 176);
  Fence.muteEndDate.getter();
  if ((*(v70 + 48))(v71, 1, v69) != 1)
  {
    v78 = *(v0 + 400);
    v79 = *(v0 + 352);
    v80 = *(v0 + 360);
    (*(v80 + 32))(v78, *(v0 + 176), v79);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v81 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v80 + 8))(v78, v79);
    if (v81)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  sub_100002CE0(*(v0 + 176), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_20:
  v82 = *(v0 + 408);
  v84 = *(v0 + 384);
  v83 = *(v0 + 392);
  v147 = *(v0 + 376);
  v152 = *(v0 + 368);
  v86 = *(v0 + 352);
  v85 = *(v0 + 360);
  v88 = *(v0 + 160);
  v87 = *(v0 + 168);
  v89 = *(v0 + 152);
  v144 = *(*(v0 + 280) + 16);
  v144(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousEndDate(from:)();
  v142 = *(v88 + 8);
  v142(v87, v89);
  v90 = *(v85 + 16);
  *(v0 + 528) = v90;
  *(v0 + 536) = (v85 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v90(v84, v83, v86);
  v90(v147, v82, v86);
  v90(v152, v83, v86);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();
  v93 = os_log_type_enabled(v91, v92);
  v95 = *(v0 + 376);
  v94 = *(v0 + 384);
  v96 = *(v0 + 360);
  v97 = *(v0 + 368);
  v98 = *(v0 + 352);
  if (v93)
  {
    v148 = *(v0 + 376);
    v99 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v167[0] = v165;
    *v99 = 136446466;
    v153 = v92;
    v100 = Date.localISO8601.getter();
    v102 = v101;
    v103 = *(v96 + 8);
    v103(v94, v98);
    v104 = sub_10000D01C(v100, v102, v167);

    *(v99 + 4) = v104;
    *(v99 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v106 = v105;
    v103(v97, v98);
    v103(v148, v98);
    *(v99 + 14) = v106;
    _os_log_impl(&_mh_execute_header, v91, v153, "scheduleGraceTimerFired: endDate: %{public}s timeDelta: %{public}f", v99, 0x16u);
    sub_100004984(v165);
  }

  else
  {

    v103 = *(v96 + 8);
    v103(v97, v98);
    v103(v95, v98);
    v103(v94, v98);
  }

  *(v0 + 544) = v103;
  Date.timeIntervalSince(_:)();
  if (v107 > 300.0)
  {
    v108 = *(v0 + 344);
    v109 = *(v0 + 304);
    v110 = *(v0 + 312);
    v111 = *(v0 + 296);
    v112 = *(v0 + 272);
    v113 = *(v0 + 280);
    v103(*(v0 + 392), *(v0 + 352));
    (*(v113 + 8))(v111, v112);
    (*(v110 + 8))(v108, v109);
    goto LABEL_24;
  }

  v114 = *(v0 + 168);
  v115 = *(v0 + 152);
  v116 = *(v0 + 128);
  v117 = *(v0 + 136);
  v118 = *(v0 + 120);
  v144(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v142(v114, v115);
  if ((*(v117 + 48))(v118, 1, v116) == 1)
  {
    v119 = *(v0 + 344);
    v120 = *(v0 + 328);
    v121 = *(v0 + 304);
    sub_100002CE0(*(v0 + 120), &qword_1005B0BB0, &qword_1004D2830);
    v157(v120, v119, v121);
    v122 = Logger.logObject.getter();
    v154 = static os_log_type_t.error.getter();
    v123 = os_log_type_enabled(v122, v154);
    v160 = *(v0 + 352);
    v166 = *(v0 + 392);
    v124 = *(v0 + 344);
    v125 = *(v0 + 328);
    v127 = *(v0 + 304);
    v126 = *(v0 + 312);
    v128 = *(v0 + 296);
    v129 = *(v0 + 280);
    v158 = *(v0 + 272);
    if (v123)
    {
      v149 = *(v0 + 344);
      v130 = *(v0 + 96);
      v145 = *(v0 + 296);
      v131 = *(v0 + 80);
      v140 = *(v0 + 72);
      buf = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v167[0] = v143;
      *buf = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v122;
      v134 = v133;
      (*(v131 + 8))(v130, v140);
      v135 = *(v126 + 8);
      v135(v125, v127);
      v136 = sub_10000D01C(v132, v134, v167);

      *(buf + 4) = v136;
      _os_log_impl(&_mh_execute_header, log, v154, "No valid interval for endDate, fence id: %{public}s", buf, 0xCu);
      sub_100004984(v143);

      v103(v166, v160);
      (*(v129 + 8))(v145, v158);
      v135(v149, v127);
    }

    else
    {

      v137 = *(v126 + 8);
      v137(v125, v127);
      v103(v166, v160);
      (*(v129 + 8))(v128, v158);
      v137(v124, v127);
    }

    goto LABEL_24;
  }

  (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v138 = swift_task_alloc();
  *(v0 + 552) = v138;
  *v138 = v0;
  v138[1] = sub_1002A30BC;

  return daemon.getter();
}

uint64_t sub_1002A4518()
{
  v2 = *v1;
  v14 = *(*v1 + 608);
  v13 = *(*v1 + 88);
  v12 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  *(*v1 + 640) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v14(v13, v12);
  v9 = *(v2 + 16);
  if (v0)
  {
    v10 = sub_1002A5898;
  }

  else
  {
    v10 = sub_1002A4774;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1002A4774()
{
  v137 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v130 = *(v0 + 344);
  v132 = *(v0 + 624);
  v123 = *(v0 + 544);
  v127 = *(v0 + 304);
  v119 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);

  (*(v5 + 8))(v6, v7);
  v123(v1, v2);
  (*(v4 + 8))(v119, v3);
  v132(v130, v127);
  sub_100002CE0(*(v0 + 112), &qword_1005B0B98, &qword_1004D27F0);
  v8 = *(v0 + 504) + 1;
  if (v8 == *(v0 + 496))
  {
LABEL_2:
    v9 = *(v0 + 408);
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);

    (*(v10 + 8))(v9, v11);

    v12 = *(v0 + 8);

    return v12();
  }

  while (1)
  {
    *(v0 + 504) = v8;
    v14 = *(v0 + 488);
    if (v8 >= *(v14 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v15 = *(v0 + 652);
    v16 = *(v0 + 344);
    v17 = *(v0 + 304);
    v18 = *(v0 + 312);
    v20 = *(v0 + 256);
    v19 = *(v0 + 264);
    v21 = *(v0 + 248);
    v23 = *(v18 + 16);
    v18 += 16;
    v22 = v23;
    v24 = v14 + ((*(v0 + 648) + 32) & ~*(v0 + 648)) + *(v18 + 56) * v8;
    *(v0 + 512) = v23;
    *(v0 + 520) = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v16, v24, v17);
    Fence.variant.getter();
    if ((*(v20 + 88))(v19, v21) == v15)
    {
      break;
    }

    v45 = *(v0 + 344);
    v46 = *(v0 + 304);
    v47 = *(v0 + 312);
    v49 = *(v0 + 256);
    v48 = *(v0 + 264);
    v50 = *(v0 + 248);
LABEL_16:
    (*(v47 + 8))(v45, v46);
    (*(v49 + 8))(v48, v50);
LABEL_17:
    v8 = *(v0 + 504) + 1;
    if (v8 == *(v0 + 496))
    {
      goto LABEL_2;
    }
  }

  v128 = v22;
  v133 = *(v0 + 656);
  v25 = *(v0 + 296);
  v26 = *(v0 + 272);
  v27 = *(v0 + 280);
  v28 = *(v0 + 264);
  v29 = *(v0 + 240);
  v30 = *(v0 + 224);
  v31 = *(v0 + 232);
  v32 = *(v0 + 216);
  (*(*(v0 + 256) + 96))(v28, *(v0 + 248));
  (*(v27 + 32))(v25, v28, v26);
  Fence.acceptanceStatus.getter();
  (*(v30 + 104))(v31, v133, v32);
  v33 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v34 = *(v30 + 8);
  v34(v31, v32);
  v34(v29, v32);
  if ((v33 & 1) == 0 || (v35 = *(v0 + 660), v37 = *(v0 + 200), v36 = *(v0 + 208), v38 = *(v0 + 184), v39 = *(v0 + 192), Fence.finder.getter(), (*(v39 + 104))(v37, v35, v38), v40 = static Fence.Participant.== infix(_:_:)(), v41 = *(v39 + 8), v41(v37, v38), v41(v36, v38), (v40 & 1) == 0))
  {
LABEL_15:
    v48 = *(v0 + 344);
    v50 = *(v0 + 304);
    v49 = *(v0 + 312);
    v45 = *(v0 + 296);
    v46 = *(v0 + 272);
    v47 = *(v0 + 280);
    goto LABEL_16;
  }

  v42 = *(v0 + 352);
  v43 = *(v0 + 360);
  v44 = *(v0 + 176);
  Fence.muteEndDate.getter();
  if ((*(v43 + 48))(v44, 1, v42) != 1)
  {
    v51 = *(v0 + 400);
    v52 = *(v0 + 352);
    v53 = *(v0 + 360);
    (*(v53 + 32))(v51, *(v0 + 176), v52);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v54 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v53 + 8))(v51, v52);
    if (v54)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  sub_100002CE0(*(v0 + 176), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_13:
  v55 = *(v0 + 408);
  v57 = *(v0 + 384);
  v56 = *(v0 + 392);
  v120 = *(v0 + 376);
  v124 = *(v0 + 368);
  v59 = *(v0 + 352);
  v58 = *(v0 + 360);
  v61 = *(v0 + 160);
  v60 = *(v0 + 168);
  v62 = *(v0 + 152);
  v117 = *(*(v0 + 280) + 16);
  v117(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousEndDate(from:)();
  v115 = *(v61 + 8);
  v115(v60, v62);
  v63 = *(v58 + 16);
  *(v0 + 528) = v63;
  *(v0 + 536) = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v63(v57, v56, v59);
  v63(v120, v55, v59);
  v63(v124, v56, v59);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  v66 = os_log_type_enabled(v64, v65);
  v68 = *(v0 + 376);
  v67 = *(v0 + 384);
  v69 = *(v0 + 360);
  v70 = *(v0 + 368);
  v71 = *(v0 + 352);
  if (v66)
  {
    v121 = *(v0 + 376);
    v72 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v136[0] = v134;
    *v72 = 136446466;
    v125 = v65;
    v73 = Date.localISO8601.getter();
    v75 = v74;
    v76 = *(v69 + 8);
    v76(v67, v71);
    v77 = sub_10000D01C(v73, v75, v136);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v79 = v78;
    v76(v70, v71);
    v76(v121, v71);
    *(v72 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v64, v125, "scheduleGraceTimerFired: endDate: %{public}s timeDelta: %{public}f", v72, 0x16u);
    sub_100004984(v134);
  }

  else
  {

    v76 = *(v69 + 8);
    v76(v70, v71);
    v76(v68, v71);
    v76(v67, v71);
  }

  *(v0 + 544) = v76;
  Date.timeIntervalSince(_:)();
  if (v80 > 300.0)
  {
    v81 = *(v0 + 344);
    v82 = *(v0 + 304);
    v83 = *(v0 + 312);
    v84 = *(v0 + 296);
    v85 = *(v0 + 272);
    v86 = *(v0 + 280);
    v76(*(v0 + 392), *(v0 + 352));
    (*(v86 + 8))(v84, v85);
    (*(v83 + 8))(v81, v82);
    goto LABEL_17;
  }

  v87 = *(v0 + 168);
  v88 = *(v0 + 152);
  v89 = *(v0 + 128);
  v90 = *(v0 + 136);
  v91 = *(v0 + 120);
  v117(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v115(v87, v88);
  if ((*(v90 + 48))(v91, 1, v89) == 1)
  {
    v92 = *(v0 + 344);
    v93 = *(v0 + 328);
    v94 = *(v0 + 304);
    sub_100002CE0(*(v0 + 120), &qword_1005B0BB0, &qword_1004D2830);
    v128(v93, v92, v94);
    v95 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();
    v96 = os_log_type_enabled(v95, v126);
    v131 = *(v0 + 352);
    v135 = *(v0 + 392);
    v97 = *(v0 + 344);
    v98 = *(v0 + 328);
    v100 = *(v0 + 304);
    v99 = *(v0 + 312);
    v101 = *(v0 + 296);
    v102 = *(v0 + 280);
    v129 = *(v0 + 272);
    if (v96)
    {
      v122 = *(v0 + 344);
      v103 = *(v0 + 96);
      v118 = *(v0 + 296);
      v104 = *(v0 + 80);
      v113 = *(v0 + 72);
      buf = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v136[0] = v116;
      *buf = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v95;
      v107 = v106;
      (*(v104 + 8))(v103, v113);
      v108 = *(v99 + 8);
      v108(v98, v100);
      v109 = sub_10000D01C(v105, v107, v136);

      *(buf + 4) = v109;
      _os_log_impl(&_mh_execute_header, log, v126, "No valid interval for endDate, fence id: %{public}s", buf, 0xCu);
      sub_100004984(v116);

      v76(v135, v131);
      (*(v102 + 8))(v118, v129);
      v108(v122, v100);
    }

    else
    {

      v110 = *(v99 + 8);
      v110(v98, v100);
      v76(v135, v131);
      (*(v102 + 8))(v101, v129);
      v110(v97, v100);
    }

    goto LABEL_17;
  }

  (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v111 = swift_task_alloc();
  *(v0 + 552) = v111;
  *v111 = v0;
  v111[1] = sub_1002A30BC;

  return daemon.getter();
}

uint64_t sub_1002A53D8()
{
  v1 = v0[68];
  v2 = v0[49];
  v3 = v0[44];
  v11 = v0[43];
  v12 = v0[51];
  v4 = v0[38];
  v5 = v0[39];
  v6 = v0[37];
  v8 = v0[34];
  v7 = v0[35];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1(v2, v3);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v11, v4);
  v1(v12, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002A562C()
{
  v1 = v0[68];
  v15 = v0[51];
  v11 = v0[49];
  v2 = v0[44];
  v3 = v0[39];
  v13 = v0[38];
  v14 = v0[43];
  v12 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];

  (*(v6 + 8))(v7, v8);
  v1(v11, v2);
  (*(v4 + 8))(v12, v5);
  (*(v3 + 8))(v14, v13);
  v1(v15, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002A5898()
{
  v165 = v0;
  (*(v0 + 512))(*(v0 + 320), *(v0 + 344), *(v0 + 304));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v160 = v1;
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 624);
  if (v3)
  {
    v127 = *(v0 + 608);
    v145 = *(v0 + 392);
    v150 = *(v0 + 544);
    v140 = *(v0 + 352);
    v155 = *(v0 + 344);
    v5 = *(v0 + 320);
    v125 = *(v0 + 304);
    v142 = *(v0 + 296);
    v134 = *(v0 + 280);
    v137 = *(v0 + 272);
    log = *(v0 + 136);
    buf = *(v0 + 128);
    v133 = *(v0 + 144);
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v164[0] = v126;
    *v8 = 136446466;
    Fence.id.getter();
    sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v127(v6, v7);
    v4(v5, v125);
    v13 = sub_10000D01C(v10, v12, v164);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v160, v2, "Failed to trigger fence %{public}s, error: %{public}@", v8, 0x16u);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v126);

    (log[1].isa)(v133, buf);
    v150(v145, v140);
    (*(v134 + 8))(v142, v137);
    v4(v155, v125);
  }

  else
  {
    v146 = *(v0 + 392);
    v151 = *(v0 + 544);
    v141 = *(v0 + 352);
    v156 = *(v0 + 344);
    v15 = *(v0 + 320);
    v16 = *(v0 + 304);
    v143 = *(v0 + 296);
    v17 = *(v0 + 280);
    v138 = *(v0 + 272);
    v18 = *(v0 + 136);
    v19 = *(v0 + 144);
    v20 = *(v0 + 128);

    v4(v15, v16);
    (*(v18 + 8))(v19, v20);
    v151(v146, v141);
    (*(v17 + 8))(v143, v138);
    v4(v156, v16);
  }

  sub_100002CE0(*(v0 + 112), &qword_1005B0B98, &qword_1004D27F0);
  v21 = *(v0 + 504) + 1;
  if (v21 == *(v0 + 496))
  {
LABEL_5:
    v22 = *(v0 + 408);
    v24 = *(v0 + 352);
    v23 = *(v0 + 360);

    (*(v23 + 8))(v22, v24);

    v25 = *(v0 + 8);

    return v25();
  }

  while (1)
  {
    *(v0 + 504) = v21;
    v27 = *(v0 + 488);
    if (v21 >= *(v27 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v28 = *(v0 + 652);
    v29 = *(v0 + 344);
    v30 = *(v0 + 304);
    v31 = *(v0 + 312);
    v33 = *(v0 + 256);
    v32 = *(v0 + 264);
    v34 = *(v0 + 248);
    v36 = *(v31 + 16);
    v31 += 16;
    v35 = v36;
    v37 = v27 + ((*(v0 + 648) + 32) & ~*(v0 + 648)) + *(v31 + 56) * v21;
    *(v0 + 512) = v36;
    *(v0 + 520) = v31 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v36(v29, v37, v30);
    Fence.variant.getter();
    if ((*(v33 + 88))(v32, v34) == v28)
    {
      break;
    }

    v58 = *(v0 + 344);
    v59 = *(v0 + 304);
    v60 = *(v0 + 312);
    v62 = *(v0 + 256);
    v61 = *(v0 + 264);
    v63 = *(v0 + 248);
LABEL_19:
    (*(v60 + 8))(v58, v59);
    (*(v62 + 8))(v61, v63);
LABEL_20:
    v21 = *(v0 + 504) + 1;
    if (v21 == *(v0 + 496))
    {
      goto LABEL_5;
    }
  }

  v157 = v35;
  v161 = *(v0 + 656);
  v38 = *(v0 + 296);
  v39 = *(v0 + 272);
  v40 = *(v0 + 280);
  v41 = *(v0 + 264);
  v42 = *(v0 + 240);
  v43 = *(v0 + 224);
  v44 = *(v0 + 232);
  v45 = *(v0 + 216);
  (*(*(v0 + 256) + 96))(v41, *(v0 + 248));
  (*(v40 + 32))(v38, v41, v39);
  Fence.acceptanceStatus.getter();
  (*(v43 + 104))(v44, v161, v45);
  v46 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v47 = *(v43 + 8);
  v47(v44, v45);
  v47(v42, v45);
  if ((v46 & 1) == 0 || (v48 = *(v0 + 660), v50 = *(v0 + 200), v49 = *(v0 + 208), v51 = *(v0 + 184), v52 = *(v0 + 192), Fence.finder.getter(), (*(v52 + 104))(v50, v48, v51), v53 = static Fence.Participant.== infix(_:_:)(), v54 = *(v52 + 8), v54(v50, v51), v54(v49, v51), (v53 & 1) == 0))
  {
LABEL_18:
    v61 = *(v0 + 344);
    v63 = *(v0 + 304);
    v62 = *(v0 + 312);
    v58 = *(v0 + 296);
    v59 = *(v0 + 272);
    v60 = *(v0 + 280);
    goto LABEL_19;
  }

  v55 = *(v0 + 352);
  v56 = *(v0 + 360);
  v57 = *(v0 + 176);
  Fence.muteEndDate.getter();
  if ((*(v56 + 48))(v57, 1, v55) != 1)
  {
    v64 = *(v0 + 400);
    v65 = *(v0 + 352);
    v66 = *(v0 + 360);
    (*(v66 + 32))(v64, *(v0 + 176), v65);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v67 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v66 + 8))(v64, v65);
    if (v67)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  sub_100002CE0(*(v0 + 176), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_16:
  v68 = *(v0 + 408);
  v70 = *(v0 + 384);
  v69 = *(v0 + 392);
  v147 = *(v0 + 376);
  v152 = *(v0 + 368);
  v72 = *(v0 + 352);
  v71 = *(v0 + 360);
  v74 = *(v0 + 160);
  v73 = *(v0 + 168);
  v75 = *(v0 + 152);
  v139 = *(*(v0 + 280) + 16);
  v139(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousEndDate(from:)();
  v135 = *(v74 + 8);
  v135(v73, v75);
  v76 = *(v71 + 16);
  *(v0 + 528) = v76;
  *(v0 + 536) = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v76(v70, v69, v72);
  v76(v147, v68, v72);
  v76(v152, v69, v72);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  v79 = os_log_type_enabled(v77, v78);
  v81 = *(v0 + 376);
  v80 = *(v0 + 384);
  v82 = *(v0 + 360);
  v83 = *(v0 + 368);
  v84 = *(v0 + 352);
  if (v79)
  {
    v148 = *(v0 + 376);
    v85 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v164[0] = v162;
    *v85 = 136446466;
    v153 = v78;
    v86 = Date.localISO8601.getter();
    v88 = v87;
    v89 = *(v82 + 8);
    v89(v80, v84);
    v90 = sub_10000D01C(v86, v88, v164);

    *(v85 + 4) = v90;
    *(v85 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v92 = v91;
    v89(v83, v84);
    v89(v148, v84);
    *(v85 + 14) = v92;
    _os_log_impl(&_mh_execute_header, v77, v153, "scheduleGraceTimerFired: endDate: %{public}s timeDelta: %{public}f", v85, 0x16u);
    sub_100004984(v162);
  }

  else
  {

    v89 = *(v82 + 8);
    v89(v83, v84);
    v89(v81, v84);
    v89(v80, v84);
  }

  *(v0 + 544) = v89;
  Date.timeIntervalSince(_:)();
  if (v93 > 300.0)
  {
    v94 = *(v0 + 344);
    v95 = *(v0 + 304);
    v96 = *(v0 + 312);
    v97 = *(v0 + 296);
    v98 = *(v0 + 272);
    v99 = *(v0 + 280);
    v89(*(v0 + 392), *(v0 + 352));
    (*(v99 + 8))(v97, v98);
    (*(v96 + 8))(v94, v95);
    goto LABEL_20;
  }

  v100 = *(v0 + 168);
  v101 = *(v0 + 152);
  v102 = *(v0 + 128);
  v103 = *(v0 + 136);
  v104 = *(v0 + 120);
  v139(*(v0 + 288), *(v0 + 296), *(v0 + 272));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v135(v100, v101);
  if ((*(v103 + 48))(v104, 1, v102) == 1)
  {
    v105 = *(v0 + 344);
    v106 = *(v0 + 328);
    v107 = *(v0 + 304);
    sub_100002CE0(*(v0 + 120), &qword_1005B0BB0, &qword_1004D2830);
    v157(v106, v105, v107);
    v108 = Logger.logObject.getter();
    v154 = static os_log_type_t.error.getter();
    v109 = os_log_type_enabled(v108, v154);
    v159 = *(v0 + 352);
    v163 = *(v0 + 392);
    v110 = *(v0 + 344);
    v111 = *(v0 + 328);
    v113 = *(v0 + 304);
    v112 = *(v0 + 312);
    v114 = *(v0 + 296);
    v115 = *(v0 + 280);
    v158 = *(v0 + 272);
    if (v109)
    {
      v149 = *(v0 + 344);
      v116 = *(v0 + 96);
      v144 = *(v0 + 296);
      v117 = *(v0 + 80);
      v130 = *(v0 + 72);
      bufa = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v164[0] = v136;
      *bufa = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v118 = dispatch thunk of CustomStringConvertible.description.getter();
      loga = v108;
      v120 = v119;
      (*(v117 + 8))(v116, v130);
      v121 = *(v112 + 8);
      v121(v111, v113);
      v122 = sub_10000D01C(v118, v120, v164);

      *(bufa + 4) = v122;
      _os_log_impl(&_mh_execute_header, loga, v154, "No valid interval for endDate, fence id: %{public}s", bufa, 0xCu);
      sub_100004984(v136);

      v89(v163, v159);
      (*(v115 + 8))(v144, v158);
      v121(v149, v113);
    }

    else
    {

      v123 = *(v112 + 8);
      v123(v111, v113);
      v89(v163, v159);
      (*(v115 + 8))(v114, v158);
      v123(v110, v113);
    }

    goto LABEL_20;
  }

  (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v124 = swift_task_alloc();
  *(v0 + 552) = v124;
  *v124 = v0;
  v124[1] = sub_1002A30BC;

  return daemon.getter();
}

uint64_t sub_1002A67EC(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000368C;

  return v4();
}

uint64_t sub_1002A68D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 160) = a4;
  v8 = sub_10004B564(&unk_1005AB4F0, &unk_1004C5460);
  *(v6 + 48) = v8;
  *(v6 + 56) = *(v8 - 8);
  *(v6 + 64) = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005AB4E8, &qword_1004C5458);
  *(v6 + 72) = v9;
  *(v6 + 80) = *(v9 - 8);
  v10 = swift_task_alloc();
  *(v6 + 88) = v10;
  v11 = a4;
  if (a4)
  {
    if (a4 == 1)
    {
      v12 = 0xD00000000000002FLL;
    }

    else
    {
      v12 = 0xD00000000000002ELL;
    }

    if (v11 == 1)
    {
      v13 = "enceScheduleTimer";
    }

    else
    {
      v13 = ".findmylocated.FenceInviteTimer";
    }
  }

  else
  {
    v12 = 0xD000000000000031;
    v13 = "com.apple.mobileme.fmf3";
  }

  *(v6 + 96) = v13;
  v16 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:));
  v14 = swift_task_alloc();
  *(v6 + 104) = v14;
  *v14 = v6;
  v14[1] = sub_1002A6AC0;

  return v16(v10, v12, v13 | 0x8000000000000000);
}

uint64_t sub_1002A6AC0()
{

  return _swift_task_switch(sub_1002A6BD8, 0, 0);
}

uint64_t sub_1002A6BD8()
{
  v16 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 112) = sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 160);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = "enceScheduleTimer";
    if (v4 == 1)
    {
      v8 = 0xD00000000000002FLL;
    }

    else
    {
      v8 = 0xD00000000000002ELL;
    }

    if (v4 != 1)
    {
      v7 = ".findmylocated.FenceInviteTimer";
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xD000000000000031;
    }

    if (v4)
    {
      v10 = v7;
    }

    else
    {
      v10 = "com.apple.mobileme.fmf3";
    }

    v11 = sub_10000D01C(v9, v10 | 0x8000000000000000, &v15);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "XPC event stream created for %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  AsyncStream.makeAsyncIterator()();
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_1002A6DF8;
  v13 = *(v0 + 48);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v13);
}

uint64_t sub_1002A6DF8()
{

  return _swift_task_switch(sub_1002A6EF4, 0, 0);
}

uint64_t sub_1002A6EF4()
{
  v32 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 128) = v2;
  *(v0 + 136) = v1;
  if (!v1)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    goto LABEL_5;
  }

  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

LABEL_5:
    v3 = static Task<>.isCancelled.getter();
    if (v3)
    {
      v4 = 0x656C6C65636E6163;
    }

    else
    {
      v4 = 0x63206D6165727473;
    }

    if (v3)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xED00006465736F6CLL;
    }

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 160);
      v9 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v9 = 136446466;
      v10 = "enceScheduleTimer";
      if (v8 == 1)
      {
        v11 = 0xD00000000000002FLL;
      }

      else
      {
        v11 = 0xD00000000000002ELL;
      }

      if (v8 != 1)
      {
        v10 = ".findmylocated.FenceInviteTimer";
      }

      if (v8)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0xD000000000000031;
      }

      if (v8)
      {
        v13 = v10;
      }

      else
      {
        v13 = "com.apple.mobileme.fmf3";
      }

      v14 = *(v0 + 80);
      v28 = *(v0 + 72);
      v29 = *(v0 + 88);
      v15 = sub_10000D01C(v12, v13 | 0x8000000000000000, &v31);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2082;
      v16 = sub_10000D01C(v4, v5, &v31);

      *(v9 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "XPC alarm event handler ended for %{public}s: %{public}s", v9, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v29, v28);
    }

    else
    {
      v18 = *(v0 + 80);
      v17 = *(v0 + 88);
      v19 = *(v0 + 72);

      (*(v18 + 8))(v17, v19);
    }

    v20 = *(v0 + 8);

    return v20();
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_10000D01C(v2, v1, &v31);
    _os_log_impl(&_mh_execute_header, v22, v23, "XPC alarm fired for %{public}s", v24, 0xCu);
    sub_100004984(v25);
  }

  v26 = *(v0 + 32);
  static XPCAlarm.unregister(identifier:)();

  v30 = (v26 + *v26);
  v27 = swift_task_alloc();
  *(v0 + 144) = v27;
  *v27 = v0;
  v27[1] = sub_1002A73B4;

  return v30();
}

uint64_t sub_1002A73B4()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A7540, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[15] = v3;
    *v3 = v2;
    v3[1] = sub_1002A6DF8;
    v4 = v2[6];

    return AsyncStream.Iterator.next(isolation:)(v2 + 2, 0, 0, v4);
  }
}

uint64_t sub_1002A7540()
{
  v15 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[17];
  if (v3)
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v6 = 136446466;
    v9 = sub_10000D01C(v5, v4, &v14);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "XPC alarm event handler for %{public}s failed with %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_1002A6DF8;
  v12 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v12);
}

uint64_t sub_1002A7778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock.Instant();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_10004B564(&qword_1005AACD0, &unk_1004C4750);
  v4[17] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005AACE0, &qword_1004C4760);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005AACD8, &qword_1004D8900);
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[24] = v9;
  *v9 = v4;
  v9[1] = sub_1002A79C8;

  return daemon.getter();
}

uint64_t sub_1002A79C8(uint64_t a1)
{
  *(*v1 + 200) = a1;

  type metadata accessor for Daemon();
  sub_1002AB19C(&qword_1005AB4E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A7B20, v3, v2);
}

uint64_t sub_1002A7B20()
{
  *(v0 + 208) = Daemon.darwinNotificationHandler.getter();

  type metadata accessor for DarwinNotificationHandler();
  sub_1002AB19C(&qword_1005AACE8, &type metadata accessor for DarwinNotificationHandler, &protocol conformance descriptor for DarwinNotificationHandler);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A7BF8, v2, v1);
}

uint64_t sub_1002A7BF8()
{
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1002A7C84, 0, 0);
}

uint64_t sub_1002A7C84()
{
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_1002A7D4C;
  v2 = v0[17];
  v3 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_1002A7D4C()
{

  return _swift_task_switch(sub_1002A7E48, 0, 0);
}

uint64_t sub_1002A7E48()
{
  v1 = v0[17];
  v2 = type metadata accessor for DarwinNotification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[22];
    v3 = v0[23];
    v5 = v0[21];
    (*(v0[19] + 8))(v0[20], v0[18]);
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = v0[15];
      v11 = v0[16];
      v12 = v0[13];
      v13 = v0[11];
      v14 = v0[12];
      v30 = v0[10];
      static ContinuousClock.now.getter();
      ContinuousClock.Instant.advanced(by:)();
      v31 = *(v12 + 8);
      v31(v10, v14);
      v15 = type metadata accessor for TaskPriority();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v13, 1, 1, v15);
      (*(v12 + 16))(v10, v11, v14);
      v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
      v18 = swift_allocObject();
      *(v18 + 2) = 0;
      *(v18 + 3) = 0;
      *(v18 + 4) = v9;
      (*(v12 + 32))(&v18[v17], v10, v14);
      sub_100005F04(v13, v30, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v9) = (*(v16 + 48))(v30, 1, v15);

      v19 = v0[10];
      if (v9 == 1)
      {
        sub_100002CE0(v0[10], &qword_1005A9690, &qword_1004C2A00);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v16 + 8))(v19, v15);
      }

      v20 = *(v18 + 2);
      swift_unknownObjectRetain();

      if (v20)
      {
        swift_getObjectType();
        v21 = dispatch thunk of Actor.unownedExecutor.getter();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      sub_100002CE0(v0[11], &qword_1005A9690, &qword_1004C2A00);
      v24 = swift_allocObject();
      *(v24 + 16) = &unk_1004D2930;
      *(v24 + 24) = v18;
      if (v23 | v21)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v21;
        v0[5] = v23;
      }

      v25 = v0[16];
      v26 = v0[12];
      swift_task_create();

      v31(v25, v26);
    }

    sub_100002CE0(v0[17], &qword_1005AACD0, &unk_1004C4750);
    v27 = swift_task_alloc();
    v0[27] = v27;
    *v27 = v0;
    v27[1] = sub_1002A7D4C;
    v28 = v0[17];
    v29 = v0[18];

    return AsyncStream.Iterator.next(isolation:)(v28, 0, 0, v29);
  }
}

uint64_t sub_1002A8300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ContinuousClock.Instant();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    static ContinuousClock.now.getter();
    ContinuousClock.Instant.advanced(by:)();
    v23 = *(v9 + 8);
    v23(v12, v8);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    (*(v9 + 16))(v12, v14, v8);
    v18 = *(v9 + 80);
    v22 = a4;
    v19 = (v18 + 40) & ~v18;
    v20 = swift_allocObject();
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 4) = v16;
    (*(v9 + 32))(&v20[v19], v12, v8);

    sub_1001D7F30(0, 0, v7, v22, v20);

    return (v23)(v14, v8);
  }

  return result;
}

uint64_t sub_1002A858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100003690;

  return sub_1002A8628(a5);
}

uint64_t sub_1002A8628(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for ContinuousClock.Instant();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002A8750, v1, 0);
}

uint64_t sub_1002A8750()
{
  v1 = v0[3];
  v16 = OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask;
  v17 = v1;
  if (*(v1 + OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask))
  {

    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    Task.cancel()();

    v1 = v0[3];
  }

  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v15 = v0[4];
  v7 = v0[2];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  (*(v5 + 16))(v3, v7, v6);
  v9 = sub_1002AB19C(&qword_1005AF4A8, type metadata accessor for FenceService, &unk_1004D2208);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = v9;
  (*(v5 + 32))(v12 + v10, v3, v6);
  *(v12 + v11) = v1;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
  swift_retain_n();
  *(v17 + v16) = sub_10020D620(0, 0, v2, &unk_1004D2920, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002A8998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = type metadata accessor for ContinuousClock();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002A8A5C, a5, 0);
}

uint64_t sub_1002A8A5C()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = sub_1002AB19C(&qword_1005B0BC8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v1 = v0;
  v1[1] = sub_1002A8B54;
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v5, v0 + 16, v3, v4, v2);
}

uint64_t sub_1002A8B54()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_1002A94D8;
  }

  else
  {
    v7 = sub_1002A8CD0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1002A8CD0()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Significant time change", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1002A8E1C;

  return daemon.getter();
}

uint64_t sub_1002A8E1C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1002AB19C(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1002AB19C(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002A8FF8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002A8FF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v6 = v4[6];

    return _swift_task_switch(sub_1002A946C, v6, 0);
  }

  else
  {

    v4[16] = a1;
    v7 = swift_task_alloc();
    v4[17] = v7;
    *v7 = v5;
    v7[1] = sub_1002A9184;

    return sub_100006424();
  }
}

uint64_t sub_1002A9184(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_1002A929C, v2, 0);
}

uint64_t sub_1002A929C()
{

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_1002A933C;
  v2 = *(v0 + 144);

  return sub_1000121BC(v2);
}

uint64_t sub_1002A933C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002A946C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A94D8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1002A953C()
{
  [v0 coordinate];
  v22 = v1;
  v3 = v2;
  [v0 altitude];
  v5 = v4;
  [v0 horizontalAccuracy];
  v7 = v6;
  [v0 verticalAccuracy];
  v9 = v8;
  [v0 course];
  v11 = v10;
  [v0 courseAccuracy];
  v13 = v12;
  [v0 speed];
  v15 = v14;
  [v0 speedAccuracy];
  v17 = v16;
  v18 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v20 = [v18 initWithCoordinate:isa altitude:v22 horizontalAccuracy:v3 verticalAccuracy:v5 course:v7 courseAccuracy:v9 speed:v11 speedAccuracy:v13 timestamp:{v15, v17}];

  return v20;
}

uint64_t sub_1002A9688()
{
  v1[2] = v0;
  type metadata accessor for XPCAlarm.Criteria.Options();
  v1[3] = swift_task_alloc();
  type metadata accessor for XPCAlarm.Criteria();
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for XPCAlarm();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002A9808, v0, 0);
}

uint64_t sub_1002A9808(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[8];
  v5 = v1[9];
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v6 = *(v5 + 8);
  v1[12] = v6;
  v1[13] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);
  (*(v5 + 16))(v3, v2, v4);
  static XPCAlarm.Criteria.Options.userVisible.getter();
  XPCAlarm.Criteria.init(date:options:)();
  v7 = swift_task_alloc();
  v1[14] = v7;
  *v7 = v1;
  v7[1] = sub_1002A9958;
  v8 = v1[7];
  v9 = v1[4];

  return XPCAlarm.init(identifier:criteria:)(v8, 0xD00000000000002ELL, 0x80000001004DE4B0, v9);
}

uint64_t sub_1002A9958()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 16);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1002A9AC4, v4, 0);
}

uint64_t sub_1002A9AC4()
{
  (*(v0 + 96))(*(v0 + 88), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A9B6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for Fence();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = *(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8);
  v3[9] = v5;
  v3[10] = *(v5 + 64);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for Fence.TriggerPosition();
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v3[15] = *(v7 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v8 = type metadata accessor for Fence.ID();
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v3[20] = *(v9 + 64);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = sub_10004B564(&qword_1005B09C8, &qword_1004D2378);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_1002A9DEC, v2, 0);
}

uint64_t sub_1002A9DEC(uint64_t a1)
{
  v2 = v1[21];
  v21 = v1[22];
  v28 = v1[20];
  v30 = v1[19];
  v3 = v1[17];
  v22 = v1[18];
  v23 = v1[16];
  v27 = v1[15];
  v5 = v1[13];
  v4 = v1[14];
  v6 = v1[12];
  v26 = v1[10];
  v24 = v1[11];
  v25 = v1[9];
  v29 = v1[5];
  v7 = v1[3];
  Fence.id.getter();
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(v3, v7, v8);
  (*(v4 + 104))(v3, enum case for Fence.TriggerPosition.undetermined(_:), v5);
  v9 = enum case for Fence.AcceptanceStatus.pendingHidden(_:);
  v10 = type metadata accessor for Fence.AcceptanceStatus();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v6, v9, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  v20 = swift_allocObject();
  swift_weakInit();
  (*(v30 + 16))(v2, v21, v22);
  (*(v4 + 16))(v23, v3, v5);
  sub_100005F04(v6, v24, &qword_1005A9148, &qword_1004D2370);
  v12 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v13 = (v28 + *(v4 + 80) + v12) & ~*(v4 + 80);
  v14 = (v27 + *(v25 + 80) + v13) & ~*(v25 + 80);
  v15 = swift_allocObject();
  v1[25] = v15;
  *(v15 + 16) = v20;
  (*(v30 + 32))(v15 + v12, v2, v22);
  (*(v4 + 32))(v15 + v13, v23, v5);
  sub_1002AA798(v24, v15 + v14);
  *(v15 + ((v26 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  v31 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));
  v16 = swift_task_alloc();
  v1[26] = v16;
  *v16 = v1;
  v16[1] = sub_1002AA164;
  v18 = v1[23];
  v17 = v1[24];

  return v31(v17, &unk_1004D2878, v15, v18);
}

uint64_t sub_1002AA164()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = v2[4];
    v4 = sub_1002AA3EC;
  }

  else
  {
    v5 = v2[24];
    v6 = v2[22];
    v7 = v2[18];
    v8 = v2[19];
    v9 = v2[17];
    v10 = v2[13];
    v11 = v2[14];
    v12 = v2[12];
    v13 = v2[4];
    sub_100002CE0(v12, &qword_1005A9148, &qword_1004D2370);
    (*(v11 + 8))(v9, v10);
    (*(v8 + 8))(v6, v7);
    sub_100002CE0(v5, &qword_1005B09C8, &qword_1004D2378);
    v4 = sub_1002AA32C;
    v3 = v13;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002AA32C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AA3EC()
{
  v36 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[14];
  sub_100002CE0(v0[12], &qword_1005A9148, &qword_1004D2370);
  (*(v6 + 8))(v4, v5);
  v7 = *(v3 + 8);
  v7(v1, v2);
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  v11 = v0[2];
  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFF88);
  (*(v9 + 16))(v8, v11, v10);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[21];
    v16 = v0[18];
    v32 = v14;
    v17 = v0[7];
    v18 = v0[8];
    v31 = v0[6];
    v19 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v19 = 136446466;
    Fence.id.getter();
    sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v7;
    v23 = v22;
    v21(v15, v16);
    (*(v17 + 8))(v18, v31);
    v24 = sub_10000D01C(v20, v23, &v35);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v33 = v25;
    _os_log_impl(&_mh_execute_header, v13, v32, "Failed to make fence %{public}s pending: %{public}@", v19, 0x16u);
    sub_100002CE0(v33, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v34);
  }

  else
  {
    v27 = v0[7];
    v26 = v0[8];
    v28 = v0[6];

    (*(v27 + 8))(v26, v28);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_1002AA798(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9148, &qword_1004D2370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AA808(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002968B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002AA8D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003690;

  return sub_1002A7778(a1, v4, v5, v6);
}

uint64_t sub_1002AA9F4(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002A858C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002AAAEC(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002A8998(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1002AAC24()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002AACF0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_100296B94(a1, a2, v6, v7, v8);
}

uint64_t sub_1002AADB4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000368C;

  return sub_100297220(v0);
}

uint64_t sub_1002AAE44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10029EECC(a1, v4);
}

uint64_t sub_1002AAEFC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000368C;

  return sub_10029EFB4(v0);
}

uint64_t sub_1002AAF8C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000368C;

  return sub_1002A164C(v0);
}

uint64_t sub_1002AB01C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002A67EC(v2);
}

uint64_t sub_1002AB0C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_1002A68D4(v2, v3, v4, v7, v5, v6);
}

uint64_t sub_1002AB19C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002AB1E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FenceTriggerRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AB248(uint64_t a1)
{
  v2 = type metadata accessor for FenceTriggerRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002AB2B8()
{
  result = qword_1005B0C08;
  if (!qword_1005B0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0C08);
  }

  return result;
}

unint64_t sub_1002AB350(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058BBF0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002AB3A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002BCFC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002AB3D4(uint64_t a1)
{
  v2 = sub_1002BCF04();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1002AB410(uint64_t a1)
{
  v2 = sub_1002BCF04();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1002AB44C()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFFE8);
  sub_10000A6F0(v0, qword_1005DFFE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002AB4F0(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for FriendshipServiceClient();
  *(v1 + 24) = swift_allocObject();

  return _swift_task_switch(sub_1000033F8, 0, 0);
}

Swift::Int sub_1002AB568(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for FriendshipServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002AB5C4(uint64_t a1)
{
  type metadata accessor for FriendshipServiceClient();
  sub_1002BCCE0(&qword_1005B0EC0, v1, type metadata accessor for FriendshipServiceClient, &unk_1004D2D40);
  return XPCAcceptedClient.hash(into:)();
}

Swift::Int sub_1002AB63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  type metadata accessor for FriendshipServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002AB694(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for FriendshipServiceClient();
  v6 = sub_1002BCCE0(&qword_1005B0EC0, v5, type metadata accessor for FriendshipServiceClient, &unk_1004D2D40);

  return static XPCAcceptedClient.== infix(_:_:)(v2, v3, v4, v6);
}

uint64_t sub_1002AB71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_1002AB740, 0, 0);
}

uint64_t sub_1002AB740()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1002AB858;

  return withTimeout<A>(_:block:)(v6, 0x8AC7230489E80000, 0, &unk_1004D2DF0, v4, &type metadata for () + 1);
}

uint64_t sub_1002AB858()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1002AB974;
  }

  else
  {

    v2 = sub_1000161B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002AB974()
{
  v12 = v0;
  v1 = v0[8];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A80F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFFE8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E69A0, &v11);
    *(v5 + 12) = 2114;
    v8 = _convertErrorToNSError(_:)();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Uncaught error in %{public}s: %{public}@", v5, 0x16u);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v7);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002ABB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  return _swift_task_switch(sub_1002ABBB0, 0, 0);
}

uint64_t sub_1002ABBB0()
{
  v4 = &async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:);

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1002ABC84;
  v2 = *(v0 + 80);

  return (v4)(v0 + 64, sub_1002BB8A4, v2);
}

uint64_t sub_1002ABC84()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1002ABF04;
  }

  else
  {

    v2 = sub_1002ABDA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002ABDA0()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = NINearbyObject.dataRepresentation.getter();
  if (!v1)
  {
    v6 = v0[10];
    v7 = v3;
    v8 = v4;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_1002BB8C0;
    v0[7] = v6;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000A8DE8;
    v0[5] = &unk_1005981A0;
    v10 = _Block_copy(v0 + 2);

    [v2 didDiscoverWithNearbyObject:isa completion:v10];
    _Block_release(v10);

    sub_1000049D0(v7, v8);
  }

  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1002ABF04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002ABF68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;

  v14 = a3;
  sub_1001D7F30(0, 0, v11, a5, v13);
}

uint64_t sub_1002AC088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_1002AC0AC, 0, 0);
}

uint64_t sub_1002AC0AC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1002AC1C4;

  return withTimeout<A>(_:block:)(v6, 0x8AC7230489E80000, 0, &unk_1004D2DC8, v4, &type metadata for () + 1);
}

uint64_t sub_1002AC1C4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1002AC2E0;
  }

  else
  {

    v2 = sub_1000161B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002AC2E0()
{
  v12 = v0;
  v1 = v0[8];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A80F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFFE8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E6980, &v11);
    *(v5 + 12) = 2114;
    v8 = _convertErrorToNSError(_:)();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Uncaught error in %{public}s: %{public}@", v5, 0x16u);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v7);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002AC4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  return _swift_task_switch(sub_1002AC51C, 0, 0);
}

uint64_t sub_1002AC51C()
{
  v4 = (&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:));

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1002AC5F0;
  v2 = *(v0 + 80);

  return v4(v0 + 64, sub_1002BCFF0, v2);
}

uint64_t sub_1002AC5F0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1002BD000;
  }

  else
  {

    v2 = sub_1002AC70C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002AC70C()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = NINearbyObject.dataRepresentation.getter();
  if (!v1)
  {
    v6 = v0[10];
    v7 = v3;
    v8 = v4;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_1002BCFF4;
    v0[7] = v6;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000A8DE8;
    v0[5] = &unk_100598128;
    v10 = _Block_copy(v0 + 2);

    [v2 didUpdateWithNearbyObject:isa completion:v10];
    _Block_release(v10);

    sub_1000049D0(v7, v8);
  }

  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1002AC870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a1;
  v10[6] = a3;

  sub_1001D7F30(0, 0, v8, &unk_1004D2E00, v10);
}

uint64_t sub_1002AC9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_1002AC9C4, 0, 0);
}

uint64_t sub_1002AC9C4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1002ACAE0;

  return withTimeout<A>(_:block:)(v5, 0x8AC7230489E80000, 0, &unk_1004D2E10, v4, &type metadata for () + 1);
}

uint64_t sub_1002ACAE0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1002ACBFC;
  }

  else
  {

    v2 = sub_1000161B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002ACBFC()
{
  v12 = v0;
  v1 = v0[8];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B10);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E69C0, &v11);
    *(v5 + 12) = 2114;
    v8 = _convertErrorToNSError(_:)();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Uncaught error in %{public}s: %{public}@", v5, 0x16u);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v7);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002ACE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return _swift_task_switch(sub_1002ACE38, 0, 0);
}

uint64_t sub_1002ACE38()
{
  v4 = (&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:));

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1002ACF0C;
  v2 = *(v0 + 88);

  return v4(v0 + 64, sub_1002BCFF0, v2);
}

uint64_t sub_1002ACF0C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1002AD1F8;
  }

  else
  {

    v2 = sub_1002AD028;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002AD028()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[9] = v2;
  sub_10004B564(&qword_1005B0060, &qword_1004D15E8);
  sub_1002BBA60();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v7 = v0[11];
    v8 = v4;
    v9 = v5;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_1002BCFF4;
    v0[7] = v7;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000A8DE8;
    v0[5] = &unk_100598218;
    v11 = _Block_copy(v0 + 2);

    [v3 updateFriends:isa completion:v11];
    _Block_release(v11);

    sub_1000049D0(v8, v9);
  }

  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1002AD1F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AD25C(void *a1)
{
  if (qword_1005A80F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFFE8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = _convertErrorToNSError(_:)();
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10000D01C(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "FrienshipServiceClient proxy error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v14 = a1;
  return OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_1002AD408(uint64_t a1)
{
  if (!a1)
  {
    return OnceCheckedContinuation.resume<>()();
  }

  swift_errorRetain();
  OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_1002AD458(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002AD478, v1, 0);
}

uint64_t sub_1002AD478()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1002AD560;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v2, 0xD000000000000011, 0x80000001004E69C0, sub_1002BB8DC, v1, &type metadata for () + 1);
}

uint64_t sub_1002AD560()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1002BCFFC;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1002BCFE4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002AD684(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002AD6A4, v1, 0);
}

uint64_t sub_1002AD6A4()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1002AD78C;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v2, 0xD00000000000001ALL, 0x80000001004E69A0, sub_1002BB658, v1, &type metadata for () + 1);
}

uint64_t sub_1002AD78C()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1000889D0;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1002BCFE4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002AD8B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002AD8D0, v1, 0);
}

uint64_t sub_1002AD8D0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1002AD560;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v2, 0xD000000000000018, 0x80000001004E6980, sub_1002B7BFC, v1, &type metadata for () + 1);
}

uint64_t sub_1002AD9B8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0000);
  v1 = sub_10000A6F0(v0, qword_1005E0000);
  if (qword_1005A80F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFFE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002ADA80()
{
  v1[2] = v0;
  type metadata accessor for UUID();
  v1[3] = swift_task_alloc();
  sub_10004B564(&qword_1005B0370, &unk_1004D2410);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1002ADB48, 0, 0);
}

uint64_t sub_1002ADB48()
{
  v1 = v0[4];
  v2 = v0[2];
  swift_defaultActor_initialize();
  *(v2 + 112) = 0xD000000000000011;
  *(v2 + 120) = 0x80000001004D2B00;
  v3 = OBJC_IVAR____TtC13findmylocated17FriendshipService_serviceDescription;
  v4 = type metadata accessor for XPCServiceDescription();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC13findmylocated17FriendshipService_trampoline) = 0;
  v5 = OBJC_IVAR____TtC13findmylocated17FriendshipService_connectionPool;
  sub_10004B564(&qword_1005B0EE0, &qword_1004D2E28);
  *(v2 + v5) = XPCClientConnectionPool.__allocating_init()();
  v6 = OBJC_IVAR____TtC13findmylocated17FriendshipService_friendUpdateQueue;
  type metadata accessor for WorkItemQueue();
  v7 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  UUID.init()();
  *(v2 + v6) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v8 = OBJC_IVAR____TtC13findmylocated17FriendshipService_dataManagerStateStream;
  v9 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  *(v2 + OBJC_IVAR____TtC13findmylocated17FriendshipService_task) = 0;
  type metadata accessor for XPCSessionManager();
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_1002ADD90;

  return XPCSessionManager.__allocating_init(name:)(0xD000000000000011, 0x80000001004D2B00);
}

uint64_t sub_1002ADD90(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1002ADE90, 0, 0);
}

uint64_t sub_1002ADE90()
{
  *(v0[2] + OBJC_IVAR____TtC13findmylocated17FriendshipService_xpcSessionManager) = v0[6];

  v1 = v0[1];
  v2 = v0[2];

  return v1(v2);
}

uint64_t sub_1002ADF10()
{
  v1[14] = v0;
  v1[15] = *v0;
  sub_10004B564(&qword_1005B09F8, &qword_1004D23A8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v2 = type metadata accessor for MachServiceName();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_1002AE054, v0, 0);
}

uint64_t sub_1002AE054()
{
  v73 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FriendshipService startup()", v4, 2u);
  }

  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);

  MachServiceName.init(_:)();
  v9 = objc_opt_self();
  v71 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate20FriendshipXPCService_];
  *(v0 + 184) = v71;
  v70 = *(v7 + 16);
  v70(v6, v5, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 168);
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v68 = v9;
    v17 = swift_slowAlloc();
    v72 = v17;
    *v16 = 136315138;
    v18 = MachServiceName.description.getter();
    v20 = v19;
    v67 = v11;
    v21 = *(v14 + 8);
    v21(v13, v15);
    v22 = sub_10000D01C(v18, v20, &v72);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v10, v67, "Service Name: %s", v16, 0xCu);
    sub_100004984(v17);
    v9 = v68;
  }

  else
  {

    v21 = *(v14 + 8);
    v21(v13, v15);
  }

  *(v0 + 192) = v21;
  v23 = _s10TrampolineCMa();
  v24 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 80) = v24;
  *(v0 + 88) = v23;
  v25 = objc_msgSendSuper2((v0 + 80), "init");
  *(v0 + 200) = v25;
  v69 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate26FriendshipServiceClientXPC_];
  *(v0 + 208) = v69;
  v26 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v72 = v30;
    *v29 = 136315138;
    v31 = [v26 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_10000D01C(v32, v34, &v72);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "Trampoline: %s", v29, 0xCu);
    sub_100004984(v30);
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = *(v0 + 112);
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v72 = v40;
    *v39 = 136315138;
    *(v0 + 104) = v38;
    type metadata accessor for FriendshipService(0);
    sub_1002BCCE0(&qword_1005B0EA0, 255, type metadata accessor for FriendshipService, &unk_1004D2BA8);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = sub_10000D01C(v41, v42, &v72);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "Self: %s", v39, 0xCu);
    sub_100004984(v40);
  }

  v44 = *(v0 + 136);
  v45 = *(v0 + 112);
  v70(*(v0 + 160), *(v0 + 176), *(v0 + 144));
  v46 = type metadata accessor for ServiceEntitlements();
  *(v0 + 40) = v46;
  *(v0 + 48) = sub_1002BCCE0(&qword_1005B0A00, 255, &type metadata accessor for ServiceEntitlements, &protocol conformance descriptor for ServiceEntitlements);
  v47 = sub_10000331C((v0 + 16));
  (*(*(v46 - 8) + 104))(v47, enum case for ServiceEntitlements.friendshipService(_:), v46);
  v48 = v26;

  v49 = v71;
  v50 = v69;
  XPCServiceDescription.init(name:exportedObject:exportedInterface:remoteObjectInterface:options:requiredEntitlement:shouldAccept:)();
  v51 = type metadata accessor for XPCServiceDescription();
  *(v0 + 216) = v51;
  v52 = *(v51 - 8);
  *(v0 + 224) = v52;
  (*(v52 + 56))(v44, 0, 1, v51);
  v53 = OBJC_IVAR____TtC13findmylocated17FriendshipService_serviceDescription;
  *(v0 + 232) = OBJC_IVAR____TtC13findmylocated17FriendshipService_serviceDescription;
  swift_beginAccess();
  sub_100022364(v44, v45 + v53, &qword_1005B09F8, &qword_1004D23A8);
  swift_endAccess();

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = *(v0 + 112);
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v72 = v58;
    *v57 = 136315138;
    *(v0 + 96) = v56;
    type metadata accessor for FriendshipService(0);
    sub_1002BCCE0(&qword_1005B0EA0, 255, type metadata accessor for FriendshipService, &unk_1004D2BA8);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = sub_10000D01C(v59, v60, &v72);

    *(v57 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v54, v55, "Service description: %s", v57, 0xCu);
    sub_100004984(v58);
  }

  v62 = *(v0 + 112);
  *(v62 + OBJC_IVAR____TtC13findmylocated17FriendshipService_trampoline) = v48;
  v63 = v48;

  *(v0 + 240) = *(v62 + OBJC_IVAR____TtC13findmylocated17FriendshipService_connectionPool);
  sub_10004B564(&qword_1005B0EE0, &qword_1004D2E28);
  sub_10001DF0C(&qword_1005B0EE8, &qword_1005B0EE0, &qword_1004D2E28, &protocol conformance descriptor for XPCClientConnectionPool<A>);
  v65 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 248) = v65;
  *(v0 + 256) = v64;

  return _swift_task_switch(sub_1002AE93C, v65, v64);
}

uint64_t sub_1002AE93C()
{
  v1 = *(v0 + 112);
  dispatch thunk of XPCClientConnectionPool.setRemoveHandler(_:)();

  return _swift_task_switch(sub_1002AE9C0, v1, 0);
}

uint64_t sub_1002AE9C0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = swift_allocObject();
  v0[33] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v5 = v0[31];
  v4 = v0[32];

  return _swift_task_switch(sub_1002AEA58, v5, v4);
}

uint64_t sub_1002AEA58()
{
  v1 = *(v0 + 112);
  dispatch thunk of XPCClientConnectionPool.setStopProcessing(_:)();

  return _swift_task_switch(sub_1002AEAF0, v1, 0);
}

uint64_t sub_1002AEAF0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[16];
  v5 = v0[14];
  v0[34] = *(v5 + OBJC_IVAR____TtC13findmylocated17FriendshipService_xpcSessionManager);
  sub_100005F04(v5 + v1, v4, &qword_1005B09F8, &qword_1004D23A8);
  v6 = (*(v2 + 48))(v4, 1, v3);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for XPCSessionManager();
    sub_1002BCCE0(&qword_1005B0A08, 255, &type metadata accessor for XPCSessionManager, &protocol conformance descriptor for XPCSessionManager);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v6 = sub_1002AEC14;
    v7 = v9;
    v8 = v11;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1002AEC14()
{
  dispatch thunk of XPCSessionManager.register(service:)();
  v0[35] = 0;
  v1 = v0[14];
  (*(v0[28] + 8))(v0[16], v0[27]);

  return _swift_task_switch(sub_1002AECC8, v1, 0);
}

uint64_t sub_1002AECC8()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);

  v2(v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002AEDAC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);

  v5(v6, v7);
  (*(v2 + 8))(v8, v1);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1002AEEB0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1002AEF4C, 0, 0);
}

uint64_t sub_1002AEF4C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v3;

  v6 = v3;
  sub_1001D7F30(0, 0, v2, &unk_1004D2FC0, v5);

  v7 = v0[1];

  return v7(1);
}

uint64_t sub_1002AF058(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002AF0F4, 0, 0);
}

uint64_t sub_1002AF0F4()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FriendshipService stop Processing", v4, 2u);
  }

  v6 = v0[2];
  v5 = v0[3];

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_1001D7F30(0, 0, v5, &unk_1004D2FB0, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002AF2A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002B4260();
}

uint64_t sub_1002AF338()
{
  v1[255] = v0;
  v2 = sub_10004B564(&qword_1005AA708, &unk_1004C4360);
  v1[261] = v2;
  v1[267] = *(v2 - 8);
  v1[273] = swift_task_alloc();
  sub_10004B564(&qword_1005B0F00, &qword_1004D2F00);
  v1[279] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[285] = v3;
  *v3 = v1;
  v3[1] = sub_1002AF46C;

  return daemon.getter();
}

uint64_t sub_1002AF46C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 2328) = a1;

  v3 = swift_task_alloc();
  *(v2 + 2376) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1002BCCE0(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1002BCCE0(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002AF650;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002AF650(uint64_t a1)
{
  v4 = *v2;
  v4[298] = a1;
  v4[299] = v1;

  if (v1)
  {
    v5 = v4[255];
    v6 = sub_1002AFBD0;
  }

  else
  {

    v6 = sub_1002AF78C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002AF78C()
{
  v1 = v0[273];
  v2 = v0[267];
  v3 = v0[261];
  v4 = v0[255];
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for DataManager.State(0);
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1002AF8A4, v4, 0);
}

uint64_t sub_1002AF8A4()
{
  v1 = *(v0 + 2232);
  v2 = *(v0 + 2040);
  v3 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated17FriendshipService_dataManagerStateStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B0F00, &qword_1004D2F00);
  swift_endAccess();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_1002AFA54(uint64_t a1, uint64_t a2)
{
  *(v3 + 2400) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 1296, a2, sub_1002AFC48, v3 + 2048);
  }

  else
  {
    return _swift_asyncLet_get(v3 + 1296);
  }
}

uint64_t sub_1002AFB3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AFBD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AFCD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AFD5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1002CE9CC();
}

uint64_t sub_1002AFDEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002AFE7C();
}

uint64_t sub_1002AFE7C()
{
  v1[6] = v0;
  v2 = type metadata accessor for HandleType();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for Friend();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for Device();
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v6 = type metadata accessor for DataManager.State(0);
  v1[27] = v6;
  v1[28] = *(v6 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  sub_10004B564(&qword_1005AA6F8, &unk_1004C4350);
  v1[33] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005AA700, &unk_1004D2F70);
  v1[34] = v7;
  v1[35] = *(v7 - 8);
  v1[36] = swift_task_alloc();
  sub_10004B564(&qword_1005B0F00, &qword_1004D2F00);
  v1[37] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  v1[38] = v8;
  v1[39] = *(v8 - 8);
  v1[40] = swift_task_alloc();

  return _swift_task_switch(sub_1002B02C8, v0, 0);
}

uint64_t sub_1002B02C8(uint64_t a1)
{
  if (static SystemInfo.underTest.getter())
  {

    v2 = *(v1 + 8);
LABEL_11:

    return v2();
  }

  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v1 + 328) = sub_10000A6F0(v3, qword_1005E0000);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Monitoring DataManager stream", v6, 2u);
  }

  v7 = *(v1 + 304);
  v8 = *(v1 + 312);
  v9 = *(v1 + 296);
  v10 = *(v1 + 48);

  v11 = OBJC_IVAR____TtC13findmylocated17FriendshipService_dataManagerStateStream;
  swift_beginAccess();
  sub_100005F04(v10 + v11, v9, &qword_1005B0F00, &qword_1004D2F00);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_100002CE0(*(v1 + 296), &qword_1005B0F00, &qword_1004D2F00);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "dataManagerStateStream should be available by now!", v14, 2u);
    }

    sub_10006DC90();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();

    v2 = *(v1 + 8);
    goto LABEL_11;
  }

  (*(*(v1 + 312) + 32))(*(v1 + 320), *(v1 + 296), *(v1 + 304));
  AsyncStream.makeAsyncIterator()();
  v17 = sub_1002BCCE0(&qword_1005B0EA8, 255, type metadata accessor for FriendshipService, &unk_1004D2C58);
  *(v1 + 560) = enum case for HandleType.follower(_:);
  *(v1 + 336) = v17;
  *(v1 + 344) = 0;
  v18 = *(v1 + 48);
  v19 = swift_task_alloc();
  *(v1 + 352) = v19;
  *v19 = v1;
  v19[1] = sub_1002B0800;
  v20 = *(v1 + 264);
  v21 = *(v1 + 272);

  return AsyncStream.Iterator.next(isolation:)(v20, v18, v17, v21);
}

uint64_t sub_1002B0800()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1002B0910, v1, 0);
}

uint64_t sub_1002B0910()
{
  v115 = v0;
  v1 = *(v0 + 264);
  if ((*(*(v0 + 224) + 48))(v1, 1, *(v0 + 216)) == 1)
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v4 = *(v0 + 304);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    (*(v3 + 8))(v2, v4);

    v5 = *(v0 + 8);
LABEL_5:

    return v5();
  }

  v6 = *(v0 + 344);
  sub_1002BCB4C(v1, *(v0 + 256));
  static Task<>.checkCancellation()();
  *(v0 + 360) = v6;
  if (v6)
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 304);
    v11 = *(v0 + 280);
    v10 = *(v0 + 288);
    v12 = *(v0 + 272);
    sub_100243528(*(v0 + 256));
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);

    v5 = *(v0 + 8);
    goto LABEL_5;
  }

  sub_1002434C4(*(v0 + 256), *(v0 + 248));
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 248);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v114[0] = v19;
    *v18 = 136315138;
    v20 = sub_1001DA250();
    v22 = v21;
    sub_100243528(v17);
    v23 = sub_10000D01C(v20, v22, v114);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "dataManagerStateStream event: %s", v18, 0xCu);
    sub_100004984(v19);
  }

  else
  {

    sub_100243528(v17);
  }

  sub_1002434C4(*(v0 + 256), *(v0 + 240));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) >= 3 && EnumCaseMultiPayload == 6)
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Initialized, registering alarms if not already registered", v27, 2u);
      }

      v28 = swift_task_alloc();
      *(v0 + 368) = v28;
      *v28 = v0;
      v29 = sub_1002B1840;
LABEL_17:
      v28[1] = v29;

      return sub_1002CF250();
    }

    sub_1002434C4(*(v0 + 256), *(v0 + 232));
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 256);
    v34 = *(v0 + 232);
    if (v32)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v114[0] = v36;
      *v35 = 136315138;
      v37 = sub_1001DA250();
      v39 = v38;
      sub_100243528(v34);
      v40 = sub_10000D01C(v37, v39, v114);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v30, v31, "Ignoring %s", v35, 0xCu);
      sub_100004984(v36);
    }

    else
    {

      sub_100243528(v34);
    }

    v41 = v33;
    goto LABEL_49;
  }

  if (!EnumCaseMultiPayload)
  {
    v56 = *(v0 + 200);
    v55 = *(v0 + 208);
    sub_1000176A8(*(v0 + 240), v55, &qword_1005AA718, &qword_1004C4370);
    sub_100005F04(v55, v56, &qword_1005AA718, &qword_1004C4370);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 200);
    if (v59)
    {
      v61 = *(v0 + 192);
      v62 = *(v0 + 160);
      v63 = *(v0 + 168);
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *(v0 + 40) = v65;
      *v64 = 136315138;
      sub_100005F04(v60, v61, &qword_1005AA718, &qword_1004C4370);
      v66 = (*(v63 + 48))(v61, 1, v62);
      v67 = *(v0 + 192);
      if (v66 == 1)
      {
        sub_100002CE0(*(v0 + 192), &qword_1005AA718, &qword_1004C4370);
        v68 = 0xE300000000000000;
        v69 = 7104878;
      }

      else
      {
        v83 = *(v0 + 160);
        v84 = *(v0 + 168);
        v69 = Device.description.getter();
        v68 = v85;
        (*(v84 + 8))(v67, v83);
      }

      sub_100002CE0(*(v0 + 200), &qword_1005AA718, &qword_1004C4370);
      v86 = sub_10000D01C(v69, v68, (v0 + 40));

      *(v64 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v57, v58, "Me Device change: %s", v64, 0xCu);
      sub_100004984(v65);
    }

    else
    {

      sub_100002CE0(v60, &qword_1005AA718, &qword_1004C4370);
    }

    v87 = *(v0 + 184);
    v88 = *(v0 + 160);
    v89 = *(v0 + 168);
    sub_100005F04(*(v0 + 208), v87, &qword_1005AA718, &qword_1004C4370);
    if ((*(v89 + 48))(v87, 1, v88) != 1)
    {
      (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 184), *(v0 + 160));
      if (Device.isThisDevice.getter())
      {
        v99 = *(v0 + 128);
        v100 = *(v0 + 136);
        v101 = *(v0 + 120);
        static Date.trustedNow.getter(*(v0 + 152));
        sub_1002D3678(v101);
        v102 = *(v100 + 48);
        v103 = v102(v101, 1, v99);
        v105 = *(v0 + 120);
        v104 = *(v0 + 128);
        if (v103 == 1)
        {
          Date.addingTimeInterval(_:)();
          if (v102(v105, 1, v104) != 1)
          {
            sub_100002CE0(*(v0 + 120), &unk_1005AE5B0, &qword_1004C32F0);
          }
        }

        else
        {
          (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
        }

        v110 = [objc_opt_self() standardUserDefaults];
        Date.timeIntervalSince1970.getter();
        v112 = v111;
        v113 = String._bridgeToObjectiveC()();
        [v110 setDouble:v113 forKey:v112];

        v28 = swift_task_alloc();
        *(v0 + 376) = v28;
        *v28 = v0;
        v29 = sub_1002B1A14;
        goto LABEL_17;
      }

      v106 = [objc_opt_self() standardUserDefaults];
      v107 = String._bridgeToObjectiveC()();
      [v106 setDouble:v107 forKey:0.0];

      static XPCAlarm.unregister(identifier:)();
      v108 = *(v0 + 256);
      v109 = *(v0 + 208);
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      sub_100002CE0(v109, &qword_1005AA718, &qword_1004C4370);
      sub_100243528(v108);
      v93 = *(v0 + 360);
      goto LABEL_50;
    }

    v81 = *(v0 + 256);
    v90 = *(v0 + 208);
    sub_100002CE0(*(v0 + 184), &qword_1005AA718, &qword_1004C4370);
    v91 = [objc_opt_self() standardUserDefaults];
    v92 = String._bridgeToObjectiveC()();
    [v91 setDouble:v92 forKey:0.0];

    static XPCAlarm.unregister(identifier:)();
    sub_100002CE0(v90, &qword_1005AA718, &qword_1004C4370);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v70 = *(v0 + 560);
    v71 = *(v0 + 80);
    v73 = *(v0 + 64);
    v72 = *(v0 + 72);
    v74 = *(v0 + 56);
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 240), *(v0 + 88));
    Friend.type.getter();
    v75 = *(v73 + 104);
    *(v0 + 480) = v75;
    *(v0 + 488) = (v73 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v75(v72, v70, v74);
    v76 = static HandleType.== infix(_:_:)();
    v77 = *(v73 + 8);
    v77(v72, v74);
    v77(v71, v74);
    if (v76)
    {
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "Removed a follower, checking number of followers", v80, 2u);
      }

      v53 = swift_task_alloc();
      *(v0 + 496) = v53;
      *v53 = v0;
      v54 = sub_1002B26E0;
      goto LABEL_37;
    }

    v81 = *(v0 + 256);
    v82 = *(v0 + 104);
    goto LABEL_43;
  }

  v42 = *(v0 + 560);
  v44 = *(v0 + 72);
  v43 = *(v0 + 80);
  v45 = *(v0 + 56);
  v46 = *(v0 + 64);
  (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 240), *(v0 + 88));
  Friend.type.getter();
  v47 = *(v46 + 104);
  *(v0 + 384) = v47;
  *(v0 + 392) = (v46 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v47(v44, v42, v45);
  v48 = static HandleType.== infix(_:_:)();
  v49 = *(v46 + 8);
  v49(v44, v45);
  v49(v43, v45);
  if ((v48 & 1) == 0)
  {
    v81 = *(v0 + 256);
    v82 = *(v0 + 112);
LABEL_43:
    (*(*(v0 + 96) + 8))(v82, *(v0 + 88));
LABEL_48:
    v41 = v81;
LABEL_49:
    sub_100243528(v41);
    v93 = 0;
LABEL_50:
    *(v0 + 344) = v93;
    v94 = *(v0 + 336);
    v95 = *(v0 + 48);
    v96 = swift_task_alloc();
    *(v0 + 352) = v96;
    *v96 = v0;
    v96[1] = sub_1002B0800;
    v97 = *(v0 + 264);
    v98 = *(v0 + 272);

    return AsyncStream.Iterator.next(isolation:)(v97, v95, v94, v98);
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Added a follower, checking number of followers", v52, 2u);
  }

  v53 = swift_task_alloc();
  *(v0 + 400) = v53;
  *v53 = v0;
  v54 = sub_1002B1C50;
LABEL_37:
  v53[1] = v54;

  return daemon.getter();
}

uint64_t sub_1002B1840()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1002B1950, v1, 0);
}

uint64_t sub_1002B1950()
{
  sub_100243528(v0[32]);
  v0[43] = v0[45];
  v1 = v0[42];
  v2 = v0[6];
  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_1002B0800;
  v4 = v0[33];
  v5 = v0[34];

  return AsyncStream.Iterator.next(isolation:)(v4, v2, v1, v5);
}

uint64_t sub_1002B1A14()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1002B1B24, v1, 0);
}

uint64_t sub_1002B1B24()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = *(v0[17] + 8);
  v3(v0[18], v2);
  v3(v1, v2);
  v4 = v0[32];
  v5 = v0[26];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_100002CE0(v5, &qword_1005AA718, &qword_1004C4370);
  sub_100243528(v4);
  v0[43] = v0[45];
  v6 = v0[42];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v0[44] = v8;
  *v8 = v0;
  v8[1] = sub_1002B0800;
  v9 = v0[33];
  v10 = v0[34];

  return AsyncStream.Iterator.next(isolation:)(v9, v7, v6, v10);
}

uint64_t sub_1002B1C50(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 408) = a1;

  v3 = swift_task_alloc();
  *(v2 + 416) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1002BCCE0(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1002BCCE0(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002B1E34;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002B1E34(uint64_t a1)
{
  v4 = *v2;
  v4[53] = a1;
  v4[54] = v1;

  if (v1)
  {
    v5 = v4[6];

    v6 = sub_1002B2E4C;
    v7 = v5;
  }

  else
  {

    v6 = sub_1002B1F88;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1002B1F88()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 560);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 440) = v6;
  *(v6 + 16) = xmmword_1004C1900;
  v1(v6 + v5, v2, v3);
  v7 = swift_task_alloc();
  *(v0 + 448) = v7;
  *v7 = v0;
  v7[1] = sub_1002B2090;

  return sub_10001C61C(v6, 1);
}

uint64_t sub_1002B2090(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 456) = a1;

  v5 = swift_task_alloc();
  *(v3 + 464) = v5;
  *v5 = v4;
  v5[1] = sub_1002B2200;

  return sub_1002B7DB0(a1);
}

uint64_t sub_1002B2200()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1002B2310, v1, 0);
}

uint64_t sub_1002B2310()
{
  v1 = *(v0[57] + 16);

  if (v1 == 1)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Added first follower, resetting location sharing notificatio alarm", v4, 2u);
    }

    v5 = swift_task_alloc();
    v0[59] = v5;
    *v5 = v0;
    v5[1] = sub_1002B24E8;

    return sub_1002CFEEC();
  }

  else
  {

    v7 = v0[32];
    (*(v0[12] + 8))(v0[14], v0[11]);
    sub_100243528(v7);
    v0[43] = v0[54];
    v8 = v0[42];
    v9 = v0[6];
    v10 = swift_task_alloc();
    v0[44] = v10;
    *v10 = v0;
    v10[1] = sub_1002B0800;
    v11 = v0[33];
    v12 = v0[34];

    return AsyncStream.Iterator.next(isolation:)(v11, v9, v8, v12);
  }
}

uint64_t sub_1002B24E8()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1002B25F8, v1, 0);
}

uint64_t sub_1002B25F8()
{

  v1 = v0[32];
  (*(v0[12] + 8))(v0[14], v0[11]);
  sub_100243528(v1);
  v0[43] = v0[54];
  v2 = v0[42];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v0[44] = v4;
  *v4 = v0;
  v4[1] = sub_1002B0800;
  v5 = v0[33];
  v6 = v0[34];

  return AsyncStream.Iterator.next(isolation:)(v5, v3, v2, v6);
}

uint64_t sub_1002B26E0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 504) = a1;

  v3 = swift_task_alloc();
  *(v2 + 512) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1002BCCE0(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1002BCCE0(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002B28C4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002B28C4(uint64_t a1)
{
  v4 = *v2;
  v4[65] = a1;
  v4[66] = v1;

  if (v1)
  {
    v5 = v4[6];

    v6 = sub_1002B3014;
    v7 = v5;
  }

  else
  {

    v6 = sub_1002B2A1C;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1002B2A1C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 560);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 536) = v6;
  *(v6 + 16) = xmmword_1004C1900;
  v1(v6 + v5, v2, v3);
  v7 = swift_task_alloc();
  *(v0 + 544) = v7;
  *v7 = v0;
  v7[1] = sub_1002B2B24;

  return sub_10001C61C(v6, 1);
}

uint64_t sub_1002B2B24(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 552) = a1;

  return _swift_task_switch(sub_1002B2C58, v2, 0);
}

uint64_t sub_1002B2C58()
{
  v1 = *(v0[69] + 16);

  if (!v1)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Removed last follower, unregistering location sharing notification alarm", v4, 2u);
    }

    v5 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();
    [v5 setDouble:v6 forKey:0.0];

    static XPCAlarm.unregister(identifier:)();
  }

  v7 = v0[32];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];

  (*(v9 + 8))(v8, v10);
  sub_100243528(v7);
  v0[43] = v0[66];
  v11 = v0[42];
  v12 = v0[6];
  v13 = swift_task_alloc();
  v0[44] = v13;
  *v13 = v0;
  v13[1] = sub_1002B0800;
  v14 = v0[33];
  v15 = v0[34];

  return AsyncStream.Iterator.next(isolation:)(v14, v12, v11, v15);
}

uint64_t sub_1002B2E4C()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];
  v7 = v0[32];
  (*(v0[12] + 8))(v0[14], v0[11]);
  sub_100243528(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002B3014()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];
  v7 = v0[32];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_100243528(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002B31DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003788;

  return sub_1002B326C();
}

uint64_t sub_1002B326C()
{
  v1[3] = v0;
  sub_10004B564(&qword_1005B0F08, &qword_1004D2F40);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002B3364, v0, 0);
}

uint64_t sub_1002B3364()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 64) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E6A00, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1002B3514;

  return sub_1002B8FBC();
}

uint64_t sub_1002B3514()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1002B3624, v1, 0);
}

uint64_t sub_1002B3624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CMFBlockListUpdatedNotification;
  if (CMFBlockListUpdatedNotification)
  {
    v5 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.notifications(named:object:)();

    NSNotificationCenter.Notifications.makeAsyncIterator()();
    v3[10] = sub_1002BCCE0(&qword_1005B0EA8, 255, type metadata accessor for FriendshipService, &unk_1004D2C58);
    v6 = sub_1002BCCE0(&qword_1005B0F10, 255, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
    v7 = swift_task_alloc();
    v3[11] = v7;
    *v7 = v3;
    v7[1] = sub_1002B37A4;
    a1 = v3[4];
    a2 = v3[5];
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
}

uint64_t sub_1002B37A4()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1002B3B6C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1002B393C;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1002B3958()
{
  v11 = v0;
  v1 = v0[4];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E6A00, &v10);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s - Notification received.", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_1002B3BF8;

    return sub_1002B8FBC();
  }
}

uint64_t sub_1002B3B6C()
{
  *(v0 + 16) = *(v0 + 96);
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1002B3BF8()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1002B3D08, v1, 0);
}

uint64_t sub_1002B3D08()
{
  sub_100002CE0(v0[4], &qword_1005B0F08, &qword_1004D2F40);
  v1 = sub_1002BCCE0(&qword_1005B0F10, 255, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1002B37A4;
  v3 = v0[4];
  v4 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_1002B3DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000368C;

  return sub_1002B3E98(a5);
}

uint64_t sub_1002B3E98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002B3EB8, v1, 0);
}

uint64_t sub_1002B3EB8()
{
  v4 = (&async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:) + async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1002B3F70;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_1002B3F70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = *(v3 + 24);

    return _swift_task_switch(sub_1002B40C4, v5, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1002B40C4()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error adding connection: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002B4280()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 32) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FriendshipService: All client connections have been terminated. Invalidating...", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1002B43D0;

  return sub_1002BD740();
}

uint64_t sub_1002B43D0()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_1002B4504, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1002B4504()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[6];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to stop ranging due to %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002B4698(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for WorkItemQueue.WorkItem();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = a1;
  v5[4] = v3;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1002B47E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1002B4804, 0, 0);
}

uint64_t sub_1002B4804()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = *(v0 + 24);

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1002B4918;

  return withTimeout<A>(_:block:)(v3, 0x40AAD21B3B700000, 3, &unk_1004D2EA8, v2, &type metadata for () + 1);
}

uint64_t sub_1002B4918()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1001268B0;
  }

  else
  {

    v2 = sub_10004B074;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002B4A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  return _swift_task_switch(sub_1002B4A58, 0, 0);
}

uint64_t sub_1002B4A58()
{
  *(v0 + 48) = *(*(v0 + 24) + OBJC_IVAR____TtC13findmylocated17FriendshipService_connectionPool);
  sub_10004B564(&qword_1005B0EE0, &qword_1004D2E28);
  sub_10001DF0C(&qword_1005B0EE8, &qword_1005B0EE0, &qword_1004D2E28, &protocol conformance descriptor for XPCClientConnectionPool<A>);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B4B30, v2, v1);
}

uint64_t sub_1002B4B30()
{
  v1 = dispatch thunk of XPCClientConnectionPool.sessions.getter();
  v0[7] = v1;
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[8] = v2;
  v3 = sub_10004B564(&qword_1005B0EF0, &qword_1004D2EB8);
  v4 = type metadata accessor for UUID();
  v0[9] = v4;
  v5 = sub_10001DF0C(&qword_1005B0EF8, &qword_1005B0EF0, &qword_1004D2EB8, &protocol conformance descriptor for Set<A>);
  *v2 = v0;
  v2[1] = sub_1002B4C64;

  return Sequence.asyncMap<A>(_:)(&unk_1004D2EB0, 0, v3, v4, v5);
}

uint64_t sub_1002B4C64(uint64_t a1)
{
  *(*v2 + 80) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_1002B4D8C, 0, 0);
  }
}

uint64_t sub_1002B4D8C()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  swift_bridgeObjectRetain_n();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 134218498;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v0[7] + 16);
    }

    v9 = v0[4];
    *(v6 + 4) = v8;

    *(v6 + 12) = 2082;
    v10 = Array.description.getter();
    v12 = sub_10000D01C(v10, v11, &v22);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2048;
    v13 = *(v9 + 16);

    *(v6 + 24) = v13;

    _os_log_impl(&_mh_execute_header, v2, v3, "Send friends update to clients[%ld]: %{public}s updates count:%ld", v6, 0x20u);
    sub_100004984(v7);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v14 = v0[10];
  v15 = v0[7];
  v17 = v0[4];
  v16 = v0[5];
  v18 = swift_task_alloc();
  v0[11] = v18;
  v18[2] = v17;
  v18[3] = v15;
  v18[4] = v14;
  v18[5] = v16;
  v19 = swift_task_alloc();
  v0[12] = v19;
  *v19 = v0;
  v19[1] = sub_1002B5058;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1002B5058()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_1002BCFE4, 0, 0);
  }
}

uint64_t sub_1002B51A8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1002B51CC, 0, 0);
}

uint64_t sub_1002B51CC()
{
  v4 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1002B527C;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_1002B527C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002B5374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[16] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v7 = type metadata accessor for HandleType();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  v6[26] = v8;
  v6[27] = *(v8 - 8);
  v6[28] = swift_task_alloc();
  v9 = type metadata accessor for FriendshipAction();
  v6[29] = v9;
  v6[30] = *(v9 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v10 = type metadata accessor for Friend();
  v6[34] = v10;
  v6[35] = *(v10 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();

  return _swift_task_switch(sub_1002B5614, 0, 0);
}

void sub_1002B5614()
{
  v143 = v0;
  v104 = v0 + 7;
  v1 = v0[17];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[17] + 32);
  v7 = v0[35];
  v8 = v0[30];
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v9 = v5 & v2;
  v105 = (63 - v6) >> 6;
  v124 = (v8 + 16);
  v125 = (v7 + 16);
  v123 = (v7 + 32);
  v111 = v0[30];
  v112 = v0[35];
  v119 = (v8 + 8);
  v121 = (v7 + 8);
  v122 = (v8 + 32);
  v106 = v0[18];
  v109 = (v0[27] + 8);
  v110 = v106 & 0xC000000000000001;
  v108 = (v0[24] + 8);
  v113 = v0[17];

  v10 = 0;
  v120 = v3;
  while (v9)
  {
    v18 = v10;
    v19 = v126;
LABEL_16:
    v22 = v19[40];
    v23 = v19[33];
    v134 = v19[34];
    v139 = v19[39];
    v24 = v19[29];
    v25 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v26 = v25 | (v18 << 6);
    (*(v112 + 16))();
    (*(v111 + 16))(v23, *(v113 + 56) + *(v111 + 72) * v26, v24);
    v27 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v28 = *(v27 + 48);
    (*(v112 + 32))(v22, v139, v134);
    (*(v111 + 32))(v22 + v28, v23, v24);
    (*(*(v27 - 8) + 56))(v22, 0, 1, v27);
LABEL_17:
    v29 = v19[41];
    sub_1000176A8(v19[40], v29, &qword_1005AFFF8, &unk_1004D2ED0);
    v30 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
    {

      if (v110)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for FriendshipServiceClient();
        sub_1002BCCE0(&qword_1005B0EB8, v70, type metadata accessor for FriendshipServiceClient, &unk_1004D2CF8);
        Set.Iterator.init(_cocoa:)();
        v71 = v19[2];
        v72 = v19[3];
        v73 = v19[4];
        v74 = v19[5];
        v75 = v19[6];
      }

      else
      {
        v76 = -1 << *(v19[18] + 32);
        v77 = v19[18];
        v79 = *(v77 + 56);
        v72 = v77 + 56;
        v78 = v79;
        v80 = ~v76;
        v81 = -v76;
        if (v81 < 64)
        {
          v82 = ~(-1 << v81);
        }

        else
        {
          v82 = -1;
        }

        v75 = v82 & v78;

        v73 = v80;
        v74 = 0;
        v71 = v106;
      }

      v83 = (v73 + 64) >> 6;
      v107 = v71;
      v128 = v83;
      for (i = v72; ; v72 = i)
      {
        if (v71 < 0)
        {
          v91 = __CocoaSet.Iterator.next()();
          if (!v91 || (v19[15] = v91, type metadata accessor for FriendshipServiceClient(), swift_dynamicCast(), v90 = v19[14], j = v74, v89 = v75, !v90))
          {
LABEL_52:
            sub_10000E3F8(v107);

            v103 = *(v126 + 8);

            v103();
            return;
          }
        }

        else
        {
          v86 = v74;
          v87 = v75;
          for (j = v74; !v87; ++v86)
          {
            j = v86 + 1;
            if (__OFADD__(v86, 1))
            {
              goto LABEL_56;
            }

            if (j >= v83)
            {
              goto LABEL_52;
            }

            v87 = *(v72 + 8 * j);
          }

          v89 = (v87 - 1) & v87;
          v90 = *(*(v71 + 48) + ((j << 9) | (8 * __clz(__rbit64(v87)))));

          if (!v90)
          {
            goto LABEL_52;
          }
        }

        v141 = v89;
        v93 = *(v126 + 168);
        v92 = *(v126 + 176);
        v137 = *(v126 + 160);
        v94 = *(v126 + 136);
        v95 = type metadata accessor for TaskPriority();
        v96 = *(v95 - 8);
        (*(v96 + 56))(v92, 1, 1, v95);
        v97 = swift_allocObject();
        v97[2] = 0;
        v97[3] = 0;
        v97[4] = v90;
        v97[5] = v94;
        v97[6] = v137;
        sub_100005F04(v92, v93, &qword_1005A9690, &qword_1004C2A00);
        LODWORD(v93) = (*(v96 + 48))(v93, 1, v95);

        v98 = *(v126 + 168);
        if (v93 == 1)
        {
          sub_100002CE0(*(v126 + 168), &qword_1005A9690, &qword_1004C2A00);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v96 + 8))(v98, v95);
        }

        if (v97[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v99 = dispatch thunk of Actor.unownedExecutor.getter();
          v101 = v100;
          swift_unknownObjectRelease();
        }

        else
        {
          v99 = 0;
          v101 = 0;
        }

        v102 = **(v126 + 128);

        if (v101 | v99)
        {
          v84 = v104;
          *v104 = 0;
          v104[1] = 0;
          *(v126 + 72) = v99;
          *(v126 + 80) = v101;
        }

        else
        {
          v84 = 0;
        }

        v85 = *(v126 + 176);
        *(v126 + 88) = 1;
        *(v126 + 96) = v84;
        *(v126 + 104) = v102;
        swift_task_create();

        sub_100002CE0(v85, &qword_1005A9690, &qword_1004C2A00);
        v74 = j;
        v75 = v141;
        v19 = v126;
        v71 = v107;
        v83 = v128;
      }
    }

    v31 = v19[41];
    v32 = v19[32];
    v33 = v19[29];
    v34 = *(v30 + 48);
    (*v123)(v19[38], v31, v19[34]);
    (*v122)(v32, v31 + v34, v33);
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v35 = v19[37];
    v36 = v19[38];
    v37 = v19[36];
    v38 = v19[34];
    v129 = v19[31];
    v132 = v19[29];
    v135 = v19[32];
    v39 = type metadata accessor for Logger();
    sub_10000A6F0(v39, qword_1005E0000);
    v40 = *v125;
    (*v125)(v35, v36, v38);
    v40(v37, v36, v38);
    (*v124)(v129, v135, v132);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v142[0] = swift_slowAlloc();
      *v43 = 134219267;
      v136 = v41;
      v133 = v42;
      if (v110)
      {
        v44 = __CocoaSet.count.getter();
      }

      else
      {
        v44 = *(v106 + 16);
      }

      v47 = *(v126 + 296);
      v127 = *(v126 + 304);
      v114 = *(v126 + 288);
      v140 = *(v126 + 272);
      v116 = *(v126 + 248);
      v48 = *(v126 + 224);
      v117 = *(v126 + 232);
      v118 = *(v126 + 256);
      v50 = *(v126 + 200);
      v49 = *(v126 + 208);
      v51 = *(v126 + 184);
      *(v43 + 4) = v44;

      *(v43 + 12) = 2082;
      type metadata accessor for UUID();
      v52 = Array.description.getter();
      v54 = sub_10000D01C(v52, v53, v142);

      *(v43 + 14) = v54;
      *(v43 + 22) = 2160;
      *(v43 + 24) = 1752392040;
      *(v43 + 32) = 2081;
      Friend.handle.getter();
      v55 = Handle.identifier.getter();
      v57 = v56;
      (*v109)(v48, v49);
      v58 = *v121;
      (*v121)(v47, v140);
      v59 = v58;
      v115 = v58;
      v60 = sub_10000D01C(v55, v57, v142);

      *(v43 + 34) = v60;
      *(v43 + 42) = 2082;
      Friend.type.getter();
      sub_1002BCCE0(&qword_1005A9198, 255, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*v108)(v50, v51);
      v59(v114, v140);
      v64 = sub_10000D01C(v61, v63, v142);

      *(v43 + 44) = v64;
      *(v43 + 52) = 2082;
      sub_1002BCCE0(&qword_1005B0000, 255, &type metadata accessor for FriendshipAction, &protocol conformance descriptor for FriendshipAction);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v68 = *v119;
      (*v119)(v116, v117);
      v69 = sub_10000D01C(v65, v67, v142);

      *(v43 + 54) = v69;
      _os_log_impl(&_mh_execute_header, v136, v133, "Send friends update to all clients:\nclients[%ld]: %{public}s\nhandle: %{private,mask.hash}s\ntype: %{public}s\nby: %{public}s", v43, 0x3Eu);
      swift_arrayDestroy();

      v68(v118, v117);
      v115(v127, v140);
    }

    else
    {
      v11 = v19[37];
      v138 = v19[38];
      v12 = v19[36];
      v13 = v19[34];
      v14 = v19[31];
      v131 = v19[32];
      v15 = v19[29];

      v16 = *v119;
      (*v119)(v14, v15);
      v17 = *v121;
      (*v121)(v12, v13);
      v17(v11, v13);
      v16(v131, v15);
      v17(v138, v13);
    }

    v3 = v120;
  }

  if (v105 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v105;
  }

  v21 = v20 - 1;
  v19 = v126;
  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v105)
    {
      v45 = *(v126 + 320);
      v46 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
      (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
      v9 = 0;
      v10 = v21;
      goto LABEL_17;
    }

    v9 = *(v3 + 8 * v18);
    ++v10;
    if (v9)
    {
      v10 = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_1002B6370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for UUID();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002B6454, 0, 0);
}

uint64_t sub_1002B6454(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v5 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1002B656C;
  v3 = *(v1 + 80);

  return v5(v3);
}

uint64_t sub_1002B656C()
{

  return _swift_task_switch(sub_1002B6668, 0, 0);
}

uint64_t sub_1002B6668()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = v0[2];
  v14 = v0[3];
  v15 = v0[4];
  v7 = *(v4 + 16);
  v0[12] = v7;
  v0[13] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1, v5);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[14] = v11;
  (*(v4 + 32))(v11 + v8, v2, v5);
  *(v11 + v9) = v6;
  *(v11 + v10) = v14;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;

  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1002B680C;

  return withTimeout<A>(_:block:)(v12, 0x8AC7230489E80000, 0, &unk_1004D2EF8, v11, &type metadata for () + 1);
}

uint64_t sub_1002B680C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1002B69B8;
  }

  else
  {

    v2 = sub_1002B6928;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002B6928()
{
  (*(v0[6] + 8))(v0[10], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002B69B8()
{
  v27 = v0;

  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0000);
  v1(v3, v2, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v8)
  {
    v25 = v0[10];
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v13 = 136446466;
    sub_1002BCCE0(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000D01C(v14, v16, &v26);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v19;
    *v23 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error from client %{public}s error: %{public}@", v13, 0x16u);
    sub_100002CE0(v23, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v24);

    v17(v25, v11);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
    v20(v9, v11);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002B6CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for UUID();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1002B6DA0, 0, 0);
}

uint64_t sub_1002B6DA0()
{
  v23 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_10000A6F0(v5, qword_1005E0000);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136446210;
    sub_1002BCCE0(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000D01C(v14, v16, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending friends update to client %{public}s", v13, 0xCu);
    sub_100004984(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[12] = v17;
  v19 = v0[3];

  return _swift_task_switch(sub_1002B6FF4, v19, 0);
}

uint64_t sub_1002B6FF4()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1002B70D8;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v2, 0xD000000000000011, 0x80000001004E69C0, sub_1002BD00C, v1, &type metadata for () + 1);
}

uint64_t sub_1002B70D8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1002B7418;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1002B7200;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002B721C()
{
  v17 = v0;
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  if (v3)
  {
    v15 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    sub_1002BCCE0(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v15(v5, v6);
    v12 = sub_10000D01C(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully sent friends update to client %{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002B7418()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002B7490()
{

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated17FriendshipService_serviceDescription, &qword_1005B09F8, &qword_1004D23A8);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated17FriendshipService_dataManagerStateStream, &qword_1005B0F00, &qword_1004D2F00);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1002B7548()
{
  sub_1002B7490();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FriendshipService(uint64_t a1)
{
  result = qword_1005B0D30;
  if (!qword_1005B0D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B75C8(uint64_t a1)
{
  sub_10024D88C(319);
  if (v1 <= 0x3F)
  {
    sub_1002B76C8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002B76C8(uint64_t a1)
{
  if (!qword_1005B0D40)
  {
    sub_10004B610(&qword_1005AA710, &qword_1004D2BA0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005B0D40);
    }
  }
}

uint64_t sub_1002B772C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FriendshipService(0);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_1002B77D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for FriendshipService(0);
  *v8 = v4;
  v8[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_1002B78A0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FriendshipService(0);
  *v4 = v2;
  v4[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_1002B794C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002ADF10();
}

uint64_t sub_1002B79D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1002AF338();
}

uint64_t sub_1002B7A64()
{
  type metadata accessor for FriendshipService(0);
  sub_1002BCCE0(&qword_1005AA6E0, 255, type metadata accessor for FriendshipService, &unk_1004D2BF8);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1002B7C34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002AC088(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002B7CFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1002AC4F8(a1, v4, v5, v6);
}

uint64_t sub_1002B7DB0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for FriendshipRequestResult();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for ClientOrigin();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v2[11] = swift_task_alloc();
  sub_10004B564(&qword_1005A91E8, &qword_1004D2F60);
  v2[12] = swift_task_alloc();
  sub_10004B564(&qword_1005A91C0, &qword_1004C2700);
  v2[13] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v2[14] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for FriendshipRequest();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for Friend();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_1002B80F8, v1, 0);
}

uint64_t sub_1002B80F8()
{
  v71 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[26] = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v70 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E6A40, &v70);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[3];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v0[24];
    v67 = *(v8 + 16);
    v9 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v64 = v0[20];
    v65 = *(v8 + 72);
    v10 = (v8 + 8);
    v11 = _swiftEmptyArrayStorage;
    do
    {
      v12 = v0[21];
      v13 = v0[19];
      v67(v0[25], v9, v0[23]);
      Friend.handle.getter();
      sub_10005890C();
      v15 = v14;
      (*(v64 + 8))(v12, v13);
      v16 = v0[25];
      v17 = v0[23];
      if (v15)
      {
        Friend.handle.getter();
        (*v10)(v16, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1001FCA0C(0, v11[2] + 1, 1, v11);
        }

        v19 = v11[2];
        v18 = v11[3];
        if (v19 >= v18 >> 1)
        {
          v11 = sub_1001FCA0C((v18 > 1), v19 + 1, 1, v11);
        }

        v20 = v0[22];
        v21 = v0[19];
        v11[2] = v19 + 1;
        (*(v64 + 32))(v11 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v19, v20, v21);
      }

      else
      {
        (*v10)(v0[25], v0[23]);
      }

      v9 += v65;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v0[27] = v11;
  if (v11[2])
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v24 = 136446466;
      *(v24 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E6A40, &v69);
      *(v24 + 12) = 2080;
      v25 = v11[2];
      v26 = _swiftEmptyArrayStorage;
      if (v25)
      {
        v61 = v23;
        v62 = v24;
        v63 = v22;
        v27 = v0[20];
        v70 = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v25, 0);
        v26 = v70;
        v28 = *(v27 + 16);
        v27 += 16;
        v29 = v11 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
        v66 = *(v27 + 56);
        v68 = v28;
        v30 = (v27 - 8);
        do
        {
          v31 = v0[21];
          v32 = v0[19];
          v68(v31, v29, v32);
          v33 = Handle.identifier.getter();
          v35 = v34;
          (*v30)(v31, v32);
          v70 = v26;
          v37 = v26[2];
          v36 = v26[3];
          if (v37 >= v36 >> 1)
          {
            sub_10002B3C0((v36 > 1), v37 + 1, 1);
            v26 = v70;
          }

          v26[2] = v37 + 1;
          v38 = &v26[2 * v37];
          v38[4] = v33;
          v38[5] = v35;
          v29 += v66;
          --v25;
        }

        while (v25);
        v24 = v62;
        v22 = v63;
        v23 = v61;
      }

      v0[2] = v26;
      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      sub_10001DF0C(&qword_1005ABF48, &qword_1005A9630, &qword_1004C5680, &protocol conformance descriptor for [A]);
      v45 = BidirectionalCollection<>.joined(separator:)();
      v47 = v46;

      v48 = sub_10000D01C(v45, v47, &v69);

      *(v24 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s - Removing %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    v49 = v0[14];
    v51 = v0[12];
    v50 = v0[13];
    v52 = v0[10];
    v54 = v0[8];
    v53 = v0[9];
    (*(v0[20] + 56))(v0[15], 1, 1, v0[19]);
    v55 = type metadata accessor for Date();
    (*(*(v55 - 8) + 56))(v49, 1, 1, v55);
    v56 = type metadata accessor for FriendshipRequestType();
    (*(*(v56 - 8) + 56))(v50, 1, 1, v56);
    v57 = type metadata accessor for FriendshipResponseToInviteType();
    (*(*(v57 - 8) + 56))(v51, 1, 1, v57);
    (*(v53 + 104))(v52, enum case for ClientOrigin.other(_:), v54);

    RequestOrigin.init(_:)();
    FriendshipRequest.init(toHandles:callerHandle:endDate:origin:requestType:responseType:isFromGroup:)();
    v58 = swift_task_alloc();
    v0[28] = v58;
    *v58 = v0;
    v58[1] = sub_1002B89D8;
    v59 = v0[18];
    v60 = v0[7];

    return sub_1002BDDA4(v60, v59);
  }

  else
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v70 = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E6A40, &v70);
      _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s - List is empty. Nothing to remove.", v41, 0xCu);
      sub_100004984(v42);
    }

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_1002B89D8()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = v2[4];
    v4 = sub_1002B8D18;
  }

  else
  {
    v5 = v2[4];
    (*(v2[6] + 8))(v2[7], v2[5]);
    v4 = sub_1002B8B0C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002B8B0C()
{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[27];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  if (v3)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E6A40, &v13);
    *(v8 + 12) = 2048;
    v10 = *(v4 + 16);

    *(v8 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s - Successfully removed %ld followers.", v8, 0x16u);
    sub_100004984(v9);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  (*(v6 + 8))(v5, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002B8D18()
{
  v18 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[27];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];
  if (v3)
  {
    v16 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136446722;
    *(v8 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E6A40, &v17);
    *(v8 + 12) = 2048;
    v15 = v6;
    v11 = *(v4 + 16);

    *(v8 + 14) = v11;

    *(v8 + 22) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v12;
    *v9 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s - Failed removing %ld followers with error: %@", v8, 0x20u);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v10);

    (*(v5 + 8))(v15, v16);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002B8FDC()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 24) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E6A20, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_1002B918C;

  return daemon.getter();
}

uint64_t sub_1002B918C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1002BCCE0(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1002BCCE0(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002B9370;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002B9370(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = *(v4 + 16);
    v6 = sub_1002B98AC;
  }

  else
  {

    *(v4 + 64) = a1;
    v6 = sub_1002B94AC;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002B94AC()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 72) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.follower(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1002B9610;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1002B9610(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 88) = a1;

  v5 = swift_task_alloc();
  *(v3 + 96) = v5;
  *v5 = v4;
  v5[1] = sub_1002B9780;

  return sub_1002B7DB0(a1);
}

uint64_t sub_1002B9780()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10022A8F8, v1, 0);
}

uint64_t sub_1002B98AC()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to get DataManager: %@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002B9A14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_1002B9A5C, v1, 0);
}

uint64_t sub_1002B9A5C()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0000);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "FriendshipService: didDiscover %@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  v10 = v0[3];

  v0[5] = *(v10 + OBJC_IVAR____TtC13findmylocated17FriendshipService_connectionPool);
  sub_10004B564(&qword_1005B0EE0, &qword_1004D2E28);
  sub_10001DF0C(&qword_1005B0EE8, &qword_1005B0EE0, &qword_1004D2E28, &protocol conformance descriptor for XPCClientConnectionPool<A>);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B9C50, v12, v11);
}

uint64_t sub_1002B9C50()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = dispatch thunk of XPCClientConnectionPool.sessions.getter();

  return _swift_task_switch(sub_1002B9CC0, v1, 0);
}

uint64_t sub_1002B9CC0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1002BCCE0(&qword_1005B0EA8, 255, type metadata accessor for FriendshipService, &unk_1004D2C58);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1002B9DFC;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v7, &type metadata for () + 1, &type metadata for () + 1, v2, v5, &unk_1004D2E68, v6, &type metadata for () + 1);
}

uint64_t sub_1002B9DFC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1000161BC, v1, 0);
}

uint64_t sub_1002B9F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002B9FF8, 0, 0);
}

void sub_1002B9FF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[17];
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for FriendshipServiceClient();
    sub_1002BCCE0(&qword_1005B0EB8, v5, type metadata accessor for FriendshipServiceClient, &unk_1004D2CF8);
    Set.Iterator.init(_cocoa:)();
    v4 = v2[2];
    v6 = v2[3];
    v7 = v3[4];
    v8 = v3[5];
    v9 = v3[6];
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v36 = v6;
  v37 = v4;
  v35 = v13;
  while (v4 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v3[15] = v21, type metadata accessor for FriendshipServiceClient(), swift_dynamicCast(), v20 = v3[14], v18 = v8, v19 = v9, !v20))
    {
LABEL_27:
      sub_10000E3F8(v4);

      v34 = v3[1];

      v34();
      return;
    }

LABEL_19:
    v39 = v19;
    v22 = v3[21];
    v38 = v3[20];
    v23 = type metadata accessor for TaskPriority();
    v24 = *(v23 - 8);
    v40 = *(v3 + 9);
    (*(v24 + 56))(v22, 1, 1, v23);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v20;
    *(v25 + 40) = v40;
    sub_100005F04(v22, v38, &qword_1005A9690, &qword_1004C2A00);
    v26 = (*(v24 + 48))(v38, 1, v23);

    v27 = v40;
    v28 = v3[20];
    if (v26 == 1)
    {
      sub_100002CE0(v3[20], &qword_1005A9690, &qword_1004C2A00);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v24 + 8))(v28, v23);
    }

    if (*(v25 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = dispatch thunk of Actor.unownedExecutor.getter();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = *v3[16];
    v33 = swift_allocObject();
    *(v33 + 16) = &unk_1004D2E78;
    *(v33 + 24) = v25;

    if (v31 | v29)
    {
      v14 = v3 + 7;
      v3[7] = 0;
      v3[8] = 0;
      v3[9] = v29;
      v3[10] = v31;
    }

    else
    {
      v14 = 0;
    }

    v15 = v3[21];
    v3[11] = 1;
    v3[12] = v14;
    v3[13] = v32;
    swift_task_create();

    sub_100002CE0(v15, &qword_1005A9690, &qword_1004C2A00);
    v8 = v18;
    v9 = v39;
    v6 = v36;
    v4 = v37;
    v13 = v35;
  }

  v16 = v8;
  v17 = v9;
  v18 = v8;
  if (v9)
  {
LABEL_15:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v4 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v13)
    {
      goto LABEL_27;
    }

    v17 = *(v6 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1002BA4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1002BA4F4, a4, 0);
}

uint64_t sub_1002BA4F4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1002BA5D8;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v2, 0xD00000000000001ALL, 0x80000001004E69A0, sub_1002BD008, v1, &type metadata for () + 1);
}

uint64_t sub_1002BA5D8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1002BA700;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1000161B8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002BA700()
{

  return _swift_task_switch(sub_1002BA768, 0, 0);
}

uint64_t sub_1002BA768()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "didDiscover error: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002BA904(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_1002BA94C, v1, 0);
}

uint64_t sub_1002BA94C()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0000);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "FriendshipService: didUpdate %@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  v10 = v0[3];

  v0[5] = *(v10 + OBJC_IVAR____TtC13findmylocated17FriendshipService_connectionPool);
  sub_10004B564(&qword_1005B0EE0, &qword_1004D2E28);
  sub_10001DF0C(&qword_1005B0EE8, &qword_1005B0EE0, &qword_1004D2E28, &protocol conformance descriptor for XPCClientConnectionPool<A>);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002BAB40, v12, v11);
}

uint64_t sub_1002BAB40()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = dispatch thunk of XPCClientConnectionPool.sessions.getter();

  return _swift_task_switch(sub_1002BABB0, v1, 0);
}

uint64_t sub_1002BABB0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1002BCCE0(&qword_1005B0EA8, 255, type metadata accessor for FriendshipService, &unk_1004D2C58);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1002BACEC;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v7, &type metadata for () + 1, &type metadata for () + 1, v2, v5, &unk_1004D2E38, v6, &type metadata for () + 1);
}

uint64_t sub_1002BACEC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1000161B8, v1, 0);
}

uint64_t sub_1002BAE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002BAEE8, 0, 0);
}

void sub_1002BAEE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[17];
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for FriendshipServiceClient();
    sub_1002BCCE0(&qword_1005B0EB8, v5, type metadata accessor for FriendshipServiceClient, &unk_1004D2CF8);
    Set.Iterator.init(_cocoa:)();
    v4 = v2[2];
    v6 = v2[3];
    v7 = v3[4];
    v8 = v3[5];
    v9 = v3[6];
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v36 = v6;
  v37 = v4;
  v35 = v13;
  while (v4 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v3[15] = v21, type metadata accessor for FriendshipServiceClient(), swift_dynamicCast(), v20 = v3[14], v18 = v8, v19 = v9, !v20))
    {
LABEL_27:
      sub_10000E3F8(v4);

      v34 = v3[1];

      v34();
      return;
    }

LABEL_19:
    v39 = v19;
    v22 = v3[21];
    v38 = v3[20];
    v23 = type metadata accessor for TaskPriority();
    v24 = *(v23 - 8);
    v40 = *(v3 + 9);
    (*(v24 + 56))(v22, 1, 1, v23);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v20;
    *(v25 + 40) = v40;
    sub_100005F04(v22, v38, &qword_1005A9690, &qword_1004C2A00);
    v26 = (*(v24 + 48))(v38, 1, v23);

    v27 = v40;
    v28 = v3[20];
    if (v26 == 1)
    {
      sub_100002CE0(v3[20], &qword_1005A9690, &qword_1004C2A00);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v24 + 8))(v28, v23);
    }

    if (*(v25 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = dispatch thunk of Actor.unownedExecutor.getter();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = *v3[16];
    v33 = swift_allocObject();
    *(v33 + 16) = &unk_1004D2E48;
    *(v33 + 24) = v25;

    if (v31 | v29)
    {
      v14 = v3 + 7;
      v3[7] = 0;
      v3[8] = 0;
      v3[9] = v29;
      v3[10] = v31;
    }

    else
    {
      v14 = 0;
    }

    v15 = v3[21];
    v3[11] = 1;
    v3[12] = v14;
    v3[13] = v32;
    swift_task_create();

    sub_100002CE0(v15, &qword_1005A9690, &qword_1004C2A00);
    v8 = v18;
    v9 = v39;
    v6 = v36;
    v4 = v37;
    v13 = v35;
  }

  v16 = v8;
  v17 = v9;
  v18 = v8;
  if (v9)
  {
LABEL_15:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v4 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v13)
    {
      goto LABEL_27;
    }

    v17 = *(v6 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1002BB3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1002BB3E4, a4, 0);
}

uint64_t sub_1002BB3E4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1002BB4C8;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v2, 0xD000000000000018, 0x80000001004E6980, sub_1002BD004, v1, &type metadata for () + 1);
}

uint64_t sub_1002BB4C8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1002BB5F0;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1000161B8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002BB5F0()
{

  return _swift_task_switch(sub_1002BCFDC, 0, 0);
}

uint64_t sub_1002BB690()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002BB6E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002AB71C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002BB7A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002BB7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1002ABB8C(a1, v4, v5, v6);
}

uint64_t sub_1002BB8E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002AC9A0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002BB9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1002ACE14(a1, v4, v5, v6);
}

unint64_t sub_1002BBA60()
{
  result = qword_1005B0EC8;
  if (!qword_1005B0EC8)
  {
    sub_10004B610(&qword_1005B0060, &qword_1004D15E8);
    sub_1002BCCE0(&qword_1005B0ED0, 255, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    sub_1002BCCE0(&qword_1005B0ED8, 255, &type metadata accessor for FriendshipAction, &protocol conformance descriptor for FriendshipAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0EC8);
  }

  return result;
}

uint64_t sub_1002BBB54(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_1002BAE3C(a1, a2, v6, v7, v8);
}

uint64_t sub_1002BBC18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1002BB3C4(a1, v4, v5, v6, v7);
}

uint64_t sub_1002BBCE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10007B690(a1, v4);
}

uint64_t sub_1002BBD98(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100003690;

  return sub_1002B9F4C(a1, a2, v6, v7, v8);
}

uint64_t sub_1002BBE5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1002BA4D4(a1, v4, v5, v6, v7);
}

uint64_t sub_1002BBF24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100003690;

  return sub_1002B47E0(v2, v3, v4);
}

uint64_t sub_1002BBFEC()
{
  v3 = (&async function pointer to dispatch thunk of FM.XPCSession.connection.getter + async function pointer to dispatch thunk of FM.XPCSession.connection.getter);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1002BC094;

  return v3();
}

uint64_t sub_1002BC094(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1002BC194, 0, 0);
}

uint64_t sub_1002BC194()
{
  v19 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0000);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10000D01C(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Friendship Service: removed connection: %s", v8, 0xCu);
    sub_100004984(v9);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1002BC36C(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1002BC390, 0, 0);
}

uint64_t sub_1002BC390()
{
  v14 = v0;
  if (*(v0 + 24))
  {
    swift_errorRetain();
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 16);
    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0000);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v1, 1);
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 16);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v7 = 136446466;
      *(v7 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E69E0, &v13);
      *(v7 + 12) = 2114;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v10;
      *v8 = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}@", v7, 0x16u);
      sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v9);

      sub_1002BC5B4(v6, 1);
    }

    else
    {

      sub_1002BC5B4(v6, 1);
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1002BC5B4(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1002BC5C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002BC600(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1002B4A34(a1, v4, v5, v6);
}

uint64_t sub_1002BC6B4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_1002B5374(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1002BC77C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002B6370(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002BC844(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002B6CD0(a1, v1 + v5, v7, v8);
}

uint64_t sub_1002BC978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002AFD5C();
}

uint64_t sub_1002BCA14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002AFDEC();
}

uint64_t sub_1002BCAB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002B31DC();
}

uint64_t sub_1002BCB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BCBB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002D40;

  return sub_1002AEEB0(a1, v1);
}

uint64_t sub_1002BCC48()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002AF058(v2);
}

uint64_t sub_1002BCCE0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002BCD28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002AF2A8();
}

uint64_t sub_1002BCDDC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1002BCE30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1002B3DFC(a1, v4, v5, v7, v6);
}

unint64_t sub_1002BCF04()
{
  result = qword_1005B0F18;
  if (!qword_1005B0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0F18);
  }

  return result;
}

unint64_t sub_1002BCF6C()
{
  result = qword_1005B0F20;
  if (!qword_1005B0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0F20);
  }

  return result;
}

uint64_t sub_1002BCFC0(uint64_t a1)
{
  if ((a1 - 1) >= 0x11)
  {
    return 17;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_1002BD010(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002BD030, v1, 0);
}

uint64_t sub_1002BD030()
{
  v11 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0x2873646E65697266, 0xEE00293A68746977, &v10);
    *(v4 + 12) = 2080;
    type metadata accessor for HandleType();
    v5 = Array.description.getter();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s with types: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  v8[1] = sub_1002BD24C;

  return daemon.getter();
}

uint64_t sub_1002BD24C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002BD428;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002BD428(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v6 = v4[3];

    return _swift_task_switch(sub_1001268B0, v6, 0);
  }

  else
  {

    v4[8] = a1;
    v7 = swift_task_alloc();
    v4[9] = v7;
    *v7 = v5;
    v7[1] = sub_1002BD5C0;
    v8 = v4[2];

    return sub_10001C61C(v8, 1);
  }
}

uint64_t sub_1002BD5C0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1002BD6D8, v2, 0);
}

uint64_t sub_1002BD6D8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1002BD760()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x676E6152706F7473, 0xED00002928676E69, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1002BD914;

  return daemon.getter();
}

uint64_t sub_1002BD914(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for NIRangingService(0);
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009560(&qword_1005AD560, type metadata accessor for NIRangingService, &unk_1004D7F50);
  *v3 = v9;
  v3[1] = sub_1002BDAF0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002BDAF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v5 = v3[2];

    return _swift_task_switch(sub_10013A3F0, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[8] = v6;
    *v6 = v4;
    v6[1] = sub_1002BDC78;

    return sub_1003CD35C();
  }
}

uint64_t sub_1002BDC78()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_10013A454;
  }

  else
  {
    v4 = sub_100016108;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002BDDA4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1002BDDC8, v2, 0);
}

uint64_t sub_1002BDDC8()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E6D10, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending %{public}s to server", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1002BDF74;

  return daemon.getter();
}

uint64_t sub_1002BDF74(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CommandManager(0);
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009560(&qword_1005A90C8, type metadata accessor for CommandManager, &unk_1004C23F8);
  *v3 = v9;
  v3[1] = sub_1002BE150;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002BE150(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_1002CE9BC, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[10] = v6;
    *v6 = v4;
    v6[1] = sub_1002BE2DC;
    v7 = v3[2];
    v8 = v3[3];

    return sub_1000669FC(v7, v8);
  }
}

uint64_t sub_1002BE2DC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1002BE408;
  }

  else
  {
    v4 = sub_100253E7C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002BE408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002BE46C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1002BE500;

  return daemon.getter();
}

uint64_t sub_1002BE500(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002BE6DC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002BE6DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = *(v4 + 24);
    v6 = sub_1001268B0;
  }

  else
  {

    *(v4 + 64) = a1;
    v6 = sub_1002BE818;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002BE818()
{
  *(v0 + 72) = sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  *(v0 + 80) = v1;
  v2 = *(v1 - 8);
  *(v0 + 88) = *(v2 + 72);
  v3 = *(v2 + 80);
  *(v0 + 232) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  *(v5 + 16) = xmmword_1004C1900;
  v6 = enum case for HandleType.following(_:);
  v7 = *(v2 + 104);
  *(v0 + 104) = v7;
  *(v0 + 112) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v5 + v4, v6, v1);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_1002BE99C;

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1002BE99C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_1002BEAD0, v2, 0);
}

uint64_t sub_1002BEAD0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = (*(v0 + 232) + 32) & ~*(v0 + 232);
  v4 = swift_allocObject();
  *(v0 + 136) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  v1(v4 + v3, enum case for HandleType.follower(_:), v2);
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_1002BEBC8;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1002BEBC8(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1002BECFC, v2, 0);
}

uint64_t sub_1002BECFC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = (*(v0 + 232) + 32) & ~*(v0 + 232);
  v4 = swift_allocObject();
  *(v0 + 160) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  v1(v4 + v3, enum case for HandleType.futureFollower(_:), v2);
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_1002BEDF4;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1002BEDF4(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1002BEF28, v2, 0);
}

uint64_t sub_1002BEF28()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = (*(v0 + 232) + 32) & ~*(v0 + 232);
  v4 = swift_allocObject();
  *(v0 + 184) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  v1(v4 + v3, enum case for HandleType.futureFollowing(_:), v2);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_1002BF020;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1002BF020(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_1002BF154, v2, 0);
}

uint64_t sub_1002BF154()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = (*(v0 + 232) + 32) & ~*(v0 + 232);
  v4 = swift_allocObject();
  *(v0 + 208) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  v1(v4 + v3, enum case for HandleType.pendingOffer(_:), v2);
  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  *v5 = v0;
  v5[1] = sub_1002BF24C;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1002BF24C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_1002BF380, v2, 0);
}

uint64_t sub_1002BF380()
{
  FriendContainer.init(followers:following:futureFollowers:futureFollowing:pendingOffers:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002BF404(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ClientOrigin();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for RequestOrigin();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for GroupID();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = type metadata accessor for Friend();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v8 = type metadata accessor for FollowerState();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v9 = type metadata accessor for FollowingState();
  v3[29] = v9;
  v3[30] = *(v9 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v10 = type metadata accessor for Handle();
  v3[34] = v10;
  v3[35] = *(v10 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[39] = v11;
  *v11 = v3;
  v11[1] = sub_1002BF7E8;

  return daemon.getter();
}

uint64_t sub_1002BF7E8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[40] = a1;

  v3 = swift_task_alloc();
  v2[41] = v3;
  v4 = type metadata accessor for Daemon();
  v2[42] = v4;
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[43] = v6;
  v7 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002BF9C8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002BF9C8(uint64_t a1)
{
  v3 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_1002C0D40;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_1002BFAF0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002BFAF0()
{
  FriendshipCanShareLocationRequest.handle.getter();
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  *v1 = v0;
  v1[1] = sub_1002BFB8C;

  return daemon.getter();
}

uint64_t sub_1002BFB8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 376) = a1;

  v5 = swift_task_alloc();
  *(v3 + 384) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_100009560(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v5 = v4;
  v5[1] = sub_1002BFD40;
  v8 = *(v2 + 344);
  v9 = *(v2 + 336);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1002BFD40(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[49] = a1;
  v3[50] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_1002C0EA8, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[51] = v6;
    *v6 = v4;
    v6[1] = sub_1002BFEC8;

    return sub_1001BE02C();
  }
}

uint64_t sub_1002BFEC8(char a1)
{
  v2 = *(*v1 + 352);
  *(*v1 + 508) = a1;

  return _swift_task_switch(sub_1002BFFE0, v2, 0);
}

uint64_t sub_1002BFFE0()
{
  *(v0 + 416) = sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  *(v0 + 424) = v1;
  v2 = *(v1 - 8);
  *(v0 + 432) = *(v2 + 72);
  v3 = *(v2 + 80);
  *(v0 + 504) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 440) = v5;
  *(v5 + 16) = xmmword_1004C1900;
  v6 = enum case for HandleType.following(_:);
  v7 = *(v2 + 104);
  *(v0 + 448) = v7;
  *(v0 + 456) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v5 + v4, v6, v1);
  v8 = swift_task_alloc();
  *(v0 + 464) = v8;
  *v8 = v0;
  v8[1] = sub_1002C0164;

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1002C0164(uint64_t a1)
{
  v2 = *(*v1 + 352);
  *(*v1 + 472) = a1;

  return _swift_task_switch(sub_1002C0298, v2, 0);
}

uint64_t sub_1002C0298()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = (*(v0 + 504) + 32) & ~*(v0 + 504);
  v4 = swift_allocObject();
  *(v0 + 480) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  v1(v4 + v3, enum case for HandleType.follower(_:), v2);
  v5 = swift_task_alloc();
  *(v0 + 488) = v5;
  *v5 = v0;
  v5[1] = sub_1002C0390;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1002C0390(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 496) = a1;

  return _swift_task_switch(sub_1002C04C4, v2, 0);
}

uint64_t sub_1002C04C4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 304);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  *(swift_task_alloc() + 16) = v2;
  sub_10044FE2C(sub_1002CE9A0, v1, v5);

  v6 = *(v4 + 48);
  if (v6(v5, 1, v3) == 1)
  {
    v7 = *(v0 + 508);
    v8 = *(v0 + 224);
    v9 = *(v0 + 208);
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    sub_100002CE0(*(v0 + 144), &qword_1005A9188, &unk_1004D80D0);
    v12 = &enum case for FollowerState.notShared(_:);
    if (!v7)
    {
      v12 = &enum case for FollowerState.notEligible(_:);
    }

    (*(v11 + 104))(v9, *v12, v10);
    (*(v11 + 32))(v8, v9, v10);
  }

  else
  {
    (*(*(v0 + 160) + 32))(*(v0 + 176), *(v0 + 144), *(v0 + 152));
    CanShareLocation = FriendshipCanShareLocationRequest.isFromGroup.getter();
    if (CanShareLocation == 2 || (CanShareLocation & 1) == 0)
    {
      v24 = *(v0 + 224);
      v25 = *(v0 + 184);
      v26 = *(v0 + 192);
      (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
      (*(v26 + 104))(v24, enum case for FollowerState.shared(_:), v25);
    }

    else
    {
      v14 = *(v0 + 112);
      v15 = *(v0 + 96);
      v16 = *(v0 + 72);
      v17 = *(v0 + 80);
      v18 = *(v0 + 64);
      v19 = *(v0 + 48);
      v89 = *(v0 + 40);
      FriendshipCanShareLocationRequest.origin.getter();
      RequestOrigin.origin.getter();
      (*(v17 + 8))(v15, v16);
      v20 = (*(v19 + 88))(v18, v89);
      v21 = *(v14 + 104);
      v22 = *(v0 + 128);
      v23 = *(v0 + 104);
      if (v20 == enum case for ClientOrigin.messagesApp(_:))
      {
        v21(v22, enum case for GroupID.group(_:), v23);
      }

      else
      {
        v27 = *(v0 + 64);
        v28 = *(v0 + 40);
        v29 = *(v0 + 48);
        v21(v22, enum case for GroupID.oneToOne(_:), v23);
        (*(v29 + 8))(v27, v28);
      }

      v30 = *(v0 + 296);
      v32 = *(v0 + 272);
      v31 = *(v0 + 280);
      Friend.handle.getter();
      v33 = Handle.expiresByGroupId.getter();
      (*(v31 + 8))(v30, v32);
      if (*(v33 + 16))
      {
        sub_1001FDE8C(*(v0 + 128));
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      v36 = *(v0 + 176);
      v37 = *(v0 + 152);
      v38 = *(v0 + 160);
      (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
      (*(v38 + 8))(v36, v37);

      v39 = *(v0 + 192);
      if (v35)
      {
        (*(v39 + 104))(*(v0 + 216), enum case for FollowerState.shared(_:), *(v0 + 184));
      }

      else
      {
        if (*(v0 + 508) == 1)
        {
          v40 = &enum case for FollowerState.notShared(_:);
        }

        else
        {
          v40 = &enum case for FollowerState.notEligible(_:);
        }

        (*(v39 + 104))(*(v0 + 216), *v40, *(v0 + 184));
      }

      (*(*(v0 + 192) + 32))(*(v0 + 224), *(v0 + 216), *(v0 + 184));
    }
  }

  v41 = *(v0 + 472);
  v42 = *(v0 + 304);
  v43 = *(v0 + 152);
  v44 = *(v0 + 136);
  *(swift_task_alloc() + 16) = v42;
  sub_10044FE2C(sub_1002CE9A0, v41, v44);

  if (v6(v44, 1, v43) == 1)
  {
    v45 = *(v0 + 264);
    v46 = *(v0 + 232);
    v47 = *(v0 + 240);
    sub_100002CE0(*(v0 + 136), &qword_1005A9188, &unk_1004D80D0);
    v48 = &enum case for FollowingState.notShared(_:);
LABEL_25:
    (*(v47 + 104))(v45, *v48, v46);
    goto LABEL_36;
  }

  (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 136), *(v0 + 152));
  v49 = FriendshipCanShareLocationRequest.isFromGroup.getter();
  if (v49 == 2)
  {
    v45 = *(v0 + 264);
    v46 = *(v0 + 232);
    v47 = *(v0 + 240);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    v48 = &enum case for FollowingState.shared(_:);
    goto LABEL_25;
  }

  v50 = v49;
  v51 = *(v0 + 112);
  v53 = *(v0 + 80);
  v52 = *(v0 + 88);
  v54 = *(v0 + 72);
  v56 = *(v0 + 48);
  v55 = *(v0 + 56);
  v57 = *(v0 + 40);
  FriendshipCanShareLocationRequest.origin.getter();
  RequestOrigin.origin.getter();
  (*(v53 + 8))(v52, v54);
  v58 = (*(v56 + 88))(v55, v57);
  v59 = *(v51 + 104);
  if (v58 == enum case for ClientOrigin.messagesApp(_:))
  {
    if (v50)
    {
      v60 = &enum case for GroupID.group(_:);
    }

    else
    {
      v60 = &enum case for GroupID.oneToOne(_:);
    }

    v59(*(v0 + 120), *v60, *(v0 + 104));
  }

  else
  {
    v62 = *(v0 + 48);
    v61 = *(v0 + 56);
    v63 = *(v0 + 40);
    v59(*(v0 + 120), enum case for GroupID.oneToOne(_:), *(v0 + 104));
    (*(v62 + 8))(v61, v63);
  }

  v65 = *(v0 + 280);
  v64 = *(v0 + 288);
  v66 = *(v0 + 272);
  Friend.handle.getter();
  v67 = Handle.expiresByGroupId.getter();
  (*(v65 + 8))(v64, v66);
  v68 = &enum case for FollowingState.notShared(_:);
  if (*(v67 + 16))
  {
    sub_1001FDE8C(*(v0 + 120));
    if (v69)
    {
      v68 = &enum case for FollowingState.shared(_:);
    }
  }

  v71 = *(v0 + 256);
  v70 = *(v0 + 264);
  v72 = *(v0 + 232);
  v73 = *(v0 + 240);
  v75 = *(v0 + 160);
  v74 = *(v0 + 168);
  v76 = *(v0 + 152);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  (*(v75 + 8))(v74, v76);

  (*(v73 + 104))(v71, *v68, v72);
  (*(v73 + 32))(v70, v71, v72);
LABEL_36:
  v88 = *(v0 + 304);
  v77 = *(v0 + 280);
  v78 = *(v0 + 264);
  v87 = *(v0 + 272);
  v79 = *(v0 + 248);
  v81 = *(v0 + 232);
  v80 = *(v0 + 240);
  v86 = *(v0 + 224);
  v83 = *(v0 + 184);
  v82 = *(v0 + 192);
  (*(v82 + 16))(*(v0 + 200));
  (*(v80 + 16))(v79, v78, v81);
  FriendshipState.init(followerState:followingState:)();

  (*(v82 + 8))(v86, v83);
  (*(v80 + 8))(v78, v81);
  (*(v77 + 8))(v88, v87);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_1002C0D40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C0EA8()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C103C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Handle();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for Friend();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_10004B564(&qword_1005B0F38, &qword_1004D3340);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for GroupID();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[19] = v9;
  *v9 = v5;
  v9[1] = sub_1002C1268;

  return daemon.getter();
}

uint64_t sub_1002C1268(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1002C1444;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002C1444(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v4 = v3[6];
    v5 = sub_1002C1DD0;
  }

  else
  {
    v6 = v3[6];

    v5 = sub_1002C156C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002C156C()
{
  if (!v0[5])
  {
    v2 = v0[16];
    v1 = v0[17];
    v3 = v0[15];
    (*(v2 + 104))(v1, enum case for GroupID.oneToOne(_:), v3);
    GroupID.rawValue.getter();
    (*(v2 + 8))(v1, v3);
  }

  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];

  GroupID.init(rawValue:)();
  v7 = *(v5 + 48);
  v8 = v7(v6, 1, v4);
  v9 = v0[18];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  if (v8 == 1)
  {
    (*(v10 + 104))(v9, enum case for GroupID.defaultId(_:), v0[15]);
    if (v7(v12, 1, v11) != 1)
    {
      sub_100002CE0(v0[14], &qword_1005B0F38, &qword_1004D3340);
    }
  }

  else
  {
    (*(v10 + 32))(v9, v0[14], v0[15]);
  }

  v13 = v0[22];

  return _swift_task_switch(sub_1002C1710, v13, 0);
}

uint64_t sub_1002C1710()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 192) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.follower(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_1002C1874;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1002C1874(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_1002C19A8, v2, 0);
}

uint64_t sub_1002C19A8()
{
  v1 = v0[26];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[3];
  *(swift_task_alloc() + 16) = v5;
  sub_10044FE2C(sub_1002CE9A0, v1, v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[18];
    v7 = v0[15];
    v8 = v0[16];
    sub_100002CE0(v0[10], &qword_1005A9188, &unk_1004D80D0);
    sub_10006DC90();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();

    (*(v8 + 8))(v6, v7);

    v10 = v0[1];
    goto LABEL_10;
  }

  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  Friend.handle.getter();
  v14 = Handle.expiresByGroupId.getter();
  (*(v12 + 8))(v11, v13);
  if (!*(v14 + 16))
  {
    v27 = v0[18];
    v28 = v0[15];
    v29 = v0[16];
    v31 = v0[12];
    v30 = v0[13];
    v32 = v0[11];

    (*(v31 + 8))(v30, v32);
    (*(v29 + 8))(v27, v28);
LABEL_8:
    v24 = type metadata accessor for Date();
    v25 = *(v24 - 8);
    v26 = 1;
    goto LABEL_9;
  }

  v15 = sub_1001FDE8C(v0[18]);
  v16 = v0[18];
  v18 = v0[15];
  v17 = v0[16];
  v19 = v0[12];
  v20 = v0[13];
  v21 = v0[11];
  if ((v22 & 1) == 0)
  {

    (*(v19 + 8))(v20, v21);
    (*(v17 + 8))(v16, v18);
    goto LABEL_8;
  }

  v23 = v15;
  v34 = *(v14 + 56);
  v35 = v0[2];
  v36 = v0[15];
  v37 = v0[18];
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v35, v34 + *(v25 + 72) * v23, v24);

  (*(v19 + 8))(v20, v21);
  (*(v17 + 8))(v37, v36);

  v26 = 0;
LABEL_9:
  (*(v25 + 56))(v0[2], v26, 1, v24);

  v10 = v0[1];
LABEL_10:

  return v10();
}

uint64_t sub_1002C1DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C1E7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for FriendshipRequestResult();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1002C1F78, v2, 0);
}

uint64_t sub_1002C1F78()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 72) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E6D50, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending %{public}s to server", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1002C2128;

  return daemon.getter();
}

uint64_t sub_1002C2128(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[11] = a1;

  v3 = swift_task_alloc();
  v2[12] = v3;
  v4 = type metadata accessor for Daemon();
  v2[13] = v4;
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[14] = v6;
  v7 = sub_100009560(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v3 = v9;
  v3[1] = sub_1002C2308;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002C2308(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_1002C2F58, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[17] = v6;
    *v6 = v4;
    v6[1] = sub_1002C2490;

    return sub_1001BE02C();
  }
}

uint64_t sub_1002C2490(char a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_1002C25A8, v2, 0);
}

uint64_t sub_1002C25A8(uint64_t a1)
{
  v11 = v1;
  if (*(v1 + 200) == 1)
  {
    v2 = swift_task_alloc();
    *(v1 + 144) = v2;
    *v2 = v1;
    v2[1] = sub_1002C27A8;

    return daemon.getter();
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E6D50, &v10);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Manatee is not available!", v5, 0xCu);
      sub_100004984(v6);
    }

    sub_10006DC90();
    swift_allocError();
    *v7 = 4;
    swift_willThrow();

    v8 = *(v1 + 8);

    return v8();
  }
}

uint64_t sub_1002C27A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 152) = a1;

  v5 = swift_task_alloc();
  *(v3 + 160) = v5;
  v6 = type metadata accessor for CommandManager(0);
  v7 = sub_100009560(&qword_1005A90C8, type metadata accessor for CommandManager, &unk_1004C23F8);
  *v5 = v4;
  v5[1] = sub_1002C295C;
  v8 = *(v2 + 112);
  v9 = *(v2 + 104);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1002C295C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_1002C2FD0, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[23] = v6;
    *v6 = v4;
    v6[1] = sub_1002C2AE8;
    v7 = v3[2];
    v8 = v3[3];

    return sub_10005D170(v7, v8);
  }
}

uint64_t sub_1002C2AE8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1002C3054;
  }

  else
  {
    v4 = sub_1002C2C14;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002C2C14()
{
  v20 = v0;
  (*(v0[7] + 16))(v0[8], v0[2], v0[6]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E6D50, &v19);
    *(v7 + 12) = 2080;
    sub_100009560(&qword_1005A91D8, &type metadata accessor for FriendshipRequestResult, &protocol conformance descriptor for FriendshipRequestResult);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
    v11 = sub_10000D01C(v8, v10, &v19);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s result %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  if (FriendshipRequest.shouldShowAlertIfThisDeviceIsNotBeingUsedToShareLocation.getter())
  {
    v13 = v0[4];
    v12 = v0[5];
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = sub_100009560(&qword_1005B0EA8, type metadata accessor for FriendshipService, &unk_1004D2C58);
    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v15;
    v16[4] = v13;
    swift_retain_n();
    sub_1001D7F30(0, 0, v12, &unk_1004D3330, v16);
  }

  v17 = v0[1];

  return v17();
}