void sub_100143BEC()
{
  v1 = v0;
  v2 = [objc_msgSend(v0 "encryptedValues")];
  swift_unknownObjectRelease();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = 0;
  v5 = *(v3 + 16);
  v6 = v3 + 40;
LABEL_2:
  v7 = v6 + 16 * v4;
  while (1)
  {
    if (v5 == v4)
    {

      sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
      Array.description.getter();

      return;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    ++v4;
    v8 = v7 + 16;

    v9 = [v1 encryptedValues];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 objectForKeyedSubscript:v10];

    swift_unknownObjectRelease();
    v7 = v8;
    if (v11)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v3 + 40;
      goto LABEL_2;
    }
  }

  __break(1u);
}

void sub_100143DE0(void *a1, void *a2, char a3, void *a4)
{
  swift_beginAccess();
  v5 = a4[2];
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(a4[2] + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v61 = a4[2];
  swift_bridgeObjectRetain_n();
  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v11)) | (v14 << 6);
      v63 = *(*(v61 + 56) + 16 * v15);
      v16 = *(*(v61 + 48) + 8 * v15);

      a4 = v16;
      v17 = [v16 recordID];
      v18 = [v17 recordName];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = [a1 recordName];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      if (v19 == v23 && v21 == v25)
      {

        goto LABEL_19;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        break;
      }

      v11 &= v11 - 1;

      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

LABEL_19:

    v35 = swift_allocObject();
    *(v35 + 16) = v63;

    v36 = a4;
    if ((a3 & 1) == 0)
    {
      sub_1001456B8(a2, sub_1001634E0, v35);
LABEL_29:
      swift_beginAccess();
      v55 = sub_10015C4EC(a4, sub_1000F8D88, &qword_1002F8018, &qword_100226FE8);
      v57 = v56;
      swift_endAccess();
      sub_100007B0C(v55, v57);

      return;
    }

    v62 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v37 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002289A0;
    v39 = a1;
    v40 = [v39 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    *(v38 + 56) = &type metadata for String;
    v44 = sub_1000EE954();
    *(v38 + 64) = v44;
    *(v38 + 32) = v41;
    *(v38 + 40) = v43;
    v64 = a2;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v45 = String.init<A>(describing:)();
    *(v38 + 96) = &type metadata for String;
    *(v38 + 104) = v44;
    *(v38 + 72) = v45;
    *(v38 + 80) = v46;
    v47 = [a4 recordChangeTag];
    if (v47)
    {
      v48 = v47;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = (v38 + 112);
      *(v38 + 136) = &type metadata for String;
      *(v38 + 144) = v44;
      if (v51)
      {
        *v52 = v49;
        v53 = v62;
        v54 = v37;
LABEL_28:
        *(v38 + 120) = v51;
        os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v54, "CheckInPendingCloudUpdates CKRecord save failed (%@) with error: %@. Record change tag: %@", 90, 2, v38);

        v64 = a2;
        v65 = 1;

        (v63)(&v64);

        goto LABEL_29;
      }
    }

    else
    {
      v52 = (v38 + 112);
      *(v38 + 136) = &type metadata for String;
      *(v38 + 144) = v44;
    }

    v53 = v62;
    v54 = v37;
    *v52 = 15932;
    v51 = 0xE200000000000000;
    goto LABEL_28;
  }

  while (1)
  {
LABEL_5:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v14);
    ++v13;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  a4 = static os_log_type_t.error.getter();
  if (qword_1002F7AD8 == -1)
  {
    goto LABEL_16;
  }

LABEL_31:
  swift_once();
LABEL_16:
  v28 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100226100;
  v30 = a1;
  v31 = [v30 description];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_1000EE954();
  *(v29 + 32) = v32;
  *(v29 + 40) = v34;
  os_log(_:dso:log:_:_:)(a4, &_mh_execute_header, v28, "CheckInPendingCloudUpdates CKRecord attempted to saved record with unknown recordID (%@)", 88, 2, v29);
}

void sub_1001443B0(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a4 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = *(*(v6 + 56) + 16 * v13);
      sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
      v16 = v14;
      swift_retain_n();
      v17 = v16;
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    if (a3)
    {
      v26 = static os_log_type_t.error.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      v27 = qword_100300E28;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100226100;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      *(v28 + 56) = &type metadata for String;
      *(v28 + 64) = sub_1000EE954();
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "CheckInPendingCloudUpdates CKRecord deletion failed with error: %@", 66, 2, v28);

      v45[0] = a2;
    }

    else
    {
      v44 = static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      v32 = qword_100300E28;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100226100;
      v34 = a1;
      v35 = [v34 description];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_1000EE954();
      *(v33 + 32) = v36;
      *(v33 + 40) = v38;
      os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v32, "CheckInPendingCloudUpdates CKRecord deleted: %@", 47, 2, v33);

      v45[0] = 0;
    }

    v15(v45);
    swift_beginAccess();
    v39 = sub_10015C4EC(v17, sub_1000F8DD8, &qword_1002F8020, &unk_100226FF0);
    v41 = v40;
    swift_endAccess();
    sub_100007B0C(v39, v41);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = *(v6 + 64 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v10 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 == -1)
    {
      goto LABEL_12;
    }

LABEL_22:
    swift_once();
LABEL_12:
    v19 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226100;
    v21 = a1;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_1000EE954();
    *(v20 + 32) = v23;
    *(v20 + 40) = v25;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v19, "CheckInPendingCloudUpdates CKRecord attempted to delete record with unknown recordID (%@)", 89, 2, v20);
  }
}

uint64_t sub_1001448A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v27 = a8;
  v31 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for DispatchQoS();
  v28 = *(v16 - 8);
  v29 = v16;
  __chkstk_darwin(v16);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a1;
  a2 &= 1u;
  *(v20 + 32) = a2;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  *(v20 + 57) = v27;
  aBlock[4] = sub_100162F74;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF7F8;
  v21 = _Block_copy(aBlock);

  sub_100162F8C(a1, a2);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v22, v23, v24);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v30 + 8))(v15, v13);
  (*(v28 + 8))(v18, v29);
}

unint64_t sub_100144BE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  *&v125 = a2;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v117 = v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v112 = v14;
    v113 = a5;
    i = &unk_1002F7000;
    v19 = &qword_100226000;
    v115 = a6;
    v116 = a7;
    if ((a3 & 1) == 0)
    {
      v34 = static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        v108 = v34;
        swift_once();
        v34 = v108;
      }

      v126 = qword_100300E28;
      os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, qword_100300E28, "CKRecords modify operation finished successfully", 48, 2, _swiftEmptyArrayStorage);
LABEL_34:
      *(v17 + 128) = 0;
      v32 = static os_log_type_t.default.getter();
      if (i[347] != -1)
      {
        goto LABEL_53;
      }

      goto LABEL_35;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v109[0] = Strong;
      v109[1] = a1;
      v110 = v13;
      v111 = v17;
      v21 = static os_log_type_t.error.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      v22 = qword_100300E28;
      v124 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100226100;
      v134 = v125;
      swift_errorRetain();
      v123 = sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      *(v23 + 56) = &type metadata for String;
      v122 = sub_1000EE954();
      *(v23 + 64) = v122;
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      v126 = v22;
      os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "CKRecords modify operation finished with error: %@", 50, 2, v23);

      swift_beginAccess();
      v27 = *(a4 + 16);
      v28 = v27 + 64;
      v29 = 1 << *(v27 + 32);
      v30 = -1;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      v17 = v30 & *(v27 + 64);
      v31 = (v29 + 63) >> 6;
      v120 = v27;

      v33 = 0;
      v118 = xmmword_1002289A0;
      v119 = v28;
      *&v114 = v31;
      while (1)
      {
        if (!v17)
        {
          while (1)
          {
            v37 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              __break(1u);
              goto LABEL_52;
            }

            if (v37 >= v31)
            {
              break;
            }

            v17 = *(v28 + 8 * v37);
            ++v33;
            if (v17)
            {
              v33 = v37;
              goto LABEL_20;
            }
          }

          v56 = v113;
          swift_beginAccess();
          v57 = *(v56 + 16);
          v58 = *(v57 + 64);
          v113 = v57 + 64;
          v59 = 1 << *(v57 + 32);
          v60 = -1;
          if (v59 < 64)
          {
            v60 = ~(-1 << v59);
          }

          v19 = v60 & v58;
          v61 = (v59 + 63) >> 6;
          *&v118 = v57;

          v62 = 0;
          v114 = xmmword_100226C80;
          for (i = &unk_1002F7000; v19; i = &unk_1002F7000)
          {
            v63 = v62;
LABEL_31:
            v64 = __clz(__rbit64(v19));
            v19 &= v19 - 1;
            v65 = v64 | (v63 << 6);
            v66 = *(*(v118 + 48) + 8 * v65);
            v67 = (*(v118 + 56) + 16 * v65);
            v68 = *v67;
            v120 = v67[1];
            v121 = v68;
            v69 = v66;

            LODWORD(v119) = static os_log_type_t.error.getter();
            v17 = swift_allocObject();
            *(v17 + 16) = v114;
            v70 = v69;
            v71 = [v70 description];
            v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = v73;

            v74 = v122;
            *(v17 + 56) = &type metadata for String;
            *(v17 + 64) = v74;
            *(v17 + 32) = v72;
            *(v17 + 40) = v13;
            v75 = v125;
            v131[0] = v125;
            sub_100162F8C(v125, 1);
            v76 = String.init<A>(describing:)();
            *(v17 + 96) = &type metadata for String;
            *(v17 + 104) = v74;
            *(v17 + 72) = v76;
            *(v17 + 80) = v77;
            os_log(_:dso:log:_:_:)(v119, &_mh_execute_header, v126, "CheckInPendingCloudUpdates CKRecord delete failed (%@) with error: %@.", 70, 2, v17);

            v131[0] = v75;
            v121(v131);
          }

          while (1)
          {
            v63 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              break;
            }

            if (v63 >= v61)
            {

              v13 = v110;
              v17 = v111;
              v19 = &qword_100226000;
              goto LABEL_34;
            }

            v19 = *(v113 + 8 * v63);
            ++v62;
            if (v19)
            {
              v62 = v63;
              goto LABEL_31;
            }
          }

LABEL_52:
          __break(1u);
LABEL_53:
          v107 = v32;
          swift_once();
          v32 = v107;
LABEL_35:
          os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v126, "checkInPendingCloudUpdates: operation complete", 46, 2, _swiftEmptyArrayStorage);
          v78 = static os_log_type_t.default.getter();
          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v79 = swift_allocObject();
          v125 = *(v19 + 256);
          *(v79 + 16) = v125;
          swift_beginAccess();
          v80 = swift_weakLoadStrong();
          if (v80)
          {
            v81 = v80;
            swift_beginAccess();
            v82 = *(v81 + 112);
          }

          else
          {
            v82 = 0;
          }

          v130 = v82;
          sub_1000EE870(&qword_1002F94E0, &qword_100229370);
          v83 = String.init<A>(describing:)();
          v85 = v84;
          *(v79 + 56) = &type metadata for String;
          v86 = sub_1000EE954();
          *(v79 + 64) = v86;
          *(v79 + 32) = v83;
          *(v79 + 40) = v85;
          os_log(_:dso:log:_:_:)(v78, &_mh_execute_header, v126, "Pending changes in queue: %@", 28, 2, v79);

          v87 = static os_log_type_t.default.getter();
          v88 = swift_allocObject();
          *(v88 + 16) = v125;
          swift_beginAccess();
          v89 = swift_weakLoadStrong();
          if (v89)
          {
            v90 = v89;
            swift_beginAccess();
            v91 = *(v90 + 120);
          }

          else
          {
            v91 = 0;
          }

          v129 = v91;
          sub_1000EE870(&qword_1002F94E8, &qword_100229378);
          v92 = String.init<A>(describing:)();
          *(v88 + 56) = &type metadata for String;
          *(v88 + 64) = v86;
          *(v88 + 32) = v92;
          *(v88 + 40) = v93;
          os_log(_:dso:log:_:_:)(v87, &_mh_execute_header, v126, "Pending deletes in queue: %@", 28, 2, v88);

          swift_beginAccess();
          if (*(*(v17 + 112) + 16) || (swift_beginAccess(), *(*(v17 + 120) + 16)))
          {
            sub_100142A78(v115 & 1);
          }

          if (v116)
          {
            sub_100152F5C(45.0);
            v94 = static os_log_type_t.default.getter();
            v95 = swift_allocObject();
            *(v95 + 16) = v125;
            v96 = *(v17 + 40);
            if (v96)
            {
              v97 = [v96 date];
              v98 = v117;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v99 = objc_opt_self();
              isa = Date._bridgeToObjectiveC()().super.isa;
              v101 = [v99 localizedStringFromDate:isa dateStyle:2 timeStyle:2];

              v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v104 = v103;

              (*(v112 + 8))(v98, v13);
            }

            else
            {
              v102 = 0;
              v104 = 0;
            }

            v127 = v102;
            v128 = v104;
            sub_1000EE870(&qword_1002F94C0, qword_100227A98);
            v105 = String.init<A>(describing:)();
            *(v95 + 56) = &type metadata for String;
            *(v95 + 64) = v86;
            *(v95 + 32) = v105;
            *(v95 + 40) = v106;
            os_log(_:dso:log:_:_:)(v94, &_mh_execute_header, v126, "Cloud update done, continue the fetch: %@", 41, 2, v95);
          }
        }

LABEL_20:
        v38 = __clz(__rbit64(v17)) | (v33 << 6);
        v39 = *(*(v120 + 6) + 8 * v38);
        v40 = *(*(v120 + 7) + 16 * v38);
        v41 = v125;
        v132 = v125;
        v133 = 1;
        v19 = v39;

        v40(&v132);

        LODWORD(v121) = static os_log_type_t.error.getter();
        v42 = swift_allocObject();
        *(v42 + 16) = v118;
        v43 = [v19 recordID];
        v44 = [v43 description];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = v122;
        *(v42 + 56) = &type metadata for String;
        *(v42 + 64) = v47;
        *(v42 + 32) = v13;
        *(v42 + 40) = v46;
        v132 = v41;
        v48 = v41;
        v49 = v47;
        sub_100162F8C(v48, 1);
        v50 = String.init<A>(describing:)();
        *(v42 + 96) = &type metadata for String;
        *(v42 + 104) = v49;
        *(v42 + 72) = v50;
        *(v42 + 80) = v51;
        v52 = v19;
        v53 = [v19 recordChangeTag];
        if (!v53)
        {
          break;
        }

        v54 = v53;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = &type metadata for String;
        v36 = v55;

        v35 = (v42 + 112);
        *(v42 + 136) = &type metadata for String;
        *(v42 + 144) = v49;
        if (!v36)
        {
          goto LABEL_13;
        }

        *v35 = v13;
        v31 = v114;
LABEL_14:
        v17 &= v17 - 1;
        *(v42 + 120) = v36;
        os_log(_:dso:log:_:_:)(v121, &_mh_execute_header, v126, "CheckInPendingCloudUpdates CKRecord save failed (%@) with error: %@. Record change tag: %@", 90, 2, v42);

        v28 = v119;
      }

      v35 = (v42 + 112);
      *(v42 + 136) = &type metadata for String;
      *(v42 + 144) = v49;
LABEL_13:
      v31 = v114;
      *v35 = 15932;
      v36 = 0xE200000000000000;
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1001456B8(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v40 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v44 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v8 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226C80;
  v10 = [a1 recordID];
  v11 = [v10 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v9 + 56) = &type metadata for String;
  v15 = sub_1000EE954();
  *(v9 + 64) = v15;
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  v16 = [a1 recordChangeTag];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = (v9 + 72);
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v15;
    if (v20)
    {
      *v21 = v18;
      goto LABEL_8;
    }
  }

  else
  {
    v21 = (v9 + 72);
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v15;
  }

  *v21 = 15932;
  v20 = 0xE200000000000000;
LABEL_8:
  *(v9 + 80) = v20;
  os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v8, "CheckInPendingCloudUpdates CKRecord successfully saved (%@). new changeTag: %@", 78, 2, v9);

  if (IsAppleInternalBuild())
  {
    v22 = static os_log_type_t.default.getter();
  }

  else
  {
    v22 = static os_log_type_t.debug.getter();
  }

  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100226100;
  sub_100143BEC();
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = v15;
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v8, "CheckInPendingCloudUpdates saved CKRecords values - %@", 54, 2, v24);

  v27 = v41;
  v28 = swift_allocObject();
  v28[2] = a1;
  v28[3] = v27;
  v29 = v42;
  v28[4] = v40;
  v28[5] = v29;
  aBlock[4] = sub_100162E64;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF668;
  v30 = _Block_copy(aBlock);
  v31 = a1;

  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v32, v33, v34);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  v35 = v44;
  v36 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v46 + 8))(v35, v36);
  (*(v43 + 8))(v7, v45);
}

void sub_100145B90(void *a1, uint64_t a2, void (*a3)(void *, void), uint64_t a4)
{
  v6 = &selRef_canSend;
  v7 = [a1 encryptedValues];
  v76 = "le error %@";
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 objectForKeyedSubscript:v8];
  swift_unknownObjectRelease();

  if (v9)
  {
    v80 = v9;
    sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
    v10 = swift_dynamicCast();
    v11 = v82;
    if (!v10)
    {
      v11 = 0;
    }

    v73 = v11;
    if (v10)
    {
      v12 = v83;
    }

    else
    {
      v12 = 0;
    }

    v77 = v12;
  }

  else
  {
    v73 = 0;
    v77 = 0;
  }

  v72 = a1;
  v74 = CKRecord.recordType.getter();
  v75 = v13;
  swift_beginAccess();
  v14 = *(a2 + 112);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  while (1)
  {
    if (!v17)
    {
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v20 >= v18)
        {

          a3(v72, 0);
          return;
        }

        v17 = *(v14 + 64 + 8 * v20);
        ++v19;
        if (v17)
        {
          v19 = v20;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_46;
    }

LABEL_20:
    v21 = __clz(__rbit64(v17)) | (v19 << 6);
    *v78 = *(*(v14 + 56) + 16 * v21);
    v22 = *(*(v14 + 48) + 8 * v21);
    v7 = v78[1];
    swift_retain_n();
    v23 = v22;
    v24 = [v23 v6[255]];
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 objectForKeyedSubscript:v25];
    swift_unknownObjectRelease();

    if (v26 && (sub_1000EE870(&qword_1002F8610, &unk_1002262D0), swift_dynamicCast()))
    {
      if (!v77)
      {

        v6 = &selRef_canSend;
        goto LABEL_14;
      }

      v6 = &selRef_canSend;
      if (v80 == v73 && v77 == v81)
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    else
    {
      v6 = &selRef_canSend;
      if (v77)
      {
        goto LABEL_13;
      }
    }

    if (CKRecord.recordType.getter() == v74 && v28 == v75)
    {

      goto LABEL_37;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      break;
    }

LABEL_14:
    v17 &= v17 - 1;
  }

LABEL_37:

  v31 = swift_allocObject();
  *(v31 + 16) = *v78;
  v7 = v23;
  v76 = v31;

  v14 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 == -1)
  {
    goto LABEL_38;
  }

LABEL_46:
  swift_once();
LABEL_38:
  v32 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100226100;
  v34 = v7;
  v35 = [v34 description];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  *(v33 + 56) = &type metadata for String;
  v39 = sub_1000EE954();
  *(v33 + 64) = v39;
  *(v33 + 32) = v36;
  *(v33 + 40) = v38;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v32, "Replacing existing pending record: %@", 37, 2, v33);

  if (IsAppleInternalBuild())
  {
    v40 = static os_log_type_t.default.getter();
  }

  else
  {
    v40 = static os_log_type_t.debug.getter();
  }

  v41 = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100226C80;
  v43 = [v34 recordID];
  v44 = [v43 description];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = v39;
  *(v42 + 32) = v45;
  *(v42 + 40) = v47;
  sub_100143BEC();
  *(v42 + 96) = &type metadata for String;
  *(v42 + 104) = v39;
  *(v42 + 72) = v48;
  *(v42 + 80) = v49;
  os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v32, "Replacing existing pending CKRecord %@ - %@", 43, 2, v42);

  v50 = &selRef_canSend;
  v51 = [objc_msgSend(v34 "encryptedValues")];
  swift_unknownObjectRelease();
  v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = *(v52 + 16);
  v54 = v34;
  v55 = v72;
  if (v53)
  {
    v56 = v52 + 40;
    do
    {

      v79 = [v55 v50[255]];
      v57 = [v54 v50[255]];
      v58 = String._bridgeToObjectiveC()();
      v59 = v55;
      v60 = v54;
      v61 = [v57 objectForKeyedSubscript:v58];

      v50 = &selRef_canSend;
      swift_unknownObjectRelease();
      v62 = String._bridgeToObjectiveC()();

      [v79 setObject:v61 forKeyedSubscript:v62];
      v54 = v60;
      v55 = v59;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v56 += 16;
      --v53;
    }

    while (v53);
  }

  v63 = swift_allocObject();
  v63[2] = sub_1001634E0;
  v63[3] = v76;
  v63[4] = a3;
  v63[5] = a4;
  swift_beginAccess();

  v64 = sub_10015C4EC(v54, sub_1000F8D88, &qword_1002F8018, &qword_100226FE8);
  sub_100007B0C(v64, v65);
  v66 = swift_allocObject();
  *(v66 + 16) = sub_100162E70;
  *(v66 + 24) = v63;

  v67 = sub_10015DFA4(sub_1001634DC, v66, v55);
  v69 = v68;
  swift_endAccess();
  sub_100007B0C(v67, v69);
}

void sub_1001463EC(uint64_t a1, void *a2, char a3, int a4, uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v64 = a5;
  v63 = a4;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v62 - v14;
  v67 = swift_allocObject();
  *(v67 + 16) = _swiftEmptyArrayStorage;
  v65 = swift_allocObject();
  *(v65 + 16) = _swiftEmptyArrayStorage;
  v16 = a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  v17 = type metadata accessor for CloudCoordinatorConfiguration(0);
  (*(v10 + 16))(v12, v16 + *(v17 + 28), v9);
  v70 = a2;
  sub_10013A374(v12, [a2 scope]);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v19 = sub_10013A930(v15);
  v18(v15, v9);
  v20 = v19;
  v21 = [objc_allocWithZone(CKFetchDatabaseChangesOperation) initWithPreviousServerChangeToken:v19];
  v22 = *(a1 + 80);
  v23 = v21;
  [v23 setCallbackQueue:v22];
  v68 = a1;
  if (a3)
  {
    v24 = sub_100140F48();
  }

  else
  {
    v24 = sub_100140F1C();
  }

  v25 = v24;
  [v23 setGroup:v24];

  v26 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v69 = qword_100300E28;
  v62[1] = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100226C80;
  [v70 scope];
  v28 = CKDatabaseScope.description.getter();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v31 = sub_1000EE954();
  v32 = v31;
  *(v27 + 64) = v31;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v33 = v20;
  if (v20)
  {
    v34 = [v20 data];
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = Data.hexString.getter(v35, v37);
    v40 = v39;
    sub_1000EF870(v35, v37);
    v41 = (v27 + 72);
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v32;
    if (v40)
    {
      *v41 = v38;
      v33 = v20;
      goto LABEL_12;
    }

    v33 = v20;
  }

  else
  {
    v41 = (v27 + 72);
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v31;
  }

  *v41 = 7104878;
  v40 = 0xE300000000000000;
LABEL_12:
  *(v27 + 80) = v40;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v69, "CloudSync: Old %@ database change token: %@", 43, 2, v27);

  [v23 setFetchAllChanges:1];
  v42 = [v23 configuration];
  if (v42)
  {
    v43 = v42;
    v62[0] = v33;
    [v42 setAutomaticallyRetryNetworkFailures:0];

    v44 = [v23 configuration];
    v45 = v68;
    if (v44)
    {
      [v44 setDiscretionaryNetworkBehavior:0];

      v46 = v67;
      v75 = sub_100162D4C;
      v76 = v67;
      aBlock = _NSConcreteStackBlock;
      v72 = 1107296256;
      v73 = sub_1001634D4;
      v74 = &unk_1002BF4B0;
      v47 = _Block_copy(&aBlock);

      [v23 setRecordZoneWithIDChangedBlock:v47];
      _Block_release(v47);
      v48 = v65;
      v75 = sub_100162D54;
      v76 = v65;
      aBlock = _NSConcreteStackBlock;
      v72 = 1107296256;
      v73 = sub_1001634D4;
      v74 = &unk_1002BF4D8;
      v49 = _Block_copy(&aBlock);

      [v23 setRecordZoneWithIDWasDeletedBlock:v49];
      _Block_release(v49);
      v50 = swift_allocObject();
      v51 = v63 & 1;
      *(v50 + 16) = v63 & 1;
      v75 = sub_100162D5C;
      v76 = v50;
      aBlock = _NSConcreteStackBlock;
      v72 = 1107296256;
      v73 = sub_1001634D4;
      v74 = &unk_1002BF528;
      v52 = _Block_copy(&aBlock);

      [v23 setChangeTokenUpdatedBlock:v52];
      _Block_release(v52);
      v53 = static os_log_type_t.default.getter();
      v54 = v69;
      os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v69, "CloudSync: fetchDatabaseChanges for the new layer", 49, 2, _swiftEmptyArrayStorage);
      v55 = swift_allocObject();
      v56 = v64;
      *(v55 + 16) = v45;
      *(v55 + 24) = v56;
      *(v55 + 32) = v66;
      *(v55 + 40) = v51;
      *(v55 + 48) = v48;
      *(v55 + 56) = v46;
      v57 = v70;
      *(v55 + 64) = v70;

      v58 = v57;
      CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.setter();
      v59 = static os_log_type_t.default.getter();
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100226100;
      *(v60 + 56) = sub_1000FA784(0, &qword_1002F94C8, CKFetchDatabaseChangesOperation_ptr);
      *(v60 + 64) = sub_100162740(&qword_1002F94D0, &qword_1002F94C8, CKFetchDatabaseChangesOperation_ptr, &protocol conformance descriptor for NSObject);
      *(v60 + 32) = v23;
      v61 = v23;
      os_log(_:dso:log:_:_:)(v59, &_mh_execute_header, v54, "CloudSync: Adding Cloud operation %@", 36, 2, v60);

      [v58 addOperation:v61];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100146B74(void *a1, uint64_t a2)
{
  v4 = [a1 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == 0xD000000000000016 && 0x800000010026BC20 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      swift_beginAccess();
      v10 = a1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v11 = static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      v12 = qword_100300E28;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100226100;
      v14 = v10;
      v15 = [v14 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_1000EE954();
      *(v13 + 32) = v16;
      *(v13 + 40) = v18;
      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "CloudSync: Record Zone ID Changed: %@", 37, 2, v13);
    }
  }

  v20 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    v22 = v20;
    swift_once();
    v20 = v22;
  }

  v21 = qword_100300E28;

  return os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "CloudSync: Ignoring cloudPairedDevicesZone Changed", 50, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100146E28(void *a1, uint64_t a2)
{
  v4 = [a1 zoneName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == 0xD000000000000016 && 0x800000010026BC20 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      swift_beginAccess();
      v10 = a1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return swift_endAccess();
    }
  }

  v12 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    v14 = v12;
    swift_once();
    v12 = v14;
  }

  v13 = qword_100300E28;

  return os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "CloudSync: Ignoring cloudPairedDevicesZone deletion", 51, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100146FE4(void *a1, char a2)
{
  v3 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226C80;
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_1000EE954();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = [a1 data];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = Data.hexString.getter(v11, v13);
  v16 = v15;
  sub_1000EF870(v11, v13);
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v14;
  *(v5 + 80) = v16;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "CloudSync: change token updated, database, %@, token, %@", 56, 2, v5);
}

void sub_100147160(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1001471C8(void *a1, int a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, char a6, unint64_t a7, uint64_t a8, void *a9)
{
  v197 = a8;
  LOBYTE(v10) = a6;
  v207 = a3;
  LODWORD(v13) = a2;
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v175 = *(v15 - 8);
  __chkstk_darwin(v15);
  v174 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for URL();
  v176 = *(v193 - 8);
  __chkstk_darwin(v193);
  v180 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v188 = &v168 - v19;
  __chkstk_darwin(v20);
  v187 = &v168 - v21;
  v192 = type metadata accessor for DispatchWorkItemFlags();
  v179 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for DispatchQoS();
  v178 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v13 & 0x100) == 0)
  {
    v171 = v15;
    v177 = a1;
    v172 = a4;
    v173 = a5;
    v24 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      goto LABEL_100;
    }

    while (1)
    {
      v25 = qword_100300E28;
      v206 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v26 = swift_allocObject();
      v27 = v26;
      *(v26 + 16) = xmmword_1002289A0;
      v170 = v13;
      if (v13)
      {
        v28 = 1702195828;
      }

      else
      {
        v28 = 0x65736C6166;
      }

      if (v13)
      {
        v29 = 0xE400000000000000;
      }

      else
      {
        v29 = 0xE500000000000000;
      }

      *(v26 + 56) = &type metadata for String;
      v30 = sub_1000EE954();
      v27[8] = v30;
      v27[4] = v28;
      v27[5] = v29;
      v169 = v10 & 1;
      LOBYTE(aBlock._countAndFlagsBits) = v10 & 1;
      v31 = String.init<A>(describing:)();
      v27[12] = &type metadata for String;
      v27[13] = v30;
      v27[9] = v31;
      v27[10] = v32;
      v33 = [v177 data];
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = Data.hexString.getter(v34, v36);
      v13 = v38;
      v39 = v34;
      v40 = v25;
      sub_1000EF870(v39, v36);
      v27[17] = &type metadata for String;
      v27[18] = v30;
      v205 = v30;
      v27[14] = v37;
      v27[15] = v13;
      os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "CloudSync: Fetch database changes complete, moreComing %@, database, %@, token, %@", 82, 2, v27);

      v10 = v207 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
      v181 = type metadata accessor for CloudCoordinatorConfiguration(0);
      v41 = *(v181 + 32);
      v182 = v10;
      if (!*(*(v10 + v41) + 16))
      {
        v86 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v86, &_mh_execute_header, v25, "CloudSync: Configuration did not define any zoneIDs!", 52, 2, _swiftEmptyArrayStorage);
        v87 = [objc_allocWithZone(NSError) init];
        v172(v87, 1);

        return;
      }

      swift_beginAccess();
      v24 = *(a7 + 16);
      v198 = v24 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v199 = v25;
      if (v198)
      {
        break;
      }

      v88 = v197;
      swift_beginAccess();
      a7 = *(v88 + 16);
      v209 = a7 & 0xFFFFFFFFFFFFFF8;
      if (a7 >> 62)
      {
        v210 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v210 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v89 = 0;
      v202 = 0;
      while (v210 != v89)
      {
        if ((a7 & 0xC000000000000001) != 0)
        {
          v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v89 >= *(v209 + 16))
          {
            goto LABEL_99;
          }

          v90 = *(a7 + 8 * v89 + 32);
        }

        v91 = v90;
        if (__OFADD__(v89, 1))
        {
          goto LABEL_98;
        }

        v92 = *(v182 + *(v181 + 32));

        v13 = [v91 zoneName];
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v94;

        v10 = &v168;
        aBlock._countAndFlagsBits = v93;
        aBlock._object = v95;
        __chkstk_darwin(v96);
        *(&v168 - 2) = &aBlock;
        v24 = v202;
        LODWORD(v13) = sub_10017CE74(sub_1001633BC, (&v168 - 4), v92);
        v202 = v24;

        ++v89;
        v40 = v199;
        if (v13)
        {

          goto LABEL_53;
        }
      }

      v97 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v97, &_mh_execute_header, v40, "CloudSync: New Account Setup Zones", 34, 2, _swiftEmptyArrayStorage);
      LOBYTE(v10) = v207;
      sub_10014B134();
LABEL_53:
      v200 = a9;
      a7 = *(v182 + *(v181 + 32));
      v208 = *(a7 + 16);
      if (!v208)
      {
        goto LABEL_90;
      }

      v204 = a7 + 32;

      swift_beginAccess();
      v98 = 0;
      v201 = (v176 + 8);
      v198 = CKCurrentUserDefaultName;
      v196 = (v176 + 32);
      v195 = xmmword_100226100;
      v203 = a7;
      while (2)
      {
        if (v98 < *(a7 + 16))
        {
          v99 = (v204 + 16 * v98);
          v100 = *v99;
          a7 = v99[1];
          v10 = *(v197 + 16);
          v210 = v10 & 0xFFFFFFFFFFFFFF8;
          if (v10 >> 62)
          {
            v101 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v101 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v209 = v98 + 1;

          v102 = 0;
          while (v101 != v102)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v102 >= *(v210 + 16))
              {
                goto LABEL_94;
              }

              v103 = *(v10 + 8 * v102 + 32);
            }

            v13 = v103;
            if (__OFADD__(v102, 1))
            {
              __break(1u);
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            v24 = a7;
            v104 = v100;
            v105 = [v103 zoneName];
            v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v108 = v107;

            v100 = v104;
            a7 = v24;
            if (v106 == v100 && v108 == v24)
            {

LABEL_56:

              a7 = v203;
              v98 = v209;
              goto LABEL_57;
            }

            v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

            ++v102;
            if (v110)
            {

              goto LABEL_56;
            }
          }

          sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;

          v114._countAndFlagsBits = v100;
          v114._object = a7;
          v115._countAndFlagsBits = v111;
          v115._object = v113;
          v116.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v114, v115).super.isa;
          v117 = [v200 scope];
          v118 = v180;
          sub_10013A598();
          URL.appendingPathComponent(_:isDirectory:)();
          v119 = *v201;
          (*v201)(v118, v193);
          if (v117 == 3)
          {
            v123._countAndFlagsBits = 0x646572616853;
            v123._object = 0xE600000000000000;
            v24 = v188;
            URL.appendPathComponent(_:)(v123);
            v120 = v199;
          }

          else
          {
            v120 = v199;
            if (v117 == 2)
            {
              v121 = 0x65746176697250;
              v122 = 0xE700000000000000;
              v24 = v188;
            }

            else
            {
              v24 = v188;
              if (v117 == 1)
              {
                v121 = 0x63696C627550;
                v122 = 0xE600000000000000;
              }

              else
              {
                v124 = static os_log_type_t.error.getter();
                os_log(_:dso:log:_:_:)(v124, &_mh_execute_header, v120, "Unknown CKDatabase.Scope!", 25, 2, _swiftEmptyArrayStorage);
                v121 = 0x6E776F6E6B6E55;
                v122 = 0xE700000000000000;
              }
            }

            URL.appendPathComponent(_:)(*&v121);
          }

          v125 = [(objc_class *)v116.super.isa ownerName];
          v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v128 = v127;

          v129._countAndFlagsBits = v126;
          v129._object = v128;
          URL.appendPathComponent(_:)(v129);

          v130 = [(objc_class *)v116.super.isa zoneName];
          v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v132;

          aBlock._countAndFlagsBits = v131;
          aBlock._object = v13;
          v133._countAndFlagsBits = 0x6E656B6F742ELL;
          v133._object = 0xE600000000000000;
          String.append(_:)(v133);
          URL.appendPathComponent(_:)(aBlock);

          v134 = v187;
          (*v196)(v187, v24, v193);
          v135 = sub_10013A930(v134);
          if (v135)
          {

            v10 = static os_log_type_t.default.getter();
            v136 = swift_allocObject();
            *(v136 + 16) = v195;
            v137 = v205;
            *(v136 + 56) = &type metadata for String;
            *(v136 + 64) = v137;
            *(v136 + 32) = v100;
            *(v136 + 40) = a7;
            os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v120, "CloudSync: Skip fetch operation for unchanged zone ID: %@ with existing token", 77, 2, v136);
          }

          else
          {
            sub_10014B134();
            v138 = static os_log_type_t.default.getter();
            v139 = swift_allocObject();
            *(v139 + 16) = v195;
            v140 = v205;
            *(v139 + 56) = &type metadata for String;
            *(v139 + 64) = v140;
            *(v139 + 32) = v100;
            *(v139 + 40) = a7;
            os_log(_:dso:log:_:_:)(v138, &_mh_execute_header, v120, "CloudSync: Adding fetch operation for new zone: %@", 50, 2, v139);

            v24 = v197;
            swift_beginAccess();
            v141 = v116.super.isa;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v142 = v24;
            if (*((*(v24 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v24 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v24 = *((*(v24 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v142 = v197;
            }

            LOBYTE(v10) = v142 + 16;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
          }

          v98 = v209;
          v119(v187, v193);
          a7 = v203;
LABEL_57:
          if (v98 != v208)
          {
            continue;
          }

LABEL_90:
          v143 = v197;
          swift_beginAccess();
          v144 = *(v143 + 16);
          if (v144 >> 62)
          {
            v167 = _CocoaArrayWrapper.endIndex.getter();
            v145 = v197;
            if (v167)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v145 = v143;
            if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_92:
              v146 = v145;
              swift_beginAccess();
              v147 = *(v146 + 16);
              v148 = swift_allocObject();
              v149 = v207;
              v150 = v200;
              v148[2] = v207;
              v148[3] = v150;
              v151 = v177;
              v152 = v172;
              v148[4] = v177;
              v148[5] = v152;
              v148[6] = v173;
              sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
              v153 = v175;
              v154 = v174;
              v155 = v171;
              (*(v175 + 104))(v174, enum case for DispatchQoS.QoSClass.default(_:), v171);
              sub_100162DF4(v151, v170, 0);

              v156 = v150;

              v157 = static OS_dispatch_queue.global(qos:)();
              (*(v153 + 8))(v154, v155);
              v158 = swift_allocObject();
              *(v158 + 16) = v147;
              *(v158 + 24) = sub_100162DE0;
              *(v158 + 32) = v148;
              *(v158 + 40) = v149;
              *(v158 + 48) = v156;
              *(v158 + 56) = v169;
              v216 = sub_1001633A0;
              v217 = v158;
              aBlock._countAndFlagsBits = _NSConcreteStackBlock;
              aBlock._object = 1107296256;
              v214 = sub_1001742E0;
              v215 = &unk_1002BF618;
              v159 = _Block_copy(&aBlock);

              v160 = v156;

              v161 = v189;
              static DispatchQoS.unspecified.getter();
              v211 = _swiftEmptyArrayStorage;
              sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v162, v163, v164);
              sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
              sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
              v165 = v190;
              v166 = v192;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v159);

              (*(v179 + 8))(v165, v166);
              (*(v178 + 8))(v161, v191);

              return;
            }
          }

          sub_10015339C(v200, v177);
          v172(0, 0);
          return;
        }

        break;
      }

LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      swift_once();
    }

    v210 = 0;
    LODWORD(v13) = 0;
    v196 = (v24 & 0xC000000000000001);
    *&v195 = v24 & 0xFFFFFFFFFFFFFF8;
    v186 = &v214;
    v185 = (v179 + 8);
    v184 = (v178 + 8);
    v194 = xmmword_100226C80;
    v183 = xmmword_100226100;
    while (1)
    {
      if (v196)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v210 >= *(v195 + 16))
        {
          goto LABEL_96;
        }

        v46 = *(v24 + 8 * v210 + 32);
      }

      v10 = v46;
      v47 = v210 + 1;
      if (__OFADD__(v210, 1))
      {
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v48 = [objc_opt_self() defaultStore];
      if (!v48)
      {
        __break(1u);
        return;
      }

      v49 = v48;
      v50 = [v48 aa_primaryAppleAccount];

      LODWORD(v209) = v13;
      v208 = v47;
      if (!v50)
      {
        goto LABEL_25;
      }

      v51 = [v50 aa_altDSID];
      if (!v51)
      {
        break;
      }

      v52 = v51;
      a7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

LABEL_26:
      v55 = static os_log_type_t.default.getter();
      v56 = swift_allocObject();
      *(v56 + 16) = v194;
      *(v56 + 56) = sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
      v57 = sub_100162740(&qword_1002F94D8, &unk_1002F7FD0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
      *(v56 + 32) = v10;
      v58 = v205;
      *(v56 + 96) = &type metadata for String;
      *(v56 + 104) = v58;
      if (v54)
      {
        v59 = a7;
      }

      else
      {
        v59 = 0x6E776F6E6B6E75;
      }

      v60 = 0xE700000000000000;
      if (v54)
      {
        v60 = v54;
      }

      *(v56 + 64) = v57;
      *(v56 + 72) = v59;
      v204 = v59;
      v203 = v60;
      *(v56 + 80) = v60;
      v61 = v10;

      os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v40, "CloudSync: Cloud zone deleted: %@ for user: @", 45, 2, v56);

      Strong = swift_unknownObjectWeakLoadStrong();
      v63 = a7;
      if (Strong)
      {
        v64 = Strong;
        v201 = v54;
        v65 = *(Strong + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
        v66 = swift_allocObject();
        *(v66 + 16) = v61;
        *(v66 + 24) = v64;
        v216 = sub_1001633F0;
        v217 = v66;
        aBlock._countAndFlagsBits = _NSConcreteStackBlock;
        aBlock._object = 1107296256;
        v214 = sub_1001742E0;
        v215 = &unk_1002BF5A0;
        v67 = _Block_copy(&aBlock);
        v68 = v61;
        v200 = v65;
        swift_unknownObjectRetain();
        v202 = a7;
        v69 = v189;
        static DispatchQoS.unspecified.getter();
        v212 = _swiftEmptyArrayStorage;
        sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v70, v71, v72);
        sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
        sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
        v73 = v190;
        a7 = v24;
        v74 = v192;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v75 = v200;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v54 = v201;
        _Block_release(v67);
        swift_unknownObjectRelease();

        v76 = v73;
        v40 = v199;
        v77 = v74;
        v24 = a7;
        (*v185)(v76, v77);
        v78 = v69;
        v63 = v202;
        (*v184)(v78, v191);
      }

      if (v209)
      {
      }

      else
      {
        v42 = static os_log_type_t.default.getter();
        v43 = swift_allocObject();
        *(v43 + 16) = v183;
        v44 = v205;
        *(v43 + 56) = &type metadata for String;
        *(v43 + 64) = v44;
        v45 = v203;
        *(v43 + 32) = v204;
        *(v43 + 40) = v45;

        os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v40, "CloudSync: Re-Setup Zones for user: @", 37, 2, v43);

        sub_10015FBAC(v63, v54);

        sub_10014B134();
      }

      v10 = v208;

      ++v210;
      LODWORD(v13) = 1;
      if (v10 == v198)
      {

        v202 = 0;
        goto LABEL_53;
      }
    }

LABEL_25:
    a7 = 0;
    v54 = 0;
    goto LABEL_26;
  }

  v79 = a4;
  v80 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v81 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_100226100;
  aBlock._countAndFlagsBits = a1;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v83 = String.init<A>(describing:)();
  v85 = v84;
  *(v82 + 56) = &type metadata for String;
  *(v82 + 64) = sub_1000EE954();
  *(v82 + 32) = v83;
  *(v82 + 40) = v85;
  os_log(_:dso:log:_:_:)(v80, &_mh_execute_header, v81, "CloudSync: Error during fetch database changes operation: %@", 60, 2, v82);

  sub_10014E48C(a1, 1);
  v79(a1, 1);
}

uint64_t sub_100148AA8(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t (*a6)(uint64_t, void))
{
  if (a2)
  {
    v9 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v10 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000EE954();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "CloudSync: Database Error from fetchZoneChanges: %@", 51, 2, v11);
  }

  else
  {
    v17 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      v19 = v17;
      swift_once();
      v17 = v19;
    }

    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_100300E28, "CloudSync: Database fetchZoneChanges succeeded", 46, 2, _swiftEmptyArrayStorage);
    sub_10015339C(a4, a5);
  }

  return a6(a1, a2 & 1);
}

void sub_100148C8C(unint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v104 = a6;
  v119 = a5;
  v107 = a4;
  v106 = a3;
  v105 = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v116 = &v103[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v103[-v11];
  __chkstk_darwin(v13);
  v124 = &v103[-v14];
  v15 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v16 = qword_100300E28;
    v120 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v17 = swift_allocObject();
    v108 = xmmword_100226100;
    *(v17 + 16) = xmmword_100226100;
    v123 = sub_1000EE870(&qword_1002F93E8, &qword_100229328);
    *(v17 + 56) = v123;
    v122 = sub_1000FA0E0(&qword_1002F93F0, &qword_1002F93E8, &qword_100229328, &protocol conformance descriptor for [A]);
    *(v17 + 64) = v122;
    *(v17 + 32) = a1;

    v109 = v16;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "zoneIDs changed: %@", 19, 2, v17);

    aBlock._countAndFlagsBits = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
      break;
    }

    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v117 = v12;
    v118 = v7;
    if (!v18)
    {
      goto LABEL_24;
    }

LABEL_4:
    v121 = v8;
    v19 = 0;
    v125 = a1 & 0xC000000000000001;
    v12 = (a1 & 0xFFFFFFFFFFFFFF8);
    v15 = 0x800000010026BC20;
    while (1)
    {
      if (v125)
      {
        v20 = a1;
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v12 + 2))
        {
          goto LABEL_21;
        }

        v20 = a1;
        v21 = *(a1 + 8 * v19 + 32);
      }

      a1 = v21;
      v22 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v8 = v18;
      v23 = [v21 zoneName];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      if (v7 == 0xD000000000000016 && 0x800000010026BC20 == v25)
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v27)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }
      }

      v18 = v8;
      ++v19;
      a1 = v20;
      if (v22 == v8)
      {
        countAndFlagsBits = aBlock._countAndFlagsBits;
        v12 = v117;
        v7 = v118;
        v8 = v121;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  v117 = v12;
  v118 = v7;
  if (v18)
  {
    goto LABEL_4;
  }

LABEL_24:
  countAndFlagsBits = _swiftEmptyArrayStorage;
LABEL_25:
  v29 = static os_log_type_t.default.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = v108;
  v31 = v122;
  *(v30 + 56) = v123;
  *(v30 + 64) = v31;
  *(v30 + 32) = countAndFlagsBits;

  v32 = v109;
  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v109, "zoneIDs changed(after filter): %@", 33, 2, v30);

  v33 = countAndFlagsBits;
  if ((countAndFlagsBits & 0x8000000000000000) == 0 && (countAndFlagsBits & 0x4000000000000000) == 0)
  {
    v34 = *(countAndFlagsBits + 16);
    if (v34)
    {
      goto LABEL_28;
    }

LABEL_60:
    v100 = v33;
    v101 = static os_log_type_t.default.getter();
    v102 = swift_allocObject();
    *(v102 + 16) = v108;
    *(v102 + 56) = v123;
    *(v102 + 64) = v31;
    *(v102 + 32) = v100;
    os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v32, "zoneIDs is empty, nothing to fetch", 34, 2, v102);

    v105(0, 0);
    return;
  }

  while (2)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();
    v33 = countAndFlagsBits;
    if (!v34)
    {
      goto LABEL_60;
    }

LABEL_28:
    if (v34 < 1)
    {
      __break(1u);
LABEL_63:
      __break(1u);
      break;
    }

    v35 = 0;
    countAndFlagsBits = &v8[1];
    v114 = v8 + 4;
    v115 = v33 & 0xC000000000000001;
    v125 = _swiftEmptyDictionarySingleton;
    v110 = xmmword_100226C80;
    v112 = v34;
    v113 = v33;
    v111 = v8 + 1;
    while (2)
    {
      if (v115)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v33 + 8 * v35 + 32);
      }

      v8 = v39;
      v40 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
      v41 = [v119 scope];
      v42 = v116;
      sub_10013A598();
      URL.appendingPathComponent(_:isDirectory:)();
      v123 = *countAndFlagsBits;
      v123(v42, v7);
      if (v41 == 3)
      {
        v43 = 0x646572616853;
        v44 = 0xE600000000000000;
      }

      else
      {
        if (v41 == 2)
        {
          v43 = 0x65746176697250;
        }

        else
        {
          if (v41 == 1)
          {
            v43 = 0x63696C627550;
            v44 = 0xE600000000000000;
            goto LABEL_44;
          }

          v45 = static os_log_type_t.error.getter();
          os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v32, "Unknown CKDatabase.Scope!", 25, 2, _swiftEmptyArrayStorage);
          v43 = 0x6E776F6E6B6E55;
        }

        v44 = 0xE700000000000000;
      }

LABEL_44:
      URL.appendPathComponent(_:)(*&v43);
      v46 = [v8 ownerName];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50._countAndFlagsBits = v47;
      v50._object = v49;
      URL.appendPathComponent(_:)(v50);

      v51 = [v8 zoneName];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      aBlock._countAndFlagsBits = v52;
      aBlock._object = v54;
      v55._countAndFlagsBits = 0x6E656B6F742ELL;
      v55._object = 0xE600000000000000;
      String.append(_:)(v55);
      URL.appendPathComponent(_:)(aBlock);

      v56 = v124;
      (v114->isa)(v124, v12, v7);
      v31 = sub_10013A930(v56);
      v57 = sub_10013A930(v56);
      [v40 setPreviousServerChangeToken:v57];

      v58 = v125;
      if ((v125 & 0xC000000000000001) != 0)
      {
        if (v125 >= 0)
        {
          v58 = v125 & 0xFFFFFFFFFFFFFF8;
        }

        v59 = v8;
        v60 = v40;
        v61 = __CocoaDictionary.count.getter();
        if (__OFADD__(v61, 1))
        {
          goto LABEL_58;
        }

        v58 = sub_10015C640(v58, v61 + 1);
      }

      else
      {
        v62 = v8;
        v63 = v40;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock._countAndFlagsBits = v58;
      v122 = v40;
      sub_1000F9448(v40, v8, isUniquelyReferenced_nonNull_native);

      v125 = aBlock._countAndFlagsBits;
      LODWORD(v121) = static os_log_type_t.default.getter();
      v65 = swift_allocObject();
      *(v65 + 16) = v110;
      v66 = [v8 zoneName];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      *(v65 + 56) = &type metadata for String;
      v70 = sub_1000EE954();
      v71 = v70;
      *(v65 + 64) = v70;
      *(v65 + 32) = v67;
      *(v65 + 40) = v69;
      if (!v31)
      {
        v36 = (v65 + 72);
        *(v65 + 96) = &type metadata for String;
        *(v65 + 104) = v70;
LABEL_31:
        v12 = v117;
        v7 = v118;
        v37 = v122;
        *v36 = 7104878;
        v38 = 0xE300000000000000;
        goto LABEL_32;
      }

      v72 = [v31 data];
      v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = Data.hexString.getter(v73, v75);
      v38 = v77;
      sub_1000EF870(v73, v75);
      v36 = (v65 + 72);
      *(v65 + 96) = &type metadata for String;
      *(v65 + 104) = v71;
      if (!v38)
      {
        v32 = v109;
        goto LABEL_31;
      }

      *v36 = v76;
      v32 = v109;
      v12 = v117;
      v7 = v118;
      v37 = v122;
LABEL_32:
      ++v35;
      *(v65 + 80) = v38;
      os_log(_:dso:log:_:_:)(v121, &_mh_execute_header, v32, "Old change token for %@: %@", 27, 2, v65);

      countAndFlagsBits = v111;
      v123(v124, v7);
      v33 = v113;
      if (v112 != v35)
      {
        continue;
      }

      break;
    }

    v78 = v113;
    v79 = static os_log_type_t.default.getter();
    v80 = swift_allocObject();
    *(v80 + 16) = v108;
    *(v80 + 56) = sub_1000EE870(&qword_1002F93F8, &qword_100229330);
    *(v80 + 64) = sub_1000FA0E0(&qword_1002F9400, &qword_1002F93F8, &qword_100229330, &protocol conformance descriptor for [A : B]);
    v81 = v125;
    *(v80 + 32) = v125;
    swift_retain_n();
    os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v32, "optionsByRecordZoneID: %@", 25, 2, v80);

    v82 = swift_allocObject();
    *(v82 + 16) = _swiftEmptyArrayStorage;
    v83 = swift_allocObject();
    *(v83 + 16) = _swiftEmptyArrayStorage;
    sub_1000FA784(0, &qword_1002F9408, CKFetchRecordZoneChangesOperation_ptr);

    v84 = v78;
    v131.is_nil = v81;
    v85.super.super.super.super.isa = CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v131, v132).super.super.super.super.isa;
    v86 = *(v107 + 80);
    v87 = v85.super.super.super.super.isa;
    [(objc_class *)v87 setCallbackQueue:v86];
    v88 = [(objc_class *)v87 configuration];
    if (!v88)
    {
      goto LABEL_63;
    }

    v89 = v88;
    [v88 setAutomaticallyRetryNetworkFailures:0];

    v90 = [(objc_class *)v87 configuration];
    if (v90)
    {

      [v90 setDiscretionaryNetworkBehavior:0];

      [(objc_class *)v87 setFetchAllChanges:1];

      CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter();

      CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter();
      v91 = swift_allocObject();
      v92 = v104 & 1;
      *(v91 + 16) = v104 & 1;
      v93 = v107;
      *(v91 + 24) = v107;
      *(v91 + 32) = v83;
      v94 = v119;
      *(v91 + 40) = v82;
      *(v91 + 48) = v94;

      countAndFlagsBits = v94;
      CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.setter();
      v95 = swift_allocObject();
      *(v95 + 16) = v92;
      *(v95 + 24) = v84;
      *(v95 + 32) = v93;
      v96 = v106;
      *(v95 + 40) = v105;
      *(v95 + 48) = v96;

      CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter();
      v8 = *(v93 + 64);
      v7 = swift_allocObject();
      *(v7 + 16) = v87;
      *(v7 + 24) = countAndFlagsBits;
      v31 = swift_allocObject();
      v31[2] = sub_1001628E4;
      v31[3] = v7;
      v129 = sub_1001633EC;
      v130 = v31;
      aBlock._countAndFlagsBits = _NSConcreteStackBlock;
      aBlock._object = 1107296256;
      v127 = sub_100174328;
      v128 = &unk_1002BEB78;
      v97 = _Block_copy(&aBlock);
      v32 = v130;
      v98 = v87;
      v99 = countAndFlagsBits;

      dispatch_sync(v8, v97);

      _Block_release(v97);
      LOBYTE(v98) = swift_isEscapingClosureAtFileLocation();

      if ((v98 & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_58:
      __break(1u);
      continue;
    }

    break;
  }

  __break(1u);
}

uint64_t sub_100149A28(void *a1, void *a2, char a3, uint64_t a4)
{
  v7 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v8 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  v10 = a1;
  v11 = [v10 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v9 + 56) = &type metadata for String;
  v15 = sub_1000EE954();
  *(v9 + 64) = v15;
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  v16 = v8;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "RecordID changed: %@", 20, 2, v9);

  if (a3)
  {
    v17 = static os_log_type_t.error.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100226C80;
    v19 = v10;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = v15;
    *(v18 + 32) = v21;
    *(v18 + 40) = v23;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v24 = String.init<A>(describing:)();
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v15;
    *(v18 + 72) = v24;
    *(v18 + 80) = v25;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v8, "%@ failed to be fetched: %@", 27, 2, v18, a2, a2);
  }

  else
  {
    swift_beginAccess();
    a2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    if (IsAppleInternalBuild())
    {
      v26 = static os_log_type_t.default.getter();
    }

    else
    {
      v26 = static os_log_type_t.debug.getter();
    }

    v27 = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100226C80;
    v29 = [v10 recordName];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = v15;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    sub_100143BEC();
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v15;
    *(v28 + 72) = v33;
    *(v28 + 80) = v34;
    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v16, "CKRecord fetched: %@ - %@", 25, 2, v28, a2);
  }
}

uint64_t sub_100149D64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = static os_log_type_t.debug.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v9 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226100;
  *(v10 + 56) = sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  *(v10 + 64) = sub_100162740(&qword_1002F9418, &unk_1002F8B50, CKRecordID_ptr, &protocol conformance descriptor for NSObject);
  *(v10 + 32) = a1;
  v11 = a1;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Record deleted: %@", 18, 2, v10);

  swift_beginAccess();
  v12 = *(a4 + 16);
  v13 = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1001CF4F4(0, v12[2] + 1, 1, v12);
    *(a4 + 16) = v12;
  }

  v16 = v12[2];
  v15 = v12[3];
  if (v16 >= v15 >> 1)
  {
    v12 = sub_1001CF4F4((v15 > 1), v16 + 1, 1, v12);
  }

  v12[2] = v16 + 1;
  v17 = &v12[3 * v16];
  v17[4] = v13;
  v17[5] = a2;
  v17[6] = a3;
  *(a4 + 16) = v12;
  return swift_endAccess();
}

void sub_100149F60(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, char a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v70 = a8;
  v73 = a7;
  LOBYTE(v10) = a6;
  v72 = a5;
  v74 = a2;
  LODWORD(v71) = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v12 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v13 = swift_allocObject();
  v69 = xmmword_100226C80;
  *(v13 + 16) = xmmword_100226C80;
  v14 = v10 & 1;
  v76 = v10 & 1;
  v15 = String.init<A>(describing:)();
  v17 = v16;
  *(v13 + 56) = &type metadata for String;
  v18 = sub_1000EE954();
  *(v13 + 64) = v18;
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v19 = [a1 zoneName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v18;
  *(v13 + 72) = v20;
  *(v13 + 80) = v22;
  os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v12, "record zone fetch complete, database, %@, zone, %@", 50, 2, v13);

  if ((v72 & 0x100) != 0)
  {
    v49 = static os_log_type_t.error.getter();
    v50 = swift_allocObject();
    *(v50 + 16) = v69;
    v76 = v14;
    v51 = String.init<A>(describing:)();
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = v18;
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    v53 = v74;
    swift_getErrorValue();
    v54 = Error.localizedDescription.getter();
    *(v50 + 96) = &type metadata for String;
    *(v50 + 104) = v18;
    *(v50 + 72) = v54;
    *(v50 + 80) = v55;
    os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v12, "Error fetching zone changes for %@ database: %@", 47, 2, v50);

    sub_10014E48C(v53, 1);
  }

  else
  {
    *&v69 = a10;
    v72 = static os_log_type_t.default.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1002290E0;
    v76 = v14;
    v24 = String.init<A>(describing:)();
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v18;
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    v71 = a1;
    v26 = [a1 zoneName];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v18;
    *(v23 + 72) = v27;
    *(v23 + 80) = v29;
    v30 = [v74 data];
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = Data.hexString.getter(v31, v33);
    v36 = v35;
    sub_1000EF870(v31, v33);
    *(v23 + 136) = &type metadata for String;
    *(v23 + 144) = v18;
    *(v23 + 112) = v34;
    *(v23 + 120) = v36;
    a1 = v70;
    swift_beginAccess();
    v37 = v70[2];
    if (v37 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v73;
    *(v23 + 176) = &type metadata for Int;
    *(v23 + 184) = &protocol witness table for Int;
    *(v23 + 152) = v38;
    swift_beginAccess();
    v40 = *(*(a9 + 16) + 16);
    *(v23 + 216) = &type metadata for Int;
    *(v23 + 224) = &protocol witness table for Int;
    *(v23 + 192) = v40;
    os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v12, "record zone fetch database, %@, zone, %@, token: %@, records changed: %d, deleted: %d,", 86, 2, v23);

    swift_beginAccess();
    v41 = *(v39 + 120);
    v42 = 1 << *(v41 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v41 + 64);
    v10 = (v42 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v45 = 0;
    if (v44)
    {
      while (1)
      {
        v46 = v45;
LABEL_13:
        v47 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v48 = *(*(v41 + 48) + 8 * (v47 | (v46 << 6)));

        sub_100160CF0(v48, a1 + 2);

        if (!v44)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v46 >= v10)
      {
        break;
      }

      v44 = *(v41 + 64 + 8 * v46);
      ++v45;
      if (v44)
      {
        v45 = v46;
        goto LABEL_13;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v57 = Strong;
      swift_beginAccess();
      v58 = *(a9 + 16);
      swift_beginAccess();
      v59 = a1[2];

      sub_10015EEF4(v39, v58, v59, v57);

      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    a1[2] = _swiftEmptyArrayStorage;

    swift_beginAccess();
    *(a9 + 16) = _swiftEmptyArrayStorage;

    v60 = v39 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
    v61 = *(v60 + *(type metadata accessor for CloudCoordinatorConfiguration(0) + 32));

    v62 = v71;
    v63 = [v71 zoneName];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v75[0] = v64;
    v75[1] = v66;
    __chkstk_darwin(v67);
    v68[2] = v75;
    LOBYTE(v63) = sub_10017CE74(sub_1001628EC, v68, v61);

    if (v63)
    {
      sub_10016106C(v69, v62, v74);
    }
  }
}

uint64_t sub_10014A618(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v8 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v9 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226C80;
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_1000EE954();
  *(v10 + 64) = v14;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = sub_1000EE870(&qword_1002F93E8, &qword_100229328);
  *(v10 + 104) = sub_1000FA0E0(&qword_1002F93F0, &qword_1002F93E8, &qword_100229328, &protocol conformance descriptor for [A]);
  *(v10 + 72) = a4;

  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Fetch record zone changes complete, database, %@, zoneIds, %@", 61, 2, v10);

  v15 = static os_log_type_t.default.getter();
  if (a2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100226C80;
    v17 = String.init<A>(describing:)();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v14;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v14;
    *(v16 + 72) = v19;
    *(v16 + 80) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v9, "Error fetching zone changes for %@ database: %@", 47, 2, v16);

    sub_10014E48C(a1, 1);
    v21 = a1;
    v22 = 1;
  }

  else
  {
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100226100;
    v24 = String.init<A>(describing:)();
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v14;
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v9, "Successfully fetched zone changes for database: %@", 50, 2, v23);

    v21 = 0;
    v22 = 0;
  }

  return a6(v21, v22);
}

id sub_10014A8FC(void *a1, void *a2)
{
  v4 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v5 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226100;
  *(v6 + 56) = sub_1000FA784(0, &qword_1002F9408, CKFetchRecordZoneChangesOperation_ptr);
  *(v6 + 64) = sub_100162740(&qword_1002F9410, &qword_1002F9408, CKFetchRecordZoneChangesOperation_ptr, &protocol conformance descriptor for NSObject);
  *(v6 + 32) = a1;
  v7 = a1;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Adding Cloud operation %@", 25, 2, v6);

  return [a2 addOperation:v7];
}

uint64_t sub_10014AA54(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v8 = type metadata accessor for Date();
  v56 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 40))
  {
    v20 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v21 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100226C80;
    v23 = sub_1000EE954();
    v24 = v23;
    v25 = 0x206563726F46;
    if ((v57 & 1) == 0)
    {
      v25 = 0;
    }

    v26 = 0xE000000000000000;
    if (v57)
    {
      v26 = 0xE600000000000000;
    }

    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = v23;
    *(v22 + 32) = v25;
    *(v22 + 40) = v26;
    v27 = *(v4 + 40);
    if (v27)
    {
      v28 = [v27 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = objc_opt_self();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v31 = [v29 localizedStringFromDate:isa dateStyle:2 timeStyle:2];

      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      (*(v56 + 8))(v10, v8);
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    aBlock = v32;
    v60 = v34;
    sub_1000EE870(&qword_1002F94C0, qword_100227A98);
    v44 = String.init<A>(describing:)();
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v24;
    *(v22 + 72) = v44;
    *(v22 + 80) = v45;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "CloudSync: %@Fetch already in-progress: %@", 42, 2, v22);
  }

  v56 = v12;
  switch(a1)
  {
    case 1:
      v46 = static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        v51 = v46;
        swift_once();
        v46 = v51;
      }

      v47 = qword_100300E28;
      v48 = "NOT USING PUBLIC DB";
      break;
    case 3:
      v46 = static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        v50 = v46;
        swift_once();
        v46 = v50;
      }

      v47 = qword_100300E28;
      v48 = "NOT USING SHARED DB";
      break;
    case 2:
      v54 = v17;
      v55 = v16;
      v35 = sub_100140CF8(v16);
      v36 = [v35 privateCloudDatabase];

      v37 = swift_allocObject();
      *(v37 + 16) = v4;
      *(v37 + 24) = v36;
      *(v37 + 32) = v57 & 1;
      *(v37 + 33) = 0;
      *(v37 + 40) = a3;
      *(v37 + 48) = a4;
      v63 = sub_100162D38;
      v64 = v37;
      aBlock = _NSConcreteStackBlock;
      v60 = 1107296256;
      v61 = sub_1001742E0;
      v62 = &unk_1002BF460;
      v38 = _Block_copy(&aBlock);

      v39 = v36;

      static DispatchQoS.unspecified.getter();
      v58 = _swiftEmptyArrayStorage;
      sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v40, v41, v42);
      sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
      sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);

      (*(v56 + 8))(v14, v11);
      (*(v54 + 8))(v19, v55);

    default:
      v46 = static os_log_type_t.error.getter();
      if (qword_1002F7AD8 != -1)
      {
        v52 = v46;
        swift_once();
        v46 = v52;
      }

      v47 = qword_100300E28;
      v48 = "Unknown CKDatabase.Scope!";
      v49 = 25;
      goto LABEL_26;
  }

  v49 = 19;
LABEL_26:

  return os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v47, v48, v49, 2, _swiftEmptyArrayStorage);
}

void sub_10014B134()
{
  v82 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for DispatchQoS();
  v3 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = v0;
  v10 = *(v0 + 72);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.notOnQueue(_:), v5, v7);
  v78 = v10;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

  v71 = v3;
  i = v1;
  v5 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v12 = qword_100300E28;
    v13 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v14 = swift_allocObject();
    v77 = xmmword_100226100;
    *(v14 + 16) = xmmword_100226100;
    type metadata accessor for CloudCoordinatorConfiguration(0);

    v15 = Array.description.getter();
    v17 = v16;

    *(v14 + 56) = &type metadata for String;
    v18 = sub_1000EE954();
    *(v14 + 64) = v18;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v12, "setupZones: %@", 14, 2, v14);

    v19 = sub_10015FAF0();
    v21 = v20;
    v22 = sub_1001605C4(v19, v20);

    v24 = sub_10016076C(v23);

    v25 = sub_10015E4EC(v22, v24);
    if (!v25[2])
    {
      break;
    }

    v83 = dispatch_group_create();
    v26 = static os_log_type_t.default.getter();
    v76 = v13;
    v27 = swift_allocObject();
    v75 = xmmword_100226C80;
    *(v27 + 16) = xmmword_100226C80;
    v5 = &qword_100229358;
    *(v27 + 56) = sub_1000EE870(&qword_1002F94A8, &qword_100229358);
    v28 = sub_1000FA0E0(&unk_1002F94B0, &qword_1002F94A8, &qword_100229358, &protocol conformance descriptor for Set<A>);
    *(v27 + 32) = v25;
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v18;
    v89 = v18;
    v29 = 0x6E776F6E6B6E75;
    v87 = v19;
    if (v21)
    {
      v29 = v19;
    }

    v30 = 0xE700000000000000;
    if (v21)
    {
      v30 = v21;
    }

    *(v27 + 64) = v28;
    *(v27 + 72) = v29;
    *(v27 + 80) = v30;

    v84 = v21;

    v85 = v12;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v12, "Missing zones detected: %@ for user: %@", 39, 2, v27);

    v31 = 0;
    v86 = v25;
    v32 = v25[7];
    v70 = v25 + 7;
    v33 = 1 << *(v25 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & v32;
    v36 = (v33 + 63) >> 6;
    v73 = v92;
    v72 = (i + 8);
    ++v71;
    for (i = v36; v35; v36 = i)
    {
      v37 = v31;
      v38 = v89;
      v39 = v86;
      v40 = v87;
LABEL_17:
      v41 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v42 = (v39[6] + ((v37 << 10) | (16 * v41)));
      v43 = *v42;
      v44 = v42[1];

      v45 = v83;
      dispatch_group_enter(v83);
      v46 = static os_log_type_t.default.getter();
      v47 = swift_allocObject();
      *(v47 + 16) = v77;
      *(v47 + 56) = &type metadata for String;
      *(v47 + 64) = v38;
      *(v47 + 32) = v43;
      *(v47 + 40) = v44;

      v48 = v85;
      os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v85, "Attempting to create zone: %@", 29, 2, v47);

      v5 = swift_allocObject();
      v5[2] = v40;
      v5[3] = v84;
      v5[4] = v43;
      v49 = v88;
      v5[5] = v44;
      v5[6] = v49;
      v5[7] = v45;

      v50 = v45;
      v51 = static os_log_type_t.default.getter();
      v52 = swift_allocObject();
      *(v52 + 16) = v75;
      *(v52 + 56) = &type metadata for Int;
      *(v52 + 64) = &protocol witness table for Int;
      *(v52 + 32) = 0;
      v53 = v89;
      *(v52 + 96) = &type metadata for String;
      *(v52 + 104) = v53;
      *(v52 + 72) = v43;
      *(v52 + 80) = v44;

      os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v48, "Setup zone (attempt: %d): %@", 28, 2, v52);

      v54 = swift_allocObject();
      v54[2] = v43;
      v54[3] = v44;
      v54[4] = v49;
      v54[5] = sub_100162CAC;
      v54[6] = v5;
      v54[7] = 0;
      v92[2] = sub_10016339C;
      v92[3] = v54;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v92[0] = sub_1001742E0;
      v92[1] = &unk_1002BF410;
      v55 = _Block_copy(aBlock);

      v56 = v79;
      static DispatchQoS.unspecified.getter();
      v90 = _swiftEmptyArrayStorage;
      sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v57, v58, v59);
      sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
      sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
      v61 = v81;
      v60 = v82;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v55);

      (*v72)(v61, v60);
      (*v71)(v56, v80);
    }

    v38 = v89;
    v39 = v86;
    v40 = v87;
    while (1)
    {
      v37 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v37 >= v36)
      {

        v62 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v62, &_mh_execute_header, v85, "Waiting for all zone create tasks to complete.", 46, 2, _swiftEmptyArrayStorage);
        v63 = v83;
        OS_dispatch_group.wait()();

        return;
      }

      v35 = v70[v37];
      ++v31;
      if (v35)
      {
        v31 = v37;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  v64 = static os_log_type_t.default.getter();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_100226C80;
  *(v65 + 56) = sub_1000EE870(&qword_1002F7F00, &qword_1002284F0);
  v66 = sub_1000FA0E0(&unk_1002F9310, &qword_1002F7F00, &qword_1002284F0, &protocol conformance descriptor for [A]);
  *(v65 + 32) = v22;
  *(v65 + 96) = &type metadata for String;
  *(v65 + 104) = v18;
  v67 = 0x6E776F6E6B6E75;
  if (v21)
  {
    v67 = v19;
  }

  v68 = 0xE700000000000000;
  if (v21)
  {
    v68 = v21;
  }

  *(v65 + 64) = v66;
  *(v65 + 72) = v67;
  *(v65 + 80) = v68;
  os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v12, "All zones already exist for this user: %@ (user: %@)", 52, 2, v65);
}

void sub_10014BB2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  if (a1)
  {
    swift_errorRetain();
    v10 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v11 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226C80;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    v16 = sub_1000EE954();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = v16;
    v17 = 0x6E776F6E6B6E75;
    if (a3)
    {
      v17 = a2;
    }

    v18 = 0xE700000000000000;
    if (a3)
    {
      v18 = a3;
    }

    *(v12 + 64) = v16;
    *(v12 + 72) = v17;
    *(v12 + 80) = v18;

    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Error creating zone: %@ for user: %@", 36, 2, v12);
  }

  else
  {
    v21 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v22 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100226C80;
    *(v23 + 56) = &type metadata for String;
    v24 = sub_1000EE954();
    *(v23 + 32) = a4;
    *(v23 + 40) = a5;
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v24;
    if (a3)
    {
      v25 = a2;
    }

    else
    {
      v25 = 0x6E776F6E6B6E75;
    }

    v26 = 0xE700000000000000;
    if (a3)
    {
      v26 = a3;
    }

    *(v23 + 64) = v24;
    *(v23 + 72) = v25;
    *(v23 + 80) = v26;

    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Completed Zone Setup: %@ for user: %@", 37, 2, v23);

    sub_100161528(a4, a5, a2, a3);
  }

  dispatch_group_leave(a7);
}

uint64_t sub_10014BDC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v28 = *(v12 - 8);
  v29 = v12;
  __chkstk_darwin(v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v16 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100226C80;
  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = a3;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = sub_1000EE954();
  *(v17 + 72) = a1;
  *(v17 + 80) = a2;

  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Setup zone (attempt: %d): %@", 28, 2, v17);

  if (a3 > 2)
  {
    sub_10015C3E8();
    swift_allocError();
    *v26 = 3;
    v31();
  }

  else
  {
    v27[1] = *(v5 + 72);
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v19 = v31;
    v20 = v32;
    v18[4] = v5;
    v18[5] = v19;
    v18[6] = v20;
    v18[7] = a3;
    aBlock[4] = sub_100162C20;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002BF2A8;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v33 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v22, v23, v24);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v30 + 8))(v11, v9);
    (*(v28 + 8))(v14, v29);
  }
}

void sub_10014C204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(CKRecordZone);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithZoneName:v13];

  sub_1000FA784(0, &qword_1002F9480, CKModifyRecordZonesOperation_ptr);
  sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002290F0;
  *(v15 + 32) = v14;
  v16 = v14;
  v17 = _swiftEmptyArrayStorage;
  v18 = v15;
  v19 = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(*(&v17 - 1), v27).super.super.super.super.isa;
  v20 = sub_100140F64();
  [(objc_class *)v19 setGroup:v20];

  v21 = swift_allocObject();
  v21[2] = v16;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a3;
  v21[6] = a1;
  v21[7] = a2;
  v21[8] = a6;
  v22 = v16;

  CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter();
  if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
  {
    [(objc_class *)v19 setQualityOfService:25];
  }

  v23 = [(objc_class *)v19 configuration];
  if (v23)
  {
    v24 = v23;
    [v23 setAutomaticallyRetryNetworkFailures:0];

    v25 = [(objc_class *)v19 configuration];
    if (v25)
    {
      [v25 setDiscretionaryNetworkBehavior:0];

      swift_allocObject();
      v26 = swift_weakInit();
      __chkstk_darwin(v26);
      sub_1000EE870(&qword_1002F92E8, &unk_100229290);
      OS_dispatch_queue.sync<A>(execute:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10014C4D4(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v14 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v15 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000EE954();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Error creating zone: %@", 23, 2, v16);

    v20 = swift_allocObject();
    v20[2] = a4;
    v20[3] = a5;
    v20[4] = a6;
    v20[5] = a7;
    v20[6] = a8;
    v20[7] = a9;

    v22 = sub_100140CF8(v21);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_100162C5C;
    *(v23 + 24) = v20;
    aBlock[4] = sub_100163398;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001634D8;
    aBlock[3] = &unk_1002BF348;
    v24 = _Block_copy(aBlock);

    [v22 accountInfoWithCompletionHandler:v24];
    _Block_release(v24);
  }

  else
  {
    v26 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v27 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100226100;
    *(v28 + 56) = sub_1000FA784(0, &qword_1002F9488, CKRecordZone_ptr);
    *(v28 + 64) = sub_100162740(&qword_1002F94A0, &qword_1002F9488, CKRecordZone_ptr, &protocol conformance descriptor for NSObject);
    *(v28 + 32) = a3;
    v29 = a3;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Created Zone: %@", 16, 2, v28);

    a4(0);
  }
}

uint64_t sub_10014C848(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a6;
  v58 = a8;
  v59 = a5;
  v60 = a7;
  v66 = a3;
  v67 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v10 - 8);
  v64 = v10;
  __chkstk_darwin(v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchTime();
  v65 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  v22 = type metadata accessor for DispatchQoS.QoSClass();
  v23 = *(v22 - 8);
  *&v24 = __chkstk_darwin(v22).n128_u64[0];
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v27 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v28 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100226100;
    aBlock[0] = a1;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_1000EE954();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "Unable to get account info - %@", 31, 2, v29);

    return (v66)(a1);
  }

  if ([a1 accountStatus] == 3)
  {
    v34 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      v51 = v34;
      swift_once();
      v34 = v51;
    }

    os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, qword_100300E28, "No account found, move on finish setup", 38, 2, _swiftEmptyArrayStorage);
    sub_10015C3E8();
    swift_allocError();
    *v35 = 1;
LABEL_16:
    v66();
  }

  v36 = [a1 supportsDeviceToDeviceEncryption];
  v37 = static os_log_type_t.error.getter();
  if (!v36)
  {
    if (qword_1002F7AD8 != -1)
    {
      v53 = v37;
      swift_once();
      v37 = v53;
    }

    os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, qword_100300E28, "Error creating Zone. Try again when Manatee is Available", 56, 2, _swiftEmptyArrayStorage);
    sub_10015C3E8();
    swift_allocError();
    *v50 = 2;
    goto LABEL_16;
  }

  if (qword_1002F7AD8 != -1)
  {
    v52 = v37;
    swift_once();
    v37 = v52;
  }

  os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, qword_100300E28, "Failure creating Zone. retrying...", 34, 2, _swiftEmptyArrayStorage);
  sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
  (*(v23 + 104))(v26, enum case for DispatchQoS.QoSClass.default(_:), v22);
  v55 = static OS_dispatch_queue.global(qos:)();
  (*(v23 + 8))(v26, v22);
  static DispatchTime.now()();
  + infix(_:_:)();
  v38 = *(v65 + 8);
  v65 += 8;
  v56 = v38;
  v38(v18, v16);
  v39 = swift_allocObject();
  v40 = v60;
  v42 = v57;
  v41 = v58;
  v39[2] = v59;
  v39[3] = v42;
  v39[4] = v40;
  v39[5] = v41;
  v43 = v67;
  v39[6] = v66;
  v39[7] = v43;
  aBlock[4] = sub_100162C70;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF398;
  v44 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v68 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v45, v46, v47);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  v48 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v49 = v55;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v44);

  (*(v63 + 8))(v12, v48);
  (*(v61 + 8))(v15, v62);
  v56(v21, v16);
}

uint64_t sub_10014D010()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    v11 = v2;
    swift_once();
    v2 = v11;
  }

  v3 = qword_100300E28;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_100300E28, "Add listener for CKAccountChanged", 33, 2, _swiftEmptyArrayStorage);
  [v1 addObserver:v0 selector:"accountDidChange:" name:CKAccountChangedNotification object:0];
  [v1 addObserver:v0 selector:"onIdentityUpdateNotification" name:CKIdentityUpdateNotification object:0];
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v3, "Add listener for CKIdentityUpdateNotification", 45, 2, _swiftEmptyArrayStorage);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_1000EE870(&qword_1002F9490, &qword_100229348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100226100;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100162C10;
  *(v7 + 24) = v5;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x800000010026CE80;
  *(inited + 48) = sub_10015C3A0;
  *(inited + 56) = v7;

  v8 = sub_1000F9B20(inited);
  swift_setDeallocating();
  sub_1000EEE6C(inited + 32, &qword_1002F9498, &qword_100229350);
  v9 = _s15audioaccessoryd24DarwinNotificationHelperC20notificationHandlersACSgSDySSyycG_tcfC_0(v8);

  *(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_identityUpdateNotificationListener) = v9;
}

uint64_t sub_10014D268(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    v17 = v9;
    swift_once();
    v9 = v17;
  }

  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_100300E28, "Darwin CKIdentityUpdateNotification", 35, 2, _swiftEmptyArrayStorage);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 72);
    v19 = v2;
    v20 = result;
    v11 = swift_allocObject();
    v21 = v5;
    v12 = v11;
    swift_weakInit();
    aBlock[4] = sub_100162C18;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002BF258;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v14, v15, v16);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);
    (*(v19 + 8))(v4, v1);
    (*(v6 + 8))(v8, v21);
  }

  return result;
}

uint64_t sub_10014D5F4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226100;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000EE954();
    *(v5 + 32) = 0xD00000000000001ELL;
    *(v5 + 40) = 0x800000010026CDE0;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "%@", 2, 2, v5);

    if (*(v2 + 104) == 1)
    {
      v6 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v4, "Manatee already available", 25, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      sub_100152F5C(150.0);
    }
  }

  return result;
}

uint64_t sub_10014D774(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v3 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226100;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_1000EE954();
  *(v4 + 32) = 0xD00000000000001ELL;
  *(v4 + 40) = 0x800000010026CDE0;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "%@", 2, 2, v4);

  if (*(v1 + 104))
  {
    v5 = static os_log_type_t.default.getter();

    return os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v3, "Manatee already available", 25, 2, _swiftEmptyArrayStorage);
  }

  else
  {

    return sub_100152F5C(150.0);
  }
}

uint64_t sub_10014D91C(void *a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v41 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 72);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.notOnQueue(_:), v9, v11);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v16 = (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = swift_allocObject();
  v13[16] = 1;
  v37 = v13 + 16;
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = sub_10015FAF0();
  v33 = v15;
  v34 = v7;
  v19 = v18;
  v21 = v20;
  v22 = swift_allocObject();
  v23 = v39;
  v22[2] = v38;
  v22[3] = v23;
  v36 = v19;
  v22[4] = v19;
  v22[5] = v21;
  v22[6] = v13;
  v22[7] = v17;
  v22[8] = v2;
  aBlock[4] = sub_100162BCC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF1B8;
  v24 = _Block_copy(aBlock);
  v38 = v21;

  v35 = v17;

  v25 = v40;
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v26, v27, v28);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v4 + 8))(v6, v3);
  (*(v41 + 8))(v25, v34);

  v16 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_5:
    v32 = v16;
    swift_once();
    v16 = v32;
  }

  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_100300E28, "Waiting for all zone delete tasks to complete.", 46, 2, _swiftEmptyArrayStorage);
  v29 = v35;
  OS_dispatch_group.wait()();
  sub_10015FBAC(v36, v38);

  swift_beginAccess();
  v30 = v13[16];

  return v30;
}

void sub_10014DE00(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = a1;
  v15._object = a2;
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v15, v16).super.isa;
  sub_1000FA784(0, &qword_1002F9480, CKModifyRecordZonesOperation_ptr);
  sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = xmmword_1002290F0;
  *(v18 + 32) = isa;
  v20 = isa;
  v39.value._rawValue = _swiftEmptyArrayStorage;
  v39.is_nil = v19;
  v21.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v39, v40).super.super.super.super.isa;
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a1;
  v22[6] = a2;
  v22[7] = a6;
  aBlock[4] = sub_100162BE0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10014E468;
  aBlock[3] = &unk_1002BF208;
  v23 = _Block_copy(aBlock);

  v24 = a6;

  [(objc_class *)v21.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v23];
  _Block_release(v23);
  if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
  {
    [(objc_class *)v21.super.super.super.super.isa setQualityOfService:25];
  }

  v25 = v21.super.super.super.super.isa;
  v26 = [(objc_class *)v25 configuration];
  if (!v26)
  {
    __break(1u);
    goto LABEL_13;
  }

  v27 = v26;
  [v26 setAutomaticallyRetryNetworkFailures:0];

  v28 = [(objc_class *)v25 configuration];
  if (!v28)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v28 setDiscretionaryNetworkBehavior:0];

  v29 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v30 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100226C80;
  *(v31 + 56) = &type metadata for String;
  v32 = sub_1000EE954();
  *(v31 + 32) = a1;
  *(v31 + 40) = a2;
  *(v31 + 96) = &type metadata for String;
  *(v31 + 104) = v32;
  v33 = 0x6E776F6E6B6E75;
  if (a4)
  {
    v33 = a3;
  }

  v34 = 0xE700000000000000;
  if (a4)
  {
    v34 = a4;
  }

  *(v31 + 64) = v32;
  *(v31 + 72) = v33;
  *(v31 + 80) = v34;

  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Queuing operation to deleting zone: %@ for user: %@", 51, 2, v31);

  v36 = sub_100140CF8(v35);
  v37 = [v36 privateCloudDatabase];

  [v37 addOperation:v25];
}

void sub_10014E1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9)
{
  v11 = a9;
  if (a3)
  {
    swift_errorRetain();
    v13 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v14 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100226C80;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    v19 = sub_1000EE954();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v19;
    v20 = 0x6E776F6E6B6E75;
    if (a5)
    {
      v20 = a4;
    }

    v21 = 0xE700000000000000;
    if (a5)
    {
      v21 = a5;
    }

    *(v15 + 64) = v19;
    *(v15 + 72) = v20;
    *(v15 + 80) = v21;

    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Error deleting zone: %@ for user: %@", 36, 2, v15);

    swift_beginAccess();
    *(a6 + 16) = 0;
    v11 = a9;
  }

  else
  {
    v24 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v25 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100226C80;
    *(v26 + 56) = &type metadata for String;
    v27 = sub_1000EE954();
    *(v26 + 32) = a7;
    *(v26 + 40) = a8;
    *(v26 + 96) = &type metadata for String;
    *(v26 + 104) = v27;
    if (a5)
    {
      v28 = a4;
    }

    else
    {
      v28 = 0x6E776F6E6B6E75;
    }

    v29 = 0xE700000000000000;
    if (a5)
    {
      v29 = a5;
    }

    *(v26 + 64) = v27;
    *(v26 + 72) = v28;
    *(v26 + 80) = v29;

    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "Deleted Zone: %@ for user: %@", 29, 2, v26);
  }

  dispatch_group_leave(v11);
}

void sub_10014E48C(uint64_t a1, int a2)
{
  LODWORD(v183) = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v185 = v12;
  v186 = v13;
  __chkstk_darwin(v12);
  v184 = v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v165 - v16;
  __chkstk_darwin(v18);
  v177 = v165 - v19;
  aBlock._countAndFlagsBits = a1;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  type metadata accessor for CKError(0);
  v21 = v20;
  if (!swift_dynamicCast())
  {
    return;
  }

  v178 = v21;
  v175 = v2;
  v167 = v11;
  v168 = v9;
  v169 = v7;
  v170 = v8;
  v171 = v5;
  v172 = v4;
  v22 = v193;
  v23 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v24 = qword_100300E28;
    v176 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v25 = swift_allocObject();
    v174 = xmmword_100226100;
    *(v25 + 16) = xmmword_100226100;
    v26 = v22;
    v27 = related decl 'e' for CKErrorCode.description.getter();
    v29 = v28;

    *(v25 + 56) = &type metadata for String;
    v173 = sub_1000EE954();
    *(v25 + 64) = v173;
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    v179 = v24;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Error with cloud operation %@", 29, 2, v25);

    v30 = String._bridgeToObjectiveC()();
    sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100226C80;
    *(inited + 32) = 0x43726F7272456B63;
    *(inited + 40) = 0xEB0000000065646FLL;
    aBlock._countAndFlagsBits = v26;
    v35 = sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980, v32, v33, v34);
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:_BridgedStoredNSError.errorCode.getter()];
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x800000010026CA60;
    aBlock._countAndFlagsBits = v26;
    sub_1001624EC(&qword_1002F7D10, type metadata accessor for CKError, &unk_1002268D4, v36, v37, v38);
    Error.localizedDescription.getter();
    v39 = objc_allocWithZone(NSString);
    v40 = String._bridgeToObjectiveC()();

    v41 = [v39 initWithString:v40];

    *(inited + 72) = v41;
    sub_1000F9D9C(inited);
    swift_setDeallocating();
    sub_1000EE870(&qword_1002F9380, &unk_100229A70);
    swift_arrayDestroy();
    sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    CUMetricsLog();

    v43 = v26;
    v193 = v26;
    v180 = v35;
    v44 = _BridgedStoredNSError.userInfo.getter();
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v44 + 16))
    {

      v51 = v175;
      v52 = v185;
      v53 = v186;
LABEL_18:
      v70 = v179;
      goto LABEL_19;
    }

    v47 = v26;
    v48 = sub_1000F8C5C(v45, v46);
    v50 = v49;

    v51 = v175;
    v52 = v185;
    v53 = v186;
    if ((v50 & 1) == 0)
    {

      v43 = v47;
      goto LABEL_18;
    }

    sub_100162534(*(v44 + 56) + 32 * v48, &aBlock);

    sub_1000EE870(&qword_1002F9390, &qword_1002292F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v166 = v47;
    v54 = v51;
    v55 = v192;
    v56 = static os_log_type_t.error.getter();
    v57 = swift_allocObject();
    *(v57 + 16) = v174;
    v58 = Dictionary.description.getter();
    v59 = v173;
    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = v59;
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
    os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, v179, "Handling partial internal errors - %@", 37, 2, v57);

    v61 = 1 << *(v55 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v55 + 64);
    v64 = (v61 + 63) >> 6;

    v65 = 0;
    v23 = &qword_1002F9398;
    v22 = &qword_1002292F8;
    while (v63)
    {
      v66 = v65;
LABEL_14:
      v67 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
      v68 = v67 | (v66 << 6);
      sub_1000FA898(*(v55 + 48) + 40 * v68, &aBlock);
      v191 = *(*(v55 + 56) + 8 * v68);
      v69 = v191;
      sub_10014E48C(v69, v183 & 1);
      sub_1000EEE6C(&aBlock, &qword_1002F9398, &qword_1002292F8);
    }

    while (1)
    {
      v66 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v66 >= v64)
      {

        v51 = v54;
        v70 = v179;
        v43 = v166;
        v52 = v185;
        v53 = v186;
        goto LABEL_19;
      }

      v63 = *(v55 + 64 + 8 * v66);
      ++v65;
      if (v63)
      {
        v65 = v66;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

  v70 = v179;
  v43 = v47;
LABEL_19:
  v193 = v43;
  _BridgedStoredNSError.code.getter();
  if (v192 > 13)
  {
    if (v192 != 14)
    {
      if (v192 == 21)
      {
        v108 = v184;
        sub_10013A598();
        URL.appendingPathComponent(_:isDirectory:)();
        v109 = v17;
        v112 = *(v53 + 8);
        v111 = v53 + 8;
        v110 = v112;
        v112(v108, v52);
        v113 = v177;
        URL.appendingPathComponent(_:)();
        v114 = v109;
        v112(v109, v52);
        sub_100160104(v113, 0);
        v115 = &v51[OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration];
        v116 = *&v115[*(type metadata accessor for CloudCoordinatorConfiguration(0) + 32)];
        v117 = *(v116 + 16);
        if (v117)
        {
          v166 = v43;
          v182 = sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
          v181 = CKCurrentUserDefaultName;

          v183 = v110;
          v186 = v111;
          v165[1] = v116;
          v118 = (v116 + 40);
          v119 = v185;
          do
          {
            v120 = *(v118 - 1);
            v121 = *v118;
            v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v124 = v123;

            v125._countAndFlagsBits = v120;
            v125._object = v121;
            v126._countAndFlagsBits = v122;
            v126._object = v124;
            v127 = CKRecordZoneID.init(zoneName:ownerName:)(v125, v126).super.isa;
            v128 = v184;
            sub_10013A598();
            URL.appendingPathComponent(_:isDirectory:)();
            v129 = v183;
            v183(v128, v119);
            v130._countAndFlagsBits = 0x65746176697250;
            v130._object = 0xE700000000000000;
            URL.appendPathComponent(_:)(v130);
            v131 = [(objc_class *)v127 ownerName];
            v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v134 = v133;

            v135._countAndFlagsBits = v132;
            v135._object = v134;
            URL.appendPathComponent(_:)(v135);

            v136 = [(objc_class *)v127 zoneName];
            v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v139 = v138;

            aBlock._countAndFlagsBits = v137;
            aBlock._object = v139;
            v140._countAndFlagsBits = 0x6E656B6F742ELL;
            v140._object = 0xE600000000000000;
            String.append(_:)(v140);
            URL.appendPathComponent(_:)(aBlock);

            sub_100160104(v114, 0);
            v129(v114, v119);
            v118 += 2;
            --v117;
          }

          while (v117);

          v43 = v166;
          v52 = v185;
          v110 = v183;
        }

        v51 = v175;
        sub_100152F5C(30.0);
        v110(v177, v52);
        v70 = v179;
        goto LABEL_47;
      }

      if (v192 != 26)
      {
        goto LABEL_40;
      }

      LODWORD(v186) = static os_log_type_t.error.getter();
      v73 = swift_allocObject();
      *(v73 + 16) = v174;
      v74 = v43;
      v75 = v43;
      v76 = related decl 'e' for CKErrorCode.description.getter();
      v78 = v77;

      v79 = v173;
      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = v79;
      *(v73 + 32) = v76;
      *(v73 + 40) = v78;
      v43 = v75;
      os_log(_:dso:log:_:_:)(v186, &_mh_execute_header, v70, "Zone not found: %@", 18, 2, v73);
LABEL_41:

      goto LABEL_47;
    }

    v80 = static os_log_type_t.error.getter();
    v81 = swift_allocObject();
    *(v81 + 16) = v174;
    v82 = v43;
    v83 = related decl 'e' for CKErrorCode.description.getter();
    v85 = v84;

    v86 = v173;
    *(v81 + 56) = &type metadata for String;
    *(v81 + 64) = v86;
    *(v81 + 32) = v83;
    *(v81 + 40) = v85;
    os_log(_:dso:log:_:_:)(v80, &_mh_execute_header, v70, "Server Record Changed, We need to Fetch the data again: %@", 58, 2, v81);

    v87 = related decl 'e' for CKErrorCode.serverRecord.getter();
    if (v87)
    {
      v88 = v87;
      LODWORD(v186) = static os_log_type_t.error.getter();
      v89 = swift_allocObject();
      *(v89 + 16) = v174;
      v90 = v88;
      v91 = [v90 description];
      v92 = v70;
      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      *(v89 + 56) = &type metadata for String;
      *(v89 + 64) = v86;
      *(v89 + 32) = v93;
      *(v89 + 40) = v95;
      os_log(_:dso:log:_:_:)(v186, &_mh_execute_header, v92, "Resolving with server record - %@", 33, 2, v89);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v97 = Strong;
        sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_1002290F0;
        *(v98 + 32) = v90;
        v99 = v90;
        sub_10015EEF4(v51, _swiftEmptyArrayStorage, v98, v97);

        swift_unknownObjectRelease();
      }

      v100 = swift_unknownObjectWeakLoadStrong();
      if (v100)
      {
        sub_10015FDEC(v51[104], v100);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_100152F5C(30.0);
    }
  }

  else
  {
    if ((v192 - 3) >= 2)
    {
      if ((v192 - 6) < 2)
      {
        v71 = COERCE_DOUBLE(related decl 'e' for CKErrorCode.retryAfterSeconds.getter());
        if (v72)
        {
          v71 = 600.0;
        }

LABEL_31:
        sub_100152F5C(v71);
        goto LABEL_47;
      }

LABEL_40:
      LODWORD(v186) = static os_log_type_t.error.getter();
      v101 = swift_allocObject();
      *(v101 + 16) = v174;
      v102 = v43;
      v103 = v43;
      v104 = related decl 'e' for CKErrorCode.description.getter();
      v106 = v105;

      v107 = v173;
      *(v101 + 56) = &type metadata for String;
      *(v101 + 64) = v107;
      *(v101 + 32) = v104;
      *(v101 + 40) = v106;
      v43 = v103;
      os_log(_:dso:log:_:_:)(v186, &_mh_execute_header, v70, "Uncaught error: %@", 18, 2, v101);
      goto LABEL_41;
    }

    if (v183)
    {
      v71 = 150.0;
      goto LABEL_31;
    }

LABEL_47:
    aBlock._countAndFlagsBits = v43;
    _BridgedStoredNSError.code.getter();
    if (v193 == 110)
    {
      v156 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v156, &_mh_execute_header, v70, "Attempting to use Manatee from a non-HSA2 account!", 50, 2, _swiftEmptyArrayStorage);
      if (v51[104] == 1)
      {
        v51[104] = 0;
        v157 = static os_log_type_t.fault.getter();
        os_log(_:dso:log:_:_:)(v157, &_mh_execute_header, v70, "Manatee was available, but is not available now.", 48, 2, _swiftEmptyArrayStorage);
      }
    }

    else if (v193 == 112)
    {
      v148 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v148, &_mh_execute_header, v70, "Private Missing Manatee Identity, Reset...", 42, 2, _swiftEmptyArrayStorage);
      v190 = sub_100162BBC;
      v191 = v51;
      aBlock._countAndFlagsBits = _NSConcreteStackBlock;
      aBlock._object = 1107296256;
      v188 = sub_1001742E0;
      v189 = &unk_1002BF118;
      v149 = _Block_copy(&aBlock);

      v150 = v167;
      static DispatchQoS.unspecified.getter();
      v193 = _swiftEmptyArrayStorage;
      sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v151, v152, v153);
      sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
      sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
      v154 = v169;
      v155 = v172;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v149);

      (*(v171 + 8))(v154, v155);
      (*(v168 + 8))(v150, v170);
    }

    else if (v193 == 111)
    {
      v141 = static os_log_type_t.default.getter();
      v142 = swift_allocObject();
      *(v142 + 16) = v174;
      v143 = &v51[OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration];
      v144 = &v143[*(type metadata accessor for CloudCoordinatorConfiguration(0) + 24)];
      v146 = *v144;
      v145 = *(v144 + 1);
      v147 = v173;
      *(v142 + 56) = &type metadata for String;
      *(v142 + 64) = v147;
      *(v142 + 32) = v146;
      *(v142 + 40) = v145;

      os_log(_:dso:log:_:_:)(v141, &_mh_execute_header, v70, "PCS Keys for %@ are not yet synced.", 35, 2, v142);
    }

    else
    {
      v158 = static os_log_type_t.error.getter();
      v159 = swift_allocObject();
      *(v159 + 16) = v174;
      v160 = v43;
      v161 = related decl 'e' for CKErrorCode.description.getter();
      v163 = v162;

      v164 = v173;
      *(v159 + 56) = &type metadata for String;
      *(v159 + 64) = v164;
      *(v159 + 32) = v161;
      *(v159 + 40) = v163;
      os_log(_:dso:log:_:_:)(v158, &_mh_execute_header, v70, "Uncaught private error: %@", 26, 2, v159);
    }
  }
}

uint64_t sub_10014F794(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  v9 = *(v8 + *(type metadata accessor for CloudCoordinatorConfiguration(0) + 32));
  v10 = *(v9 + 16);
  if (v10)
  {

    v11 = (v9 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      sub_10014D91C(v12, v13);

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  sub_10014B134();
  v14 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100162BC4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF140;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v16, v17, v18);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v22 + 8))(v4, v2);
  (*(v20 + 8))(v7, v21);
}

uint64_t sub_10014FAE0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100141D34(0);
  }

  return result;
}

uint64_t sub_10014FB3C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a3;
  v41 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v39 = a5;
    swift_errorRetain();
    v14 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v15 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100226100;
    aBlock = a2;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000EE954();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "error fetching account status: %@", 33, 2, v16);

    v20 = swift_allocObject();
    v21 = v39;
    *(v20 + 16) = v41;
    *(v20 + 24) = v21;
    v50 = sub_100162B64;
    v51 = v20;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1001742E0;
    v49 = &unk_1002BEF88;
    v22 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v23, v24, v25);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);
  }

  else
  {
    LODWORD(v39) = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v26 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100226100;
    v28 = CKStringFromAccountStatus();
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_1000EE954();
    *(v27 + 32) = v29;
    *(v27 + 40) = v31;
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v26, "Fetched CK account status: %{public}@", 37, 2, v27);

    v32 = swift_allocObject();
    v32[2] = v41;
    v32[3] = a5;
    v32[4] = a1;
    v50 = sub_100162B34;
    v51 = v32;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_1001742E0;
    v49 = &unk_1002BEF38;
    v33 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v34, v35, v36);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);
  }

  (*(v44 + 8))(v10, v8);
  (*(v42 + 8))(v13, v43);
}

void sub_10015016C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1001501E4(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_100300E28, "CKAccountChanged notification received", 38, 2, _swiftEmptyArrayStorage);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;

  v5 = sub_100140CF8(v4);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = sub_100162B1C;
  v6[4] = v3;
  v9[4] = sub_100162B28;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10015016C;
  v9[3] = &unk_1002BEEE8;
  v7 = _Block_copy(v9);

  [v5 accountStatusWithCompletionHandler:v7];
  _Block_release(v7);
}

uint64_t sub_100150470(uint64_t a1)
{
  result = type metadata accessor for CloudCoordinatorConfiguration(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100150584(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(a2 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  *(v13 + 32) = a3;
  aBlock[4] = sub_100162B90;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BEFD8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v15, v16, v17);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v20);
}

void sub_100150860(uint64_t a1, uint64_t a2, int a3)
{
  v54 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v57 = *(v7 - 8);
  v58 = v7;
  __chkstk_darwin(v7);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E28;
  v53 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226C80;
  v12 = CKStringFromAccountStatus();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v11 + 56) = &type metadata for String;
  v16 = sub_1000EE954();
  *(v11 + 64) = v16;
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v17 = CKStringFromAccountStatus();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v16;
  *(v11 + 72) = v18;
  *(v11 + 80) = v20;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "iCloud accountDidChange %{public}@ -> %{public}@", 48, 2, v11);

  v21 = *(a1 + 96);
  *(a1 + 96) = a2;
  *(a1 + 105) = a2 == 1;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v22 = static os_log_type_t.error.getter();
      v23 = "Could not determine account status!";
      v24 = v10;
      v25 = 35;
      goto LABEL_17;
    }

    if (a2 == 1)
    {
      v26 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v10, "iCloud accountDidChange available", 33, 2, _swiftEmptyArrayStorage);
      sub_10015194C(v54 & 1);
      return;
    }

LABEL_16:
    v22 = static os_log_type_t.error.getter();
    v23 = "Unknown CKAccountStatus!";
    v24 = v10;
    v25 = 24;
    goto LABEL_17;
  }

  if (a2 == 2)
  {
    v27 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v10, "iCloud Account not available due to restrictions!", 49, 2, _swiftEmptyArrayStorage);
    if (*(a1 + 96) == 2)
    {
      return;
    }

    v66 = sub_100162BA4;
    v67 = a1;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v64 = sub_1001742E0;
    v65 = &unk_1002BF028;
    v28 = _Block_copy(&aBlock);

    v29 = v55;
    static DispatchQoS.unspecified.getter();
    v68 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v30, v31, v32);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    v33 = v56;
    v34 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    (*(v59 + 8))(v33, v34);
    (*(v57 + 8))(v29, v58);

    goto LABEL_23;
  }

  if (a2 == 3)
  {
    v35 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v10, "iCloud Account not available!", 29, 2, _swiftEmptyArrayStorage);
    v36 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v10, "reset timers", 12, 2, _swiftEmptyArrayStorage);
    [*(a1 + 40) invalidate];
    v37 = *(a1 + 40);
    *(a1 + 40) = 0;

    if (*(a1 + 48))
    {
      swift_getObjectType();

      OS_dispatch_source.cancel()();
    }

    *(a1 + 48) = 0;

    swift_beginAccess();
    *(a1 + 112) = _swiftEmptyDictionarySingleton;

    swift_beginAccess();
    *(a1 + 120) = _swiftEmptyDictionarySingleton;

    if (v21 == 3)
    {
      v38 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v10, "Account was already in .noAccount state", 39, 2, _swiftEmptyArrayStorage);
      return;
    }

    v39 = static os_log_type_t.error.getter();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100226100;
    Strong = swift_unknownObjectWeakLoadStrong();
    v42 = *(a1 + 32);
    aBlock = Strong;
    v63 = v42;
    sub_1000EE870(&unk_1002F9470, &qword_100229340);
    v43 = String.init<A>(describing:)();
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = v16;
    *(v40 + 32) = v43;
    *(v40 + 40) = v44;
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v10, "Tell delegate to remove local cache: %@", 39, 2, v40);

    v66 = sub_100162B9C;
    v67 = a1;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v64 = sub_1001742E0;
    v65 = &unk_1002BF000;
    v45 = _Block_copy(&aBlock);

    v46 = v55;
    static DispatchQoS.unspecified.getter();
    v61 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v47, v48, v49);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    v50 = v56;
    v51 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);
    (*(v59 + 8))(v50, v51);
    (*(v57 + 8))(v46, v58);

    if ((*(a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator__available) & 1) == 0)
    {
      v52 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v10, "CloudSync: finish Setup", 23, 2, _swiftEmptyArrayStorage);
      sub_100141908();
      return;
    }

LABEL_23:
    sub_100141D34(0);
    return;
  }

  if (a2 != 4)
  {
    goto LABEL_16;
  }

  v22 = static os_log_type_t.error.getter();
  v23 = "Account available but not ready!";
  v24 = v10;
  v25 = 32;
LABEL_17:

  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v24, v23, v25, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100151144(uint64_t a1)
{
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v6 = a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  result = *(v6 + *(type metadata accessor for CloudCoordinatorConfiguration(0) + 32));
  v8 = *(result + 16);
  if (v8)
  {
    v34 = v44;
    v35 = CKCurrentUserDefaultName;
    v32 = (v4 + 8);
    v33 = (v2 + 8);

    v9 = (v31 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17._countAndFlagsBits = v10;
        v17._object = v11;
        v18._countAndFlagsBits = v14;
        v18._object = v16;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v17, v18).super.isa;
        v20 = *(v13 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
        v21 = swift_allocObject();
        *(v21 + 16) = isa;
        *(v21 + 24) = v13;
        v44[2] = sub_100162BAC;
        v44[3] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v44[0] = sub_1001742E0;
        v44[1] = &unk_1002BF078;
        v22 = _Block_copy(aBlock);
        v23 = v20;
        v41 = isa;
        swift_unknownObjectRetain();
        v24 = v36;
        static DispatchQoS.unspecified.getter();
        v42 = _swiftEmptyArrayStorage;
        sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v25, v26, v27);
        sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
        sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
        v29 = v38;
        v28 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v22);

        swift_unknownObjectRelease();
        (*v33)(v29, v28);
        (*v32)(v24, v37);
      }

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_100151538(uint64_t a1)
{
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v6 = a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  v7 = *(*(v6 + *(type metadata accessor for CloudCoordinatorConfiguration(0) + 32)) + 16);
  if (v7)
  {
    v34 = v44;
    v35 = CKCurrentUserDefaultName;
    v32 = (v4 + 8);
    v33 = (v2 + 8);

    v8 = (v31 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16._countAndFlagsBits = v9;
        v16._object = v10;
        v17._countAndFlagsBits = v13;
        v17._object = v15;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v16, v17).super.isa;
        v19 = *(v12 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
        v20 = swift_allocObject();
        *(v20 + 16) = isa;
        *(v20 + 24) = v12;
        v44[2] = sub_1001633F0;
        v44[3] = v20;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v44[0] = sub_1001742E0;
        v44[1] = &unk_1002BF0C8;
        v21 = _Block_copy(aBlock);
        v22 = v19;
        v41 = isa;
        swift_unknownObjectRetain();
        v23 = v36;
        static DispatchQoS.unspecified.getter();
        v42 = _swiftEmptyArrayStorage;
        sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v24, v25, v26);
        sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
        sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
        v28 = v38;
        v27 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v21);

        swift_unknownObjectRelease();
        (*v33)(v28, v27);
        (*v32)(v23, v37);
      }

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10015F824(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10015194C(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 72);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v10 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_5:
    v16 = v10;
    swift_once();
    v10 = v16;
  }

  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_100300E28, "CloudSync: iCloud Account available", 35, 2, _swiftEmptyArrayStorage);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1 & 1;

  v13 = sub_100140CF8(v12);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100162AE0;
  *(v14 + 24) = v11;
  aBlock[4] = sub_100162AF0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001634D8;
  aBlock[3] = &unk_1002BEDA8;
  v15 = _Block_copy(aBlock);

  [v13 accountInfoWithCompletionHandler:v15];
  _Block_release(v15);
}

void sub_100151BC4(char *a1, char a2, uint64_t a3, int a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v144 = *(v12 - 8);
  __chkstk_darwin(v12);
  v143 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v149 = v14;
  v150 = v15;
  __chkstk_darwin(v14);
  __chkstk_darwin(v16);
  v148 = &v129 - v17;
  __chkstk_darwin(v18);
  if (a2)
  {
    object = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 == -1)
    {
LABEL_3:
      v22 = qword_100300E28;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100226100;
      aBlock._countAndFlagsBits = a1;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_1000EE954();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      os_log(_:dso:log:_:_:)(object, &_mh_execute_header, v22, "CloudSync: accountInfo error: %@", 32, 2, v23);

      return;
    }

LABEL_43:
    swift_once();
    goto LABEL_3;
  }

  v146 = &v129 - v19;
  v142 = v20;
  v138 = a4;
  v134 = v11;
  v135 = v12;
  v136 = v9;
  v145 = a3;
  v27 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v28 = qword_100300E28;
  v29 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v30 = swift_allocObject();
  v147 = xmmword_100226100;
  *(v30 + 16) = xmmword_100226100;
  v31 = a1;
  v32 = [v31 description];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  sub_100008030(a1, 0);
  *(v30 + 56) = &type metadata for String;
  v36 = sub_1000EE954();
  *(v30 + 64) = v36;
  *(v30 + 32) = v33;
  *(v30 + 40) = v35;
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "CloudSync: accountInfo: %@", 26, 2, v30);

  v37 = [v31 accountStatus];
  v38 = static os_log_type_t.default.getter();
  if (v37 == 1)
  {
    v132 = v36;
    v131 = v8;
    v39 = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = v147;
    v41 = v145;
    v42 = *(v145 + 104);
    *(v40 + 56) = &type metadata for Bool;
    *(v40 + 64) = &protocol witness table for Bool;
    *(v40 + 32) = v42;
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v28, "CloudSync: Setting previousManateeState to %d", v129);

    v43 = *(v41 + 104);
    v44 = static os_log_type_t.default.getter();
    v137 = v29;
    v45 = swift_allocObject();
    *(v45 + 16) = v147;
    v46 = [v31 supportsDeviceToDeviceEncryption];
    *(v45 + 56) = &type metadata for Bool;
    *(v45 + 64) = &protocol witness table for Bool;
    *(v45 + 32) = v46;
    v133 = v28;
    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v28, "CloudSync: Setting manateeAvailable to %d", v129);

    v47 = [v31 supportsDeviceToDeviceEncryption];
    *(v41 + 104) = v47;
    if (v43 == 1 && (v47 & 1) == 0)
    {
      v48 = String._bridgeToObjectiveC()();
      sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
      inited = swift_initStackObject();
      *(inited + 16) = v147;
      *(inited + 32) = 0xD000000000000027;
      *(inited + 40) = 0x800000010026C6D0;
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:*(v145 + 104)];
      sub_1000F9D9C(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &qword_1002F9380, &unk_100229A70);
      sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v41 = v145;

      CUMetricsLog();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_10015FDEC(*(v41 + 104), Strong);
      swift_unknownObjectRelease();
    }

    if ((v43 & 1) == 0 && [v31 supportsDeviceToDeviceEncryption])
    {
      v52 = static os_log_type_t.default.getter();
      v53 = swift_allocObject();
      v54 = v41;
      v55 = v53;
      *(v53 + 16) = v147;
      v56 = v54 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
      v57 = type metadata accessor for CloudCoordinatorConfiguration(0);
      v58 = v149;
      v59 = v150;
      a1 = v146;
      (*(v150 + 16))(v146, v56 + *(v57 + 28), v149);
      sub_1001624EC(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL, v60, v61, v62);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v66 = *(v59 + 8);
      v66(a1, v58);
      v67 = v132;
      v55[7] = &type metadata for String;
      v55[8] = v67;
      v55[4] = v63;
      v55[5] = v65;
      os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v133, "CloudSync: directoryURL: %@", 27, 2, v55);

      v68 = v142;
      sub_10013A598();
      v69 = v148;
      URL.appendingPathComponent(_:isDirectory:)();
      v66(v68, v58);
      URL.appendingPathComponent(_:)();
      v66(v69, v58);
      v130 = sub_10013A930(a1);
      v150 = v59 + 8;
      v142 = v66;
      v66(a1, v58);
      object = *(*(v56 + *(v57 + 32)) + 16);

      v141 = object;
      if (object)
      {
        v71 = 0;
        v72 = (v70 + 40);
        v139 = CKCurrentUserDefaultName;
        v140 = v70;
        while (v71 < *(v70 + 16))
        {
          v74 = *(v72 - 1);
          v73 = *v72;
          sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v76;

          v78._countAndFlagsBits = v74;
          v78._object = v73;
          v79._countAndFlagsBits = v75;
          v79._object = v77;
          v80 = CKRecordZoneID.init(zoneName:ownerName:)(v78, v79).super.isa;
          v81 = v148;
          sub_10013A598();
          a1 = v146;
          URL.appendingPathComponent(_:isDirectory:)();
          v82 = v149;
          v83 = v142;
          v142(v81, v149);
          v84._countAndFlagsBits = 0x65746176697250;
          v84._object = 0xE700000000000000;
          URL.appendPathComponent(_:)(v84);
          v85 = [(objc_class *)v80 ownerName];
          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v87;

          v89._countAndFlagsBits = v86;
          v89._object = v88;
          URL.appendPathComponent(_:)(v89);

          v90 = [(objc_class *)v80 zoneName];
          v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v93 = v92;

          aBlock._countAndFlagsBits = v91;
          aBlock._object = v93;
          v94._countAndFlagsBits = 0x6E656B6F742ELL;
          v94._object = 0xE600000000000000;
          String.append(_:)(v94);
          object = aBlock._object;
          URL.appendPathComponent(_:)(aBlock);

          v95 = sub_10013A930(a1);
          v83(a1, v82);
          v96 = v95 == 0;
          if (v95)
          {
            ++v71;

            v72 += 2;
            v70 = v140;
            if (v141 != v71)
            {
              continue;
            }
          }

          goto LABEL_25;
        }

        __break(1u);
        goto LABEL_43;
      }

      v96 = 0;
LABEL_25:

      v97 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v97, &_mh_execute_header, v133, "CloudSync: Manatee PCS keys are now available", 45, 2, _swiftEmptyArrayStorage);
      v98 = static os_log_type_t.default.getter();
      v99 = v130;
      v100 = v138;
      if ((v138 & 1) != 0 || !v130 || v96)
      {
        v105 = swift_allocObject();
        v106 = v100 & 1;
        v107 = 0x206563726F46;
        if ((v100 & 1) == 0)
        {
          v107 = 0;
        }

        v108 = 0xE000000000000000;
        v109 = 0xE600000000000000;
        if ((v100 & 1) == 0)
        {
          v109 = 0xE000000000000000;
        }

        *(v105 + 16) = xmmword_100226C80;
        v110 = v132;
        *(v105 + 56) = &type metadata for String;
        *(v105 + 64) = v110;
        *(v105 + 32) = v107;
        *(v105 + 40) = v109;
        if (v99)
        {
          v111 = v96;
        }

        else
        {
          v111 = 1;
        }

        v112 = v111 == 0;
        if (v111)
        {
          v113 = 0xD000000000000034;
        }

        else
        {
          v113 = 0;
        }

        *(v105 + 96) = &type metadata for String;
        *(v105 + 104) = v110;
        if (!v112)
        {
          v108 = 0x800000010026C550;
        }

        *(v105 + 72) = v113;
        *(v105 + 80) = v108;
        v114 = v133;
        os_log(_:dso:log:_:_:)(v98, &_mh_execute_header, v133, "CloudSync: %@Fetching from CloudKit %@", 38, 2, v105);

        v115 = static os_log_type_t.default.getter();
        v116 = swift_allocObject();
        *(v116 + 16) = v147;
        v117 = v145;
        v118 = sub_100140EA8();
        *(v116 + 56) = &type metadata for String;
        *(v116 + 64) = v110;
        *(v116 + 32) = v118;
        *(v116 + 40) = v119;
        os_log(_:dso:log:_:_:)(v115, &_mh_execute_header, v114, "CloudSync: Subscribing to %@", 28, 2, v116);

        sub_100153694(v120);
        v121 = swift_allocObject();
        *(v121 + 16) = v117;
        *(v121 + 24) = v106;
        v155 = sub_100162AF8;
        v156 = v121;
        aBlock._countAndFlagsBits = _NSConcreteStackBlock;
        aBlock._object = 1107296256;
        v153 = sub_1001742E0;
        v154 = &unk_1002BEDF8;
        v122 = _Block_copy(&aBlock);

        v123 = v143;
        static DispatchQoS.unspecified.getter();
        v151 = _swiftEmptyArrayStorage;
        sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v124, v125, v126);
        sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
        sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
        v127 = v134;
        v128 = v131;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v122);

        (*(v136 + 8))(v127, v128);
        (*(v144 + 8))(v123, v135);
      }

      else
      {
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_1002289A0;
        *(v101 + 56) = &type metadata for Bool;
        *(v101 + 64) = &protocol witness table for Bool;
        *(v101 + 32) = 0;
        *(v101 + 96) = &type metadata for Int;
        *(v101 + 104) = &protocol witness table for Int;
        *(v101 + 72) = 0;
        *(v101 + 136) = &type metadata for Bool;
        *(v101 + 144) = &protocol witness table for Bool;
        *(v101 + 112) = 0;
        v102 = v98;
        v103 = v133;
        os_log(_:dso:log:_:_:)(v102, &_mh_execute_header, v133, "CloudSync: not fetching from CloudKit. Conditions not met - forceFetch: %d, serverDatabaseChangeToken == nil: %d, missingZoneChangeTokens: %d", v129, v130, v131);

        v104 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v104, &_mh_execute_header, v103, "CloudSync: finish Setup", 23, 2, _swiftEmptyArrayStorage);
        sub_100141908();
      }
    }
  }

  else
  {

    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v28, "CloudSync: Account not available", 32, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100152B18(uint64_t a1, int a2)
{

  sub_10014AA54(2, a2, sub_100162B04, a1);
}

uint64_t sub_100152B78(char *a1, char a2)
{
  if (a2)
  {
    v2 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v3 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_1000EE954();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "CloudSync: Error from fetchChanges: %@", 38, 2, v4);

    swift_errorRetain();
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980, v8, v9, v10);
      _BridgedStoredNSError.code.getter();
      if ((v17 - 3) > 1)
      {
        v14 = v17;
        sub_10014E48C(v14, 0);
      }

      else
      {
        sub_100152F5C(150.0);
      }
    }
  }

  else
  {
    v11 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      v16 = v11;
      swift_once();
      v11 = v16;
    }

    v3 = qword_100300E28;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_100300E28, "CloudSync: fetchChanges succeeded", 33, 2, _swiftEmptyArrayStorage);
  }

  v12 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    v15 = v12;
    swift_once();
    v12 = v15;
  }

  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v3, "CloudSync: finish Setup", 23, 2, _swiftEmptyArrayStorage);
  return sub_100141908();
}

void sub_100152E60(void *a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    a3(a2, 1);
  }

  else if (a1)
  {
    v6 = a1;
    a3(a1, 0);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100152F5C(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 72);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  aBlock[4] = sub_100162AD4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BED30;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v12, v13, v14);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v18 + 8))(v5, v3);
  (*(v6 + 8))(v8, v17);
}

uint64_t sub_10015326C(uint64_t a1, double a2)
{
  v3 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226100;
  *(v5 + 56) = &type metadata for Double;
  *(v5 + 64) = &protocol witness table for Double;
  *(v5 + 32) = a2;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "scheduleRetryFetch for %f", v7);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!*(result + 40))
    {
      sub_10014233C(a2);
    }
  }

  return result;
}

uint64_t sub_10015339C(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v33 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v32 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226C80;
  [a1 scope];
  v12 = CKDatabaseScope.description.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_1000EE954();
  v16 = v15;
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  if (!a2)
  {
    v24 = (v11 + 72);
    *(v11 + 96) = &type metadata for String;
    *(v11 + 104) = v15;
LABEL_8:
    *v24 = 7104878;
    v23 = 0xE300000000000000;
    goto LABEL_9;
  }

  v30 = a1;
  v31 = a2;
  v17 = [a2 data];
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = Data.hexString.getter(v18, v20);
  v23 = v22;
  sub_1000EF870(v18, v20);
  v24 = (v11 + 72);
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v16;
  if (!v23)
  {
    a1 = v30;
    a2 = v31;
    goto LABEL_8;
  }

  *v24 = v21;
  a1 = v30;
  a2 = v31;
LABEL_9:
  *(v11 + 80) = v23;
  os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v32, "New database change token, database, %@, token, %@", 50, 2, v11);

  v25 = v34 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  v26 = type metadata accessor for CloudCoordinatorConfiguration(0);
  (*(v5 + 16))(v7, v25 + *(v26 + 28), v4);
  sub_10013A374(v7, [a1 scope]);
  v27 = *(v5 + 8);
  v27(v7, v4);
  sub_100160104(v10, a2);
  return (v27)(v10, v4);
}

uint64_t sub_100153694(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10015FAF0();
  v5 = v4;
  v6 = sub_100161910(v3, v4);
  v7 = static os_log_type_t.default.getter();
  if (v6)
  {
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v8 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100226100;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1000EE954();
    if (v5)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0x6E776F6E6B6E75;
    }

    v11 = 0xE700000000000000;
    if (v5)
    {
      v11 = v5;
    }

    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "CloudSync: Subscription already exists for this user: %@", 56, 2, v9);
  }

  else
  {
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v13 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100226100;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_1000EE954();
    if (v5)
    {
      v15 = v3;
    }

    else
    {
      v15 = 0x6E776F6E6B6E75;
    }

    v16 = 0xE700000000000000;
    if (v5)
    {
      v16 = v5;
    }

    *(v14 + 32) = v15;
    *(v14 + 40) = v16;

    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v13, "CloudSync: Creating new subscription for user: %@", 49, 2, v14);

    v17 = sub_100140EA8();
    sub_100161A68(v17, v18);
    v20 = v19;

    v21 = v20;
    v22 = sub_100140F64();
    [v21 setGroup:v22];

    v23 = swift_allocObject();
    v23[2] = v2;
    v23[3] = v3;
    v23[4] = v5;

    CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter();
    v24 = *(v2 + 64);
    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    *(v25 + 24) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1001633E8;
    *(v26 + 24) = v25;
    v29[4] = sub_1001633EC;
    v29[5] = v26;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 1107296256;
    v29[2] = sub_100174328;
    v29[3] = &unk_1002BECE0;
    v27 = _Block_copy(v29);
    v28 = v21;

    dispatch_sync(v24, v27);

    _Block_release(v27);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if (v24)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100153A64(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v8 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100226C80;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    v13 = sub_1000EE954();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v13;
    if (a5)
    {
      v14 = a4;
    }

    else
    {
      v14 = 0x6E776F6E6B6E75;
    }

    v15 = 0xE700000000000000;
    if (a5)
    {
      v15 = a5;
    }

    *(v9 + 64) = v13;
    *(v9 + 72) = v14;
    *(v9 + 80) = v15;

    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "CloudSync: Subscription error: %@ for user: %@", 46, 2, v9);
  }

  else
  {
    v17 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v18 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100226C80;
    v20 = sub_100140EA8();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    v23 = sub_1000EE954();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v23;
    if (a5)
    {
      v24 = a4;
    }

    else
    {
      v24 = 0x6E776F6E6B6E75;
    }

    v25 = 0xE700000000000000;
    if (a5)
    {
      v25 = a5;
    }

    *(v19 + 64) = v23;
    *(v19 + 72) = v24;
    *(v19 + 80) = v25;

    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "CloudSync: Successfully subscribed to %@ for user: %@", 53, 2, v19);

    return sub_100161BF8(a4, a5);
  }
}

uint64_t sub_100153CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OS_dispatch_queue.sync<A>(execute:)();
  v11 = aBlock;
  v12 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v13 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100226100;
  *(v14 + 56) = &type metadata for Bool;
  *(v14 + 64) = &protocol witness table for Bool;
  *(v14 + 32) = v11;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "localAvailable: %d", v26);

  v15 = static os_log_type_t.default.getter();
  if (v11)
  {
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v13, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    v16 = swift_allocObject();
    v16[2] = v26;
    v16[3] = a2;
    v16[4] = v3;
    v35 = sub_10015C2A8;
    v36 = v16;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v17 = &unk_1002BE3F8;
  }

  else
  {
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v13, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v18 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v13, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v19 = swift_allocObject();
    v20 = v26;
    v19[2] = v3;
    v19[3] = v20;
    v19[4] = a2;
    v35 = sub_10015C284;
    v36 = v19;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v17 = &unk_1002BE3A8;
  }

  v33 = sub_1001742E0;
  v34 = v17;
  v21 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v22, v23, v24);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v29 + 8))(v7, v5);
  (*(v27 + 8))(v10, v28);
}

uint64_t sub_1001541BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    v21 = v12;
    swift_once();
    v12 = v21;
  }

  v13 = qword_100300E28;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_100300E28, "Done waiting for availableWaitQueue", 35, 2, _swiftEmptyArrayStorage);
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v13, "Call completion on non-head-of-queue job", 40, 2, _swiftEmptyArrayStorage);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_1001634E8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BE448;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v17, v18, v19);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v24 + 8))(v8, v6);
  (*(v9 + 8))(v11, v23);
}

uint64_t sub_100154534(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v44 = a3;
  v45 = a2;
  v49 = type metadata accessor for Date();
  v46 = *(v49 - 8);
  v5 = *(v46 + 64);
  __chkstk_darwin(v49);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v41 - v7;
  v8 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v9 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226100;
  v11 = a1;
  v12 = [v11 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v10 + 56) = &type metadata for String;
  v16 = sub_1000EE954();
  *(v10 + 64) = v16;
  *(v10 + 32) = v13;
  *(v10 + 40) = v15;
  v42 = v9;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "CloudSync: Attempting to create the record: %@", 46, 2, v10);

  if (IsAppleInternalBuild())
  {
    v17 = static os_log_type_t.default.getter();
  }

  else
  {
    v17 = static os_log_type_t.debug.getter();
  }

  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100226C80;
  v20 = [v11 recordID];
  v21 = [v20 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = v16;
  *(v19 + 32) = v22;
  *(v19 + 40) = v24;
  sub_100143BEC();
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v16;
  *(v19 + 72) = v25;
  *(v19 + 80) = v26;
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v42, "Creating CKRecord %@ - values: %@", 33, 2, v19);

  v27 = v50;
  static Date.now.getter();
  v28 = v46;
  v29 = v43;
  v30 = v49;
  (*(v46 + 16))(v43, v27, v49);
  v31 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v32 = v31 + v5;
  v33 = (v31 + v5) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v36 = v47;
  v35 = v48;
  *(v34 + 2) = v44;
  *(v34 + 3) = v36;
  *(v34 + 4) = v35;
  (*(v28 + 32))(&v34[v31], v29, v30);
  LOBYTE(v29) = v45 & 1;
  v34[v32] = v45 & 1;
  *&v34[v33 + 8] = v11;
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = v11;
  *(v37 + 32) = sub_10015E2BC;
  *(v37 + 40) = v34;
  *(v37 + 48) = v29;
  v38 = v11;
  swift_retain_n();
  v39 = v38;

  sub_100153CF4(sub_10015E374, v37);

  return (*(v28 + 8))(v50, v30);
}

void sub_100154934(void *a1, char a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v91 = a5;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15);
  if ((a2 & 1) == 0)
  {
    (a3)(a1, 0, v19);

    sub_100161E3C(a1, a6, a7 & 1, 0);
    return;
  }

  v86 = v18;
  v87 = &i - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a8;
  v85 = v16;
  v88 = a3;
  v89 = a7;
  *&v102 = a1;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    v43 = a6;
    v17 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
LABEL_40:
      swift_once();
    }

    v44 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100226100;
    swift_getErrorValue();
    v46 = Error.localizedDescription.getter();
    v48 = v47;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_1000EE954();
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v44, "Error saving record to cloud - %@", 33, 2, v45);

    v88(a1, 1);
    sub_100161E3C(v90, v43, v89 & 1, a1);
    return;
  }

  v23 = *&v99[0];
  *&v102 = *&v99[0];
  v24 = sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980, v20, v21, v22);
  _BridgedStoredNSError.code.getter();
  v83 = v23;
  v84 = a4;
  if (*&v99[0] == 26)
  {
    goto LABEL_4;
  }

  v82 = a6;
  *&v99[0] = v23;
  v49 = _BridgedStoredNSError.userInfo.getter();
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v49 + 16))
  {

    goto LABEL_32;
  }

  v81 = v24;
  v52 = sub_1000F8C5C(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {

    goto LABEL_32;
  }

  sub_100162534(*(v49 + 56) + 32 * v52, &v102);

  sub_1000EE870(&qword_1002F9338, &qword_1002292B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v65 = v90;
    v66 = static os_log_type_t.error.getter();
    v67 = v88;
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v68 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_100226100;
    swift_getErrorValue();
    v70 = Error.localizedDescription.getter();
    v72 = v71;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = sub_1000EE954();
    *(v69 + 32) = v70;
    *(v69 + 40) = v72;
    os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, v68, "Error saving ck record to cloud - %@", 36, 2, v69);

    v73 = v83;
    v74 = v83;
    v67(v73, 1);

    v75 = v74;
    sub_10014E48C(v75, 0);

    v76 = v75;
    sub_100161E3C(v65, v82, v89 & 1, v73);

    return;
  }

  v43 = v94;
  v55 = v94 + 64;
  v56 = 1 << *(v94 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v94 + 64);
  v59 = (v56 + 63) >> 6;

  v60 = 0;
  for (i = v55; ; v55 = i)
  {
    if (!v58)
    {
      while (1)
      {
        v61 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        if (v61 >= v59)
        {

          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v106 = 0;

          goto LABEL_31;
        }

        v58 = *(v55 + 8 * v61);
        ++v60;
        if (v58)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v61 = v60;
LABEL_27:
    v62 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v63 = v62 | (v61 << 6);
    sub_1000FA898(*(v43 + 48) + 40 * v63, v99);
    sub_100162534(*(v43 + 56) + 32 * v63, v100 + 8);
    v96 = v100[0];
    v97 = v100[1];
    v98 = v101;
    v94 = v99[0];
    v95 = v99[1];
    sub_100162590(&v94, v93);
    if (!swift_dynamicCast())
    {
      sub_1000EEE6C(&v94, &qword_1002F9340, &qword_1002292C0);
      sub_1000FA8F4(v93);
      goto LABEL_21;
    }

    v64 = v92;
    sub_1000FA8F4(v93);
    v93[0] = v64;
    _BridgedStoredNSError.code.getter();

    if (v92 == 26)
    {
      break;
    }

    sub_1000EEE6C(&v94, &qword_1002F9340, &qword_1002292C0);
LABEL_21:
    v60 = v61;
  }

  v104 = v96;
  v105 = v97;
  v106 = v98;
  v102 = v94;
  v103 = v95;

  if (!*(&v103 + 1))
  {
LABEL_31:
    sub_1000EEE6C(&v102, &qword_1002F9348, &qword_1002292C8);
    goto LABEL_32;
  }

  v77 = static os_log_type_t.error.getter();
  if (qword_1002F7AD8 != -1)
  {
    v79 = v77;
    swift_once();
    v77 = v79;
  }

  os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, qword_100300E28, "zoneNotFound error in partial errors.", 37, 2, _swiftEmptyArrayStorage, i);
  sub_1000EEE6C(&v102, &qword_1002F9348, &qword_1002292C8);
  a6 = v82;
LABEL_4:
  v25 = static os_log_type_t.error.getter();
  if (qword_1002F7AD8 != -1)
  {
    v78 = v25;
    swift_once();
    v25 = v78;
  }

  v26 = qword_100300E28;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_100300E28, "Setting up zone after zoneNotFound error", 40, 2, _swiftEmptyArrayStorage);
  v27 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v26, "Re-attempting created record after creating zone", 48, 2, _swiftEmptyArrayStorage);
  v28 = v90;
  v29 = [v90 recordID];
  v30 = [v29 zoneID];

  v31 = [v30 zoneName];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v33;
  v82 = v32;

  v34 = swift_allocObject();
  swift_weakInit();
  v36 = v85;
  v35 = v86;
  v37 = v87;
  (*(v85 + 16))(v87, a6, v86);
  v38 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v39 = v38 + v17;
  v40 = swift_allocObject();
  v41 = v88;
  *(v40 + 2) = v34;
  *(v40 + 3) = v41;
  *(v40 + 4) = v84;
  *(v40 + 5) = v28;
  (*(v36 + 32))(&v40[v38], v37, v35);
  v40[v39] = v89 & 1;

  v42 = v28;
  sub_10014BDC4(v82, v81, 0, sub_100162600, v40);
}

uint64_t sub_1001552D8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v48 = a6;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_10015C3E8();
    swift_allocError();
    *v26 = 0;
    a3();
  }

  v16 = Strong;
  if (a1)
  {
    v47 = a3;
    swift_errorRetain();
    v17 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v18 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100226100;
    aBlock[0] = a1;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_1000EE954();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Unable to create zone - %@", 26, 2, v19);

    sub_10015C3E8();
    v23 = swift_allocError();
    *v24 = a1;
    swift_errorRetain();
    (v47)(v23, 1);

    swift_errorRetain();
    sub_100161E3C(a5, v48, a7 & 1, a1);
  }

  sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1002290F0;
  *(v27 + 32) = a5;
  (*(v13 + 16))(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v12);
  v28 = *(v13 + 80);
  LODWORD(v48) = a7;
  v29 = (v28 + 48) & ~v28;
  v30 = swift_allocObject();
  v31 = a3;
  v32 = v30;
  *(v30 + 2) = v31;
  *(v30 + 3) = a4;
  *(v30 + 4) = v16;
  *(v30 + 5) = a5;
  (*(v13 + 32))(&v30[v29], &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *(v32 + v29 + v14) = v48 & 1;
  v33 = a5;

  sub_1001559B8(v27, sub_100162698, v32);
  v35 = v34;

  if (!v35)
  {
  }

  v36 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v37 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100226100;
  *(v38 + 56) = sub_1000FA784(0, &qword_1002F9358, CKModifyRecordsOperation_ptr);
  *(v38 + 64) = sub_100162740(&unk_1002F9360, &qword_1002F9358, CKModifyRecordsOperation_ptr, &protocol conformance descriptor for NSObject);
  *(v38 + 32) = v35;
  v39 = v35;
  os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v37, "[Second Attempt] Adding CloudKit operation for create record %@", 63, 2, v38);

  v40 = *(v16 + 64);
  v41 = swift_allocObject();
  *(v41 + 16) = v16;
  *(v41 + 24) = v39;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1001633E8;
  *(v42 + 24) = v41;
  aBlock[4] = sub_1001633EC;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100174328;
  aBlock[3] = &unk_1002BE998;
  v43 = _Block_copy(aBlock);

  v44 = v39;

  dispatch_sync(v40, v43);

  _Block_release(v43);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1001558C8(unint64_t a1, char a2, void (*a3)(unint64_t, uint64_t, void (*)(void), uint64_t, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8)
{
  v12 = a1;
  if ((a2 & 1) == 0)
  {
    if (a1 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_5:
        if ((v12 & 0xC000000000000001) == 0)
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v13 = *(v12 + 32);
          goto LABEL_8;
        }

LABEL_14:
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
        v14 = v13;
        (a3)();

        v12 = 0;
        goto LABEL_9;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_14;
  }

  a3(a1, 1, a3, a4, a5);
LABEL_9:

  sub_100161E3C(a6, a7, a8 & 1, v12);
}

void sub_1001559B8(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_26:
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v38 = v8;
    v39 = v7;
    v40 = a2;
    v8 = v4;
    v4 = 0;
    v7 = a1 & 0xC000000000000001;
    do
    {
      if (v7)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v12 = *(a1 + 8 * v4 + 32);
      }

      v13 = v12;
      a2 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = *(CKRecord.changedKeys()() + 16);

      if (v14)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
    }

    while (a2 != v11);
    v15 = aBlock;
    v4 = v8;
    v7 = v39;
    a2 = v40;
    v8 = v38;
    if ((aBlock & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v15 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  if ((v15 & 0x4000000000000000) != 0)
  {
LABEL_27:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (!*(v15 + 16))
  {
LABEL_28:

    v23 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v24 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100226100;
    sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
    v26 = Array.description.getter();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_1000EE954();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "No updates in the records. Skipping - %@", 40, 2, v25);

    v29 = swift_allocObject();
    v30 = v45;
    v29[2] = a2;
    v29[3] = v30;
    v29[4] = a1;
    v51 = sub_1001627E0;
    v52 = v29;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_1001742E0;
    v50 = &unk_1002BEA38;
    v31 = _Block_copy(&aBlock);

    v32 = v41;
    static DispatchQoS.unspecified.getter();
    v46 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v33, v34, v35);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    v36 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);
    (*(v8 + 8))(v36, v7);
    (*(v42 + 8))(v32, v44);

    return;
  }

LABEL_19:
  sub_1000FA784(0, &qword_1002F9358, CKModifyRecordsOperation_ptr);

  v53.is_nil = 0;
  v16 = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v53, v54).super.super.super.super.isa;
  v17 = sub_100140F8C();
  [(objc_class *)v16 setGroup:v17];

  [(objc_class *)v16 setCallbackQueue:*(v4 + 80)];
  if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
  {
    [(objc_class *)v16 setQualityOfService:25];
  }

  v18 = [(objc_class *)v16 configuration];
  if (v18)
  {
    v19 = v18;
    [v18 setAutomaticallyRetryNetworkFailures:0];

    v20 = [(objc_class *)v16 configuration];
    if (v20)
    {

      [v20 setDiscretionaryNetworkBehavior:0];

      v21 = swift_allocObject();
      v21[2] = a1;
      v21[3] = a2;
      v21[4] = v45;
      v21[5] = v4;
      v51 = sub_100162784;
      v52 = v21;
      aBlock = _NSConcreteStackBlock;
      v48 = 1107296256;
      v49 = sub_1001566FC;
      v50 = &unk_1002BE9E8;
      v22 = _Block_copy(&aBlock);

      [(objc_class *)v16 setModifyRecordsCompletionBlock:v22];
      _Block_release(v22);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1001560A4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, void))
{
  v6 = a3;
  v7 = a1;
  if (a1)
  {
    if (!a3)
    {
      v8 = static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      v9 = qword_100300E28;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100226100;
      *(v10 + 56) = sub_1000EE870(&qword_1002F9D00, &qword_1002292D8);
      *(v10 + 64) = sub_1000FA0E0(&qword_1002F9370, &qword_1002F9D00, &qword_1002292D8, &protocol conformance descriptor for [A]);
      v6 = a4;
      *(v10 + 32) = a4;

      v40 = v9;
      os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Records (%@) saved successfully.", 32, 2, v10);

      if (IsAppleInternalBuild())
      {
        v11 = static os_log_type_t.default.getter();
      }

      else
      {
        v11 = static os_log_type_t.debug.getter();
      }

      v39 = v11;
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_100226100;
      if (a4 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v41 = v7;
      v42 = a5;
      if (!v23)
      {
LABEL_36:
        v34 = Array.description.getter();
        v36 = v35;

        *(v38 + 56) = &type metadata for String;
        *(v38 + 64) = sub_1000EE954();
        *(v38 + 32) = v34;
        *(v38 + 40) = v36;
        os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v40, "Update cloud with CKRecords - %@", 32, 2, v38);

        v42(v41, 0);
        return;
      }

      v24 = 0;
      a5 = (a4 & 0xC000000000000001);
      v7 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (a5)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v25 = *(v6 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        sub_100143BEC();
        v29 = v28;
        v31 = v30;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1001CF194(0, *(v7 + 16) + 1, 1, v7);
        }

        v9 = *(v7 + 16);
        v32 = *(v7 + 24);
        if (v9 >= v32 >> 1)
        {
          v7 = sub_1001CF194((v32 > 1), v9 + 1, 1, v7);
        }

        *(v7 + 16) = v9 + 1;
        v33 = v7 + 16 * v9;
        *(v33 + 32) = v29;
        *(v33 + 40) = v31;
        ++v24;
        v6 = a4;
        if (v27 == v23)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  else if (!a3)
  {
    v20 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      v37 = v20;
      swift_once();
      v20 = v37;
    }

    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_100300E28, "Record not found in saved records.", 34, 2, _swiftEmptyArrayStorage);
    sub_10015C3E8();
    v21 = swift_allocError();
    *v22 = 0;
    a5(v21, 1);

    return;
  }

  swift_errorRetain();
  v9 = static os_log_type_t.error.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v12 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100226100;
  swift_getErrorValue();
  v14 = Error.localizedDescription.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_1000EE954();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v12, "Error saving records. Error - %@", 32, 2, v13);

  sub_10014E48C(v6, 0);
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980, v17, v18, v19);
    _BridgedStoredNSError.code.getter();
    if (v44 == 2 && v7)
    {
      if (v7 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= 2)
        {
          goto LABEL_14;
        }
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
      {
LABEL_14:
        a5(v7, 0);
        swift_errorRetain();
        a5(v6, 1);

        return;
      }
    }
  }

  swift_errorRetain();
  a5(v6, 1);
}

uint64_t sub_100156720(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6, unint64_t *a7, void *a8)
{
  v12 = a2;
  v13 = *(a1 + 32);
  if (a2)
  {
    sub_1000FA784(0, a5, a6);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_1000FA784(0, a7, a8);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = a4;
  v13(v12, a3, a4);
}

uint64_t sub_100156800(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = 0;
  swift_beginAccess();
  v8 = *(a1 + 120);
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v12 = 1 << *(*(a1 + 120) + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v193 = a1;
  *&v194 = *(a1 + 120);
  swift_bridgeObjectRetain_n();
  if (!v14)
  {
LABEL_5:
    while (1)
    {
      v16 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v16 >= v15)
      {

        goto LABEL_21;
      }

      v14 = *(v10 + 8 * v16);
      ++v7;
      if (v14)
      {
        goto LABEL_8;
      }
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  while (1)
  {
    v16 = v7;
LABEL_8:
    v17 = __clz(__rbit64(v14)) | (v16 << 6);
    v189 = *(*(v194 + 56) + 16 * v17);
    v18 = *(*(v194 + 48) + 8 * v17);

    v19 = v18;
    v20 = [v18 recordName];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v22;

    v23 = [a2 recordID];
    v24 = [v23 recordName];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v21 == v25 && v5 == v27)
    {

      goto LABEL_18;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      break;
    }

    v14 &= v14 - 1;

    v7 = v16;
    if (!v14)
    {
      goto LABEL_5;
    }
  }

LABEL_18:

  sub_10015C3E8();
  v30 = swift_allocError();
  *v31 = 5;
  v202[0] = v30;
  v189(v202);

  swift_beginAccess();
  v32 = sub_10015C4EC(v19, sub_1000F8DD8, &qword_1002F8020, &unk_100226FF0);
  v34 = v33;
  swift_endAccess();
  sub_100007B0C(v32, v34);
  v5 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v35 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100226100;
  v37 = v19;
  v38 = [v37 description];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_1000EE954();
  *(v36 + 32) = v39;
  *(v36 + 40) = v41;
  *&v194 = v36;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v35, "Updating cancelled pending record deletion for: %@", 50, 2, v36);

LABEL_21:

  swift_beginAccess();
  v42 = *(v193 + 112);
  v45 = *(v42 + 64);
  v44 = v42 + 64;
  v43 = v45;
  v46 = 1 << *(*(v193 + 112) + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v43;
  v49 = (v46 + 63) >> 6;
  v190 = *(v193 + 112);
  swift_bridgeObjectRetain_n();
  v50 = 0;
  if (!v48)
  {
LABEL_25:
    while (1)
    {
      v51 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v51 >= v49)
      {

        v65 = [a2 encryptedValues];
        v196 = "le error %@";
        v66 = String._bridgeToObjectiveC()();
        v67 = [v65 objectForKeyedSubscript:v66];
        swift_unknownObjectRelease();

        if (!v67 || (v198 = v67, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) == 0))
        {
LABEL_56:
          if (IsAppleInternalBuild())
          {
            v86 = static os_log_type_t.default.getter();
          }

          else
          {
            v86 = static os_log_type_t.debug.getter();
          }

          v87 = v86;
          if (qword_1002F7AD8 != -1)
          {
            swift_once();
          }

          v88 = qword_100300E28;
          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_100226C80;
          v90 = [a2 recordID];
          v91 = [v90 description];
          v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v94 = v93;

          *(v89 + 56) = &type metadata for String;
          v95 = sub_1000EE954();
          *(v89 + 64) = v95;
          *(v89 + 32) = v92;
          *(v89 + 40) = v94;
          sub_100143BEC();
          *(v89 + 96) = &type metadata for String;
          *(v89 + 104) = v95;
          *(v89 + 72) = v96;
          *(v89 + 80) = v97;
          v196 = v88;
          os_log(_:dso:log:_:_:)(v87, &_mh_execute_header, v88, "Staging pending CKRecord %@ - %@", 32, 2, v89);

          v98 = swift_allocObject();
          *(v98 + 16) = a3;
          *(v98 + 24) = a4;
          swift_beginAccess();

          v99 = sub_10015DFA4(sub_1001634DC, v98, a2);
          v101 = v100;
          swift_endAccess();
          sub_100007B0C(v99, v101);
          goto LABEL_70;
        }

        v68 = *(v193 + 112);
        v69 = 1 << *(v68 + 32);
        v70 = -1;
        if (v69 < 64)
        {
          v70 = ~(-1 << v69);
        }

        v71 = v70 & *(v68 + 64);
        v72 = (v69 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        for (i = 0; v71; i = v74)
        {
          v74 = i;
LABEL_44:
          v75 = __clz(__rbit64(v71));
          v71 &= v71 - 1;
          v76 = v75 | (v74 << 6);
          v194 = *(*(v68 + 56) + 16 * v76);
          v77 = *(*(v68 + 48) + 8 * v76);
          swift_retain_n();
          v5 = v77;
          v78 = [v5 encryptedValues];
          v79 = String._bridgeToObjectiveC()();
          v80 = [v78 objectForKeyedSubscript:v79];
          swift_unknownObjectRelease();

          if (v80 && (v198 = v80, (swift_dynamicCast() & 1) != 0))
          {

            v81 = CKRecord.recordType.getter();
            v83 = v82;
            if (v81 == CKRecord.recordType.getter() && v83 == v84)
            {
              goto LABEL_90;
            }

            v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v85)
            {
              goto LABEL_91;
            }
          }

          else
          {
          }
        }

        while (1)
        {
          v74 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v74 >= v72)
          {

            goto LABEL_56;
          }

          v71 = *(v68 + 64 + 8 * v74);
          ++i;
          if (v71)
          {
            goto LABEL_44;
          }
        }

        __break(1u);
        goto LABEL_98;
      }

      v48 = *(v44 + 8 * v51);
      ++v50;
      if (v48)
      {
        goto LABEL_28;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:

LABEL_91:

    v152 = swift_allocObject();
    v152[1] = v194;

    v153 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v154 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_100226C80;
    v156 = swift_allocObject();
    *(v156 + 16) = sub_1001634E0;
    *(v156 + 24) = v152;
    v200 = v5;
    *&v201 = sub_1001634DC;
    *(&v201 + 1) = v156;
    v185 = v5;

    sub_1000EE870(&unk_1002F9320, &qword_1002292B0);
    v157 = String.init<A>(describing:)();
    v159 = v158;
    *(v155 + 56) = &type metadata for String;
    v160 = sub_1000EE954();
    *(v155 + 64) = v160;
    *(v155 + 32) = v157;
    *(v155 + 40) = v159;
    v161 = a2;
    v162 = [v161 description];
    v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v165 = v164;

    *(v155 + 96) = &type metadata for String;
    *(v155 + 104) = v160;
    *(v155 + 72) = v163;
    *(v155 + 80) = v165;
    v196 = v154;
    os_log(_:dso:log:_:_:)(v153, &_mh_execute_header, v154, "Updating existing pending record %@ with same bluetooth address with: %@", 72, 2, v155);

    sub_10015C3E8();
    v166 = swift_allocError();
    *v167 = 5;
    v200 = v166;
    LOBYTE(v201) = 1;

    (v194)(&v200);

    a2 = v152;

    swift_beginAccess();
    v168 = sub_10015C4EC(v185, sub_1000F8D88, &qword_1002F8018, &qword_100226FE8);
    v170 = v169;
    swift_endAccess();
    sub_100007B0C(v168, v170);
    if (IsAppleInternalBuild())
    {
      v171 = static os_log_type_t.default.getter();
    }

    else
    {
      v171 = static os_log_type_t.debug.getter();
    }

    v172 = v171;
    v173 = swift_allocObject();
    *(v173 + 16) = xmmword_100226C80;
    v174 = [v161 recordID];
    v175 = [v174 description];
    v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v178 = v177;

    *(v173 + 56) = &type metadata for String;
    *(v173 + 64) = v160;
    *(v173 + 32) = v176;
    *(v173 + 40) = v178;
    sub_100143BEC();
    *(v173 + 96) = &type metadata for String;
    *(v173 + 104) = v160;
    *(v173 + 72) = v179;
    *(v173 + 80) = v180;
    os_log(_:dso:log:_:_:)(v172, &_mh_execute_header, v196, "Updating existing pending CKRecord %@ - %@", 42, 2, v173);

    v181 = swift_allocObject();
    *(v181 + 16) = a3;
    *(v181 + 24) = a4;
    swift_beginAccess();

    v182 = sub_10015DFA4(sub_1001634DC, v181, v161);
    v184 = v183;
    swift_endAccess();
    sub_100007B0C(v182, v184);

    goto LABEL_70;
  }

  while (1)
  {
    v51 = v50;
LABEL_28:
    v52 = __clz(__rbit64(v48)) | (v51 << 6);
    v195 = *(*(v190 + 56) + 16 * v52);
    v53 = *(*(v190 + 48) + 8 * v52);

    *&v194 = v53;
    v54 = [v53 recordID];
    v55 = [v54 recordName];

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v57;

    v58 = [a2 recordID];
    v59 = [v58 recordName];

    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    if (v56 == v60 && v5 == v62)
    {

      goto LABEL_64;
    }

    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v64)
    {
      break;
    }

    v48 &= v48 - 1;

    v50 = v51;
    if (!v48)
    {
      goto LABEL_25;
    }
  }

LABEL_64:

  v191 = swift_allocObject();
  *(v191 + 16) = v195;
  v102 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v103 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_100226100;
  v105 = v194;
  v106 = [v105 description];
  v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = v108;
  DWORD1(v194) = HIDWORD(v105);

  *(v104 + 56) = &type metadata for String;
  v110 = sub_1000EE954();
  *(v104 + 64) = v110;
  *(v104 + 32) = v107;
  *(v104 + 40) = v109;
  os_log(_:dso:log:_:_:)(v102, &_mh_execute_header, v103, "Existing pending record: %@", 27, 2, v104);

  v111 = static os_log_type_t.default.getter();
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_100226100;
  v113 = a2;
  v114 = [v113 description];
  v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v117 = v116;

  *(v112 + 56) = &type metadata for String;
  *(v112 + 64) = v110;
  *(v112 + 32) = v115;
  *(v112 + 40) = v117;
  v196 = v103;
  os_log(_:dso:log:_:_:)(v111, &_mh_execute_header, v103, "Replacing existing pending record with updated record: %@", 57, 2, v112);

  if (IsAppleInternalBuild())
  {
    v118 = static os_log_type_t.default.getter();
  }

  else
  {
    v118 = static os_log_type_t.debug.getter();
  }

  v119 = v118;
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_100226C80;
  v121 = [v113 recordID];
  v122 = [v121 description];
  v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v125 = v124;

  *(v120 + 56) = &type metadata for String;
  *(v120 + 64) = v110;
  *(v120 + 32) = v123;
  *(v120 + 40) = v125;
  sub_100143BEC();
  *(v120 + 96) = &type metadata for String;
  *(v120 + 104) = v110;
  *(v120 + 72) = v126;
  *(v120 + 80) = v127;
  os_log(_:dso:log:_:_:)(v119, &_mh_execute_header, v103, "Updated record CKRecord %@ - %@", 31, 2, v120);

  swift_beginAccess();
  v128 = sub_10015C4EC(v105, sub_1000F8D88, &qword_1002F8018, &qword_100226FE8);
  sub_100007B0C(v128, v129);
  v130 = swift_allocObject();
  v130[2] = v105;
  v130[3] = sub_10015E43C;
  v130[4] = v191;
  v130[5] = a3;
  v130[6] = a4;
  v131 = swift_allocObject();
  *(v131 + 16) = sub_10015E488;
  *(v131 + 24) = v130;
  v132 = v105;

  v133 = sub_10015DFA4(sub_10015E4E8, v131, v113);
  v135 = v134;
  swift_endAccess();
  sub_100007B0C(v133, v135);

LABEL_70:
  LODWORD(v194) = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_98:
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_100226C80;
  v137 = *(v193 + 112);
  v138 = *(v137 + 16);
  *(v136 + 56) = &type metadata for Int;
  *(v136 + 64) = &protocol witness table for Int;
  v192 = v136;
  *(v136 + 32) = v138;
  v139 = 1 << *(v137 + 32);
  v140 = -1;
  if (v139 < 64)
  {
    v140 = ~(-1 << v139);
  }

  v141 = v140 & *(v137 + 64);
  v142 = (v139 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v143 = 0;
  v5 = _swiftEmptyArrayStorage;
  while (v141)
  {
LABEL_81:
    v146 = __clz(__rbit64(v141)) | (v143 << 6);
    v147 = *(v137 + 56);
    v200 = *(*(v137 + 48) + 8 * v146);
    v201 = *(v147 + 16 * v146);
    sub_100157C8C(&v200, &v198);
    v148 = v199;
    if (v199)
    {
      a2 = v198;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1001CF194(0, v5[2] + 1, 1, v5);
      }

      v150 = v5[2];
      v149 = v5[3];
      if (v150 >= v149 >> 1)
      {
        v5 = sub_1001CF194((v149 > 1), v150 + 1, 1, v5);
      }

      v5[2] = v150 + 1;
      v144 = &v5[2 * v150];
      v144[4] = a2;
      v144[5] = v148;
    }

    v141 &= v141 - 1;
  }

  while (1)
  {
    v145 = v143 + 1;
    if (__OFADD__(v143, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v145 >= v142)
    {
      break;
    }

    v141 = *(v137 + 64 + 8 * v145);
    ++v143;
    if (v141)
    {
      v143 = v145;
      goto LABEL_81;
    }
  }

  v192[12] = sub_1000EE870(&qword_1002F7F00, &qword_1002284F0);
  v192[13] = sub_1000FA0E0(&unk_1002F9310, &qword_1002F7F00, &qword_1002284F0, &protocol conformance descriptor for [A]);
  v192[9] = v5;
  os_log(_:dso:log:_:_:)(v194, &_mh_execute_header, v196, "Pending records[%d]: %@", 23, 2, v192);

  return sub_100142A78(a5 & 1);
}

uint64_t sub_100157C8C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  v4 = [v3 recordID];
  v5 = [v4 recordName];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = 58;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = v8;
  v11 = v3;
  v12 = CKRecord.recordType.getter();
  v14 = v13;

  v26 = v6;
  v27 = v10;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 58;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);

  v18 = v6;
  v17 = v10;
  v19 = [v11 encryptedValues];

  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 objectForKeyedSubscript:v20];
  swift_unknownObjectRelease();

  if (v21 && (sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v22 = v26;
    v23 = v27;
  }

  else
  {
    v23 = 0xE200000000000000;
    v22 = 15932;
  }

  v24._countAndFlagsBits = v22;
  v24._object = v23;
  String.append(_:)(v24);

  *a2 = v18;
  a2[1] = v17;
  return result;
}

uint64_t sub_100157F14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = a7;
  v27 = a5;
  v29 = a10;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v17 = *(v31 - 8);
  __chkstk_darwin(v31);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a3 + 72);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = v27;
  *(v20 + 40) = a6;
  *(v20 + 48) = v28;
  aBlock[4] = a9;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = v29;
  v21 = _Block_copy(aBlock);

  v22 = a4;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v23, v24, v25);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v14 + 8))(v16, v13);
  (*(v17 + 8))(v19, v31);
}

uint64_t sub_100158204(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  v109 = a1;
  v6 = *(a1 + 112);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a1 + 112) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v113 = *(a1 + 112);
  swift_bridgeObjectRetain_n();
  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = __clz(__rbit64(v12)) | (v15 << 6);
      v17 = *(*(v113 + 48) + 8 * v16);
      v18 = *(v113 + 56) + 16 * v16;
      v19 = *(v18 + 8);
      v110 = *v18;
      v20 = v17;
      LODWORD(v116) = v19;

      v21 = [v20 recordID];
      v22 = [v21 recordName];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = [a2 recordName];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v23 == v27 && v25 == v29)
      {

        goto LABEL_18;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        break;
      }

      v12 &= v12 - 1;

      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

LABEL_18:

    v32 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v33 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100226100;
    v35 = v20;
    v36 = [v35 description];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_1000EE954();
    *(v34 + 32) = v37;
    *(v34 + 40) = v39;
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "Removing pending update for record: %@", 38, 2, v34);

    sub_10015C3E8();
    v40 = swift_allocError();
    *v41 = 5;
    v119 = v40;
    v120 = 1;
    v110(&v119);

    swift_beginAccess();
    v42 = sub_10015C4EC(v35, sub_1000F8D88, &qword_1002F8018, &qword_100226FE8);
    v44 = v43;
    swift_endAccess();
    sub_100007B0C(v42, v44);

LABEL_21:
    swift_beginAccess();
    v45 = *(v109 + 120);
    v48 = *(v45 + 64);
    v47 = v45 + 64;
    v46 = v48;
    v49 = 1 << *(*(v109 + 120) + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & v46;
    v52 = (v49 + 63) >> 6;
    v111 = *(v109 + 120);
    swift_bridgeObjectRetain_n();
    v53 = 0;
    if (v51)
    {
      while (1)
      {
        v54 = v53;
LABEL_28:
        v55 = __clz(__rbit64(v51)) | (v54 << 6);
        v116 = *(*(v111 + 56) + 16 * v55);
        v56 = *(*(v111 + 48) + 8 * v55);

        v114 = v56;
        v57 = [v56 recordName];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        v61 = [a2 recordName];
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

        if (v58 == v62 && v60 == v64)
        {

          goto LABEL_38;
        }

        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v66)
        {
          break;
        }

        v51 &= v51 - 1;

        v53 = v54;
        if (!v51)
        {
          goto LABEL_25;
        }
      }

LABEL_38:

      v71 = swift_allocObject();
      *(v71 + 16) = v116;
      v72 = swift_allocObject();
      v72[2] = v114;
      v72[3] = sub_10015C43C;
      v72[4] = v71;
      v72[5] = a3;
      v72[6] = a4;
      v73 = v114;

      v74 = static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      v75 = qword_100300E28;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_100226100;
      v77 = v73;
      v78 = [v77 description];
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      *(v76 + 56) = &type metadata for String;
      *(v76 + 64) = sub_1000EE954();
      *(v76 + 32) = v79;
      *(v76 + 40) = v81;
      os_log(_:dso:log:_:_:)(v74, &_mh_execute_header, v75, "Updating existing pending record: %@", 36, 2, v76);

      v82 = swift_allocObject();
      *(v82 + 16) = sub_10015C474;
      *(v82 + 24) = v72;
      swift_beginAccess();

      v83 = sub_10015E130(sub_10015C4C0, v82, v77);
      v85 = v84;
      swift_endAccess();
      sub_100007B0C(v83, v85);
    }

    else
    {
      while (1)
      {
LABEL_25:
        v54 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_58;
        }

        if (v54 >= v52)
        {
          break;
        }

        v51 = *(v47 + 8 * v54);
        ++v53;
        if (v51)
        {
          goto LABEL_28;
        }
      }

      v67 = swift_allocObject();
      *(v67 + 16) = a3;
      *(v67 + 24) = a4;
      swift_beginAccess();

      v68 = sub_10015E130(sub_1001634C8, v67, a2);
      v70 = v69;
      swift_endAccess();
      sub_100007B0C(v68, v70);
    }

    LODWORD(v116) = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_59;
  }

LABEL_5:
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      goto LABEL_21;
    }

    v12 = *(v8 + 8 * v15);
    ++v14;
    if (v12)
    {
      goto LABEL_8;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_42:
  v115 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_100226C80;
  v87 = *(v109 + 120);
  v88 = *(v87 + 16);
  *(v86 + 56) = &type metadata for Int;
  *(v86 + 64) = &protocol witness table for Int;
  v112 = v86;
  *(v86 + 32) = v88;
  v89 = v87 + 64;
  v90 = 1 << *(v87 + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v92 = v91 & *(v87 + 64);
  v93 = (v90 + 63) >> 6;
  v118 = v87;
  swift_bridgeObjectRetain_n();
  v94 = 0;
  for (i = _swiftEmptyArrayStorage; v92; *(v104 + 5) = v101)
  {
LABEL_49:
    v97 = *(v118[6] + 8 * (__clz(__rbit64(v92)) | (v94 << 6)));

    v98 = [v97 recordName];
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1001CF194(0, *(i + 2) + 1, 1, i);
    }

    v103 = *(i + 2);
    v102 = *(i + 3);
    if (v103 >= v102 >> 1)
    {
      i = sub_1001CF194((v102 > 1), v103 + 1, 1, i);
    }

    v92 &= v92 - 1;
    *(i + 2) = v103 + 1;
    v104 = &i[16 * v103];
    *(v104 + 4) = v99;
  }

  while (1)
  {
    v96 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v96 >= v93)
    {
      break;
    }

    v92 = *(v89 + 8 * v96);
    ++v94;
    if (v92)
    {
      v94 = v96;
      goto LABEL_49;
    }
  }

  v112[12] = sub_1000EE870(&qword_1002F7F00, &qword_1002284F0);
  v112[13] = sub_1000FA0E0(&unk_1002F9310, &qword_1002F7F00, &qword_1002284F0, &protocol conformance descriptor for [A]);
  v112[9] = i;
  os_log(_:dso:log:_:_:)(v116, &_mh_execute_header, v115, "Pending deletion for records[%d]: %@", 36, 2, v112);

  return sub_100142A78(a5 & 1);
}

uint64_t sub_100158CC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(result + 16);
  if (v7)
  {
    v8 = result;
    sub_1000FA784(0, &qword_1002F92E0, CKQuery_ptr);
    v9 = objc_opt_self();
    v34 = 0;
    v10 = 0;
    v28 = v6;
    queue = *(v6 + 64);
    v27 = v9;
    v25 = v36;
    v11 = v7 - 1;
    for (i = (v8 + 40); ; i += 2)
    {
      v14 = *(i - 1);
      v13 = *i;
      swift_bridgeObjectRetain_n();
      v15 = [v27 predicateWithValue:{1, v25}];
      v16._countAndFlagsBits = v14;
      v16._object = v13;
      isa = CKQuery.init(recordType:predicate:)(v16, v15).super.isa;
      v18 = [objc_allocWithZone(CKQueryOperation) initWithQuery:isa];
      [v18 setZoneID:a2];
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      v20[2] = a3;
      v20[3] = a4;
      v20[4] = a5;
      v20[5] = a6;
      v20[6] = v19;
      v20[7] = v14;
      v20[8] = v13;
      sub_10015C2F4(a3, a4, a5, a6);

      CKQueryOperation.recordMatchedBlock.setter();

      v21 = swift_allocObject();
      *(v21 + 16) = v28;
      *(v21 + 24) = v18;

      v22 = v18;
      sub_100007B0C(v34, v10);
      v23 = swift_allocObject();
      *(v23 + 16) = sub_10015C384;
      *(v23 + 24) = v21;
      v36[2] = sub_10015C3A0;
      v36[3] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v36[0] = sub_100174328;
      v36[1] = &unk_1002BE5D8;
      v24 = _Block_copy(aBlock);

      dispatch_sync(queue, v24);

      _Block_release(v24);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if (v22)
      {
        break;
      }

      if (!v11)
      {
      }

      --v11;
      v34 = sub_10015C384;
      v10 = v21;
    }

    __break(1u);
  }

  return result;
}

void sub_100158FD4(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3)
  {
    v12 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v13 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100226C80;
    v15 = a1;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v14 + 56) = &type metadata for String;
    v20 = sub_1000EE954();
    *(v14 + 64) = v20;
    *(v14 + 32) = v17;
    *(v14 + 40) = v19;
    aBlock = a2;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v21 = String.init<A>(describing:)();
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v20;
    *(v14 + 72) = v21;
    *(v14 + 80) = v22;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "error querying the record to delete: %@: %@", 43, 2, v14);
    goto LABEL_13;
  }

  v25 = a9;
  v24 = a10;
  if (a5)
  {

    v29 = [a2 encryptedValues];

    v30 = String._bridgeToObjectiveC()();

    v31 = [v29 objectForKeyedSubscript:v30];
    swift_unknownObjectRelease();

    if (!v31)
    {

      goto LABEL_13;
    }

    v60 = v31;
    sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
    if (swift_dynamicCast())
    {
      if (aBlock == a6 && v55 == a7)
      {

LABEL_15:
        v53 = static os_log_type_t.default.getter();
        if (qword_1002F7AD8 != -1)
        {
          swift_once();
        }

        v52 = qword_100300E28;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1002289A0;
        *(v33 + 56) = &type metadata for String;
        v34 = sub_1000EE954();
        *(v33 + 32) = a4;
        *(v33 + 40) = a5;
        *(v33 + 96) = &type metadata for String;
        *(v33 + 104) = v34;
        *(v33 + 64) = v34;
        *(v33 + 72) = a6;
        *(v33 + 80) = a7;
        v35 = [a2 description];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        sub_100008030(a2, 0);
        *(v33 + 136) = &type metadata for String;
        *(v33 + 144) = v34;
        *(v33 + 112) = v36;
        *(v33 + 120) = v38;
        os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v52, "CloudSync: Found %@ to delete record: %@: %@", 44, 2, v33);

        v25 = a9;
        v24 = a10;
        goto LABEL_18;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_15;
      }
    }

LABEL_13:

    return;
  }

LABEL_18:
  v39 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v40 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100226100;
  v42 = a1;
  v43 = [v42 description];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  *(v41 + 56) = &type metadata for String;
  *(v41 + 64) = sub_1000EE954();
  *(v41 + 32) = v44;
  *(v41 + 40) = v46;
  os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v40, "CloudSync: Attempting to delete record: %@", 42, 2, v41);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v48 = sub_100140CF8(Strong);
    v49 = [v48 privateCloudDatabase];

    v50 = swift_allocObject();
    *(v50 + 16) = v25;
    *(v50 + 24) = v24;
    v58 = sub_10015C3C8;
    v59 = v50;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_1001634D8;
    v57 = &unk_1002BE628;
    v51 = _Block_copy(&aBlock);

    [v49 deleteRecordWithID:v42 completionHandler:v51];
    _Block_release(v51);
  }
}

uint64_t sub_1001595A8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    v5 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v6 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100226C80;
    v8 = a1;
    sub_1000EE870(&qword_1002F92F8, &unk_1002292A0);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    *(v7 + 56) = &type metadata for String;
    v12 = sub_1000EE954();
    *(v7 + 64) = v12;
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v13 = String.init<A>(describing:)();
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v12;
    *(v7 + 72) = v13;
    *(v7 + 80) = v14;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "CloudSync: error deleting the recordID: %@: %@", 46, 2, v7);
  }

  else
  {
    v18 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v19 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226C80;
    *(v20 + 56) = &type metadata for String;
    v21 = sub_1000EE954();
    *(v20 + 64) = v21;
    *(v20 + 32) = a3;
    *(v20 + 40) = a4;
    v22 = a1;

    sub_1000EE870(&qword_1002F92F8, &unk_1002292A0);
    v23 = String.init<A>(describing:)();
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v21;
    *(v20 + 72) = v23;
    *(v20 + 80) = v24;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "CloudSync: Deleted record Type: %@: %@", 38, 2, v20);
  }
}

void sub_100159820(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1001598AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100140CF8(a1);
  v4 = [v3 privateCloudDatabase];

  [v4 addOperation:a2];
}

uint64_t sub_100159924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = a5;
  v67 = a6;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v58 = v21;
    v59 = v19;
    v60 = v17;
    v61 = v18;
    v62 = v15;
    v63 = v14;
    v57 = a11;
    v56 = a10;
    v23 = result;
    v68 = dispatch_group_create();
    v24 = swift_allocObject();
    v25 = v24;
    *(v24 + 16) = _swiftEmptyArrayStorage;
    v26 = *(a4 + 16);
    if (v26)
    {
      v27 = a7;
      v71 = 0;
      v64 = a9;
      v65 = v24;
      v28 = (a4 + 40);
      do
      {
        v70 = v26;
        v30 = *(v28 - 1);
        v29 = *v28;

        v31 = v68;
        dispatch_group_enter(v68);
        sub_1000FA784(0, &qword_1002F92E0, CKQuery_ptr);
        v32 = [objc_opt_self() predicateWithValue:1];
        v33._countAndFlagsBits = v30;
        v33._object = v29;
        isa = CKQuery.init(recordType:predicate:)(v33, v32).super.isa;
        v34 = [objc_allocWithZone(CKQueryOperation) initWithQuery:isa];
        [v34 setZoneID:v66];
        v35 = swift_allocObject();
        v36 = v67;
        v35[2] = v67;
        v35[3] = v27;
        v37 = v64;
        v35[4] = a8;
        v35[5] = v37;
        v35[6] = v25;

        sub_10015C2F4(v36, v27, a8, v37);
        CKQueryOperation.recordMatchedBlock.setter();
        *(swift_allocObject() + 16) = v31;
        v38 = v31;
        CKQueryOperation.queryResultBlock.setter();
        v39 = v27;
        v40 = a8;
        v41 = *(v23 + 64);
        v42 = swift_allocObject();
        v43 = swift_weakInit();
        __chkstk_darwin(v43);
        *(&v56 - 2) = v42;
        *(&v56 - 1) = v34;
        v44 = v41;
        sub_1000EE870(&qword_1002F92E8, &unk_100229290);
        v45 = v71;
        OS_dispatch_queue.sync<A>(execute:)();
        v71 = v45;

        a8 = v40;
        v27 = v39;

        v25 = v65;
        v28 += 2;
        v26 = v70 - 1;
      }

      while (v70 != 1);
    }

    v46 = swift_allocObject();
    v47 = v57;
    v46[2] = v56;
    v46[3] = v47;
    v46[4] = v25;
    aBlock[4] = sub_10015C340;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002BE538;
    v48 = _Block_copy(aBlock);

    v49 = v58;
    static DispatchQoS.unspecified.getter();
    v72 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v50, v51, v52);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    v53 = v60;
    v54 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v55 = v68;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v48);

    (*(v62 + 8))(v53, v54);
    (*(v59 + 8))(v49, v61);
  }

  return result;
}

uint64_t sub_100159F3C(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v10 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v11 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226C80;
    v13 = a1;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *(v12 + 56) = &type metadata for String;
    v18 = sub_1000EE954();
    *(v12 + 64) = v18;
    *(v12 + 32) = v15;
    *(v12 + 40) = v17;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v19 = String.init<A>(describing:)();
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = v18;
    *(v12 + 72) = v19;
    *(v12 + 80) = v20;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "error querying the record: %@: %@", 33, 2, v12);
  }

  if (a5)
  {

    v25 = [a2 encryptedValues];

    v26 = String._bridgeToObjectiveC()();

    v27 = [v25 objectForKeyedSubscript:v26];
    swift_unknownObjectRelease();

    if (!v27)
    {
    }

    sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
    if (swift_dynamicCast())
    {
      if (v48 == a6 && v49 == a7)
      {

LABEL_15:
        v30 = static os_log_type_t.default.getter();
        if (qword_1002F7AD8 != -1)
        {
          swift_once();
        }

        v31 = qword_100300E28;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1002289A0;
        *(v32 + 56) = &type metadata for String;
        v33 = sub_1000EE954();
        *(v32 + 32) = a4;
        *(v32 + 40) = a5;
        *(v32 + 96) = &type metadata for String;
        *(v32 + 104) = v33;
        *(v32 + 64) = v33;
        *(v32 + 72) = a6;
        *(v32 + 80) = a7;
        v34 = [a2 description];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        sub_100008030(a2, 0);
        *(v32 + 136) = &type metadata for String;
        *(v32 + 144) = v33;
        *(v32 + 112) = v35;
        *(v32 + 120) = v37;
        os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v31, "Found %@ record: %@: %@", 23, 2, v32);

        goto LABEL_18;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_18:
  v38 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v39 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100226100;
  v41 = a2;
  v42 = [v41 description];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  sub_100008030(a2, 0);
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_1000EE954();
  *(v40 + 32) = v43;
  *(v40 + 40) = v45;
  os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v39, "Found record: %@", 16, 2, v40);

  swift_beginAccess();
  v46 = v41;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_10015A47C(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v6 = Strong;
  if (Strong)
  {
    v7 = sub_100140CF8(Strong);
    v8 = [v7 privateCloudDatabase];

    [v8 addOperation:a2];
  }

  *a3 = v6 == 0;
}

uint64_t sub_10015A538(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  a1(v4);
}

uint64_t sub_10015A5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v3 + 72);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.notOnQueue(_:), v4, v6);
  v9;
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v10)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    return v12[15];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015A9BC(void *a1)
{
  v2 = [a1 databaseScope];
  v3 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226100;
  *(v5 + 56) = sub_1000FA784(0, &qword_1002F9448, CKDatabaseNotification_ptr);
  *(v5 + 64) = sub_100162740(&qword_1002F9450, &qword_1002F9448, CKDatabaseNotification_ptr, &protocol conformance descriptor for NSObject);
  *(v5 + 32) = a1;
  v6 = a1;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "DatabaseNotification: %@", 24, 2, v5);

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;

  sub_100153CF4(sub_10016291C, v8);
}

uint64_t sub_10015AB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21[1] = *(result + 72);
    v23 = result;
    v14 = swift_allocObject();
    v21[0] = v6;
    v22 = v9;
    v15 = v14;
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a4;
    aBlock[4] = sub_100162924;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002BEC40;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v18, v19, v20);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v21[0] + 8))(v8, v5);
    (*(v10 + 8))(v12, v22);
  }

  return result;
}

uint64_t sub_10015AEC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_10014AA54(a2, 0, sub_10016292C, a1);
  }

  return result;
}

void sub_10015AF58(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226100;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000EE954();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "APS fetchChanges error: %@", 26, 2, v5);

    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980, v9, v10, v11);
      _BridgedStoredNSError.code.getter();
      if (v15 == 4 || (_BridgedStoredNSError.code.getter(), v15 == 3))
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_100152F5C(150.0);
        }
      }
    }
  }

  else
  {
    v12 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      v14 = v12;
      swift_once();
      v12 = v14;
    }

    v13 = qword_100300E28;

    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "APS fetchChanges completed.", 27, 2, _swiftEmptyArrayStorage);
  }
}

void sub_10015B220(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v57 = *(v11 - 8);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 recordZoneID];
  if (v15)
  {
    v50 = v11;
    v51 = v10;
    v58 = v15;
    v52 = v8;
    v53 = v6;
    v54 = v7;
    v55 = v4;
    v56 = v3;
    v16 = [a1 databaseScope];
    v17 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v18 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    v49 = xmmword_100226100;
    *(v19 + 16) = xmmword_100226100;
    *(v19 + 56) = sub_1000FA784(0, &qword_1002F93D8, CKRecordZoneNotification_ptr);
    *(v19 + 64) = sub_100162740(&qword_1002F93E0, &qword_1002F93D8, CKRecordZoneNotification_ptr, &protocol conformance descriptor for NSObject);
    *(v19 + 32) = a1;
    v20 = a1;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "RecordZoneNotification: %@", 26, 2, v19);

    if (v16 == 1)
    {
      v42 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v18, "Nothing", 7, 2, _swiftEmptyArrayStorage);
    }

    else if (v16 == 3)
    {
      v41 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v18, "Nothing shared", 14, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      if (v16 == 2)
      {
        v22 = sub_100140CF8(v21);
        v23 = [v22 privateCloudDatabase];

        sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1002290F0;
        *(v24 + 32) = v58;
        sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
        v25 = v57;
        v26 = v50;
        (*(v57 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v50);
        v58 = v58;

        v27 = static OS_dispatch_queue.global(qos:)();
        (*(v25 + 8))(v14, v26);
        v28 = swift_allocObject();
        *(v28 + 16) = v24;
        *(v28 + 24) = sub_100162878;
        *(v28 + 32) = v1;
        *(v28 + 40) = v1;
        *(v28 + 48) = v23;
        *(v28 + 56) = 0;
        aBlock[4] = sub_100162884;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001742E0;
        aBlock[3] = &unk_1002BEA88;
        v29 = _Block_copy(aBlock);
        swift_retain_n();
        v30 = v23;
        v31 = v51;
        static DispatchQoS.unspecified.getter();
        v59 = _swiftEmptyArrayStorage;
        sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v32, v33, v34);
        sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
        sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
        v35 = v53;
        v36 = v56;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v29);

        (*(v55 + 8))(v35, v36);
        (*(v52 + 8))(v31, v54);

        return;
      }

      v43 = static os_log_type_t.error.getter();
      v44 = swift_allocObject();
      *(v44 + 16) = v49;
      v45 = CKDatabaseScope.description.getter();
      v47 = v46;
      *(v44 + 56) = &type metadata for String;
      *(v44 + 64) = sub_1000EE954();
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v18, "Unknown databaseScope: %@", 25, 2, v44);
    }

    v48 = v58;
  }

  else
  {
    v37 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v38 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100226100;
    *(v39 + 56) = sub_1000FA784(0, &qword_1002F93D8, CKRecordZoneNotification_ptr);
    *(v39 + 64) = sub_100162740(&qword_1002F93E0, &qword_1002F93D8, CKRecordZoneNotification_ptr, &protocol conformance descriptor for NSObject);
    *(v39 + 32) = a1;
    v40 = a1;
    os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "No recordZoneID in %@", 21, 2, v39);
  }
}

void sub_10015BA20(void *a1, char a2)
{
  v3 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226100;
  v6 = sub_100140CF8(v5);
  v7 = [v6 privateCloudDatabase];

  *(v5 + 56) = sub_1000FA784(0, &qword_1002F9438, CKDatabase_ptr);
  *(v5 + 64) = sub_100162740(&qword_1002F9440, &qword_1002F9438, CKDatabase_ptr, &protocol conformance descriptor for NSObject);
  *(v5 + 32) = v7;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "database: %@ updateCache completed.", 35, 2, v5);

  if (a2)
  {
    v8 = static os_log_type_t.error.getter();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100226100;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1000EE954();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v4, "APS fetchZoneChanges error: %@", 30, 2, v9);

    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980, v13, v14, v15);
      _BridgedStoredNSError.code.getter();
      if (v17 == 4 || (_BridgedStoredNSError.code.getter(), v17 == 3))
      {
        sub_100152F5C(150.0);
      }
    }
  }

  else
  {
    v16 = static os_log_type_t.default.getter();

    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v4, "APS fetchZoneChanges completed.", 31, 2, _swiftEmptyArrayStorage);
  }
}

void sub_10015BD68(void *a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v3 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226100;
  *(v4 + 56) = sub_1000FA784(0, &qword_1002F93C0, APSIncomingMessage_ptr);
  *(v4 + 64) = sub_100162740(&qword_1002F93C8, &qword_1002F93C0, APSIncomingMessage_ptr, &protocol conformance descriptor for NSObject);
  *(v4 + 32) = a1;
  v5 = a1;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "ContainerPushDelegate: didReceiveMessage: %@", 44, 2, v4);

  v6 = [v5 userInfo];
  if (v6)
  {
    v7 = v6;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = [objc_opt_self() notificationFromRemoteNotificationDictionary:isa];

    v10 = static os_log_type_t.error.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100226100;
    v12 = v9;
    sub_1000EE870(&qword_1002F93D0, &qword_100229320);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v11 + 56) = &type metadata for String;
    v16 = sub_1000EE954();
    *(v11 + 64) = v16;
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v3, "CKNotification received: %@", 27, 2, v11);

    v17 = v3;
    if (!v12)
    {
      v20 = static os_log_type_t.error.getter();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100226100;
      v22 = String.init<A>(describing:)();
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = v16;
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v17, "Unknown notification: %@", 24, 2, v21);

      return;
    }

    v18 = [v12 notificationType];
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v30 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v3, "Read notifications are not handled", 34, 2, _swiftEmptyArrayStorage);
        goto LABEL_19;
      }

      if (v18 == 4)
      {
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          sub_10015A9BC(v24);
          goto LABEL_19;
        }

LABEL_18:
        v31 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v3, "Unable to cast to CKRecordZoneNotification", 42, 2, _swiftEmptyArrayStorage);
        goto LABEL_19;
      }
    }

    else
    {
      if (v18 == 1)
      {
        v29 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v3, "Query notifications are not handled", 35, 2, _swiftEmptyArrayStorage);
        goto LABEL_19;
      }

      if (v18 == 2)
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          sub_10015B220(v19);
LABEL_19:

          return;
        }

        goto LABEL_18;
      }
    }

    v25 = static os_log_type_t.error.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100226100;
    type metadata accessor for NotificationType(0);
    v27 = String.init<A>(describing:)();
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = v16;
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v17, "Unknown notificationType: %@", 28, 2, v26);

    goto LABEL_19;
  }

  __break(1u);
}