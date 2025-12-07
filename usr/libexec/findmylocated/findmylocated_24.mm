uint64_t sub_100281614()
{
  (*(v0[22] + 8))(v0[24], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100281718()
{
  v1 = v0[11];

  sub_100002CE0(v1, &qword_1005B0B00, &qword_1004D26A0);
  (*(v0[22] + 8))(v0[24], v0[21]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100281840()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[11];

  sub_100002CE0(v4, &qword_1005B0B00, &qword_1004D26A0);
  (*(v3 + 8))(v1, v2);
  (*(v0[7] + 8))(v0[8], v0[6]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100281988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Fence.TriggerID();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Fence.ID();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for Fence();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100281B04, v3, 0);
}

uint64_t sub_100281B04()
{
  v28 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF88);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[10];
    v13 = v0[11];
    v26 = v7;
    v14 = v0[9];
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E66E0, &v27);
    *(v15 + 12) = 2082;
    v25 = v11;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v25);
    v19 = sub_10000D01C(v16, v18, &v27);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v6, v26, "%{public}s: Triggering fence %{public}s awaiting approval", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  Fence.id.getter();
  Fence.TriggerID.init()();
  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = sub_100281E0C;
  v21 = v0[11];
  v22 = v0[8];
  v23 = v0[4];

  return sub_100289330(v21, v23, v22);
}

uint64_t sub_100281E0C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 40);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100281FDC, v7, 0);
}

uint64_t sub_100281FDC()
{
  (*(v0[7] + 56))(v0[2], 1, 1, v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100282084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for Fence.AcceptanceStatus();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for Fence.TriggerPosition();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Fence.ID();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for Fence();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v9 = type metadata accessor for Fence.Variant();
  v4[26] = v9;
  v4[27] = *(v9 - 8);
  v4[28] = swift_task_alloc();
  v10 = type metadata accessor for Fence.TriggerID();
  v4[29] = v10;
  v11 = *(v10 - 8);
  v4[30] = v11;
  v4[31] = *(v11 + 64);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1002823D0, v3, 0);
}

uint64_t sub_1002823D0(uint64_t a1)
{
  v127 = v1;
  v3 = v1[27];
  v2 = v1[28];
  v4 = v1[26];
  Fence.TriggerID.init()();
  Fence.variant.getter();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == enum case for Fence.Variant.oneTime(_:))
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v6 = v1[25];
    v7 = v1[17];
    v8 = v1[18];
    v9 = v1[3];
    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFF88);
    (*(v8 + 16))(v6, v9, v7);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v1[33];
    v15 = v1[29];
    v16 = v1[30];
    v17 = v1[25];
    v19 = v1[17];
    v18 = v1[18];
    if (v13)
    {
      v123 = v1[29];
      v21 = v1[15];
      v20 = v1[16];
      loga = v11;
      v22 = v1[14];
      v112 = v1[17];
      v23 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v126 = v117;
      *v23 = 136446210;
      v120 = v14;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v109 = v12;
      v26 = v25;
      (*(v21 + 8))(v20, v22);
      (*(v18 + 8))(v17, v112);
      v27 = sub_10000D01C(v24, v26, &v126);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, loga, v109, "Trying to trigger a .pendingHidden one-time fence id %{public}s", v23, 0xCu);
      sub_100004984(v117);

      (*(v16 + 8))(v120, v123);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      (*(v16 + 8))(v14, v15);
    }

    v50 = v1[27];
    v49 = v1[28];
    v51 = v1[26];
    (*(v1[30] + 56))(v1[2], 1, 1, v1[29]);
    (*(v50 + 8))(v49, v51);

    v52 = v1[1];

    return v52();
  }

  if (v5 == enum case for Fence.Variant.recurring(_:))
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v28 = v1[24];
    v29 = v1[17];
    v30 = v1[18];
    v31 = v1[3];
    v32 = type metadata accessor for Logger();
    sub_10000A6F0(v32, qword_1005DFF88);
    v121 = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v124 = *(v30 + 16);
    v124(v28, v31, v29);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v1[24];
    v37 = v1[17];
    v38 = v1[18];
    if (!v35)
    {

      v46 = *(v38 + 8);
      v118 = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v46)(v36, v37);
      goto LABEL_23;
    }

    v39 = v1[15];
    v40 = v1[16];
    v41 = v1[14];
    v110 = v1[17];
    v42 = swift_slowAlloc();
    log = swift_slowAlloc();
    v126 = log;
    *v42 = 136446210;
    v113 = v34;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    (*(v39 + 8))(v40, v41);
    v46 = *(v38 + 8);
    v118 = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v46)(v36, v110);
    v47 = sub_10000D01C(v43, v45, &v126);

    *(v42 + 4) = v47;
    v48 = "Triggering recurring fence (%{public}s) for the first time";
  }

  else
  {
    if (v5 != enum case for Fence.Variant.scheduled(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v55 = v1[12];
    v54 = v1[13];
    v56 = v1[11];
    (*(v55 + 16))(v54, v1[4], v56);
    v57 = (*(v55 + 88))(v54, v56);
    v58 = enum case for Fence.TriggerPosition.undetermined(_:);
    (*(v55 + 8))(v54, v56);
    if (v57 != v58)
    {
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v90 = v1[22];
      v91 = v1[17];
      v92 = v1[18];
      v93 = v1[3];
      v94 = type metadata accessor for Logger();
      sub_10000A6F0(v94, qword_1005DFF88);
      (*(v92 + 16))(v90, v93, v91);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      v97 = os_log_type_enabled(v95, v96);
      v98 = v1[22];
      v99 = v1[17];
      v100 = v1[18];
      if (v97)
      {
        v119 = v1[17];
        v101 = v1[15];
        v102 = v1[16];
        v103 = v1[14];
        v104 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v126 = v125;
        *v104 = 136446210;
        v122 = v96;
        Fence.id.getter();
        sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v107 = v106;
        (*(v101 + 8))(v102, v103);
        (*(v100 + 8))(v98, v119);
        v108 = sub_10000D01C(v105, v107, &v126);

        *(v104 + 4) = v108;
        _os_log_impl(&_mh_execute_header, v95, v122, "Fence (%{public}s) triggered by CoreLocation before fence is updated to pending", v104, 0xCu);
        sub_100004984(v125);
      }

      else
      {

        (*(v100 + 8))(v98, v99);
      }

      Fence.id.getter();
      v85 = swift_task_alloc();
      v1[34] = v85;
      *v85 = v1;
      v86 = sub_10028304C;
      goto LABEL_24;
    }

    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v59 = v1[23];
    v60 = v1[17];
    v61 = v1[18];
    v62 = v1[3];
    v63 = type metadata accessor for Logger();
    sub_10000A6F0(v63, qword_1005DFF88);
    v121 = (v61 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v124 = *(v61 + 16);
    v124(v59, v62, v60);
    v33 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    v65 = os_log_type_enabled(v33, v64);
    v66 = v1[23];
    v67 = v1[17];
    v68 = v1[18];
    if (!v65)
    {

      v46 = *(v68 + 8);
      v118 = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v46)(v66, v67);
      goto LABEL_23;
    }

    v69 = v1[15];
    v70 = v1[16];
    v71 = v1[14];
    v111 = v1[17];
    v42 = swift_slowAlloc();
    log = swift_slowAlloc();
    v126 = log;
    *v42 = 136446210;
    v113 = v64;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    v74 = v73;
    (*(v69 + 8))(v70, v71);
    v46 = *(v68 + 8);
    v118 = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v46)(v66, v111);
    v75 = sub_10000D01C(v72, v74, &v126);

    *(v42 + 4) = v75;
    v48 = "Triggering scheduled fence (%{public}s) for the first time";
  }

  _os_log_impl(&_mh_execute_header, v33, v113, v48, v42, 0xCu);
  sub_100004984(log);

LABEL_23:
  logb = v46;
  v1[35] = v46;
  v1[36] = v124;
  v76 = v1[21];
  v77 = v1[17];
  v79 = v1[9];
  v78 = v1[10];
  v80 = v1[8];
  v81 = v1[3];
  (*(v1[27] + 8))(v1[28], v1[26]);
  v82 = swift_allocBox();
  v84 = v83;
  v1[37] = v82;
  v1[38] = v83;
  v1[39] = v121;
  v124(v83, v81, v77);
  (*(v79 + 104))(v78, enum case for Fence.AcceptanceStatus.pending(_:), v80);
  Fence.update(acceptanceStatus:)();
  (*(v79 + 8))(v78, v80);
  v124(v76, v84, v77);
  Fence.id.getter();
  v1[40] = v118;
  (logb)(v76, v77);
  v85 = swift_task_alloc();
  v1[41] = v85;
  *v85 = v1;
  v86 = sub_100283338;
LABEL_24:
  v85[1] = v86;
  v87 = v1[33];
  v88 = v1[16];
  v89 = v1[4];

  return sub_100289330(v88, v89, v87);
}

uint64_t sub_10028304C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1002831B8, v4, 0);
}

uint64_t sub_1002831B8()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[2];
  (*(v2 + 32))(v6, v0[33], v1);
  (*(v2 + 56))(v6, 0, 1, v1);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100283338()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1002834A4, v4, 0);
}

uint64_t sub_1002834A4()
{
  (*(v0 + 288))(*(v0 + 152), *(v0 + 304), *(v0 + 136));
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_100283550;
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  return sub_100261468(v2, v3);
}

uint64_t sub_100283550()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 136);
  *(*v1 + 344) = v0;

  v3(v4, v5);
  if (v0)
  {
    v6 = *(v2 + 40);
    v7 = sub_1002839A8;
  }

  else
  {
    v8 = *(v2 + 40);
    (*(v2 + 280))(*(v2 + 160), *(v2 + 136));
    v7 = sub_1002836F0;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1002836F0()
{
  v1 = v0[37];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[29];
  v7 = v0[7];
  v17 = v3;
  v18 = v7;
  v19 = v0[6];
  v20 = v2;
  v8 = v0[5];
  v21 = v0[2];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v4 + 16))(v3, v2, v6);
  v10 = sub_100009518(&qword_1005AF4A8, type metadata accessor for FenceService, &unk_1004D2208);
  v11 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 2) = v8;
  *(v13 + 3) = v10;
  *(v13 + 4) = v1;
  *(v13 + 5) = v8;
  v14 = *(v4 + 32);
  v14(&v13[v11], v17, v6);
  *&v13[v12] = v19;
  swift_retain_n();

  sub_10020D620(0, 0, v18, &unk_1004D2850, v13);

  v14(v21, v20, v6);
  (*(v4 + 56))(v21, 0, 1, v6);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002839A8()
{
  (*(v0[30] + 8))(v0[33], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100283AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for UUID();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for MessagingOptions();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = type metadata accessor for Destination();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for Fence.Variant();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v9 = type metadata accessor for Fence.TriggerPosition();
  v4[26] = v9;
  v4[27] = *(v9 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v10 = type metadata accessor for Fence.TriggerID();
  v4[30] = v10;
  v4[31] = *(v10 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = type metadata accessor for FenceTriggerEnvelopeV1(0);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v11 = type metadata accessor for PersonHandle();
  v4[36] = v11;
  v4[37] = *(v11 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v12 = type metadata accessor for Fence.ID();
  v4[40] = v12;
  v4[41] = *(v12 - 8);
  v4[42] = swift_task_alloc();
  v13 = type metadata accessor for Fence();
  v4[43] = v13;
  v4[44] = *(v13 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v14 = type metadata accessor for Fence.Participant();
  v4[49] = v14;
  v4[50] = *(v14 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();

  return _swift_task_switch(sub_100283FB4, v3, 0);
}

uint64_t sub_100283FB4(uint64_t a1)
{
  v164 = v1;
  v3 = v1[51];
  v2 = v1[52];
  v4 = v1[49];
  v5 = v1[50];
  Fence.findee.getter();
  (*(v5 + 104))(v3, enum case for Fence.Participant.me(_:), v4);
  v6 = static Fence.Participant.== infix(_:_:)();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  v161 = v1;
  if (v6)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v8 = v1[47];
    v9 = v1[48];
    v10 = v1[43];
    v11 = v1[44];
    v12 = v1[9];
    v13 = type metadata accessor for Logger();
    v1[53] = sub_10000A6F0(v13, qword_1005DFF88);
    v14 = *(v11 + 16);
    (v14)(v9, v12, v10);
    v143 = v14;
    (v14)(v8, v12, v10);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v1[47];
    v19 = v1[48];
    v20 = v1[43];
    v21 = v1[44];
    v22 = v1;
    if (v17)
    {
      v140 = v15;
      v138 = v16;
      v24 = v1[41];
      v23 = v22[42];
      v25 = v22[40];
      v26 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *v26 = 136446467;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v24 + 8))(v23, v25);
      v148 = *(v21 + 8);
      v148(v19, v20);
      v30 = sub_10000D01C(v27, v29, &v162);

      *(v26 + 4) = v30;
      buf = v26;
      *(v26 + 12) = 2081;
      v31 = Fence.others.getter();
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = v22[37];
        v163 = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v32, 0);
        v34 = v163;
        v35 = *(v33 + 16);
        v33 += 16;
        v156 = v35;
        v36 = v31 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
        v150 = *(v33 + 56);
        v37 = (v33 - 8);
        do
        {
          v38 = v161[39];
          v39 = v161[36];
          v156(v38, v36, v39);
          v40 = PersonHandle.id.getter();
          v42 = v41;
          (*v37)(v38, v39);
          v163 = v34;
          v44 = v34[2];
          v43 = v34[3];
          if (v44 >= v43 >> 1)
          {
            sub_10002B3C0((v43 > 1), v44 + 1, 1);
            v34 = v163;
          }

          v34[2] = v44 + 1;
          v45 = &v34[2 * v44];
          v45[4] = v40;
          v45[5] = v42;
          v36 += v150;
          --v32;
        }

        while (v32);
      }

      else
      {

        v34 = _swiftEmptyArrayStorage;
      }

      v66 = v161;
      v69 = v161[47];
      v70 = v161[43];
      v161[7] = v34;
      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      sub_10001DF0C(&qword_1005ABF48, &qword_1005A9630, &qword_1004C5680, &protocol conformance descriptor for [A]);
      v71 = BidirectionalCollection<>.joined(separator:)();
      v73 = v72;

      v148(v69, v70);
      v74 = sub_10000D01C(v71, v73, &v162);

      *(buf + 14) = v74;
      _os_log_impl(&_mh_execute_header, v140, v138, "Sending IDS trigger of fence %{public}s to %{private}s", buf, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v65 = *(v21 + 8);
      v65(v18, v20);
      v148 = v65;
      v65(v19, v20);
      v66 = v1;
    }

    v75 = v66[34];
    v152 = v66[33];
    v76 = v66[31];
    v77 = v66[32];
    v78 = v66[29];
    v79 = v66[30];
    bufa = v77;
    v80 = v66[27];
    v158 = v66[28];
    v81 = v66[26];
    v139 = v66[10];
    v82 = v66[8];
    v143();
    v83 = *(v76 + 16);
    v83(v77, v82, v79);
    v84 = *(v80 + 16);
    v84(v78, v139, v81);
    Fence.id.getter();
    v145 = v152[5];
    v83((v75 + v145), bufa, v79);
    v85 = v152[6];
    v84(v75 + v85, v78, v81);
    v153 = v152[7];
    sub_1002787C8(v75 + v153);
    v86 = v84;
    v84(v158, v78, v81);
    v87 = (*(v80 + 88))(v158, v81);
    if (v87 == enum case for Fence.TriggerPosition.inside(_:))
    {
      v88 = v66[46];
      v146 = v66[43];
      v159 = v66[34];
      v154 = v66[33];
      v89 = v66[31];
      v141 = v66[32];
      v91 = v66[29];
      v90 = v66[30];
      v93 = v66[27];
      v92 = v66[28];
      v95 = v66[25];
      v94 = v66[26];
      v98 = v66 + 22;
      v96 = v66[22];
      v97 = v98[1];
      v99 = *(v93 + 8);
      v99(v92, v94);
      Fence.variant.getter();
      v99(v91, v94);
      (*(v89 + 8))(v141, v90);
      v148(v88, v146);
      LODWORD(v88) = (*(v97 + 88))(v95, v96);
      LODWORD(v89) = enum case for Fence.Variant.scheduled(_:);
      (*(v97 + 8))(v95, v96);
      v100 = *(v154 + 32);
      if (v88 == v89)
      {
        *(v159 + v100) = 0;
LABEL_34:
        sub_10029350C(v161[34], v161[35], type metadata accessor for FenceTriggerEnvelopeV1);
        v119 = swift_task_alloc();
        v161[54] = v119;
        *v119 = v161;
        v119[1] = sub_100284F28;

        return daemon.getter();
      }

      v110 = 2;
LABEL_33:
      *(v159 + v100) = v110;
      goto LABEL_34;
    }

    if (v87 == enum case for Fence.TriggerPosition.outside(_:))
    {
      v101 = v161[46];
      v147 = v161[43];
      v159 = v161[34];
      v155 = v161[33];
      v102 = v161[31];
      v142 = v161[32];
      v104 = v161[29];
      v103 = v161[30];
      v105 = v161[26];
      v107 = v161[23];
      v106 = v161[24];
      v108 = v161[22];
      v109 = *(v161[27] + 8);
      v109(v161[28], v105);
      Fence.variant.getter();
      v109(v104, v105);
      (*(v102 + 8))(v142, v103);
      v148(v101, v147);
      LODWORD(v101) = (*(v107 + 88))(v106, v108);
      LODWORD(v102) = enum case for Fence.Variant.scheduled(_:);
      (*(v107 + 8))(v106, v108);
      v100 = *(v155 + 32);
      if (v101 == v102)
      {
        v110 = 1;
      }

      else
      {
        v110 = 3;
      }

      goto LABEL_33;
    }

    v160 = v161[46];
    v144 = v161[43];
    if (v87 == enum case for Fence.TriggerPosition.undetermined(_:))
    {
      v112 = v161[33];
      v111 = v161[34];
      v114 = v161[31];
      v113 = v161[32];
      v115 = v161[30];
      v116 = v161[28];
      v117 = v161[26];
      v118 = *(v161[27] + 8);
      v118(v161[29], v117);
      (*(v114 + 8))(v113, v115);
      v148(v160, v144);
      *(v111 + *(v112 + 32)) = 4;
      v118(v116, v117);
      goto LABEL_34;
    }

    bufb = v161[40];
    v133 = v161[41];
    v134 = v161[34];
    v120 = v161[29];
    v130 = v161[30];
    v131 = v161[32];
    v121 = v161[27];
    v132 = v161[28];
    v128 = v161[26];
    v129 = v161[31];
    v122 = type metadata accessor for Session.FenceError();
    sub_100009518(&qword_1005B0BB8, &type metadata accessor for Session.FenceError, &protocol conformance descriptor for Session.FenceError);
    swift_allocError();
    v124 = v123;
    v86(v123, v120, v128);
    (*(*(v122 - 8) + 104))(v124, enum case for Session.FenceError.unrecognizedTriggerPosition(_:), v122);
    swift_willThrow();
    v125 = *(v121 + 8);
    v125(v120, v128);
    v126 = *(v129 + 8);
    v126(v131, v130);
    v148(v160, v144);
    v125(v132, v128);
    (*(v133 + 8))(v134, bufb);
    v126(v75 + v145, v130);
    v125(v75 + v85, v128);
    v127 = type metadata accessor for Date();
    (*(*(v127 - 8) + 8))(v75 + v153, v127);

    v67 = v161[1];
  }

  else
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v47 = v1[44];
    v46 = v1[45];
    v48 = v1[43];
    v49 = v1[9];
    v50 = type metadata accessor for Logger();
    sub_10000A6F0(v50, qword_1005DFF88);
    (*(v47 + 16))(v46, v49, v48);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    v53 = os_log_type_enabled(v51, v52);
    v55 = v1[44];
    v54 = v1[45];
    v56 = v1[43];
    if (v53)
    {
      v57 = v1[42];
      v149 = v1[43];
      v58 = v1[41];
      v59 = v1[40];
      v60 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v163 = v157;
      *v60 = 136446210;
      v151 = v52;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v58 + 8))(v57, v59);
      (*(v55 + 8))(v54, v149);
      v64 = sub_10000D01C(v61, v63, &v163);

      *(v60 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v51, v151, "Not sending IDS trigger of fence %{public}s since we are the finder", v60, 0xCu);
      sub_100004984(v157);
    }

    else
    {

      (*(v55 + 8))(v54, v56);
    }

    v67 = v1[1];
  }

  return v67();
}

uint64_t sub_100284F28(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 440) = a1;

  v3 = swift_task_alloc();
  *(v2 + 448) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v6 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005A90E8, &qword_1005A90E0, &qword_1004C2490, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_100285114;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100285114(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 456) = a1;
  *(v4 + 464) = v1;

  v5 = *(v3 + 88);

  if (v1)
  {
    v6 = sub_100286080;
  }

  else
  {
    v6 = sub_100285264;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100285264(uint64_t a1)
{
  v2 = Fence.others.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1[37];
    v5 = v1[20];
    sub_1002393FC(0, v3, 0);
    v7 = *(v4 + 16);
    v6 = v4 + 16;
    v8 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v21 = *(v6 + 56);
    v22 = v7;
    do
    {
      v22(v1[38], v8, v1[36]);
      v1[2] = PersonHandle.id.getter();
      v1[3] = v9;
      v1[4] = 64;
      v1[5] = 0xE100000000000000;
      sub_1000246F4();
      v10 = StringProtocol.components<A>(separatedBy:)();

      v11 = *(v10 + 16);

      PersonHandle.id.getter();
      if (v11 == 2)
      {
        Destination.init(email:)();
      }

      else
      {
        Destination.init(phoneNumber:)();
      }

      (*(v6 - 8))(v1[38], v1[36]);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_1002393FC((v12 > 1), v13 + 1, 1);
      }

      v14 = v1[21];
      v15 = v1[19];
      _swiftEmptyArrayStorage[2] = v13 + 1;
      (*(v5 + 32))(_swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v14, v15);
      v8 += v21;
      --v3;
    }

    while (v3);
  }

  v1[59] = _swiftEmptyArrayStorage;
  v1[6] = _swiftEmptyArrayStorage;
  v16 = swift_task_alloc();
  v1[60] = v16;
  v17 = sub_10004B564(&qword_1005A9288, &qword_1004D9EB0);
  v18 = sub_10001DF0C(&qword_1005A9290, &qword_1005A9288, &qword_1004D9EB0, &protocol conformance descriptor for [A]);
  *v16 = v1;
  v16[1] = sub_100285550;
  v19 = v1[57];

  return Sequence.asyncFilter(_:)(&unk_1004D2840, v19, v17, v18);
}

uint64_t sub_100285550(uint64_t a1)
{
  v3 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[11];

    return _swift_task_switch(sub_100285688, v5, 0);
  }
}

uint64_t sub_100285688()
{
  v1 = v0[61];
  v2 = *(v0[59] + 16);

  v3 = v2 - *(v1 + 16);
  if (v3 >= 1)
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "Sending IDS trigger contains invalid destinations count: %ld", v6, 0xCu);
    }
  }

  (*(v0[13] + 56))(v0[15], 1, 1, v0[12]);

  sub_100293190(_swiftEmptyArrayStorage);
  sub_100293190(_swiftEmptyArrayStorage);
  MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();
  v7 = *(v1 + 16);

  if (v7)
  {
    v8 = v0[62];
    v9 = sub_1002E7000();
    v10 = v8;
    if (!v8)
    {
      v11 = v0[57];
      sub_10028EE90(v9);
      v0[63] = v12;

      return _swift_task_switch(sub_100285A50, v11, 0);
    }
  }

  else
  {
    sub_10007CF70();
    v10 = swift_allocError();
    swift_willThrow();
  }

  v13 = v0[35];
  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[16];
  v18 = v0[9];
  v17 = v0[10];
  swift_errorRetain();
  v19 = sub_10004D4A8(v18, v17, v10, 1);
  v21 = v20;
  v23 = v22;

  sub_10001157C(v19, v21, v23);

  swift_willThrow();

  (*(v15 + 8))(v14, v16);
  sub_100293A10(v13, type metadata accessor for FenceTriggerEnvelopeV1);

  v24 = v0[1];

  return v24();
}

uint64_t sub_100285A50()
{
  v1 = swift_task_alloc();
  v0[64] = v1;
  *v1 = v0;
  v1[1] = sub_100285AF8;
  v2 = v0[63];
  v3 = v0[18];
  v4 = v0[14];

  return InternetMessaging.send(dictionary:messageOptions:)(v4, v2, v3);
}

uint64_t sub_100285AF8()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = v2[57];
    v4 = sub_100285E0C;
  }

  else
  {
    v6 = v2[13];
    v5 = v2[14];
    v8 = v2 + 11;
    v7 = v2[11];
    (*(v6 + 8))(v5, v8[1]);

    v4 = sub_100285C38;
    v3 = v7;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100285C38()
{
  v1 = v0[35];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = sub_10004D4A8(v0[9], v0[10], 0, 0);
  sub_10001157C(v5, v6, v7);

  (*(v3 + 8))(v2, v4);
  sub_100293A10(v1, type metadata accessor for FenceTriggerEnvelopeV1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100285E0C()
{
  v1 = *(v0 + 88);

  return _swift_task_switch(sub_100285E78, v1, 0);
}

uint64_t sub_100285E78()
{
  v1 = v0[65];
  v2 = v0[35];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v7 = v0[9];
  v6 = v0[10];
  swift_errorRetain();
  v8 = sub_10004D4A8(v7, v6, v1, 1);
  v10 = v9;
  v12 = v11;

  sub_10001157C(v8, v10, v12);

  swift_willThrow();

  (*(v4 + 8))(v3, v5);
  sub_100293A10(v2, type metadata accessor for FenceTriggerEnvelopeV1);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100286080()
{
  sub_100293A10(*(v0 + 280), type metadata accessor for FenceTriggerEnvelopeV1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100286200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Fence.ID();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Fence();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for Fence.Variant();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100286394, v3, 0);
}

uint64_t sub_100286394(uint64_t a1)
{
  v51 = v1;
  v2 = v1[16];
  v3 = v1[13];
  v4 = v1[14];
  Fence.variant.getter();
  v5 = (*(v4 + 88))(v2, v3);
  v6 = v5 == enum case for Fence.Variant.oneTime(_:) || v5 == enum case for Fence.Variant.recurring(_:);
  v7 = v6;
  if (!v6)
  {
    if (v5 == enum case for Fence.Variant.scheduled(_:))
    {
      v10 = swift_task_alloc();
      v1[17] = v10;
      *v10 = v1;
      v10[1] = sub_100286864;
      v11 = v1[4];
      v13 = v1[2];
      v12 = v1[3];

      return sub_10028F418(v13, v12, v11);
    }

    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v15 = v1[11];
    v14 = v1[12];
    v16 = v1[9];
    v17 = v1[10];
    v18 = v1[2];
    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFF88);
    v20 = *(v17 + 16);
    v20(v14, v18, v16);
    v20(v15, v18, v16);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v1[14];
      v24 = v1[15];
      log = v21;
      v26 = v1[12];
      v25 = v1[13];
      v27 = v1[10];
      v43 = v1[9];
      v44 = v1[8];
      v45 = v1[11];
      v46 = v1[6];
      v47 = v1[7];
      v28 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v28 = 136446466;
      v48 = v22;
      Fence.variant.getter();
      sub_100009518(&qword_1005B0BA8, &type metadata accessor for Fence.Variant, &protocol conformance descriptor for Fence.Variant);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v23 + 8))(v24, v25);
      v32 = *(v27 + 8);
      v32(v26, v43);
      v33 = sub_10000D01C(v29, v31, &v50);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v47 + 8))(v44, v46);
      v32(v45, v43);
      v37 = sub_10000D01C(v34, v36, &v50);

      *(v28 + 14) = v37;
      _os_log_impl(&_mh_execute_header, log, v48, "Unrecognized fence variant %{public}s for fence id %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v39 = v1[11];
      v38 = v1[12];
      v41 = v1[9];
      v40 = v1[10];

      v42 = *(v40 + 8);
      v42(v39, v41);
      v42(v38, v41);
    }
  }

  (*(v1[14] + 8))(v1[16], v1[13]);

  v8 = v1[1];

  return v8(v7);
}

uint64_t sub_100286864(char a1)
{
  v4 = *v2;
  *(v4 + 144) = v1;

  v5 = *(v4 + 40);
  if (v1)
  {
    v6 = sub_100286A64;
  }

  else
  {
    *(v4 + 152) = a1 & 1;
    v6 = sub_1002869A4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002869A4()
{
  v1 = *(v0 + 152);
  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100286A64()
{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_100286B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v9 = type metadata accessor for Fence.ID();
  v5[6] = v9;
  v5[7] = *(v9 - 8);
  v5[8] = swift_task_alloc();
  v10 = type metadata accessor for Fence.TriggerPosition();
  v5[9] = v10;
  v5[10] = *(v10 - 8);
  v5[11] = swift_task_alloc();
  v11 = type metadata accessor for Fence.TriggerID();
  v5[12] = v11;
  v5[13] = *(v11 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v12 = type metadata accessor for Fence();
  v5[16] = v12;
  v5[17] = *(v12 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v13 = type metadata accessor for LocalUserNotificationCategory();
  v5[20] = v13;
  v5[21] = *(v13 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = type metadata accessor for FenceNotification(0);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v14 = swift_task_alloc();
  v5[27] = v14;
  *v14 = v5;
  v14[1] = sub_100286E18;

  return sub_10025DC1C(a1, a3, a4);
}

uint64_t sub_100286E18(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 224) = v2;

  if (v2)
  {
    v7 = v6[5];
    v8 = sub_100287224;
  }

  else
  {
    v6[29] = a2;
    v6[30] = a1;
    v8 = sub_100286F58;
    v7 = 0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100286F58()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v20 = v0[9];
  v21 = v0[11];
  v8 = v0[3];
  v19 = v0[4];
  v9 = v0[2];
  (*(v0[21] + 104))(v0[22], enum case for LocalUserNotificationCategory.geofenceTrigger(_:), v0[20]);
  (*(v3 + 16))(v1, v9, v2);
  (*(v6 + 16))(v4, v8, v5);
  (*(v7 + 16))(v21, v19, v20);
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_1002870B8;
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[26];
  v14 = v0[22];
  v15 = v0[19];
  v16 = v0[15];
  v17 = v0[11];

  return sub_1004504F0(v13, v14, v15, v16, v17, v11, v12);
}

uint64_t sub_1002870B8()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002879AC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 264) = v3;
    *v3 = v2;
    v3[1] = sub_10028767C;

    return daemon.getter();
  }
}

uint64_t sub_100287224()
{
  v41 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v8 = v0[2];
  v7 = v0[3];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFF88);
  (*(v1 + 16))(v2, v8, v3);
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  if (v12)
  {
    v36 = v0[12];
    v34 = v0[16];
    v20 = v0[7];
    v19 = v0[8];
    v39 = v11;
    v21 = v0[6];
    v35 = v0[14];
    v22 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v22 = 136446722;
    v37 = v10;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v20 + 8))(v19, v21);
    (*(v14 + 8))(v13, v34);
    v26 = sub_10000D01C(v23, v25, &v40);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v17 + 8))(v35, v36);
    v30 = sub_10000D01C(v27, v29, &v40);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2114;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v31;
    *v38 = v31;
    _os_log_impl(&_mh_execute_header, v37, v39, "Failed to post transparency notification for fence %{public}s with trigger %{public}s: %{public}@", v22, 0x20u);
    sub_100002CE0(v38, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_10028767C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 272) = a1;

  v3 = swift_task_alloc();
  *(v2 + 280) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for UserNotificationService();
  v6 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009518(&qword_1005AD530, type metadata accessor for UserNotificationService, &unk_1004D9448);
  *v3 = v9;
  v3[1] = sub_100287858;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100287858(uint64_t a1)
{
  v4 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = sub_1002881B4;
  }

  else
  {
    v6 = sub_100287E20;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002879C8()
{
  v41 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v8 = v0[2];
  v7 = v0[3];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFF88);
  (*(v1 + 16))(v2, v8, v3);
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  if (v12)
  {
    v36 = v0[12];
    v34 = v0[16];
    v20 = v0[7];
    v19 = v0[8];
    v39 = v11;
    v21 = v0[6];
    v35 = v0[14];
    v22 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v22 = 136446722;
    v37 = v10;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v20 + 8))(v19, v21);
    (*(v14 + 8))(v13, v34);
    v26 = sub_10000D01C(v23, v25, &v40);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v17 + 8))(v35, v36);
    v30 = sub_10000D01C(v27, v29, &v40);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2114;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v31;
    *v38 = v31;
    _os_log_impl(&_mh_execute_header, v37, v39, "Failed to post transparency notification for fence %{public}s with trigger %{public}s: %{public}@", v22, 0x20u);
    sub_100002CE0(v38, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_100287E20()
{
  sub_1002939A8(v0[26], v0[25], type metadata accessor for FenceNotification);
  if (qword_1005A8598 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[5];
  sub_1002939A8(v1, v2, type metadata accessor for FenceNotification);
  v4 = objc_allocWithZone(UNUserNotificationCenter);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithBundleIdentifier:v5];

  v7 = sub_1002925EC(v2, type metadata accessor for FenceNotification, type metadata accessor for FenceNotification, type metadata accessor for FenceNotification);
  LocalUserNotificationCategory.rawValue.getter();
  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v9);

  v10 = v7;
  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() requestWithIdentifier:v11 content:v10 trigger:0 destinations:7];

  [v6 addNotificationRequest:v12 withCompletionHandler:0];
  sub_100293A10(v2, type metadata accessor for FenceNotification);
  sub_100293A10(v1, type metadata accessor for FenceNotification);

  return _swift_task_switch(sub_1002880AC, v3, 0);
}

uint64_t sub_1002880AC()
{
  v1 = *(v0 + 208);

  sub_100293A10(v1, type metadata accessor for FenceNotification);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002881B4()
{
  v41 = v0;
  sub_100293A10(v0[26], type metadata accessor for FenceNotification);
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v8 = v0[2];
  v7 = v0[3];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFF88);
  (*(v1 + 16))(v2, v8, v3);
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  if (v12)
  {
    v36 = v0[12];
    v34 = v0[16];
    v20 = v0[7];
    v19 = v0[8];
    v39 = v11;
    v21 = v0[6];
    v35 = v0[14];
    v22 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v22 = 136446722;
    v37 = v10;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v20 + 8))(v19, v21);
    (*(v14 + 8))(v13, v34);
    v26 = sub_10000D01C(v23, v25, &v40);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v17 + 8))(v35, v36);
    v30 = sub_10000D01C(v27, v29, &v40);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2114;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v31;
    *v38 = v31;
    _os_log_impl(&_mh_execute_header, v37, v39, "Failed to post transparency notification for fence %{public}s with trigger %{public}s: %{public}@", v22, 0x20u);
    sub_100002CE0(v38, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_100288628(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2[4] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_1002886F4;

  return daemon.getter();
}

uint64_t sub_1002886F4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[6] = a1;

  v3 = swift_task_alloc();
  v2[7] = v3;
  v4 = type metadata accessor for Daemon();
  v2[8] = v4;
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[9] = v6;
  v7 = sub_100009518(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_1002888D4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002888D4(uint64_t a1)
{
  v3 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_100289248, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[12] = v5;
    *v5 = v3;
    v5[1] = sub_100288A48;

    return daemon.getter();
  }
}

uint64_t sub_100288A48(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 104) = a1;

  v5 = swift_task_alloc();
  *(v3 + 112) = v5;
  v6 = type metadata accessor for FenceService(0);
  v7 = sub_100009518(&qword_1005A9278, type metadata accessor for FenceService, &unk_1004D21A8);
  *v5 = v4;
  v5[1] = sub_100288BFC;
  v8 = *(v2 + 72);
  v9 = *(v2 + 64);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100288BFC(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_1002892B8;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_100288D24;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100288D24()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = sub_100009518(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_100288E5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v1, v3, 0xD000000000000010, 0x80000001004E66A0, sub_10029332C, v4, &type metadata for () + 1);
}

uint64_t sub_100288E5C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_100289164;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_100288F84;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100288FA0()
{
  v1 = v0[15];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_100009518(&qword_1005AF4A8, type metadata accessor for FenceService, &unk_1004D2208);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  swift_retain_n();
  sub_10020D620(0, 0, v2, &unk_1004D0730, v6);

  return _swift_task_switch(sub_1002890E8, v3, 0);
}

uint64_t sub_1002890E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100289164()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1002891D0, v1, 0);
}

uint64_t sub_1002891D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100289248()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002892B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100289330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for FenceTriggerRecord(0);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for Fence.ID();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100289424, v3, 0);
}

uint64_t sub_100289424()
{
  v22 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[11] = sub_10000A6F0(v5, qword_1005DFF88);
  v6 = *(v2 + 16);
  v0[12] = v6;
  v0[13] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_10000D01C(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "saveFenceTrigger: %{public}s", v13, 0xCu);
    sub_100004984(v14);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = swift_task_alloc();
  v0[14] = v19;
  *v19 = v0;
  v19[1] = sub_1002896A0;

  return daemon.getter();
}

uint64_t sub_1002896A0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 120) = a1;

  v3 = swift_task_alloc();
  *(v2 + 128) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009518(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_10028987C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10028987C(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = sub_10028A00C;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_1002899A4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002899A4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 96))(v2, *(v0 + 16), *(v0 + 64));
  v6 = *(v3 + 20);
  v7 = type metadata accessor for Fence.TriggerID();
  (*(*(v7 - 8) + 16))(v2 + v6, v4, v7);
  v8 = *(v3 + 24);
  v9 = type metadata accessor for Fence.TriggerPosition();
  (*(*(v9 - 8) + 16))(v2 + v8, v5, v9);

  return _swift_task_switch(sub_100289AB4, v1, 0);
}

uint64_t sub_100289AB4()
{
  v1 = v0[17];
  v2 = v0[7];
  v3 = sub_100009518(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_100289BEC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v1, v3, 0xD000000000000015, 0x80000001004E66C0, sub_100293334, v4, &type metadata for () + 1);
}

uint64_t sub_100289BEC()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_100289E08;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_100289D14;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100289D14()
{
  v1 = *(v0 + 40);
  sub_100293A10(*(v0 + 56), type metadata accessor for FenceTriggerRecord);

  return _swift_task_switch(sub_100289D94, v1, 0);
}

uint64_t sub_100289D94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100289E08()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  sub_100293A10(v1, type metadata accessor for FenceTriggerRecord);

  return _swift_task_switch(sub_100289E94, v2, 0);
}

uint64_t sub_100289E94()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "saveFenceTrigger: ERROR %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10028A00C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "saveFenceTrigger: ERROR %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10028A184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = type metadata accessor for Fence();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v9 = type metadata accessor for Fence.ID();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_projectBox();

  return _swift_task_switch(sub_10028A328, a5, 0);
}

uint64_t sub_10028A328()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_10028A3F4;

  return sub_100291918(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_10028A3F4()
{
  v2 = *v1;

  v3 = v2[20];
  v4 = v2[19];
  v5 = v2[18];
  v6 = v2[9];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v7 = sub_100293A78;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v7 = sub_10028A5A0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10028A5A0()
{
  v26 = v0;
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
    v4 = v0[21];
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[14];
    v23 = v0[15];
    v9 = v0[11];
    v8 = v0[12];
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v10 = 136446210;
    swift_beginAccess();
    (*(v8 + 16))(v7, v4, v9);
    Fence.id.getter();
    (*(v8 + 8))(v7, v9);
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v6 + 8))(v5, v23);
    v14 = sub_10000D01C(v11, v13, &v25);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Posting trigger confirmation notification for fence: %{public}s", v10, 0xCu);
    sub_100004984(v24);
  }

  v15 = v0[21];
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[11];
  swift_beginAccess();
  (*(v17 + 16))(v16, v15, v18);
  v19 = swift_task_alloc();
  v0[23] = v19;
  *v19 = v0;
  v19[1] = sub_10028A884;
  v20 = v0[13];
  v21 = v0[10];

  return sub_10028AADC(v20, v21);
}

uint64_t sub_10028A884()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  v5[24] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[9];

    return _swift_task_switch(sub_10028AA50, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_10028AA50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028AADC(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = type metadata accessor for FenceConfirmationNotification(0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v4 = type metadata accessor for Destination();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v5 = type metadata accessor for PersonHandle();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v6 = type metadata accessor for Fence.ID();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for Fence.TriggerID();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v8 = type metadata accessor for Fence();
  v3[34] = v8;
  v3[35] = *(v8 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_10028AD94, v2, 0);
}

uint64_t sub_10028AD94()
{
  v71 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[28];
  v6 = v0[29];
  v8 = v0[12];
  v7 = v0[13];
  v9 = type metadata accessor for Logger();
  v0[39] = sub_10000A6F0(v9, qword_1005DFF88);
  v10 = *(v3 + 16);
  v0[40] = v10;
  v0[41] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v8, v2);
  v11 = *(v6 + 16);
  v0[42] = v11;
  v0[43] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v7, v5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[38];
  v17 = v0[34];
  v16 = v0[35];
  v18 = v0[33];
  v19 = v0[28];
  v20 = v0[29];
  if (v14)
  {
    v65 = v0[28];
    v59 = v0[34];
    v22 = v0[26];
    v21 = v0[27];
    v23 = v0[25];
    v63 = v0[33];
    v24 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v24 = 136446466;
    log = v12;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v13;
    v27 = v26;
    (*(v22 + 8))(v21, v23);
    (*(v16 + 8))(v15, v59);
    v28 = sub_10000D01C(v25, v27, &v70);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v32 = *(v20 + 8);
    v32(v63, v65);
    v33 = sub_10000D01C(v29, v31, &v70);

    *(v24 + 14) = v33;
    _os_log_impl(&_mh_execute_header, log, v61, "Will post confirmation notification for fence %{public}s with trigger %{public}s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v32 = *(v20 + 8);
    v32(v18, v19);
    (*(v16 + 8))(v15, v17);
  }

  v0[44] = v32;
  v34 = Fence.others.getter();
  if (*(v34 + 16))
  {
    (*(v0[23] + 16))(v0[24], v34 + ((*(v0[23] + 80) + 32) & ~*(v0[23] + 80)), v0[22]);

    sub_100279044(v35);
    v36 = swift_task_alloc();
    v0[45] = v36;
    *v36 = v0;
    v36[1] = sub_10028B424;

    return sub_1004559B4(1);
  }

  else
  {

    v38 = v0[42];
    v39 = v0[32];
    v40 = v0[28];
    v64 = v0[29];
    v41 = v0[27];
    v66 = v0[26];
    loga = v0[44];
    v69 = v0[25];
    v42 = v0[18];
    v43 = v0[15];
    v44 = v0[13];
    v45 = sub_10025F1DC(v0[12], 0, 0);
    v60 = v46;
    v62 = v45;

    Fence.id.getter();
    v38(v39, v44, v40);
    v47 = enum case for LocalUserNotificationCategory.geofenceConfirmation(_:);
    v48 = type metadata accessor for LocalUserNotificationCategory();
    (*(*(v48 - 8) + 104))(v42, v47, v48);
    *(v42 + v43[5]) = 2;
    v49 = (v42 + v43[8]);
    *v49 = 0;
    v49[1] = 0xE000000000000000;
    v50 = Fence.ID.uuidString.getter();
    v52 = v51;
    v53 = (v42 + v43[9]);
    *v53 = v62;
    v53[1] = v60;
    v54 = (v42 + v43[7]);
    *v54 = v50;
    v54[1] = v51;

    Fence.TriggerID.uuid.getter();
    sub_10004B564(&qword_1005B0BC0, &qword_1004D2868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C1900;
    *(inited + 32) = 0x6E6F697461636F6CLL;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEF64497472656C41;
    *(inited + 48) = v50;
    *(inited + 56) = v52;
    v56 = sub_100207B7C(inited);
    swift_setDeallocating();
    sub_100002CE0(inited + 32, &qword_1005B0088, &qword_1004D38F0);
    v0[48] = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (loga)(v39, v40);
    v57 = *(v66 + 8);
    v0[49] = v57;
    v0[50] = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v57(v41, v69);
    *(v42 + v43[10]) = v56;
    v58 = swift_task_alloc();
    v0[51] = v58;
    *v58 = v0;
    v58[1] = sub_10028B870;

    return daemon.getter();
  }
}

uint64_t sub_10028B424(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v5 = *(*v2 + 160);
  v6 = *(*v2 + 152);
  v7 = *(*v2 + 112);
  *(v3 + 368) = a1;
  *(v3 + 376) = a2;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_10028B598, v7, 0);
}

uint64_t sub_10028B598()
{
  v1 = v0[47];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v2 = v0[42];
  v3 = v0[32];
  v4 = v0[28];
  v26 = v0[29];
  v23 = v0[27];
  v27 = v0[26];
  v28 = v0[44];
  v29 = v0[25];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[13];
  v8 = sub_10025F1DC(v0[12], v0[46], v1);
  v24 = v9;
  v25 = v8;

  Fence.id.getter();
  v2(v3, v7, v4);
  v10 = enum case for LocalUserNotificationCategory.geofenceConfirmation(_:);
  v11 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v11 - 8) + 104))(v5, v10, v11);
  *(v5 + v6[5]) = 2;
  v12 = (v5 + v6[8]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = Fence.ID.uuidString.getter();
  v15 = v14;
  v16 = (v5 + v6[9]);
  *v16 = v25;
  v16[1] = v24;
  v17 = (v5 + v6[7]);
  *v17 = v13;
  v17[1] = v14;

  Fence.TriggerID.uuid.getter();
  sub_10004B564(&qword_1005B0BC0, &qword_1004D2868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEF64497472656C41;
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  v19 = sub_100207B7C(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005B0088, &qword_1004D38F0);
  v0[48] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v3, v4);
  v20 = *(v27 + 8);
  v0[49] = v20;
  v0[50] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v23, v29);
  *(v5 + v6[10]) = v19;
  v21 = swift_task_alloc();
  v0[51] = v21;
  *v21 = v0;
  v21[1] = sub_10028B870;

  return daemon.getter();
}

uint64_t sub_10028B870(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 416) = a1;

  v3 = swift_task_alloc();
  *(v2 + 424) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for UserNotificationService();
  v6 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009518(&qword_1005AD530, type metadata accessor for UserNotificationService, &unk_1004D9448);
  *v3 = v9;
  v3[1] = sub_10028BA4C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10028BA4C(uint64_t a1)
{
  v4 = *v2;
  v4[54] = a1;
  v4[55] = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = sub_10028C210;
  }

  else
  {
    v6 = sub_10028BBA0;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10028BBA0()
{
  sub_1002939A8(v0[18], v0[17], type metadata accessor for FenceConfirmationNotification);
  if (qword_1005A8598 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  sub_1002939A8(v1, v2, type metadata accessor for FenceConfirmationNotification);
  v4 = objc_allocWithZone(UNUserNotificationCenter);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithBundleIdentifier:v5];

  v7 = sub_1002925EC(v2, type metadata accessor for FenceConfirmationNotification, type metadata accessor for FenceConfirmationNotification, type metadata accessor for FenceConfirmationNotification);
  LocalUserNotificationCategory.rawValue.getter();
  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v9);

  v10 = v7;
  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() requestWithIdentifier:v11 content:v10 trigger:0 destinations:7];

  [v6 addNotificationRequest:v12 withCompletionHandler:0];
  sub_100293A10(v2, type metadata accessor for FenceConfirmationNotification);
  sub_100293A10(v1, type metadata accessor for FenceConfirmationNotification);

  return _swift_task_switch(sub_10028BE28, v3, 0);
}

uint64_t sub_10028BE28()
{
  v37 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 104);
  (*(v0 + 320))(*(v0 + 296), *(v0 + 96), *(v0 + 272));
  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v30 = *(v0 + 392);
    v34 = *(v0 + 352);
    v7 = *(v0 + 296);
    v8 = *(v0 + 280);
    v31 = *(v0 + 272);
    v9 = *(v0 + 216);
    v32 = *(v0 + 224);
    v33 = *(v0 + 248);
    v10 = *(v0 + 200);
    v35 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v11 = 136446466;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v30(v9, v10);
    (*(v8 + 8))(v7, v31);
    v15 = sub_10000D01C(v12, v14, &v36);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v34(v33, v32);
    v19 = sub_10000D01C(v16, v18, &v36);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "Confirmation notification posted for fence %{public}s with trigger %{public}s", v11, 0x16u);
    swift_arrayDestroy();

    v20 = v35;
  }

  else
  {
    v21 = *(v0 + 352);
    v22 = *(v0 + 296);
    v23 = *(v0 + 272);
    v24 = *(v0 + 280);
    v25 = *(v0 + 248);
    v26 = *(v0 + 224);
    v27 = *(v0 + 144);

    v21(v25, v26);
    (*(v24 + 8))(v22, v23);
    v20 = v27;
  }

  sub_100293A10(v20, type metadata accessor for FenceConfirmationNotification);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10028C210()
{
  v40 = v0;
  v37 = v0[42];
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[30];
  v5 = v0[28];
  v7 = v0[12];
  v6 = v0[13];
  sub_100293A10(v0[18], type metadata accessor for FenceConfirmationNotification);
  v1(v2, v7, v3);
  v37(v4, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v32 = v0[49];
    v36 = v0[44];
    v10 = v0[35];
    v11 = v0[36];
    v33 = v0[34];
    v34 = v0[28];
    v35 = v0[30];
    v12 = v0[27];
    v13 = v0[25];
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v14 = 136446722;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v32(v12, v13);
    (*(v10 + 8))(v11, v33);
    v18 = sub_10000D01C(v15, v17, &v39);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v36(v35, v34);
    v22 = sub_10000D01C(v19, v21, &v39);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v23;
    *v38 = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to post confirmation notification for fence %{public}s with trigger %{public}s: %{public}@", v14, 0x20u);
    sub_100002CE0(v38, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[44];
    v26 = v0[35];
    v25 = v0[36];
    v27 = v0[34];
    v28 = v0[30];
    v29 = v0[28];

    v24(v28, v29);
    (*(v26 + 8))(v25, v27);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_10028C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v9 = type metadata accessor for Fence.TriggerPosition();
  v5[7] = v9;
  v5[8] = *(v9 - 8);
  v5[9] = swift_task_alloc();
  v10 = type metadata accessor for LocalUserNotificationCategory();
  v5[10] = v10;
  v5[11] = *(v10 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for FenceNotification(0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v11 = type metadata accessor for Fence.ID();
  v5[17] = v11;
  v5[18] = *(v11 - 8);
  v5[19] = swift_task_alloc();
  v12 = type metadata accessor for Fence.TriggerID();
  v5[20] = v12;
  v5[21] = *(v12 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v13 = type metadata accessor for Fence();
  v5[27] = v13;
  v5[28] = *(v13 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v14 = swift_task_alloc();
  v5[34] = v14;
  *v14 = v5;
  v14[1] = sub_10028C99C;

  return sub_100286200(a1, a3, a4);
}

uint64_t sub_10028C99C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v4 + 48);
    *(v4 + 424) = a1 & 1;

    return _swift_task_switch(sub_10028CBC8, v8, 0);
  }
}

uint64_t sub_10028CBC8()
{
  v83 = v0;
  if (*(v0 + 424) == 1)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 264);
    v2 = *(v0 + 216);
    v3 = *(v0 + 224);
    v4 = *(v0 + 208);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = type metadata accessor for Logger();
    *(v0 + 280) = sub_10000A6F0(v9, qword_1005DFF88);
    v10 = *(v3 + 16);
    *(v0 + 288) = v10;
    *(v0 + 296) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v1, v8, v2);
    v11 = *(v6 + 16);
    *(v0 + 304) = v11;
    *(v0 + 312) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v4, v7, v5);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 264);
    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = *(v0 + 208);
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);
    if (v14)
    {
      v72 = *(v0 + 216);
      v22 = *(v0 + 144);
      v21 = *(v0 + 152);
      v78 = *(v0 + 208);
      v23 = *(v0 + 136);
      v76 = *(v0 + 160);
      v24 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v24 = 136446466;
      log = v12;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v13;
      v27 = v26;
      (*(v22 + 8))(v21, v23);
      v28 = *(v16 + 8);
      v28(v15, v72);
      v29 = sub_10000D01C(v25, v27, &v82);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2082;
      sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v33 = *(v20 + 8);
      v33(v78, v76);
      v34 = sub_10000D01C(v30, v32, &v82);

      *(v24 + 14) = v34;
      _os_log_impl(&_mh_execute_header, log, v74, "Should post confirmation notification for fence %{public}s with trigger %{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v33 = *(v20 + 8);
      v33(v18, v19);
      v28 = *(v16 + 8);
      v28(v15, v17);
    }

    *(v0 + 320) = v28;
    *(v0 + 328) = v33;
    v65 = swift_task_alloc();
    *(v0 + 336) = v65;
    *v65 = v0;
    v65[1] = sub_10028D38C;
    v66 = *(v0 + 32);
    v67 = *(v0 + 40);
    v68 = *(v0 + 16);

    return sub_10025DC1C(v68, v66, v67);
  }

  else
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 240);
    v36 = *(v0 + 216);
    v37 = *(v0 + 224);
    v38 = *(v0 + 184);
    v39 = *(v0 + 160);
    v40 = *(v0 + 168);
    v42 = *(v0 + 16);
    v41 = *(v0 + 24);
    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005DFF88);
    (*(v37 + 16))(v35, v42, v36);
    (*(v40 + 16))(v38, v41, v39);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 240);
    v48 = *(v0 + 216);
    v49 = *(v0 + 224);
    v50 = *(v0 + 184);
    v51 = *(v0 + 160);
    v52 = *(v0 + 168);
    if (v46)
    {
      v73 = *(v0 + 216);
      v54 = *(v0 + 144);
      v53 = *(v0 + 152);
      v79 = *(v0 + 184);
      v55 = *(v0 + 136);
      v77 = *(v0 + 160);
      v56 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v56 = 136446466;
      loga = v44;
      Fence.id.getter();
      sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v45;
      v59 = v58;
      (*(v54 + 8))(v53, v55);
      (*(v49 + 8))(v47, v73);
      v60 = sub_10000D01C(v57, v59, &v82);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2082;
      sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v52 + 8))(v79, v77);
      v64 = sub_10000D01C(v61, v63, &v82);

      *(v56 + 14) = v64;
      _os_log_impl(&_mh_execute_header, loga, v75, "Should not post trigger received notification for fence %{public}s with trigger %{public}s", v56, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v52 + 8))(v50, v51);
      (*(v49 + 8))(v47, v48);
    }

    v70 = *(v0 + 8);
    v71 = *(v0 + 424);

    return v70(v71);
  }
}

uint64_t sub_10028D38C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 344) = v2;

  if (v2)
  {
    v7 = v6[6];
    v8 = sub_10028D794;
  }

  else
  {
    v6[44] = a2;
    v6[45] = a1;
    v8 = sub_10028D4CC;
    v7 = 0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10028D4CC()
{
  v21 = v0[38];
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[20];
  v20 = v0[9];
  v6 = v0[8];
  v19 = v0[7];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  (*(v0[11] + 104))(v0[12], enum case for LocalUserNotificationCategory.geofenceTriggerReceived(_:), v0[10]);
  v1(v2, v9, v3);
  v21(v4, v8, v5);
  (*(v6 + 16))(v20, v7, v19);
  v10 = swift_task_alloc();
  v0[46] = v10;
  *v10 = v0;
  v10[1] = sub_10028D628;
  v12 = v0[44];
  v11 = v0[45];
  v13 = v0[32];
  v14 = v0[25];
  v15 = v0[16];
  v16 = v0[12];
  v17 = v0[9];

  return sub_1004504F0(v15, v16, v13, v14, v17, v11, v12);
}

uint64_t sub_10028D628()
{
  v2 = *v1;
  *(v2 + 376) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10028DF10, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 384) = v3;
    *v3 = v2;
    v3[1] = sub_10028DBE0;

    return daemon.getter();
  }
}

uint64_t sub_10028D794()
{
  v37 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 24);
  (*(v0 + 288))(*(v0 + 232), *(v0 + 16), *(v0 + 216));
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 328);
  v9 = *(v0 + 232);
  v34 = *(v0 + 216);
  v35 = *(v0 + 320);
  v10 = *(v0 + 176);
  v11 = *(v0 + 160);
  if (v7)
  {
    v28 = *(v0 + 160);
    v29 = *(v0 + 176);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v33 = v6;
    v14 = *(v0 + 136);
    v30 = *(v0 + 328);
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v15 = 136446722;
    v31 = v5;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v35(v9, v34);
    v19 = sub_10000D01C(v16, v18, &v36);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v30(v29, v28);
    v23 = sub_10000D01C(v20, v22, &v36);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v24;
    *v32 = v24;
    _os_log_impl(&_mh_execute_header, v31, v33, "Failed to post trigger received notification for fence %{public}s with trigger %{public}s: %{public}@", v15, 0x20u);
    sub_100002CE0(v32, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {

    v8(v10, v11);
    v35(v9, v34);
  }

  v25 = *(v0 + 8);
  v26 = *(v0 + 424);

  return v25(v26);
}

uint64_t sub_10028DBE0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 392) = a1;

  v3 = swift_task_alloc();
  *(v2 + 400) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for UserNotificationService();
  v6 = sub_100009518(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009518(&qword_1005AD530, type metadata accessor for UserNotificationService, &unk_1004D9448);
  *v3 = v9;
  v3[1] = sub_10028DDBC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10028DDBC(uint64_t a1)
{
  v4 = *v2;
  v4[51] = a1;
  v4[52] = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = sub_10028EA28;
  }

  else
  {
    v6 = sub_10028E378;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10028DF2C()
{
  v37 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 24);
  (*(v0 + 288))(*(v0 + 232), *(v0 + 16), *(v0 + 216));
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 328);
  v9 = *(v0 + 232);
  v34 = *(v0 + 216);
  v35 = *(v0 + 320);
  v10 = *(v0 + 176);
  v11 = *(v0 + 160);
  if (v7)
  {
    v28 = *(v0 + 160);
    v29 = *(v0 + 176);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v33 = v6;
    v14 = *(v0 + 136);
    v30 = *(v0 + 328);
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v15 = 136446722;
    v31 = v5;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v35(v9, v34);
    v19 = sub_10000D01C(v16, v18, &v36);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v30(v29, v28);
    v23 = sub_10000D01C(v20, v22, &v36);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v24;
    *v32 = v24;
    _os_log_impl(&_mh_execute_header, v31, v33, "Failed to post trigger received notification for fence %{public}s with trigger %{public}s: %{public}@", v15, 0x20u);
    sub_100002CE0(v32, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {

    v8(v10, v11);
    v35(v9, v34);
  }

  v25 = *(v0 + 8);
  v26 = *(v0 + 424);

  return v25(v26);
}

uint64_t sub_10028E378()
{
  sub_1002939A8(v0[16], v0[15], type metadata accessor for FenceNotification);
  if (qword_1005A8598 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[6];
  sub_1002939A8(v1, v2, type metadata accessor for FenceNotification);
  v4 = objc_allocWithZone(UNUserNotificationCenter);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithBundleIdentifier:v5];

  v7 = sub_1002925EC(v2, type metadata accessor for FenceNotification, type metadata accessor for FenceNotification, type metadata accessor for FenceNotification);
  LocalUserNotificationCategory.rawValue.getter();
  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v9);

  v10 = v7;
  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() requestWithIdentifier:v11 content:v10 trigger:0 destinations:7];

  [v6 addNotificationRequest:v12 withCompletionHandler:0];
  sub_100293A10(v2, type metadata accessor for FenceNotification);
  sub_100293A10(v1, type metadata accessor for FenceNotification);

  return _swift_task_switch(sub_10028E604, v3, 0);
}

uint64_t sub_10028E604()
{
  v38 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);
  v4 = *(v0 + 24);
  (*(v0 + 288))(*(v0 + 248), *(v0 + 16), *(v0 + 216));
  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 328);
  v36 = *(v0 + 320);
  v9 = *(v0 + 248);
  v10 = *(v0 + 216);
  v11 = *(v0 + 192);
  v12 = *(v0 + 160);
  if (v7)
  {
    v32 = *(v0 + 160);
    v34 = *(v0 + 328);
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    v35 = *(v0 + 128);
    v31 = *(v0 + 192);
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v16 = 136446466;
    v33 = v6;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v5;
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v36(v9, v10);
    v20 = sub_10000D01C(v17, v19, &v37);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v34(v31, v32);
    v24 = sub_10000D01C(v21, v23, &v37);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, log, v33, "Trigger received notification for fence %{public}s with trigger %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    v25 = v35;
  }

  else
  {
    v26 = *(v0 + 128);

    v8(v11, v12);
    v36(v9, v10);
    v25 = v26;
  }

  sub_100293A10(v25, type metadata accessor for FenceNotification);

  v27 = *(v0 + 8);
  v28 = *(v0 + 424);

  return v27(v28);
}

uint64_t sub_10028EA28()
{
  v37 = v0;
  sub_100293A10(*(v0 + 128), type metadata accessor for FenceNotification);
  v1 = *(v0 + 304);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 24);
  (*(v0 + 288))(*(v0 + 232), *(v0 + 16), *(v0 + 216));
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 328);
  v9 = *(v0 + 232);
  v34 = *(v0 + 216);
  v35 = *(v0 + 320);
  v10 = *(v0 + 176);
  v11 = *(v0 + 160);
  if (v7)
  {
    v28 = *(v0 + 160);
    v29 = *(v0 + 176);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v33 = v6;
    v14 = *(v0 + 136);
    v30 = *(v0 + 328);
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v15 = 136446722;
    v31 = v5;
    Fence.id.getter();
    sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v35(v9, v34);
    v19 = sub_10000D01C(v16, v18, &v36);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    sub_100009518(&qword_1005AE808, &type metadata accessor for Fence.TriggerID, &protocol conformance descriptor for Fence.TriggerID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v30(v29, v28);
    v23 = sub_10000D01C(v20, v22, &v36);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v24;
    *v32 = v24;
    _os_log_impl(&_mh_execute_header, v31, v33, "Failed to post trigger received notification for fence %{public}s with trigger %{public}s: %{public}@", v15, 0x20u);
    sub_100002CE0(v32, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {

    v8(v10, v11);
    v35(v9, v34);
  }

  v25 = *(v0 + 8);
  v26 = *(v0 + 424);

  return v25(v26);
}

void sub_10028EE90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10004B564(&qword_1005B0080, &qword_1004D1618);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_10000709C(*(a1 + 56) + 32 * v12, v29);
        *&v28 = v14;
        *(&v28 + 1) = v15;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v16 = v28;
        sub_10004B064(v27, &v22);

        sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
        swift_dynamicCast();
        sub_10004B064(&v23, v25);
        sub_10004B064(v25, v26);
        sub_10004B064(v26, &v24);
        v17 = sub_1000110D8(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v16;
          v8 = v17;

          v9 = (v2[7] + 32 * v8);
          sub_100004984(v9);
          sub_10004B064(&v24, v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v16;
          sub_10004B064(&v24, (v2[7] + 32 * v17));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_10028F11C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10004B564(&qword_1005B0BA0, &qword_1004D2820);
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

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_10000709C(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_10004B064(v33, v32);
    sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10004B064(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10004B064(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_10004B064(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_10028F418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v4[5] = sub_10004B564(&qword_1005B0B08, &qword_1004D26A8);
  v4[6] = swift_task_alloc();
  sub_10004B564(&qword_1005B0B00, &qword_1004D26A0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  sub_10004B564(&qword_1005B0BB0, &qword_1004D2830);
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for DateInterval();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for Fence.Schedule.Matcher();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = type metadata accessor for Fence.Variant();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for Fence.Schedule();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v9 = type metadata accessor for Fence.ID();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v10 = type metadata accessor for Fence();
  v4[28] = v10;
  v4[29] = *(v10 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v11 = type metadata accessor for Fence.Participant();
  v4[33] = v11;
  v4[34] = *(v11 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v12 = type metadata accessor for Fence.TriggerPosition();
  v4[37] = v12;
  v4[38] = *(v12 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v4[41] = v13;
  v4[42] = *(v13 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();

  return _swift_task_switch(sub_10028F8E0, v3, 0);
}

uint64_t sub_10028F8E0()
{
  v208 = v0;
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[3];
  sub_1002787C8(v0[45]);
  v200 = v3[2];
  v200(v1, v4, v2);
  v194 = v3[11];
  LODWORD(v4) = v194(v1, v2);
  v5 = enum case for Fence.TriggerPosition.undetermined(_:);
  v6 = v3[1];
  v6(v1, v2);
  v190 = v5;
  if (v4 != v5 || (v8 = v0[35], v7 = v0[36], v9 = v0[33], v10 = v0[34], Fence.findee.getter(), (*(v10 + 104))(v8, enum case for Fence.Participant.me(_:), v9), v11 = static Fence.Participant.== infix(_:_:)(), v12 = *(v10 + 8), v12(v8, v9), v12(v7, v9), (v11 & 1) == 0))
  {
    v37 = v0[19];
    v36 = v0[20];
    v38 = v0[18];
    Fence.variant.getter();
    v39 = (*(v37 + 88))(v36, v38);
    if (v39 == enum case for Fence.Variant.oneTime(_:) || v39 == enum case for Fence.Variant.recurring(_:))
    {
      (*(v0[19] + 8))(v0[20], v0[18]);
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v42 = v0[29];
      v41 = v0[30];
      v43 = v0[28];
      v44 = v0[2];
      v45 = type metadata accessor for Logger();
      sub_10000A6F0(v45, qword_1005DFF88);
      (*(v42 + 16))(v41, v44, v43);
      v18 = Logger.logObject.getter();
      v46 = static os_log_type_t.fault.getter();
      v47 = os_log_type_enabled(v18, v46);
      v21 = v0[45];
      v22 = v0[41];
      v23 = v0[42];
      v25 = v0[29];
      v24 = v0[30];
      v26 = v0[28];
      if (v47)
      {
        v201 = v0[41];
        v49 = v0[26];
        v48 = v0[27];
        log = v18;
        v50 = v0[25];
        v176 = v0[28];
        v30 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        v207 = v191;
        *v30 = 136446210;
        v195 = v21;
        Fence.id.getter();
        sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v168 = v46;
        v53 = v52;
        (*(v49 + 8))(v48, v50);
        (*(v25 + 8))(v24, v176);
        v54 = sub_10000D01C(v51, v53, &v207);

        *(v30 + 4) = v54;
        v35 = "Scheduled fence with no schedule FenceID: %{public}s";
        goto LABEL_16;
      }

LABEL_23:

      (*(v25 + 8))(v24, v26);
      (*(v23 + 8))(v21, v22);
      goto LABEL_24;
    }

    if (v39 != enum case for Fence.Variant.scheduled(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v166 = v6;
    v56 = v0[23];
    v55 = v0[24];
    v58 = v0[21];
    v57 = v0[22];
    v59 = v0[20];
    v60 = v0[13];
    v177 = v0[12];
    v169 = v0[11];
    (*(v0[19] + 96))(v59, v0[18]);
    (*(v57 + 32))(v55, v59, v58);
    (*(v57 + 16))(v56, v55, v58);
    Fence.Schedule.Matcher.init(schedule:)();
    Fence.Schedule.Matcher.interval(containingDate:)();
    if ((*(v60 + 48))(v169, 1, v177) == 1)
    {
      sub_100002CE0(v0[11], &qword_1005B0BB0, &qword_1004D2830);
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v61 = v0[45];
      v63 = v0[42];
      v62 = v0[43];
      v64 = v0[41];
      v65 = v0[31];
      v66 = v0[28];
      v67 = v0[29];
      v68 = v0[2];
      v69 = type metadata accessor for Logger();
      sub_10000A6F0(v69, qword_1005DFF88);
      (*(v67 + 16))(v65, v68, v66);
      (*(v63 + 16))(v62, v61, v64);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      v72 = os_log_type_enabled(v70, v71);
      v74 = v0[42];
      v73 = v0[43];
      v196 = v0[41];
      v202 = v0[45];
      v75 = v0[31];
      v76 = v0[29];
      v192 = v0[28];
      if (v72)
      {
        v153 = v0[43];
        v155 = v71;
        v77 = v0[26];
        v78 = v0[27];
        v79 = v0[25];
        v178 = v0[21];
        logb = v0[24];
        v167 = v0[17];
        v170 = v0[22];
        v158 = v0[16];
        v162 = v0[15];
        v80 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        *v80 = 136446466;
        v154 = v70;
        Fence.id.getter();
        sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v81 = dispatch thunk of CustomStringConvertible.description.getter();
        v83 = v82;
        (*(v77 + 8))(v78, v79);
        (*(v76 + 8))(v75, v192);
        v84 = sub_10000D01C(v81, v83, &v207);

        *(v80 + 4) = v84;
        *(v80 + 12) = 2082;
        v85 = Date.localISO8601.getter();
        v87 = v86;
        v88 = *(v74 + 8);
        v88(v153, v196);
        v89 = sub_10000D01C(v85, v87, &v207);

        *(v80 + 14) = v89;
        _os_log_impl(&_mh_execute_header, v154, v155, "Fence id %{public}s schedule is not active for %{public}s", v80, 0x16u);
        swift_arrayDestroy();

        (*(v158 + 8))(v167, v162);
        (*(v170 + 8))(logb, v178);
        v88(v202, v196);
      }

      else
      {
        v101 = v0[22];
        v179 = v0[21];
        logc = v0[24];
        v103 = v0[16];
        v102 = v0[17];
        v104 = v0[15];

        v105 = *(v74 + 8);
        v105(v73, v196);
        (*(v76 + 8))(v75, v192);
        (*(v103 + 8))(v102, v104);
        (*(v101 + 8))(logc, v179);
        v105(v202, v196);
      }

      goto LABEL_24;
    }

    v92 = v0[37];
    v93 = v0[38];
    v95 = v0[9];
    v94 = v0[10];
    v96 = v0[4];
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    sub_100005F04(v96, v94, &qword_1005B0B00, &qword_1004D26A0);
    sub_100005F04(v96, v95, &qword_1005B0B00, &qword_1004D26A0);
    loga = *(v93 + 48);
    if ((loga)(v95, 1, v92) == 1)
    {
      v97 = v0[37];
      v98 = v0[38];
      v100 = v0[9];
      v99 = v0[10];
      sub_100002CE0(v99, &qword_1005B0B00, &qword_1004D26A0);
      sub_100002CE0(v100, &qword_1005B0B00, &qword_1004D26A0);
      (*(v98 + 56))(v99, 1, 1, v97);
    }

    else
    {
      v106 = v0[44];
      v107 = v0[41];
      v108 = v0[42];
      v171 = *(v0[38] + 32);
      v180 = v0[10];
      v171(v0[39], v0[9], v0[37]);
      sub_1002787C8(v106);
      v109 = DateInterval.contains(_:)();
      (*(v108 + 8))(v106, v107);
      sub_100002CE0(v180, &qword_1005B0B00, &qword_1004D26A0);
      if (v109)
      {
        v171(v0[8], v0[39], v0[37]);
        v110 = 0;
      }

      else
      {
        v166(v0[39], v0[37]);
        v110 = 1;
      }

      v111 = v0[10];
      v112 = v0[8];
      (*(v0[38] + 56))(v112, v110, 1, v0[37]);
      sub_1000176A8(v112, v111, &qword_1005B0B00, &qword_1004D26A0);
    }

    v113 = v0[37];
    v114 = v0[10];
    v115 = v0[6];
    v116 = *(v0[5] + 48);
    v200(v115, v0[3], v113);
    sub_100005F04(v114, v115 + v116, &qword_1005B0B00, &qword_1004D26A0);
    if ((loga)(v115 + v116, 1, v113) == 1)
    {
      v117 = v0[42];
      v172 = v0[41];
      v181 = v0[45];
      v193 = v0[37];
      v159 = v0[24];
      v197 = v116;
      v204 = v115;
      v119 = v0[21];
      v118 = v0[22];
      v120 = v0[16];
      v121 = v0[17];
      v122 = v0[14];
      v123 = v0[15];
      v124 = v0[12];
      v125 = v0[13];
      v163 = v0[6];
      sub_100002CE0(v0[10], &qword_1005B0B00, &qword_1004D26A0);
      (*(v125 + 8))(v122, v124);
      (*(v120 + 8))(v121, v123);
      (*(v118 + 8))(v159, v119);
      (*(v117 + 8))(v181, v172);
      sub_100002CE0(v204 + v197, &qword_1005B0B00, &qword_1004D26A0);
      v166(v163, v193);
LABEL_49:
      v203 = 1;
      goto LABEL_25;
    }

    v126 = v0[37];
    v127 = v0[6];
    sub_100005F04(v115 + v116, v0[7], &qword_1005B0B00, &qword_1004D26A0);
    v128 = v194(v127, v126);
    v129 = v128;
    v130 = enum case for Fence.TriggerPosition.inside(_:);
    if (v128 == enum case for Fence.TriggerPosition.inside(_:))
    {
      v131 = v194(v0[7], v0[37]);
      if (v131 == v129)
      {
LABEL_40:
        v132 = v0[42];
        v173 = v0[41];
        v182 = v0[45];
        v133 = v0[37];
        v134 = v0[22];
        v156 = v0[21];
        v160 = v0[24];
        v198 = v116;
        v205 = v115;
        v135 = v0[16];
        v136 = v0[17];
        v137 = v0[14];
        v138 = v0[15];
        v139 = v0[12];
        v140 = v0[13];
        v164 = v0[7];
        logd = v0[6];
        sub_100002CE0(v0[10], &qword_1005B0B00, &qword_1004D26A0);
        (*(v140 + 8))(v137, v139);
        (*(v135 + 8))(v136, v138);
        (*(v134 + 8))(v160, v156);
        (*(v132 + 8))(v182, v173);
        v166(v164, v133);
        sub_100002CE0(v205 + v198, &qword_1005B0B00, &qword_1004D26A0);
        v166(logd, v133);
        goto LABEL_24;
      }

      if (v131 != v190)
      {
        v142 = enum case for Fence.TriggerPosition.outside(_:);
        goto LABEL_47;
      }
    }

    else
    {
      v141 = enum case for Fence.TriggerPosition.outside(_:);
      if (v128 != enum case for Fence.TriggerPosition.outside(_:))
      {
        if (v128 == v190)
        {
          v152 = v194(v0[7], v0[37]);
          if (v152 == v130 || v152 == v141 || v152 == v190)
          {
            goto LABEL_40;
          }
        }

LABEL_54:
        v166(v0[7], v0[37]);
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v131 = v194(v0[7], v0[37]);
      if (v131 != v130)
      {
        if (v131 == v129)
        {
          goto LABEL_40;
        }

        v142 = v190;
LABEL_47:
        if (v131 == v142)
        {
          goto LABEL_48;
        }

        goto LABEL_54;
      }
    }

LABEL_48:
    v143 = v0[42];
    v174 = v0[41];
    v183 = v0[45];
    v144 = v0[37];
    v145 = v0[22];
    v157 = v0[21];
    v161 = v0[24];
    v199 = v116;
    v206 = v115;
    v146 = v0[16];
    v147 = v0[17];
    v148 = v0[14];
    v149 = v0[15];
    v150 = v0[12];
    v151 = v0[13];
    v165 = v0[7];
    loge = v0[6];
    sub_100002CE0(v0[10], &qword_1005B0B00, &qword_1004D26A0);
    (*(v151 + 8))(v148, v150);
    (*(v146 + 8))(v147, v149);
    (*(v145 + 8))(v161, v157);
    (*(v143 + 8))(v183, v174);
    v166(v165, v144);
    sub_100002CE0(v206 + v199, &qword_1005B0B00, &qword_1004D26A0);
    v166(loge, v144);
    goto LABEL_49;
  }

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v13 = v0[32];
  v14 = v0[28];
  v15 = v0[29];
  v16 = v0[2];
  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005DFF88);
  (*(v15 + 16))(v13, v16, v14);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[45];
  v22 = v0[41];
  v23 = v0[42];
  v24 = v0[32];
  v26 = v0[28];
  v25 = v0[29];
  if (!v20)
  {
    goto LABEL_23;
  }

  v201 = v0[41];
  v28 = v0[26];
  v27 = v0[27];
  log = v18;
  v29 = v0[25];
  v175 = v0[28];
  v30 = swift_slowAlloc();
  v191 = swift_slowAlloc();
  v207 = v191;
  *v30 = 136446210;
  v195 = v21;
  Fence.id.getter();
  sub_100009518(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v168 = v19;
  v33 = v32;
  (*(v28 + 8))(v27, v29);
  (*(v25 + 8))(v24, v175);
  v34 = sub_10000D01C(v31, v33, &v207);

  *(v30 + 4) = v34;
  v35 = "Fence with undetermined location on me should not post transparency notification: %{public}s";
LABEL_16:
  _os_log_impl(&_mh_execute_header, log, v168, v35, v30, 0xCu);
  sub_100004984(v191);

  (*(v23 + 8))(v195, v201);
LABEL_24:
  v203 = 0;
LABEL_25:

  v90 = v0[1];

  return v90(v203);
}

uint64_t sub_100290AF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MessagingCapability();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100009518(&qword_1005B0B48, &type metadata accessor for MessagingCapability, &protocol conformance descriptor for MessagingCapability);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100009518(&qword_1005B0B50, &type metadata accessor for MessagingCapability, &protocol conformance descriptor for MessagingCapability);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100290DD0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100290DD0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for MessagingCapability();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_1002915BC(v12);
    }

    else
    {
      sub_1002912A0(v12);
    }

    v13 = *v3;
    sub_100009518(&qword_1005B0B48, &type metadata accessor for MessagingCapability, &protocol conformance descriptor for MessagingCapability);
    v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_100009518(&qword_1005B0B50, &type metadata accessor for MessagingCapability, &protocol conformance descriptor for MessagingCapability);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_100291068();
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100291068()
{
  v1 = v0;
  v2 = type metadata accessor for MessagingCapability();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0B40, &qword_1004D26C8);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1002912A0(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for MessagingCapability();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10004B564(&qword_1005B0B40, &qword_1004D26C8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100009518(&qword_1005B0B48, &type metadata accessor for MessagingCapability, &protocol conformance descriptor for MessagingCapability);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1002915BC(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for MessagingCapability();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10004B564(&qword_1005B0B40, &qword_1004D26C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100009518(&qword_1005B0B48, &type metadata accessor for MessagingCapability, &protocol conformance descriptor for MessagingCapability);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100291918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100291A18, 0, 0);
}

uint64_t sub_100291A18()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100009518(&qword_1005B0BC8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100009518(&qword_1005AFFD0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100291BA8;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100291BA8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100291D64, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100291D64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100291DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[3] = &type metadata for IDSMessageValidityMetric;
  v22[4] = &off_10058C380;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    v3 = String._bridgeToObjectiveC()();
    sub_100011004(v22, v21);
    v4 = swift_allocObject();
    sub_100010BD4(v21, v4 + 16);
    v19 = sub_100293A74;
    v20 = v4;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_1000119E4;
    v18 = &unk_100597D78;
    v5 = _Block_copy(v17);

    v6 = AnalyticsSendEventLazy();
    _Block_release(v5);

    if (!v6)
    {
      if (qword_1005A7E80 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000A6F0(v7, qword_1005DFA50);
      sub_100011004(v22, v17);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *&v21[0] = v11;
        *v10 = 136446210;
        v12 = sub_100011AEC(v17, v18);
        v13 = *v12;
        v14 = v12[1];

        sub_100004984(v17);
        v15 = sub_10000D01C(v13, v14, v21);

        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s is not enabled in the current config", v10, 0xCu);
        sub_100004984(v11);
      }

      else
      {

        sub_100004984(v17);
      }
    }
  }

  return sub_100004984(v22);
}

_OWORD *sub_10029205C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = &type metadata for Bool;
  v9 = *a5;
  v11 = sub_1000110D8(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      sub_100004984(v18);
      return sub_10004B064(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_10020304C();
    goto LABEL_7;
  }

  sub_10022D0EC(v14, a4 & 1);
  v20 = sub_1000110D8(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_1000BAF2C(&v23, &type metadata for Bool);
  sub_1002921B4(v11, a2, a3, *v22, v17);

  return sub_100004984(&v23);
}

_OWORD *sub_1002921B4(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = &type metadata for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10004B064(&v11, (a5[7] + 32 * a1));
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

id sub_100292238(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002939A8(a1, v8, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  v9 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v9 setDefaultActionURL:0];
  v10 = [objc_opt_self() defaultCriticalSound];
  [v9 setSound:v10];

  LocalUserNotificationCategory.rawValue.getter();
  v11 = String._bridgeToObjectiveC()();

  [v9 setCategoryIdentifier:v11];

  (*(v3 + 104))(v5, enum case for LocalizationUtility.Table.default(_:), v2);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v3 + 8))(v5, v2);
  v12 = String._bridgeToObjectiveC()();

  [v9 setTitle:v12];

  sub_10011DAA4();
  v13 = String._bridgeToObjectiveC()();

  [v9 setBody:v13];

  [v9 setInterruptionLevel:2];
  v14 = sub_100207B7C(_swiftEmptyArrayStorage);
  v23 = &type metadata for Bool;
  LOBYTE(v22) = 1;
  sub_10004B064(&v22, &v20);
  LOBYTE(v13) = swift_isUniquelyReferenced_nonNull_native();
  v19 = v14;
  v15 = sub_1000BAF2C(&v20, v21);
  sub_10029205C(*v15, 0xD000000000000023, 0x80000001004E6670, v13, &v19);
  sub_100004984(&v20);
  sub_10028F11C(v19);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 setUserInfo:isa];

  sub_100293A10(v8, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  [v9 setShouldIgnoreDoNotDisturb:0];
  return v9;
}

id sub_1002925EC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a2(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  sub_1002939A8(a1, &v20 - v9, a3);
  v11 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v11 setDefaultActionURL:0];
  v12 = [objc_opt_self() defaultSound];
  [v11 setSound:v12];

  LocalUserNotificationCategory.rawValue.getter();
  v13 = String._bridgeToObjectiveC()();

  [v11 setCategoryIdentifier:v13];

  v14 = String._bridgeToObjectiveC()();
  [v11 setTitle:v14];

  v15 = String._bridgeToObjectiveC()();
  [v11 setBody:v15];

  [v11 setInterruptionLevel:2];
  v16 = *&v10[*(v8 + 48)];
  v25 = &type metadata for Bool;
  LOBYTE(v24) = 1;
  sub_10004B064(&v24, &v22);

  LOBYTE(v15) = swift_isUniquelyReferenced_nonNull_native();
  v21 = v16;
  v17 = sub_1000BAF2C(&v22, v23);
  sub_10029205C(*v17, 0xD000000000000023, 0x80000001004E6670, v15, &v21);
  sub_100004984(&v22);
  sub_10028F11C(v21);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 setUserInfo:isa];

  sub_100293A10(v10, a4);
  [v11 setShouldIgnoreDoNotDisturb:0];
  return v11;
}

id sub_100292884(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for LocationSharingReminderNotification(0);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002939A8(a1, v11, type metadata accessor for LocationSharingReminderNotification);
  v12 = [objc_allocWithZone(UNMutableNotificationContent) init];
  URL.init(string:)();
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v16 = 0;
  if ((*(v14 + 48))(v8, 1, v13) != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v16 = v17;
    (*(v14 + 8))(v8, v13);
  }

  [v12 setDefaultActionURL:v16];

  v18 = [objc_opt_self() defaultCriticalSound];
  [v12 setSound:v18];

  v33 = v9;
  LocalUserNotificationCategory.rawValue.getter();
  v19 = String._bridgeToObjectiveC()();

  [v12 setCategoryIdentifier:v19];

  v20 = enum case for LocalizationUtility.Table.default(_:);
  v32 = v11;
  v21 = *(v3 + 104);
  v21(v5, enum case for LocalizationUtility.Table.default(_:), v2);
  static LocalizationUtility.localizedString(key:table:)();
  v22 = *(v3 + 8);
  v22(v5, v2);
  v23 = String._bridgeToObjectiveC()();

  [v12 setTitle:v23];

  v21(v5, v20, v2);
  static LocalizationUtility.localizedString(key:table:)();
  v22(v5, v2);
  v24 = String._bridgeToObjectiveC()();

  [v12 setBody:v24];

  [v12 setInterruptionLevel:2];
  v25 = v32;
  v26 = *&v32[*(v33 + 28)];
  v38 = &type metadata for Bool;
  LOBYTE(v37) = 1;
  sub_10004B064(&v37, &v35);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v26;
  v28 = sub_1000BAF2C(&v35, v36);
  sub_10029205C(*v28, 0xD000000000000023, 0x80000001004E6670, isUniquelyReferenced_nonNull_native, &v34);
  sub_100004984(&v35);
  sub_10028F11C(v34);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setUserInfo:isa];

  sub_100293A10(v25, type metadata accessor for LocationSharingReminderNotification);
  [v12 setShouldIgnoreDoNotDisturb:0];
  return v12;
}

id sub_100292D94(uint64_t a1)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RedStripeNotification(0);
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002939A8(a1, v8, type metadata accessor for RedStripeNotification);
  v9 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v9 setDefaultActionURL:0];
  v10 = [objc_opt_self() defaultCriticalSound];
  [v9 setSound:v10];

  LocalUserNotificationCategory.rawValue.getter();
  v11 = String._bridgeToObjectiveC()();

  [v9 setCategoryIdentifier:v11];

  sub_1004563C8();
  v12 = String._bridgeToObjectiveC()();

  [v9 setTitle:v12];

  sub_100456778();
  v13 = String._bridgeToObjectiveC()();

  [v9 setBody:v13];

  [v9 setInterruptionLevel:2];
  sub_10004B564(&qword_1005B0BC0, &qword_1004D2868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = static LocalUserNotificationConstants.HandleIdentifier.getter();
  *(inited + 40) = v15;
  Friend.handle.getter();
  v16 = Handle.identifier.getter();
  v18 = v17;
  (*(v3 + 8))(v5, v2);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v16;
  *(inited + 56) = v18;
  v19 = sub_100207B7C(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005B0088, &qword_1004D38F0);
  v28 = &type metadata for Bool;
  LOBYTE(v27) = 1;
  sub_10004B064(&v27, &v25);
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v24 = v19;
  v20 = sub_1000BAF2C(&v25, v26);
  sub_10029205C(*v20, 0xD000000000000023, 0x80000001004E6670, v2, &v24);
  sub_100004984(&v25);
  sub_10028F11C(v24);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 setUserInfo:isa];

  sub_100293A10(v8, type metadata accessor for RedStripeNotification);
  [v9 setShouldIgnoreDoNotDisturb:1];
  return v9;
}

uint64_t sub_100293190(uint64_t a1)
{
  v2 = type metadata accessor for MessagingCapability();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100009518(&qword_1005B0B48, &type metadata accessor for MessagingCapability, &protocol conformance descriptor for MessagingCapability);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v8, v14, v2);
      sub_100290AF0(v6, v8);
      (*(v11 - 8))(v6, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10029333C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007C4DC;

  return sub_10007A554(a1, v1);
}

uint64_t sub_1002933D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Fence.TriggerID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100003690;

  return sub_10028A184(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_10029350C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100293574(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Fence.ID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Fence.TriggerPosition() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000368C;

  return sub_10027C878(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_100293760()
{
  v1 = type metadata accessor for Fence.ID();
  v2 = *(v1 - 8);
  v17 = *(v2 + 80);
  v3 = (v17 + 24) & ~v17;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Fence.TriggerPosition();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v16 = *(v10 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v8, v5);
  v13 = type metadata accessor for Fence.AcceptanceStatus();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v12, 1, v13))
  {
    (*(v14 + 8))(v0 + v12, v13);
  }

  return _swift_deallocObject(v0, ((v16 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v17 | v7 | v11 | 7);
}

uint64_t sub_1002939A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100293A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100293A88()
{
  v1[14] = v0;
  v1[15] = *v0;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v1[16] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[17] = v2;
  *v2 = v1;
  v2[1] = sub_100293B78;

  return sub_100296618();
}

uint64_t sub_100293B78()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 144) = v2;
  *v2 = v4;
  v2[1] = sub_100293CA4;

  return daemon.getter();
}

uint64_t sub_100293CA4(uint64_t a1)
{
  *(*v1 + 152) = a1;

  type metadata accessor for Daemon();
  sub_1002AB19C(&qword_1005AB4E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100293DFC, v3, v2);
}

uint64_t sub_100293DFC()
{
  v1 = *(v0 + 112);
  *(v0 + 160) = Daemon.xpcAlarmEventHandler.getter();

  return _swift_task_switch(sub_100293E74, v1, 0);
}

uint64_t sub_100293E74()
{
  v1 = v0[20];
  if (v1)
  {
    v2 = v0[15];
    v3 = v0[16];
    v4 = v0[14];
    v5 = type metadata accessor for TaskPriority();
    v6 = *(*(v5 - 8) + 56);
    v6(v3, 1, 1, v5);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    v8[5] = v1;
    v8[6] = v2;

    *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_xpcAlarmHandlerTask) = sub_1001D7F30(0, 0, v3, &unk_1004D28E8, v8);

    v6(v3, 1, 1, v5);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v9;
    *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_darwinSignificantTimeChangeTask) = sub_1001D7F30(0, 0, v3, &unk_1004D28F8, v10);

    v11 = [objc_opt_self() defaultCenter];
    v0[21] = v11;
    v12 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1002AA984;
    v0[7] = v12;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100493660;
    v0[5] = &unk_100597E40;
    v13 = _Block_copy(v0 + 2);

    v14 = [v11 addObserverForName:NSSystemClockDidChangeNotification object:0 queue:0 usingBlock:v13];
    _Block_release(v13);
    *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_systemClockDidChangeObserver) = v14;
    swift_unknownObjectRelease();
    v15 = swift_allocObject();
    swift_weakInit();
    v0[12] = sub_1002AA9BC;
    v0[13] = v15;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100493660;
    v0[11] = &unk_100597E68;
    v16 = _Block_copy(v0 + 8);

    v17 = [v11 addObserverForName:NSSystemTimeZoneDidChangeNotification object:0 queue:0 usingBlock:v16];
    _Block_release(v16);
    *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_systemTimeZoneDidChangeObserver) = v17;
    swift_unknownObjectRelease();
    sub_10002B3C0(0, 3, 0);
    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    v20 = v18 >> 1;
    v21 = v19 + 1;
    if (v18 >> 1 <= v19)
    {
      sub_10002B3C0((v18 > 1), v19 + 1, 1);
      v18 = _swiftEmptyArrayStorage[3];
      v20 = v18 >> 1;
    }

    _swiftEmptyArrayStorage[2] = v21;
    v22 = &_swiftEmptyArrayStorage[2 * v19];
    v22[4] = 0xD000000000000031;
    v22[5] = 0x80000001004DE440;
    v23 = v19 + 2;
    if (v20 <= v21)
    {
      sub_10002B3C0((v18 > 1), v23, 1);
    }

    _swiftEmptyArrayStorage[2] = v23;
    v24 = &_swiftEmptyArrayStorage[2 * v21];
    v24[4] = 0xD00000000000002FLL;
    v24[5] = 0x80000001004DE480;
    v26 = _swiftEmptyArrayStorage[2];
    v25 = _swiftEmptyArrayStorage[3];
    if (v26 >= v25 >> 1)
    {
      sub_10002B3C0((v25 > 1), v26 + 1, 1);
    }

    v0[22] = _swiftEmptyArrayStorage;
    _swiftEmptyArrayStorage[2] = v26 + 1;
    v27 = &_swiftEmptyArrayStorage[2 * v26];
    v27[4] = 0xD00000000000002ELL;
    v27[5] = 0x80000001004DE4B0;
    v35 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:));
    v28 = swift_task_alloc();
    v0[23] = v28;
    *v28 = v0;
    v28[1] = sub_1002944DC;

    return v35(_swiftEmptyArrayStorage);
  }

  else
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000A6F0(v30, qword_1005DFF88);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Missing XPC alarm event handler", v33, 2u);
    }

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_1002944DC()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100294608, v1, 0);
}

uint64_t sub_100294608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100294678()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1002947E4, v4, 0);
}

uint64_t sub_1002947E4()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[37];
  v4 = v0[29];
  v1(v0[32], v4);
  v1(v3, v4);
  sub_100002CE0(v2, &unk_1005AE5B0, &qword_1004C32F0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10029499C()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100294AAC, v1, 0);
}

uint64_t sub_100294AAC()
{
  v202 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  (*(v0 + 536))(*(v0 + 416), *(v0 + 352));
  v1(v2, v3);
  while (1)
  {
    v4 = *(v0 + 528) + 1;
    if (v4 == *(v0 + 504))
    {
      break;
    }

    *(v0 + 528) = v4;
    v5 = *(v0 + 596);
    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v8 = *(v0 + 280);
    v9 = *(v0 + 288);
    (*(v0 + 520))(*(v0 + 344), *(v0 + 48) + ((*(v0 + 592) + 32) & ~*(v0 + 592)) + *(v0 + 512) * v4, *(v0 + 312));
    Fence.acceptanceStatus.getter();
    (*(v9 + 104))(v7, v5, v8);
    v10 = static Fence.AcceptanceStatus.== infix(_:_:)();
    v11 = *(v9 + 8);
    v11(v7, v8);
    v11(v6, v8);
    if (v10 & 1) != 0 && (v12 = *(v0 + 600), v14 = *(v0 + 264), v13 = *(v0 + 272), v15 = *(v0 + 248), v16 = *(v0 + 256), Fence.findee.getter(), (*(v16 + 104))(v14, v12, v15), v17 = static Fence.Participant.== infix(_:_:)(), v18 = *(v16 + 8), v18(v14, v15), v18(v13, v15), (v17))
    {
      v19 = *(v0 + 608);
      v20 = *(v0 + 604);
      v22 = *(v0 + 200);
      v21 = *(v0 + 208);
      v23 = *(v0 + 192);
      Fence.variant.getter();
      v24 = (*(v22 + 88))(v21, v23);
      if (v24 == v20 || v24 == v19)
      {
        v40 = *(v0 + 200);
        v39 = *(v0 + 208);
        v41 = *(v0 + 192);
        (*(*(v0 + 320) + 8))(*(v0 + 344), *(v0 + 312));
        (*(v40 + 8))(v39, v41);
      }

      else
      {
        if (v24 != *(v0 + 612))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v177 = *(v0 + 616);
        v175 = *(v0 + 408);
        v25 = *(v0 + 360);
        v189 = *(v0 + 352);
        v27 = *(v0 + 232);
        v26 = *(v0 + 240);
        v28 = *(v0 + 216);
        v29 = *(v0 + 224);
        v30 = *(v0 + 208);
        v173 = *(v0 + 184);
        v180 = *(v0 + 176);
        v184 = *(v0 + 168);
        v31 = *(v0 + 152);
        v32 = *(v0 + 160);
        v174 = *(v0 + 144);
        (*(*(v0 + 200) + 96))(v30, *(v0 + 192));
        v178 = v26;
        (*(v29 + 32))(v26, v30, v28);
        (*(v29 + 16))(v27, v26, v28);
        Fence.Schedule.Matcher.init(schedule:)();
        v33 = v175;
        Fence.updatedAt.getter();
        (*(v31 + 104))(v32, v177, v174);
        Fence.Schedule.Matcher.nextStartDate(from:direction:)();
        (*(v31 + 8))(v32, v174);
        v34 = *(v25 + 8);
        *(v0 + 536) = v34;
        *(v0 + 544) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v176 = v34;
        v34(v33, v189);
        (*(v180 + 8))(v173, v184);
        (*(v29 + 8))(v178, v28);
        sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          if (qword_1005A80E8 != -1)
          {
            swift_once();
          }

          v124 = *(v0 + 520);
          v125 = *(v0 + 416);
          v200 = *(v0 + 392);
          v127 = *(v0 + 352);
          v126 = *(v0 + 360);
          v129 = *(v0 + 336);
          v128 = *(v0 + 344);
          v130 = *(v0 + 312);
          v131 = type metadata accessor for Logger();
          sub_10000A6F0(v131, qword_1005DFF88);
          v124(v129, v128, v130);
          (*(v126 + 16))(v200, v125, v127);
          v132 = Logger.logObject.getter();
          v133 = static os_log_type_t.default.getter();
          v134 = os_log_type_enabled(v132, v133);
          v135 = *(v0 + 392);
          v136 = *(v0 + 352);
          v137 = *(v0 + 336);
          v139 = *(v0 + 312);
          v138 = *(v0 + 320);
          if (v134)
          {
            v193 = *(v0 + 352);
            v182 = *(v0 + 312);
            v141 = *(v0 + 128);
            v140 = *(v0 + 136);
            v142 = *(v0 + 120);
            v197 = v132;
            v143 = swift_slowAlloc();
            v201 = swift_slowAlloc();
            *v143 = 136446466;
            v187 = v133;
            Fence.id.getter();
            sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
            v144 = dispatch thunk of CustomStringConvertible.description.getter();
            v146 = v145;
            (*(v141 + 8))(v140, v142);
            v147 = *(v138 + 8);
            v147(v137, v182);
            v148 = sub_10000D01C(v144, v146, &v201);

            *(v143 + 4) = v148;
            *(v143 + 12) = 2082;
            v149 = Date.localISO8601.getter();
            v151 = v150;
            v176(v135, v193);
            v152 = sub_10000D01C(v149, v151, &v201);

            *(v143 + 14) = v152;
            _os_log_impl(&_mh_execute_header, v197, v187, "Invite date for %{public}s is in the past (%{public}s). Triggering the fence invitation.", v143, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            v176(v135, v136);
            v147 = *(v138 + 8);
            v147(v137, v139);
          }

          *(v0 + 552) = v147;
          v170 = swift_task_alloc();
          *(v0 + 560) = v170;
          *v170 = v0;
          v170[1] = sub_10029499C;
          v171 = *(v0 + 424);
          v172 = *(v0 + 344);

          return sub_1002A9B6C(v172, v171);
        }

        v35 = *(v0 + 456);
        v36 = *(v0 + 352);
        v37 = *(v0 + 360);
        sub_100005F04(*(v0 + 464), v35, &unk_1005AE5B0, &qword_1004C32F0);
        v38 = *(v37 + 48);
        if (v38(v35, 1, v36) == 1)
        {
          sub_100002CE0(*(v0 + 456), &unk_1005AE5B0, &qword_1004C32F0);
        }

        else
        {
          v42 = *(v0 + 400);
          v43 = *(v0 + 352);
          v44 = *(*(v0 + 360) + 32);
          v44(v42, *(v0 + 456), v43);
          v45 = static Date.< infix(_:_:)();
          v176(v42, v43);
          if (v45)
          {
            v194 = *(v0 + 488);
            v179 = *(v0 + 472);
            v46 = *(v0 + 464);
            v47 = *(v0 + 432);
            v48 = *(v0 + 416);
            v49 = *(v0 + 352);
            v50 = *(v0 + 320);
            v185 = *(v0 + 312);
            v190 = *(v0 + 344);
            sub_100002CE0(v46, &unk_1005AE5B0, &qword_1004C32F0);
            v44(v46, v48, v49);
            v179(v46, 0, 1, v49);
            sub_100002CE0(v47, &qword_1005B09D0, &unk_1004D2380);
            (*(v50 + 32))(v47, v190, v185);
            v51 = v47;
            v52 = v185;
            goto LABEL_17;
          }
        }

        v53 = *(v0 + 448);
        v54 = *(v0 + 352);
        sub_100005F04(*(v0 + 464), v53, &unk_1005AE5B0, &qword_1004C32F0);
        if (v38(v53, 1, v54) == 1)
        {
          v194 = *(v0 + 488);
          v55 = *(v0 + 472);
          v56 = *(v0 + 464);
          v57 = *(v0 + 448);
          v58 = *(v0 + 432);
          v59 = *(v0 + 416);
          v60 = *(v0 + 352);
          v61 = *(v0 + 360);
          v191 = *(v0 + 344);
          v62 = *(v0 + 312);
          v63 = *(v0 + 320);
          sub_100002CE0(v56, &unk_1005AE5B0, &qword_1004C32F0);
          sub_100002CE0(v57, &unk_1005AE5B0, &qword_1004C32F0);
          (*(v61 + 32))(v56, v59, v60);
          v55(v56, 0, 1, v60);
          sub_100002CE0(v58, &qword_1005B09D0, &unk_1004D2380);
          (*(v63 + 32))(v58, v191, v62);
          v51 = v58;
          v52 = v62;
LABEL_17:
          v194(v51, 0, 1, v52);
        }

        else
        {
          v64 = *(v0 + 448);
          v65 = *(v0 + 344);
          v66 = *(v0 + 312);
          v67 = *(v0 + 320);
          v176(*(v0 + 416), *(v0 + 352));
          (*(v67 + 8))(v65, v66);
          sub_100002CE0(v64, &unk_1005AE5B0, &qword_1004C32F0);
        }
      }
    }

    else
    {
      (*(*(v0 + 320) + 8))(*(v0 + 344), *(v0 + 312));
    }
  }

  v68 = *(v0 + 440);
  v69 = *(v0 + 352);
  v70 = *(v0 + 360);
  sub_100005F04(*(v0 + 464), v68, &unk_1005AE5B0, &qword_1004C32F0);
  if ((*(v70 + 48))(v68, 1, v69) == 1)
  {
    sub_100002CE0(*(v0 + 440), &unk_1005AE5B0, &qword_1004C32F0);
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_10000A6F0(v71, qword_1005DFF88);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 464);
    v77 = *(v0 + 424);
    v76 = *(v0 + 432);
    v78 = *(v0 + 352);
    v79 = *(v0 + 360);
    if (v74)
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "No fence to set invite timer for", v80, 2u);
    }

    (*(v79 + 8))(v77, v78);
    sub_100002CE0(v75, &unk_1005AE5B0, &qword_1004C32F0);
    v81 = v76;
    goto LABEL_25;
  }

  v84 = *(v0 + 408);
  v85 = *(v0 + 352);
  v86 = *(v0 + 360);
  (*(v86 + 32))(*(v0 + 384), *(v0 + 440), v85);
  static Date.distantFuture.getter();
  sub_1002AB19C(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v87 = dispatch thunk of static Equatable.== infix(_:_:)();
  v88 = *(v86 + 8);
  *(v0 + 568) = v88;
  *(v0 + 576) = (v86 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88(v84, v85);
  if (v87)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v89 = *(v0 + 384);
    v91 = *(v0 + 360);
    v90 = *(v0 + 368);
    v92 = *(v0 + 352);
    v93 = type metadata accessor for Logger();
    sub_10000A6F0(v93, qword_1005DFF88);
    (*(v91 + 16))(v90, v89, v92);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    v96 = os_log_type_enabled(v94, v95);
    v97 = *(v0 + 464);
    v99 = *(v0 + 424);
    v98 = *(v0 + 432);
    v198 = *(v0 + 384);
    v100 = *(v0 + 368);
    v101 = *(v0 + 352);
    if (v96)
    {
      v181 = v95;
      v102 = swift_slowAlloc();
      v195 = v98;
      v103 = swift_slowAlloc();
      v201 = v103;
      *v102 = 136315138;
      v186 = v99;
      v192 = v97;
      v104 = Date.localISO8601.getter();
      v106 = v105;
      v88(v100, v101);
      v107 = sub_10000D01C(v104, v106, &v201);

      *(v102 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v94, v181, "Invalid invite timer date: %s", v102, 0xCu);
      sub_100004984(v103);

      v88(v198, v101);
      v88(v186, v101);
      sub_100002CE0(v192, &unk_1005AE5B0, &qword_1004C32F0);
      v81 = v195;
    }

    else
    {

      v88(v100, v101);
      v88(v198, v101);
      v88(v99, v101);
      sub_100002CE0(v97, &unk_1005AE5B0, &qword_1004C32F0);
      v81 = v98;
    }

LABEL_25:
    sub_100002CE0(v81, &qword_1005B09D0, &unk_1004D2380);

    v82 = *(v0 + 8);

    return v82();
  }

  else
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v108 = *(v0 + 376);
    v109 = *(v0 + 384);
    v110 = *(v0 + 352);
    v111 = *(v0 + 360);
    v112 = type metadata accessor for Logger();
    sub_10000A6F0(v112, qword_1005DFF88);
    v113 = *(v111 + 16);
    v113(v108, v109, v110);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v196 = v113;
      v199 = v88;
      v116 = *(v0 + 432);
      v117 = *(v0 + 312);
      v118 = *(v0 + 320);
      v119 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      *v119 = 136446466;
      swift_beginAccess();
      if ((*(v118 + 48))(v116, 1, v117))
      {
        v120 = 0xE300000000000000;
        v121 = 7104878;
      }

      else
      {
        v154 = *(v0 + 320);
        v153 = *(v0 + 328);
        v155 = *(v0 + 128);
        v156 = *(v0 + 136);
        v183 = *(v0 + 312);
        v188 = *(v0 + 120);
        (*(v154 + 16))(v153, *(v0 + 432));
        Fence.id.getter();
        (*(v154 + 8))(v153, v183);
        v157 = Fence.ID.uuidString.getter();
        v120 = v158;
        (*(v155 + 8))(v156, v188);
        v121 = v157;
      }

      v159 = *(v0 + 376);
      v160 = *(v0 + 352);
      v161 = sub_10000D01C(v121, v120, &v201);

      *(v119 + 4) = v161;
      *(v119 + 12) = 2082;
      v162 = Date.localISO8601.getter();
      v164 = v163;
      v199(v159, v160);
      v165 = sub_10000D01C(v162, v164, &v201);

      *(v119 + 14) = v165;
      _os_log_impl(&_mh_execute_header, v114, v115, "Setting invite timer for fence %{public}s at %{public}s", v119, 0x16u);
      swift_arrayDestroy();

      v113 = v196;
    }

    else
    {
      v122 = *(v0 + 376);
      v123 = *(v0 + 352);

      v88(v122, v123);
    }

    v113(*(v0 + 408), *(v0 + 384), *(v0 + 352));
    sub_10004B564(&qword_1005B0BD0, &qword_1004D28B0);
    v166 = swift_allocObject();
    *(v166 + 16) = xmmword_1004C1900;
    static XPCAlarm.Criteria.Options.userVisible.getter();
    *(v0 + 40) = v166;
    sub_1002AB19C(&qword_1005B0BD8, &type metadata accessor for XPCAlarm.Criteria.Options, &protocol conformance descriptor for XPCAlarm.Criteria.Options);
    sub_10004B564(&qword_1005B0BE0, &qword_1004D28B8);
    sub_10001DF0C(&qword_1005B0BE8, &qword_1005B0BE0, &qword_1004D28B8, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    XPCAlarm.Criteria.init(date:options:)();
    v167 = swift_task_alloc();
    *(v0 + 584) = v167;
    *v167 = v0;
    v167[1] = sub_100295F68;
    v168 = *(v0 + 112);
    v169 = *(v0 + 88);

    return XPCAlarm.init(identifier:criteria:)(v168, 0xD00000000000002FLL, 0x80000001004DE480, v169);
  }
}

uint64_t sub_100295F68()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 56);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1002960D4, v4, 0);
}

uint64_t sub_1002960D4()
{
  v1 = v0[71];
  v2 = v0[58];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[44];
  v1(v0[48], v5);
  v1(v4, v5);
  sub_100002CE0(v2, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100002CE0(v3, &qword_1005B09D0, &unk_1004D2380);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002962FC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000002ELL;
  v3 = *a1;
  v4 = "enceScheduleTimer";
  if (v3 == 1)
  {
    v5 = 0xD00000000000002FLL;
  }

  else
  {
    v5 = 0xD00000000000002ELL;
  }

  if (v3 == 1)
  {
    v6 = "enceScheduleTimer";
  }

  else
  {
    v6 = ".findmylocated.FenceInviteTimer";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000031;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "com.apple.mobileme.fmf3";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000002FLL;
  }

  else
  {
    v4 = ".findmylocated.FenceInviteTimer";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000031;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "com.apple.mobileme.fmf3";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_1002963D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002AB350(*a1);
  *a2 = result;
  return result;
}

void sub_100296400(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ELL;
  v3 = "enceScheduleTimer";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000002FLL;
  }

  else
  {
    v3 = ".findmylocated.FenceInviteTimer";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000031;
    v4 = "com.apple.mobileme.fmf3";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

Swift::Int sub_100296468()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100296500(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100296584()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100296638()
{
  v1 = *(v0 + 16);
  static XPCAlarm.unregister(identifier:)();
  static XPCAlarm.unregister(identifier:)();
  static XPCAlarm.unregister(identifier:)();
  v2 = OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask;
  if (*(v1 + OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask))
  {

    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    Task.cancel()();
  }

  v3 = *(v0 + 16);
  *(v1 + v2) = 0;

  v4 = OBJC_IVAR____TtC13findmylocated12FenceService_darwinSignificantTimeChangeTask;
  if (*(v3 + OBJC_IVAR____TtC13findmylocated12FenceService_darwinSignificantTimeChangeTask))
  {

    Task.cancel()();
  }

  v5 = *(v0 + 16);
  *(v3 + v4) = 0;

  v6 = OBJC_IVAR____TtC13findmylocated12FenceService_xpcAlarmHandlerTask;
  if (*(v5 + OBJC_IVAR____TtC13findmylocated12FenceService_xpcAlarmHandlerTask))
  {

    Task.cancel()();
  }

  v7 = *(v0 + 16);
  *(v5 + v6) = 0;

  v8 = [objc_opt_self() defaultCenter];
  v9 = v8;
  v10 = OBJC_IVAR____TtC13findmylocated12FenceService_systemClockDidChangeObserver;
  if (*(v7 + OBJC_IVAR____TtC13findmylocated12FenceService_systemClockDidChangeObserver))
  {
    [v8 removeObserver:?];
    *(v7 + v10) = 0;
    swift_unknownObjectRelease();
  }

  v11 = *(v0 + 16);
  v12 = OBJC_IVAR____TtC13findmylocated12FenceService_systemTimeZoneDidChangeObserver;
  v13 = *(v11 + OBJC_IVAR____TtC13findmylocated12FenceService_systemTimeZoneDidChangeObserver);
  if (v13)
  {
    swift_unknownObjectRetain();
    [v9 removeObserver:v13];

    swift_unknownObjectRelease();
    *(v11 + v12) = 0;
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1002968B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1002968D8, 0, 0);
}

uint64_t sub_1002968D8()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating XPC alarm streams", v4, 2u);
  }

  v5 = *(v0 + 32);
  v9 = *(v0 + 16);

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *(v6 + 16) = v9;
  *(v6 + 32) = v5;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_100296A7C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_100296A7C()
{

  return _swift_task_switch(sub_1000161BC, 0, 0);
}

uint64_t sub_100296B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[25] = a2;
  v5[26] = a3;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_100296C40, 0, 0);
}

uint64_t sub_100296C40()
{
  sub_10004B564(&qword_1005B0BF8, &qword_1004D2948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BD0;
  v2 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1004D2958;
  *(v3 + 24) = v2;
  *(inited + 32) = 0;
  *(inited + 40) = &unk_1004D2968;
  *(inited + 48) = v3;
  v4 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1004D2978;
  *(v5 + 24) = v4;
  *(inited + 56) = 1;
  *(inited + 64) = &unk_1004D2980;
  *(inited + 72) = v5;
  v6 = swift_allocObject();

  swift_weakLoadStrong();

  swift_weakInit();

  v7 = swift_allocObject();
  *(v7 + 16) = &unk_1004D2990;
  *(v7 + 24) = v6;
  *(inited + 80) = 2;
  *(inited + 88) = &unk_1004D2998;
  *(inited + 96) = v7;

  v8 = sub_100209D30(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005B0C00, &qword_1004D29A0);
  result = swift_arrayDestroy();
  v10 = 0;
  v11 = v8 + 64;
  v12 = -1;
  v35 = v8 + 64;
  v36 = v8;
  v13 = -1 << *(v8 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v8 + 64);
  v15 = (63 - v13) >> 6;
  v34 = v15;
  while (v14)
  {
LABEL_11:
    v19 = *(v0 + 240);
    v20 = *(v0 + 216);
    v38 = *(v0 + 224);
    v39 = *(v0 + 232);
    v21 = __clz(__rbit64(v14)) | (v10 << 6);
    v22 = *(v36 + 56);
    v37 = *(*(v36 + 48) + v21);
    v23 = swift_allocObject();
    *(v23 + 16) = *(v22 + 16 * v21);
    v24 = type metadata accessor for TaskPriority();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v19, 1, 1, v24);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = v20;
    *(v26 + 40) = v37;
    *(v26 + 48) = &unk_1004D29B0;
    *(v26 + 56) = v23;
    *(v26 + 64) = v38;
    sub_100005F04(v19, v39, &qword_1005A9690, &qword_1004C2A00);
    LODWORD(v19) = (*(v25 + 48))(v39, 1, v24);

    v27 = *(v0 + 232);
    if (v19 == 1)
    {
      sub_100002CE0(*(v0 + 232), &qword_1005A9690, &qword_1004C2A00);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v25 + 8))(v27, v24);
    }

    if (*(v26 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = dispatch thunk of Actor.unownedExecutor.getter();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = **(v0 + 200);
    v32 = swift_allocObject();
    *(v32 + 16) = &unk_1004D29C0;
    *(v32 + 24) = v26;

    if (v30 | v28)
    {
      v16 = v0 + 120;
      *(v0 + 120) = 0;
      *(v0 + 128) = 0;
      *(v0 + 136) = v28;
      *(v0 + 144) = v30;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v0 + 240);
    v14 &= v14 - 1;
    *(v0 + 176) = 1;
    *(v0 + 184) = v16;
    *(v0 + 192) = v31;
    swift_task_create();

    result = sub_100002CE0(v17, &qword_1005A9690, &qword_1004C2A00);
    v15 = v34;
    v11 = v35;
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v10;
    if (v14)
    {
      v10 = v18;
      goto LABEL_11;
    }
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100297240()
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

    return sub_100297464();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100297328()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002AB3A4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100297464()
{
  v1[2] = v0;
  v2 = type metadata accessor for Fence.TriggerID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Fence.TriggerPosition();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for Fence.ID();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = sub_10004B564(&qword_1005B0B98, &qword_1004D27F0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = type metadata accessor for FenceTriggerRecord(0);
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  sub_10004B564(&qword_1005B0BB0, &qword_1004D2830);
  v1[24] = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  v1[25] = v6;
  v1[26] = *(v6 - 8);
  v1[27] = swift_task_alloc();
  v7 = type metadata accessor for Fence.Schedule.Matcher();
  v1[28] = v7;
  v1[29] = *(v7 - 8);
  v1[30] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v1[31] = swift_task_alloc();
  v8 = type metadata accessor for Fence.Participant();
  v1[32] = v8;
  v1[33] = *(v8 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v9 = type metadata accessor for Fence.AcceptanceStatus();
  v1[36] = v9;
  v1[37] = *(v9 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v10 = type metadata accessor for Fence.Variant();
  v1[40] = v10;
  v1[41] = *(v10 - 8);
  v1[42] = swift_task_alloc();
  v11 = type metadata accessor for Fence.Schedule();
  v1[43] = v11;
  v1[44] = *(v11 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v12 = type metadata accessor for Fence();
  v1[47] = v12;
  v1[48] = *(v12 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v1[55] = v13;
  v1[56] = *(v13 - 8);
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();

  return _swift_task_switch(sub_100297AB4, v0, 0);
}

uint64_t sub_100297AB4()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 504) = sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Scheduler timer fired", v4, 2u);
  }

  static Date.now.getter();
  v5 = swift_task_alloc();
  *(v0 + 512) = v5;
  *v5 = v0;
  v5[1] = sub_100297C10;

  return daemon.getter();
}

uint64_t sub_100297C10(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[65] = a1;

  v3 = swift_task_alloc();
  v2[66] = v3;
  v4 = type metadata accessor for Daemon();
  v2[67] = v4;
  v5 = type metadata accessor for DataManager(0);
  v2[68] = v5;
  v6 = sub_1002AB19C(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[69] = v6;
  v7 = sub_1002AB19C(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  v2[70] = v7;
  *v3 = v9;
  v3[1] = sub_100297E04;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100297E04(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v6 = v4[2];

    return _swift_task_switch(sub_100298A24, v6, 0);
  }

  else
  {

    v4[72] = a1;
    v7 = swift_task_alloc();
    v4[73] = v7;
    *v7 = v5;
    v7[1] = sub_100297F90;

    return sub_100006424();
  }
}

uint64_t sub_100297F90(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 592) = a1;

  return _swift_task_switch(sub_1002980A8, v2, 0);
}

uint64_t sub_1002980A8()
{
  v109 = v0;
  v1 = *(v0 + 592);

  v2 = *(v1 + 16);
  *(v0 + 600) = v2;
  if (!v2)
  {
LABEL_24:

    v94 = swift_task_alloc();
    *(v0 + 816) = v94;
    *v94 = v0;
    v94[1] = sub_10029D0C8;

    return sub_1002A9688();
  }

  v3 = 0;
  *(v0 + 888) = *(*(v0 + 384) + 80);
  *(v0 + 892) = enum case for Fence.Variant.scheduled(_:);
  *(v0 + 896) = enum case for Fence.AcceptanceStatus.accepted(_:);
  *(v0 + 900) = enum case for Fence.Participant.me(_:);
  *(v0 + 904) = enum case for Fence.TriggerPosition.inside(_:);
  *(v0 + 908) = enum case for Fence.TriggerPosition.outside(_:);
  *(v0 + 912) = enum case for Fence.TriggerPosition.undetermined(_:);
  while (1)
  {
    *(v0 + 608) = v3;
    v4 = *(v0 + 592);
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v5 = *(v0 + 892);
    v6 = *(v0 + 432);
    v7 = *(v0 + 376);
    v8 = *(v0 + 384);
    v10 = *(v0 + 328);
    v9 = *(v0 + 336);
    v11 = *(v0 + 320);
    v12 = *(v8 + 16);
    v8 += 16;
    v13 = v4 + ((*(v0 + 888) + 32) & ~*(v0 + 888)) + *(v8 + 56) * v3;
    *(v0 + 616) = v12;
    *(v0 + 624) = v8 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v6, v13, v7);
    Fence.variant.getter();
    if ((*(v10 + 88))(v9, v11) == v5)
    {
      break;
    }

    v34 = *(v0 + 432);
    v35 = *(v0 + 376);
    v36 = *(v0 + 384);
    v38 = *(v0 + 328);
    v37 = *(v0 + 336);
    v39 = *(v0 + 320);
LABEL_14:
    (*(v36 + 8))(v34, v35);
    (*(v38 + 8))(v37, v39);
LABEL_15:
    v3 = *(v0 + 608) + 1;
    if (v3 == *(v0 + 600))
    {
      goto LABEL_24;
    }
  }

  loga = *(v0 + 896);
  v14 = *(v0 + 368);
  v15 = *(v0 + 344);
  v16 = *(v0 + 352);
  v17 = *(v0 + 336);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 304);
  v21 = *(v0 + 288);
  (*(*(v0 + 328) + 96))(v17, *(v0 + 320));
  (*(v16 + 32))(v14, v17, v15);
  Fence.acceptanceStatus.getter();
  (*(v19 + 104))(v20, loga, v21);
  v22 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v23 = *(v19 + 8);
  v23(v20, v21);
  v23(v18, v21);
  if ((v22 & 1) == 0 || (v24 = *(v0 + 900), v26 = *(v0 + 272), v25 = *(v0 + 280), v27 = *(v0 + 256), v28 = *(v0 + 264), Fence.finder.getter(), (*(v28 + 104))(v26, v24, v27), v29 = static Fence.Participant.== infix(_:_:)(), v30 = *(v28 + 8), v30(v26, v27), v30(v25, v27), (v29 & 1) == 0))
  {
LABEL_13:
    v37 = *(v0 + 432);
    v39 = *(v0 + 376);
    v38 = *(v0 + 384);
    v34 = *(v0 + 368);
    v35 = *(v0 + 344);
    v36 = *(v0 + 352);
    goto LABEL_14;
  }

  v31 = *(v0 + 440);
  v32 = *(v0 + 448);
  v33 = *(v0 + 248);
  Fence.muteEndDate.getter();
  if ((*(v32 + 48))(v33, 1, v31) != 1)
  {
    v40 = *(v0 + 488);
    v41 = *(v0 + 440);
    v42 = *(v0 + 448);
    (*(v42 + 32))(v40, *(v0 + 248), v41);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v43 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v42 + 8))(v40, v41);
    if (v43)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  sub_100002CE0(*(v0 + 248), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_11:
  v44 = *(v0 + 496);
  v46 = *(v0 + 472);
  v45 = *(v0 + 480);
  v99 = *(v0 + 464);
  v102 = *(v0 + 456);
  v48 = *(v0 + 440);
  v47 = *(v0 + 448);
  v50 = *(v0 + 232);
  v49 = *(v0 + 240);
  v51 = *(v0 + 224);
  v98 = *(*(v0 + 352) + 16);
  v98(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousStartDate(from:)();
  v52 = *(v50 + 8);
  v52(v49, v51);
  v53 = *(v47 + 16);
  v53(v46, v45, v48);
  v53(v99, v44, v48);
  v53(v102, v45, v48);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  v56 = os_log_type_enabled(v54, v55);
  v58 = *(v0 + 464);
  v57 = *(v0 + 472);
  v60 = *(v0 + 448);
  v59 = *(v0 + 456);
  v61 = *(v0 + 440);
  if (v56)
  {
    logb = v54;
    v62 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v108 = v103;
    *v62 = 136446466;
    v97 = v58;
    v63 = v52;
    v64 = Date.localISO8601.getter();
    v100 = v55;
    v66 = v65;
    v67 = *(v60 + 8);
    (v67)(v57, v61);
    v68 = v64;
    v52 = v63;
    v69 = sub_10000D01C(v68, v66, &v108);

    *(v62 + 4) = v69;
    *(v62 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v71 = v70;
    (v67)(v59, v61);
    (v67)(v97, v61);
    *(v62 + 14) = v71;
    _os_log_impl(&_mh_execute_header, logb, v100, "schedulerTimerFired: startDate: %{public}s timeDelta: %{public}f", v62, 0x16u);
    sub_100004984(v103);
  }

  else
  {

    v67 = *(v60 + 8);
    (v67)(v59, v61);
    (v67)(v58, v61);
    (v67)(v57, v61);
  }

  *(v0 + 632) = v67;
  Date.timeIntervalSince(_:)();
  if (v72 > 300.0)
  {
    v73 = *(v0 + 432);
    v74 = *(v0 + 376);
    v75 = *(v0 + 384);
    v76 = *(v0 + 368);
    v77 = *(v0 + 344);
    v78 = *(v0 + 352);
    (v67)(*(v0 + 480), *(v0 + 440));
    (*(v78 + 8))(v76, v77);
    (*(v75 + 8))(v73, v74);
    goto LABEL_15;
  }

  v79 = *(v0 + 240);
  v80 = *(v0 + 224);
  v81 = *(v0 + 200);
  v82 = *(v0 + 208);
  v83 = *(v0 + 192);
  v98(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v52(v79, v80);
  if ((*(v82 + 48))(v83, 1, v81) == 1)
  {
    log = v67;
    sub_100002CE0(*(v0 + 192), &qword_1005B0BB0, &qword_1004D2830);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 480);
    v88 = *(v0 + 440);
    v89 = *(v0 + 384);
    v101 = *(v0 + 376);
    v104 = *(v0 + 432);
    v90 = *(v0 + 368);
    v92 = *(v0 + 344);
    v91 = *(v0 + 352);
    if (v86)
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "No valid interval for startDate", v93, 2u);
    }

    (log)(v87, v88);
    (*(v91 + 8))(v90, v92);
    (*(v89 + 8))(v104, v101);
    goto LABEL_15;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v96 = swift_task_alloc();
  *(v0 + 640) = v96;
  *v96 = v0;
  v96[1] = sub_100298C64;

  return daemon.getter();
}

uint64_t sub_100298A24()
{
  v1 = v0[62];
  v2 = v0[55];
  v3 = v0[56];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100298C64(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 648) = a1;

  v5 = swift_task_alloc();
  *(v3 + 656) = v5;
  v6 = type metadata accessor for LocalStorageService();
  v7 = sub_1002AB19C(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v5 = v4;
  v5[1] = sub_100298E18;
  v8 = *(v2 + 552);
  v9 = *(v2 + 536);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100298E18(uint64_t a1)
{
  v3 = *v2;
  v3[83] = a1;
  v3[84] = v1;

  if (v1)
  {
    v4 = v3[2];

    v5 = sub_10029DC68;
  }

  else
  {
    v4 = v3[2];

    v5 = sub_100298F74;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100298F74(uint64_t a1)
{
  v2 = *(v1 + 664);
  Fence.id.getter();

  return _swift_task_switch(sub_100298FE4, v2, 0);
}

uint64_t sub_100298FE4()
{
  v1 = v0[83];
  v2 = v0[17];
  v3 = sub_1002AB19C(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);
  v4 = swift_task_alloc();
  v0[85] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[86] = v5;
  *v5 = v0;
  v5[1] = sub_100299114;
  v6 = v0[20];
  v7 = v0[18];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, v3, 0xD000000000000011, 0x80000001004E6620, sub_100293188, v4, v7);
}

uint64_t sub_100299114()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v3 = v2[83];

    v4 = sub_100299FAC;
    v5 = v3;
  }

  else
  {
    v6 = v2[17];
    v7 = v2[12];
    v8 = v2[13];
    v9 = v2[2];

    v10 = *(v8 + 8);
    v2[88] = v10;
    v2[89] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v7);
    v4 = sub_100299294;
    v5 = v9;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100299294()
{
  v156 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v2 + 48);
  *(v0 + 720) = v4;
  *(v0 + 728) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) != 1)
  {
    sub_1002AB1E4(v3, *(v0 + 184));
    Fence.id.getter();
    v21 = swift_task_alloc();
    *(v0 + 736) = v21;
    *v21 = v0;
    v21[1] = sub_10029A2EC;
    v22 = *(v0 + 216);
    v23 = *(v0 + 152);
    v24 = *(v0 + 128);

    return sub_100306C9C(v23, v24, v22);
  }

  v5 = *(v0 + 616);
  v6 = *(v0 + 432);
  v7 = *(v0 + 400);
  v8 = *(v0 + 376);
  sub_100002CE0(v3, &qword_1005B0B98, &qword_1004D27F0);
  v5(v7, v6, v8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v127 = *(v0 + 704);
    v145 = *(v0 + 632);
    v140 = *(v0 + 480);
    v136 = *(v0 + 440);
    v150 = *(v0 + 432);
    v11 = *(v0 + 400);
    v125 = *(v0 + 384);
    v126 = *(v0 + 376);
    v138 = *(v0 + 368);
    v131 = *(v0 + 352);
    v133 = *(v0 + 344);
    v128 = *(v0 + 208);
    v129 = *(v0 + 200);
    v130 = *(v0 + 216);
    v12 = *(v0 + 120);
    v13 = *(v0 + 96);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v155 = v15;
    *v14 = 136446210;
    Fence.id.getter();
    sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v127(v12, v13);
    v19 = *(v125 + 8);
    v19(v11, v126);
    v20 = sub_10000D01C(v16, v18, &v155);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Not triggering fence (no previousTrigger): %{public}s", v14, 0xCu);
    sub_100004984(v15);

    (*(v128 + 8))(v130, v129);
    v145(v140, v136);
    (*(v131 + 8))(v138, v133);
    v19(v150, v126);
  }

  else
  {
    v146 = *(v0 + 632);
    v141 = *(v0 + 480);
    v137 = *(v0 + 440);
    v151 = *(v0 + 432);
    v26 = *(v0 + 400);
    v28 = *(v0 + 376);
    v27 = *(v0 + 384);
    v139 = *(v0 + 368);
    v29 = *(v0 + 352);
    v134 = *(v0 + 344);
    v30 = v9;
    v31 = *(v0 + 208);
    v32 = *(v0 + 216);
    v33 = *(v0 + 200);

    v34 = *(v27 + 8);
    v34(v26, v28);
    (*(v31 + 8))(v32, v33);
    v146(v141, v137);
    (*(v29 + 8))(v139, v134);
    v34(v151, v28);
  }

  v35 = *(v0 + 608) + 1;
  if (v35 == *(v0 + 600))
  {
LABEL_9:

    v36 = swift_task_alloc();
    *(v0 + 816) = v36;
    *v36 = v0;
    v36[1] = sub_10029D0C8;

    return sub_1002A9688();
  }

  while (1)
  {
    *(v0 + 608) = v35;
    v37 = *(v0 + 592);
    if (v35 >= *(v37 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v38 = *(v0 + 892);
    v39 = *(v0 + 432);
    v40 = *(v0 + 376);
    v41 = *(v0 + 384);
    v43 = *(v0 + 328);
    v42 = *(v0 + 336);
    v44 = *(v0 + 320);
    v45 = *(v41 + 16);
    v41 += 16;
    v46 = v37 + ((*(v0 + 888) + 32) & ~*(v0 + 888)) + *(v41 + 56) * v35;
    *(v0 + 616) = v45;
    *(v0 + 624) = v41 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v39, v46, v40);
    Fence.variant.getter();
    if ((*(v43 + 88))(v42, v44) == v38)
    {
      break;
    }

    v67 = *(v0 + 432);
    v68 = *(v0 + 376);
    v69 = *(v0 + 384);
    v71 = *(v0 + 328);
    v70 = *(v0 + 336);
    v72 = *(v0 + 320);
LABEL_23:
    (*(v69 + 8))(v67, v68);
    (*(v71 + 8))(v70, v72);
LABEL_24:
    v35 = *(v0 + 608) + 1;
    if (v35 == *(v0 + 600))
    {
      goto LABEL_9;
    }
  }

  v152 = *(v0 + 896);
  v47 = *(v0 + 368);
  v49 = *(v0 + 344);
  v48 = *(v0 + 352);
  v50 = *(v0 + 336);
  v51 = *(v0 + 312);
  v52 = *(v0 + 296);
  v53 = *(v0 + 304);
  v54 = *(v0 + 288);
  (*(*(v0 + 328) + 96))(v50, *(v0 + 320));
  (*(v48 + 32))(v47, v50, v49);
  Fence.acceptanceStatus.getter();
  (*(v52 + 104))(v53, v152, v54);
  v55 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v56 = *(v52 + 8);
  v56(v53, v54);
  v56(v51, v54);
  if ((v55 & 1) == 0 || (v57 = *(v0 + 900), v59 = *(v0 + 272), v58 = *(v0 + 280), v61 = *(v0 + 256), v60 = *(v0 + 264), Fence.finder.getter(), (*(v60 + 104))(v59, v57, v61), v62 = static Fence.Participant.== infix(_:_:)(), v63 = *(v60 + 8), v63(v59, v61), v63(v58, v61), (v62 & 1) == 0))
  {
LABEL_22:
    v70 = *(v0 + 432);
    v72 = *(v0 + 376);
    v71 = *(v0 + 384);
    v67 = *(v0 + 368);
    v68 = *(v0 + 344);
    v69 = *(v0 + 352);
    goto LABEL_23;
  }

  v64 = *(v0 + 440);
  v65 = *(v0 + 448);
  v66 = *(v0 + 248);
  Fence.muteEndDate.getter();
  if ((*(v65 + 48))(v66, 1, v64) != 1)
  {
    v73 = *(v0 + 488);
    v74 = *(v0 + 440);
    v75 = *(v0 + 448);
    (*(v75 + 32))(v73, *(v0 + 248), v74);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v76 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v75 + 8))(v73, v74);
    if (v76)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  sub_100002CE0(*(v0 + 248), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_20:
  v77 = *(v0 + 496);
  v79 = *(v0 + 472);
  v78 = *(v0 + 480);
  v142 = *(v0 + 464);
  v147 = *(v0 + 456);
  v81 = *(v0 + 440);
  v80 = *(v0 + 448);
  v83 = *(v0 + 232);
  v82 = *(v0 + 240);
  v84 = *(v0 + 224);
  v135 = *(*(v0 + 352) + 16);
  v135(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousStartDate(from:)();
  v132 = *(v83 + 8);
  v132(v82, v84);
  v85 = *(v80 + 16);
  v85(v79, v78, v81);
  v85(v142, v77, v81);
  v85(v147, v78, v81);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  v88 = os_log_type_enabled(v86, v87);
  v90 = *(v0 + 464);
  v89 = *(v0 + 472);
  v92 = *(v0 + 448);
  v91 = *(v0 + 456);
  v93 = *(v0 + 440);
  if (v88)
  {
    v148 = v87;
    v94 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v155 = v153;
    *v94 = 136446466;
    v143 = v90;
    v95 = Date.localISO8601.getter();
    v97 = v96;
    v98 = *(v92 + 8);
    v98(v89, v93);
    v99 = sub_10000D01C(v95, v97, &v155);

    *(v94 + 4) = v99;
    *(v94 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v101 = v100;
    v98(v91, v93);
    v98(v143, v93);
    *(v94 + 14) = v101;
    _os_log_impl(&_mh_execute_header, v86, v148, "schedulerTimerFired: startDate: %{public}s timeDelta: %{public}f", v94, 0x16u);
    sub_100004984(v153);
  }

  else
  {

    v98 = *(v92 + 8);
    v98(v91, v93);
    v98(v90, v93);
    v98(v89, v93);
  }

  *(v0 + 632) = v98;
  Date.timeIntervalSince(_:)();
  if (v102 > 300.0)
  {
    v103 = *(v0 + 432);
    v104 = *(v0 + 376);
    v105 = *(v0 + 384);
    v106 = *(v0 + 368);
    v107 = *(v0 + 344);
    v108 = *(v0 + 352);
    v98(*(v0 + 480), *(v0 + 440));
    (*(v108 + 8))(v106, v107);
    (*(v105 + 8))(v103, v104);
    goto LABEL_24;
  }

  v109 = *(v0 + 240);
  v110 = *(v0 + 224);
  v111 = *(v0 + 200);
  v112 = *(v0 + 208);
  v113 = *(v0 + 192);
  v135(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v132(v109, v110);
  if ((*(v112 + 48))(v113, 1, v111) == 1)
  {
    v154 = v98;
    sub_100002CE0(*(v0 + 192), &qword_1005B0BB0, &qword_1004D2830);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    v116 = os_log_type_enabled(v114, v115);
    v117 = *(v0 + 480);
    v118 = *(v0 + 440);
    v149 = *(v0 + 432);
    v119 = *(v0 + 384);
    v144 = *(v0 + 376);
    v120 = *(v0 + 368);
    v122 = *(v0 + 344);
    v121 = *(v0 + 352);
    if (v116)
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "No valid interval for startDate", v123, 2u);
    }

    v154(v117, v118);
    (*(v121 + 8))(v120, v122);
    (*(v119 + 8))(v149, v144);
    goto LABEL_24;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v124 = swift_task_alloc();
  *(v0 + 640) = v124;
  *v124 = v0;
  v124[1] = sub_100298C64;

  return daemon.getter();
}

uint64_t sub_100299FAC()
{
  v1 = v0[2];
  (*(v0[13] + 8))(v0[17], v0[12]);

  return _swift_task_switch(sub_10029A028, v1, 0);
}

uint64_t sub_10029A028()
{
  v1 = v0[79];
  v2 = v0[55];
  v14 = v0[54];
  v15 = v0[62];
  v3 = v0[48];
  v13 = v0[47];
  v11 = v0[60];
  v12 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[25];

  (*(v6 + 8))(v7, v8);
  v1(v11, v2);
  (*(v4 + 8))(v12, v5);
  (*(v3 + 8))(v14, v13);
  v1(v15, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10029A2EC()
{
  v2 = *v1;
  v2[93] = v0;

  v3 = v2[88];
  if (v0)
  {
    v4 = v2[16];
    v5 = v2[12];
    v6 = v2[2];
    v3(v4, v5);

    v7 = sub_10029DF18;
    v8 = v6;
  }

  else
  {
    v9 = v2[2];
    v3(v2[16], v2[12]);
    v7 = sub_10029A468;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10029A468()
{
  v240 = v0;
  v1 = *(v0 + 152);
  v2 = (*(v0 + 720))(v1, 1, *(v0 + 168));
  sub_100002CE0(v1, &qword_1005B0B98, &qword_1004D27F0);
  if (v2 == 1)
  {
    v3 = *(v0 + 904);
    v4 = *(v0 + 88);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    (*(v6 + 16))(v4, *(v0 + 184) + *(*(v0 + 168) + 24), v5);
    v7 = (*(v6 + 88))(v4, v5);
    if (v7 == v3)
    {
      v8 = *(v0 + 904);
      v10 = *(v0 + 80);
      v9 = *(v0 + 88);
      v11 = *(v0 + 56);
      v12 = *(v0 + 64);
      (*(v12 + 96))(v9, v11);
      *(v0 + 752) = *v9;
      v13 = sub_1002A953C();
      *(v0 + 760) = v13;
      Fence.id.getter();
      *v10 = v13;
      (*(v12 + 104))(v10, v8, v11);
      v14 = v13;
      Fence.TriggerID.init()();
      v15 = swift_task_alloc();
      *(v0 + 768) = v15;
      *v15 = v0;
      v15[1] = sub_10029B8A8;
      v16 = *(v0 + 120);
      v17 = *(v0 + 80);
      v18 = *(v0 + 48);

      return sub_100289330(v16, v17, v18);
    }

    if (v7 == *(v0 + 908))
    {
      v32 = *(v0 + 616);
      v33 = *(v0 + 432);
      v34 = *(v0 + 416);
      v35 = *(v0 + 376);
      v36 = *(v0 + 88);
      (*(*(v0 + 64) + 96))(v36, *(v0 + 56));
      *(v0 + 776) = *v36;
      v37 = sub_1002A953C();
      *(v0 + 784) = v37;
      v32(v34, v33, v35);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v212 = *(v0 + 704);
        v207 = *(v0 + 416);
        v40 = *(v0 + 384);
        v224 = *(v0 + 376);
        v41 = *(v0 + 120);
        v42 = *(v0 + 96);
        v43 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        v239[0] = v232;
        *v43 = 136446210;
        Fence.id.getter();
        sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v37;
        v47 = v46;
        v212(v41, v42);
        v48 = *(v40 + 8);
        v48(v207, v224);
        v49 = sub_10000D01C(v44, v47, v239);
        v37 = v45;

        *(v43 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v38, v39, "Schedule Timer about to trigger fence: %{public}s", v43, 0xCu);
        sub_100004984(v232);
      }

      else
      {
        v160 = *(v0 + 416);
        v162 = *(v0 + 376);
        v161 = *(v0 + 384);

        v48 = *(v161 + 8);
        v48(v160, v162);
      }

      *(v0 + 792) = v48;
      v163 = *(v0 + 908);
      v164 = *(v0 + 64);
      v165 = *(v0 + 72);
      v166 = *(v0 + 56);
      Fence.id.getter();
      Fence.TriggerID.init()();
      *v165 = v37;
      (*(v164 + 104))(v165, v163, v166);
      v167 = v37;
      v168 = swift_task_alloc();
      *(v0 + 800) = v168;
      *v168 = v0;
      v168[1] = sub_10029C4A4;
      v169 = *(v0 + 112);
      v170 = *(v0 + 72);
      v171 = *(v0 + 40);

      return sub_100274D00(v169, v171, v170);
    }

    if (v7 != *(v0 + 912))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    (*(v0 + 616))(*(v0 + 408), *(v0 + 432), *(v0 + 376));
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v148, v149))
    {
      v187 = *(v0 + 704);
      v221 = *(v0 + 480);
      v229 = *(v0 + 632);
      v209 = *(v0 + 440);
      v237 = *(v0 + 432);
      v150 = *(v0 + 408);
      v183 = *(v0 + 384);
      v185 = *(v0 + 376);
      v214 = *(v0 + 368);
      v199 = *(v0 + 352);
      v204 = *(v0 + 344);
      v193 = *(v0 + 200);
      v195 = *(v0 + 216);
      v189 = *(v0 + 184);
      v191 = *(v0 + 208);
      v151 = *(v0 + 120);
      v152 = *(v0 + 96);
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v239[0] = v154;
      *v153 = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v155 = dispatch thunk of CustomStringConvertible.description.getter();
      v157 = v156;
      v187(v151, v152);
      v158 = *(v183 + 8);
      v158(v150, v185);
      v159 = sub_10000D01C(v155, v157, v239);

      *(v153 + 4) = v159;
      _os_log_impl(&_mh_execute_header, v148, v149, "TriggerPosition is .undetermined for fence: %{public}s", v153, 0xCu);
      sub_100004984(v154);

      sub_1002AB248(v189);
      (*(v191 + 8))(v195, v193);
      v229(v221, v209);
      (*(v199 + 8))(v214, v204);
      v158(v237, v185);
    }

    else
    {
      v222 = *(v0 + 480);
      v230 = *(v0 + 632);
      v210 = *(v0 + 440);
      v238 = *(v0 + 432);
      v172 = *(v0 + 408);
      v173 = *(v0 + 376);
      v174 = *(v0 + 384);
      v215 = *(v0 + 368);
      v175 = v148;
      v176 = *(v0 + 352);
      v177 = *(v0 + 208);
      v200 = *(v0 + 216);
      v205 = *(v0 + 344);
      v178 = *(v0 + 200);
      v179 = *(v0 + 184);

      v180 = *(v174 + 8);
      v180(v172, v173);
      sub_1002AB248(v179);
      (*(v177 + 8))(v200, v178);
      v230(v222, v210);
      (*(v176 + 8))(v215, v205);
      v180(v238, v173);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 88), *(v0 + 56));
  }

  else
  {
    (*(v0 + 616))(*(v0 + 424), *(v0 + 432), *(v0 + 376));
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v186 = *(v0 + 704);
      v216 = *(v0 + 480);
      v223 = *(v0 + 632);
      v206 = *(v0 + 440);
      v22 = *(v0 + 424);
      v231 = *(v0 + 432);
      v182 = *(v0 + 384);
      v184 = *(v0 + 376);
      v211 = *(v0 + 368);
      v196 = *(v0 + 352);
      v201 = *(v0 + 344);
      v192 = *(v0 + 200);
      v194 = *(v0 + 216);
      v188 = *(v0 + 184);
      v190 = *(v0 + 208);
      v23 = *(v0 + 120);
      v24 = *(v0 + 96);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v239[0] = v26;
      *v25 = 136446210;
      Fence.id.getter();
      sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v186(v23, v24);
      v30 = *(v182 + 8);
      v30(v22, v184);
      v31 = sub_10000D01C(v27, v29, v239);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not triggering fence (fence already triggered in current scheduleInterval): %{public}s", v25, 0xCu);
      sub_100004984(v26);

      sub_1002AB248(v188);
      (*(v190 + 8))(v194, v192);
      v223(v216, v206);
      (*(v196 + 8))(v211, v201);
      v30(v231, v184);
    }

    else
    {
      v217 = *(v0 + 480);
      v225 = *(v0 + 632);
      v208 = *(v0 + 440);
      v50 = *(v0 + 424);
      v233 = *(v0 + 432);
      v51 = *(v0 + 376);
      v52 = *(v0 + 384);
      v213 = *(v0 + 368);
      v53 = v20;
      v54 = *(v0 + 352);
      v55 = *(v0 + 208);
      v197 = *(v0 + 216);
      v202 = *(v0 + 344);
      v56 = *(v0 + 200);
      v57 = *(v0 + 184);

      v58 = *(v52 + 8);
      v58(v50, v51);
      sub_1002AB248(v57);
      (*(v55 + 8))(v197, v56);
      v225(v217, v208);
      (*(v54 + 8))(v213, v202);
      v58(v233, v51);
    }
  }

  v59 = *(v0 + 608) + 1;
  if (v59 == *(v0 + 600))
  {
LABEL_13:

    v60 = swift_task_alloc();
    *(v0 + 816) = v60;
    *v60 = v0;
    v60[1] = sub_10029D0C8;

    return sub_1002A9688();
  }

  while (1)
  {
    *(v0 + 608) = v59;
    v61 = *(v0 + 592);
    if (v59 >= *(v61 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v62 = *(v0 + 892);
    v63 = *(v0 + 432);
    v64 = *(v0 + 376);
    v65 = *(v0 + 384);
    v67 = *(v0 + 328);
    v66 = *(v0 + 336);
    v68 = *(v0 + 320);
    v69 = *(v65 + 16);
    v65 += 16;
    v70 = v61 + ((*(v0 + 888) + 32) & ~*(v0 + 888)) + *(v65 + 56) * v59;
    *(v0 + 616) = v69;
    *(v0 + 624) = v65 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v69(v63, v70, v64);
    Fence.variant.getter();
    if ((*(v67 + 88))(v66, v68) == v62)
    {
      break;
    }

    v91 = *(v0 + 432);
    v92 = *(v0 + 376);
    v93 = *(v0 + 384);
    v95 = *(v0 + 328);
    v94 = *(v0 + 336);
    v96 = *(v0 + 320);
LABEL_27:
    (*(v93 + 8))(v91, v92);
    (*(v95 + 8))(v94, v96);
LABEL_28:
    v59 = *(v0 + 608) + 1;
    if (v59 == *(v0 + 600))
    {
      goto LABEL_13;
    }
  }

  v234 = *(v0 + 896);
  v71 = *(v0 + 368);
  v73 = *(v0 + 344);
  v72 = *(v0 + 352);
  v74 = *(v0 + 336);
  v75 = *(v0 + 312);
  v76 = *(v0 + 296);
  v77 = *(v0 + 304);
  v78 = *(v0 + 288);
  (*(*(v0 + 328) + 96))(v74, *(v0 + 320));
  (*(v72 + 32))(v71, v74, v73);
  Fence.acceptanceStatus.getter();
  (*(v76 + 104))(v77, v234, v78);
  v79 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v80 = *(v76 + 8);
  v80(v77, v78);
  v80(v75, v78);
  if ((v79 & 1) == 0 || (v81 = *(v0 + 900), v83 = *(v0 + 272), v82 = *(v0 + 280), v85 = *(v0 + 256), v84 = *(v0 + 264), Fence.finder.getter(), (*(v84 + 104))(v83, v81, v85), v86 = static Fence.Participant.== infix(_:_:)(), v87 = *(v84 + 8), v87(v83, v85), v87(v82, v85), (v86 & 1) == 0))
  {
LABEL_26:
    v94 = *(v0 + 432);
    v96 = *(v0 + 376);
    v95 = *(v0 + 384);
    v91 = *(v0 + 368);
    v92 = *(v0 + 344);
    v93 = *(v0 + 352);
    goto LABEL_27;
  }

  v88 = *(v0 + 440);
  v89 = *(v0 + 448);
  v90 = *(v0 + 248);
  Fence.muteEndDate.getter();
  if ((*(v89 + 48))(v90, 1, v88) != 1)
  {
    v97 = *(v0 + 488);
    v98 = *(v0 + 440);
    v99 = *(v0 + 448);
    (*(v99 + 32))(v97, *(v0 + 248), v98);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v100 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v99 + 8))(v97, v98);
    if (v100)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  sub_100002CE0(*(v0 + 248), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_24:
  v101 = *(v0 + 496);
  v103 = *(v0 + 472);
  v102 = *(v0 + 480);
  v218 = *(v0 + 464);
  v226 = *(v0 + 456);
  v105 = *(v0 + 440);
  v104 = *(v0 + 448);
  v107 = *(v0 + 232);
  v106 = *(v0 + 240);
  v108 = *(v0 + 224);
  v203 = *(*(v0 + 352) + 16);
  v203(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousStartDate(from:)();
  v198 = *(v107 + 8);
  v198(v106, v108);
  v109 = *(v104 + 16);
  v109(v103, v102, v105);
  v109(v218, v101, v105);
  v109(v226, v102, v105);
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();
  v112 = os_log_type_enabled(v110, v111);
  v114 = *(v0 + 464);
  v113 = *(v0 + 472);
  v116 = *(v0 + 448);
  v115 = *(v0 + 456);
  v117 = *(v0 + 440);
  if (v112)
  {
    v227 = v111;
    v118 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    v239[0] = v235;
    *v118 = 136446466;
    v219 = v114;
    v119 = Date.localISO8601.getter();
    v121 = v120;
    v122 = *(v116 + 8);
    v122(v113, v117);
    v123 = sub_10000D01C(v119, v121, v239);

    *(v118 + 4) = v123;
    *(v118 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v125 = v124;
    v122(v115, v117);
    v122(v219, v117);
    *(v118 + 14) = v125;
    _os_log_impl(&_mh_execute_header, v110, v227, "schedulerTimerFired: startDate: %{public}s timeDelta: %{public}f", v118, 0x16u);
    sub_100004984(v235);
  }

  else
  {

    v122 = *(v116 + 8);
    v122(v115, v117);
    v122(v114, v117);
    v122(v113, v117);
  }

  *(v0 + 632) = v122;
  Date.timeIntervalSince(_:)();
  if (v126 > 300.0)
  {
    v127 = *(v0 + 432);
    v128 = *(v0 + 376);
    v129 = *(v0 + 384);
    v130 = *(v0 + 368);
    v131 = *(v0 + 344);
    v132 = *(v0 + 352);
    v122(*(v0 + 480), *(v0 + 440));
    (*(v132 + 8))(v130, v131);
    (*(v129 + 8))(v127, v128);
    goto LABEL_28;
  }

  v133 = *(v0 + 240);
  v134 = *(v0 + 224);
  v135 = *(v0 + 200);
  v136 = *(v0 + 208);
  v137 = *(v0 + 192);
  v203(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v198(v133, v134);
  if ((*(v136 + 48))(v137, 1, v135) == 1)
  {
    v236 = v122;
    sub_100002CE0(*(v0 + 192), &qword_1005B0BB0, &qword_1004D2830);
    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.error.getter();
    v140 = os_log_type_enabled(v138, v139);
    v141 = *(v0 + 480);
    v142 = *(v0 + 440);
    v143 = *(v0 + 384);
    v220 = *(v0 + 376);
    v228 = *(v0 + 432);
    v144 = *(v0 + 368);
    v146 = *(v0 + 344);
    v145 = *(v0 + 352);
    if (v140)
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&_mh_execute_header, v138, v139, "No valid interval for startDate", v147, 2u);
    }

    v236(v141, v142);
    (*(v145 + 8))(v144, v146);
    (*(v143 + 8))(v228, v220);
    goto LABEL_28;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v181 = swift_task_alloc();
  *(v0 + 640) = v181;
  *v181 = v0;
  v181[1] = sub_100298C64;

  return daemon.getter();
}

uint64_t sub_10029B8A8()
{
  v11 = *(*v0 + 704);
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 32);
  v8 = *(*v0 + 24);
  v9 = *(*v0 + 16);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v11(v1, v2);

  return _swift_task_switch(sub_10029BAE8, v9, 0);
}

uint64_t sub_10029BAE8()
{
  v118 = v0;
  v1 = *(v0 + 760);
  v99 = *(v0 + 440);
  v113 = *(v0 + 432);
  v2 = *(v0 + 384);
  v105 = *(v0 + 632);
  v109 = *(v0 + 376);
  v103 = *(v0 + 480);
  v104 = *(v0 + 368);
  v3 = *(v0 + 352);
  v101 = *(v0 + 344);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);

  sub_1002AB248(v7);
  (*(v4 + 8))(v5, v6);
  v105(v103, v99);
  (*(v3 + 8))(v104, v101);
  (*(v2 + 8))(v113, v109);
  v8 = *(v0 + 608) + 1;
  if (v8 == *(v0 + 600))
  {
LABEL_2:

    v9 = swift_task_alloc();
    *(v0 + 816) = v9;
    *v9 = v0;
    v9[1] = sub_10029D0C8;

    return sub_1002A9688();
  }

  while (1)
  {
    *(v0 + 608) = v8;
    v11 = *(v0 + 592);
    if (v8 >= *(v11 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v12 = *(v0 + 892);
    v13 = *(v0 + 432);
    v14 = *(v0 + 376);
    v15 = *(v0 + 384);
    v17 = *(v0 + 328);
    v16 = *(v0 + 336);
    v18 = *(v0 + 320);
    v19 = *(v15 + 16);
    v15 += 16;
    v20 = v11 + ((*(v0 + 888) + 32) & ~*(v0 + 888)) + *(v15 + 56) * v8;
    *(v0 + 616) = v19;
    *(v0 + 624) = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v13, v20, v14);
    Fence.variant.getter();
    if ((*(v17 + 88))(v16, v18) == v12)
    {
      break;
    }

    v41 = *(v0 + 432);
    v42 = *(v0 + 376);
    v43 = *(v0 + 384);
    v45 = *(v0 + 328);
    v44 = *(v0 + 336);
    v46 = *(v0 + 320);
LABEL_16:
    (*(v43 + 8))(v41, v42);
    (*(v45 + 8))(v44, v46);
LABEL_17:
    v8 = *(v0 + 608) + 1;
    if (v8 == *(v0 + 600))
    {
      goto LABEL_2;
    }
  }

  v114 = *(v0 + 896);
  v21 = *(v0 + 368);
  v23 = *(v0 + 344);
  v22 = *(v0 + 352);
  v24 = *(v0 + 336);
  v25 = *(v0 + 312);
  v26 = *(v0 + 296);
  v27 = *(v0 + 304);
  v28 = *(v0 + 288);
  (*(*(v0 + 328) + 96))(v24, *(v0 + 320));
  (*(v22 + 32))(v21, v24, v23);
  Fence.acceptanceStatus.getter();
  (*(v26 + 104))(v27, v114, v28);
  v29 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v30 = *(v26 + 8);
  v30(v27, v28);
  v30(v25, v28);
  if ((v29 & 1) == 0 || (v31 = *(v0 + 900), v33 = *(v0 + 272), v32 = *(v0 + 280), v35 = *(v0 + 256), v34 = *(v0 + 264), Fence.finder.getter(), (*(v34 + 104))(v33, v31, v35), v36 = static Fence.Participant.== infix(_:_:)(), v37 = *(v34 + 8), v37(v33, v35), v37(v32, v35), (v36 & 1) == 0))
  {
LABEL_15:
    v44 = *(v0 + 432);
    v46 = *(v0 + 376);
    v45 = *(v0 + 384);
    v41 = *(v0 + 368);
    v42 = *(v0 + 344);
    v43 = *(v0 + 352);
    goto LABEL_16;
  }

  v38 = *(v0 + 440);
  v39 = *(v0 + 448);
  v40 = *(v0 + 248);
  Fence.muteEndDate.getter();
  if ((*(v39 + 48))(v40, 1, v38) != 1)
  {
    v47 = *(v0 + 488);
    v48 = *(v0 + 440);
    v49 = *(v0 + 448);
    (*(v49 + 32))(v47, *(v0 + 248), v48);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v50 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v49 + 8))(v47, v48);
    if (v50)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  sub_100002CE0(*(v0 + 248), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_13:
  v51 = *(v0 + 496);
  v53 = *(v0 + 472);
  v52 = *(v0 + 480);
  v106 = *(v0 + 464);
  v110 = *(v0 + 456);
  v55 = *(v0 + 440);
  v54 = *(v0 + 448);
  v57 = *(v0 + 232);
  v56 = *(v0 + 240);
  v58 = *(v0 + 224);
  v102 = *(*(v0 + 352) + 16);
  v102(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousStartDate(from:)();
  v100 = *(v57 + 8);
  v100(v56, v58);
  v59 = *(v54 + 16);
  v59(v53, v52, v55);
  v59(v106, v51, v55);
  v59(v110, v52, v55);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v64 = *(v0 + 464);
  v63 = *(v0 + 472);
  v66 = *(v0 + 448);
  v65 = *(v0 + 456);
  v67 = *(v0 + 440);
  if (v62)
  {
    v111 = v61;
    v68 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v117 = v115;
    *v68 = 136446466;
    v107 = v64;
    v69 = Date.localISO8601.getter();
    v71 = v70;
    v72 = *(v66 + 8);
    v72(v63, v67);
    v73 = sub_10000D01C(v69, v71, &v117);

    *(v68 + 4) = v73;
    *(v68 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v75 = v74;
    v72(v65, v67);
    v72(v107, v67);
    *(v68 + 14) = v75;
    _os_log_impl(&_mh_execute_header, v60, v111, "schedulerTimerFired: startDate: %{public}s timeDelta: %{public}f", v68, 0x16u);
    sub_100004984(v115);
  }

  else
  {

    v72 = *(v66 + 8);
    v72(v65, v67);
    v72(v64, v67);
    v72(v63, v67);
  }

  *(v0 + 632) = v72;
  Date.timeIntervalSince(_:)();
  if (v76 > 300.0)
  {
    v77 = *(v0 + 432);
    v78 = *(v0 + 376);
    v79 = *(v0 + 384);
    v80 = *(v0 + 368);
    v81 = *(v0 + 344);
    v82 = *(v0 + 352);
    v72(*(v0 + 480), *(v0 + 440));
    (*(v82 + 8))(v80, v81);
    (*(v79 + 8))(v77, v78);
    goto LABEL_17;
  }

  v83 = *(v0 + 240);
  v84 = *(v0 + 224);
  v85 = *(v0 + 200);
  v86 = *(v0 + 208);
  v87 = *(v0 + 192);
  v102(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v100(v83, v84);
  if ((*(v86 + 48))(v87, 1, v85) == 1)
  {
    v116 = v72;
    sub_100002CE0(*(v0 + 192), &qword_1005B0BB0, &qword_1004D2830);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    v90 = os_log_type_enabled(v88, v89);
    v91 = *(v0 + 480);
    v92 = *(v0 + 440);
    v93 = *(v0 + 384);
    v108 = *(v0 + 376);
    v112 = *(v0 + 432);
    v94 = *(v0 + 368);
    v96 = *(v0 + 344);
    v95 = *(v0 + 352);
    if (v90)
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "No valid interval for startDate", v97, 2u);
    }

    v116(v91, v92);
    (*(v95 + 8))(v94, v96);
    (*(v93 + 8))(v112, v108);
    goto LABEL_17;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v98 = swift_task_alloc();
  *(v0 + 640) = v98;
  *v98 = v0;
  v98[1] = sub_100298C64;

  return daemon.getter();
}

uint64_t sub_10029C4A4()
{
  v2 = *v1;
  v14 = *(*v1 + 704);
  v13 = *(*v1 + 112);
  v12 = *(*v1 + 96);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  *(*v1 + 808) = v0;

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  v14(v13, v12);
  v9 = *(v2 + 16);
  if (v0)
  {
    v10 = sub_10029E1EC;
  }

  else
  {
    v10 = sub_10029C700;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10029C700()
{
  v118 = v0;
  v1 = *(v0 + 784);
  v101 = *(v0 + 480);
  v98 = *(v0 + 440);
  v109 = *(v0 + 432);
  v113 = *(v0 + 792);
  v104 = *(v0 + 632);
  v105 = *(v0 + 376);
  v103 = *(v0 + 368);
  v2 = *(v0 + 352);
  v99 = *(v0 + 344);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);

  sub_1002AB248(v6);
  (*(v3 + 8))(v4, v5);
  v104(v101, v98);
  (*(v2 + 8))(v103, v99);
  v113(v109, v105);
  v7 = *(v0 + 608) + 1;
  if (v7 == *(v0 + 600))
  {
LABEL_2:

    v8 = swift_task_alloc();
    *(v0 + 816) = v8;
    *v8 = v0;
    v8[1] = sub_10029D0C8;

    return sub_1002A9688();
  }

  while (1)
  {
    *(v0 + 608) = v7;
    v10 = *(v0 + 592);
    if (v7 >= *(v10 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v11 = *(v0 + 892);
    v12 = *(v0 + 432);
    v13 = *(v0 + 376);
    v14 = *(v0 + 384);
    v16 = *(v0 + 328);
    v15 = *(v0 + 336);
    v17 = *(v0 + 320);
    v18 = *(v14 + 16);
    v14 += 16;
    v19 = v10 + ((*(v0 + 888) + 32) & ~*(v0 + 888)) + *(v14 + 56) * v7;
    *(v0 + 616) = v18;
    *(v0 + 624) = v14 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v12, v19, v13);
    Fence.variant.getter();
    if ((*(v16 + 88))(v15, v17) == v11)
    {
      break;
    }

    v40 = *(v0 + 432);
    v41 = *(v0 + 376);
    v42 = *(v0 + 384);
    v44 = *(v0 + 328);
    v43 = *(v0 + 336);
    v45 = *(v0 + 320);
LABEL_16:
    (*(v42 + 8))(v40, v41);
    (*(v44 + 8))(v43, v45);
LABEL_17:
    v7 = *(v0 + 608) + 1;
    if (v7 == *(v0 + 600))
    {
      goto LABEL_2;
    }
  }

  v114 = *(v0 + 896);
  v20 = *(v0 + 368);
  v22 = *(v0 + 344);
  v21 = *(v0 + 352);
  v23 = *(v0 + 336);
  v24 = *(v0 + 312);
  v25 = *(v0 + 296);
  v26 = *(v0 + 304);
  v27 = *(v0 + 288);
  (*(*(v0 + 328) + 96))(v23, *(v0 + 320));
  (*(v21 + 32))(v20, v23, v22);
  Fence.acceptanceStatus.getter();
  (*(v25 + 104))(v26, v114, v27);
  v28 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v29 = *(v25 + 8);
  v29(v26, v27);
  v29(v24, v27);
  if ((v28 & 1) == 0 || (v30 = *(v0 + 900), v32 = *(v0 + 272), v31 = *(v0 + 280), v34 = *(v0 + 256), v33 = *(v0 + 264), Fence.finder.getter(), (*(v33 + 104))(v32, v30, v34), v35 = static Fence.Participant.== infix(_:_:)(), v36 = *(v33 + 8), v36(v32, v34), v36(v31, v34), (v35 & 1) == 0))
  {
LABEL_15:
    v43 = *(v0 + 432);
    v45 = *(v0 + 376);
    v44 = *(v0 + 384);
    v40 = *(v0 + 368);
    v41 = *(v0 + 344);
    v42 = *(v0 + 352);
    goto LABEL_16;
  }

  v37 = *(v0 + 440);
  v38 = *(v0 + 448);
  v39 = *(v0 + 248);
  Fence.muteEndDate.getter();
  if ((*(v38 + 48))(v39, 1, v37) != 1)
  {
    v46 = *(v0 + 488);
    v47 = *(v0 + 440);
    v48 = *(v0 + 448);
    (*(v48 + 32))(v46, *(v0 + 248), v47);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v49 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v48 + 8))(v46, v47);
    if (v49)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  sub_100002CE0(*(v0 + 248), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_13:
  v50 = *(v0 + 496);
  v52 = *(v0 + 472);
  v51 = *(v0 + 480);
  v106 = *(v0 + 464);
  v110 = *(v0 + 456);
  v54 = *(v0 + 440);
  v53 = *(v0 + 448);
  v56 = *(v0 + 232);
  v55 = *(v0 + 240);
  v57 = *(v0 + 224);
  v102 = *(*(v0 + 352) + 16);
  v102(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousStartDate(from:)();
  v100 = *(v56 + 8);
  v100(v55, v57);
  v58 = *(v53 + 16);
  v58(v52, v51, v54);
  v58(v106, v50, v54);
  v58(v110, v51, v54);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  v61 = os_log_type_enabled(v59, v60);
  v63 = *(v0 + 464);
  v62 = *(v0 + 472);
  v65 = *(v0 + 448);
  v64 = *(v0 + 456);
  v66 = *(v0 + 440);
  if (v61)
  {
    v111 = v60;
    v67 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v117 = v115;
    *v67 = 136446466;
    v107 = v63;
    v68 = Date.localISO8601.getter();
    v70 = v69;
    v71 = *(v65 + 8);
    v71(v62, v66);
    v72 = sub_10000D01C(v68, v70, &v117);

    *(v67 + 4) = v72;
    *(v67 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v74 = v73;
    v71(v64, v66);
    v71(v107, v66);
    *(v67 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v59, v111, "schedulerTimerFired: startDate: %{public}s timeDelta: %{public}f", v67, 0x16u);
    sub_100004984(v115);
  }

  else
  {

    v71 = *(v65 + 8);
    v71(v64, v66);
    v71(v63, v66);
    v71(v62, v66);
  }

  *(v0 + 632) = v71;
  Date.timeIntervalSince(_:)();
  if (v75 > 300.0)
  {
    v76 = *(v0 + 432);
    v77 = *(v0 + 376);
    v78 = *(v0 + 384);
    v79 = *(v0 + 368);
    v80 = *(v0 + 344);
    v81 = *(v0 + 352);
    v71(*(v0 + 480), *(v0 + 440));
    (*(v81 + 8))(v79, v80);
    (*(v78 + 8))(v76, v77);
    goto LABEL_17;
  }

  v82 = *(v0 + 240);
  v83 = *(v0 + 224);
  v84 = *(v0 + 200);
  v85 = *(v0 + 208);
  v86 = *(v0 + 192);
  v102(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v100(v82, v83);
  if ((*(v85 + 48))(v86, 1, v84) == 1)
  {
    v116 = v71;
    sub_100002CE0(*(v0 + 192), &qword_1005B0BB0, &qword_1004D2830);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    v89 = os_log_type_enabled(v87, v88);
    v90 = *(v0 + 480);
    v91 = *(v0 + 440);
    v92 = *(v0 + 384);
    v108 = *(v0 + 376);
    v112 = *(v0 + 432);
    v93 = *(v0 + 368);
    v95 = *(v0 + 344);
    v94 = *(v0 + 352);
    if (v89)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "No valid interval for startDate", v96, 2u);
    }

    v116(v90, v91);
    (*(v94 + 8))(v93, v95);
    (*(v92 + 8))(v112, v108);
    goto LABEL_17;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v97 = swift_task_alloc();
  *(v0 + 640) = v97;
  *v97 = v0;
  v97[1] = sub_100298C64;

  return daemon.getter();
}

uint64_t sub_10029D0C8()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 824) = v2;
  *v2 = v4;
  v2[1] = sub_10029D1F4;

  return daemon.getter();
}

uint64_t sub_10029D1F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[104] = a1;

  v4 = swift_task_alloc();
  v2[105] = v4;
  *v4 = v3;
  v4[1] = sub_10029D380;
  v5 = v2[70];
  v6 = v2[69];
  v7 = v2[68];
  v8 = v2[67];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_10029D380(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 848) = v1;

  if (v1)
  {
    v6 = v4[2];

    return _swift_task_switch(sub_10029DA28, v6, 0);
  }

  else
  {

    v4[107] = a1;
    v7 = swift_task_alloc();
    v4[108] = v7;
    *v7 = v5;
    v7[1] = sub_10029D50C;

    return sub_100006424();
  }
}

uint64_t sub_10029D50C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 872) = a1;

  return _swift_task_switch(sub_10029D624, v2, 0);
}

uint64_t sub_10029D624()
{

  v1 = swift_task_alloc();
  *(v0 + 880) = v1;
  *v1 = v0;
  v1[1] = sub_10029D6C4;
  v2 = *(v0 + 872);

  return sub_1000121BC(v2);
}

uint64_t sub_10029D6C4()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10029D7F0, v1, 0);
}

uint64_t sub_10029D7F0()
{
  (*(v0[56] + 8))(v0[62], v0[55]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10029DA28()
{
  v1 = v0[62];
  v2 = v0[55];
  v3 = v0[56];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10029DC68()
{
  v1 = v0[79];
  v2 = v0[60];
  v3 = v0[55];
  v11 = v0[54];
  v12 = v0[62];
  v4 = v0[47];
  v5 = v0[48];
  v6 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1(v2, v3);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v11, v4);
  v1(v12, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10029DF18()
{
  v1 = v0[79];
  v2 = v0[55];
  v15 = v0[54];
  v16 = v0[62];
  v3 = v0[48];
  v14 = v0[47];
  v12 = v0[60];
  v13 = v0[46];
  v4 = v0[44];
  v11 = v0[43];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[25];
  v8 = v0[23];

  sub_1002AB248(v8);
  (*(v5 + 8))(v6, v7);
  v1(v12, v2);
  (*(v4 + 8))(v13, v11);
  (*(v3 + 8))(v15, v14);
  v1(v16, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10029E1EC()
{
  v150 = v0;
  (*(v0 + 616))(*(v0 + 392), *(v0 + 432), *(v0 + 376));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v137 = v1;
  v3 = os_log_type_enabled(v1, v2);
  v141 = *(v0 + 784);
  v145 = *(v0 + 792);
  if (v3)
  {
    v114 = *(v0 + 704);
    v115 = *(v0 + 776);
    v128 = *(v0 + 480);
    v131 = *(v0 + 632);
    v124 = *(v0 + 440);
    v134 = *(v0 + 432);
    type = v2;
    v4 = *(v0 + 392);
    v112 = *(v0 + 376);
    v126 = *(v0 + 368);
    v120 = *(v0 + 352);
    v122 = *(v0 + 344);
    v117 = *(v0 + 208);
    v118 = *(v0 + 200);
    v119 = *(v0 + 216);
    v116 = *(v0 + 184);
    v5 = *(v0 + 120);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v149[0] = v9;
    *v7 = 136446466;
    Fence.id.getter();
    sub_1002AB19C(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v114(v5, v6);
    v145(v4, v112);
    v13 = sub_10000D01C(v10, v12, v149);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v137, type, "Failed to trigger fence %{public}s, error: %{public}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);

    sub_1002AB248(v116);
    (*(v117 + 8))(v119, v118);
    v131(v128, v124);
    (*(v120 + 8))(v126, v122);
    v145(v134, v112);
  }

  else
  {
    v129 = *(v0 + 480);
    v132 = *(v0 + 632);
    v125 = *(v0 + 440);
    v135 = *(v0 + 432);
    v15 = *(v0 + 392);
    v16 = *(v0 + 376);
    v127 = *(v0 + 368);
    v17 = *(v0 + 352);
    v18 = *(v0 + 208);
    v121 = *(v0 + 216);
    v123 = *(v0 + 344);
    v19 = *(v0 + 200);
    v20 = *(v0 + 184);

    v145(v15, v16);
    sub_1002AB248(v20);
    (*(v18 + 8))(v121, v19);
    v132(v129, v125);
    (*(v17 + 8))(v127, v123);
    v145(v135, v16);
  }

  v21 = *(v0 + 608) + 1;
  if (v21 == *(v0 + 600))
  {
LABEL_5:

    v22 = swift_task_alloc();
    *(v0 + 816) = v22;
    *v22 = v0;
    v22[1] = sub_10029D0C8;

    return sub_1002A9688();
  }

  while (1)
  {
    *(v0 + 608) = v21;
    v24 = *(v0 + 592);
    if (v21 >= *(v24 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v25 = *(v0 + 892);
    v26 = *(v0 + 432);
    v27 = *(v0 + 376);
    v28 = *(v0 + 384);
    v30 = *(v0 + 328);
    v29 = *(v0 + 336);
    v31 = *(v0 + 320);
    v32 = *(v28 + 16);
    v28 += 16;
    v33 = v24 + ((*(v0 + 888) + 32) & ~*(v0 + 888)) + *(v28 + 56) * v21;
    *(v0 + 616) = v32;
    *(v0 + 624) = v28 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32(v26, v33, v27);
    Fence.variant.getter();
    if ((*(v30 + 88))(v29, v31) == v25)
    {
      break;
    }

    v54 = *(v0 + 432);
    v55 = *(v0 + 376);
    v56 = *(v0 + 384);
    v58 = *(v0 + 328);
    v57 = *(v0 + 336);
    v59 = *(v0 + 320);
LABEL_19:
    (*(v56 + 8))(v54, v55);
    (*(v58 + 8))(v57, v59);
LABEL_20:
    v21 = *(v0 + 608) + 1;
    if (v21 == *(v0 + 600))
    {
      goto LABEL_5;
    }
  }

  v146 = *(v0 + 896);
  v34 = *(v0 + 368);
  v36 = *(v0 + 344);
  v35 = *(v0 + 352);
  v37 = *(v0 + 336);
  v38 = *(v0 + 312);
  v39 = *(v0 + 296);
  v40 = *(v0 + 304);
  v41 = *(v0 + 288);
  (*(*(v0 + 328) + 96))(v37, *(v0 + 320));
  (*(v35 + 32))(v34, v37, v36);
  Fence.acceptanceStatus.getter();
  (*(v39 + 104))(v40, v146, v41);
  v42 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v43 = *(v39 + 8);
  v43(v40, v41);
  v43(v38, v41);
  if ((v42 & 1) == 0 || (v44 = *(v0 + 900), v46 = *(v0 + 272), v45 = *(v0 + 280), v48 = *(v0 + 256), v47 = *(v0 + 264), Fence.finder.getter(), (*(v47 + 104))(v46, v44, v48), v49 = static Fence.Participant.== infix(_:_:)(), v50 = *(v47 + 8), v50(v46, v48), v50(v45, v48), (v49 & 1) == 0))
  {
LABEL_18:
    v57 = *(v0 + 432);
    v59 = *(v0 + 376);
    v58 = *(v0 + 384);
    v54 = *(v0 + 368);
    v55 = *(v0 + 344);
    v56 = *(v0 + 352);
    goto LABEL_19;
  }

  v51 = *(v0 + 440);
  v52 = *(v0 + 448);
  v53 = *(v0 + 248);
  Fence.muteEndDate.getter();
  if ((*(v52 + 48))(v53, 1, v51) != 1)
  {
    v60 = *(v0 + 488);
    v61 = *(v0 + 440);
    v62 = *(v0 + 448);
    (*(v62 + 32))(v60, *(v0 + 248), v61);
    sub_1002AB19C(&qword_1005B0BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v63 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v62 + 8))(v60, v61);
    if (v63)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  sub_100002CE0(*(v0 + 248), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_16:
  v64 = *(v0 + 496);
  v66 = *(v0 + 472);
  v65 = *(v0 + 480);
  v138 = *(v0 + 464);
  v142 = *(v0 + 456);
  v68 = *(v0 + 440);
  v67 = *(v0 + 448);
  v70 = *(v0 + 232);
  v69 = *(v0 + 240);
  v71 = *(v0 + 224);
  v136 = (*(v0 + 352) + 16);
  v133 = *v136;
  (*v136)(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.previousStartDate(from:)();
  v130 = *(v70 + 8);
  v130(v69, v71);
  v72 = *(v67 + 16);
  v72(v66, v65, v68);
  v72(v138, v64, v68);
  v72(v142, v65, v68);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  v75 = os_log_type_enabled(v73, v74);
  v77 = *(v0 + 464);
  v76 = *(v0 + 472);
  v79 = *(v0 + 448);
  v78 = *(v0 + 456);
  v80 = *(v0 + 440);
  if (v75)
  {
    v143 = v74;
    v81 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v149[0] = v147;
    *v81 = 136446466;
    v139 = v77;
    v82 = Date.localISO8601.getter();
    v84 = v83;
    v85 = *(v79 + 8);
    v85(v76, v80);
    v86 = sub_10000D01C(v82, v84, v149);

    *(v81 + 4) = v86;
    *(v81 + 12) = 2050;
    Date.timeIntervalSince(_:)();
    v88 = v87;
    v85(v78, v80);
    v85(v139, v80);
    *(v81 + 14) = v88;
    _os_log_impl(&_mh_execute_header, v73, v143, "schedulerTimerFired: startDate: %{public}s timeDelta: %{public}f", v81, 0x16u);
    sub_100004984(v147);
  }

  else
  {

    v85 = *(v79 + 8);
    v85(v78, v80);
    v85(v77, v80);
    v85(v76, v80);
  }

  *(v0 + 632) = v85;
  Date.timeIntervalSince(_:)();
  if (v89 > 300.0)
  {
    v90 = *(v0 + 432);
    v91 = *(v0 + 376);
    v92 = *(v0 + 384);
    v93 = *(v0 + 368);
    v94 = *(v0 + 344);
    v95 = *(v0 + 352);
    v85(*(v0 + 480), *(v0 + 440));
    (*(v95 + 8))(v93, v94);
    (*(v92 + 8))(v90, v91);
    goto LABEL_20;
  }

  v96 = *(v0 + 240);
  v97 = *(v0 + 224);
  v98 = *(v0 + 200);
  v99 = *(v0 + 208);
  v100 = *(v0 + 192);
  v133(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  Fence.Schedule.Matcher.init(schedule:)();
  Fence.Schedule.Matcher.interval(containingDate:)();
  v130(v96, v97);
  if ((*(v99 + 48))(v100, 1, v98) == 1)
  {
    v148 = v85;
    sub_100002CE0(*(v0 + 192), &qword_1005B0BB0, &qword_1004D2830);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();
    v103 = os_log_type_enabled(v101, v102);
    v104 = *(v0 + 480);
    v105 = *(v0 + 440);
    v106 = *(v0 + 384);
    v140 = *(v0 + 376);
    v144 = *(v0 + 432);
    v107 = *(v0 + 368);
    v109 = *(v0 + 344);
    v108 = *(v0 + 352);
    if (v103)
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "No valid interval for startDate", v110, 2u);
    }

    v148(v104, v105);
    (*(v108 + 8))(v107, v109);
    (*(v106 + 8))(v144, v140);
    goto LABEL_20;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v111 = swift_task_alloc();
  *(v0 + 640) = v111;
  *v111 = v0;
  v111[1] = sub_100298C64;

  return daemon.getter();
}

uint64_t sub_10029EECC(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100003690;

  return v5();
}

uint64_t sub_10029EFD4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10029F0BC;

    return sub_10029F25C();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10029F0BC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10029F1F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10029F1F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029F25C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Fence.Participant();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Fence.AcceptanceStatus();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for Calendar.SearchDirection();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for Fence.Schedule.Matcher();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v6 = type metadata accessor for Fence.Variant();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = type metadata accessor for Fence.Schedule();
  v1[21] = v7;
  v1[22] = *(v7 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v8 = type metadata accessor for Fence();
  v1[26] = v8;
  v1[27] = *(v8 - 8);
  v1[28] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v1[29] = v9;
  v1[30] = *(v9 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return _swift_task_switch(sub_10029F600, v0, 0);
}

uint64_t sub_10029F600()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Invite timer fired", v4, 2u);
  }

  static Date.now.getter();
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = sub_10029F758;

  return daemon.getter();
}

uint64_t sub_10029F758(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[36] = a1;

  v3 = swift_task_alloc();
  v2[37] = v3;
  v4 = type metadata accessor for Daemon();
  v2[38] = v4;
  v5 = type metadata accessor for DataManager(0);
  v2[39] = v5;
  v6 = sub_1002AB19C(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[40] = v6;
  v7 = sub_1002AB19C(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  v2[41] = v7;
  *v3 = v9;
  v3[1] = sub_10029F94C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10029F94C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v6 = v4[2];

    return _swift_task_switch(sub_1002A03A0, v6, 0);
  }

  else
  {

    v4[43] = a1;
    v7 = swift_task_alloc();
    v4[44] = v7;
    *v7 = v5;
    v7[1] = sub_10029FAD8;

    return sub_100006424();
  }
}

uint64_t sub_10029FAD8(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 360) = a1;

  return _swift_task_switch(sub_10029FBF0, v2, 0);
}

uint64_t sub_10029FBF0()
{
  v1 = *(v0 + 360);

  v2 = *(v1 + 16);
  *(v0 + 368) = v2;
  if (v2)
  {
    v3 = 0;
    *(v0 + 488) = enum case for Fence.Variant.oneTime(_:);
    *(v0 + 492) = enum case for Fence.Variant.recurring(_:);
    *(v0 + 496) = enum case for Fence.Variant.scheduled(_:);
    *(v0 + 500) = enum case for Calendar.SearchDirection.forward(_:);
    *(v0 + 504) = enum case for Fence.AcceptanceStatus.pendingHidden(_:);
    *(v0 + 508) = enum case for Fence.Participant.me(_:);
    while (1)
    {
      *(v0 + 376) = v3;
      v7 = *(v0 + 360);
      if (v3 >= *(v7 + 16))
      {
        __break(1u);
        return daemon.getter();
      }

      v8 = *(v0 + 492);
      v9 = *(v0 + 488);
      v10 = *(v0 + 160);
      v11 = *(v0 + 136);
      v12 = *(v0 + 144);
      (*(*(v0 + 216) + 16))(*(v0 + 224), v7 + ((*(*(v0 + 216) + 80) + 32) & ~*(*(v0 + 216) + 80)) + *(*(v0 + 216) + 72) * v3, *(v0 + 208));
      Fence.variant.getter();
      v13 = *(v12 + 88);
      v14 = v13(v10, v11);
      if (v14 != v9 && v14 != v8)
      {
        break;
      }

      v4 = *(v0 + 160);
      v5 = *(v0 + 136);
      v6 = *(v0 + 144);
      (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
      (*(v6 + 8))(v4, v5);
LABEL_4:
      if (++v3 == *(v0 + 368))
      {
        goto LABEL_22;
      }
    }

    if (v14 != *(v0 + 496))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v75 = v3;
    v74 = v13;
    v79 = *(v0 + 500);
    v84 = *(v0 + 264);
    v86 = *(v0 + 256);
    v78 = *(v0 + 248);
    v81 = *(v0 + 240);
    v83 = *(v0 + 232);
    v16 = *(v0 + 192);
    v17 = *(v0 + 200);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);
    v20 = *(v0 + 160);
    v21 = *(v0 + 120);
    v22 = *(v0 + 128);
    v23 = *(v0 + 104);
    v82 = *(v0 + 112);
    v24 = *(v0 + 96);
    v77 = *(v0 + 88);
    v73 = *(*(v0 + 144) + 96);
    v73(v20, *(v0 + 136));
    v80 = v17;
    v72 = v19[4];
    v72(v17, v20, v18);
    v71 = v19[2];
    v71(v16, v17, v18);
    v76 = v22;
    Fence.Schedule.Matcher.init(schedule:)();
    Fence.updatedAt.getter();
    (*(v24 + 104))(v23, v79, v77);
    Fence.Schedule.Matcher.nextStartDate(from:direction:)();
    (*(v24 + 8))(v23, v77);
    v25 = *(v81 + 8);
    *(v0 + 384) = v25;
    *(v0 + 392) = (v81 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v78, v83);
    v26 = *(v21 + 8);
    v26(v76, v82);
    v27 = v19[1];
    *(v0 + 400) = v27;
    *(v0 + 408) = (v19 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28 = v27;
    v27(v80, v18);
    (*(v81 + 32))(v84, v86, v83);
    if (static Date.< infix(_:_:)())
    {
      v85 = v26;
      v87 = v25;
      v29 = *(v0 + 504);
      v31 = *(v0 + 72);
      v30 = *(v0 + 80);
      v32 = *(v0 + 56);
      v33 = *(v0 + 64);
      Fence.acceptanceStatus.getter();
      (*(v33 + 104))(v31, v29, v32);
      v34 = static Fence.AcceptanceStatus.== infix(_:_:)();
      v35 = *(v33 + 8);
      v35(v31, v32);
      v35(v30, v32);
      if (v34)
      {
        v36 = *(v0 + 508);
        v38 = *(v0 + 40);
        v37 = *(v0 + 48);
        v39 = *(v0 + 24);
        v40 = *(v0 + 32);
        Fence.findee.getter();
        (*(v40 + 104))(v38, v36, v39);
        v41 = static Fence.Participant.== infix(_:_:)();
        v42 = *(v40 + 8);
        v42(v38, v39);
        v42(v37, v39);
        if (v41)
        {
          v43 = *(v0 + 496);
          v44 = *(v0 + 152);
          v45 = *(v0 + 136);
          Fence.variant.getter();
          if (v74(v44, v45) == v43)
          {
            v47 = *(v0 + 184);
            v46 = *(v0 + 192);
            v48 = *(v0 + 168);
            v49 = *(v0 + 152);
            v50 = *(v0 + 128);
            v51 = *(v0 + 112);
            v73(v49, *(v0 + 136));
            v72(v47, v49, v48);
            v71(v46, v47, v48);
            Fence.Schedule.Matcher.init(schedule:)();
            LOBYTE(v46) = Fence.Schedule.Matcher.doesMatchSchedule(_:)();
            v85(v50, v51);
            if (v46)
            {
              v68 = swift_task_alloc();
              *(v0 + 416) = v68;
              *v68 = v0;
              v68[1] = sub_1002A0504;
              v69 = *(v0 + 272);
              v70 = *(v0 + 224);

              return sub_1002A9B6C(v70, v69);
            }

            v52 = *(v0 + 264);
            v54 = *(v0 + 224);
            v53 = *(v0 + 232);
            v55 = *(v0 + 208);
            v56 = *(v0 + 216);
            v28(*(v0 + 184), *(v0 + 168));
            v87(v52, v53);
            (*(v56 + 8))(v54, v55);
          }

          else
          {
            v60 = *(v0 + 224);
            v61 = *(v0 + 208);
            v62 = *(v0 + 216);
            v64 = *(v0 + 144);
            v63 = *(v0 + 152);
            v65 = *(v0 + 136);
            v87(*(v0 + 264), *(v0 + 232));
            (*(v62 + 8))(v60, v61);
            (*(v64 + 8))(v63, v65);
          }

          goto LABEL_20;
        }
      }

      v57 = *(v0 + 224);
      v58 = *(v0 + 208);
      v59 = *(v0 + 216);
      v87(*(v0 + 264), *(v0 + 232));
    }

    else
    {
      v57 = *(v0 + 224);
      v58 = *(v0 + 208);
      v59 = *(v0 + 216);
      v25(*(v0 + 264), *(v0 + 232));
    }

    (*(v59 + 8))(v57, v58);
LABEL_20:
    v3 = v75;
    goto LABEL_4;
  }

LABEL_22:

  v66 = swift_task_alloc();
  *(v0 + 424) = v66;
  *v66 = v0;
  v66[1] = sub_1002A0DA0;

  return daemon.getter();
}

uint64_t sub_1002A03A0()
{
  v1 = v0[34];
  v2 = v0[29];
  v3 = v0[30];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002A0504()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1002A0614, v1, 0);
}

uint64_t sub_1002A0614()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  v3 = *(v0 + 264);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v8 = *(v0 + 376) + 1;
  (*(v0 + 400))(*(v0 + 184), *(v0 + 168));
  v1(v3, v4);
  (*(v7 + 8))(v5, v6);
  if (v8 != v2)
  {
    v10 = *(v0 + 376) + 1;
    while (1)
    {
      *(v0 + 376) = v10;
      v14 = *(v0 + 360);
      if (v10 >= *(v14 + 16))
      {
        __break(1u);
        return daemon.getter();
      }

      v15 = *(v0 + 492);
      v16 = *(v0 + 488);
      v17 = *(v0 + 160);
      v18 = *(v0 + 136);
      v19 = *(v0 + 144);
      (*(*(v0 + 216) + 16))(*(v0 + 224), v14 + ((*(*(v0 + 216) + 80) + 32) & ~*(*(v0 + 216) + 80)) + *(*(v0 + 216) + 72) * v10, *(v0 + 208));
      Fence.variant.getter();
      v20 = *(v19 + 88);
      v21 = v20(v17, v18);
      if (v21 != v16 && v21 != v15)
      {
        break;
      }

      v11 = *(v0 + 160);
      v12 = *(v0 + 136);
      v13 = *(v0 + 144);
      (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
      (*(v13 + 8))(v11, v12);
LABEL_7:
      if (++v10 == *(v0 + 368))
      {
        goto LABEL_2;
      }
    }

    if (v21 != *(v0 + 496))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v80 = v10;
    v79 = v20;
    v84 = *(v0 + 500);
    v89 = *(v0 + 264);
    v91 = *(v0 + 256);
    v83 = *(v0 + 248);
    v86 = *(v0 + 240);
    v88 = *(v0 + 232);
    v23 = *(v0 + 192);
    v24 = *(v0 + 200);
    v25 = *(v0 + 168);
    v26 = *(v0 + 176);
    v27 = *(v0 + 160);
    v28 = *(v0 + 120);
    v29 = *(v0 + 128);
    v30 = *(v0 + 104);
    v87 = *(v0 + 112);
    v31 = *(v0 + 96);
    v82 = *(v0 + 88);
    v78 = *(*(v0 + 144) + 96);
    v78(v27, *(v0 + 136));
    v85 = v25;
    v77 = v26[4];
    v77(v24, v27, v25);
    v76 = v26[2];
    v76(v23, v24, v25);
    v81 = v29;
    Fence.Schedule.Matcher.init(schedule:)();
    Fence.updatedAt.getter();
    (*(v31 + 104))(v30, v84, v82);
    Fence.Schedule.Matcher.nextStartDate(from:direction:)();
    (*(v31 + 8))(v30, v82);
    v32 = *(v86 + 8);
    *(v0 + 384) = v32;
    *(v0 + 392) = (v86 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v83, v88);
    v33 = *(v28 + 8);
    v33(v81, v87);
    v34 = v26[1];
    *(v0 + 400) = v34;
    *(v0 + 408) = (v26 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v24, v85);
    (*(v86 + 32))(v89, v91, v88);
    if (static Date.< infix(_:_:)())
    {
      v90 = v33;
      v92 = v32;
      v35 = *(v0 + 504);
      v37 = *(v0 + 72);
      v36 = *(v0 + 80);
      v38 = *(v0 + 56);
      v39 = *(v0 + 64);
      Fence.acceptanceStatus.getter();
      (*(v39 + 104))(v37, v35, v38);
      v40 = static Fence.AcceptanceStatus.== infix(_:_:)();
      v41 = *(v39 + 8);
      v41(v37, v38);
      v41(v36, v38);
      if (v40)
      {
        v42 = *(v0 + 508);
        v44 = *(v0 + 40);
        v43 = *(v0 + 48);
        v45 = *(v0 + 24);
        v46 = *(v0 + 32);
        Fence.findee.getter();
        (*(v46 + 104))(v44, v42, v45);
        v47 = static Fence.Participant.== infix(_:_:)();
        v48 = *(v46 + 8);
        v48(v44, v45);
        v48(v43, v45);
        if (v47)
        {
          v49 = *(v0 + 496);
          v50 = *(v0 + 152);
          v51 = *(v0 + 136);
          Fence.variant.getter();
          if (v79(v50, v51) == v49)
          {
            v53 = *(v0 + 184);
            v52 = *(v0 + 192);
            v54 = *(v0 + 168);
            v55 = *(v0 + 152);
            v56 = *(v0 + 128);
            v57 = *(v0 + 112);
            v78(v55, *(v0 + 136));
            v77(v53, v55, v54);
            v76(v52, v53, v54);
            Fence.Schedule.Matcher.init(schedule:)();
            LOBYTE(v52) = Fence.Schedule.Matcher.doesMatchSchedule(_:)();
            v90(v56, v57);
            if (v52)
            {
              v73 = swift_task_alloc();
              *(v0 + 416) = v73;
              *v73 = v0;
              v73[1] = sub_1002A0504;
              v74 = *(v0 + 272);
              v75 = *(v0 + 224);

              return sub_1002A9B6C(v75, v74);
            }

            v58 = *(v0 + 264);
            v60 = *(v0 + 224);
            v59 = *(v0 + 232);
            v61 = *(v0 + 208);
            v62 = *(v0 + 216);
            v34(*(v0 + 184), *(v0 + 168));
            v92(v58, v59);
            (*(v62 + 8))(v60, v61);
          }

          else
          {
            v66 = *(v0 + 224);
            v67 = *(v0 + 208);
            v68 = *(v0 + 216);
            v70 = *(v0 + 144);
            v69 = *(v0 + 152);
            v71 = *(v0 + 136);
            v92(*(v0 + 264), *(v0 + 232));
            (*(v68 + 8))(v66, v67);
            (*(v70 + 8))(v69, v71);
          }

          goto LABEL_23;
        }
      }

      v63 = *(v0 + 224);
      v64 = *(v0 + 208);
      v65 = *(v0 + 216);
      v92(*(v0 + 264), *(v0 + 232));
    }

    else
    {
      v63 = *(v0 + 224);
      v64 = *(v0 + 208);
      v65 = *(v0 + 216);
      v32(*(v0 + 264), *(v0 + 232));
    }

    (*(v65 + 8))(v63, v64);
LABEL_23:
    v10 = v80;
    goto LABEL_7;
  }

LABEL_2:

  v9 = swift_task_alloc();
  *(v0 + 424) = v9;
  *v9 = v0;
  v9[1] = sub_1002A0DA0;

  return daemon.getter();
}