uint64_t sub_100032C8C()
{
  dispatch thunk of LaunchRecorderWriter.reload()();

  return _swift_task_switch(sub_100032CF4, 0, 0);
}

uint64_t sub_100032CF4()
{
  v1 = v0[18];
  sub_100005E78((v0[7] + 24), *(v0[7] + 48));
  v0[22] = dispatch thunk of LaunchRecordReaderProtocol.dates(forContactIdentifier:)();
  v2 = *(v1 + 16);
  v0[23] = v2;
  if (!v2)
  {
LABEL_7:

    v12 = v0[20];
    v13 = v0[21];
    v14 = sub_100032F38;
    goto LABEL_9;
  }

  v3 = 0;
  while (1)
  {
    v0[24] = v3;
    v6 = v0[22];
    v7 = v0[18] + 16 * v3;
    v8 = *(v7 + 32);
    v0[25] = v8;
    v9 = *(v7 + 40);
    v0[26] = v9;
    if (*(v6 + 16))
    {
      break;
    }

LABEL_3:
    v4 = v0[15];
    v5 = type metadata accessor for Date();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_100007DB0(v4, &qword_100062738, &qword_10004D970);
    v3 = v0[24] + 1;
    if (v3 == v0[23])
    {
      goto LABEL_7;
    }
  }

  v10 = sub_100005EBC(v8, v9);
  if ((v11 & 1) == 0)
  {

    goto LABEL_3;
  }

  v15 = v0[15];
  v16 = *(v0[22] + 56);
  v17 = v10;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v15, v16 + *(v19 + 72) * v17, v18);
  (*(v19 + 56))(v15, 0, 1, v18);
  sub_100007DB0(v15, &qword_100062738, &qword_10004D970);
  v12 = v0[20];
  v13 = v0[21];
  v14 = sub_100032FC8;
LABEL_9:

  return _swift_task_switch(v14, v12, v13);
}

uint64_t sub_100032F38()
{
  v1 = *(v0 + 136);
  dispatch thunk of LaunchRecorderWriter.save()();
  if (v1)
  {

    v2 = sub_1000355D8;
  }

  else
  {
    v2 = sub_100033254;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100032FC8()
{
  dispatch thunk of LaunchRecorderWriter.remove(contactId:)();

  return _swift_task_switch(sub_100033040, 0, 0);
}

uint64_t sub_100033040()
{
  v1 = v0[24] + 1;
  if (v1 == v0[23])
  {
LABEL_2:

    v2 = v0[20];
    v3 = v0[21];
    v4 = sub_100032F38;
    goto LABEL_3;
  }

  while (1)
  {
    v0[24] = v1;
    v7 = v0[22];
    v8 = v0[18] + 16 * v1;
    v9 = *(v8 + 32);
    v0[25] = v9;
    v10 = *(v8 + 40);
    v0[26] = v10;
    if (*(v7 + 16))
    {
      break;
    }

LABEL_7:
    v5 = v0[15];
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_100007DB0(v5, &qword_100062738, &qword_10004D970);
    v1 = v0[24] + 1;
    if (v1 == v0[23])
    {
      goto LABEL_2;
    }
  }

  v11 = sub_100005EBC(v9, v10);
  if ((v12 & 1) == 0)
  {

    goto LABEL_7;
  }

  v13 = v0[15];
  v14 = *(v0[22] + 56);
  v15 = v11;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13, v14 + *(v17 + 72) * v15, v16);
  (*(v17 + 56))(v13, 0, 1, v16);
  sub_100007DB0(v13, &qword_100062738, &qword_10004D970);
  v2 = v0[20];
  v3 = v0[21];
  v4 = sub_100032FC8;
LABEL_3:

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100033254()
{

  if (*(v0[18] + 16))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_10001DB48(v0[7], v0[18], Strong);
      swift_unknownObjectRelease();
    }

    v2 = v0[14];

    v3 = type metadata accessor for TaskPriority();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    sub_100014EE4(0, 0, v2, &unk_10004E8B8, v4);
  }

  else
  {
  }

  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[11];
  v8 = v0[12];
  type metadata accessor for PeopleAnalytics();
  (*(v8 + 104))(v6, enum case for StatusType.readMessage(_:), v7);
  static PeopleAnalytics.eventReceived(foundContacts:statusType:)();

  (*(v8 + 8))(v6, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100033440()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000334FC, 0, 0);
}

uint64_t sub_1000334FC()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.unreadMessage(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_1000335B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for StatusType();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = sub_100005E30(&qword_100063840, &qword_10004E888);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000337D8, 0, 0);
}

uint64_t sub_1000337D8()
{
  v1 = v0[8];
  v2 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[30] = [v2 predicateForContactsWithIdentifiers:isa];

  sub_100005E78((v1 + 64), *(v1 + 88));
  v4 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v0[31] = v4;
  v5 = v4;
  v6 = sub_100007728(_swiftEmptyArrayStorage);
  if (v5 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v0[32] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[34] = 0;
        v0[35] = v6;
        v0[33] = v6;
        v8 = v0[31];
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v9 = *(v8 + 32);
        }

        v0[36] = v9;
        v10 = v0[8];
        v11 = CNContact.people_normalizedHandles.getter();
        v0[37] = v11;
        sub_100005E78((v10 + 104), *(v10 + 128));
        v12 = swift_task_alloc();
        v0[38] = v12;
        *v12 = v0;
        v12[1] = sub_100033D64;

        return sub_100031BC0(v11, v13, v14);
      }

      return result;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[32] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v15 = v0[30];
  v16 = v0[6];

  *v16 = v6;

  v17 = v0[1];

  return v17();
}

uint64_t sub_100033D64(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_100033E64, 0, 0);
}

uint64_t sub_100033E64()
{
  if (v0[39] < 1)
  {
    v8 = v0[36];

    v9 = v0[34] + 1;
    if (v9 == v0[32])
    {
      v10 = v0[35];
      v11 = v0[30];
      v12 = v0[6];

      *v12 = v10;

      v13 = v0[1];

      return v13();
    }

    else
    {
      v0[34] = v9;
      v14 = v0[31];
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v14 + 8 * v9 + 32);
      }

      v0[36] = v15;
      v16 = v0[8];
      v17 = CNContact.people_normalizedHandles.getter();
      v0[37] = v17;
      sub_100005E78((v16 + 104), *(v16 + 128));
      v18 = swift_task_alloc();
      v0[38] = v18;
      *v18 = v0;
      v18[1] = sub_100033D64;

      return sub_100031BC0(v17, v19, v20);
    }
  }

  else
  {
    v1 = v0[29];
    v2 = v0[25];
    sub_100005E78((v0[8] + 104), *(v0[8] + 128));
    v3 = *(v2 + 64);
    v5 = swift_task_alloc();
    v0[40] = v5;
    *v5 = v0;
    v5[1] = sub_100034120;
    v6 = v0[37];

    return sub_100030F80(v1 + v3, v6, v4);
  }
}

uint64_t sub_100034120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[41] = a1;
  v4[42] = a2;
  v4[43] = a3;

  return _swift_task_switch(sub_100034244, 0, 0);
}

uint64_t sub_100034244()
{
  v122 = v0;
  v1 = *(v0 + 344);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 200);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  *v2 = *(v0 + 328);
  *(v2 + 16) = v1;
  sub_100035130(v2, v3);

  v7 = *(v6 + 48);
  v8 = *(v4 + 64);
  if (v7(v3 + v8, 1, v5) == 1)
  {
    sub_100007DB0(v3 + v8, &qword_100062738, &qword_10004D970);
  }

  else
  {
    v118 = v7;
    v9 = *(v0 + 288);
    v10 = *(v0 + 72);
    (*(*(v0 + 152) + 32))(*(v0 + 192), v3 + v8, *(v0 + 144));
    v11 = [v9 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (*(v10 + 16))
    {
      v15 = sub_100005EBC(v12, v14);
      v17 = v16;

      if (v17)
      {
        v19 = *(v0 + 184);
        v18 = *(v0 + 192);
        v20 = *(v0 + 176);
        v111 = *(v0 + 168);
        v114 = *(v0 + 288);
        v21 = *(v0 + 144);
        v22 = *(v0 + 152);
        v23 = *(v22 + 16);
        v23(v19, *(*(v0 + 72) + 56) + *(v22 + 72) * v15, v21);
        static PeopleLogger.daemon.getter();
        v23(v20, v18, v21);
        v23(v111, v19, v21);
        v24 = v114;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = *(v0 + 288);
          v107 = v26;
          v28 = *(v0 + 176);
          v104 = *(v0 + 168);
          log = v25;
          v29 = *(v0 + 144);
          v30 = *(v0 + 152);
          v109 = *(v0 + 112);
          v112 = *(v0 + 104);
          v115 = *(v0 + 136);
          v31 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          *v31 = 136315650;
          v32 = [v27 identifier];
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          v36 = sub_10002580C(v33, v35, &v121);

          *(v31 + 4) = v36;
          *(v31 + 12) = 2080;
          sub_100035368(&qword_100063850, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v37 = dispatch thunk of CustomStringConvertible.description.getter();
          v39 = v38;
          v40 = *(v30 + 8);
          v40(v28, v29);
          v41 = sub_10002580C(v37, v39, &v121);

          *(v31 + 14) = v41;
          *(v31 + 22) = 2080;
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          v44 = v43;
          v40(v104, v29);
          v45 = sub_10002580C(v42, v44, &v121);

          *(v31 + 24) = v45;
          _os_log_impl(&_mh_execute_header, log, v107, "%s message time %s viewed %s", v31, 0x20u);
          swift_arrayDestroy();

          v46 = *(v109 + 8);
          v46(v115, v112);
        }

        else
        {
          v48 = *(v0 + 168);
          v47 = *(v0 + 176);
          v49 = *(v0 + 144);
          v50 = *(v0 + 152);
          v51 = *(v0 + 136);
          v52 = *(v0 + 104);
          v53 = *(v0 + 112);

          v54 = *(v50 + 8);
          v54(v48, v49);
          v54(v47, v49);
          v40 = v54;
          v46 = *(v53 + 8);
          v46(v51, v52);
        }

        v7 = v118;
        if (static Date.< infix(_:_:)())
        {
          v55 = *(v0 + 288);
          static PeopleLogger.daemon.getter();
          v56 = v55;
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.debug.getter();

          v59 = os_log_type_enabled(v57, v58);
          v60 = *(v0 + 288);
          v61 = *(v0 + 232);
          v116 = *(v0 + 184);
          v119 = *(v0 + 192);
          v110 = *(v0 + 128);
          v113 = *(v0 + 144);
          v108 = *(v0 + 104);
          if (v59)
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v121 = v63;
            *v62 = 136315138;
            v103 = v60;
            v64 = [v60 identifier];
            v65 = v40;
            v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v105 = v61;
            v68 = v67;

            v69 = sub_10002580C(v66, v68, &v121);

            *(v62 + 4) = v69;
            _os_log_impl(&_mh_execute_header, v57, v58, "%s viewed since unread message", v62, 0xCu);
            sub_100003938(v63);

            v46(v110, v108);
            v65(v116, v113);
            v65(v119, v113);
            v70 = v105;
          }

          else
          {

            v46(v110, v108);
            v40(v116, v113);
            v40(v119, v113);
            v70 = v61;
          }

          sub_100007DB0(v70, &qword_100063840, &qword_10004E888);
          v90 = *(v0 + 280);
          v89 = *(v0 + 264);
          goto LABEL_19;
        }

        v71 = *(v0 + 192);
        v72 = *(v0 + 144);
        v40(*(v0 + 184), v72);
        v40(v71, v72);
      }

      else
      {
        (*(*(v0 + 152) + 8))(*(v0 + 192), *(v0 + 144));
        v7 = v118;
      }
    }

    else
    {
      (*(*(v0 + 152) + 8))(*(v0 + 192), *(v0 + 144));

      v7 = v118;
    }
  }

  v73 = *(v0 + 232);
  v74 = *(v0 + 208);
  v75 = *(v0 + 216);
  v76 = *(v0 + 200);
  v77 = *(v0 + 144);
  v78 = [*(v0 + 288) identifier];
  v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v120 = v79;

  sub_100005E30(&qword_100063260, &qword_10004E2B0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_10004D790;
  sub_100035130(v73, v75);
  sub_100035130(v73, v74);

  v81 = *(v76 + 64);
  if (v7(v74 + v81, 1, v77) == 1)
  {
    v82 = *(v0 + 144);
    Date.init()();
    if (v7(v74 + v81, 1, v82) != 1)
    {
      sub_100007DB0(v74 + v81, &qword_100062738, &qword_10004D970);
    }
  }

  else
  {
    (*(*(v0 + 152) + 32))(*(v0 + 160), v74 + v81, *(v0 + 144));
  }

  v83 = *(v0 + 288);
  v84 = *(v0 + 264);
  v85 = *(v0 + 232);
  v86 = *(v0 + 216);
  v87 = *(*(v0 + 200) + 64);
  *(v80 + 56) = type metadata accessor for MessagePersonStatus();
  *(v80 + 64) = sub_100035368(&qword_100063848, 255, &type metadata accessor for MessagePersonStatus, &protocol conformance descriptor for MessagePersonStatus);
  sub_100007784((v80 + 32));
  MessagePersonStatus.init(lastMessageString:unreadCount:date:)();
  sub_100007DB0(v86 + v87, &qword_100062738, &qword_10004D970);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v121 = v84;
  sub_100006B74(v80, v117, v120, isUniquelyReferenced_nonNull_native);

  v89 = v121;
  sub_100007DB0(v85, &qword_100063840, &qword_10004E888);
  v90 = v89;
LABEL_19:
  v91 = *(v0 + 272) + 1;
  if (v91 == *(v0 + 256))
  {
    v92 = *(v0 + 240);
    v93 = *(v0 + 48);

    *v93 = v90;

    v94 = *(v0 + 8);

    return v94();
  }

  else
  {
    *(v0 + 272) = v91;
    *(v0 + 280) = v90;
    *(v0 + 264) = v89;
    v96 = *(v0 + 248);
    if ((v96 & 0xC000000000000001) != 0)
    {
      v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v97 = *(v96 + 8 * v91 + 32);
    }

    *(v0 + 288) = v97;
    v98 = *(v0 + 64);
    v99 = CNContact.people_normalizedHandles.getter();
    *(v0 + 296) = v99;
    sub_100005E78((v98 + 104), *(v98 + 128));
    v100 = swift_task_alloc();
    *(v0 + 304) = v100;
    *v100 = v0;
    v100[1] = sub_100033D64;

    return sub_100031BC0(v99, v101, v102);
  }
}

uint64_t sub_100034CFC()
{

  sub_100003938(v0 + 3);
  sub_100003938(v0 + 8);
  sub_100003938(v0 + 13);

  sub_100007E10((v0 + 19));

  return swift_deallocClassInstance();
}

uint64_t sub_100034D80@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.readMessage(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100034DF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100034E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return StatusSource.debugID.getter(a1, WitnessTable);
}

uint64_t sub_100034E8C(uint64_t a1)
{
  v3 = *v1;
  sub_100005E78((*v1 + 24), *(*v1 + 48));
  dispatch thunk of LaunchRecordReaderProtocol.reload()();
  sub_100005E78((v3 + 24), *(v3 + 48));
  v4 = dispatch thunk of LaunchRecordReaderProtocol.dates(forContactIdentifier:)();
  sub_100005E30(&qword_100062700, &unk_10004D940);
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v3;
  v5[4] = v4;

  return Promise.__allocating_init(_:)();
}

uint64_t sub_100034F94(uint64_t a1, uint64_t a2)
{
  result = sub_100035368(&qword_100063830, a2, type metadata accessor for IMessageStatusSource, &unk_10004E7A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100035034()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003507C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001ECE4;

  return sub_1000335B4(a1, v4, v5, v6);
}

uint64_t sub_100035130(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100063840, &qword_10004E888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000351D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001ECE4;

  return sub_1000323F4(a1, v4, v5, v6);
}

uint64_t sub_100035284()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000352BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007CBC;

  return sub_100033440();
}

uint64_t sub_100035368(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000353E0(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_100035444(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007CBC;

  return sub_1000314B0(a1, v5, v4);
}

uint64_t sub_1000354F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100062738, &qword_10004D970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003558C()
{
  result = qword_100063868;
  if (!qword_100063868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063868);
  }

  return result;
}

uint64_t sub_1000355DC(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  static PeopleLogger.daemon.getter();
  swift_unknownObjectRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v20[1] = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315138;
    string = xpc_dictionary_get_string(a1, _xpc_event_key_name);
    v21 = a2;
    if (string)
    {
      v15 = String.init(cString:)();
      v17 = v16;
    }

    else
    {
      v17 = 0x8000000100050A10;
      v15 = 0xD000000000000021;
    }

    v18 = sub_10002580C(v15, v17, v22);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "did receive xpc event: %s", v12, 0xCu);
    sub_100003938(v13);

    (*(v7 + 8))(v9, v6);
    a2 = v21;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v22[3] = &type metadata for XPCEvent;
  v22[4] = &off_10005E2F0;
  v22[0] = a1;
  swift_unknownObjectRetain();
  a2(v22);
  swift_unknownObjectRelease();
  return sub_100003938(v22);
}

void sub_100035864(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100010734(0, &qword_100063A70, EKSharee_ptr);
    sub_10003D90C();
    Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
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

  v15 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100010734(0, &qword_100063A70, EKSharee_ptr), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_22:
        sub_100014AB0(v1);
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
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 contactPredicate];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
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
      goto LABEL_22;
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

void *sub_100035AD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_10000D654(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1000077E8(v4, v8);
      sub_100005E30(&qword_100062AA8, &unk_10004EB10);
      sub_100005E30(&qword_100062AA0, &unk_10004DBF0);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000D654((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_10000784C(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100035C08(uint64_t a1)
{
  v2 = type metadata accessor for CalendarPersonStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_10000D6F4(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_10000D6F4((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_10003B410(&qword_100063A50, 255, &type metadata accessor for CalendarPersonStatus, &protocol conformance descriptor for CalendarPersonStatus);
      v14 = sub_100007784(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_10000784C(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void sub_100035E04(uint64_t a1)
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
    sub_10000D6D4(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_10003BAE4(v38, v39, v40, v1, &qword_100062C10, CNContact_ptr);
        v12 = v11;
        v13 = [v11 identifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = v36[2];
        v18 = v36[3];
        if (v19 >= v18 >> 1)
        {
          sub_10000D6D4((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v36 = v17;
        if (v34)
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

          v2 = v33;
          sub_100005E30(&qword_100063A78, &qword_10004EAE8);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_10003D900(v38, v39, v40);
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
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_10003D900(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_10003D900(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
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

void *sub_10003617C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 56;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 64;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 48) + 16 * v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v19;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_10003D900(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_10003D900(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
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

uint64_t sub_100036394(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for Date();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000364A4, 0, 0);
}

uint64_t sub_1000364A4()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v20 = v0[6];
  v21 = v1;
  v8 = v0[4];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = *(v5 + 16);
  v10(v2, v8, v6);
  v10(v3, v7, v6);
  v11 = *(v5 + 80);
  v12 = (v11 + 40) & ~v11;
  v13 = (v4 + v11 + v12) & ~v11;
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v20;
  v15 = *(v5 + 32);
  v15(&v14[v12], v2, v6);
  v15(&v14[v13], v3, v6);

  v16 = sub_1000151E4(0, 0, v21, &unk_10004EB00, v14);
  v0[13] = v16;
  v17 = swift_task_alloc();
  v0[14] = v17;
  v18 = sub_100005E30(&unk_100062DB0, &qword_10004E010);
  *v17 = v0;
  v17[1] = sub_1000366C0;

  return Task.result.getter(v0 + 2, v16, v18, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1000366C0()
{

  return _swift_task_switch(sub_1000367D8, 0, 0);
}

uint64_t sub_1000367D8(uint64_t a1)
{
  if (*(v1 + 24))
  {

    return _swift_willThrowTypedImpl(a1, &type metadata for Never, &protocol witness table for Never);
  }

  else
  {
    v3 = *(v1 + 16);

    v4 = *(v1 + 8);

    return v4(v3);
  }
}

uint64_t sub_100036888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_1000368AC, 0, 0);
}

uint64_t sub_1000368AC()
{
  v1 = *(v0[3] + 24);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v3 = Date._bridgeToObjectiveC()().super.isa;
  v4 = [v1 predicateForEventsWithStartDate:isa endDate:v3 calendars:0];

  v5 = [v1 eventsMatchingPredicate:v4];
  sub_100010734(0, &qword_100062D90, EKEvent_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = v4;
    v15 = v0;
    v4 = 0;
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          goto LABEL_16;
        }

        v9 = *(v6 + 8 * v4 + 32);
      }

      v10 = v9;
      v0 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (([v9 isAllDay] & 1) != 0 || objc_msgSend(v10, "status") == 3)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      ++v4;
      if (v0 == i)
      {
        v4 = v14;
        v0 = v15;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v11 = v0[2];

  *v11 = _swiftEmptyArrayStorage;
  v12 = v0[1];

  return v12();
}

uint64_t sub_100036B10(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100036B30, 0, 0);
}

uint64_t sub_100036B30()
{
  if ([p_weak_ivar_lyt[2] hasAttendees])
  {
    v1 = [p_weak_ivar_lyt[2] attendees];
    if (v1)
    {
      v2 = v1;
      sub_100010734(0, &qword_100063A60, EKParticipant_ptr);
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v3 >> 62)
      {
        goto LABEL_33;
      }

      for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v25 = p_weak_ivar_lyt;
        v5 = 0;
        v6 = v3 & 0xFFFFFFFFFFFFFF8;
        p_weak_ivar_lyt = &ScreenTimeStatusSource.weak_ivar_lyt;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *(v6 + 16))
            {
              goto LABEL_32;
            }

            v7 = *(v3 + 8 * v5 + 32);
          }

          v8 = v7;
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if (([v7 isCurrentUser] & 1) != 0 || objc_msgSend(v8, "participantStatus") == 3)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v6 = v3 & 0xFFFFFFFFFFFFFF8;
          }

          ++v5;
          if (v9 == i)
          {
            p_weak_ivar_lyt = v25;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        ;
      }

LABEL_21:

      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v12 = _swiftEmptyArrayStorage[2];
        if (!v12)
        {
          goto LABEL_35;
        }
      }

      v13 = specialized ContiguousArray.reserveCapacity(_:)();
      if (v12 < 0)
      {
        __break(1u);
        return dispatch thunk of ContactFetcherProtocol.contacts(withPredicates:includeImages:)(v13, v14, v15, v16);
      }

      v17 = 0;
      do
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = _swiftEmptyArrayStorage[v17 + 4];
        }

        v19 = v18;
        ++v17;
        v20 = [v18 contactPredicate];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v12 != v17);
LABEL_35:

      p_weak_ivar_lyt[4] = _swiftEmptyArrayStorage;
      v21 = p_weak_ivar_lyt[3];
      v22 = v21[7];
      v23 = v21[8];
      sub_100005E78(v21 + 4, v22);
      v24 = swift_task_alloc();
      p_weak_ivar_lyt[5] = v24;
      *v24 = p_weak_ivar_lyt;
      v24[1] = sub_100036EE4;
      v13 = _swiftEmptyArrayStorage;
      v14 = 0;
      v15 = v22;
      v16 = v23;

      return dispatch thunk of ContactFetcherProtocol.contacts(withPredicates:includeImages:)(v13, v14, v15, v16);
    }
  }

  v10 = p_weak_ivar_lyt[1];

  return v10(&_swiftEmptySetSingleton);
}

uint64_t sub_100036EE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    v5 = sub_1000370CC;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_10003703C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10003703C()
{
  sub_100035E04(*(v0 + 56));
  v2 = v1;

  v3 = sub_10001E3F0(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000370CC()
{
  v1 = sub_10001E3F0(_swiftEmptyArrayStorage);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100037144(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;

  return _swift_task_switch(sub_1000371D4, 0, 0);
}

uint64_t sub_1000371D4()
{
  v50 = v0;
  v1 = [*(v0 + 32) calendar];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = [v1 sharees];

  if (!v3 || (v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v3, sub_100037A94(v4), v6 = v5, v7 = , !v6))
  {
    v25 = *(v0 + 8);

    return v25(&_swiftEmptySetSingleton);
  }

  if ((v6 & 0xC000000000000001) == 0)
  {
    v27 = *(v6 + 32);
    v8 = ((1 << v27) + 63) >> 6;
    if ((v27 & 0x3Fu) <= 0xD)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

  v8 = &_swiftEmptySetSingleton;
  v49 = &_swiftEmptySetSingleton;
  __CocoaSet.makeIterator()();
  v9 = __CocoaSet.Iterator.next()();
  if (!v9)
  {
LABEL_26:

    goto LABEL_43;
  }

  v10 = v9;
  sub_100010734(0, &qword_100063A70, EKSharee_ptr);
  v11 = v10;
  while (1)
  {
    *(v0 + 24) = v11;
    swift_dynamicCast();
    v12 = [*(v0 + 16) shareeStatus];
    v13 = *(v0 + 16);
    if (v12 == 1)
    {
      break;
    }

LABEL_8:
    v11 = __CocoaSet.Iterator.next()();
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  v14 = *(v8 + 16);
  if (*(v8 + 24) <= v14)
  {
    sub_10001BB2C(v14 + 1);
    v8 = v49;
  }

  v6 = v13;
  v15 = NSObject._rawHashValue(seed:)(*(v8 + 40));
  v16 = v8 + 56;
  v17 = -1 << *(v8 + 32);
  v18 = v15 & ~v17;
  v19 = v18 >> 6;
  if (((-1 << v18) & ~*(v8 + 56 + 8 * (v18 >> 6))) != 0)
  {
    v20 = __clz(__rbit64((-1 << v18) & ~*(v8 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v8 + 48) + 8 * v20) = v13;
    ++*(v8 + 16);
    goto LABEL_8;
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
    v24 = *(v16 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_22;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_28:
    v47 = &v47;
    v48 = v8;
    __chkstk_darwin(v7);
    v29 = &v47 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v28);
    v30 = 0;
    v31 = 0;
    v32 = 1 << *(v6 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v6 + 56);
    v35 = (v32 + 63) >> 6;
    while (v34)
    {
      v36 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
LABEL_38:
      v8 = v36 | (v31 << 6);
      if ([*(*(v6 + 48) + 8 * v8) shareeStatus] == 1)
      {
        *&v29[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_42:
          v8 = sub_100040C28(v29, v48, v30, v6);
          goto LABEL_43;
        }
      }
    }

    v37 = v31;
    while (1)
    {
      v31 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v31 >= v35)
      {
        goto LABEL_42;
      }

      v38 = *(v6 + 56 + 8 * v31);
      ++v37;
      if (v38)
      {
        v36 = __clz(__rbit64(v38));
        v34 = (v38 - 1) & v38;
        goto LABEL_38;
      }
    }
  }

  v46 = swift_slowAlloc();
  v8 = sub_10003BA44(v46, v8, v6, sub_100037DB8, 0, sub_10003B6C4);

LABEL_43:
  v40 = *(v0 + 40);
  sub_100035864(v8);
  v42 = v41;
  *(v0 + 48) = v41;

  v43 = v40[7];
  v44 = v40[8];
  sub_100005E78(v40 + 4, v43);
  v45 = swift_task_alloc();
  *(v0 + 56) = v45;
  *v45 = v0;
  v45[1] = sub_1000377A8;

  return dispatch thunk of ContactFetcherProtocol.contacts(withPredicates:includeImages:)(v42, 0, v43, v44);
}

uint64_t sub_1000377A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    v5 = sub_1000379E8;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_10003792C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10003792C()
{
  sub_100035E04(*(v0 + 72));
  v2 = v1;

  v3 = sub_10001E3F0(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000379E8()
{
  v1 = sub_10001E3F0(_swiftEmptyArrayStorage);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_100037A94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005E30(&qword_100062DA8, &qword_10004EAF0);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = sub_100010734(0, &qword_100063A70, EKSharee_ptr);
  v30[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_100007864(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_1000078C0(v30);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_10003B584(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 7);

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_100007864(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v30);
      v14.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_1000078C0(v30);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = NSObject._rawHashValue(seed:)(v2[5]);
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*&v10[8 * (v19 >> 6)]) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *&v10[8 * v20];
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*&v10[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v10[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      *(v2[6] + 8 * v12) = v16;
      ++v2[2];
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

Swift::Int sub_100037E0C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100037E80(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100037EC4()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100037F24(uint64_t a1)
{
  v2 = *(v1 + 8);
  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_100037F68(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100037FC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_100010734(0, &qword_100062D80, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & ~(v2 ^ v3) & 1;
}

uint64_t sub_100038030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_100005E30(&qword_100063A48, &unk_10004EA80);
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_100038160, 0, 0);
}

uint64_t sub_100038160()
{
  v1 = *(v0 + 160);
  v40 = sub_100007A30(_swiftEmptyArrayStorage);
  if (v1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_25:
    sub_100005E30(&qword_100063A40, &qword_10004EA68);
    TaskGroup.makeAsyncIterator()();
    *(v0 + 240) = v40;
    *(v0 + 248) = v40;
    v38 = swift_task_alloc();
    *(v0 + 256) = v38;
    *v38 = v0;
    v38[1] = sub_100038770;
    v4 = *(v0 + 184);
    v5 = v0 + 128;
    v2 = 0;
    v3 = 0;

    return TaskGroup.Iterator.next(isolation:)(v5, v2, v3, v4);
  }

  v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v42 = v1 & 0xC000000000000001;
    v41 = *(v0 + 160) + 32;
    v49 = **(v0 + 152);
    v43 = v5;
    while (1)
    {
      v48 = v6;
      if (v42)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v41 + 8 * v6);
      }

      v10 = v9;
      v12 = *(v0 + 224);
      v11 = *(v0 + 232);
      v14 = *(v0 + 168);
      v13 = *(v0 + 176);
      v15 = type metadata accessor for TaskPriority();
      v16 = *(v15 - 8);
      v47 = *(v16 + 56);
      v47(v11, 1, 1, v15);
      v17 = swift_allocObject();
      v17[2] = 0;
      v18 = v17 + 2;
      v17[3] = 0;
      v17[4] = v14;
      v17[5] = v10;
      v17[6] = v13;
      sub_10002A4B0(v11, v12);
      v46 = *(v16 + 48);
      LODWORD(v11) = v46(v12, 1, v15);

      v45 = v10;

      v19 = *(v0 + 224);
      if (v11 == 1)
      {
        sub_100007DB0(*(v0 + 224), &qword_100062A80, &qword_10004ED60);
        if (*v18)
        {
          goto LABEL_12;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v16 + 8))(v19, v15);
        if (*v18)
        {
LABEL_12:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v20 = dispatch thunk of Actor.unownedExecutor.getter();
          v22 = v21;
          swift_unknownObjectRelease();
          goto LABEL_15;
        }
      }

      v20 = 0;
      v22 = 0;
LABEL_15:
      v23 = swift_allocObject();
      *(v23 + 16) = &unk_10004EAA8;
      *(v23 + 24) = v17;

      sub_100005E30(&qword_100063A40, &qword_10004EA68);
      v24 = v22 | v20;
      v44 = v16;
      if (v22 | v20)
      {
        v24 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v20;
        *(v0 + 40) = v22;
      }

      v25 = *(v0 + 232);
      v27 = *(v0 + 208);
      v26 = *(v0 + 216);
      v29 = *(v0 + 168);
      v28 = *(v0 + 176);
      *(v0 + 80) = 1;
      *(v0 + 88) = v24;
      *(v0 + 96) = v49;
      swift_task_create();

      sub_100007DB0(v25, &qword_100062A80, &qword_10004ED60);
      v47(v26, 1, 1, v15);
      v30 = swift_allocObject();
      v30[2] = 0;
      v31 = v30 + 2;
      v30[3] = 0;
      v30[4] = v29;
      v30[5] = v45;
      v30[6] = v28;
      sub_10002A4B0(v26, v27);
      LODWORD(v26) = v46(v27, 1, v15);

      v32 = v45;

      v33 = *(v0 + 208);
      if (v26 == 1)
      {
        sub_100007DB0(*(v0 + 208), &qword_100062A80, &qword_10004ED60);
        if (!*v31)
        {
          goto LABEL_21;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v44 + 8))(v33, v15);
        if (!*v31)
        {
LABEL_21:
          v34 = 0;
          v36 = 0;
          goto LABEL_22;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v34 = dispatch thunk of Actor.unownedExecutor.getter();
      v36 = v35;
      swift_unknownObjectRelease();
LABEL_22:
      v37 = swift_allocObject();
      *(v37 + 16) = &unk_10004EAB8;
      *(v37 + 24) = v30;

      if (v36 | v34)
      {
        v7 = v0 + 48;
        *(v0 + 48) = 0;
        *(v0 + 56) = 0;
        *(v0 + 64) = v34;
        *(v0 + 72) = v36;
      }

      else
      {
        v7 = 0;
      }

      v6 = v48 + 1;
      v8 = *(v0 + 216);
      *(v0 + 104) = 1;
      *(v0 + 112) = v7;
      *(v0 + 120) = v49;
      swift_task_create();

      sub_100007DB0(v8, &qword_100062A80, &qword_10004ED60);
      if (v43 == v48 + 1)
      {
        goto LABEL_25;
      }
    }
  }

  __break(1u);
  return TaskGroup.Iterator.next(isolation:)(v5, v2, v3, v4);
}

uint64_t sub_100038770()
{

  return _swift_task_switch(sub_10003886C, 0, 0);
}

uint64_t sub_10003886C()
{
  v1 = v0[8].i64[0];
  if (v1)
  {
    v2 = v1 + 64;
    v3 = -1 << *(v1 + 32);
    if (-v3 < 64)
    {
      v4 = ~(-1 << -v3);
    }

    else
    {
      v4 = -1;
    }

    v5 = v4 & *(v1 + 64);
    v6 = (63 - v3) >> 6;
    v51 = v0[15];

    v11 = 0;
    v50 = v1 + 64;
    v48 = v1;
    for (i = v6; ; v6 = i)
    {
      if (!v5)
      {
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            goto LABEL_48;
          }

          if (v13 >= v6)
          {
            break;
          }

          v5 = *(v2 + 8 * v13);
          ++v11;
          if (v5)
          {
            v11 = v13;
            goto LABEL_12;
          }
        }

        v47[15] = v51;
        v40 = swift_task_alloc();
        v47[16].i64[0] = v40;
        *v40 = v47;
        v40[1] = sub_100038770;
        v10 = v47[11].i64[1];
        i8 = v0[8].i8;
        v8 = 0;
        v9 = 0;

        return TaskGroup.Iterator.next(isolation:)(i8, v8, v9, v10);
      }

LABEL_12:
      v14 = (*(v1 + 48) + 16 * (__clz(__rbit64(v5)) | (v11 << 6)));
      v15 = *v14;
      v16 = v14[1];

      v17 = v51.i64[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[8].i64[1] = v51.i64[0];
      sub_100005EBC(v15, v16);
      v19 = *(v51.i64[0] + 16);
      v20 = (v8 & 1) == 0;
      i8 = (v19 + v20);
      if (__OFADD__(v19, v20))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v21 = v8;
      if (*(v51.i64[0] + 24) >= i8)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v22 = v51.i64[0];
          v2 = v50;
          if (v8)
          {
            goto LABEL_6;
          }

LABEL_19:
          sub_100007E88();

          goto LABEL_6;
        }

        sub_100005E30(&qword_100062728, &qword_10004D960);
        v24 = static _DictionaryStorage.copy(original:)();
        v22 = v24;
        v25 = *(v51.i64[0] + 16);
        if (v25)
        {
          i8 = (v24 + 64);
          v8 = (v51.i64[0] + 64);
          v26 = ((1 << *(v22 + 32)) + 63) >> 6;
          v45 = v51.i64[0] + 64;
          if (v22 != v51.i64[0] || i8 >= &v8[8 * v26])
          {
            i8 = memmove(i8, v8, 8 * v26);
            v25 = *(v51.i64[0] + 16);
          }

          v27 = 0;
          *(v22 + 16) = v25;
          v28 = 1 << *(v51.i64[0] + 32);
          if (v28 < 64)
          {
            v29 = ~(-1 << v28);
          }

          else
          {
            v29 = -1;
          }

          v30 = v29 & *(v51.i64[0] + 64);
          v31 = (v28 + 63) >> 6;
          v46 = v31;
          if (v30)
          {
            do
            {
              v32 = __clz(__rbit64(v30));
              v52 = (v30 - 1) & v30;
LABEL_34:
              v35 = v32 | (v27 << 6);
              v36 = (*(v17 + 48) + 16 * v35);
              v37 = v36[1];
              v38 = *(*(v17 + 56) + 8 * v35);
              v39 = (*(v22 + 48) + 16 * v35);
              *v39 = *v36;
              v39[1] = v37;
              *(*(v22 + 56) + 8 * v35) = v38;

              v31 = v46;
              v30 = v52;
            }

            while (v52);
          }

          v33 = v27;
          while (1)
          {
            v27 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v27 >= v31)
            {
              goto LABEL_36;
            }

            v34 = *(v45 + 8 * v27);
            ++v33;
            if (v34)
            {
              v32 = __clz(__rbit64(v34));
              v52 = (v34 - 1) & v34;
              goto LABEL_34;
            }
          }

LABEL_49:
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(i8, v8, v9, v10);
        }

LABEL_36:

        v2 = v50;
        if ((v21 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_100006738(i8, isUniquelyReferenced_nonNull_native);
        v22 = v0[8].u64[1];
        sub_100005EBC(v15, v16);
        if ((v21 & 1) != (v23 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v2 = v50;
        if ((v21 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_6:
      v5 &= v5 - 1;

      sub_100039614(v12);

      v51 = vdupq_n_s64(v22);
      v1 = v48;
    }
  }

  v41 = v0[15].i64[1];
  v42 = v0[9].i64[0];
  (*(v0[12].i64[0] + 8))(v0[12].i64[1], v0[11].i64[1]);
  *v42 = v41;

  v43 = v0->i64[1];

  return v43();
}

uint64_t sub_100038D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_100038DF0;

  return sub_100036B10(a5);
}

uint64_t sub_100038DF0(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100038EF0, 0, 0);
}

void sub_100038EF0()
{
  v29 = v0;
  v1 = sub_100041274(*(v0 + 32), *(v0 + 48));
  v2 = sub_100007A30(_swiftEmptyArrayStorage);
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & v1[7];
  v6 = (63 - v4) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_10:
    v9 = (v1[6] + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = *v9;
    v10 = v9[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = v2;
    v13 = sub_100005EBC(v11, v10);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v19 = v14;
    if (v2[3] >= v18)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = v13;
        sub_10000709C();
        v13 = v24;
        v2 = v28[0];
        if (v19)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_100006738(v18, isUniquelyReferenced_nonNull_native);
      v2 = v28[0];
      v13 = sub_100005EBC(v11, v10);
      if ((v19 & 1) != (v20 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    if (v19)
    {
      goto LABEL_4;
    }

LABEL_16:
    v2[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v2[6] + 16 * v13);
    *v21 = v11;
    v21[1] = v10;
    *(v2[7] + 8 * v13) = &_swiftEmptySetSingleton;
    v22 = v2[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_28;
    }

    v2[2] = v23;

LABEL_4:
    v5 &= v5 - 1;
    sub_10001B2CC(v28, *(v27 + 24), 0);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = v1[v8 + 7];
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  v25 = *(v27 + 16);

  *v25 = v2;
  v26 = *(v27 + 8);

  v26();
}

uint64_t sub_1000391B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_100039254;

  return sub_100037144(a5);
}

uint64_t sub_100039254(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100039354, 0, 0);
}

void sub_100039354()
{
  v29 = v0;
  v1 = sub_100041274(*(v0 + 32), *(v0 + 48));
  v2 = sub_100007A30(_swiftEmptyArrayStorage);
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & v1[7];
  v6 = (63 - v4) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_10:
    v9 = (v1[6] + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = *v9;
    v10 = v9[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = v2;
    v13 = sub_100005EBC(v11, v10);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v19 = v14;
    if (v2[3] >= v18)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = v13;
        sub_10000709C();
        v13 = v24;
        v2 = v28[0];
        if (v19)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_100006738(v18, isUniquelyReferenced_nonNull_native);
      v2 = v28[0];
      v13 = sub_100005EBC(v11, v10);
      if ((v19 & 1) != (v20 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    if (v19)
    {
      goto LABEL_4;
    }

LABEL_16:
    v2[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v2[6] + 16 * v13);
    *v21 = v11;
    v21[1] = v10;
    *(v2[7] + 8 * v13) = &_swiftEmptySetSingleton;
    v22 = v2[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_28;
    }

    v2[2] = v23;

LABEL_4:
    v5 &= v5 - 1;
    sub_10001B2CC(v28, *(v27 + 24), 1);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = v1[v8 + 7];
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  v25 = *(v27 + 16);

  *v25 = v2;
  v26 = *(v27 + 8);

  v26();
}

void sub_100039614(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_10001B2CC(v10, *(*(a1 + 48) + ((v8 << 10) | (16 * v9))), *(v8 + 8));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100039718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = v3;
  v5 = type metadata accessor for Logger();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_100005E30(&qword_100063A30, &unk_10004EA50);
  v4[9] = swift_task_alloc();
  v6 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for PeopleFeatureFlagNames();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_100039958, 0, 0);
}

uint64_t sub_100039958()
{
  v59 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v2 + 104))(v1, enum case for PeopleFeatureFlagNames.calendarStatus(_:), v3);
  v4 = dispatch thunk of FeatureFlagsProvider.isEnabled(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[9];
    v54 = v0[8];
    v55 = v0[3];
    Date.init()();
    v10 = objc_opt_self();
    v11 = [v10 hours];
    sub_100010734(0, &qword_100062AF0, NSUnitDuration_ptr);
    Measurement.init(value:unit:)();
    v12 = [v10 hours];
    Measurement.init(value:unit:)();
    v13 = *(v8 + 16);
    v13(v9, v6, v7);
    v13(v9 + *(v54 + 48), v5, v7);
    v14 = v0[18];
    if (*(v55 + 16))
    {
      static Date.- infix(_:_:)();
      static Date.+ infix(_:_:)();
      v15 = swift_task_alloc();
      v0[22] = v15;
      *v15 = v0;
      v15[1] = sub_100039F3C;
      v16 = v0[16];
      v17 = v0[17];

      return sub_100036394(v17, v16);
    }

    v20 = v0[14];
    v21 = v0[15];
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[10];
    v25 = v0[11];
    v26 = v0[9];
    v27 = sub_100007A30(_swiftEmptyArrayStorage);
    sub_100007DB0(v26, &qword_100063A30, &unk_10004EA50);
    v28 = *(v25 + 8);
    v28(v23, v24);
    v28(v22, v24);
    (*(v21 + 8))(v14, v20);
    v29 = sub_100007728(_swiftEmptyArrayStorage);
    v30 = *(v27 + 64);
    v57 = v29;
    v31 = -1;
    v32 = -1 << *(v27 + 32);
    if (-v32 < 64)
    {
      v31 = ~(-1 << -v32);
    }

    v33 = v31 & v30;
    v34 = (63 - v32) >> 6;

    v35 = 0;
    if (v33)
    {
      while (1)
      {
        v36 = v35;
LABEL_14:
        v37 = v0[4];
        v38 = __clz(__rbit64(v33)) | (v36 << 6);
        v39 = (*(v27 + 48) + 16 * v38);
        v40 = v39[1];
        v41 = *(*(v27 + 56) + 8 * v38);
        v58[0] = *v39;
        v58[1] = v40;
        v58[2] = v41;

        sub_10003AB34(&v57, v58, v37);

        v33 &= v33 - 1;
        v35 = v36;
        if (!v33)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        return result;
      }

      if (v36 >= v34)
      {
        break;
      }

      v33 = *(v27 + 64 + 8 * v36);
      ++v35;
      if (v33)
      {
        goto LABEL_14;
      }
    }

    v19 = v57;
    static PeopleLogger.common.getter();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[6];
    v46 = v0[7];
    v47 = v0[5];
    if (v44)
    {
      v56 = v0[7];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v58[0] = v49;
      *v48 = 136315138;
      sub_100005E30(&qword_100063A38, &qword_10004EA60);
      v50 = Dictionary.description.getter();
      v52 = sub_10002580C(v50, v51, v58);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v42, v43, "CalendarStatusSource returning statuses %s", v48, 0xCu);
      sub_100003938(v49);

      (*(v45 + 8))(v56, v47);
    }

    else
    {

      (*(v45 + 8))(v46, v47);
    }
  }

  else
  {
    v19 = sub_100007728(_swiftEmptyArrayStorage);
  }

  v53 = v0[1];

  return v53(v19);
}

uint64_t sub_100039F3C(uint64_t a1)
{
  v4 = *v2;
  v4[23] = v1;

  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = v4[14];
  if (v1)
  {

    v9 = *(v7 + 8);
    v4[29] = v9;
    v4[30] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);
    v9(v5, v8);
    v10 = sub_10003A74C;
  }

  else
  {
    v4[24] = a1;
    v11 = *(v7 + 8);
    v4[25] = v11;
    v4[26] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v6, v8);
    v11(v5, v8);
    v10 = sub_10003A138;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10003A138()
{
  v1 = *(v0 + 192);
  v2 = sub_100005E30(&qword_100063A40, &qword_10004EA68);
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = vextq_s8(v4, v4, 8uLL);
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  *v5 = v0;
  v5[1] = sub_10003A248;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v2, v2, 0, 0, &unk_10004EA78, v3, v2);
}

uint64_t sub_10003A248()
{

  return _swift_task_switch(sub_10003A37C, 0, 0);
}

uint64_t sub_10003A37C()
{
  v41 = v0;
  v1 = v0[25];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  sub_100007DB0(v0[9], &qword_100063A30, &unk_10004EA50);
  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);
  v1(v2, v3);
  v9 = v0[2];
  v10 = v0[23];
  v11 = sub_100007728(_swiftEmptyArrayStorage);
  v12 = *(v9 + 64);
  v39 = v11;
  v13 = -1;
  v14 = -1 << *(v9 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & v12;
  v16 = (63 - v14) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      v20 = v0[4];
      v21 = __clz(__rbit64(v15)) | (v19 << 6);
      v22 = (*(v9 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(*(v9 + 56) + 8 * v21);
      v40[0] = *v22;
      v40[1] = v23;
      v40[2] = v24;

      sub_10003AB34(&v39, v40, v20);
      if (v10)
      {
        break;
      }

      v15 &= v15 - 1;
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return result;
      }

      if (v19 >= v16)
      {
        break;
      }

      v15 = *(v9 + 64 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    v25 = v39;
    static PeopleLogger.common.getter();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[6];
    v30 = v0[7];
    v31 = v0[5];
    if (v28)
    {
      v38 = v0[7];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v32 = 136315138;
      sub_100005E30(&qword_100063A38, &qword_10004EA60);
      v34 = Dictionary.description.getter();
      v36 = sub_10002580C(v34, v35, v40);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "CalendarStatusSource returning statuses %s", v32, 0xCu);
      sub_100003938(v33);

      (*(v29 + 8))(v38, v31);
    }

    else
    {

      (*(v29 + 8))(v30, v31);
    }

    v37 = v0[1];

    return v37(v25);
  }
}

uint64_t sub_10003A74C()
{
  v41 = v0;
  v1 = v0[29];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = sub_100007A30(_swiftEmptyArrayStorage);
  sub_100007DB0(v8, &qword_100063A30, &unk_10004EA50);
  v10 = *(v6 + 8);
  v10(v5, v7);
  v10(v4, v7);
  v1(v2, v3);
  v11 = sub_100007728(_swiftEmptyArrayStorage);
  v12 = *(v9 + 64);
  v39 = v11;
  v13 = -1;
  v14 = -1 << *(v9 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & v12;
  v16 = (63 - v14) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      v20 = v0[4];
      v21 = __clz(__rbit64(v15)) | (v19 << 6);
      v22 = (*(v9 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(*(v9 + 56) + 8 * v21);
      v40[0] = *v22;
      v40[1] = v23;
      v40[2] = v24;

      sub_10003AB34(&v39, v40, v20);

      v15 &= v15 - 1;
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v9 + 64 + 8 * v19);
    ++v18;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  v25 = v39;
  static PeopleLogger.common.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[6];
  v30 = v0[7];
  v31 = v0[5];
  if (v28)
  {
    v38 = v0[7];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40[0] = v33;
    *v32 = 136315138;
    sub_100005E30(&qword_100063A38, &qword_10004EA60);
    v34 = Dictionary.description.getter();
    v36 = sub_10002580C(v34, v35, v40);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "CalendarStatusSource returning statuses %s", v32, 0xCu);
    sub_100003938(v33);

    (*(v29 + 8))(v38, v31);
  }

  else
  {

    (*(v29 + 8))(v30, v31);
  }

  v37 = v0[1];

  return v37(v25);
}

uint64_t sub_10003AB34(void *a1, uint64_t *a2, void **a3)
{
  v4 = v3;
  v59 = type metadata accessor for Date();
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[1];
  v56 = *a2;
  v57 = v8;
  v9 = a2[2];
  LOBYTE(v8) = *(v9 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_35;
    }
  }

  __chkstk_darwin(v13);
  bzero(v53 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);
  v14 = 0;
  v15 = 0;
  v16 = 1 << *(v9 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v9 + 56);
  v19 = (v16 + 63) >> 6;
  while (1)
  {
    if (!v18)
    {
      v22 = v15;
      while (1)
      {
        v15 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v15 >= v19)
        {
          goto LABEL_16;
        }

        v23 = *(v9 + 56 + 8 * v15);
        ++v22;
        if (v23)
        {
          v18 = (v23 - 1) & v23;
          v21 = __clz(__rbit64(v23)) | (v15 << 6);
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v15 << 6);
LABEL_12:
    if ((*(*(v9 + 48) + 16 * v21 + 8) & 1) == 0)
    {
      *(v53 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v21;
      if (__OFADD__(v14++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_16:
  for (i = sub_100041040((v53 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, v14, v9); ; i = v52)
  {
    v26 = sub_10003617C(i);

    v27 = sub_10001E918(v26);

    v28 = sub_10003D4D4(v9, v27);

    v11 = sub_10003617C(v28);

    sub_10003CE30(v27);
    v30 = v29;
    v9 = v4;

    if (v11 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (!v31)
      {
LABEL_32:

        v33 = _swiftEmptyArrayStorage;
LABEL_33:
        v44 = v57;

        v45 = sub_10003BCFC(v30);

        v46 = sub_10003BCFC(v33);

        v60 = v45;
        sub_10003B458(v46);
        v47 = sub_100035C08(v60);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *a1;
        sub_100006B74(v47, v56, v44, isUniquelyReferenced_nonNull_native);

        *a1 = v60;
        return result;
      }
    }

    else
    {
      v31 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_32;
      }
    }

    v60 = _swiftEmptyArrayStorage;
    sub_10000D734(0, v31 & ~(v31 >> 63), 0);
    if ((v31 & 0x8000000000000000) == 0)
    {
      v53[0] = v30;
      v53[1] = v4;
      v54 = a1;
      v32 = 0;
      v33 = v60;
      v34 = v11;
      v35 = v11 & 0xC000000000000001;
      v36 = (v55 + 8);
      v37 = v11;
      do
      {
        if (v35)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v38 = *(v34 + 8 * v32 + 32);
        }

        v39 = v38;
        v40 = v58;
        Date.init()();
        v41 = sub_10003C66C(v39, 1, v40);

        (*v36)(v40, v59);
        v60 = v33;
        v43 = v33[2];
        v42 = v33[3];
        if (v43 >= v42 >> 1)
        {
          sub_10000D734((v42 > 1), v43 + 1, 1);
          v33 = v60;
        }

        ++v32;
        v33[2] = v43 + 1;
        v33[v43 + 4] = v41;
        v34 = v37;
      }

      while (v31 != v32);

      a1 = v54;
      v30 = v53[0];
      goto LABEL_33;
    }

    __break(1u);
LABEL_35:
    v50 = swift_slowAlloc();
    v51 = sub_10003BA44(v50, v11, v9, sub_10003B0B8, 0, sub_10003B830);
    if (v4)
    {
      break;
    }

    v52 = v51;
    v4 = 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003B0C8()
{

  sub_100003938((v0 + 32));
  sub_100007E10(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_10003B13C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.calendar(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10003B1B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_10003B1F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return StatusSource.debugID.getter(a1, WitnessTable);
}

uint64_t sub_10003B248(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005B08;

  return sub_100039718(a1, v4, v5);
}

uint64_t sub_10003B2E0()
{
  _StringGuts.grow(_:)(33);
  v0._object = 0x8000000100051050;
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_10003B370(uint64_t a1, uint64_t a2)
{
  result = sub_10003B410(&qword_100063A20, a2, type metadata accessor for CalendarStatusSource, &unk_10004E998);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003B410(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10003B458(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100022490(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for CalendarPersonStatus();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_10003B584(uint64_t a1)
{
  v3 = *v1;
  v4 = NSObject._rawHashValue(seed:)(*(*v1 + 40));
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_100010734(0, &qword_100063A70, EKSharee_ptr);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void sub_10003B6C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_100040C28(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10003B830(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **))
{
  v27 = a3;
  v23 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v27 + 48) + 16 * v14;
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    v25 = v16;
    v26 = v15;
    v17 = v16;
    v18 = a4(&v25);

    if (v4)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:
        v20 = v27;

        sub_100041040(a1, a2, v23, v20);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_10003B9A8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10003D244(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_10003BA44(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void sub_10003BAE4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100010734(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100010734(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

void *sub_10003BCFC(uint64_t a1)
{
  v2 = sub_100005E30(&qword_100063A58, &unk_10004EAD0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v53 = &v46 - v6;
  v7 = type metadata accessor for CalendarPersonStatus();
  result = __chkstk_darwin(v7);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v59 = 0;
  v10 = 0;
  v47 = *(v11 + 80);
  v12 = _swiftEmptyArrayStorage;
  v52 = (v47 + 32) & ~v47;
  v57 = _swiftEmptyArrayStorage + v52;
  v13 = (v11 + 56);
  v48 = v11 + 48;
  v49 = v11 + 16;
  v50 = v11;
  v55 = (v11 + 32);
LABEL_4:
  v16 = *(a1 + 16);
  if (v10 != v16)
  {
    if (v10 < v16)
    {
      while (1)
      {
        v17 = *(a1 + 32 + 8 * v10);

        if (v17)
        {
          break;
        }

LABEL_9:
        ++v10;
        v18 = *(a1 + 16);
        if (v10 == v18)
        {
          goto LABEL_36;
        }

        if (v10 >= v18)
        {
          goto LABEL_42;
        }
      }

      v14 = *(v17 + 16);
      if (!v14)
      {
        (*v13)(v5, 1, 1, v7);
        result = sub_100007DB0(v5, &qword_100063A58, &unk_10004EAD0);
        goto LABEL_9;
      }

      v15 = 0;
      ++v10;
      while (1)
      {
        if (v15 >= v14)
        {
          goto LABEL_43;
        }

        v19 = v12;
        v20 = v50;
        v21 = *(v50 + 72);
        v59 = v15;
        v54 = v21;
        (*(v50 + 16))(v5, v17 + v52 + v21 * v15, v7);
        (*(v20 + 56))(v5, 0, 1, v7);
        v22 = v53;
        sub_10003D890(v5, v53);
        if ((*(v20 + 48))(v22, 1, v7) == 1)
        {
          v12 = v19;
          goto LABEL_37;
        }

        v51 = *v55;
        result = v51(v56, v22, v7);
        v23 = v19;
        v24 = v58;
        if (!v58)
        {
          break;
        }

LABEL_34:
        v40 = __OFSUB__(v24, 1);
        v41 = v24 - 1;
        if (v40)
        {
          goto LABEL_44;
        }

        v58 = v41;
        ++v59;
        v42 = v57;
        result = v51(v57, v56, v7);
        v57 = &v42[v54];
        v12 = v23;
        v14 = *(v17 + 16);
        v15 = v59;
        if (v59 == v14)
        {
          (*v13)(v5, 1, 1, v7);
          result = sub_100007DB0(v5, &qword_100063A58, &unk_10004EAD0);
          goto LABEL_4;
        }
      }

      v25 = *(v19 + 3);
      if (((v25 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      sub_100005E30(&qword_100063280, &unk_10004E2D0);
      v28 = v52;
      v58 = v27;
      v23 = swift_allocObject();
      result = j__malloc_size(v23);
      v29 = v54;
      if (!v54)
      {
        goto LABEL_47;
      }

      v30 = result - v28;
      if ((result - v28) == 0x8000000000000000 && v54 == -1)
      {
        goto LABEL_48;
      }

      v32 = v28;
      v33 = v30 / v54;
      *(v23 + 2) = v58;
      *(v23 + 3) = 2 * (v30 / v29);
      v34 = &v23[v28];
      v35 = v19;
      v36 = *(v19 + 2);
      v37 = *(v19 + 3) >> 1;
      v38 = v37 * v29;
      if (!v36)
      {
LABEL_33:
        v57 = &v34[v38];
        v39 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v37;

        v24 = v39;
        goto LABEL_34;
      }

      if (v23 < v35 || v34 >= &v35[v32 + v38])
      {
        v57 = v33;
        v58 = v34;
        v46 = v38;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v23 == v35)
        {
LABEL_32:
          *(v35 + 2) = 0;
          goto LABEL_33;
        }

        v57 = v33;
        v58 = v34;
        v46 = v38;
        swift_arrayInitWithTakeBackToFront();
      }

      v38 = v46;
      v33 = v57;
      v34 = v58;
      goto LABEL_32;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_36:
  v22 = v53;
  (*v13)(v53, 1, 1, v7);
LABEL_37:

  result = sub_100007DB0(v22, &qword_100063A58, &unk_10004EAD0);
  v43 = *(v12 + 3);
  if (v43 < 2)
  {
    return v12;
  }

  v44 = v43 >> 1;
  v40 = __OFSUB__(v44, v58);
  v45 = v44 - v58;
  if (!v40)
  {
    *(v12 + 2) = v45;
    return v12;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_10003C21C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001ECE4;

  return sub_100038030(a1, a2, v6, v7, v8);
}

uint64_t sub_10003C2E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001ECE4;

  return sub_100038D4C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10003C3AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003C3E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001ECE4;

  return sub_10001E1CC(a1, v4);
}

uint64_t sub_10003C49C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003C4EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001ECE4;

  return sub_1000391B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10003C5B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007CBC;

  return sub_10001E1CC(a1, v4);
}

id sub_10003C66C(void *a1, char a2, uint64_t a3)
{
  v56 = type metadata accessor for CalendarPersonStatus.Representation();
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v10 = __chkstk_darwin(v9);
  v52 = &v48 - v11;
  v12 = __chkstk_darwin(v10);
  v53 = &v48 - v13;
  v14 = __chkstk_darwin(v12);
  v54 = &v48 - v15;
  __chkstk_darwin(v14);
  v17 = &v48 - v16;
  v59 = type metadata accessor for CalendarPersonStatus.Priority();
  v18 = *(v59 - 8);
  v19 = __chkstk_darwin(v59);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v48 - v22;
  if ((a2 & 1) != 0 || (v24 = [a1 attendees]) != 0 && ((v25 = v24, v55 = a3, sub_100010734(0, &qword_100063A60, EKParticipant_ptr), v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v25, v26 >> 62) ? (v27 = _CocoaArrayWrapper.endIndex.getter()) : (v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v27 > 3))
  {
    v28 = &enum case for CalendarPersonStatus.Priority.low(_:);
  }

  else
  {
    v28 = &enum case for CalendarPersonStatus.Priority.high(_:);
  }

  v29 = *v28;
  v55 = v18;
  (*(v18 + 104))(v23, v29, v59);
  result = [a1 startDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v31 = result;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = static Date.> infix(_:_:)();
  (*(v8 + 8))(v17, v7);
  sub_100005E30(&qword_100063280, &unk_10004E2D0);
  v33 = *(type metadata accessor for CalendarPersonStatus() - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  if ((v32 & 1) == 0)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_10004D790;
    result = [a1 title];
    if (result)
    {
      v46 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      result = [a1 startDate];
      if (result)
      {
        v47 = result;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v58 + 104))(v57, enum case for CalendarPersonStatus.Representation.past(_:), v56);
        v45 = v55;
        v44 = v59;
        (*(v55 + 16))(v21, v23, v59);
        CalendarPersonStatus.init(title:startDate:representation:priority:)();
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10004D9E0;
  result = [a1 title];
  if (!result)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  result = [a1 startDate];
  if (!result)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = result;
  v48 = v35;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = *(v58 + 104);
  v58 += 104;
  v50 = v38;
  v38(v57, enum case for CalendarPersonStatus.Representation.past(_:), v56);
  v49 = *(v55 + 16);
  v49(v21, v23, v59);
  v51 = v35 + v34;
  CalendarPersonStatus.init(title:startDate:representation:priority:)();
  result = [a1 title];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v39 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  result = [a1 startDate];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v40 = result;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v50(v57, enum case for CalendarPersonStatus.Representation.alert(_:), v56);
  v49(v21, v23, v59);
  CalendarPersonStatus.init(title:startDate:representation:priority:)();
  result = [a1 title];
  v41 = v48;
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v42 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  result = [a1 startDate];
  if (result)
  {
    v43 = result;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v50(v57, enum case for CalendarPersonStatus.Representation.future(_:), v56);
    v44 = v59;
    v49(v21, v23, v59);
    CalendarPersonStatus.init(title:startDate:representation:priority:)();
    v45 = v55;
LABEL_20:
    (*(v45 + 8))(v23, v44);
    return v41;
  }

LABEL_30:
  __break(1u);
  return result;
}

void sub_10003CE30(uint64_t a1)
{
  v39 = type metadata accessor for Date();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v46 = _swiftEmptyArrayStorage;
    sub_10000D734(0, v5 & ~(v5 >> 63), 0);
    v41 = v46;
    if (v40)
    {
      v6 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v6 = _HashTable.startBucket.getter();
      v7 = *(a1 + 36);
    }

    v43 = v6;
    v44 = v7;
    v45 = v40 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v32[1] = v1;
      v8 = 0;
      v36 = v5;
      v37 = (v3 + 8);
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v9 = a1;
      }

      v34 = a1 + 56;
      v35 = v9;
      v33 = a1 + 64;
      while (v8 < v5)
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_37;
        }

        v13 = v43;
        v12 = v44;
        v14 = v45;
        sub_10003BAE4(v43, v44, v45, a1, &qword_100062D90, EKEvent_ptr);
        v16 = v15;
        v17 = v38;
        Date.init()();
        v18 = sub_10003C66C(v16, 0, v17);
        (*v37)(v17, v39);

        v19 = v41;
        v46 = v41;
        v21 = v41[2];
        v20 = v41[3];
        if (v21 >= v20 >> 1)
        {
          sub_10000D734((v20 > 1), v21 + 1, 1);
          v19 = v46;
        }

        v19[2] = v21 + 1;
        v19[v21 + 4] = v18;
        v41 = v19;
        if (v40)
        {
          if (!v14)
          {
            goto LABEL_42;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v5 = v36;
          sub_100005E30(&qword_100063A68, &qword_10004EAE0);
          v10 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v10(v42, 0);
          if (v8 == v5)
          {
LABEL_34:
            sub_10003D900(v43, v44, v45);
            return;
          }
        }

        else
        {
          if (v14)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v22 = 1 << *(a1 + 32);
          if (v13 >= v22)
          {
            goto LABEL_38;
          }

          v23 = v13 >> 6;
          v24 = *(v34 + 8 * (v13 >> 6));
          if (((v24 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v12)
          {
            goto LABEL_40;
          }

          v25 = v24 & (-2 << (v13 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
            v5 = v36;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v33 + 8 * v23);
            v5 = v36;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_10003D900(v13, v12, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_33;
              }
            }

            sub_10003D900(v13, v12, 0);
          }

LABEL_33:
          v31 = *(a1 + 36);
          v43 = v22;
          v44 = v31;
          v45 = 0;
          if (v8 == v5)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

void sub_10003D244(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v38 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v40 = a4 & 0xC000000000000001;
  v41 = a4 + 56;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = v14 | (v8 << 6);
    v18 = *(v6 + 48) + 16 * v17;
    if (*(v18 + 8) == 1)
    {
      v19 = *v18;
      if (v40)
      {
        v20 = v12;
        v21 = v19;
        v22 = v5;
        v23 = v21;
        v24 = __CocoaSet.contains(_:)();

        v5 = v22;
        v12 = v20;
        v6 = a3;
        if ((v24 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (*(a4 + 16))
      {
        v34 = v17;
        v35 = v12;
        v36 = a2;
        sub_100010734(0, &qword_100062D90, EKEvent_ptr);
        v25 = *(a4 + 40);
        v26 = v19;
        v27 = NSObject._rawHashValue(seed:)(v25);
        v28 = -1 << *(a4 + 32);
        v29 = v27 & ~v28;
        if (((*(v41 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
LABEL_21:

          a2 = v36;
          v6 = a3;
          v17 = v34;
          v12 = v35;
          goto LABEL_22;
        }

        v30 = ~v28;
        while (1)
        {
          v31 = *(*(a4 + 48) + 8 * v29);
          v32 = static NSObject.== infix(_:_:)();

          if (v32)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v41 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        a2 = v36;
        v6 = a3;
        v12 = v35;
      }

      else
      {
LABEL_22:
        *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v38++, 1))
        {
          goto LABEL_28;
        }
      }
    }
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

      sub_100041040(a1, a2, v38, v6);
      return;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

Swift::Int sub_10003D4D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_32;
  }

  while (2)
  {
    v45 = &v41;
    __chkstk_darwin(v10);
    v48 = &v41 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v48, v9);
    v11 = 0;
    v12 = v5 + 56;
    v13 = 1 << *(v5 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v5 + 56);
    v49 = 0;
    v50 = (v13 + 63) >> 6;
    v16 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v16 = a2;
    }

    v46 = a2;
    v47 = v16;
    v52 = a2 & 0xC000000000000001;
    v53 = a2 + 56;
    v51 = v5;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v20 = v17 | (v11 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      if (*(v21 + 8) == 1)
      {
        v22 = *v21;
        if (v52)
        {
          v23 = v8;
          v24 = v3;
          v25 = v15;
          v26 = v20;
          v9 = v22;
          v27 = __CocoaSet.contains(_:)();

          v20 = v26;
          v15 = v25;
          v3 = v24;
          v8 = v23;
          v5 = v51;
          a2 = v46;
          if ((v27 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (*(a2 + 16))
        {
          v41 = v20;
          v42 = v15;
          v43 = v8;
          v44 = v3;
          v9 = sub_100010734(0, &qword_100062D90, EKEvent_ptr);
          v28 = *(a2 + 40);
          v29 = v22;
          v30 = NSObject._rawHashValue(seed:)(v28);
          v31 = a2;
          v32 = -1 << *(a2 + 32);
          v33 = v30 & ~v32;
          if (((*(v53 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
LABEL_24:

            v8 = v43;
            v3 = v44;
            a2 = v31;
            v5 = v51;
            v20 = v41;
            v15 = v42;
            goto LABEL_25;
          }

          v34 = ~v32;
          while (1)
          {
            v35 = *(*(v31 + 48) + 8 * v33);
            v36 = static NSObject.== infix(_:_:)();

            if (v36)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v53 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          v8 = v43;
          v3 = v44;
          a2 = v31;
          v5 = v51;
          v15 = v42;
        }

        else
        {
LABEL_25:
          *&v48[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
          if (__OFADD__(v49++, 1))
          {
            __break(1u);
          }
        }
      }
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v50)
      {
        v38 = sub_100041040(v48, v8, v49, v5);
        goto LABEL_30;
      }

      v19 = *(v12 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v40 = swift_slowAlloc();

  v38 = sub_10003B9A8(v40, v8, v5, a2);

LABEL_30:

  return v38;
}

uint64_t sub_10003D890(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100063A58, &unk_10004EAD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D900(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_10003D90C()
{
  result = qword_100063A80;
  if (!qword_100063A80)
  {
    sub_100010734(255, &qword_100063A70, EKSharee_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063A80);
  }

  return result;
}

uint64_t sub_10003D974()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_10003DA68(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100007CBC;

  return sub_100036888(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t sub_10003DB94(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10003DBA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003DBF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003DC44()
{
  result = qword_100063A88;
  if (!qword_100063A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063A88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarStatusSource.EventWithReason.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CalendarStatusSource.EventWithReason.Reason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003DE14()
{
  result = qword_100063A90;
  if (!qword_100063A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063A90);
  }

  return result;
}

uint64_t sub_10003DE70(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);

  result = swift_beginAccess();
  v8 = 0;
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v10 = v8;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    swift_bridgeObjectRetain_n();
    sub_10001B17C(&v15, v13, v14);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      swift_endAccess();
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003DFAC(void *a1, void *a2)
{
  sub_100005E78(a2 + 11, a2[14]);

  return sub_100042D74(a1, 1, a2);
}

uint64_t sub_10003E00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[1] = a3;
  v9 = type metadata accessor for ContactPerson();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  type metadata accessor for PeopleBiomeEventIndexer();
  (*(v10 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  v13 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a5;
  *(v14 + 3) = sub_100042BF0;
  *(v14 + 4) = v12;
  (*(v10 + 32))(&v14[v13], v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);

  static PeopleBiomeEventIndexer.indexEvent(locationEvent:withPerson:withIndexer:completion:)();
}

uint64_t sub_10003E1C0(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, void (*a5)(void, void, void))
{
  v9 = type metadata accessor for StatusType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v45 - v17;
  if (a1)
  {
    swift_errorRetain();
    static PeopleLogger.daemon.getter();

    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v47 = a4;
      v22 = v21;
      v50 = swift_slowAlloc();
      *v22 = 136315394;
      (*(v10 + 104))(v12, enum case for StatusType.location(_:), v9);
      sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      LODWORD(v45) = v20;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = a3;
      v25 = v24;
      (*(v10 + 8))(v12, v9);
      v26 = sub_10002580C(v23, v25, &v50);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = sub_10002580C(v27, v28, &v50);

      *(v22 + 14) = v29;
      a3 = v46;
      _os_log_impl(&_mh_execute_header, v19, v45, "'%s' event error: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    (*(v48 + 8))(v16, v49);
    swift_errorRetain();
    a3(a1, 0, 1);
  }

  else
  {
    v46 = a5;
    v47 = a4;
    static PeopleLogger.daemon.getter();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v33 = 136315138;
      (*(v10 + 104))(v12, enum case for StatusType.location(_:), v9);
      sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = a3;
      v37 = v36;
      (*(v10 + 8))(v12, v9);
      v38 = sub_10002580C(v34, v37, &v50);
      a3 = v35;

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "'%s' event consume complete", v33, 0xCu);
      sub_100003938(v45);
    }

    (*(v48 + 8))(v18, v49);
    v39 = ContactPerson.contact.getter();
    if (v39)
    {
      v40 = v39;
      v41 = [v39 identifier];

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0xE000000000000000;
    }

    a3(v42, v44, 0);
  }
}

uint64_t sub_10003E760(uint64_t *a1, uint64_t a2, int a3, void *a4)
{
  v39 = a4;
  v42 = a3;
  v7 = type metadata accessor for StatusType();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (v13)
  {
    v32 = a2;
    v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = v4;
    v38 = v8;
    v14 = 0;
    v15 = v12 + 40;
    v34 = v13 - 1;
    v16 = _swiftEmptyArrayStorage;
    v35 = v12 + 40;
    do
    {
      v17 = (v15 + 16 * v14);
      v18 = v14;
      while (1)
      {
        if (v18 >= *(v12 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v17 - 1);
        v20 = *v17;
        v14 = v18 + 1;

        if (String.trimToNil()().value._object)
        {
          break;
        }

        v17 += 2;
        ++v18;
        if (v13 == v14)
        {
          v25 = v16[2] != 0;
          goto LABEL_14;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v40 = v16;
      v33 = v7;
      if ((result & 1) == 0)
      {
        result = sub_10000D6D4(0, v16[2] + 1, 1);
        v16 = v40;
      }

      v22 = v16[2];
      v21 = v16[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        result = sub_10000D6D4((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
        v16 = v40;
      }

      v16[2] = v23;
      v24 = &v16[2 * v22];
      v24[4] = v19;
      v24[5] = v20;
      v7 = v33;
      v15 = v35;
    }

    while (v34 != v18);
    v25 = 1;
LABEL_14:
    v26 = v38;
    type metadata accessor for PeopleAnalytics();
    v27 = v36;
    (*(v26 + 104))(v36, enum case for StatusType.location(_:), v7);
    static PeopleAnalytics.eventReceived(foundContacts:statusType:)();
    (*(v26 + 8))(v27, v7);
    if (v25 && (v42 & 1) != 0)
    {
      sub_10003EAE4(v39, v16);
    }
  }

  else
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    (*(v8 + 104))(v11, enum case for StatusType.location(_:), v7);
    sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;

    v40 = v28;
    v41 = v30;
    (*(v8 + 8))(v11, v7);
    v31._object = 0x80000001000510D0;
    v31._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v31);
    static PeopleErrors.createError(_:code:)();

    return swift_willThrow();
  }
}

uint64_t sub_10003EAE4(void *a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = &_swiftEmptySetSingleton;
  sub_100005E78((v2 + 168), *(v2 + 192));
  type metadata accessor for WidgetConfigurationReader();
  sub_10000D0E8();
  sub_1000077E8(v2 + 168, v9);
  v6 = swift_allocObject();
  sub_10000784C(v9, (v6 + 2));
  v6[7] = v5;
  v6[8] = a2;
  v6[9] = a1;
  v6[10] = v2;

  v7 = a1;

  dispatch thunk of Promise.then<A>(_:)();
}

uint64_t sub_10003EC2C()
{
  sub_100007E10((v0 + 2));

  sub_100003938(v0 + 6);
  sub_100003938(v0 + 11);
  sub_100003938(v0 + 16);
  sub_100003938(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t sub_10003ECB8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10001DB84(a1, a2, Strong);
    swift_unknownObjectRelease();
  }

  static PeopleLogger.location.getter();
  v14 = a3;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v9;
    v33 = v18;
    *v17 = 136380931;
    v19 = [v14 idsHandle];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v8;
    v22 = v21;

    v23 = sub_10002580C(v20, v22, &v33);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v24 = BMFindMyLocationChangeEvent.reason.getter();
    v26 = sub_10002580C(v24, v25, &v33);

    *(v17 + 14) = v26;
    v8 = v32;
    _os_log_impl(&_mh_execute_header, v15, v16, "Event triggered widget refresh: %{private}s, %s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v12, v31);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  sub_100014EE4(0, 0, v8, &unk_10004ED80, v28);
}

uint64_t sub_10003EFF0()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10003F0AC, 0, 0);
}

uint64_t sub_10003F0AC()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.location(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_10003F164(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v11 = type metadata accessor for Logger();
  v37 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v39 = a2;
  v40 = a3 + 16;
  sub_10001558C(sub_100042820, v38, v14);
  v15 = v6;
  swift_beginAccess();
  v16 = *(a3 + 16);

  v17 = sub_100041274(a4, v16);
  v18 = v17[2];
  v42 = v11;
  if (v18)
  {
    v19 = sub_100013DD0(v18, 0);
    v20 = sub_100014AC4(&v41, v19 + 4, v18, v17);
    sub_100014AB0(v41);
    if (v20 == v18)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_5:
  v34 = v15;
  static PeopleLogger.location.getter();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v41 = v24;
    *v23 = 136315138;
    v25 = Array.description.getter();
    v27 = a4;
    v28 = sub_10002580C(v25, v26, &v41);

    *(v23 + 4) = v28;
    a4 = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "location-sharing contact ids %s", v23, 0xCu);
    sub_100003938(v24);
  }

  (*(v37 + 8))(v13, v42);
  sub_100005E30(&qword_100062750, &qword_10004D990);
  v29 = swift_allocObject();
  v29[2] = v19;
  v29[3] = a4;
  v30 = v35;
  v31 = v36;
  v29[4] = v35;
  v29[5] = v31;

  v32 = v30;

  return Promise.__allocating_init(_:)();
}

uint64_t sub_10003F47C(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C3F4(*a1);
  v5 = sub_10001E3F0(v4);

  sub_10003DE70(v5, a3);
}

uint64_t sub_10003F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = type metadata accessor for Logger();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10003F5B4, 0, 0);
}

uint64_t sub_10003F5B4(uint64_t a1)
{
  v30 = v1;
  if (*(*(v1 + 16) + 16))
  {
    static PeopleLogger.location.getter();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 72);
    v6 = *(v1 + 48);
    v7 = *(v1 + 56);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v8 = 136315138;
      v10 = Array.description.getter();
      v12 = sub_10002580C(v10, v11, &v29);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v2, v3, "location-sharing lookup task with %s", v8, 0xCu);
      sub_100003938(v9);
    }

    (*(v7 + 8))(v5, v6);
    v13 = *(v1 + 24);
    type metadata accessor for OSTransaction();
    v14 = swift_task_alloc();
    *(v1 + 80) = v14;
    *(v14 + 16) = *(v1 + 32);
    *(v14 + 32) = v13;
    v15 = swift_task_alloc();
    *(v1 + 88) = v15;
    *v15 = v1;
    v15[1] = sub_10003F934;

    return static OSTransaction.named(_:block:)("com.apple.people.LocationStatusEventListener", 44, 2, &unk_10004ED58, v14);
  }

  else
  {
    static PeopleLogger.location.getter();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v1 + 56);
    v19 = *(v1 + 64);
    v21 = *(v1 + 48);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136315138;
      v24 = Array.description.getter();
      v26 = sub_10002580C(v24, v25, &v29);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "location-sharing: %s not in any widget", v22, 0xCu);
      sub_100003938(v23);
    }

    (*(v20 + 8))(v19, v21);

    v27 = *(v1 + 8);

    return v27();
  }
}

uint64_t sub_10003F934()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_10003FA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v3[5] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[6] = v6;
  v3[7] = *(v6 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[10] = v7;
  *v7 = v3;
  v7[1] = sub_10003FBCC;

  return static LocateFriend.isUpdateSignificant(event:with:)(a1, a2 + 128);
}

uint64_t sub_10003FBCC(char a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_10003FCCC, 0, 0);
}

uint64_t sub_10003FCCC(uint64_t a1)
{
  v44 = v1;
  v2 = *(v1 + 16);
  if (*(v1 + 88) == 1)
  {
    static PeopleLogger.location.getter();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v1 + 72);
    v8 = *(v1 + 48);
    v9 = *(v1 + 56);
    if (v6)
    {
      v41 = *(v1 + 72);
      v10 = *(v1 + 16);
      v11 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = [v10 idsHandle];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v8;
      v15 = v14;

      v16 = sub_10002580C(v13, v15, &v43);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v17 = BMFindMyLocationChangeEvent.reason.getter();
      v19 = sub_10002580C(v17, v18, &v43);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v4, v5, "Event significant: %s, %s", v11, 0x16u);
      swift_arrayDestroy();

      (*(v9 + 8))(v41, v40);
    }

    else
    {

      (*(v9 + 8))(v7, v8);
    }

    sub_10003ECB8(*(v1 + 24), *(v1 + 32), *(v1 + 16));
  }

  else
  {
    static PeopleLogger.location.getter();
    v20 = v2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v1 + 56);
    v25 = *(v1 + 64);
    v26 = *(v1 + 48);
    if (v23)
    {
      v27 = *(v1 + 16);
      v42 = *(v1 + 64);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v29;
      *v28 = 136315138;
      v30 = [v27 idsHandle];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_10002580C(v31, v33, &v43);

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "Update event not significant for %s", v28, 0xCu);
      sub_100003938(v29);

      (*(v24 + 8))(v42, v26);
    }

    else
    {

      (*(v24 + 8))(v25, v26);
    }

    v35 = *(v1 + 40);
    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    sub_100014EE4(0, 0, v35, &unk_10004ED70, v37);
  }

  v38 = *(v1 + 8);

  return v38();
}

uint64_t sub_1000400C0()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10004017C, 0, 0);
}

uint64_t sub_10004017C()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.location(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100040234, v2, v1);
}

uint64_t sub_100040234()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  static MetricTemplate.updateStatusCount(for:signaled:)();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000402CC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for StatusType();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100040390, 0, 0);
}

void sub_100040390()
{
  v1 = v0[12];
  v2 = v0[10];
  v14 = v0[9];
  v3 = v0[7];
  v16 = v0[8];
  v4 = enum case for StatusType.location(_:);
  v5 = *(v0[11] + 104);
  v5(v1, enum case for StatusType.location(_:), v2);
  v6 = [objc_opt_self() findMyLocationChangeStream];
  v7 = sub_100005E30(&qword_100063BC8, &qword_10004ED30);
  swift_allocObject();
  v8 = BiomeStreamReader.init(statusType:readerStream:)();
  v0[13] = v8;
  v5(v1, v4, v2);
  v9 = swift_allocObject();
  v0[14] = v9;
  *(v9 + 16) = v3;
  v10 = swift_allocObject();
  v0[15] = v10;
  *(v10 + 16) = v14;
  *(v10 + 24) = v16;
  v0[5] = v7;
  v11 = sub_100040B78();
  v0[2] = v8;
  v0[6] = v11;
  v13 = &async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:) + async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:);

  v12 = swift_task_alloc();
  v0[16] = v12;
  sub_100040BDC();
  *v12 = v0;
  v12[1] = sub_1000405F4;

  __asm { BR              X8 }
}

uint64_t sub_1000405F4()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);

  (*(v3 + 8))(v2, v4);
  sub_100003938((v1 + 16));

  return _swift_task_switch(sub_100040794, 0, 0);
}

uint64_t sub_100040794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100040830(void *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = [a1 idsHandle];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v11[0] = v4;
    v11[1] = v6;
    __chkstk_darwin(v7);
    v10[2] = v11;
    v8 = sub_10001B0D0(sub_10002A294, v10, a2);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_100040900()
{
  _StringGuts.grow(_:)(46);
  v0._object = 0x80000001000510A0;
  v0._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 10506;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  return 0;
}

uint64_t sub_1000409A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007CBC;

  return sub_1000402CC(a1, a2);
}

uint64_t sub_100040A4C(uint64_t a1, uint64_t a2)
{
  result = sub_10004272C(&qword_100063BC0, a2, type metadata accessor for LocationStatusEventListener, &unk_10004ECE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100040AA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040AE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040B24(void *a1)
{
  v3 = *(v1 + 16);
  ReindexCoordinator.indexer.getter();
  v4 = sub_1000415F4(a1, 0, v3);

  return v4;
}

unint64_t sub_100040B78()
{
  result = qword_100063BD0;
  if (!qword_100063BD0)
  {
    sub_100010594(&qword_100063BC8, &qword_10004ED30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063BD0);
  }

  return result;
}

unint64_t sub_100040BDC()
{
  result = qword_100063BD8;
  if (!qword_100063BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063BD8);
  }

  return result;
}

Swift::Int sub_100040C28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100005E30(&qword_100062DA8, &qword_10004EAF0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100040E1C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100005E30(&qword_100062D70, &qword_10004DFB0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100041040(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100005E30(&qword_100062D88, &unk_10004ED90);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    Hasher.init(_seed:)();
    v19 = v17;
    NSObject.hash(into:)();
    Hasher._combine(_:)(v18);
    result = Hasher._finalize()();
    v20 = -1 << v9[32];
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v9 + 6) + 16 * v23;
    *v28 = v19;
    *(v28 + 8) = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_100041274(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_100041414(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_100042B84(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

unint64_t *sub_100041414(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v13 = Hasher._finalize()();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_100040E1C(v25, a2, v24, a4);
}

uint64_t sub_1000415F4(void *a1, int a2, void *a3)
{
  v146 = a3;
  v5 = type metadata accessor for ContactPerson();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v143 = (&v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v11 = &v126 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v126 - v13;
  v129 = v15;
  __chkstk_darwin(v12);
  v128 = &v126 - v16;
  v17 = type metadata accessor for StatusType();
  v136 = *(v17 - 8);
  v137 = v17;
  __chkstk_darwin(v17);
  v135 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v139 = *(v19 - 1);
  v20 = __chkstk_darwin(v19);
  v132 = (&v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v134 = &v126 - v23;
  v24 = __chkstk_darwin(v22);
  v147 = &v126 - v25;
  __chkstk_darwin(v24);
  v27 = &v126 - v26;
  static PeopleLogger.location.getter();
  v28 = a1;
  v29 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.default.getter();

  LODWORD(v144) = a1;
  v30 = os_log_type_enabled(v29, a1);
  v145 = v19;
  v133 = a2;
  v131 = v11;
  v130 = v14;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v148 = v142;
    *v31 = 136380931;
    v32 = [v28 idsHandle];
    v33 = v28;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = v34;
    v28 = v33;
    v38 = sub_10002580C(v37, v36, &v148);

    *(v31 + 4) = v38;
    *(v31 + 12) = 2080;
    v39 = BMFindMyLocationChangeEvent.reason.getter();
    v41 = sub_10002580C(v39, v40, &v148);

    *(v31 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v29, v144, "Got location change event for handle %{private}s: %s", v31, 0x16u);
    swift_arrayDestroy();

    v42 = v27;
    p_weak_ivar_lyt = (&ScreenTimeStatusSource + 56);
    v138 = v139[1];
    (v138)(v42, v19);
  }

  else
  {

    v138 = v139[1];
    (v138)(v27, v19);
    p_weak_ivar_lyt = &ScreenTimeStatusSource.weak_ivar_lyt;
  }

  v44 = objc_opt_self();
  sub_100005E30(&qword_100062930, &qword_10004DB40);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_10004D790;
  v46 = [v28 p_weak_ivar_lyt[402]];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  *(v45 + 32) = v47;
  *(v45 + 40) = v49;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v51 = [v44 predicateForContactsMatchingHandleStrings:isa];

  sub_100005E78(v146 + 6, v146[9]);
  v52 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v144 = v28;
  v127 = v51;
  v147 = v5;
  v142 = v6;
  if (v52 >> 62)
  {
    v125 = v52;
    v53 = _CocoaArrayWrapper.endIndex.getter();
    v52 = v125;
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v145;
  v55 = v139;
  if (v53)
  {
    v56 = v52;
    v148 = _swiftEmptyArrayStorage;
    sub_10000D754(0, v53 & ~(v53 >> 63), 0);
    if (v53 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v57 = 0;
    v51 = v148;
    v58 = v56;
    v140 = v6 + 32;
    v141 = v56 & 0xC000000000000001;
    v59 = v143;
    do
    {
      if (v141)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v60 = *(v58 + 8 * v57 + 32);
      }

      v61 = v60;
      v62 = [v144 idsHandle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      ContactPerson.init(contact:idsHandle:)();
      v148 = v51;
      v63 = v51[2];
      v64 = v51[3];
      if (v63 >= v64 >> 1)
      {
        sub_10000D754((v64 > 1), v63 + 1, 1);
        v51 = v148;
      }

      ++v57;
      v51[2] = (v63 + 1);
      v6 = v142;
      v5 = v147;
      (*(v142 + 32))(v51 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v63, v59, v147);
      v54 = v145;
    }

    while (v53 != v57);
  }

  else
  {

    v51 = _swiftEmptyArrayStorage;
  }

  v65 = v134;
  if (!v51[2])
  {
    static PeopleLogger.daemon.getter();
    v81 = v144;

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v132 = v51;
      v85 = v84;
      v145 = swift_slowAlloc();
      v148 = v145;
      *v85 = 136315395;
      v86 = v136;
      v87 = v137;
      v88 = *(v136 + 104);
      v143 = v82;
      v89 = v135;
      v88(v135, enum case for StatusType.location(_:), v137);
      sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v142) = v83;
      v91 = v81;
      v92 = v90;
      v94 = v93;
      (*(v86 + 8))(v89, v87);
      v95 = sub_10002580C(v92, v94, &v148);

      *(v85 + 4) = v95;
      *(v85 + 12) = 2081;
      v96 = [v91 idsHandle];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v100 = sub_10002580C(v97, v99, &v148);

      *(v85 + 14) = v100;
      v81 = v91;
      v101 = v143;
      _os_log_impl(&_mh_execute_header, v143, v142, "No contact for '%s' %{private}s; placeholder created", v85, 0x16u);
      swift_arrayDestroy();

      v51 = v132;

      (v138)(v134, v54);
    }

    else
    {

      (v138)(v65, v54);
    }

    v56 = v128;
    v116 = [v81 idsHandle];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    ContactPerson.init(contact:idsHandle:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v127;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_29:
      v119 = v51[2];
      v118 = v51[3];
      if (v119 >= v118 >> 1)
      {
        v51 = sub_1000224B8((v118 > 1), v119 + 1, 1, v51);
      }

      v51[2] = (v119 + 1);
      (*(v6 + 32))(v51 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v119, v56, v5);
      v102 = v51[2];
      if (v102)
      {
        goto LABEL_24;
      }

LABEL_32:

      v115 = v146;
      goto LABEL_33;
    }

LABEL_36:
    v51 = sub_1000224B8(0, v51[2] + 1, 1, v51);
    goto LABEL_29;
  }

  v66 = v132;
  static PeopleLogger.daemon.getter();

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v148 = v145;
    *v69 = 134218242;
    *(v69 + 4) = v51[2];

    *(v69 + 12) = 2080;
    v70 = v135;
    v71 = v136;
    v72 = v137;
    (*(v136 + 104))(v135, enum case for StatusType.location(_:), v137);
    sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    LODWORD(v143) = v68;
    v74 = v51;
    v75 = v73;
    v77 = v76;
    (*(v71 + 8))(v70, v72);
    v78 = v75;
    v51 = v74;
    v79 = sub_10002580C(v78, v77, &v148);
    v6 = v142;

    *(v69 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v67, v143, "Found %ld valid contacts for '%s'", v69, 0x16u);
    sub_100003938(v145);

    v80 = v132;
  }

  else
  {

    v80 = v66;
  }

  (v138)(v80, v54);
  v55 = v127;
  v102 = v51[2];
  if (!v102)
  {
    goto LABEL_32;
  }

LABEL_24:
  v148 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v104 = *(v6 + 16);
  v103 = v6 + 16;
  v145 = v104;
  v105 = *(v103 + 64);
  v132 = v51;
  v106 = v51 + ((v105 + 32) & ~v105);
  v142 = *(v103 + 56);
  v143 = v105;
  v107 = (v105 + 24) & ~v105;
  v140 = (v129 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
  v141 = v107;
  v138 = (v103 - 8);
  v139 = (v103 + 16);
  v108 = v131;
  v109 = v130;
  v110 = v144;
  do
  {
    v111 = v145;
    (v145)(v109, v106, v5);
    v111(v108, v109, v5);
    v112 = v140;
    v113 = swift_allocObject();
    *(v113 + 16) = v110;
    (*v139)(v113 + v141, v108, v5);
    *(v113 + v112) = v146;
    sub_100005E30(&qword_100063BE0, &qword_10004ED38);
    swift_allocObject();
    v114 = v110;

    Promise.init(startBlock:)();
    (*v138)(v109, v5);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v5 = v147;
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v106 += v142;
    v102 = (v102 - 1);
  }

  while (v102);

  v115 = v146;
  v55 = v127;
LABEL_33:
  sub_100005E30(&qword_100063BE0, &qword_10004ED38);
  static Promise.all(_:)();

  v120 = swift_allocObject();
  *(v120 + 16) = v115;
  *(v120 + 24) = v133 & 1;
  v121 = v144;
  *(v120 + 32) = v144;
  v122 = v121;

  v123 = dispatch thunk of Promise.then<A>(_:)();

  return v123;
}

uint64_t sub_10004272C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000427A4()
{
  sub_100003938((v0 + 16));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10004283C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004288C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007CBC;

  return sub_10003F4E4(a1, v4, v5, v7, v6);
}

uint64_t sub_10004294C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001ECE4;

  return sub_10003FA7C(v2, v3, v4);
}

uint64_t sub_1000429F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042A2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001ECE4;

  return sub_1000400C0();
}

uint64_t sub_100042AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007CBC;

  return sub_10003EFF0();
}

unint64_t *sub_100042B84@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X8>)
{
  result = sub_100041414(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100042BB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042BF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_100042C30()
{
  v1 = type metadata accessor for ContactPerson();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100042CFC(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactPerson() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));

  return sub_10003E1C0(a1, v4, v5, v6, v7);
}

uint64_t sub_100042D74(void *a1, int a2, void *a3)
{
  v146 = a3;
  v5 = type metadata accessor for ContactPerson();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v143 = (&v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v11 = &v126 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v126 - v13;
  v129 = v15;
  __chkstk_darwin(v12);
  v128 = &v126 - v16;
  v17 = type metadata accessor for StatusType();
  v136 = *(v17 - 8);
  v137 = v17;
  __chkstk_darwin(v17);
  v135 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v139 = *(v19 - 1);
  v20 = __chkstk_darwin(v19);
  v132 = (&v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v134 = &v126 - v23;
  v24 = __chkstk_darwin(v22);
  v147 = &v126 - v25;
  __chkstk_darwin(v24);
  v27 = &v126 - v26;
  static PeopleLogger.location.getter();
  v28 = a1;
  v29 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.default.getter();

  LODWORD(v144) = a1;
  v30 = os_log_type_enabled(v29, a1);
  v145 = v19;
  v133 = a2;
  v131 = v11;
  v130 = v14;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v148 = v142;
    *v31 = 136380931;
    v32 = [v28 idsHandle];
    v33 = v28;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = v34;
    v28 = v33;
    v38 = sub_10002580C(v37, v36, &v148);

    *(v31 + 4) = v38;
    *(v31 + 12) = 2080;
    v39 = BMFindMyLocationChangeEvent.reason.getter();
    v41 = sub_10002580C(v39, v40, &v148);

    *(v31 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v29, v144, "Got location change event for handle %{private}s: %s", v31, 0x16u);
    swift_arrayDestroy();

    v42 = v27;
    p_weak_ivar_lyt = (&ScreenTimeStatusSource + 56);
    v138 = v139[1];
    (v138)(v42, v19);
  }

  else
  {

    v138 = v139[1];
    (v138)(v27, v19);
    p_weak_ivar_lyt = &ScreenTimeStatusSource.weak_ivar_lyt;
  }

  v44 = objc_opt_self();
  sub_100005E30(&qword_100062930, &qword_10004DB40);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_10004D790;
  v46 = [v28 p_weak_ivar_lyt[402]];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  *(v45 + 32) = v47;
  *(v45 + 40) = v49;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v51 = [v44 predicateForContactsMatchingHandleStrings:isa];

  sub_100005E78(v146 + 6, v146[9]);
  v52 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v144 = v28;
  v127 = v51;
  v147 = v5;
  v142 = v6;
  if (v52 >> 62)
  {
    v125 = v52;
    v53 = _CocoaArrayWrapper.endIndex.getter();
    v52 = v125;
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v145;
  v55 = v139;
  if (v53)
  {
    v56 = v52;
    v148 = _swiftEmptyArrayStorage;
    sub_10000D754(0, v53 & ~(v53 >> 63), 0);
    if (v53 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v57 = 0;
    v51 = v148;
    v58 = v56;
    v140 = v6 + 32;
    v141 = v56 & 0xC000000000000001;
    v59 = v143;
    do
    {
      if (v141)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v60 = *(v58 + 8 * v57 + 32);
      }

      v61 = v60;
      v62 = [v144 idsHandle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      ContactPerson.init(contact:idsHandle:)();
      v148 = v51;
      v63 = v51[2];
      v64 = v51[3];
      if (v63 >= v64 >> 1)
      {
        sub_10000D754((v64 > 1), v63 + 1, 1);
        v51 = v148;
      }

      ++v57;
      v51[2] = (v63 + 1);
      v6 = v142;
      v5 = v147;
      (*(v142 + 32))(v51 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v63, v59, v147);
      v54 = v145;
    }

    while (v53 != v57);
  }

  else
  {

    v51 = _swiftEmptyArrayStorage;
  }

  v65 = v134;
  if (!v51[2])
  {
    static PeopleLogger.daemon.getter();
    v81 = v144;

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v132 = v51;
      v85 = v84;
      v145 = swift_slowAlloc();
      v148 = v145;
      *v85 = 136315395;
      v86 = v136;
      v87 = v137;
      v88 = *(v136 + 104);
      v143 = v82;
      v89 = v135;
      v88(v135, enum case for StatusType.location(_:), v137);
      sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v142) = v83;
      v91 = v81;
      v92 = v90;
      v94 = v93;
      (*(v86 + 8))(v89, v87);
      v95 = sub_10002580C(v92, v94, &v148);

      *(v85 + 4) = v95;
      *(v85 + 12) = 2081;
      v96 = [v91 idsHandle];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v100 = sub_10002580C(v97, v99, &v148);

      *(v85 + 14) = v100;
      v81 = v91;
      v101 = v143;
      _os_log_impl(&_mh_execute_header, v143, v142, "No contact for '%s' %{private}s; placeholder created", v85, 0x16u);
      swift_arrayDestroy();

      v51 = v132;

      (v138)(v134, v54);
    }

    else
    {

      (v138)(v65, v54);
    }

    v56 = v128;
    v116 = [v81 idsHandle];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    ContactPerson.init(contact:idsHandle:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v127;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_29:
      v119 = v51[2];
      v118 = v51[3];
      if (v119 >= v118 >> 1)
      {
        v51 = sub_1000224B8((v118 > 1), v119 + 1, 1, v51);
      }

      v51[2] = (v119 + 1);
      (*(v6 + 32))(v51 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v119, v56, v5);
      v102 = v51[2];
      if (v102)
      {
        goto LABEL_24;
      }

LABEL_32:

      v115 = v146;
      goto LABEL_33;
    }

LABEL_36:
    v51 = sub_1000224B8(0, v51[2] + 1, 1, v51);
    goto LABEL_29;
  }

  v66 = v132;
  static PeopleLogger.daemon.getter();

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v148 = v145;
    *v69 = 134218242;
    *(v69 + 4) = v51[2];

    *(v69 + 12) = 2080;
    v70 = v135;
    v71 = v136;
    v72 = v137;
    (*(v136 + 104))(v135, enum case for StatusType.location(_:), v137);
    sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType, &protocol conformance descriptor for StatusType);
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    LODWORD(v143) = v68;
    v74 = v51;
    v75 = v73;
    v77 = v76;
    (*(v71 + 8))(v70, v72);
    v78 = v75;
    v51 = v74;
    v79 = sub_10002580C(v78, v77, &v148);
    v6 = v142;

    *(v69 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v67, v143, "Found %ld valid contacts for '%s'", v69, 0x16u);
    sub_100003938(v145);

    v80 = v132;
  }

  else
  {

    v80 = v66;
  }

  (v138)(v80, v54);
  v55 = v127;
  v102 = v51[2];
  if (!v102)
  {
    goto LABEL_32;
  }

LABEL_24:
  v148 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v104 = *(v6 + 16);
  v103 = v6 + 16;
  v145 = v104;
  v105 = *(v103 + 64);
  v132 = v51;
  v106 = v51 + ((v105 + 32) & ~v105);
  v142 = *(v103 + 56);
  v143 = v105;
  v107 = (v105 + 24) & ~v105;
  v140 = (v129 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
  v141 = v107;
  v138 = (v103 - 8);
  v139 = (v103 + 16);
  v108 = v131;
  v109 = v130;
  v110 = v144;
  do
  {
    v111 = v145;
    (v145)(v109, v106, v5);
    v111(v108, v109, v5);
    v112 = v140;
    v113 = swift_allocObject();
    *(v113 + 16) = v110;
    (*v139)(v113 + v141, v108, v5);
    *(v113 + v112) = v146;
    sub_100005E30(&qword_100063BE0, &qword_10004ED38);
    swift_allocObject();
    v114 = v110;

    Promise.init(startBlock:)();
    (*v138)(v109, v5);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v5 = v147;
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v106 += v142;
    v102 = (v102 - 1);
  }

  while (v102);

  v115 = v146;
  v55 = v127;
LABEL_33:
  sub_100005E30(&qword_100063BE0, &qword_10004ED38);
  static Promise.all(_:)();

  v120 = swift_allocObject();
  *(v120 + 16) = v115;
  *(v120 + 24) = v133 & 1;
  v121 = v144;
  *(v120 + 32) = v144;
  v122 = v121;

  v123 = dispatch thunk of Promise.then<A>(_:)();

  return v123;
}

uint64_t sub_100043EAC()
{
  v1 = type metadata accessor for ContactPerson();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100043F84(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ContactPerson() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_10003E00C(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_100044034()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000440A4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100010734(0, &qword_100063DF8, CHHandle_ptr);
    sub_100046F98();
    result = Set.Iterator.init(_cocoa:)();
    v2 = v29;
    v27 = v28;
    v3 = v30;
    v4 = v31;
    v5 = v32;
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
    v27 = a1;

    v4 = 0;
  }

  v25 = v3;
  v26 = _swiftEmptyArrayStorage;
LABEL_8:
  v9 = v4;
  while (v27 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100010734(0, &qword_100063DF8, CHHandle_ptr), swift_dynamicCast(), v17 = v33, v4 = v9, v16 = v5, !v33))
    {
LABEL_27:
      sub_100014AB0(v27);
      return v26;
    }

LABEL_19:
    v18 = [v17 normalizedValue];
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = String.trimToNil()();
      countAndFlagsBits = v20.value._countAndFlagsBits;
      object = v20.value._object;

      if (v20.value._object)
      {

LABEL_22:
        v21 = v26;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100022130(0, *(v26 + 2) + 1, 1, v26);
          v21 = result;
        }

        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_100022130((v22 > 1), v23 + 1, 1, v21);
          v21 = result;
        }

        *(v21 + 16) = v23 + 1;
        v26 = v21;
        v24 = v21 + 16 * v23;
        *(v24 + 32) = countAndFlagsBits;
        *(v24 + 40) = object;
        v5 = v16;
        goto LABEL_8;
      }
    }

    v10 = [v17 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = String.trimToNil()();
    countAndFlagsBits = v11.value._countAndFlagsBits;
    object = v11.value._object;

    v9 = v4;
    v5 = v16;
    if (v11.value._object)
    {
      goto LABEL_22;
    }
  }

  v14 = v9;
  v15 = v5;
  v4 = v9;
  if (v5)
  {
LABEL_15:
    v16 = (v15 - 1) & v15;
    v17 = *(*(v27 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v17)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v4 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v15 = *(v2 + 8 * v4);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

id sub_1000443B8()
{
  result = [objc_allocWithZone(CHManager) init];
  qword_100065590 = result;
  return result;
}

uint64_t sub_100044410()
{
  if (*(v0 + 32))
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v1 = 0xE000000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
    v2 = 4271950;
  }

  _StringGuts.grow(_:)(63);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001000511B0;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._object = 0x80000001000511E0;
  v4._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v2;
  v5._object = v1;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 10506;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_100044564(void *a1)
{
  v3 = type metadata accessor for StatusType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  __chkstk_darwin(v7 - 8);
  v9 = v26 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = sub_100047118(a1, v15, v16);
  if (*(v17 + 2))
  {
    v26[0] = *(v17 + 2);
    v18 = v17;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_10001E138(v1, v18, Strong);

      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      sub_100014EE4(0, 0, v9, &unk_10004EF28, v21);
      swift_unknownObjectRelease();
    }

    else
    {

      static PeopleLogger.common.getter();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Where is our status delegate?", v24, 2u);
      }

      (*(v11 + 8))(v14, v10);
    }
  }

  else
  {
  }

  type metadata accessor for PeopleAnalytics();
  (*(v4 + 104))(v6, enum case for StatusType.missedCall(_:), v3);
  static PeopleAnalytics.eventReceived(foundContacts:statusType:)();
  (*(v4 + 8))(v6, v3);
  sub_100005E30(&qword_100062750, &qword_10004D990);
  v26[5] = 0;
  v27 = 0;
  return Promise.__allocating_init(with:)();
}

uint64_t sub_100044A4C()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100044B08, 0, 0);
}

uint64_t sub_100044B08()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.missedCall(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_100044BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Fetching missed call status", v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  sub_100005E78((v4 + 128), *(v4 + 152));
  dispatch thunk of LaunchRecordReaderProtocol.reload()();
  sub_100005E78((v4 + 128), *(v4 + 152));
  v13 = dispatch thunk of LaunchRecordReaderProtocol.dates(forContactIdentifier:)();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v4;
  v14[4] = v13;
  sub_100005E30(&qword_100062700, &unk_10004D940);
  swift_allocObject();

  return Promise.init(startBlock:)();
}

void sub_100044DBC(void (*a1)(char **), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v80 = a2;
  v81 = a1;
  v7 = type metadata accessor for StatusType();
  v92 = *(v7 - 8);
  v93 = v7;
  __chkstk_darwin(v7);
  v91 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100005E30(&qword_100062738, &qword_10004D970);
  __chkstk_darwin(v9 - 8);
  v11 = &v75 - v10;
  v12 = sub_100005E30(&qword_100063E28, &qword_10004EF18);
  __chkstk_darwin(v12 - 8);
  v88 = &v75 - v13;
  v14 = type metadata accessor for MissedCallPersonStatus();
  *&v85 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Logger();
  v78 = *(v79 - 8);
  v17 = __chkstk_darwin(v79);
  v94 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v75 - v19;
  v21 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v23 = [v21 predicateForContactsWithIdentifiers:isa];

  sub_1000077E8(a4 + 40, &v95);
  sub_100005E78(&v95, v97);
  v77 = v23;
  v24 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v25 = v85;
  v93 = v16;
  v89 = v14;
  v76 = v20;
  sub_100003938(&v95);
  v26 = sub_100007728(_swiftEmptyArrayStorage);
  v27 = v24;
  if (v24 >> 62)
  {
    goto LABEL_29;
  }

  v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v88;
  v29 = v89;
  if (!v28)
  {
LABEL_30:
    v63 = v26;

    v64 = v76;
    static PeopleLogger.daemon.getter();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v95 = v68;
      *v67 = 136315138;

      sub_100005E30(&qword_100063A38, &qword_10004EA60);
      v69 = Dictionary.description.getter();
      v71 = v70;

      v72 = sub_10002580C(v69, v71, &v95);

      *(v67 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v65, v66, "Returning status for missedCall %s", v67, 0xCu);
      sub_100003938(v68);
    }

    (*(v78 + 8))(v64, v79);
    v73 = v81;
    v74 = v77;
    v95 = v63;
    v96 = 0;

    v73(&v95);
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_3:
  if (v28 >= 1)
  {
    v31 = 0;
    v91 = (v25 + 48);
    v92 = v27 & 0xC000000000000001;
    v86 = (v25 + 16);
    v87 = (v25 + 32);
    v82 = (v25 + 8);
    v85 = xmmword_10004D790;
    v84 = v11;
    v83 = v27;
    v90 = v28;
    while (1)
    {
      v94 = v26;
      if (v92)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v27 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = [v32 identifier];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if (a5[2])
      {
        v38 = sub_100005EBC(v35, v37);
        v40 = v39;

        if (v40)
        {
          v41 = a5[7];
          v42 = type metadata accessor for Date();
          v43 = *(v42 - 8);
          (*(v43 + 16))(v11, v41 + *(v43 + 72) * v38, v42);
          (*(v43 + 56))(v11, 0, 1, v42);
          v29 = v89;
          goto LABEL_15;
        }
      }

      else
      {
      }

      v44 = type metadata accessor for Date();
      (*(*(v44 - 8) + 56))(v11, 1, 1, v44);
LABEL_15:
      sub_1000459B0(v33, v11, v30);
      sub_100007DB0(v11, &qword_100062738, &qword_10004D970);
      if ((*v91)(v30, 1, v29) == 1)
      {

        sub_100007DB0(v30, &qword_100063E28, &qword_10004EF18);
        v26 = v94;
      }

      else
      {
        v27 = a5;
        v45 = v93;
        (*v87)(v93, v30, v29);
        v46 = [v33 identifier];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v29;
        v49 = v48;

        sub_100005E30(&qword_100063260, &qword_10004E2B0);
        a5 = swift_allocObject();
        *(a5 + 1) = v85;
        a5[7] = v47;
        a5[8] = sub_100046B08(&qword_100063E30, 255, &type metadata accessor for MissedCallPersonStatus, &protocol conformance descriptor for MissedCallPersonStatus);
        v50 = sub_100007784(a5 + 4);
        (*v86)(v50, v45, v47);
        v26 = v94;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v26;
        v11 = sub_100005EBC(v25, v49);
        v53 = *(v26 + 2);
        v54 = (v52 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          v28 = _CocoaArrayWrapper.endIndex.getter();
          v30 = v88;
          v29 = v89;
          if (!v28)
          {
            goto LABEL_30;
          }

          goto LABEL_3;
        }

        v56 = v52;
        if (*(v26 + 3) >= v55)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100006EE0();
          }
        }

        else
        {
          sub_100006460(v55, isUniquelyReferenced_nonNull_native);
          v57 = sub_100005EBC(v25, v49);
          if ((v56 & 1) != (v58 & 1))
          {
            goto LABEL_34;
          }

          v11 = v57;
        }

        v30 = v88;
        v26 = v95;
        if (v56)
        {
          *(*(v95 + 7) + 8 * v11) = a5;
        }

        else
        {
          *&v95[8 * (v11 >> 6) + 64] |= 1 << v11;
          v59 = (*(v26 + 6) + 16 * v11);
          *v59 = v25;
          v59[1] = v49;
          *(*(v26 + 7) + 8 * v11) = a5;
          v60 = *(v26 + 2);
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            goto LABEL_28;
          }

          *(v26 + 2) = v62;
        }

        v29 = v89;
        (*v82)(v93, v89);
        a5 = v27;
        v11 = v84;
        v27 = v83;
      }

      if (v90 == ++v31)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
LABEL_34:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000459B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a2;
  v5 = sub_100005E30(&qword_100063DF0, &unk_10004EF00);
  __chkstk_darwin(v5 - 8);
  v122 = v108 - v6;
  v7 = type metadata accessor for CallServiceProvider();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v125 = v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v127 = *(v10 - 8);
  v128 = v10;
  v11 = __chkstk_darwin(v10);
  v119 = v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v108 - v14;
  __chkstk_darwin(v13);
  v126 = v108 - v16;
  v17 = sub_100005E30(&qword_100062738, &qword_10004D970);
  v18 = __chkstk_darwin(v17 - 8);
  v123 = v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v108 - v21;
  __chkstk_darwin(v20);
  v24 = v108 - v23;
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v121 = v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v120 = v108 - v30;
  __chkstk_darwin(v29);
  v32 = v108 - v31;
  v118 = a1;
  v33 = CNContact.callHistoryHandles.getter();
  v36 = v33;
  if (v33 >> 62)
  {
LABEL_65:
    v37 = _CocoaArrayWrapper.endIndex.getter();
    if (!v37)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v37 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
LABEL_69:

      goto LABEL_70;
    }
  }

  v131 = v37;
  v129 = v32;
  v38 = sub_100046B50(v36, v34, v35);
  v39 = v38;
  if (!(v38 >> 62))
  {
    result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_68;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_68:

    goto LABEL_69;
  }

LABEL_5:
  v130 = v8;
  if ((v39 & 0xC000000000000001) != 0)
  {
    v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:

    v42 = [v41 date];

    if (v42)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v26 + 56))(v22, 0, 1, v25);
    }

    else
    {
      (*(v26 + 56))(v22, 1, 1, v25);
    }

    v43 = v129;
    sub_1000354F0(v22, v24);
    v8 = (v26 + 48);
    v44 = *(v26 + 48);
    if (v44(v24, 1, v25) == 1)
    {

      sub_100007DB0(v24, &qword_100062738, &qword_10004D970);
    }

    else
    {
      v114 = v44;
      v45 = *(v26 + 32);
      v111 = v26 + 32;
      v110 = v45;
      v45(v43, v24, v25);
      v46 = [v117 remoteParticipantHandles];
      if (v46)
      {
        v47 = v46;
        v108[1] = v26 + 48;
        v115 = v26;
        v112 = v25;
        v113 = a3;
        sub_100010734(0, &qword_100063DF8, CHHandle_ptr);
        sub_100046F98();
        v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = 0;
        v116 = sub_1000440A4(v32);

        v24 = 0;
        v26 = v36 & 0xC000000000000001;
        a3 = v36 & 0xFFFFFFFFFFFFFF8;
        v22 = _swiftEmptyArrayStorage;
        v109 = v7;
        do
        {
          if (v26)
          {
            v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_64;
            }

            v48 = *(v36 + 8 * v24 + 32);
          }

          v8 = v48;
          v7 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v49 = [v48 value];
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v50;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_100022130(0, *(v22 + 2) + 1, 1, v22);
          }

          v25 = *(v22 + 2);
          v51 = *(v22 + 3);
          if (v25 >= v51 >> 1)
          {
            v22 = sub_100022130((v51 > 1), v25 + 1, 1, v22);
          }

          *(v22 + 2) = v25 + 1;
          v52 = &v22[16 * v25];
          *(v52 + 4) = v32;
          *(v52 + 5) = v15;
          ++v24;
          v8 = v130;
        }

        while (v7 != v131);

        v53 = sub_10001E3F0(v22);

        v54 = v116;
        v55 = *(v116 + 16);
        if (v55)
        {
          v56 = 0;
          v57 = v116 + 32;
          v58 = v53 + 56;
          while (1)
          {
            if (v56 >= *(v54 + 16))
            {
              goto LABEL_74;
            }

            v59 = (v57 + 16 * v56);
            v61 = *v59;
            v60 = v59[1];
            if (!*(v53 + 16))
            {
              break;
            }

            Hasher.init(_seed:)();

            String.hash(into:)();
            v62 = Hasher._finalize()();
            v63 = -1 << *(v53 + 32);
            v64 = v62 & ~v63;
            if (((*(v58 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
            {
LABEL_39:

LABEL_40:

              v68 = v126;
              static PeopleLogger.daemon.getter();

              v69 = Logger.logObject.getter();
              v70 = static os_log_type_t.debug.getter();

              v71 = os_log_type_enabled(v69, v70);
              a3 = v113;
              v72 = v112;
              if (v71)
              {
                v73 = swift_slowAlloc();
                v74 = swift_slowAlloc();
                v132[0] = v74;
                *v73 = 136315138;
                v75 = sub_10002580C(v61, v60, v132);

                *(v73 + 4) = v75;
                _os_log_impl(&_mh_execute_header, v69, v70, "Not a 1 to 1 call with %s", v73, 0xCu);
                sub_100003938(v74);
              }

              else
              {
              }

              (*(v127 + 8))(v68, v128);
              (*(v115 + 8))(v129, v72);
              goto LABEL_70;
            }

            ++v56;
            v65 = ~v63;
            while (1)
            {
              v66 = (*(v53 + 48) + 16 * v64);
              v67 = *v66 == v61 && v66[1] == v60;
              if (v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v64 = (v64 + 1) & v65;
              if (((*(v58 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            v8 = v130;
            v54 = v116;
            if (v56 == v55)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_40;
        }

LABEL_45:

        v79 = v123;
        sub_100047000(v124, v123);
        v80 = v112;
        if (v114(v79, 1, v112) == 1)
        {
          sub_100007DB0(v79, &qword_100062738, &qword_10004D970);
          a3 = v113;
          v81 = v125;
          v82 = v109;
        }

        else
        {
          v83 = v120;
          v110(v120, v79, v80);
          v84 = v129;
          v85 = static Date.< infix(_:_:)();
          v81 = v125;
          v82 = v109;
          if (v85)
          {
            v86 = v119;
            static PeopleLogger.daemon.getter();
            v87 = v118;
            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              v132[0] = v91;
              *v90 = 136315138;
              v92 = [v87 identifier];
              v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v95 = v94;

              v96 = sub_10002580C(v93, v95, v132);

              *(v90 + 4) = v96;
              _os_log_impl(&_mh_execute_header, v88, v89, "%s viewed since missed call", v90, 0xCu);
              sub_100003938(v91);

              (*(v127 + 8))(v86, v128);
              v97 = *(v115 + 8);
              v97(v120, v80);
            }

            else
            {

              (*(v127 + 8))(v86, v128);
              v97 = *(v115 + 8);
              v97(v83, v80);
            }

            v97(v84, v80);
            v106 = 1;
            a3 = v113;
            goto LABEL_71;
          }

          (*(v115 + 8))(v83, v80);
          a3 = v113;
          v8 = v130;
        }

        String.localized.getter();
        sub_100005E30(&qword_100063E08, &qword_10004EF10);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_10004D790;
        v99 = Date.relativeDateString()();
        *(v98 + 56) = &type metadata for String;
        *(v98 + 64) = sub_100047070();
        *(v98 + 32) = v99;
        String.init(format:_:)();

        v100 = [v117 serviceProvider];
        if (v100)
        {
          v101 = v100;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v102 = v122;
        CallServiceProvider.init(rawValue:)();
        v103 = v8[6];
        if (v103(v102, 1, v82) == 1)
        {
          v8[13](v81, enum case for CallServiceProvider.other(_:), v82);
          if (v103(v102, 1, v82) != 1)
          {
            sub_100007DB0(v102, &qword_100063DF0, &unk_10004EF00);
          }
        }

        else
        {
          v8[4](v81, v102, v82);
        }

        v104 = v115;
        v105 = v129;
        (*(v115 + 16))(v121, v129, v80);
        MissedCallPersonStatus.init(localizedString:serviceProvider:date:)();

        (*(v104 + 8))(v105, v80);
        v106 = 0;
        goto LABEL_71;
      }

      static PeopleLogger.daemon.getter();
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Missed call but no remote handles", v78, 2u);
        v43 = v129;
      }

      (*(v127 + 8))(v15, v128);
      (*(v26 + 8))(v43, v25);
    }

LABEL_70:
    v106 = 1;
LABEL_71:
    v107 = type metadata accessor for MissedCallPersonStatus();
    return (*(*(v107 - 8) + 56))(a3, v106, 1, v107);
  }

  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(v39 + 32);
    v117 = v41;
    goto LABEL_8;
  }

  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_1000468D4()
{
  sub_100007E10((v0 + 2));

  sub_100003938(v0 + 5);
  sub_100003938(v0 + 10);

  sub_100003938(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100046958@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.missedCall(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000469CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return StatusSource.debugID.getter(a1, WitnessTable);
}

uint64_t sub_100046A68(uint64_t a1, uint64_t a2)
{
  result = sub_100046B08(&qword_100063DE0, a2, type metadata accessor for MissedCallStatusSource, &unk_10004EE38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100046B08(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100046B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 predicateForCallsWithStatus:kCHCallStatusMissed];
  v8 = [v6 predicateForCallsWithStatusRead:0];
  v32 = sub_100010734(0, &qword_100063DF8, CHHandle_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v10 = [v6 predicateForCallsWithAnyRemoteParticipantHandles:isa];

  sub_100005E30(&qword_100062C08, &unk_10004DDE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004EDA0;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v11 + 48) = v10;
  sub_100010734(0, &qword_100063E18, NSPredicate_ptr);
  v34 = v7;
  v12 = v8;
  v33 = v10;
  v13 = Array._bridgeToObjectiveC()().super.isa;

  v14 = [objc_opt_self() andPredicateWithSubpredicates:v13];

  if (qword_100062400 != -1)
  {
    swift_once();
  }

  v15 = [qword_100065590 callsWithPredicate:v14 limit:0 offset:0 batchSize:0];
  sub_100010734(0, &qword_100063E20, CHRecentCall_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  static PeopleLogger.daemon.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v12;
    v20 = v19;
    v36 = swift_slowAlloc();
    *v20 = 136315394;
    v21 = Array.description.getter();
    v23 = sub_10002580C(v21, v22, &v36);
    v30 = v3;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = Array.description.getter();
    v27 = sub_10002580C(v25, v26, &v36);

    *(v20 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Calls fetched %s for %s", v20, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v5, v30);
  }

  else
  {

    (*(v35 + 8))(v5, v3);
  }

  return v16;
}

unint64_t sub_100046F98()
{
  result = qword_100063E00;
  if (!qword_100063E00)
  {
    sub_100010734(255, &qword_100063DF8, CHHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063E00);
  }

  return result;
}

uint64_t sub_100047000(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100062738, &qword_10004D970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100047070()
{
  result = qword_100063E10;
  if (!qword_100063E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063E10);
  }

  return result;
}

uint64_t sub_1000470C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_100047118(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v55 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v51 - v9;
  sub_100010734(0, &qword_100063E38, NSKeyedUnarchiver_ptr);
  sub_100010734(0, &qword_100063E40, INInteraction_ptr);
  v11 = [a1 interaction];
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  sub_10002C290(v12, v14);
  if (!v3)
  {
    v54 = v8;
    if (!v15)
    {
      return _swiftEmptyArrayStorage;
    }

    v53 = 0;
    static PeopleLogger.daemon.getter();
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = v17;
      v22 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v21;
      *v22 = v15;
      v23 = v21;
      _os_log_impl(&_mh_execute_header, v18, v19, "Got interaction from call intent %@", v20, 0xCu);
      sub_100007DB0(v22, &qword_100062758, &unk_10004E8A0);
      v17 = v21;
    }

    v24 = v55[1];
    v25 = v5;
    v24(v10, v5);
    v26 = [v17 intent];
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      static PeopleLogger.daemon.getter();
      v29 = v26;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      v55 = v29;

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = v17;
        v34 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v28;
        *v34 = v28;
        v35 = v55;
        _os_log_impl(&_mh_execute_header, v30, v31, "Got call intent %@", v32, 0xCu);
        sub_100007DB0(v34, &qword_100062758, &unk_10004E8A0);
        v17 = v33;

        v25 = v5;
      }

      v24(v54, v25);
      v36 = [v28 contacts];
      if (v36)
      {
        v37 = v36;
        sub_100010734(0, &qword_100063E48, INPerson_ptr);
        v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v38 >> 62)
        {
LABEL_34:
          v39 = _CocoaArrayWrapper.endIndex.getter();
          v54 = v17;
          if (v39)
          {
LABEL_12:
            v17 = 0;
            v8 = _swiftEmptyArrayStorage;
            do
            {
              v40 = v17;
              while (1)
              {
                if ((v38 & 0xC000000000000001) != 0)
                {
                  v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_33;
                  }

                  v41 = *(v38 + 8 * v40 + 32);
                }

                v42 = v41;
                v17 = (v40 + 1);
                if (__OFADD__(v40, 1))
                {
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

                v43 = [v41 contactIdentifier];
                if (v43)
                {
                  break;
                }

                ++v40;
                if (v17 == v39)
                {
                  goto LABEL_36;
                }
              }

              v44 = v43;
              v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v51 = v46;
              v52 = v45;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_100022130(0, *(v8 + 2) + 1, 1, v8);
              }

              v48 = *(v8 + 2);
              v47 = *(v8 + 3);
              if (v48 >= v47 >> 1)
              {
                v8 = sub_100022130((v47 > 1), v48 + 1, 1, v8);
              }

              *(v8 + 2) = v48 + 1;
              v49 = &v8[16 * v48];
              v50 = v51;
              *(v49 + 4) = v52;
              *(v49 + 5) = v50;
            }

            while (v17 != v39);
            goto LABEL_36;
          }
        }

        else
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v54 = v17;
          if (v39)
          {
            goto LABEL_12;
          }
        }

        v8 = _swiftEmptyArrayStorage;
LABEL_36:

        return v8;
      }
    }

    else
    {
    }

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_1000476C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047700()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007CBC;

  return sub_100044A4C();
}

char *sub_1000477AC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v30[3] = a2;
  v6 = sub_100005E30(&qword_100063F88, &qword_10004F090);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for RelevantIntent();
  v10 = __chkstk_darwin(v9);
  v29 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v26 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = v12;
  v27 = (v12 + 32);
  v28 = (v12 + 48);
  v15 = (a3 + 40);
  v16 = _swiftEmptyArrayStorage;
  v25 = a1;
  while (1)
  {
    v17 = *v15;
    v30[0] = *(v15 - 1);
    v30[1] = v17;

    a1(v30);
    if (v3)
    {
      break;
    }

    if ((*v28)(v8, 1, v9) == 1)
    {
      sub_100007DB0(v8, &qword_100063F88, &qword_10004F090);
    }

    else
    {
      v18 = v9;
      v19 = v26;
      v20 = *v27;
      (*v27)(v26, v8, v18);
      v20(v29, v19, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1000224E0(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_1000224E0((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v20(&v16[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22], v29, v18);
      v9 = v18;
      a1 = v25;
    }

    v15 += 2;
    if (!--v14)
    {
      return v16;
    }
  }

  return v16;
}

void sub_100047AA0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  sub_100010734(0, &qword_100063FA0, INRelevantShortcut_ptr);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v8[4] = a2;
    v8[5] = a3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10001F854;
    v8[3] = &unk_10005F000;
    a2 = _Block_copy(v8);
  }

  [v6 setRelevantShortcuts:v7.super.isa completionHandler:a2];
  _Block_release(a2);
}

uint64_t sub_100047B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  v5 = type metadata accessor for Logger();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100047C60, 0, 0);
}

uint64_t sub_100047C60()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = sub_1000477AC(sub_10004B0EC, v4, v3);
  v0[8] = v5;

  sub_100005E78((v2 + 216), *(v2 + 240));
  v6 = static PeopleConstants.appBundleID.getter();
  v8 = v7;
  v0[9] = v7;
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_100047D7C;

  return RelevantIntentManager.updateRelevantIntents(_:for:)(v5, v6, v8);
}

uint64_t sub_100047D7C()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100047EFC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100047EFC(uint64_t a1)
{
  static PeopleLogger.daemon.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error updating single contact relevant intents: %@", v4, 0xCu);
    sub_100007DB0(v5, &qword_100062758, &unk_10004E8A0);
  }

  else
  {
  }

  (*(v1[6] + 8))(v1[7], v1[5]);

  v7 = v1[1];

  return v7();
}

void sub_100048084(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v53 = a4;
  v6 = type metadata accessor for RelevantContext();
  __chkstk_darwin(v6 - 8);
  v51 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005E30(&qword_100063F90, &qword_10004F098);
  __chkstk_darwin(v8 - 8);
  v45 = &v40 - v9;
  v10 = type metadata accessor for SelectPerson();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = __chkstk_darwin(v10);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v47 = type metadata accessor for Date();
  v15 = *(v47 - 8);
  v16 = __chkstk_darwin(v47);
  v44 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v40 - v18;
  v21 = *a1;
  v20 = a1[1];
  v52 = objc_autoreleasePoolPush();
  sub_100005E78(a2 + 2, a2[5]);
  v22 = dispatch thunk of ContactFetcherProtocol.contact(for:includeImages:)();
  if (v22)
  {
    v23 = v22;
    v43 = v15;
    v24 = v19;
    Date.init()();
    SelectPerson.init()();
    v55 = v21;
    v56 = v20;
    sub_100005E78(a2 + 17, a2[20]);

    v42 = v23;
    dispatch thunk of ContactFormatterProtocol.displayName(for:)();
    type metadata accessor for VerticalTextHelper();
    static VerticalTextHelper.shared.getter();
    v25 = dispatch thunk of VerticalTextHelper.makeIdentifier(for:)();
    v27 = v26;

    if (v27)
    {
      v54._countAndFlagsBits = 124;
      v54._object = 0xE100000000000000;
      v28._countAndFlagsBits = v25;
      v28._object = v27;
      String.append(_:)(v28);

      String.append(_:)(v54);
    }

    v29 = v45;
    PersonTypeAppEntity.init(id:displayString:)();
    v30 = type metadata accessor for PersonTypeAppEntity();
    (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    SelectPerson.person.setter();
    v41 = v14;
    v31 = v48;
    v32 = v49;
    (*(v48 + 16))(v46, v14, v49);
    v45 = static PeopleConstants.singleContactWidgetKind.getter();
    v40 = v33;
    v34 = v44;
    static Date.+ infix(_:_:)();
    static RelevantContext.date(from:to:)();
    v35 = *(v43 + 8);
    v36 = v47;
    v35(v34, v47);
    sub_10004B108(&qword_100063F98, &type metadata accessor for SelectPerson, &protocol conformance descriptor for SelectPerson);
    v37 = v53;
    RelevantIntent.init<A>(_:widgetKind:relevance:)();

    (*(v31 + 8))(v41, v32);
    v35(v24, v36);
    v38 = type metadata accessor for RelevantIntent();
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  }

  else
  {
    v39 = type metadata accessor for RelevantIntent();
    (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
  }

  objc_autoreleasePoolPop(v52);
}

void sub_100048598(void *a1@<X0>, objc_class *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v74 = a4;
  v68 = a3;
  v76 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005E30(&qword_100062738, &qword_10004D970);
  __chkstk_darwin(v9 - 8);
  v67 = &v64 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v71 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005E30(&qword_100063F70, &unk_10004F060);
  __chkstk_darwin(v14 - 8);
  v69 = &v64 - v15;
  v16 = type metadata accessor for INShortcut();
  v72 = *(v16 - 8);
  v73 = v16;
  __chkstk_darwin(v16);
  v70 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[5];
  *&v79 = a1;
  sub_100005E78(a1 + 2, v18);
  static PeopleConstants.maxContactsInMultipleWidget.getter();
  v19 = dispatch thunk of ContactFetcherProtocol.recommendedContacts(maxSuggestions:excludeContactIdentifiers:)();
  v20 = v19;
  if (v19 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 < static PeopleWidgetConfiguration.minContacts(forFamily:)())
  {
LABEL_15:

    static PeopleLogger.daemon.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "WidgetSuggester: Not enough contact suggestions", v37, 2u);
    }

    v6[1](v8, v5);
    goto LABEL_18;
  }

  v22 = _swiftEmptyArrayStorage;
  v77 = v12;
  v78 = v11;
  if (v21)
  {
    v80 = _swiftEmptyArrayStorage;
    sub_10000D6D4(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    v65 = v8;
    v66 = v6;
    v75 = v5;
    v23 = 0;
    v22 = v80;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v20 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = [v25 identifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v80 = v22;
      v31 = v22[2];
      v30 = v22[3];
      if (v31 >= v30 >> 1)
      {
        sub_10000D6D4((v30 > 1), v31 + 1, 1);
        v22 = v80;
      }

      ++v23;
      v22[2] = v31 + 1;
      v32 = &v22[2 * v31];
      v32[4] = v27;
      v32[5] = v29;
    }

    while (v21 != v23);
    v12 = v77;
    v11 = v78;
    v5 = v75;
    v8 = v65;
    v6 = v66;
  }

  v33 = sub_10001E3F0(v22);

  v34 = sub_10000DCD4(v76, v33);

  if (v34)
  {
    goto LABEL_15;
  }

  v39 = [objc_allocWithZone(type metadata accessor for SelectPeopleIntent()) init];
  static PeopleConstants.appBundleID.getter();
  v40 = String._bridgeToObjectiveC()();

  [v39 _setLaunchId:v40];

  if (!v21)
  {

LABEL_29:
    type metadata accessor for PersonType();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v39 setPeople:isa];

    v50 = v69;
    INShortcut.init(intent:)();
    v52 = v72;
    v51 = v73;
    if ((*(v72 + 48))(v50, 1, v73) != 1)
    {
      v53 = v39;
      (*(v52 + 32))(v70, v50, v51);
      v54 = objc_allocWithZone(INRelevantShortcut);
      v55 = INShortcut._bridgeToObjectiveC()().super.isa;
      v56 = [v54 initWithShortcut:v55];

      static PeopleConstants.multipleContactsWidgetKind.getter();
      v57 = String._bridgeToObjectiveC()();

      [v56 setWidgetKind:v57];

      Date.init()();
      sub_100005E30(&qword_100062C08, &unk_10004DDE0);
      v58 = swift_allocObject();
      v79 = xmmword_10004EF30;
      *(v58 + 16) = xmmword_10004EF30;
      v59 = v67;
      static Date.+ infix(_:_:)();
      (*(v12 + 56))(v59, 0, 1, v11);
      v60.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if ((*(v12 + 48))(v59, 1, v11) == 1)
      {
        v61 = 0;
      }

      else
      {
        v61 = Date._bridgeToObjectiveC()().super.isa;
        (*(v12 + 8))(v59, v11);
      }

      v62 = [objc_allocWithZone(INDateRelevanceProvider) initWithStartDate:v60.super.isa endDate:v61];

      *(v58 + 32) = v62;
      sub_100010734(0, &qword_100063F78, INRelevanceProvider_ptr);
      v63 = Array._bridgeToObjectiveC()().super.isa;

      [v56 setRelevanceProviders:v63];

      v38 = swift_allocObject();
      *(v38 + 1) = v79;
      v38[4] = v56;

      (*(v12 + 8))(v71, v11);
      (*(v72 + 8))(v70, v73);
      goto LABEL_19;
    }

    sub_100007DB0(v50, &qword_100063F70, &unk_10004F060);

LABEL_18:
    v38 = _swiftEmptyArrayStorage;
LABEL_19:
    *v74 = v38;
    return;
  }

  v66 = v39;
  v80 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v21 & 0x8000000000000000) == 0)
  {
    type metadata accessor for PersonType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v42 = 0;
    v75 = v20 & 0xC000000000000001;
    v76 = ObjCClassFromMetadata;
    do
    {
      if (v75)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v43 = *(v20 + 8 * v42 + 32);
      }

      v44 = v43;
      ++v42;
      v45 = [v43 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100005E78((v79 + 136), *(v79 + 160));
      dispatch thunk of ContactFormatterProtocol.displayName(for:)();
      v46 = objc_allocWithZone(v76);
      v47 = String._bridgeToObjectiveC()();

      v48 = String._bridgeToObjectiveC()();

      [v46 initWithIdentifier:v47 displayString:v48];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 = v77;
      v11 = v78;
    }

    while (v21 != v42);

    v39 = v66;
    goto LABEL_29;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_100048ED4(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = type metadata accessor for StatusType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WidgetSuggester.Relevance(0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v11 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v37 - v16;
  if ((sub_100049E5C(v15, v18, v19) & 1) != 0 && ((*(v5 + 16))(v7, a1, v4), v20 = (*(v5 + 88))(v7, v4), v20 != enum case for StatusType.dndAvailability(_:)))
  {
    if (v20 == enum case for StatusType.motionState(_:) || v20 == enum case for StatusType.location(_:) || v20 == enum case for StatusType.askToBuyRequest(_:) || v20 == enum case for StatusType.screenTimeRequest(_:) || v20 == enum case for StatusType.childState(_:) || v20 == enum case for StatusType.unreadMessage(_:) || v20 == enum case for StatusType.readMessage(_:) || v20 == enum case for StatusType.missedCall(_:) || v20 == enum case for StatusType.calendar(_:))
    {
      v30 = [objc_opt_self() hours];
      sub_100010734(0, &qword_100062AF0, NSUnitDuration_ptr);
      Measurement.init(value:unit:)();
      sub_10004ABC4(v14, v17);
      sub_100005E78((v2 + 96), *(v2 + 120));
      type metadata accessor for WidgetConfigurationReader();
      sub_10000D0E8();
      sub_100005E30(&qword_100062918, &qword_10004F050);
      dispatch thunk of Promise.then<A>(_:)();

      sub_10004AC28(v17, v11);
      v31 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v32 = swift_allocObject();
      v33 = v39;
      *(v32 + 16) = v2;
      *(v32 + 24) = v33;
      sub_10004ABC4(v11, v32 + v31);

      dispatch thunk of Promise.then<A>(_:)();

      sub_10004AC28(v17, v11);
      v34 = swift_allocObject();
      *(v34 + 16) = v2;
      *(v34 + 24) = v33;
      sub_10004ABC4(v11, v34 + v31);

      sub_100005E30(&qword_100063F68, &qword_10004F058);
      dispatch thunk of Promise.then<A>(_:)();

      sub_1000077E8(v2 + 56, v40);
      v35 = swift_allocObject();
      sub_10000784C(v40, v35 + 16);
      *(v35 + 56) = v2;

      v36 = dispatch thunk of Promise.then<A>(_:)();

      sub_10004ADE0(v17);
      return v36;
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  else
  {
    sub_100005E30(&qword_100062750, &qword_10004D990);
    *&v40[0] = 0;
    BYTE8(v40[0]) = 0;
    return Promise.__allocating_init(with:)();
  }

  return result;
}

void sub_1000493F0(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v21 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 containerBundleIdentifier];
      if (!v10)
      {
        static PeopleConstants.appBundleID.getter();
        a2 = v6;
LABEL_5:

        goto LABEL_6;
      }

      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = static PeopleConstants.appBundleID.getter();
      a2 = v16;
      if (!v14)
      {
        goto LABEL_5;
      }

      if (v12 == v15 && v14 == v16)
      {

LABEL_21:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a2 = &v21;
        specialized ContiguousArray._endMutation()();
        goto LABEL_7;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_21;
      }

LABEL_6:

LABEL_7:
      ++v5;
      if (v9 == i)
      {
        v19 = v21;
        a2 = v20;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_28:
  *a2 = v19;
}

uint64_t sub_1000495D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetSuggester.Relevance(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  if (*a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_100005E30(&qword_100063F80, &qword_10004F070);
    sub_10004AC28(v21, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    sub_10004ABC4(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);

    return Promise.__allocating_init(_:)();
  }

  if (!*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  static PeopleLogger.daemon.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "WidgetSuggester: Not suggesting because user already has contact widgets", v16, 2u);
  }

  (*(v8 + 8))(v10, v7);
  sub_100005E30(&qword_100063F80, &qword_10004F070);
  v22 = 0;
  v23 = 0;
  return Promise.__allocating_init(with:)();
}

uint64_t sub_100049888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_100049938;

  return sub_100047B9C(a3, a4, v8);
}

uint64_t sub_100049938()
{

  return _swift_task_switch(sub_100049A34, 0, 0);
}

void sub_100049A58(_BYTE *a1@<X0>, void *a2@<X1>, objc_class *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*a1 != 1)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v10 = objc_autoreleasePoolPush();
  sub_100048598(a2, a3, a4, &v12);
  if (!v5)
  {
    objc_autoreleasePoolPop(v10);
    v11 = v12;
LABEL_5:
    *a5 = v11;
    return;
  }

  objc_autoreleasePoolPop(v10);
  __break(1u);
}

uint64_t sub_100049B00(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_1000077E8(a2, v8);
    v6 = swift_allocObject();
    sub_10000784C(v8, v6 + 16);
    *(v6 + 56) = v5;
    *(v6 + 64) = a3;
    sub_100005E30(&qword_100062750, &qword_10004D990);
    swift_allocObject();

    return Promise.init(startBlock:)();
  }

  sub_100005E30(&qword_100062750, &qword_10004D990);
  return Promise.__allocating_init(with:)();
}

void sub_100049C1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = objc_autoreleasePoolPush();
  v12 = a3[3];
  v13 = a3[4];
  sub_100005E78(a3, v12);
  v14 = swift_allocObject();
  v14[2] = sub_100014D78;
  v14[3] = v10;
  v14[4] = a5;
  v15 = *(v13 + 8);

  v15(a4, sub_10004AF08, v14, v12, v13);

  objc_autoreleasePoolPop(v11);
}

uint64_t sub_100049D4C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, void *a4)
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1, 1);
  }

  else
  {
    sub_100005E78(a4 + 22, a4[25]);
    v7[3] = type metadata accessor for Date();
    sub_100007784(v7);
    Date.init()();
    static PeopleConstants.widgetSuggestionDateKey.getter();
    dispatch thunk of KeyValueStorageProtocol.setValue(_:forKey:)();

    sub_100007DB0(v7, &qword_100062E60, &qword_10004F030);
    return (a2)(0, 0);
  }
}

uint64_t sub_100049E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v60 = &v56 - v9;
  __chkstk_darwin(v8);
  v59 = &v56 - v10;
  v11 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = __chkstk_darwin(v11);
  v64 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v56 - v14;
  v15 = type metadata accessor for Calendar();
  v61 = *(v15 - 8);
  v62 = v15;
  __chkstk_darwin(v15);
  v70 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DateComponents();
  v68 = *(v17 - 8);
  v69 = v17;
  __chkstk_darwin(v17);
  v67 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005E30(&qword_100062738, &qword_10004D970);
  __chkstk_darwin(v19 - 8);
  v21 = &v56 - v20;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v56 - v27;
  sub_100005E78((v3 + 176), *(v3 + 200));
  static PeopleConstants.widgetSuggestionDateKey.getter();
  dispatch thunk of KeyValueStorageProtocol.value(forKey:)();

  if (!v74)
  {
    sub_100007DB0(v73, &qword_100062E60, &qword_10004F030);
    (*(v23 + 56))(v21, 1, 1, v22);
    goto LABEL_8;
  }

  v29 = swift_dynamicCast();
  (*(v23 + 56))(v21, v29 ^ 1u, 1, v22);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
LABEL_8:
    sub_100007DB0(v21, &qword_100062738, &qword_10004D970);
    static PeopleLogger.daemon.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Last widget suggestion date not found, suggest widgets", v51, 2u);
    }

    (*(v71 + 8))(v7, v72);
    return 1;
  }

  (*(v23 + 32))(v28, v21, v22);
  static Calendar.current.getter();
  sub_100005E30(&qword_100063F40, &qword_10004F038);
  v30 = type metadata accessor for Calendar.Component();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10004D790;
  (*(v31 + 104))(v33 + v32, enum case for Calendar.Component.hour(_:), v30);
  sub_10004A7F4(v33);
  swift_setDeallocating();
  (*(v31 + 8))(v33 + v32, v30);
  swift_deallocClassInstance();
  Date.init()();
  v34 = v67;
  v57 = v28;
  v35 = v70;
  Calendar.dateComponents(_:from:to:)();

  v37 = v23 + 8;
  v36 = *(v23 + 8);
  v38 = v22;
  v58 = v37;
  v36(v26, v22);
  (*(v61 + 8))(v35, v62);
  DateComponents.hour.getter();
  v39 = [objc_opt_self() hours];
  sub_100010734(0, &qword_100062AF0, NSUnitDuration_ptr);
  v40 = v63;
  Measurement.init(value:unit:)();
  v41 = v64;
  static PeopleConstants.widgetSuggestionTTL.getter();
  sub_10004AB14();
  v42 = v66;
  LOBYTE(v33) = dispatch thunk of static Comparable.< infix(_:_:)();
  v43 = *(v65 + 8);
  v43(v41, v42);
  v43(v40, v42);
  if ((v33 & 1) == 0)
  {
    v52 = v59;
    static PeopleLogger.daemon.getter();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Last widget suggestion date is older 24 hours, suggest widgets", v55, 2u);
    }

    (*(v71 + 8))(v52, v72);
    (*(v68 + 8))(v34, v69);
    v36(v57, v38);
    return 1;
  }

  v44 = v60;
  static PeopleLogger.daemon.getter();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Last widget suggestion date is within 24 hours, do not suggest widgets", v47, 2u);
  }

  (*(v71 + 8))(v44, v72);
  (*(v68 + 8))(v34, v69);
  v36(v57, v38);
  return 0;
}

uint64_t sub_10004A770()
{
  sub_100003938(v0 + 2);
  sub_100003938(v0 + 7);
  sub_100003938(v0 + 12);
  sub_100003938(v0 + 17);
  sub_100003938(v0 + 22);
  sub_100003938(v0 + 27);

  return swift_deallocClassInstance();
}

void *sub_10004A7F4(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100005E30(&qword_100063F50, &unk_10004F040);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10004B108(&qword_100063F58, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10004B108(&qword_100063F60, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10004AB14()
{
  result = qword_100063F48;
  if (!qword_100063F48)
  {
    sub_100010594(&qword_100062A88, &qword_10004DBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F48);
  }

  return result;
}

uint64_t type metadata accessor for WidgetSuggester.Relevance(uint64_t a1)
{
  result = qword_100064000;
  if (!qword_100064000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004ABC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetSuggester.Relevance(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetSuggester.Relevance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AD80()
{
  sub_100003938((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004ADE0(uint64_t a1)
{
  v2 = type metadata accessor for WidgetSuggester.Relevance(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004AE3C()
{
  sub_100003938((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004AE90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004AEC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004AF14()
{
  v1 = *(type metadata accessor for WidgetSuggester.Relevance(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004AFFC(uint64_t a1)
{
  v4 = *(type metadata accessor for WidgetSuggester.Relevance(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007CBC;

  return sub_100049888(a1, v6, v7, v1 + v5);
}

uint64_t sub_10004B108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004B150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004B17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004B208(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10004B284(uint64_t a1)
{
  sub_100013A1C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

Swift::String __swiftcall Date.relativeDateString()()
{
  v0 = Date.relativeDateString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t dispatch thunk of Promise.then<A>(_:)()
{
  return dispatch thunk of Promise.then<A>(_:)();
}

{
  return dispatch thunk of Promise.then<A>(_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.trim()()
{
  v0 = String.trim()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.trimToNil()()
{
  v0 = String.trimToNil()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}