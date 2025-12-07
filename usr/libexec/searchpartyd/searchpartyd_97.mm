id sub_100AAA40C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v110 = a2;
  v108 = a3;
  v107 = type metadata accessor for BeaconStoreFileRecord(0);
  v105 = *(v107 - 1);
  __chkstk_darwin(v107);
  v104 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v106 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v103 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v96 = &v89 - v8;
  v114 = type metadata accessor for UUID();
  v112 = *(v114 - 1);
  v9 = __chkstk_darwin(v114);
  v92 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v89 - v12;
  __chkstk_darwin(v11);
  v95 = &v89 - v14;
  v93 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v93);
  v94 = &v89 - v15;
  v16 = type metadata accessor for OwnedBeaconRecord(0);
  v100 = *(v16 - 8);
  v17 = *(v100 + 64);
  v18 = __chkstk_darwin(v16);
  v101 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v89 - v19;
  v21 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C380;
  v102 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  v97 = xmmword_101385D80;
  *(v23 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v20, type metadata accessor for OwnedBeaconRecord);
  v109 = v16;
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  v98 = sub_100008C00();
  *(v23 + 64) = v98;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v99 = v22;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Attempting to remove: %@", 24, 2, v23);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C218;
  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 isInternalBuild];

  if (v29)
  {
    v30 = String._bridgeToObjectiveC()();
    v29 = [v27 BOOLForKey:v30];
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v32 = result;
    v33 = [result aa_primaryAppleAccount];

    v113 = a1;
    if (v33 && (v33, (v29 & 1) == 0))
    {
      v101 = v17;
      v47 = v106;
      v103 = v20;
      v104 = v5;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v48 = *(v109 + 20);
      v49 = UUID.uuidString.getter();
      v51 = v50;
      v52 = v111;
      v53 = *(v111 + 160);
      v54._countAndFlagsBits = v49;
      v54._object = v51;
      isa = CKRecordID.init(recordName:zoneID:)(v54, v53).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v92 = isa;
      v109 = sub_100FDB020(isa);

      v93 = swift_allocBox();
      v56 = a1;
      v57 = *(v105 + 56);
      v91 = v58;
      v59 = v107;
      v105 += 56;
      v90 = v57;
      v57(v58, 1, 1, v107);
      v60 = *(v52 + 168);
      v61 = v112;
      v62 = v95;
      (*(v112 + 16))(v95, v56 + v48, v114);
      if (qword_101694E78 != -1)
      {
        swift_once();
      }

      v63 = v104;
      v64 = sub_1000076D4(v104, qword_10177C070);
      v65 = v96;
      v66 = (*(v47 + 16))(v96, v64, v63);
      __chkstk_darwin(v66);
      *(&v89 - 4) = v60;
      *(&v89 - 3) = v62;
      *(&v89 - 2) = v65;
      v67 = v94;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v47 + 8))(v65, v63);
      (*(v61 + 8))(v62, v114);
      v90(v67, 0, 1, v59);
      sub_10002311C(v67, v91, &qword_1016B53E0, &unk_1013D65D0);
      v70 = v98;
      v69 = v99;
      v71 = v92;
      v72 = static os_log_type_t.default.getter();
      v73 = swift_allocObject();
      *(v73 + 16) = v97;
      v74 = v71;
      v114 = v74;
      v75 = [v74 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = v70;
      *(v73 + 32) = v76;
      *(v73 + 40) = v78;
      os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v69, "cloudBacked item deleted from disk: %@", 38, 2, v73);

      v79 = v103;
      sub_100022A54(v113, v103, type metadata accessor for OwnedBeaconRecord);
      v80 = *(v100 + 80);
      v112 = (v80 + 32) & ~v80;
      v81 = &v101[v112 + 7] & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      v83 = v93;
      v84 = v111;
      *(v82 + 16) = v93;
      *(v82 + 24) = v84;
      v107 = type metadata accessor for OwnedBeaconRecord;
      sub_10002911C(v79, v82 + ((v80 + 32) & ~v80), type metadata accessor for OwnedBeaconRecord);
      v85 = (v82 + v81);
      v86 = v108;
      *v85 = v110;
      v85[1] = v86;

      Future.addSuccess(block:)();

      sub_100022A54(v113, v79, type metadata accessor for OwnedBeaconRecord);
      v87 = swift_allocObject();
      *(v87 + 16) = v83;
      *(v87 + 24) = v84;
      sub_10002911C(v79, v87 + v112, v107);
      v88 = (v87 + v81);
      *v88 = v110;
      v88[1] = v86;

      Future.addFailure(block:)();
    }

    else
    {
      v34 = v106;
      v35 = v5;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000076D4(v36, qword_10177BA08);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 67109376;
        *(v39 + 4) = v29;
        *(v39 + 8) = 1024;
        *(v39 + 10) = v33 != 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v39, 0xEu);
      }

      v40 = *(v111 + 168);
      v41 = v113 + *(v109 + 20);
      v42 = v13;
      v105 = *(v112 + 16);
      (v105)(v13, v41, v114);
      if (qword_101694E78 != -1)
      {
        swift_once();
      }

      v43 = sub_1000076D4(v5, qword_10177C070);
      v44 = v103;
      v45 = (*(v34 + 16))(v103, v43, v35);
      __chkstk_darwin(v45);
      *(&v89 - 4) = v40;
      *(&v89 - 3) = v13;
      *(&v89 - 2) = v44;
      v46 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v34 + 8))(v44, v35);
      (*(v112 + 8))(v42, v114);
      sub_100B39D8C(v46);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v68 = sub_100A8306C(9u);
      sub_100A8375C(v68);
      v110(0);
      return sub_100022C40(v46, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100AAB488(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v110 = a2;
  v108 = a3;
  v107 = type metadata accessor for BeaconStoreFileRecord(0);
  v105 = *(v107 - 1);
  __chkstk_darwin(v107);
  v104 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v106 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v103 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v96 = &v89 - v8;
  v114 = type metadata accessor for UUID();
  v112 = *(v114 - 1);
  v9 = __chkstk_darwin(v114);
  v92 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v89 - v12;
  __chkstk_darwin(v11);
  v95 = &v89 - v14;
  v93 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v93);
  v94 = &v89 - v15;
  v16 = type metadata accessor for SharedBeaconRecord(0);
  v100 = *(v16 - 8);
  v17 = *(v100 + 64);
  v18 = __chkstk_darwin(v16);
  v101 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v89 - v19;
  v21 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C380;
  v102 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  v97 = xmmword_101385D80;
  *(v23 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v20, type metadata accessor for SharedBeaconRecord);
  v109 = v16;
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  v98 = sub_100008C00();
  *(v23 + 64) = v98;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v99 = v22;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Attempting to remove: %@", 24, 2, v23);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C218;
  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 isInternalBuild];

  if (v29)
  {
    v30 = String._bridgeToObjectiveC()();
    v29 = [v27 BOOLForKey:v30];
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v32 = result;
    v33 = [result aa_primaryAppleAccount];

    v113 = a1;
    if (v33 && (v33, (v29 & 1) == 0))
    {
      v101 = v17;
      v47 = v106;
      v103 = v20;
      v104 = v5;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v48 = *(v109 + 20);
      v49 = UUID.uuidString.getter();
      v51 = v50;
      v52 = v111;
      v53 = *(v111 + 160);
      v54._countAndFlagsBits = v49;
      v54._object = v51;
      isa = CKRecordID.init(recordName:zoneID:)(v54, v53).super.isa;
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v92 = isa;
      v109 = sub_100FDB020(isa);

      v93 = swift_allocBox();
      v56 = a1;
      v57 = *(v105 + 56);
      v91 = v58;
      v59 = v107;
      v105 += 56;
      v90 = v57;
      v57(v58, 1, 1, v107);
      v60 = *(v52 + 168);
      v61 = v112;
      v62 = v95;
      (*(v112 + 16))(v95, v56 + v48, v114);
      if (qword_101695470 != -1)
      {
        swift_once();
      }

      v63 = v104;
      v64 = sub_1000076D4(v104, qword_10177CD50);
      v65 = v96;
      v66 = (*(v47 + 16))(v96, v64, v63);
      __chkstk_darwin(v66);
      *(&v89 - 4) = v60;
      *(&v89 - 3) = v62;
      *(&v89 - 2) = v65;
      v67 = v94;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v47 + 8))(v65, v63);
      (*(v61 + 8))(v62, v114);
      v90(v67, 0, 1, v59);
      sub_10002311C(v67, v91, &qword_1016B53E0, &unk_1013D65D0);
      v70 = v98;
      v69 = v99;
      v71 = v92;
      v72 = static os_log_type_t.default.getter();
      v73 = swift_allocObject();
      *(v73 + 16) = v97;
      v74 = v71;
      v114 = v74;
      v75 = [v74 description];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = v70;
      *(v73 + 32) = v76;
      *(v73 + 40) = v78;
      os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v69, "cloudBacked item deleted from disk: %@", 38, 2, v73);

      v79 = v103;
      sub_100022A54(v113, v103, type metadata accessor for SharedBeaconRecord);
      v80 = *(v100 + 80);
      v112 = (v80 + 32) & ~v80;
      v81 = &v101[v112 + 7] & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      v83 = v93;
      v84 = v111;
      *(v82 + 16) = v93;
      *(v82 + 24) = v84;
      v107 = type metadata accessor for SharedBeaconRecord;
      sub_10002911C(v79, v82 + ((v80 + 32) & ~v80), type metadata accessor for SharedBeaconRecord);
      v85 = (v82 + v81);
      v86 = v108;
      *v85 = v110;
      v85[1] = v86;

      Future.addSuccess(block:)();

      sub_100022A54(v113, v79, type metadata accessor for SharedBeaconRecord);
      v87 = swift_allocObject();
      *(v87 + 16) = v83;
      *(v87 + 24) = v84;
      sub_10002911C(v79, v87 + v112, v107);
      v88 = (v87 + v81);
      *v88 = v110;
      v88[1] = v86;

      Future.addFailure(block:)();
    }

    else
    {
      v34 = v106;
      v35 = v5;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000076D4(v36, qword_10177BA08);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 67109376;
        *(v39 + 4) = v29;
        *(v39 + 8) = 1024;
        *(v39 + 10) = v33 != 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v39, 0xEu);
      }

      v40 = *(v111 + 168);
      v41 = v113 + *(v109 + 20);
      v42 = v13;
      v105 = *(v112 + 16);
      (v105)(v13, v41, v114);
      if (qword_101695470 != -1)
      {
        swift_once();
      }

      v43 = sub_1000076D4(v5, qword_10177CD50);
      v44 = v103;
      v45 = (*(v34 + 16))(v103, v43, v35);
      __chkstk_darwin(v45);
      *(&v89 - 4) = v40;
      *(&v89 - 3) = v13;
      *(&v89 - 2) = v44;
      v46 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v34 + 8))(v44, v35);
      (*(v112 + 8))(v42, v114);
      sub_100B39D8C(v46);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v68 = sub_100A8306C(9u);
      sub_100A8375C(v68);
      v110(0);
      return sub_100022C40(v46, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100AAC504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v27 = a6;
  v28 = a5;
  v29 = a3;
  v30 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-v8];
  v26 = type metadata accessor for BeaconStoreFileRecord(0);
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = swift_projectBox();
  v25 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = a1;
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v14, "cloudBacked item deleted: %@", 28, 2, v15);

  swift_beginAccess();
  sub_1000D2A70(v13, v9, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v10 + 48))(v9, 1, v26) == 1)
  {
    sub_10000B3A8(v9, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v9, v12, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v12);
    sub_100022C40(v12, type metadata accessor for BeaconStoreFileRecord);
  }

  sub_100A8306C(9u);
  v21 = v28(0);
  sub_100A8375C(v21);
  v31[3] = type metadata accessor for OwnedBeaconGroup(0);
  v31[4] = sub_10000768C(&qword_1016B5448, type metadata accessor for OwnedBeaconGroup, &unk_1013AFF54);
  v22 = sub_1000280DC(v31);
  sub_100022A54(v30, v22, type metadata accessor for OwnedBeaconGroup);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v31);
}

uint64_t sub_100AAC878(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v27 = type metadata accessor for BeaconStoreFileRecord(0);
  v10 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  v26 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = a1;
  v16 = [v15 description];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100008C00();
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v13, "cloudBacked item deleted: %@", 28, 2, v14);

  swift_beginAccess();
  sub_1000D2A70(v12, v9, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v10 + 48))(v9, 1, v27) == 1)
  {
    sub_10000B3A8(v9, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    v20 = v25;
    sub_10002911C(v9, v25, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v20);
    sub_100022C40(v20, type metadata accessor for BeaconStoreFileRecord);
  }

  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(9u);
  v21 = v29(0);
  sub_100A8375C(v21);
  v31[3] = type metadata accessor for OwnedBeaconRecord(0);
  v31[4] = sub_10000768C(&unk_1016BB080, type metadata accessor for OwnedBeaconRecord, &unk_1013E7D18);
  v22 = sub_1000280DC(v31);
  sub_100022A54(v30, v22, type metadata accessor for OwnedBeaconRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v31);
}

uint64_t sub_100AACC2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v27 = a6;
  v28 = a5;
  v29 = a3;
  v30 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-v8];
  v26 = type metadata accessor for BeaconStoreFileRecord(0);
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = swift_projectBox();
  v25 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = a1;
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v14, "cloudBacked item deleted: %@", 28, 2, v15);

  swift_beginAccess();
  sub_1000D2A70(v13, v9, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v10 + 48))(v9, 1, v26) == 1)
  {
    sub_10000B3A8(v9, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v9, v12, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v12);
    sub_100022C40(v12, type metadata accessor for BeaconStoreFileRecord);
  }

  sub_100A8306C(9u);
  v21 = v28(0);
  sub_100A8375C(v21);
  v31[3] = type metadata accessor for OwnedDeviceKeyRecord(0);
  v31[4] = sub_10000768C(&qword_1016B5408, type metadata accessor for OwnedDeviceKeyRecord, &unk_1014072AC);
  v22 = sub_1000280DC(v31);
  sub_100022A54(v30, v22, type metadata accessor for OwnedDeviceKeyRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v31);
}

uint64_t sub_100AACFA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v27 = type metadata accessor for BeaconStoreFileRecord(0);
  v10 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  v26 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = a1;
  v16 = [v15 description];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100008C00();
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v13, "cloudBacked item deleted: %@", 28, 2, v14);

  swift_beginAccess();
  sub_1000D2A70(v12, v9, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v10 + 48))(v9, 1, v27) == 1)
  {
    sub_10000B3A8(v9, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    v20 = v25;
    sub_10002911C(v9, v25, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v20);
    sub_100022C40(v20, type metadata accessor for BeaconStoreFileRecord);
  }

  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(9u);
  v21 = v29(0);
  sub_100A8375C(v21);
  v31[3] = type metadata accessor for SharedBeaconRecord(0);
  v31[4] = sub_10000768C(&unk_1016CAC90, type metadata accessor for SharedBeaconRecord, &unk_10140BAE0);
  v22 = sub_1000280DC(v31);
  sub_100022A54(v30, v22, type metadata accessor for SharedBeaconRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v31);
}

uint64_t sub_100AAD354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v27 = a6;
  v28 = a5;
  v29 = a3;
  v30 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-v8];
  v26 = type metadata accessor for BeaconStoreFileRecord(0);
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = swift_projectBox();
  v25 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = a1;
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v14, "cloudBacked item deleted: %@", 28, 2, v15);

  swift_beginAccess();
  sub_1000D2A70(v13, v9, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v10 + 48))(v9, 1, v26) == 1)
  {
    sub_10000B3A8(v9, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v9, v12, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v12);
    sub_100022C40(v12, type metadata accessor for BeaconStoreFileRecord);
  }

  sub_100A8306C(9u);
  v21 = v28(0);
  sub_100A8375C(v21);
  v31[3] = type metadata accessor for LostModeRecord(0);
  v31[4] = sub_10000768C(&qword_1016B5418, type metadata accessor for LostModeRecord, &unk_1013EB5FC);
  v22 = sub_1000280DC(v31);
  sub_100022A54(v30, v22, type metadata accessor for LostModeRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v31);
}

uint64_t sub_100AAD6C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v27 = a6;
  v28 = a5;
  v29 = a3;
  v30 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-v8];
  v26 = type metadata accessor for BeaconStoreFileRecord(0);
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = swift_projectBox();
  v25 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = a1;
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v14, "cloudBacked item deleted: %@", 28, 2, v15);

  swift_beginAccess();
  sub_1000D2A70(v13, v9, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v10 + 48))(v9, 1, v26) == 1)
  {
    sub_10000B3A8(v9, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v9, v12, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v12);
    sub_100022C40(v12, type metadata accessor for BeaconStoreFileRecord);
  }

  sub_100A8306C(9u);
  v21 = v28(0);
  sub_100A8375C(v21);
  v31[3] = type metadata accessor for ShareRecord(0);
  v31[4] = sub_10000768C(&qword_1016B5440, type metadata accessor for ShareRecord, &unk_10138F570);
  v22 = sub_1000280DC(v31);
  sub_100022A54(v30, v22, type metadata accessor for ShareRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v31);
}

uint64_t sub_100AADA3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v27 = type metadata accessor for BeaconStoreFileRecord(0);
  v10 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  v26 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = a1;
  v16 = [v15 description];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100008C00();
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v13, "cloudBacked item deleted: %@", 28, 2, v14);

  swift_beginAccess();
  sub_1000D2A70(v12, v9, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v10 + 48))(v9, 1, v27) == 1)
  {
    sub_10000B3A8(v9, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    v20 = v25;
    sub_10002911C(v9, v25, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v20);
    sub_100022C40(v20, type metadata accessor for BeaconStoreFileRecord);
  }

  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(9u);
  v21 = v29(0);
  sub_100A8375C(v21);
  v31[3] = type metadata accessor for BeaconNamingRecord(0);
  v31[4] = sub_10000768C(&qword_10169EEE0, type metadata accessor for BeaconNamingRecord, &unk_1013E8F18);
  v22 = sub_1000280DC(v31);
  sub_100022A54(v30, v22, type metadata accessor for BeaconNamingRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v31);
}

uint64_t sub_100AADDF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v27 = a6;
  v28 = a5;
  v29 = a3;
  v30 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-v8];
  v26 = type metadata accessor for BeaconStoreFileRecord(0);
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = swift_projectBox();
  v25 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = a1;
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v14, "cloudBacked item deleted: %@", 28, 2, v15);

  swift_beginAccess();
  sub_1000D2A70(v13, v9, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v10 + 48))(v9, 1, v26) == 1)
  {
    sub_10000B3A8(v9, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v9, v12, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v12);
    sub_100022C40(v12, type metadata accessor for BeaconStoreFileRecord);
  }

  sub_100A8306C(9u);
  v21 = v28(0);
  sub_100A8375C(v21);
  v31[3] = type metadata accessor for SafeLocation(0);
  v31[4] = sub_10000768C(&qword_1016B5420, type metadata accessor for SafeLocation, &unk_1013F005C);
  v22 = sub_1000280DC(v31);
  sub_100022A54(v30, v22, type metadata accessor for SafeLocation);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v31);
}

uint64_t sub_100AAE164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v27 = a6;
  v28 = a5;
  v29 = a3;
  v30 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-v8];
  v26 = type metadata accessor for BeaconStoreFileRecord(0);
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = swift_projectBox();
  v25 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = a1;
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v14, "cloudBacked item deleted: %@", 28, 2, v15);

  swift_beginAccess();
  sub_1000D2A70(v13, v9, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v10 + 48))(v9, 1, v26) == 1)
  {
    sub_10000B3A8(v9, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v9, v12, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v12);
    sub_100022C40(v12, type metadata accessor for BeaconStoreFileRecord);
  }

  sub_100A8306C(9u);
  v21 = v28(0);
  sub_100A8375C(v21);
  v31[3] = type metadata accessor for LeashRecord(0);
  v31[4] = sub_10000768C(&qword_1016B5428, type metadata accessor for LeashRecord, &unk_10140E01C);
  v22 = sub_1000280DC(v31);
  sub_100022A54(v30, v22, type metadata accessor for LeashRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v31);
}

uint64_t sub_100AAE4D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v27 = a6;
  v28 = a5;
  v29 = a3;
  v30 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-v8];
  v26 = type metadata accessor for BeaconStoreFileRecord(0);
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = swift_projectBox();
  v25 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = a1;
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v14, "cloudBacked item deleted: %@", 28, 2, v15);

  swift_beginAccess();
  sub_1000D2A70(v13, v9, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v10 + 48))(v9, 1, v26) == 1)
  {
    sub_10000B3A8(v9, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v9, v12, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v12);
    sub_100022C40(v12, type metadata accessor for BeaconStoreFileRecord);
  }

  sub_100A8306C(9u);
  v21 = v28(0);
  sub_100A8375C(v21);
  v31[3] = type metadata accessor for KeyAlignmentRecord(0);
  v31[4] = sub_10000768C(&qword_1016B5410, type metadata accessor for KeyAlignmentRecord, &unk_10138ED2C);
  v22 = sub_1000280DC(v31);
  sub_100022A54(v30, v22, type metadata accessor for KeyAlignmentRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v31);
}

uint64_t sub_100AAE84C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v27 = a6;
  v28 = a5;
  v29 = a3;
  v30 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-v8];
  v26 = type metadata accessor for BeaconStoreFileRecord(0);
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = swift_projectBox();
  v25 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = a1;
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v14, "cloudBacked item deleted: %@", 28, 2, v15);

  swift_beginAccess();
  sub_1000D2A70(v13, v9, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v10 + 48))(v9, 1, v26) == 1)
  {
    sub_10000B3A8(v9, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v9, v12, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v12);
    sub_100022C40(v12, type metadata accessor for BeaconStoreFileRecord);
  }

  sub_100A8306C(9u);
  v21 = v28(0);
  sub_100A8375C(v21);
  v31[3] = type metadata accessor for BeaconEstimatedLocation(0);
  v31[4] = sub_10000768C(&qword_1016B5430, type metadata accessor for BeaconEstimatedLocation, &unk_1013E418C);
  v22 = sub_1000280DC(v31);
  sub_100022A54(v30, v22, type metadata accessor for BeaconEstimatedLocation);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v31);
}

uint64_t sub_100AAEBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v25 = a5;
  v6 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for BeaconStoreFileRecord(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  swift_beginAccess();
  sub_1000D2A70(v13, v8, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v8, v12, type metadata accessor for BeaconStoreFileRecord);
    sub_100B3A9AC(v12);
    sub_100022C40(v12, type metadata accessor for BeaconStoreFileRecord);
  }

  v14 = static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10138BBE0;
  type metadata accessor for OwnedBeaconGroup(0);
  v17 = UUID.uuidString.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  v20 = sub_100008C00();
  *(v16 + 64) = v20;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v26 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v21 = String.init<A>(describing:)();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v20;
  *(v16 + 72) = v21;
  *(v16 + 80) = v22;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Error deleting cloudBacked %@: %@", 33, 2, v16);

  return v25(a1);
}

uint64_t sub_100AAEEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(void))
{
  v27 = a6;
  v28 = a5;
  v9 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for BeaconStoreFileRecord(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_projectBox();
  swift_beginAccess();
  sub_1000D2A70(v16, v11, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000B3A8(v11, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v11, v15, type metadata accessor for BeaconStoreFileRecord);
    sub_100B3A9AC(v15);
    sub_100022C40(v15, type metadata accessor for BeaconStoreFileRecord);
  }

  v17 = static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10138BBE0;
  a7(0);
  v20 = UUID.uuidString.getter();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  v23 = sub_100008C00();
  *(v19 + 64) = v23;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v29 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v24 = String.init<A>(describing:)();
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v23;
  *(v19 + 72) = v24;
  *(v19 + 80) = v25;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Error deleting cloudBacked %@: %@", 33, 2, v19, v27);

  return v28(a1);
}

uint64_t sub_100AAF1B0(void *a1)
{
  v61 = a1;
  v2 = type metadata accessor for BeaconEstimatedLocation(0);
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for DirectorySequence();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v59 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v18 = *(v1 + 168);
  v19 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v58 = v18;
  v54 = v5;
  v20 = sub_1000076D4(v12, qword_10177BF38);
  UUID.uuidString.getter();
  v51 = v20;
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v19);
  v62 = _swiftEmptyArrayStorage;
  v63 = _swiftEmptyArrayStorage;
  v21 = [objc_opt_self() defaultManager];
  v57 = v17;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v22 = v11;
  DirectorySequence.next()();
  v23 = v59;
  v25 = v59 + 48;
  v24 = *(v59 + 48);
  v26 = v12;
  if (v24(v8, 1, v12) != 1)
  {
    v60 = *(v23 + 32);
    v61 = (v23 + 32);
    v27 = (v23 + 8);
    v28 = v58;
    do
    {
      v60(v15, v8, v26);
      v29 = v25;
      v30 = v24;
      v31 = objc_autoreleasePoolPush();
      sub_1006011CC(v15, v28, &v63, &v62);
      objc_autoreleasePoolPop(v31);
      (*v27)(v15, v26);
      DirectorySequence.next()();
      v24 = v30;
      v25 = v29;
    }

    while (v24(v8, 1, v26) != 1);
  }

  (*(v55 + 8))(v22, v56);
  v32 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v33 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10138BBE0;
  v35 = v63;
  v36 = v63[2];
  *(v34 + 56) = &type metadata for Int;
  *(v34 + 64) = &protocol witness table for Int;
  *(v34 + 32) = v36;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v37 = v57;
  v38 = dispatch thunk of CustomStringConvertible.description.getter();
  v40 = v39;
  *(v34 + 96) = &type metadata for String;
  *(v34 + 104) = sub_100008C00();
  *(v34 + 72) = v38;
  *(v34 + 80) = v40;
  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "Found %i records at %@", 22, 2, v34);

  (*(v59 + 8))(v37, v26);

  v41 = v35[2];
  if (v41)
  {
    v42 = v54;
    v43 = &v54[*(v52 + 20)];
    v44 = *(v53 + 80);
    v61 = v35;
    v45 = v35 + ((v44 + 32) & ~v44);
    v46 = *(v53 + 72);
    v47 = v51;
    do
    {
      v48 = sub_100022A54(v45, v42, type metadata accessor for BeaconEstimatedLocation);
      __chkstk_darwin(v48);
      *(&v50 - 2) = v47;
      *(&v50 - 1) = v43;
      OS_dispatch_queue.sync<A>(execute:)();
      sub_100022C40(v42, type metadata accessor for BeaconEstimatedLocation);
      v45 += v46;
      --v41;
    }

    while (v41);
  }
}

uint64_t sub_100AAF7D8()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v2 - 8);
  v88 = &v70 - v3;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v86 = &v70 - v5;
  v93 = type metadata accessor for UUID();
  v73 = *(v93 - 8);
  v6 = __chkstk_darwin(v93);
  v85 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v84 = &v70 - v9;
  __chkstk_darwin(v8);
  v92 = &v70 - v10;
  v11 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v11 - 8);
  v13 = (&v70 - v12);
  v91 = type metadata accessor for SharedBeaconRecord(0);
  v72 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for MemberSharingCircle(0);
  v71 = *(v95 - 8);
  __chkstk_darwin(v95);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v17 - 8);
  v87 = (&v70 - v18);
  v19 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v89 = *(v19 - 8);
  __chkstk_darwin(v19);
  v82 = &v70 - v20;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v81 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23);
  v27 = &v70 - v26;
  __chkstk_darwin(v25);
  v29 = (&v70 - v28);
  v30 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v30 - 8);
  v83 = (&v70 - v31);
  v96 = &_swiftEmptySetSingleton;
  v94 = v1;
  v76 = *(v1 + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v32 = sub_1000076D4(v21, qword_10177AC60);
  v79 = v29;
  v80 = v22;
  v33 = v22[2];
  v33(v29, v32, v21);
  v33(v27, v29, v21);
  v34 = *(v19 + 40);
  v78 = v34;
  v35 = type metadata accessor for DirectorySequence();
  v77 = v19;
  v74 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v75 = v36 + 56;
  v38 = v82;
  v37(&v82[v34], 1, 1, v35);
  v33(v38, v27, v21);
  *(v38 + *(v19 + 36)) = v76;
  v33(v81, v27, v21);

  v39 = v87;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v40 = v80[1];
  v40(v27, v21);
  v40(v79, v21);
  v37(v39, 0, 1, v74);
  sub_10002311C(v39, v38 + v78, &qword_1016A5970, &unk_1013B3470);
  v41 = *(v89 + 56);
  v42 = v83;
  v43 = v77;
  v41(v83, 1, 1, v77);
  sub_10000B3A8(v42, &qword_1016A5988, &qword_1013B3490);
  sub_1000D2AD8(v38, v42, &qword_1016A5978, &qword_101410D20);
  v41(v42, 0, 1, v43);
  v44 = sub_100B33E08(v42);
  sub_10000B3A8(v42, &qword_1016A5980, &unk_1013B3480);
  v45 = v44[2];
  if (v45)
  {
    v46 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v80 = v44;
    v47 = v44 + v46;
    v48 = (v72 + 48);
    v49 = *(v71 + 72);
    v87 = (v73 + 48);
    v79 = (v73 + 32);
    v89 = v73 + 16;
    v81 = (v73 + 56);
    v82 = (v73 + 8);
    v50 = v88;
    v83 = v13;
    v51 = v90;
    v52 = v91;
    v53 = v95;
    while (1)
    {
      sub_100022A54(v47, v16, type metadata accessor for MemberSharingCircle);
      if (v16[*(v53 + 40)] == 1)
      {
        break;
      }

      sub_100022C40(v16, type metadata accessor for MemberSharingCircle);
LABEL_6:
      v47 += v49;
      if (!--v45)
      {
        goto LABEL_20;
      }
    }

    sub_100AA5198(&v16[*(v53 + 24)], v13);
    if ((*v48)(v13, 1, v52) == 1)
    {
      sub_100022C40(v16, type metadata accessor for MemberSharingCircle);
      sub_10000B3A8(v13, &unk_101698C30, &unk_101392630);
LABEL_19:
      v53 = v95;
      goto LABEL_6;
    }

    sub_10002911C(v13, v51, type metadata accessor for SharedBeaconRecord);
    if (*(v51 + *(v52 + 64)) != 2)
    {
      sub_100022C40(v51, type metadata accessor for SharedBeaconRecord);
      sub_100022C40(v16, type metadata accessor for MemberSharingCircle);
      goto LABEL_19;
    }

    sub_1000D2A70(v51 + *(v52 + 80), v50, &unk_1016AF890, &qword_1013926D0);
    v54 = v50;
    v55 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {
      sub_10000B3A8(v54, &unk_1016AF890, &qword_1013926D0);
      v56 = v86;
      v57 = v93;
      (*v81)(v86, 1, 1, v93);
    }

    else
    {
      v58 = v54 + *(v55 + 20);
      v59 = v86;
      sub_1000D2A70(v58, v86, &qword_1016980D0, &unk_10138F3B0);
      v60 = v54;
      v56 = v59;
      sub_100022C40(v60, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v61 = v59;
      v57 = v93;
      if ((*v87)(v61, 1, v93) != 1)
      {
        (*v79)(v92, v56, v57);
        v62 = *v89;
LABEL_18:
        v63 = v85;
        v65 = v92;
        v64 = v93;
        v62(v85, v92, v93);
        v66 = v84;
        sub_100DE8BCC(v84, v63);
        v67 = *v82;
        (*v82)(v66, v64);
        v67(v65, v64);
        v51 = v90;
        sub_100022C40(v90, type metadata accessor for SharedBeaconRecord);
        sub_100022C40(v16, type metadata accessor for MemberSharingCircle);
        v50 = v88;
        v13 = v83;
        v52 = v91;
        goto LABEL_19;
      }
    }

    v62 = *v89;
    (*v89)(v92, v90 + *(v91 + 20), v57);
    if ((*v87)(v56, 1, v57) != 1)
    {
      sub_10000B3A8(v56, &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_18;
  }

LABEL_20:

  v68 = v96[2];

  return v68;
}

uint64_t sub_100AB035C()
{
  v31 = type metadata accessor for StableIdentifier(0);
  v1 = __chkstk_darwin(v31);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = v27 - v4;
  v30 = type metadata accessor for OwnedBeaconRecord(0);
  v6 = *(v30 - 8);
  v7 = __chkstk_darwin(v30);
  v32 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v27 - v9;
  v27[0] = v0;
  result = sub_100025044();
  v12 = result;
  v29 = *(result + 16);
  if (v29)
  {
    v13 = 0;
    v27[1] = v3 + 8;
    v28 = v3;
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v16 = *(v6 + 72);
      sub_100022A54(v12 + v15 + v16 * v13, v10, type metadata accessor for OwnedBeaconRecord);
      v17 = *(v30 + 24);
      sub_100022A54(&v10[v17], v5, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_100022C40(v5, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_12;
      }

      sub_100022A54(&v10[v17], v28, type metadata accessor for StableIdentifier);
      v19 = swift_getEnumCaseMultiPayload();
      if (v19 == 3)
      {
        break;
      }

      if (v19 == 2)
      {
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_11:

        v20 = type metadata accessor for UUID();
        (*(*(v20 - 8) + 8))(v28, v20);
LABEL_12:
        sub_10002911C(v10, v32, type metadata accessor for OwnedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112434C(0, v14[2] + 1, 1);
          v14 = v33;
        }

        v23 = v14[2];
        v22 = v14[3];
        if (v23 >= v22 >> 1)
        {
          sub_10112434C((v22 > 1), v23 + 1, 1);
          v14 = v33;
        }

        v14[2] = v23 + 1;
        result = sub_10002911C(v32, v14 + v15 + v23 * v16, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_4;
      }

      sub_100022C40(v28, type metadata accessor for StableIdentifier);
      result = sub_100022C40(v10, type metadata accessor for OwnedBeaconRecord);
LABEL_4:
      if (v29 == ++v13)
      {
        goto LABEL_18;
      }
    }

    sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

    goto LABEL_11;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_18:

  v24 = v14[2];

  v25 = sub_100AAF7D8();
  v26 = __OFADD__(v25, v24);
  result = v25 + v24;
  if (v26)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_100AB0798()
{
  if (qword_101694568 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  sub_1000076D4(v1, qword_10177A918);
  v2._object = 0x800000010135B5A0;
  v2._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v2);
  type metadata accessor for OwnerPeerTrust(0);
  sub_1000BC4D4(&qword_101697738, &unk_10138C3F0);
  String.init<A>(describing:)();
  v3 = objc_autoreleasePoolPush();
  __chkstk_darwin(v3);
  sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100AB090C()
{
  if (qword_101694F30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  sub_1000076D4(v1, qword_10177C1D0);
  v2._object = 0x800000010135B5A0;
  v2._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v2);
  type metadata accessor for MemberPeerTrust(0);
  sub_1000BC4D4(&qword_101697740, &qword_1013D6990);
  String.init<A>(describing:)();
  v3 = objc_autoreleasePoolPush();
  __chkstk_darwin(v3);
  sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v3);
}

void *sub_100AB0A80()
{
  v107 = type metadata accessor for MemberPeerTrust(0);
  v102 = *(v107 - 8);
  v1 = __chkstk_darwin(v107);
  v105 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v106 = &v86 - v4;
  __chkstk_darwin(v3);
  v112 = &v86 - v5;
  v113 = type metadata accessor for UUID();
  v116 = *(v113 - 8);
  v6 = __chkstk_darwin(v113);
  v117 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v104 = &v86 - v8;
  v87 = type metadata accessor for MemberSharingCircle(0);
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v108 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v98 = *(v114 - 8);
  __chkstk_darwin(v114);
  v96 = &v86 - v10;
  v11 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v11 - 8);
  v97 = &v86 - v12;
  v13 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v13 - 8);
  v101 = &v86 - v14;
  v15 = sub_1000BC4D4(&qword_1016B5558, &unk_1013D6A30);
  v95 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v86 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v99 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v110 = &v86 - v23;
  __chkstk_darwin(v22);
  v25 = &v86 - v24;
  v26 = sub_1000BC4D4(&qword_1016B5560, &unk_1013D73F0);
  __chkstk_darwin(v26 - 8);
  v91 = (&v86 - v27);
  v111 = *(v0 + 168);
  if (qword_101694F30 != -1)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v28 = sub_1000076D4(v18, qword_10177C1D0);
    v29 = v19[2];
    v29(v25, v28, v18);
    v30 = v110;
    v29(v110, v25, v18);
    v100 = v25;
    v109 = v15;
    v31 = *(v15 + 40);
    v89 = v31;
    v32 = type metadata accessor for DirectorySequence();
    v33 = *(v32 - 8);
    v115 = *(v33 + 56);
    v103 = (v33 + 56);
    v115(v17 + v31, 1, 1, v32);
    v29(v17, v30, v18);
    *(v17 + *(v109 + 9)) = v111;
    v92 = v29;
    v29(v99, v30, v18);

    v34 = v101;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v35 = v19[1];
    v35(v30, v18);
    v94 = v19 + 1;
    v90 = v35;
    v35(v100, v18);
    v93 = v32;
    v115(v34, 0, 1, v32);
    sub_10002311C(v34, v17 + v89, &qword_1016A5970, &unk_1013B3470);
    v36 = *(v95 + 56);
    v37 = v91;
    v38 = v109;
    v36(v91, 1, 1, v109);
    sub_10000B3A8(v37, &qword_1016B5568, &unk_1013D6A40);
    sub_1000D2AD8(v17, v37, &qword_1016B5558, &unk_1013D6A30);
    v36(v37, 0, 1, v38);
    v109 = sub_100B36A6C(v37);
    sub_10000B3A8(v37, &qword_1016B5560, &unk_1013D73F0);
    if (qword_101694680 != -1)
    {
      swift_once();
    }

    v39 = sub_1000076D4(v18, qword_10177AC60);
    v40 = v100;
    v41 = v92;
    v92(v100, v39, v18);
    v42 = v18;
    v43 = v110;
    v41(v110, v40, v18);
    v95 = *(v114 + 40);
    v44 = v114;
    v45 = v96;
    v46 = v93;
    v17 = v103;
    v115(&v96[v95], 1, 1, v93);
    v41(v45, v43, v42);
    *(v45 + *(v44 + 36)) = v111;
    v41(v99, v43, v42);

    v47 = v101;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v48 = v90;
    v90(v43, v42);
    v48(v40, v42);
    v115(v47, 0, 1, v46);
    sub_10002311C(v47, v45 + v95, &qword_1016A5970, &unk_1013B3470);
    v49 = *(v98 + 56);
    v25 = v97;
    v50 = v114;
    v49(v97, 1, 1, v114);
    sub_10000B3A8(v25, &qword_1016A5988, &qword_1013B3490);
    sub_1000D2AD8(v45, v25, &qword_1016A5978, &qword_101410D20);
    v49(v25, 0, 1, v50);
    v51 = sub_100B33E08(v25);
    sub_10000B3A8(v25, &qword_1016A5980, &unk_1013B3480);
    v52 = v51[2];
    if (!v52)
    {
      break;
    }

    v111 = *(v87 + 36);
    v53 = *(v88 + 80);
    v103 = v51;
    v25 = v51 + ((v53 + 32) & ~v53);
    v110 = *(v88 + 72);
    v19 = _swiftEmptyArrayStorage;
    v17 = v108;
    v54 = v109;
    while (1)
    {
      sub_100022A54(v25, v17, type metadata accessor for MemberSharingCircle);
      v18 = *(v17 + v111);
      v55 = *(v18 + 16);
      if (v55)
      {
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v17 = *(v116 + 72);
        v15 = (*(v116 + 80) + 32) & ~*(v116 + 80);
        v56 = swift_allocObject();
        v57 = j__malloc_size(v56);
        if (!v17)
        {
          goto LABEL_78;
        }

        if (v57 - v15 == 0x8000000000000000 && v17 == -1)
        {
          goto LABEL_82;
        }

        v56[2] = v55;
        v56[3] = 2 * ((v57 - v15) / v17);
        v59 = sub_1003CC2CC();
        v60 = v118;
        v15 = v120;
        v114 = v119;
        v115 = v59;
        v17 = v121;

        sub_1000128F8(v60);
        if (v115 != v55)
        {
          goto LABEL_79;
        }

        v17 = v108;
        v54 = v109;
      }

      else
      {
        v56 = _swiftEmptyArrayStorage;
      }

      sub_100022C40(v17, type metadata accessor for MemberSharingCircle);
      v61 = v56[2];
      v18 = v19[2];
      v15 = v18 + v61;
      if (__OFADD__(v18, v61))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v15 <= v19[3] >> 1)
      {
        if (v56[2])
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v18 <= v15)
        {
          v63 = v18 + v61;
        }

        else
        {
          v63 = v18;
        }

        v19 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v63, 1, v19);
        if (v56[2])
        {
LABEL_26:
          if ((v19[3] >> 1) - v19[2] < v61)
          {
            goto LABEL_80;
          }

          swift_arrayInitWithCopy();

          if (v61)
          {
            v64 = v19[2];
            v65 = __OFADD__(v64, v61);
            v66 = v64 + v61;
            if (v65)
            {
              goto LABEL_81;
            }

            v19[2] = v66;
          }

          goto LABEL_7;
        }
      }

      if (v61)
      {
        goto LABEL_77;
      }

LABEL_7:
      v25 += v110;
      v52 = (v52 - 1);
      if (!v52)
      {

        goto LABEL_32;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    swift_once();
  }

  v19 = _swiftEmptyArrayStorage;
  v54 = v109;
LABEL_32:
  v67 = sub_10000954C(v19);

  v68 = 0;
  v15 = v67 + 56;
  v69 = *(v67 + 56);
  v114 = v67;
  v70 = 1 << *(v67 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & v69;
  v18 = (v70 + 63) >> 6;
  v110 = v116 + 32;
  v111 = v116 + 16;
  v103 = (v116 + 8);
  v108 = v18;
  v109 = v15;
  while (v72)
  {
LABEL_45:
    v75 = v113;
    v25 = v116;
    v76 = v104;
    (*(v116 + 16))(v104, *(v114 + 48) + *(v116 + 72) * (__clz(__rbit64(v72)) | (v68 << 6)), v113);
    (*(v25 + 32))(v117, v76, v75);
    v18 = v54[2];
    if (v18)
    {
      v17 = 0;
      v77 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v78 = v54 + v77;
      v25 = *(v102 + 72);
      v115 = v77;
      v79 = v25 + v77;
      while ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        ++v17;
        v78 += v25;
        v79 += v25;
        if (v18 == v17)
        {
          goto LABEL_49;
        }
      }

      v19 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        goto LABEL_90;
      }

      v80 = v54[2];
      while (v19 != v80)
      {
        if (v19 >= v80)
        {
          goto LABEL_75;
        }

        v15 = v54;
        v81 = v54 + v79;
        v82 = v112;
        sub_100022A54(v81, v112, type metadata accessor for MemberPeerTrust);
        v18 = static UUID.== infix(_:_:)();
        sub_100022C40(v82, type metadata accessor for MemberPeerTrust);
        if (v18)
        {
          v54 = v15;
        }

        else
        {
          if (v19 == v17)
          {
            v54 = v15;
          }

          else
          {
            if (v17 < 0)
            {
              goto LABEL_83;
            }

            v54 = v15;
            v83 = *(v15 + 16);
            if (v17 >= v83)
            {
              goto LABEL_84;
            }

            v18 = v17 * v25;
            sub_100022A54(v115 + v15 + v17 * v25, v106, type metadata accessor for MemberPeerTrust);
            if (v19 >= v83)
            {
              goto LABEL_85;
            }

            sub_100022A54(v15 + v79, v105, type metadata accessor for MemberPeerTrust);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = sub_1006073EC(v15);
            }

            sub_100B25C50(v105, v115 + v54 + v18, type metadata accessor for MemberPeerTrust);
            if (v19 >= v54[2])
            {
              goto LABEL_86;
            }

            sub_100B25C50(v106, v54 + v79, type metadata accessor for MemberPeerTrust);
          }

          ++v17;
        }

        v19 = (v19 + 1);
        v80 = v54[2];
        v79 += v25;
      }

      if (v19 < v17)
      {
        goto LABEL_88;
      }

      if (v17 < 0)
      {
        goto LABEL_89;
      }
    }

    else
    {
LABEL_49:
      v19 = v54[2];
      v17 = v19;
    }

    v18 = v17;
    if (__OFADD__(v19, v17 - v19))
    {
      goto LABEL_87;
    }

    v84 = swift_isUniquelyReferenced_nonNull_native();
    v118 = v54;
    if (!v84 || v17 > v54[3] >> 1)
    {
      if (v19 <= v17)
      {
        v73 = v17;
      }

      else
      {
        v73 = v19;
      }

      v54 = sub_100A5C318(v84, v73, 1, v54);
      v118 = v54;
    }

    v18 = v108;
    v15 = v109;
    v72 &= v72 - 1;
    sub_100A1A144(v17, v19, 0);
    (*v103)(v117, v113);
  }

  while (1)
  {
    v74 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (v74 >= v18)
    {
      break;
    }

    v72 = *(v15 + 8 * v74);
    ++v68;
    if (v72)
    {
      v68 = v74;
      goto LABEL_45;
    }
  }

  return v54;
}

void *sub_100AB1A78()
{
  v107 = type metadata accessor for OwnerPeerTrust(0);
  v102 = *(v107 - 8);
  v1 = __chkstk_darwin(v107);
  v105 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v106 = &v86 - v4;
  __chkstk_darwin(v3);
  v112 = &v86 - v5;
  v113 = type metadata accessor for UUID();
  v116 = *(v113 - 8);
  v6 = __chkstk_darwin(v113);
  v117 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v104 = &v86 - v8;
  v87 = type metadata accessor for OwnerSharingCircle(0);
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v108 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v98 = *(v114 - 8);
  __chkstk_darwin(v114);
  v96 = &v86 - v10;
  v11 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v11 - 8);
  v97 = &v86 - v12;
  v13 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v13 - 8);
  v101 = &v86 - v14;
  v15 = sub_1000BC4D4(&qword_1016B5540, &qword_1013EB270);
  v95 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v86 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v99 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v110 = &v86 - v23;
  __chkstk_darwin(v22);
  v25 = &v86 - v24;
  v26 = sub_1000BC4D4(&qword_1016B5548, &unk_1013D6A20);
  __chkstk_darwin(v26 - 8);
  v91 = (&v86 - v27);
  v111 = *(v0 + 168);
  if (qword_101694568 != -1)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v28 = sub_1000076D4(v18, qword_10177A918);
    v29 = v19[2];
    v29(v25, v28, v18);
    v30 = v110;
    v29(v110, v25, v18);
    v100 = v25;
    v109 = v15;
    v31 = *(v15 + 40);
    v89 = v31;
    v32 = type metadata accessor for DirectorySequence();
    v33 = *(v32 - 8);
    v115 = *(v33 + 56);
    v103 = (v33 + 56);
    v115(v17 + v31, 1, 1, v32);
    v29(v17, v30, v18);
    *(v17 + *(v109 + 9)) = v111;
    v92 = v29;
    v29(v99, v30, v18);

    v34 = v101;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v35 = v19[1];
    v35(v30, v18);
    v94 = v19 + 1;
    v90 = v35;
    v35(v100, v18);
    v93 = v32;
    v115(v34, 0, 1, v32);
    sub_10002311C(v34, v17 + v89, &qword_1016A5970, &unk_1013B3470);
    v36 = *(v95 + 56);
    v37 = v91;
    v38 = v109;
    v36(v91, 1, 1, v109);
    sub_10000B3A8(v37, &qword_1016B5550, &qword_1013D73D0);
    sub_1000D2AD8(v17, v37, &qword_1016B5540, &qword_1013EB270);
    v36(v37, 0, 1, v38);
    v109 = sub_100B35CB8(v37);
    sub_10000B3A8(v37, &qword_1016B5548, &unk_1013D6A20);
    if (qword_101694EB8 != -1)
    {
      swift_once();
    }

    v39 = sub_1000076D4(v18, qword_10177C0D8);
    v40 = v100;
    v41 = v92;
    v92(v100, v39, v18);
    v42 = v18;
    v43 = v110;
    v41(v110, v40, v18);
    v95 = *(v114 + 40);
    v44 = v114;
    v45 = v96;
    v46 = v93;
    v17 = v103;
    v115(&v96[v95], 1, 1, v93);
    v41(v45, v43, v42);
    *(v45 + *(v44 + 36)) = v111;
    v41(v99, v43, v42);

    v47 = v101;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v48 = v90;
    v90(v43, v42);
    v48(v40, v42);
    v115(v47, 0, 1, v46);
    sub_10002311C(v47, v45 + v95, &qword_1016A5970, &unk_1013B3470);
    v49 = *(v98 + 56);
    v25 = v97;
    v50 = v114;
    v49(v97, 1, 1, v114);
    sub_10000B3A8(v25, &qword_1016A7838, &unk_1013EB250);
    sub_1000D2AD8(v45, v25, &qword_1016A7828, &unk_1013D7340);
    v49(v25, 0, 1, v50);
    v51 = sub_100B34BBC(v25);
    sub_10000B3A8(v25, &qword_1016A7830, &unk_1013D69E0);
    v52 = v51[2];
    if (!v52)
    {
      break;
    }

    v111 = *(v87 + 32);
    v53 = *(v88 + 80);
    v103 = v51;
    v25 = v51 + ((v53 + 32) & ~v53);
    v110 = *(v88 + 72);
    v19 = _swiftEmptyArrayStorage;
    v17 = v108;
    v54 = v109;
    while (1)
    {
      sub_100022A54(v25, v17, type metadata accessor for OwnerSharingCircle);
      v18 = *(v17 + v111);
      v55 = *(v18 + 16);
      if (v55)
      {
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v17 = *(v116 + 72);
        v15 = (*(v116 + 80) + 32) & ~*(v116 + 80);
        v56 = swift_allocObject();
        v57 = j__malloc_size(v56);
        if (!v17)
        {
          goto LABEL_78;
        }

        if (v57 - v15 == 0x8000000000000000 && v17 == -1)
        {
          goto LABEL_82;
        }

        v56[2] = v55;
        v56[3] = 2 * ((v57 - v15) / v17);
        v59 = sub_1003CC2CC();
        v60 = v118;
        v15 = v120;
        v114 = v119;
        v115 = v59;
        v17 = v121;

        sub_1000128F8(v60);
        if (v115 != v55)
        {
          goto LABEL_79;
        }

        v17 = v108;
        v54 = v109;
      }

      else
      {
        v56 = _swiftEmptyArrayStorage;
      }

      sub_100022C40(v17, type metadata accessor for OwnerSharingCircle);
      v61 = v56[2];
      v18 = v19[2];
      v15 = v18 + v61;
      if (__OFADD__(v18, v61))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v15 <= v19[3] >> 1)
      {
        if (v56[2])
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v18 <= v15)
        {
          v63 = v18 + v61;
        }

        else
        {
          v63 = v18;
        }

        v19 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v63, 1, v19);
        if (v56[2])
        {
LABEL_26:
          if ((v19[3] >> 1) - v19[2] < v61)
          {
            goto LABEL_80;
          }

          swift_arrayInitWithCopy();

          if (v61)
          {
            v64 = v19[2];
            v65 = __OFADD__(v64, v61);
            v66 = v64 + v61;
            if (v65)
            {
              goto LABEL_81;
            }

            v19[2] = v66;
          }

          goto LABEL_7;
        }
      }

      if (v61)
      {
        goto LABEL_77;
      }

LABEL_7:
      v25 += v110;
      v52 = (v52 - 1);
      if (!v52)
      {

        goto LABEL_32;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    swift_once();
  }

  v19 = _swiftEmptyArrayStorage;
  v54 = v109;
LABEL_32:
  v67 = sub_10000954C(v19);

  v68 = 0;
  v15 = v67 + 56;
  v69 = *(v67 + 56);
  v114 = v67;
  v70 = 1 << *(v67 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & v69;
  v18 = (v70 + 63) >> 6;
  v110 = v116 + 32;
  v111 = v116 + 16;
  v103 = (v116 + 8);
  v108 = v18;
  v109 = v15;
  while (v72)
  {
LABEL_45:
    v75 = v113;
    v25 = v116;
    v76 = v104;
    (*(v116 + 16))(v104, *(v114 + 48) + *(v116 + 72) * (__clz(__rbit64(v72)) | (v68 << 6)), v113);
    (*(v25 + 32))(v117, v76, v75);
    v18 = v54[2];
    if (v18)
    {
      v17 = 0;
      v77 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v78 = v54 + v77;
      v25 = *(v102 + 72);
      v115 = v77;
      v79 = v25 + v77;
      while ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        ++v17;
        v78 += v25;
        v79 += v25;
        if (v18 == v17)
        {
          goto LABEL_49;
        }
      }

      v19 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        goto LABEL_90;
      }

      v80 = v54[2];
      while (v19 != v80)
      {
        if (v19 >= v80)
        {
          goto LABEL_75;
        }

        v15 = v54;
        v81 = v54 + v79;
        v82 = v112;
        sub_100022A54(v81, v112, type metadata accessor for OwnerPeerTrust);
        v18 = static UUID.== infix(_:_:)();
        sub_100022C40(v82, type metadata accessor for OwnerPeerTrust);
        if (v18)
        {
          v54 = v15;
        }

        else
        {
          if (v19 == v17)
          {
            v54 = v15;
          }

          else
          {
            if (v17 < 0)
            {
              goto LABEL_83;
            }

            v54 = v15;
            v83 = *(v15 + 16);
            if (v17 >= v83)
            {
              goto LABEL_84;
            }

            v18 = v17 * v25;
            sub_100022A54(v115 + v15 + v17 * v25, v106, type metadata accessor for OwnerPeerTrust);
            if (v19 >= v83)
            {
              goto LABEL_85;
            }

            sub_100022A54(v15 + v79, v105, type metadata accessor for OwnerPeerTrust);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = sub_100607400(v15);
            }

            sub_100B25C50(v105, v115 + v54 + v18, type metadata accessor for OwnerPeerTrust);
            if (v19 >= v54[2])
            {
              goto LABEL_86;
            }

            sub_100B25C50(v106, v54 + v79, type metadata accessor for OwnerPeerTrust);
          }

          ++v17;
        }

        v19 = (v19 + 1);
        v80 = v54[2];
        v79 += v25;
      }

      if (v19 < v17)
      {
        goto LABEL_88;
      }

      if (v17 < 0)
      {
        goto LABEL_89;
      }
    }

    else
    {
LABEL_49:
      v19 = v54[2];
      v17 = v19;
    }

    v18 = v17;
    if (__OFADD__(v19, v17 - v19))
    {
      goto LABEL_87;
    }

    v84 = swift_isUniquelyReferenced_nonNull_native();
    v118 = v54;
    if (!v84 || v17 > v54[3] >> 1)
    {
      if (v19 <= v17)
      {
        v73 = v17;
      }

      else
      {
        v73 = v19;
      }

      v54 = sub_100A5C1D0(v84, v73, 1, v54);
      v118 = v54;
    }

    v18 = v108;
    v15 = v109;
    v72 &= v72 - 1;
    sub_100A1A15C(v17, v19, 0);
    (*v103)(v117, v113);
  }

  while (1)
  {
    v74 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (v74 >= v18)
    {
      break;
    }

    v72 = *(v15 + 8 * v74);
    ++v68;
    if (v72)
    {
      v68 = v74;
      goto LABEL_45;
    }
  }

  return v54;
}

uint64_t sub_100AB2A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + *(type metadata accessor for OwnerSharingCircle(0) + 36)) - 1 > 1)
  {
    return 0;
  }

  v4 = static UUID.== infix(_:_:)();
  result = (a2 == 0) & v4;
  if (a2)
  {
    if (v4)
    {
      return sub_10112C0E0() & 1;
    }
  }

  return result;
}

uint64_t sub_100AB2B14()
{
  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  sub_1000076D4(v1, qword_10177C0D8);
  v2._object = 0x800000010135B5A0;
  v2._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v2);
  type metadata accessor for OwnerSharingCircle(0);
  sub_1000BC4D4(&qword_1016B5538, &unk_1013D6A10);
  String.init<A>(describing:)();
  v3 = objc_autoreleasePoolPush();
  __chkstk_darwin(v3);
  sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100AB2C88()
{
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  sub_1000076D4(v1, qword_10177AC60);
  v2._object = 0x800000010135B5A0;
  v2._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v2);
  type metadata accessor for MemberSharingCircle(0);
  sub_1000BC4D4(&qword_1016B5530, &unk_1013D6A00);
  String.init<A>(describing:)();
  v3 = objc_autoreleasePoolPush();
  __chkstk_darwin(v3);
  sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100AB2E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_101697610, &unk_10138C4B0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v19 - v6);
  v8 = type metadata accessor for SharingCircleSecret(0);
  v9 = (a1 + *(v8 + 32));
  v10 = *v9;
  v11 = v9[1];
  v12 = (a1 + *(v8 + 28));
  v13 = *v12;
  v14 = v12[1];
  sub_100017D5C(*v9, v11);

  sub_101316078(v10, v11, v13, v14, v7);
  if (v2)
  {

    v15 = type metadata accessor for SharingCircleSecretValue(0);
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = *v9;
    v17 = v9[1];
    *a2 = *v9;
    a2[1] = v17;
    swift_storeEnumTagMultiPayload();
    sub_100017D5C(v16, v17);
  }

  else
  {
    v15 = type metadata accessor for SharingCircleSecretValue(0);
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    sub_10002911C(v7, a2, type metadata accessor for SharingCircleSecretValue);
  }

  type metadata accessor for SharingCircleSecretValue(0);
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_100AB304C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OwnerSharingCircle(0);
  if (*(a1 + *(v13 + 28)) != 3)
  {
    v15 = 0;
    return v15 & 1;
  }

  v14 = v13;
  sub_1000D2A70(a2, v8, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    if ((a3 & 1) == 0)
    {
      v15 = 1;
      return v15 & 1;
    }

LABEL_8:
    v15 = *(a1 + *(v14 + 36)) == 1;
    return v15 & 1;
  }

  (*(v10 + 32))(v12, v8, v9);
  v15 = static UUID.== infix(_:_:)();
  (*(v10 + 8))(v12, v9);
  if (v15 & 1) != 0 && (a3)
  {
    goto LABEL_8;
  }

  return v15 & 1;
}

uint64_t sub_100AB3258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v143 = a1;
  v129 = a2;
  v4 = type metadata accessor for OwnerPeerTrust(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v132 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for UUID();
  v149 = *(v158 - 8);
  v7 = __chkstk_darwin(v158);
  v163 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v162 = (&v121 - v10);
  v11 = __chkstk_darwin(v9);
  v155 = &v121 - v12;
  v13 = __chkstk_darwin(v11);
  v139 = &v121 - v14;
  __chkstk_darwin(v13);
  v138 = &v121 - v15;
  v16 = type metadata accessor for OwnerSharingCircle(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v126 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v160 = &v121 - v20;
  v21 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v21 - 8);
  v156 = &v121 - v22;
  v161 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v157 = *(v161 - 8);
  __chkstk_darwin(v161);
  v152 = (&v121 - v23);
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 1);
  v26 = __chkstk_darwin(v24);
  v153 = (&v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __chkstk_darwin(v26);
  v30 = (&v121 - v29);
  __chkstk_darwin(v28);
  v32 = &v121 - v31;
  v33 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v33 - 8);
  v154 = (&v121 - v34);
  v35 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v36 = __chkstk_darwin(v35 - 8);
  v131 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v121 - v38;
  v136 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v40 = __chkstk_darwin(v136);
  v130 = &v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v137 = &v121 - v43;
  __chkstk_darwin(v42);
  v133 = v5;
  v44 = *(v5 + 56);
  v127 = &v121 - v45;
  v140 = v4;
  v123 = v5 + 56;
  v122 = v44;
  v44();
  v148 = v17;
  v46 = *(v17 + 56);
  v128 = v39;
  v159 = v16;
  v125 = v17 + 56;
  v124 = v46;
  v46(v39, 1, 1, v16);
  v141 = *(v3 + 168);
  if (qword_101694EB8 != -1)
  {
    goto LABEL_43;
  }

LABEL_2:
  v47 = sub_1000076D4(v24, qword_10177C0D8);
  v144 = v24;
  v48 = v25[2];
  v150 = v32;
  v48(v32, v47, v24);
  v49 = v30;
  v48(v30, v32, v144);
  v50 = *(v161 + 40);
  v151 = v50;
  v51 = v161;
  v52 = type metadata accessor for DirectorySequence();
  v147 = *(*(v52 - 8) + 56);
  v30 = v152;
  v147(v50 + v152, 1, 1, v52);
  v48(v30, v49, v144);
  *(v30 + *(v51 + 36)) = v141;
  v48(v153, v49, v144);
  v24 = v144;

  v53 = v156;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v54 = v25[1];
  v54(v49, v24);
  v54(v150, v24);
  v147(v53, 0, 1, v52);
  sub_10002311C(v53, v151 + v30, &qword_1016A5970, &unk_1013B3470);
  v25 = (v157 + 56);
  v55 = *(v157 + 56);
  v56 = v154;
  v32 = v161;
  v55(v154, 1, 1, v161);
  sub_10000B3A8(v56, &qword_1016A7838, &unk_1013EB250);
  sub_1000D2AD8(v30, v56, &qword_1016A7828, &unk_1013D7340);
  v55(v56, 0, 1, v32);
  v57 = sub_100B34BBC(v56);
  sub_10000B3A8(v56, &qword_1016A7830, &unk_1013D69E0);
  v147 = v57[2];
  if (!v147)
  {
LABEL_31:

    v104 = v128;
    v105 = v127;
    goto LABEL_32;
  }

  v58 = 0;
  v142 = 0;
  v146 = v57 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
  v161 = v149 + 16;
  v152 = (v149 + 40);
  v153 = (v149 + 32);
  v154 = (v149 + 8);
  v135 = "ntifier at URL: %@";
  v134 = (v133 + 48);
  v59 = v158;
  v60 = v155;
  v145 = v57;
  while (1)
  {
    if (v58 >= v57[2])
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
      goto LABEL_2;
    }

    v61 = v160;
    sub_100022A54(&v146[*(v148 + 72) * v58], v160, type metadata accessor for OwnerSharingCircle);
    v25 = *(*(v61 + *(v159 + 32)) + 16);
    v150 = v58;
    if (v25)
    {
      v24 = sub_1003A85FC(v25, 0);
      v157 = sub_1003CC2CC();
      v30 = v164;
      v32 = v166;

      sub_1000128F8(v30);
      if (v157 != v25)
      {
        goto LABEL_42;
      }

      v59 = v158;
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }

    v62 = v24[2];
    v151 = v24;
    if (v62)
    {
      break;
    }

    v30 = _swiftEmptyDictionarySingleton;
LABEL_25:

    if (v30[2])
    {
      v25 = v30;
      v89 = sub_1000210EC(v143);
      if (v90)
      {
        v91 = v149;
        v92 = v139;
        (*(v149 + 16))(v139, v30[7] + *(v149 + 72) * v89, v59);

        v24 = v138;
        (*(v91 + 32))(v138, v92, v59);
        v93 = v144;
        v94 = v141;
        if (qword_101694568 != -1)
        {
          v103 = v144;
          swift_once();
          v93 = v103;
        }

        v95 = sub_1000076D4(v93, qword_10177A918);
        v96._object = (v135 | 0x8000000000000000);
        v96._countAndFlagsBits = 0xD000000000000014;
        prohibitAsyncContext(functionName:)(v96);
        v97 = v140;
        v164 = v140;
        sub_1000BC4D4(&qword_101697738, &unk_10138C3F0);
        v98 = String.init<A>(describing:)();
        v30 = v99;
        v100 = objc_autoreleasePoolPush();
        v25 = *(v94 + 16);
        __chkstk_darwin(v100);
        *(&v121 - 6) = v94;
        *(&v121 - 5) = v24;
        *(&v121 - 4) = v95;
        *(&v121 - 3) = v98;
        *(&v121 - 2) = v30;
        v101 = v137;
        v102 = v142;
        OS_dispatch_queue.sync<A>(execute:)();
        v142 = v102;
        v32 = v101;
        objc_autoreleasePoolPop(v100);

        (*v154)(v24, v59);
        if ((*v134)(v101, 1, v97) == 1)
        {
          sub_100022C40(v160, type metadata accessor for OwnerSharingCircle);
          sub_10000B3A8(v101, &qword_101697798, &unk_10138C4F0);
          v60 = v155;
          goto LABEL_5;
        }

LABEL_39:

        v104 = v128;
        sub_10000B3A8(v128, &unk_1016AFA00, &qword_10138C4D0);
        v120 = v127;
        sub_10000B3A8(v127, &qword_101697798, &unk_10138C4F0);
        sub_10002911C(v32, v120, type metadata accessor for OwnerPeerTrust);
        (v122)(v120, 0, 1, v140);
        sub_10002911C(v160, v104, type metadata accessor for OwnerSharingCircle);
        v124(v104, 0, 1, v159);
        v105 = v120;
LABEL_32:
        v106 = v130;
        sub_1000D2AD8(v105, v130, &qword_101697798, &unk_10138C4F0);
        v107 = (*(v133 + 48))(v106, 1, v140);
        v108 = v132;
        v109 = v131;
        if (v107 == 1)
        {
          sub_10000B3A8(v104, &unk_1016AFA00, &qword_10138C4D0);
          v110 = &qword_101697798;
          v111 = &unk_10138C4F0;
          v112 = v106;
        }

        else
        {
          sub_10002911C(v106, v132, type metadata accessor for OwnerPeerTrust);
          sub_1000D2AD8(v104, v109, &unk_1016AFA00, &qword_10138C4D0);
          if ((*(v148 + 48))(v109, 1, v159) != 1)
          {
            v115 = v126;
            sub_10002911C(v109, v126, type metadata accessor for OwnerSharingCircle);
            v116 = sub_1000BC4D4(&qword_101698CB0, &qword_10138C1C8);
            v117 = *(v116 + 48);
            v118 = v108;
            v119 = v129;
            sub_10002911C(v118, v129, type metadata accessor for OwnerPeerTrust);
            sub_10002911C(v115, v119 + v117, type metadata accessor for OwnerSharingCircle);
            return (*(*(v116 - 8) + 56))(v119, 0, 1, v116);
          }

          sub_100022C40(v108, type metadata accessor for OwnerPeerTrust);
          v110 = &unk_1016AFA00;
          v111 = &qword_10138C4D0;
          v112 = v109;
        }

        sub_10000B3A8(v112, v110, v111);
        v113 = sub_1000BC4D4(&qword_101698CB0, &qword_10138C1C8);
        return (*(*(v113 - 8) + 56))(v129, 1, 1, v113);
      }
    }

    sub_100022C40(v160, type metadata accessor for OwnerSharingCircle);
LABEL_5:
    v57 = v145;
    v58 = v150 + 1;
    if ((v150 + 1) == v147)
    {
      goto LABEL_31;
    }
  }

  v63 = *(v149 + 72);
  v64 = v24 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
  v157 = sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v30 = _swiftEmptyDictionarySingleton;
  v24 = v162;
  v156 = v63;
  while (1)
  {
    v164 = dispatch thunk of CustomStringConvertible.description.getter();
    v165 = v67;
    v68._countAndFlagsBits = 124;
    v68._object = 0xE100000000000000;
    String.append(_:)(v68);
    v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v69);

    v70 = String.utf8Data.getter();
    v32 = v59;
    v72 = v71;

    v164 = v70;
    v165 = v72;
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100016590(v70, v72);
    v73 = v60;
    v74 = *v161;
    (*v161)(v24, v73, v32);
    v74(v163, v64, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164 = v30;
    v25 = v30;
    v77 = sub_1000210EC(v24);
    v78 = v30[2];
    v79 = (v76 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      __break(1u);
      goto LABEL_39;
    }

    v81 = v76;
    if (v30[3] < v80)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = &v164;
      sub_101005D44();
    }

LABEL_21:
    v24 = v162;
    v30 = v164;
    if (v81)
    {
      v32 = v156;
      v65 = *(v164 + 56) + v77 * v156;
      v59 = v158;
      (*v152)(v65, v163, v158);
    }

    else
    {
      *(v164 + 8 * (v77 >> 6) + 64) |= 1 << v77;
      v32 = v156;
      v84 = v77 * v156;
      v85 = v30[6] + v77 * v156;
      v59 = v158;
      v74(v85, v24, v158);
      (*v153)(v30[7] + v84, v163, v59);
      v86 = v30[2];
      v87 = __OFADD__(v86, 1);
      v88 = v86 + 1;
      if (v87)
      {
        __break(1u);
        goto LABEL_41;
      }

      v30[2] = v88;
    }

    v25 = v154;
    v66 = *v154;
    (*v154)(v24, v59);
    v60 = v155;
    (v66)(v155, v59);
    v64 += v32;
    if (!--v62)
    {
      goto LABEL_25;
    }
  }

  sub_100FE80C8(v80, isUniquelyReferenced_nonNull_native);
  v25 = v164;
  v82 = sub_1000210EC(v162);
  if ((v81 & 1) == (v83 & 1))
  {
    v77 = v82;
    goto LABEL_21;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100AB4508(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v130 = a2;
  v129 = a1;
  v144 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  __chkstk_darwin(v144);
  v148 = &v125 - v8;
  v156 = type metadata accessor for MemberPeerTrust(0);
  v138 = *(v156 - 8);
  v9 = __chkstk_darwin(v156);
  v143 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v137 = &v125 - v11;
  v153 = type metadata accessor for UUID();
  v145 = *(v153 - 8);
  v12 = __chkstk_darwin(v153);
  v136 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v125 - v14;
  v16 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v16 - 8);
  v149 = &v125 - v17;
  v154 = sub_1000BC4D4(&qword_1016B5510, &unk_1013D73B0);
  v150 = *(v154 - 8);
  __chkstk_darwin(v154);
  v142 = &v125 - v18;
  v147 = type metadata accessor for URL();
  v140 = *(v147 - 8);
  v19 = __chkstk_darwin(v147);
  *&v135 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v139 = &v125 - v22;
  __chkstk_darwin(v21);
  v152 = (&v125 - v23);
  v24 = sub_1000BC4D4(&qword_1016B5518, &unk_1013D69D0);
  __chkstk_darwin(v24 - 8);
  v141 = &v125 - v25;
  v26 = type metadata accessor for MemberSharingCircle(0);
  v27 = __chkstk_darwin(v26);
  v126 = (&v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v27);
  v146 = &v125 - v30;
  __chkstk_darwin(v29);
  v32 = &v125 - v31;
  v33 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v33 - 8);
  v35 = &v125 - v34;
  v36 = a4 + *(v26 + 24);
  sub_100AA5198(v36, &v125 - v34);
  v37 = type metadata accessor for SharedBeaconRecord(0);
  v38 = *(*(v37 - 8) + 48);
  v128 = v35;
  v39 = v38(v35, 1, v37);
  v127 = v26;
  if (v39 == 1)
  {
    v155 = a3;
    v40 = v4;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177A560);
    sub_100022A54(a4, v32, type metadata accessor for MemberSharingCircle);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v151 = v15;
      v45 = v44;
      v46 = swift_slowAlloc();
      v157 = v46;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_100022C40(v32, type metadata accessor for MemberSharingCircle);
      v50 = sub_1000136BC(v47, v49, &v157);

      *(v45 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "No shared beacon record for beaconIdentifier: %{private,mask.hash}s.", v45, 0x16u);
      sub_100007BAC(v46);

      v15 = v151;
    }

    else
    {

      v39 = sub_100022C40(v32, type metadata accessor for MemberSharingCircle);
    }

    v5 = v40;
    a3 = v155;
  }

  __chkstk_darwin(v39);
  *(&v125 - 2) = v5;
  *(&v125 - 1) = v36;
  sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v155 = 0;
  v51 = type metadata accessor for BeaconNamingRecord(0);
  if ((*(*(v51 - 8) + 48))(a3, 1, v51) == 1)
  {
    v52 = v5;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000076D4(v53, qword_10177A560);
    v54 = v146;
    sub_100022A54(a4, v146, type metadata accessor for MemberSharingCircle);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v15;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v157 = v59;
      *v58 = 141558275;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      sub_100022C40(v54, type metadata accessor for MemberSharingCircle);
      v63 = sub_1000136BC(v60, v62, &v157);

      *(v58 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v55, v56, "No beaconName record to delete for beaconIdentifier: %{private,mask.hash}s.", v58, 0x16u);
      sub_100007BAC(v59);

      v15 = v57;
    }

    else
    {

      sub_100022C40(v54, type metadata accessor for MemberSharingCircle);
    }

    v5 = v52;
  }

  v146 = *(v5 + 168);
  if (qword_101694E90 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v64 = v147;
    sub_1000076D4(v147, qword_10177C090);
    v65 = a4;
    UUID.uuidString.getter();
    v66 = v152;
    URL.appendingPathComponent(_:isDirectory:)();

    v68 = v139;
    v67 = v140;
    v69 = *(v140 + 16);
    v69(v139, v66, v64);
    v70 = *(v154 + 40);
    v133 = v70;
    v71 = v154;
    v131 = type metadata accessor for DirectorySequence();
    v72 = *(v131 - 8);
    v73 = *(v72 + 56);
    v134 = v65;
    v132 = v72 + 56;
    v74 = v142;
    v73(v70 + v142, 1, 1, v131);
    v69(v74, v68, v64);
    *(v74 + *(v71 + 36)) = v146;
    v69(v135, v68, v64);

    v75 = v149;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v76 = *(v67 + 8);
    v76(v68, v64);
    v76(v152, v64);
    v73(v75, 0, 1, v131);
    v77 = v134;
    sub_10002311C(v75, v133 + v74, &qword_1016A5970, &unk_1013B3470);
    v78 = *(v150 + 56);
    v79 = v141;
    v80 = v154;
    v78(v141, 1, 1, v154);
    sub_10000B3A8(v79, &qword_1016B5520, &qword_1013D69F0);
    sub_1000D2AD8(v74, v79, &qword_1016B5510, &unk_1013D73B0);
    v78(v79, 0, 1, v80);
    sub_1000BC4D4(&qword_1016B5528, &qword_1013D69F8);
    v81 = swift_allocObject();
    sub_1000D2AD8(v79, v81 + *(*v81 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
    a4 = sub_100B38FD8((v81 + *(*v81 + class metadata base offset for _SequenceBox + 16)));
    swift_setDeallocating();
    sub_10000B3A8(v81 + *(*v81 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
    swift_deallocClassInstance();
    v133 = a4;
    v82 = v148;
    if (!a4[2])
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for Logger();
      sub_1000076D4(v83, qword_10177A560);
      a4 = v126;
      sub_100022A54(v77, v126, type metadata accessor for MemberSharingCircle);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = v15;
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v157 = v88;
        *v87 = 141558275;
        *(v87 + 4) = 1752392040;
        *(v87 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        sub_100022C40(a4, type metadata accessor for MemberSharingCircle);
        v92 = sub_1000136BC(v89, v91, &v157);

        *(v87 + 14) = v92;
        _os_log_impl(&_mh_execute_header, v84, v85, "No sharedSecrets records to delete for circleIdentifier: %{private,mask.hash}s.", v87, 0x16u);
        sub_100007BAC(v88);

        v15 = v86;
      }

      else
      {

        sub_100022C40(a4, type metadata accessor for MemberSharingCircle);
      }
    }

    v93 = sub_10016642C();
    v142 = *(v93 + 2);
    if (!v142)
    {
      break;
    }

    v95 = 0;
    v150 = v145 + 16;
    v154 = v138 + 48;
    v139 = (v145 + 8);
    v140 = "ntifier at URL: %@";
    v152 = _swiftEmptyArrayStorage;
    *&v94 = 141558275;
    v135 = v94;
    v96 = v153;
    v151 = v15;
    v141 = v93;
    while (v95 < *(v93 + 2))
    {
      a4 = v82;
      v97 = &v93[((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v95];
      v149 = *(v145 + 16);
      (v149)(v15, v97, v96);
      v98 = v15;
      if (qword_101694F30 != -1)
      {
        swift_once();
      }

      v99 = sub_1000076D4(v147, qword_10177C1D0);
      v100._object = (v140 | 0x8000000000000000);
      v100._countAndFlagsBits = 0xD000000000000014;
      prohibitAsyncContext(functionName:)(v100);
      v101 = v156;
      v157 = v156;
      sub_1000BC4D4(&qword_101697740, &qword_1013D6990);
      v102 = String.init<A>(describing:)();
      v104 = v103;
      v105 = objc_autoreleasePoolPush();
      __chkstk_darwin(v105);
      *(&v125 - 6) = v106;
      *(&v125 - 5) = v98;
      *(&v125 - 4) = v99;
      *(&v125 - 3) = v102;
      *(&v125 - 2) = v104;
      v107 = v155;
      OS_dispatch_queue.sync<A>(execute:)();
      v155 = v107;
      v108 = v105;
      v82 = v148;
      objc_autoreleasePoolPop(v108);

      v109 = *v154;
      if ((*v154)(v82, 1, v101) == 1)
      {
        a4 = v82;
        v96 = v153;
        v110 = v136;
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v111 = type metadata accessor for Logger();
        sub_1000076D4(v111, qword_10177A560);
        (v149)(v110, v151, v96);
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = v110;
          v149 = swift_slowAlloc();
          v157 = v149;
          *v114 = v135;
          *(v114 + 4) = 1752392040;
          *(v114 + 12) = 2081;
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v116 = dispatch thunk of CustomStringConvertible.description.getter();
          a4 = v117;
          v118 = *v139;
          (*v139)(v115, v153);
          v119 = sub_1000136BC(v116, a4, &v157);

          *(v114 + 14) = v119;
          _os_log_impl(&_mh_execute_header, v112, v113, "No peerTrust record to delete for peerTrustIdentifier: %{private,mask.hash}s.", v114, 0x16u);
          sub_100007BAC(v149);
          v82 = v148;

          v96 = v153;
        }

        else
        {

          v118 = *v139;
          (*v139)(v110, v96);
          v82 = a4;
        }
      }

      else
      {
        v118 = *v139;
        v96 = v153;
      }

      v15 = v151;
      v118(v151, v96);
      if (v109(v82, 1, v156) == 1)
      {
        sub_10000B3A8(v82, &qword_101698C10, &unk_10138C1E0);
      }

      else
      {
        v120 = v137;
        sub_10002911C(v82, v137, type metadata accessor for MemberPeerTrust);
        sub_10002911C(v120, v143, type metadata accessor for MemberPeerTrust);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v152 = sub_100A5C318(0, v152[2] + 1, 1, v152);
        }

        v122 = v152[2];
        v121 = v152[3];
        if (v122 >= v121 >> 1)
        {
          v152 = sub_100A5C318((v121 > 1), v122 + 1, 1, v152);
        }

        v123 = v152;
        v152[2] = v122 + 1;
        sub_10002911C(v143, v123 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v122, type metadata accessor for MemberPeerTrust);
      }

      ++v95;
      v93 = v141;
      if (v142 == v95)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

  v152 = _swiftEmptyArrayStorage;
LABEL_43:

  sub_100022A54(v134, v129, type metadata accessor for MemberSharingCircle);
  sub_1000D2AD8(v128, v130, &unk_101698C30, &unk_101392630);
  return v133;
}

void *sub_100AB5A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v127 = a3;
  v105 = a2;
  v103 = a1;
  v128 = type metadata accessor for OwnerPeerTrust(0);
  v99 = *(v128 - 8);
  v4 = __chkstk_darwin(v128);
  v100 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v116 = &v98 - v6;
  v123 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v120 = *(v123 - 8);
  __chkstk_darwin(v123);
  v115 = &v98 - v7;
  v8 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v8 - 8);
  v114 = (&v98 - v9);
  v135 = type metadata accessor for UUID();
  v124 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OwnerSharingCircle(0);
  __chkstk_darwin(v11);
  v129 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v13 - 8);
  v119 = &v98 - v14;
  v15 = sub_1000BC4D4(&qword_1016B5510, &unk_1013D73B0);
  v134 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v98 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v118 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v98 - v23;
  __chkstk_darwin(v22);
  v26 = &v98 - v25;
  v27 = sub_1000BC4D4(&qword_1016B5518, &unk_1013D69D0);
  __chkstk_darwin(v27 - 8);
  v132 = &v98 - v28;
  v121 = v11;
  v117 = *(v3 + 168);
  if (qword_101694E90 != -1)
  {
LABEL_36:
    swift_once();
  }

  sub_1000076D4(v18, qword_10177C090);
  UUID.uuidString.getter();
  v126 = v26;
  URL.appendingPathComponent(_:isDirectory:)();

  v29 = *(v19 + 16);
  v29(v24, v26, v18);
  v30 = *(v15 + 40);
  v131 = v30;
  v31 = type metadata accessor for DirectorySequence();
  v32 = *(v31 - 8);
  v130 = v15;
  v125 = *(v32 + 56);
  v33 = v32 + 56;
  v125(v30 + v17, 1, 1, v31);
  v29(v17, v24, v18);
  v34 = *(v15 + 36);
  v35 = v24;
  v36 = v118;
  *(v17 + v34) = v117;
  v110 = v19 + 16;
  v109 = v29;
  v29(v36, v24, v18);

  v37 = v119;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v24 = (v19 + 8);
  v38 = *(v19 + 8);
  v111 = v35;
  v38(v35, v18);
  v113 = v18;
  v112 = v19 + 8;
  v107 = v38;
  v38(v126, v18);
  v122 = v31;
  v108 = v33;
  v125(v37, 0, 1, v31);
  sub_10002311C(v37, v131 + v17, &qword_1016A5970, &unk_1013B3470);
  v39 = *(v134 + 56);
  v40 = v132;
  v41 = v130;
  v39(v132, 1, 1, v130);
  sub_10000B3A8(v40, &qword_1016B5520, &qword_1013D69F0);
  sub_1000D2AD8(v17, v40, &qword_1016B5510, &unk_1013D73B0);
  v39(v40, 0, 1, v41);
  sub_1000BC4D4(&qword_1016B5528, &qword_1013D69F8);
  v42 = swift_allocObject();
  sub_1000D2AD8(v40, v42 + *(*v42 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
  v43 = sub_100B38FD8((v42 + *(*v42 + class metadata base offset for _SequenceBox + 16)));
  swift_setDeallocating();
  sub_10000B3A8(v42 + *(*v42 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
  swift_deallocClassInstance();
  v102 = v43;
  v44 = v105;
  if (!v43[2])
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000076D4(v45, qword_10177A560);
    v46 = v129;
    sub_100022A54(v44, v129, type metadata accessor for OwnerSharingCircle);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v24 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v136 = v49;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 6) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      sub_100022C40(v46, type metadata accessor for OwnerSharingCircle);
      v53 = sub_1000136BC(v50, v52, &v136);

      *(v24 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "No sharedSecrets records to delete for circleIdentifier: %{private,mask.hash}s.", v24, 0x16u);
      sub_100007BAC(v49);
    }

    else
    {

      sub_100022C40(v46, type metadata accessor for OwnerSharingCircle);
    }
  }

  v54 = sub_10016632C();
  v19 = sub_10000954C(v54);

  v26 = *(v127 + 16);
  if (v26)
  {
    v15 = 0;
    v121 = 0;
    v134 = v19 + 56;
    v131 = (v124 + 8);
    v132 = (v124 + 16);
    v106 = (v120 + 56);
    v18 = _swiftEmptyArrayStorage;
    *&v55 = 141558275;
    v104 = v55;
    v129 = v26;
    while (1)
    {
      v101 = v18;
      while (1)
      {
        if (v15 >= v26)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v18 = v15;
        v56 = *(sub_1000BC4D4(&qword_1016B1588, &qword_1013D0A78) - 8);
        v57 = *(v56 + 80);
        v58 = *(v56 + 72);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_35;
        }

        v59 = *(v19 + 16);
        v130 = v15 + 1;
        if (v59)
        {
          v24 = (v127 + ((v57 + 32) & ~v57) + v58 * v15);
          v18 = *(v19 + 40);
          sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v60 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v61 = -1 << *(v19 + 32);
          v62 = v60 & ~v61;
          if ((*(v134 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
          {
            break;
          }
        }

LABEL_12:
        v26 = v129;
        v15 = v130;
        if (v130 == v129)
        {
          goto LABEL_33;
        }
      }

      v63 = ~v61;
      v64 = *(v124 + 72);
      v65 = *(v124 + 16);
      while (1)
      {
        v17 = v19;
        v66 = *(v19 + 48) + v64 * v62;
        v67 = v133;
        v68 = v135;
        v65(v133, v66, v135);
        sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v131)(v67, v68);
        if (v18)
        {
          break;
        }

        v62 = (v62 + 1) & v63;
        v19 = v17;
        if (((*(v134 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      if (qword_101694EB8 != -1)
      {
        swift_once();
      }

      v69 = v113;
      v70 = sub_1000076D4(v113, qword_10177C0D8);
      v71 = v126;
      v72 = v109;
      v109(v126, v70, v69);
      v73 = v111;
      v72(v111, v71, v69);
      v120 = *(v123 + 40);
      v74 = v123;
      v75 = v115;
      v125(&v115[v120], 1, 1, v122);
      v72(v75, v73, v69);
      v76 = v118;
      *(v75 + *(v74 + 36)) = v117;
      v72(v76, v73, v69);

      v77 = v119;
      DirectorySequence.init(at:includingPropertiesForKeys:options:)();
      v78 = v107;
      v107(v73, v69);
      v78(v126, v69);
      v125(v77, 0, 1, v122);
      sub_10002311C(v77, v75 + v120, &qword_1016A5970, &unk_1013B3470);
      v79 = *v106;
      v80 = v114;
      v81 = v123;
      (*v106)(v114, 1, 1, v123);
      sub_10000B3A8(v80, &qword_1016A7838, &unk_1013EB250);
      sub_1000D2AD8(v75, v80, &qword_1016A7828, &unk_1013D7340);
      v79(v80, 0, 1, v81);
      v82 = sub_100B34BBC(v80);
      v83 = sub_10000B3A8(v80, &qword_1016A7830, &unk_1013D69E0);
      __chkstk_darwin(v83);
      *(&v98 - 2) = v24;
      v84 = v121;
      v18 = sub_10013CF58(sub_100B25BD8, (&v98 - 4), v82)[2];

      v85 = v116;
      v121 = v84;
      if (v18 >= 2)
      {
        break;
      }

      sub_100022A54(v24, v100, type metadata accessor for OwnerPeerTrust);
      v93 = v101;
      v19 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_100A5C1D0(0, v93[2] + 1, 1, v93);
      }

      v26 = v129;
      v15 = v130;
      v95 = v93[2];
      v94 = v93[3];
      v96 = v93;
      if (v95 >= v94 >> 1)
      {
        v96 = sub_100A5C1D0((v94 > 1), v95 + 1, 1, v93);
      }

      v96[2] = v95 + 1;
      v18 = v96;
      sub_10002911C(v100, v96 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v95, type metadata accessor for OwnerPeerTrust);
      if (v15 == v26)
      {
        goto LABEL_33;
      }
    }

    v19 = v17;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_1000076D4(v86, qword_10177A560);
    sub_100022A54(v24, v85, type metadata accessor for OwnerPeerTrust);
    v24 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v136 = v89;
      *v88 = v104;
      *(v88 + 4) = 1752392040;
      *(v88 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v91;
      sub_100022C40(v85, type metadata accessor for OwnerPeerTrust);
      v92 = sub_1000136BC(v90, v18, &v136);

      *(v88 + 14) = v92;
      _os_log_impl(&_mh_execute_header, v24, v87, "No peerTrust to delete for peerTrustIdentifier: %{private,mask.hash}s.\nThere are more shared beacons with the sharee.", v88, 0x16u);
      sub_100007BAC(v89);
    }

    else
    {

      sub_100022C40(v85, type metadata accessor for OwnerPeerTrust);
    }

    goto LABEL_12;
  }

LABEL_33:

  sub_100022A54(v105, v103, type metadata accessor for OwnerSharingCircle);
  return v102;
}

BOOL sub_100AB6C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for OwnerSharingCircle(0) + 32));
  if (*(v3 + 16) && (v4 = type metadata accessor for OwnerPeerTrust(0), v5 = sub_1000210EC(a2 + *(v4 + 20)), (v6 & 1) != 0))
  {
    return *(*(v3 + 56) + v5) != 6;
  }

  else
  {
    return 0;
  }
}

char *sub_100AB6CE8(void *a1)
{
  v188 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  __chkstk_darwin(v188);
  v187 = &v152 - v3;
  v192 = type metadata accessor for OwnerPeerTrust(0);
  v152 = *(v192 - 8);
  __chkstk_darwin(v192);
  v153 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1000BC4D4(&qword_10169EFA8, &qword_1013B2700);
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v176 = &v152 - v5;
  v165 = sub_1000BC4D4(&qword_1016B5510, &unk_1013D73B0);
  v155 = *(v165 - 8);
  __chkstk_darwin(v165);
  v164 = &v152 - v6;
  v7 = sub_1000BC4D4(&qword_1016B5518, &unk_1013D69D0);
  __chkstk_darwin(v7 - 8);
  v163 = &v152 - v8;
  v189 = type metadata accessor for OwnerSharingCircle(0);
  v9 = *(v189 - 8);
  v10 = __chkstk_darwin(v189);
  v180 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v183 = (&v152 - v13);
  v14 = __chkstk_darwin(v12);
  v175 = &v152 - v15;
  v16 = __chkstk_darwin(v14);
  v197 = &v152 - v17;
  __chkstk_darwin(v16);
  v19 = &v152 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v171 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v152 - v25;
  __chkstk_darwin(v24);
  v190 = &v152 - v27;
  v28 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v28 - 8);
  v170 = &v152 - v29;
  v194 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v186 = *(v194 - 8);
  __chkstk_darwin(v194);
  v185 = &v152 - v30;
  v191 = type metadata accessor for URL();
  v173 = *(v191 - 8);
  v31 = __chkstk_darwin(v191);
  v169 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v168 = &v152 - v34;
  __chkstk_darwin(v33);
  v172 = &v152 - v35;
  v36 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v36 - 8);
  v184 = (&v152 - v37);
  v38 = a1[2];
  v39 = _swiftEmptyArrayStorage;
  v193 = v21;
  v167 = v38;
  v182 = v9;
  v174 = a1;
  if (v38)
  {
    v181 = v1;
    v199 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v38, 0);
    v39 = v199;
    v40 = v9;
    v41 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v42 = *(v40 + 72);
    v43 = (v21 + 16);
    v195 = (v21 + 32);
    v196 = v42;
    v44 = v38;
    v45 = v190;
    do
    {
      sub_100022A54(v41, v19, type metadata accessor for OwnerSharingCircle);
      (*v43)(v45, &v19[*(v189 + 20)], v20);
      sub_100022C40(v19, type metadata accessor for OwnerSharingCircle);
      v199 = v39;
      v46 = v20;
      v48 = v39[2];
      v47 = v39[3];
      if (v48 >= v47 >> 1)
      {
        sub_101123D4C((v47 > 1), v48 + 1, 1);
        v45 = v190;
        v39 = v199;
      }

      v39[2] = v48 + 1;
      (*(v193 + 32))(v39 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v48, v45, v46);
      v41 += v196;
      --v44;
      v20 = v46;
    }

    while (v44);
    v1 = v181;
  }

  v196 = sub_10000954C(v39);

  v190 = *(v1 + 168);
  if (qword_101694EB8 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v198 = v20;
    v49 = v191;
    v50 = sub_1000076D4(v191, qword_10177C0D8);
    v51 = v173;
    v52 = v173 + 16;
    v53 = *(v173 + 16);
    v54 = v172;
    v53(v172, v50, v49);
    v55 = v168;
    v53(v168, v54, v49);
    v56 = *(v194 + 40);
    v195 = v56;
    v178 = type metadata accessor for DirectorySequence();
    v57 = *(v178 - 8);
    v177 = *(v57 + 56);
    v58 = v57 + 56;
    v59 = v185;
    v177(v56 + v185, 1, 1, v178);
    v53(v59, v55, v49);
    *(v59 + *(v194 + 36)) = v190;
    v162 = v52;
    v161 = v53;
    v53(v169, v55, v49);

    v60 = v170;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v61 = *(v51 + 8);
    v61(v55, v49);
    v173 = v51 + 8;
    v159 = v61;
    v61(v172, v49);
    v160 = v58;
    v177(v60, 0, 1, v178);
    sub_10002311C(v60, v195 + v59, &qword_1016A5970, &unk_1013B3470);
    v62 = *(v186 + 56);
    v63 = v184;
    v64 = v194;
    v62(v184, 1, 1, v194);
    sub_10000B3A8(v63, &qword_1016A7838, &unk_1013EB250);
    sub_1000D2AD8(v59, v63, &qword_1016A7828, &unk_1013D7340);
    v62(v63, 0, 1, v64);
    v65 = sub_100B34BBC(v63);
    sub_10000B3A8(v63, &qword_1016A7830, &unk_1013D69E0);
    v181 = v65[2];
    if (!v181)
    {
      break;
    }

    v66 = 0;
    v194 = v193 + 16;
    v195 = (v196 + 56);
    v184 = _swiftEmptyArrayStorage;
    v20 = v193 + 8;
    v67 = v182;
    v179 = v65;
    while (v66 < v65[2])
    {
      v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v185 = *(v67 + 72);
      v186 = v68;
      sub_100022A54(v65 + v68 + v185 * v66, v197, type metadata accessor for OwnerSharingCircle);
      if (*(v196 + 16) && (v69 = v196, sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v70 = dispatch thunk of Hashable._rawHashValue(seed:)(), v71 = -1 << *(v69 + 32), v72 = v70 & ~v71, ((*(v195 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) != 0))
      {
        v73 = ~v71;
        v74 = *(v193 + 72);
        v75 = *(v193 + 16);
        while (1)
        {
          v76 = v198;
          v75(v26, *(v196 + 48) + v74 * v72, v198);
          sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v77 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v20)(v26, v76);
          if (v77)
          {
            break;
          }

          v72 = (v72 + 1) & v73;
          if (((*(v195 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        sub_100022C40(v197, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
LABEL_18:
        sub_10002911C(v197, v183, type metadata accessor for OwnerSharingCircle);
        v78 = v184;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v199 = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101123FE4(0, (v78[2] + 1), 1);
          v78 = v199;
        }

        v81 = v78[2];
        v80 = v78[3];
        if (v81 >= v80 >> 1)
        {
          sub_101123FE4((v80 > 1), v81 + 1, 1);
          v78 = v199;
        }

        v78[2] = (v81 + 1);
        v184 = v78;
        sub_10002911C(v183, v78 + v186 + v81 * v185, type metadata accessor for OwnerSharingCircle);
      }

      v67 = v182;
      ++v66;
      v65 = v179;
      if (v66 == v181)
      {
        goto LABEL_24;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    swift_once();
  }

  v184 = _swiftEmptyArrayStorage;
  v67 = v182;
LABEL_24:

  v82 = v184[2];
  v83 = v180;
  if (v82)
  {
    v84 = *(v189 + 32);
    v26 = v184 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v194 = *(v67 + 72);
    v195 = v84;
    v197 = _swiftEmptyArrayStorage;
    v85 = v193;
    v86 = v175;
    while (1)
    {
      sub_100022A54(v26, v86, type metadata accessor for OwnerSharingCircle);
      v20 = *(v195 + v86);
      v87 = *(v20 + 16);
      if (v87)
      {
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v88 = *(v85 + 72);
        v89 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v90 = swift_allocObject();
        v91 = j__malloc_size(v90);
        if (!v88)
        {
          goto LABEL_98;
        }

        if (v91 - v89 == 0x8000000000000000 && v88 == -1)
        {
          goto LABEL_103;
        }

        v90[2] = v87;
        v90[3] = 2 * ((v91 - v89) / v88);
        v196 = sub_1003CC2CC();
        v93 = v199;

        sub_1000128F8(v93);
        if (v196 != v87)
        {
          goto LABEL_99;
        }

        v83 = v180;
        v85 = v193;
        v86 = v175;
      }

      else
      {
        v90 = _swiftEmptyArrayStorage;
      }

      sub_100022C40(v86, type metadata accessor for OwnerSharingCircle);
      v94 = v90[2];
      v20 = v198;
      v95 = *(v197 + 2);
      v96 = v95 + v94;
      if (__OFADD__(v95, v94))
      {
        goto LABEL_96;
      }

      v97 = swift_isUniquelyReferenced_nonNull_native();
      if (v97 && v96 <= *(v197 + 3) >> 1)
      {
        if (v90[2])
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v95 <= v96)
        {
          v98 = v95 + v94;
        }

        else
        {
          v98 = v95;
        }

        v197 = sub_100A5BFE0(v97, v98, 1, v197);
        if (v90[2])
        {
LABEL_46:
          if ((*(v197 + 3) >> 1) - *(v197 + 2) < v94)
          {
            goto LABEL_100;
          }

          swift_arrayInitWithCopy();

          if (v94)
          {
            v99 = *(v197 + 2);
            v100 = __OFADD__(v99, v94);
            v101 = v99 + v94;
            if (v100)
            {
              goto LABEL_102;
            }

            *(v197 + 2) = v101;
          }

          goto LABEL_27;
        }
      }

      if (v94)
      {
        goto LABEL_97;
      }

LABEL_27:
      v26 += v194;
      if (!--v82)
      {

        v67 = v182;
        goto LABEL_52;
      }
    }
  }

  v197 = _swiftEmptyArrayStorage;
  v85 = v193;
LABEL_52:
  v166 = sub_10000954C(v197);

  if (v167)
  {
    v102 = 0;
    v197 = 0;
    v156 = v174 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v155 += 7;
    v185 = "ntifier at URL: %@";
    v186 = v85 + 16;
    v184 = (v85 + 8);
    v183 = (v152 + 48);
    v103 = _swiftEmptyArrayStorage;
    v104 = &_swiftEmptySetSingleton;
    v154 = *(v67 + 72);
    while (1)
    {
      v175 = v103;
      v181 = v104;
      v182 = v102;
      sub_100022A54(&v156[v154 * v102], v83, type metadata accessor for OwnerSharingCircle);
      if (qword_101694E90 != -1)
      {
        swift_once();
      }

      v105 = v191;
      sub_1000076D4(v191, qword_10177C090);
      UUID.uuidString.getter();
      v106 = v172;
      URL.appendingPathComponent(_:isDirectory:)();

      v107 = v168;
      v108 = v161;
      v161(v168, v106, v105);
      v109 = v165;
      v196 = *(v165 + 40);
      v110 = v164;
      v177(&v164[v196], 1, 1, v178);
      v108(v110, v107, v105);
      *(v110 + *(v109 + 36)) = v190;
      v108(v169, v107, v105);

      v111 = v170;
      DirectorySequence.init(at:includingPropertiesForKeys:options:)();
      v112 = v159;
      v159(v107, v105);
      v112(v106, v105);
      v177(v111, 0, 1, v178);
      sub_10002311C(v111, v110 + v196, &qword_1016A5970, &unk_1013B3470);
      v113 = *v155;
      v114 = v163;
      (*v155)(v163, 1, 1, v109);
      sub_10000B3A8(v114, &qword_1016B5520, &qword_1013D69F0);
      sub_1000D2AD8(v110, v114, &qword_1016B5510, &unk_1013D73B0);
      v113(v114, 0, 1, v109);
      sub_1000BC4D4(&qword_1016B5528, &qword_1013D69F8);
      v115 = swift_allocObject();
      sub_1000D2AD8(v114, v115 + *(*v115 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
      v174 = sub_100B38FD8((v115 + *(*v115 + class metadata base offset for _SequenceBox + 16)));
      swift_setDeallocating();
      sub_10000B3A8(v115 + *(*v115 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
      swift_deallocClassInstance();
      v116 = *(v180 + *(v189 + 32));
      v20 = *(v116 + 16);
      if (v20)
      {
        v117 = sub_1003A85FC(*(v116 + 16), 0);
        v118 = sub_1003CC2CC();
        v119 = v199;

        sub_1000128F8(v119);
        v26 = v197;
        if (v118 != v20)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v117 = _swiftEmptyArrayStorage;
        v26 = v197;
      }

      v120 = sub_10000954C(v117);

      v121 = v181;
      if (*(v166 + 16) > v120[2] >> 3)
      {
        v122 = sub_100610BC8(v166, v120);
      }

      else
      {
        v199 = v120;
        sub_10087D5B4(v166);
        v122 = v199;
      }

      v123 = v193;
      v20 = v198;
      if (*(v121 + 16) <= v122[2] >> 3)
      {
        v199 = v122;
        sub_10087D5B4(v121);
        v124 = v199;
      }

      else
      {
        v124 = sub_100610BC8(v121, v122);
      }

      v125 = v171;
      ++v182;

      v181 = sub_10039DA70(v126, v121);
      v127 = v124 + 7;
      v128 = 1 << *(v124 + 32);
      if (v128 < 64)
      {
        v129 = ~(-1 << v128);
      }

      else
      {
        v129 = -1;
      }

      v130 = v129 & v124[7];
      v131 = (v128 + 63) >> 6;

      v132 = 0;
      v179 = _swiftEmptyArrayStorage;
      v195 = v124 + 7;
      v196 = v124;
      v194 = v131;
LABEL_70:
      v133 = v132;
      if (!v130)
      {
        goto LABEL_72;
      }

      do
      {
        v197 = v26;
        v132 = v133;
LABEL_76:
        (*(v123 + 16))(v125, v124[6] + *(v123 + 72) * (__clz(__rbit64(v130)) | (v132 << 6)), v20);
        if (qword_101694568 != -1)
        {
          swift_once();
        }

        v130 &= v130 - 1;
        v134 = sub_1000076D4(v191, qword_10177A918);
        v135._object = (v185 | 0x8000000000000000);
        v135._countAndFlagsBits = 0xD000000000000014;
        prohibitAsyncContext(functionName:)(v135);
        v199 = v192;
        sub_1000BC4D4(&qword_101697738, &unk_10138C3F0);
        v136 = String.init<A>(describing:)();
        v138 = v137;
        v139 = objc_autoreleasePoolPush();
        __chkstk_darwin(v139);
        *(&v152 - 6) = v140;
        *(&v152 - 5) = v125;
        *(&v152 - 4) = v134;
        *(&v152 - 3) = v136;
        *(&v152 - 2) = v138;
        v141 = v187;
        v26 = v197;
        OS_dispatch_queue.sync<A>(execute:)();
        objc_autoreleasePoolPop(v139);

        v20 = v198;
        (*v184)(v125, v198);
        if ((*v183)(v141, 1, v192) != 1)
        {
          sub_10002911C(v141, v153, type metadata accessor for OwnerPeerTrust);
          v142 = swift_isUniquelyReferenced_nonNull_native();
          v131 = v194;
          if ((v142 & 1) == 0)
          {
            v179 = sub_100A5C1D0(0, v179[2] + 1, 1, v179);
          }

          v123 = v193;
          v124 = v196;
          v144 = v179[2];
          v143 = v179[3];
          if (v144 >= v143 >> 1)
          {
            v179 = sub_100A5C1D0((v143 > 1), v144 + 1, 1, v179);
          }

          v145 = v179;
          v179[2] = v144 + 1;
          sub_10002911C(v153, v145 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v144, type metadata accessor for OwnerPeerTrust);
          v125 = v171;
          v127 = v195;
          goto LABEL_70;
        }

        sub_10000B3A8(v141, &qword_101697798, &unk_10138C4F0);
        v133 = v132;
        v123 = v193;
        v131 = v194;
        v127 = v195;
        v124 = v196;
      }

      while (v130);
      while (1)
      {
LABEL_72:
        v132 = v133 + 1;
        if (__OFADD__(v133, 1))
        {
          __break(1u);
          goto LABEL_95;
        }

        if (v132 >= v131)
        {
          break;
        }

        v130 = v127[v132];
        ++v133;
        if (v130)
        {
          v197 = v26;
          goto LABEL_76;
        }
      }

      v197 = v26;

      v146 = *(v158 + 48);
      v147 = *(v158 + 64);
      v83 = v180;
      v148 = v176;
      sub_100022A54(v180, v176, type metadata accessor for OwnerSharingCircle);
      *(v148 + v146) = v174;
      *(v148 + v147) = v179;
      v103 = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_100A5C364(0, *(v103 + 2) + 1, 1, v103);
      }

      v102 = v182;
      v104 = v181;
      v150 = *(v103 + 2);
      v149 = *(v103 + 3);
      if (v150 >= v149 >> 1)
      {
        v103 = sub_100A5C364((v149 > 1), v150 + 1, 1, v103);
      }

      sub_100022C40(v83, type metadata accessor for OwnerSharingCircle);
      *(v103 + 2) = v150 + 1;
      sub_1000D2AD8(v176, &v103[((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v150], &qword_10169EFA8, &qword_1013B2700);
      if (v102 == v167)
      {

        goto LABEL_93;
      }
    }
  }

  v103 = _swiftEmptyArrayStorage;
LABEL_93:

  return v103;
}

uint64_t sub_100AB87C8(void *a1)
{
  v2 = v1;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UUID();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v10 = qword_10177B2E8;
  v12 = a1[3];
  v11 = a1[4];
  sub_1000035D0(a1, v12);
  (*(*(*(v11 + 8) + 8) + 32))(v12);
  v13 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v13);
  v26[-4] = v10;
  v26[-3] = v9;
  v26[-2] = static ProximityPairingStatsCommandPayload.Error.__derived_enum_equals(_:_:);
  v26[-1] = 0;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v4 + 8))(v6, v29);
  v28 = *(v7 + 8);
  v29 = v9;
  v14 = v27;
  v28(v9, v27);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v15 = v30;
  v16 = a1[3];
  v17 = a1[4];
  v18 = sub_1000035D0(a1, v16);
  sub_101309728(v18, 0, 0, v15, v16, v17);

  sub_10001F280(a1, &v30);
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  sub_10000A748(&v30, v19 + 24);

  unsafeFromAsyncTask<A>(_:)();
  v26[0] = v2;
  v26[1] = a1;

  sub_10001F280(a1, &v30);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  sub_10000A748(&v30, v20 + 24);

  unsafeFromAsyncTask<A>(_:)();

  sub_10001F280(a1, &v30);
  v21 = swift_allocObject();
  sub_10000A748(&v30, v21 + 16);
  unsafeFromAsyncTask<A>(_:)();

  v23 = a1[3];
  v22 = a1[4];
  sub_1000035D0(a1, v23);
  v24 = v29;
  (*(*(*(v22 + 8) + 8) + 32))(v23);
  sub_100AAF1B0(v24);
  return (v28)(v24, v14);
}

uint64_t sub_100AB927C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100AB9348, 0, 0);
}

uint64_t sub_100AB9348()
{
  v1 = v0[4];
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[9] = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = getuid();
  sub_1000294F0(v4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100AB94A4;
  v6 = v0[7];
  v7 = v0[8];

  return sub_100689160(v7, v6);
}

uint64_t sub_100AB94A4()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100AB9644, 0, 0);
  }

  else
  {
    v3 = v2[8];
    v4 = v2[5];
    v5 = *(v2[6] + 8);
    v5(v2[7], v4);
    v5(v3, v4);

    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_100AB9644()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[6] + 8);
  v3(v0[7], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100AB9700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100AB97CC, 0, 0);
}

uint64_t sub_100AB97CC()
{
  v1 = v0[4];
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[9] = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = getuid();
  sub_1000294F0(v4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100AB9928;
  v7 = v0[7];
  v6 = v0[8];

  return sub_100682874(v7, v6);
}

uint64_t sub_100AB9928()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v4 = v2[6];
    v3 = v2[7];
    v5 = v2[5];
    v6 = *(v4 + 8);
    v2[12] = v6;
    v2[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v5);

    return _swift_task_switch(sub_100AB9AEC, 0, 0);
  }

  else
  {
    v7 = v2[8];
    v8 = v2[5];
    v9 = *(v2[6] + 8);
    v9(v2[7], v8);
    v9(v7, v8);

    v10 = v2[1];

    return v10();
  }
}

uint64_t sub_100AB9AEC()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100AB9B88(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for UUID();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_100AB9C78;

  return daemon.getter();
}

uint64_t sub_100AB9C78(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100AB9E54;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100AB9E54(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100AB9FD8, 0, 0);
  }
}

uint64_t sub_100AB9FD8()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100ABA0B4;
  v5 = v0[5];

  return sub_1010D0080(v5);
}

uint64_t sub_100ABA0B4()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100ABA290;
  }

  else
  {
    v5 = sub_100ABA224;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100ABA224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ABA290()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ABA300@<X0>(NSObject *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v205 = a3;
  v206 = a1;
  v204 = a4;
  v236 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  __chkstk_darwin(v236);
  v235 = &v195 - v6;
  v238 = type metadata accessor for MemberPeerTrust(0);
  v244 = *(v238 - 8);
  __chkstk_darwin(v238);
  v228 = &v195 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_1000BC4D4(&qword_101698E20, &unk_10139FDF0);
  v229 = *(v230 - 8);
  v8 = __chkstk_darwin(v230);
  v10 = &v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v203 = &v195 - v12;
  v13 = __chkstk_darwin(v11);
  v241 = &v195 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v195 - v16;
  v18 = __chkstk_darwin(v15);
  v227 = &v195 - v19;
  __chkstk_darwin(v18);
  v234 = &v195 - v20;
  v237 = type metadata accessor for MemberSharingCircle(0);
  v233 = *(v237 - 8);
  __chkstk_darwin(v237);
  v243 = (&v195 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v22 - 8);
  v217 = &v195 - v23;
  v223 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v240 = *(v223 - 8);
  __chkstk_darwin(v223);
  v216 = &v195 - v24;
  v246 = type metadata accessor for URL();
  v232 = *(v246 - 1);
  v25 = __chkstk_darwin(v246);
  v215 = &v195 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v214 = &v195 - v28;
  __chkstk_darwin(v27);
  v222 = &v195 - v29;
  v30 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v30 - 8);
  v213 = &v195 - v31;
  v32 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v245 = *(v32 - 8);
  __chkstk_darwin(v32 - 8);
  v248 = (&v195 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v219 = type metadata accessor for UUID();
  v226 = *(v219 - 8);
  v34 = __chkstk_darwin(v219);
  v36 = &v195 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v39 = &v195 - v38;
  v40 = __chkstk_darwin(v37);
  v202 = &v195 - v41;
  v42 = __chkstk_darwin(v40);
  v201 = &v195 - v43;
  v44 = __chkstk_darwin(v42);
  v242 = &v195 - v45;
  v46 = __chkstk_darwin(v44);
  v218 = &v195 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v195 - v49;
  __chkstk_darwin(v48);
  v247 = &v195 - v51;
  MACAddress.data.getter();
  sub_1004A4744();
  v52 = v251;
  if (v251 >> 60 == 15)
  {
    if (qword_101694480 == -1)
    {
LABEL_3:
      v53 = type metadata accessor for Logger();
      sub_1000076D4(v53, qword_10177A560);
      v54 = v226;
      v55 = v219;
      (*(v226 + 16))(v36, v206, v219);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v250 = v59;
        *v58 = 141558275;
        *(v58 + 4) = 1752392040;
        *(v58 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        (*(v54 + 8))(v36, v55);
        v63 = sub_1000136BC(v60, v62, &v250);

        *(v58 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v56, v57, "Cannot reconcile advertisement for unknownBeacon: %{private,mask.hash}s.", v58, 0x16u);
        sub_100007BAC(v59);
      }

      else
      {

        (*(v54 + 8))(v36, v55);
      }

      type metadata accessor for SPBeaconSharingError(0);
      v252 = 4;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_10000768C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
      _BridgedStoredNSError.init(_:userInfo:)();
      return swift_willThrow();
    }

LABEL_63:
    swift_once();
    goto LABEL_3;
  }

  v198 = a2;
  v197 = v10;
  v64 = v250;
  type metadata accessor for BeaconKeyManager(0);
  v65 = v249;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v249 = v65;
  v66 = sub_1012DCA30(v64, v52);

  v36 = v66[2];
  if (v36)
  {
    v221 = v4;
    v196 = v17;
    v199 = v64;
    v200 = v52;
    v250 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v36, 0);
    v67 = v66;
    v68 = v250;
    v69 = *(v245 + 80);
    v231 = v67;
    v70 = v67 + ((v69 + 32) & ~v69);
    v245 = *(v245 + 72);
    v71 = (v226 + 16);
    v72 = v219;
    v225 = (v226 + 16);
    do
    {
      v73 = v248;
      sub_100022A54(v70, v248, type metadata accessor for BeaconKeyManager.IndexInformation);
      v224 = *v71;
      v224(v50, v73, v72);
      sub_100022C40(v73, type metadata accessor for BeaconKeyManager.IndexInformation);
      v250 = v68;
      isa = v68[2].isa;
      v74 = v68[3].isa;
      if (isa >= v74 >> 1)
      {
        sub_101123D4C((v74 > 1), isa + 1, 1);
        v72 = v219;
        v68 = v250;
      }

      v68[2].isa = (isa + 1);
      v76 = *(v226 + 72);
      v77 = v68 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + v76 * isa;
      v78 = v68 + ((*(v226 + 80) + 32) & ~*(v226 + 80));
      (*(v226 + 32))(v77, v50, v72);
      v70 += v245;
      --v36;
      v71 = v225;
    }

    while (v36);
    v239 = v76;

    v250 = _swiftEmptyArrayStorage;
    v79 = v226;
    v80 = v68;
    v212 = v68[2].isa;
    if (v212)
    {
      v211 = v78;
      v81 = 0;
      v210 = (v232 + 16);
      v245 = v221[21].isa;
      v209 = (v232 + 8);
      v208 = (v240 + 56);
      v231 = (v244 + 48);
      v232 = "ntifier at URL: %@";
      v207 = (v226 + 8);
      v82 = v249;
      v83 = v247;
      v84 = v239;
      while (v81 < v80[2].isa)
      {
        v221 = v80;
        v220 = v81;
        v224(v83, &v211[v81 * v84], v72);
        if (qword_101694680 != -1)
        {
          swift_once();
        }

        v87 = v246;
        v88 = sub_1000076D4(v246, qword_10177AC60);
        v89 = *v210;
        v90 = v222;
        (*v210)(v222, v88, v87);
        v91 = v214;
        v89(v214, v90, v87);
        v92 = *(v223 + 40);
        v249 = v92;
        v244 = type metadata accessor for DirectorySequence();
        v93 = *(v244 - 8);
        v94 = v93[7].isa;
        v248 = v93 + 7;
        v36 = v216;
        v94(&v216[v92], 1, 1, v244);
        v89(v36, v91, v87);
        *&v36[*(v223 + 36)] = v245;
        v89(v215, v91, v87);

        v95 = v217;
        DirectorySequence.init(at:includingPropertiesForKeys:options:)();
        v96 = *v209;
        (*v209)(v91, v87);
        v96(v222, v87);
        v94(v95, 0, 1, v244);
        sub_10002311C(v95, &v36[v249], &qword_1016A5970, &unk_1013B3470);
        v97 = *v208;
        v98 = v213;
        v99 = v223;
        (*v208)(v213, 1, 1, v223);
        sub_10000B3A8(v98, &qword_1016A5988, &qword_1013B3490);
        sub_1000D2AD8(v36, v98, &qword_1016A5978, &qword_101410D20);
        v100 = (v97)(v98, 0, 1, v99);
        __chkstk_darwin(v100);
        v83 = v247;
        *(&v195 - 2) = v247;
        sub_100E6C1A4(sub_100B25948, (&v195 - 4));
        v244 = *(v101 + 16);
        if (v244)
        {
          v102 = 0;
          v248 = _swiftEmptyArrayStorage;
          v103 = v243;
          v240 = v101;
          while (v102 < *(v101 + 16))
          {
            v249 = v82;
            sub_100022A54(v101 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v102, v103, type metadata accessor for MemberSharingCircle);
            v104 = *(v237 + 32);
            if (qword_101694F30 != -1)
            {
              swift_once();
            }

            v105 = v103 + v104;
            v106 = sub_1000076D4(v246, qword_10177C1D0);
            v107._object = (v232 | 0x8000000000000000);
            v107._countAndFlagsBits = 0xD000000000000014;
            prohibitAsyncContext(functionName:)(v107);
            v108 = v238;
            v252 = v238;
            sub_1000BC4D4(&qword_101697740, &qword_1013D6990);
            v109 = String.init<A>(describing:)();
            v111 = v110;
            v112 = objc_autoreleasePoolPush();
            __chkstk_darwin(v112);
            *(&v195 - 6) = v113;
            *(&v195 - 5) = v105;
            *(&v195 - 4) = v106;
            *(&v195 - 3) = v109;
            *(&v195 - 2) = v111;
            v114 = v235;
            v115 = v249;
            OS_dispatch_queue.sync<A>(execute:)();
            v82 = v115;
            objc_autoreleasePoolPop(v112);

            if ((*v231)(v114, 1, v108) == 1)
            {
              v103 = v243;
              sub_100022C40(v243, type metadata accessor for MemberSharingCircle);
              sub_10000B3A8(v114, &qword_101698C10, &unk_10138C1E0);
              v36 = v241;
              v85 = v242;
              v83 = v247;
              v84 = v239;
            }

            else
            {
              v116 = v228;
              sub_10002911C(v114, v228, type metadata accessor for MemberPeerTrust);
              v117 = *(v230 + 48);
              v118 = v116;
              v119 = v227;
              sub_10002911C(v118, v227, type metadata accessor for MemberPeerTrust);
              v103 = v243;
              sub_10002911C(v243, v119 + v117, type metadata accessor for MemberSharingCircle);
              sub_1000D2AD8(v119, v234, &qword_101698E20, &unk_10139FDF0);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v36 = v241;
              v85 = v242;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v248 = sub_100A5D974(0, v248[2].isa + 1, 1, v248);
              }

              v83 = v247;
              v84 = v239;
              v122 = v248[2].isa;
              v121 = v248[3].isa;
              if (v122 >= v121 >> 1)
              {
                v248 = sub_100A5D974((v121 > 1), v122 + 1, 1, v248);
              }

              v123 = v248;
              v248[2].isa = (v122 + 1);
              sub_1000D2AD8(v234, v123 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v122, &qword_101698E20, &unk_10139FDF0);
            }

            ++v102;
            v101 = v240;
            if (v244 == v102)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

        v248 = _swiftEmptyArrayStorage;
        v84 = v239;
        v36 = v241;
        v85 = v242;
LABEL_13:
        v81 = (v220 + 1);

        sub_10039A07C(v248);
        v72 = v219;
        (*v207)(v83, v219);
        v79 = v226;
        v86 = v218;
        v80 = v221;
        if (v81 == v212)
        {

          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    v82 = v249;
    v36 = v241;
    v85 = v242;
    v86 = v218;
LABEL_38:
    v140 = v250;
    v141 = v250[2].isa;
    v249 = v82;
    if (v141 > 1)
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v142 = type metadata accessor for Logger();
      sub_1000076D4(v142, qword_10177A560);
      v143 = v219;
      v224(v86, v206, v219);
      swift_bridgeObjectRetain_n();
      v144 = v205;

      v145 = v144;
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v248 = swift_slowAlloc();
        v250 = v248;
        *v148 = 141558787;
        *(v148 + 4) = 1752392040;
        *(v148 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v149 = v145;
        v150 = dispatch thunk of CustomStringConvertible.description.getter();
        v152 = v151;
        (*(v226 + 8))(v86, v143);
        v153 = sub_1000136BC(v150, v152, &v250);
        v79 = v226;

        *(v148 + 14) = v153;
        *(v148 + 22) = 2080;
        v154 = v149;
        v85 = v242;
        *(v148 + 24) = sub_1000136BC(v198, v154, &v250);
        *(v148 + 32) = 2048;
        v155 = v140[2].isa;

        *(v148 + 34) = v155;

        _os_log_impl(&_mh_execute_header, v146, v147, "Warning: Multiple memberCircles found for unknownBeacon: %{private,mask.hash}s,\nownerHandle: %s, owner peer trust count: %ld.", v148, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        (*(v79 + 8))(v86, v143);
      }

      v141 = v140[2].isa;
      v36 = v241;
    }

    if (v141)
    {
      v156 = v196;
      sub_1000D2A70(v140 + ((*(v229 + 80) + 32) & ~*(v229 + 80)), v196, &qword_101698E20, &unk_10139FDF0);

      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v157 = type metadata accessor for Logger();
      sub_1000076D4(v157, qword_10177A560);
      v158 = v219;
      v224(v85, v206, v219);
      sub_1000D2A70(v156, v36, &qword_101698E20, &unk_10139FDF0);
      v159 = v203;
      sub_1000D2A70(v156, v203, &qword_101698E20, &unk_10139FDF0);
      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.default.getter();
      v248 = v160;
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        v250 = v245;
        *v162 = 141559299;
        *(v162 + 4) = 1752392040;
        *(v162 + 12) = 2081;
        v247 = sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LODWORD(v244) = v161;
        v163 = v242;
        v164 = dispatch thunk of CustomStringConvertible.description.getter();
        v166 = v165;
        v246 = *(v79 + 8);
        (v246)(v163, v158);
        v167 = sub_1000136BC(v164, v166, &v250);

        *(v162 + 14) = v167;
        *(v162 + 22) = 2160;
        *(v162 + 24) = 1752392040;
        *(v162 + 32) = 2081;
        v168 = v197;
        sub_1000D2A70(v36, v197, &qword_101698E20, &unk_10139FDF0);
        v169 = *(v230 + 48);
        v170 = v201;
        v224(v201, (v168 + *(v238 + 20)), v158);
        v243 = type metadata accessor for MemberPeerTrust;
        sub_100022C40(v168, type metadata accessor for MemberPeerTrust);
        sub_100022C40(v168 + v169, type metadata accessor for MemberSharingCircle);
        v171 = dispatch thunk of CustomStringConvertible.description.getter();
        v226 = v79 + 8;
        v173 = v172;
        (v246)(v170, v158);
        sub_10000B3A8(v36, &qword_101698E20, &unk_10139FDF0);
        v174 = sub_1000136BC(v171, v173, &v250);

        *(v162 + 34) = v174;
        *(v162 + 42) = 2160;
        *(v162 + 44) = 1752392040;
        *(v162 + 52) = 2081;
        v175 = v203;
        sub_1000D2A70(v203, v168, &qword_101698E20, &unk_10139FDF0);
        v176 = v168 + *(v230 + 48);
        v224(v170, (v176 + *(v237 + 20)), v158);
        sub_100022C40(v176, type metadata accessor for MemberSharingCircle);
        sub_100022C40(v168, v243);
        v177 = dispatch thunk of CustomStringConvertible.description.getter();
        v179 = v178;
        (v246)(v170, v158);
        v156 = v196;
        sub_10000B3A8(v175, &qword_101698E20, &unk_10139FDF0);
        v180 = sub_1000136BC(v177, v179, &v250);

        *(v162 + 54) = v180;
        v181 = v248;
        _os_log_impl(&_mh_execute_header, v248, v244, "Share request data for unknownBeacon: %{private,mask.hash}s,\nowner peer trust: %{private,mask.hash}s,\nshare: %{private,mask.hash}s.", v162, 0x3Eu);
        swift_arrayDestroy();

        sub_100006654(v199, v200);
      }

      else
      {
        sub_100006654(v199, v200);

        sub_10000B3A8(v159, &qword_101698E20, &unk_10139FDF0);
        sub_10000B3A8(v36, &qword_101698E20, &unk_10139FDF0);
        (*(v79 + 8))(v242, v158);
      }

      v193 = v204;
      sub_1000D2AD8(v156, v204, &qword_101698E20, &unk_10139FDF0);
      v194 = 0;
    }

    else
    {

      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v182 = type metadata accessor for Logger();
      sub_1000076D4(v182, qword_10177A560);
      v183 = v202;
      v184 = v219;
      v224(v202, v206, v219);

      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        v250 = swift_slowAlloc();
        *v187 = 141558531;
        *(v187 + 4) = 1752392040;
        *(v187 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v188 = v183;
        v189 = dispatch thunk of CustomStringConvertible.description.getter();
        v191 = v190;
        (*(v79 + 8))(v188, v184);
        v192 = sub_1000136BC(v189, v191, &v250);

        *(v187 + 14) = v192;
        *(v187 + 22) = 2080;
        *(v187 + 24) = sub_1000136BC(v198, v205, &v250);
        _os_log_impl(&_mh_execute_header, v185, v186, "No peer trust found for unknownBeacon: %{private,mask.hash}s, ownerHandle: %s.", v187, 0x20u);
        swift_arrayDestroy();

        sub_100006654(v199, v200);
      }

      else
      {
        sub_100006654(v199, v200);

        (*(v79 + 8))(v183, v184);
      }

      v194 = 1;
      v193 = v204;
    }

    return (*(v229 + 56))(v193, v194, 1, v230);
  }

  else
  {

    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v125 = type metadata accessor for Logger();
    sub_1000076D4(v125, qword_10177A560);
    v126 = v226;
    v127 = v219;
    (*(v226 + 16))(v39, v206, v219);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v200 = v52;
      v131 = v130;
      v132 = swift_slowAlloc();
      v133 = v39;
      v134 = v126;
      v199 = v64;
      v135 = v132;
      v250 = v132;
      *v131 = 141558275;
      *(v131 + 4) = 1752392040;
      *(v131 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v136 = dispatch thunk of CustomStringConvertible.description.getter();
      v138 = v137;
      (*(v134 + 8))(v133, v127);
      v139 = sub_1000136BC(v136, v138, &v250);

      *(v131 + 14) = v139;
      _os_log_impl(&_mh_execute_header, v128, v129, "Cannot reconcile advertisement for unknownBeacon: %{private,mask.hash}s.", v131, 0x16u);
      sub_100007BAC(v135);
      v64 = v199;

      v52 = v200;
    }

    else
    {

      (*(v126 + 8))(v39, v127);
    }

    type metadata accessor for SPBeaconSharingError(0);
    v252 = 4;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000768C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return sub_100006654(v64, v52);
  }
}

uint64_t sub_100ABC318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_100AC29C4(a1, &v27 - v10);
  v12 = type metadata accessor for WildModeAssociationRecord(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v11, 1, v12) != 1)
  {
    return sub_10002911C(v11, a2, type metadata accessor for WildModeAssociationRecord);
  }

  sub_10000B3A8(v11, &unk_1016C7C90, &qword_1013BB4B0);
  sub_100023184(a1, v9);
  if (v13(v9, 1, v12) != 1)
  {
    v11 = v9;
    return sub_10002911C(v11, a2, type metadata accessor for WildModeAssociationRecord);
  }

  sub_10000B3A8(v9, &unk_1016C7C90, &qword_1013BB4B0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BA08);
  v16 = v27;
  v15 = v28;
  v17 = v29;
  (*(v28 + 16))(v27, a1, v29);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v15 + 8))(v16, v17);
    v25 = sub_1000136BC(v22, v24, &v31);

    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "No wild mode association record found for unknownBeacon: %{private,mask.hash}s.", v20, 0x16u);
    sub_100007BAC(v21);
  }

  else
  {

    (*(v15 + 8))(v16, v17);
  }

  type metadata accessor for SPOwnerSessionError(0);
  v30 = 2;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10000768C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

uint64_t sub_100ABC770(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v9 = aBlock[0];
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v2;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v11 = LOBYTE(aBlock[0]);
  v12 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C390;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = &type metadata for Bool;
  *(v14 + 64) = &protocol witness table for Bool;
  *(v14 + 32) = v11;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "localAvailable: %d", v23);

  v15 = static os_log_type_t.default.getter();
  if (v11)
  {
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v13, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    a1(v3);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v13, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v16 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v13, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v17 = swift_allocObject();
    v17[2] = v9;
    v17[3] = sub_100B27E44;
    v17[4] = v10;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101647938;
    v18 = _Block_copy(aBlock);

    v19 = v23;
    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v20 = v25;
    v21 = v28;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v27 + 8))(v20, v21);
    (*(v24 + 8))(v19, v26);
  }
}

uint64_t sub_100ABCC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_10025EDD4(0, 0, v10, &unk_1013D67C0, v13);
}

uint64_t sub_100ABCE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100ABCF54, 0, 0);
}

uint64_t sub_100ABCF54()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[4], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_100ABD09C;
  v8 = v0[2];

  return unsafeBlocking<A>(_:)(v8, sub_100B23C44, v6, &type metadata for () + 1);
}

uint64_t sub_100ABD09C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100ABD1C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  (*(v4 + 16))(&v10 - v5, a2, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v6, v3);
  sub_100ABC770(sub_100720894, v8);
}

uint64_t sub_100ABD310@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for DirectorySequence();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = *(v1 + 168);
  if (qword_1016954B8 != -1)
  {
    swift_once();
  }

  v16 = sub_1000076D4(v8, qword_10177CDB8);
  (*(v9 + 16))(v14, v16, v8);
  v45 = _swiftEmptyArrayStorage;
  v46 = _swiftEmptyArrayStorage;
  v17 = [objc_opt_self() defaultManager];
  v40 = v14;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v42 = v9;
  v44 = v7;
  v18 = *(v9 + 48);
  v19 = v18(v4, 1, v8);
  v43 = v15;
  if (v19 != 1)
  {
    v20 = *(v42 + 32);
    v21 = (v42 + 8);
    do
    {
      v20(v12, v4, v8);
      v22 = objc_autoreleasePoolPush();
      sub_1006041CC(v12, v43, &v46, &v45);
      objc_autoreleasePoolPop(v22);
      (*v21)(v12, v8);
      DirectorySequence.next()();
    }

    while (v18(v4, 1, v8) != 1);
  }

  (*(v38 + 8))(v44, v39);
  v23 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v24 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10138BBE0;
  v26 = v46;
  v27 = v46[2];
  *(v25 + 56) = &type metadata for Int;
  *(v25 + 64) = &protocol witness table for Int;
  *(v25 + 32) = v27;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v28 = v40;
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v30;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = sub_100008C00();
  *(v25 + 72) = v29;
  *(v25 + 80) = v31;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Found %i records at %@", 22, 2, v25);

  (*(v42 + 8))(v28, v8);

  if (v26[2])
  {
    v32 = type metadata accessor for LeashRecord(0);
    v33 = *(v32 - 8);
    v34 = v41;
    sub_100022A54(v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v41, type metadata accessor for LeashRecord);

    return (*(v33 + 56))(v34, 0, 1, v32);
  }

  else
  {

    v36 = type metadata accessor for LeashRecord(0);
    return (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
  }
}

uint64_t sub_100ABD87C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for DirectorySequence();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v43 = *(v1 + 168);
  v15 = objc_autoreleasePoolPush();
  if (qword_101694EF8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v8, qword_10177C140);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v15);
  v44 = _swiftEmptyArrayStorage;
  v45 = _swiftEmptyArrayStorage;
  v16 = [objc_opt_self() defaultManager];
  v39 = v14;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v41 = v9;
  v17 = *(v9 + 48);
  if (v17(v4, 1, v8) != 1)
  {
    v42 = *(v41 + 32);
    v18 = (v41 + 8);
    do
    {
      v42(v12, v4, v8);
      v19 = v17;
      v20 = objc_autoreleasePoolPush();
      sub_1005FE1CC(v12, v43, &v45, &v44);
      v21 = v20;
      v17 = v19;
      objc_autoreleasePoolPop(v21);
      (*v18)(v12, v8);
      DirectorySequence.next()();
    }

    while (v19(v4, 1, v8) != 1);
  }

  (*(v37 + 8))(v7, v38);
  v22 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v23 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10138BBE0;
  v25 = v45;
  v26 = v45[2];
  *(v24 + 56) = &type metadata for Int;
  *(v24 + 64) = &protocol witness table for Int;
  *(v24 + 32) = v26;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v27 = v39;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = sub_100008C00();
  *(v24 + 72) = v28;
  *(v24 + 80) = v30;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Found %i records at %@", 22, 2, v24);

  (*(v41 + 8))(v27, v8);

  if (v25[2])
  {
    v31 = type metadata accessor for LostModeRecord(0);
    v32 = *(v31 - 8);
    v33 = v40;
    sub_100022A54(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v40, type metadata accessor for LostModeRecord);

    return (*(v32 + 56))(v33, 0, 1, v31);
  }

  else
  {

    v35 = type metadata accessor for LostModeRecord(0);
    return (*(*(v35 - 8) + 56))(v40, 1, 1, v35);
  }
}

uint64_t sub_100ABDE10@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for DirectorySequence();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v43 = *(v1 + 168);
  v15 = objc_autoreleasePoolPush();
  if (qword_101694430 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v8, qword_10177A4A0);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v15);
  v44 = _swiftEmptyArrayStorage;
  v45 = _swiftEmptyArrayStorage;
  v16 = [objc_opt_self() defaultManager];
  v39 = v14;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v41 = v9;
  v17 = *(v9 + 48);
  if (v17(v4, 1, v8) != 1)
  {
    v42 = *(v41 + 32);
    v18 = (v41 + 8);
    do
    {
      v42(v12, v4, v8);
      v19 = v17;
      v20 = objc_autoreleasePoolPush();
      sub_1006035CC(v12, v43, &v45, &v44);
      v21 = v20;
      v17 = v19;
      objc_autoreleasePoolPop(v21);
      (*v18)(v12, v8);
      DirectorySequence.next()();
    }

    while (v19(v4, 1, v8) != 1);
  }

  (*(v37 + 8))(v7, v38);
  v22 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v23 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10138BBE0;
  v25 = v45;
  v26 = v45[2];
  *(v24 + 56) = &type metadata for Int;
  *(v24 + 64) = &protocol witness table for Int;
  *(v24 + 32) = v26;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v27 = v39;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = sub_100008C00();
  *(v24 + 72) = v28;
  *(v24 + 80) = v30;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Found %i records at %@", 22, 2, v24);

  (*(v41 + 8))(v27, v8);

  if (v25[2])
  {
    v31 = type metadata accessor for LostModeInfoRecord(0);
    v32 = *(v31 - 8);
    v33 = v40;
    sub_100022A54(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v40, type metadata accessor for LostModeInfoRecord);

    return (*(v32 + 56))(v33, 0, 1, v31);
  }

  else
  {

    v35 = type metadata accessor for LostModeInfoRecord(0);
    return (*(*(v35 - 8) + 56))(v40, 1, 1, v35);
  }
}

char *sub_100ABE3A4(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for UUID();
  v15[1] = *(v6 - 8);
  v15[2] = v6;
  __chkstk_darwin(v6);
  v7 = type metadata accessor for TimeBasedKeysCriteria(0);
  __chkstk_darwin(v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  v11 = a2[4];
  sub_1000035D0(a2, v10);
  LOBYTE(v10) = sub_10002BD40(v10, v11);
  sub_1000035D0(a2, a2[3]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = v15[4];
  *v9 = v10 & 1;
  *(v9 + 1) = v12;
  v9[16] = a3;
  swift_storeEnumTagMultiPayload();
  v13 = sub_100ABE7DC(a1, v9);
  sub_100022C40(v9, type metadata accessor for TimeBasedKeysCriteria);
  return v13;
}

char *sub_100ABE7DC(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v69 = a2;
  v62 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v62);
  v61 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016A5A70, &unk_1013D6860);
  __chkstk_darwin(v4 - 8);
  v72 = &v55 - v5;
  v6 = _s18ConnectionKeyGroupVMa(0);
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v63 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for TimeBasedKey(0);
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v74 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  v18 = a1;
  v19 = a1;
  v20 = v70;
  v21 = v71;
  result = sub_100ADA680(v19, v69);
  if (v21)
  {
    return v20;
  }

  v70 = v17;
  v71 = v15;
  v68 = v10;
  v69 = v11;
  v60 = v18;
  v57 = v14;
  v58 = 0;
  v23 = *(result + 2);
  if (!v23)
  {
    v20 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v24 = 0;
  v66 = v6;
  v67 = (v12 + 48);
  v64 = v23;
  v65 += 6;
  v56 = v23 - 1;
  v20 = _swiftEmptyArrayStorage;
  v25 = &qword_10169BA30;
  v26 = &qword_1016A5A70;
  v27 = v74;
  v28 = v70;
  do
  {
    v59 = v20;
    v29 = v24;
    v30 = v71;
    while (1)
    {
      if (v29 >= *(result + 2))
      {
        __break(1u);
        return result;
      }

      v31 = v26;
      v32 = v25;
      v33 = result;
      sub_1000D2A70(&result[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v29], v28, &qword_1016A5A80, &qword_1013B35A8);
      v34 = *(v30 + 48);
      v35 = v68;
      sub_1000D2A70(v28, v68, v32, &unk_101395620);
      if ((*v67)(v35, 1, v69) != 1)
      {
        v44 = v35;
        v25 = v32;
        v45 = v57;
        sub_10002911C(v44, v57, type metadata accessor for TimeBasedKey);
        v46 = *v45;
        v47 = type metadata accessor for TimeBasedKey;
        v48 = v45;
        goto LABEL_19;
      }

      v36 = v35;
      v25 = v32;
      sub_10000B3A8(v36, v32, &unk_101395620);
      v37 = v28 + v34;
      v38 = v72;
      v26 = v31;
      sub_1000D2A70(v37, v72, v31, &unk_1013D6860);
      if ((*v65)(v38, 1, v66) == 1)
      {
        sub_10000B3A8(v38, v31, &unk_1013D6860);
LABEL_6:
        v28 = v70;
        goto LABEL_7;
      }

      v39 = v63;
      sub_10002911C(v38, v63, _s18ConnectionKeyGroupVMa);
      sub_10001F280(v60, v73);
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v40 = v61;
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_100022C40(v39, _s18ConnectionKeyGroupVMa);
        goto LABEL_6;
      }

      sub_100022C40(v40, type metadata accessor for SharedBeaconRecord);
      v41 = v39[7];
      v42 = v39[8];
      sub_1000035D0(v39 + 4, v41);
      if ((sub_10002BD40(v41, v42) & 1) == 0)
      {
        break;
      }

      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v28 = v70;
      if (v43)
      {
        goto LABEL_18;
      }

      v26 = v31;
      sub_100022C40(v63, _s18ConnectionKeyGroupVMa);
LABEL_7:
      ++v29;
      sub_10000B3A8(v28, &qword_1016A5A80, &qword_1013B35A8);
      v30 = v71;
      v27 = v74;
      result = v33;
      if (v64 == v29)
      {
        v20 = v59;
        goto LABEL_27;
      }
    }

LABEL_18:
    v49 = v63;
    sub_1000035D0(v63 + 4, v63[7]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v46 = v73[0];
    v47 = _s18ConnectionKeyGroupVMa;
    v48 = v49;
    v28 = v70;
LABEL_19:
    sub_100022C40(v48, v47);
    sub_10000B3A8(v28, &qword_1016A5A80, &qword_1013B35A8);
    v50 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_100A5D114(0, *(v50 + 2) + 1, 1, v50);
    }

    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    v53 = v50;
    v27 = v74;
    if (v52 >= v51 >> 1)
    {
      v54 = sub_100A5D114((v51 > 1), v52 + 1, 1, v50);
      v27 = v74;
      v53 = v54;
    }

    v24 = v29 + 1;
    *(v53 + 2) = v52 + 1;
    v20 = v53;
    *&v53[8 * v52 + 32] = v46;
    result = v33;
    v26 = v31;
  }

  while (v56 != v29);
LABEL_27:

  return v20;
}

void sub_100ABEEFC(uint64_t a1)
{
  v2 = v1;
  v59 = type metadata accessor for OwnedBeaconRecord(0);
  v55 = *(v59 - 8);
  v4 = *(v55 + 64);
  v5 = __chkstk_darwin(v59);
  v6 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v57 = &v52 - v8;
  __chkstk_darwin(v7);
  v10 = &v52 - v9;
  v56 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  __chkstk_darwin(v56);
  v58 = &v52 - v11;
  v12 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = type metadata accessor for KeyAlignmentRecord(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000322C8())
  {
    v53 = a1 + *(v59 + 20);
    v54 = v2;
    sub_100B2DA4C(v14);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v30 = v18;
      sub_10002911C(v14, v18, type metadata accessor for KeyAlignmentRecord);
      sub_1000BC4D4(&qword_1016B5508, &qword_1013D6970);
      unsafeFromAsyncTask<A>(_:)();
      v31 = v60;
      if (v60)
      {
        sub_100022A54(a1, v10, type metadata accessor for OwnedBeaconRecord);
        v32 = (*(v55 + 80) + 24) & ~*(v55 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = v31;
        sub_10002911C(v10, v33 + v32, type metadata accessor for OwnedBeaconRecord);
        swift_retain_n();
        v34 = v58;
        unsafeFromAsyncTask<A>(_:)();

        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_1000076D4(v35, qword_10177BA08);
        v36 = v57;
        sub_100022A54(a1, v57, type metadata accessor for OwnedBeaconRecord);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v60 = v40;
          *v39 = 141558275;
          *(v39 + 4) = 1752392040;
          *(v39 + 12) = 2081;
          type metadata accessor for UUID();
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v41 = dispatch thunk of CustomStringConvertible.description.getter();
          v43 = v42;
          sub_100022C40(v36, type metadata accessor for OwnedBeaconRecord);
          v44 = sub_1000136BC(v41, v43, &v60);

          *(v39 + 14) = v44;
          _os_log_impl(&_mh_execute_header, v37, v38, "Updating KeyAlignmentRecord for identifier %{private,mask.hash}s.", v39, 0x16u);
          sub_100007BAC(v40);
        }

        else
        {

          sub_100022C40(v36, type metadata accessor for OwnedBeaconRecord);
        }

        v49 = v54;
        v50 = type metadata accessor for Transaction();
        __chkstk_darwin(v50);
        *(&v52 - 4) = v49;
        *(&v52 - 3) = v30;
        v51 = v53;
        *(&v52 - 2) = v34;
        *(&v52 - 1) = v51;
        static Transaction.named<A>(_:with:)();

        sub_10000B3A8(v34, &unk_1016C8FC0, &unk_10139D7D0);
      }

      else
      {
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        sub_1000076D4(v45, qword_10177BA08);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Missing ObservationStoreService for updating KeyAlignment from disk.", v48, 2u);
        }
      }

      v28 = type metadata accessor for KeyAlignmentRecord;
      v29 = v30;
      goto LABEL_22;
    }

    sub_10000B3A8(v14, &qword_10169F328, &unk_1013CB040);
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177BA08);
  sub_100022A54(a1, v6, type metadata accessor for OwnedBeaconRecord);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v60 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_100022C40(v6, type metadata accessor for OwnedBeaconRecord);
    v27 = sub_1000136BC(v24, v26, &v60);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "KeyAlignmentRecord with the identifier not found - %{private,mask.hash}s.", v22, 0x16u);
    sub_100007BAC(v23);

    return;
  }

  v28 = type metadata accessor for OwnedBeaconRecord;
  v29 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
LABEL_22:
  sub_100022C40(v29, v28);
}

uint64_t sub_100ABF7C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100ABF858;

  return daemon.getter();
}

uint64_t sub_100ABF858(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_10054AB1C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100ABFA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v7 = *(v6 + 20);
  v8 = *(v6 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014650;

  return sub_1010CD424(a1, a3 + v7, a3 + v8);
}

void sub_100ABFB00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v39 = a5;
  v47 = a2;
  v48 = a3;
  v41 = a1;
  v5 = type metadata accessor for KeyAlignmentRecord(0);
  v40 = *(v5 - 8);
  v6 = *(v40 + 8);
  __chkstk_darwin(v5 - 8);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for UUID();
  v7 = *(v44 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v44);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - v11;
  sub_1000D2A70(v43, &v37 - v11, &unk_1016C8FC0, &unk_10139D7D0);
  v13 = *(v10 + 80);
  v45 = swift_allocObject();
  sub_1000D2AD8(v12, v45 + ((v13 + 16) & ~v13), &unk_1016C8FC0, &unk_10139D7D0);
  (*(v7 + 16))(&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v44);
  v14 = v46;
  sub_100022A54(v48, v46, type metadata accessor for KeyAlignmentRecord);
  sub_1000D2A70(v43, v12, &unk_1016C8FC0, &unk_10139D7D0);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = *(v40 + 80);
  v17 = (v8 + v16 + v15) & ~v16;
  v43 = v6;
  v18 = (v6 + v13 + v17) & ~v13;
  v19 = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = v41;
  (*(v7 + 32))(v20 + v15, v38, v44);
  sub_10002911C(v14, v20 + v17, type metadata accessor for KeyAlignmentRecord);
  sub_1000D2AD8(v12, v20 + v18, &unk_1016C8FC0, &unk_10139D7D0);

  v21 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_101385D80;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_100008C00();
  *(v23 + 32) = 0x65736C6166;
  *(v23 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Modify record. Disk First? (%@)", 31, 2, v23);

  v24 = objc_autoreleasePoolPush();
  v25 = v48;
  v26 = v42;
  sub_10112202C(v48);
  v44 = v27;
  if (v26)
  {
    objc_autoreleasePoolPop(v24);
    __break(1u);
  }

  else
  {
    v41 = ~v19;
    objc_autoreleasePoolPop(v24);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v42 = 0;
    v28 = v46;
    sub_100022A54(v25, v46, type metadata accessor for KeyAlignmentRecord);
    v29 = v43;
    v30 = swift_allocObject();
    v31 = v45;
    *(v30 + 16) = sub_100B256F8;
    *(v30 + 24) = v31;
    v40 = type metadata accessor for KeyAlignmentRecord;
    sub_10002911C(v28, v30 + ((v19 + 32) & ~v19), type metadata accessor for KeyAlignmentRecord);

    sub_100FDCA40(v44, sub_100B258F0, v30);

    v32 = swift_allocObject();
    *(v32 + 16) = sub_100B257A8;
    *(v32 + 24) = v20;

    Future.addFailure(block:)();

    sub_100022A54(v48, v28, type metadata accessor for KeyAlignmentRecord);
    v33 = (v19 + 16) & v41;
    v34 = (v29 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_10002911C(v28, v35 + v33, v40);
    *(v35 + v34) = v47;
    v36 = (v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v36 = sub_100B257A8;
    v36[1] = v20;

    Future.addSuccess(block:)();
  }
}

uint64_t sub_100AC018C(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for KeyAlignmentRecord(0);
  *(a1 + *(v5 + 28)) = v4;
  v6 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) + 36);
  v7 = *(v5 + 32);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 24);

  return v9(a1 + v7, &a2[v6], v8);
}

void sub_100AC0234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v52 = a3;
  v6 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  __chkstk_darwin(v6 - 8);
  v51 = (&v48 - v7);
  v48 = type metadata accessor for KeyAlignmentRecord(0);
  __chkstk_darwin(v48);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for UUID();
  v10 = *(v53 - 8);
  v11 = __chkstk_darwin(v53);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  Transaction.capture()();
  sub_1000D2A70(a1, v18, &unk_1016B1690, &qword_1013D6800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177BA08);
    v20 = v53;
    (*(v10 + 16))(v13, v52, v53);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v23 = 141558531;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v10 + 8))(v13, v20);
      v27 = sub_1000136BC(v24, v26, &v55);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2082;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = sub_1000136BC(v28, v29, &v55);

      *(v23 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Could not update last seen key index to alignment record uuid - %{private,mask.hash}s\ndue to %{public}s.", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v13, v20);
    }
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177BA08);
    v32 = v53;
    (*(v10 + 16))(v15, v52, v53);
    sub_100022A54(v49, v9, type metadata accessor for KeyAlignmentRecord);
    v33 = v51;
    sub_1000D2A70(v50, v51, &unk_1016C8FC0, &unk_10139D7D0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v57 = v52;
      *v36 = 141558787;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v50) = v35;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v10 + 8))(v15, v32);
      v40 = sub_1000136BC(v37, v39, &v57);

      *(v36 + 14) = v40;
      *(v36 + 22) = 2048;
      v41 = *&v9[*(v48 + 28)];
      sub_100022C40(v9, type metadata accessor for KeyAlignmentRecord);
      *(v36 + 24) = v41;
      *(v36 + 32) = 2080;
      v42 = *v33;
      v55 = 0x7972616D6972702ELL;
      v56 = 0xE900000000000028;
      v54 = v42;
      v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v43);

      v44._countAndFlagsBits = 41;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
      v45 = v55;
      v46 = v56;
      sub_10000B3A8(v33, &unk_1016C8FC0, &unk_10139D7D0);
      v47 = sub_1000136BC(v45, v46, &v57);

      *(v36 + 34) = v47;
      _os_log_impl(&_mh_execute_header, v34, v50, "Successfully updated last seen key index for beacon key alignment record uuid - %{private,mask.hash}s\nold_index - %llu\nnew_index - %s.", v36, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      sub_100022C40(v9, type metadata accessor for KeyAlignmentRecord);

      sub_10000B3A8(v33, &unk_1016C8FC0, &unk_10139D7D0);
      (*(v10 + 8))(v15, v32);
    }

    sub_10000B3A8(v18, &unk_1016B1690, &qword_1013D6800);
  }
}

uint64_t sub_100AC09B4()
{
  if (qword_101694F88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  sub_1000076D4(v1, qword_10177C268);
  v2._object = 0x800000010135B5A0;
  v2._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v2);
  type metadata accessor for SafeLocation(0);
  sub_1000BC4D4(&qword_1016A59B0, &qword_1013B34D0);
  String.init<A>(describing:)();
  v3 = objc_autoreleasePoolPush();
  __chkstk_darwin(v3);
  sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v3);
}

void sub_100AC0B28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v6 - 8);
  v8 = v53 - v7;
  v9 = type metadata accessor for UUID();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v63 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v11 - 8);
  v58 = v53 - v12;
  v13 = type metadata accessor for DirectorySequence();
  v59 = *(v13 - 8);
  v60 = v13;
  __chkstk_darwin(v13);
  v71 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v67 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v66 = v53 - v19;
  v20 = type metadata accessor for BeaconNamingRecord(0);
  v64 = *(v20 - 8);
  v65 = v20;
  __chkstk_darwin(v20);
  v22 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconNamingRecordCache;
  swift_beginAccess();
  v24 = *(a1 + v23);
  if (*(v24 + 16))
  {

    v25 = sub_1000210EC(a2);
    if (v26)
    {
      v27 = v64;
      sub_100022A54(*(v24 + 56) + *(v64 + 72) * v25, v22, type metadata accessor for BeaconNamingRecord);

      sub_10002911C(v22, a3, type metadata accessor for BeaconNamingRecord);
      (*(v27 + 56))(a3, 0, 1, v65);
      return;
    }
  }

  v28 = a3;
  v53[1] = v23;
  v55 = v8;
  v56 = a1;
  v70 = *(a1 + 168);
  v29 = objc_autoreleasePoolPush();
  if (qword_101694EB0 != -1)
  {
    swift_once();
  }

  v57 = v28;
  v30 = v68;
  sub_1000076D4(v15, qword_10177C0C0);
  v54 = a2;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v29);
  v72[0] = _swiftEmptyArrayStorage;
  v73 = _swiftEmptyArrayStorage;
  v31 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v32 = v58;
  DirectorySequence.next()();
  v33 = v67;
  v69 = *(v67 + 48);
  if (v69(v32, 1, v15) == 1)
  {
LABEL_11:
    (*(v59 + 8))(v71, v60);
    v36 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v37 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_10138BBE0;
    v39 = v72[0];
    v40 = *(v72[0] + 16);
    *(v38 + 56) = &type metadata for Int;
    *(v38 + 64) = &protocol witness table for Int;
    *(v38 + 32) = v40;
    sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v41 = v66;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    *(v38 + 96) = &type metadata for String;
    *(v38 + 104) = sub_100008C00();
    *(v38 + 72) = v42;
    *(v38 + 80) = v44;
    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v37, "Found %i records at %@", 22, 2, v38);

    (*(v67 + 8))(v41, v15);

    v45 = v39[2];
    v68 = v30;
    if (v45)
    {
      v46 = v64;
      v47 = v57;
      sub_100022A54(v39 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v57, type metadata accessor for BeaconNamingRecord);
      v48 = 0;
      v49 = v55;
      v50 = v54;
      v52 = v62;
      v51 = v63;
    }

    else
    {
      v48 = 1;
      v47 = v57;
      v49 = v55;
      v50 = v54;
      v52 = v62;
      v51 = v63;
      v46 = v64;
    }

    (*(v46 + 56))(v47, v48, 1, v65);
    (*(v61 + 16))(v51, v50, v52);
    sub_1000D2A70(v47, v49, &unk_1016B29E0, &unk_1013B70E0);
    swift_beginAccess();
    sub_1001E05F0(v49, v51);
    swift_endAccess();
  }

  else
  {
    v34 = *(v33 + 32);
    while (1)
    {
      v34(v18, v32, v15);
      v35 = objc_autoreleasePoolPush();
      sub_1006065CC(v18, v70, v72, &v73);
      if (v30)
      {
        break;
      }

      v30 = 0;
      objc_autoreleasePoolPop(v35);
      (*(v33 + 8))(v18, v15);
      DirectorySequence.next()();
      if (v69(v32, 1, v15) == 1)
      {
        goto LABEL_11;
      }
    }

    objc_autoreleasePoolPop(v35);
    __break(1u);
  }
}

uint64_t sub_100AC13F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  v10 = type metadata accessor for BeaconNamingRecord(0);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  swift_beginAccess();
  sub_1001E05F0(v5, v8);
  return swift_endAccess();
}

uint64_t sub_100AC1584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v9 = __chkstk_darwin(v53);
  v54 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v58 = &v52 - v12;
  __chkstk_darwin(v11);
  v14 = &v52 - v13;
  v15 = type metadata accessor for BeaconProductInfoRecord(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v52 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v52 - v19;
  v21 = *(v3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconProductInfoRecordCache);
  v60 = a1;
  v62 = a1;
  os_unfair_lock_lock((v21 + 24));
  sub_100B25564((v21 + 16), v14);
  os_unfair_lock_unlock((v21 + 24));
  v55 = v16;
  v22 = *(v16 + 48);
  v61 = v15;
  if (v22(v14, 1, v15) == 1)
  {
    v56 = 0;
    v57 = v22;
    v59 = a2;
    sub_10000B3A8(v14, &unk_1016AF8C0, &unk_1013A07A0);
    v23 = *(v3 + 168);
    if (qword_101694970 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for URL();
    v25 = sub_1000076D4(v24, qword_10177B398);
    v26._object = 0x800000010135B5A0;
    v26._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v26);
    v27 = v61;
    v63 = v61;
    sub_1000BC4D4(&qword_1016B5500, &qword_1013D6960);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v31 = objc_autoreleasePoolPush();
    __chkstk_darwin(v31);
    *(&v52 - 6) = v23;
    v32 = v60;
    *(&v52 - 5) = v60;
    *(&v52 - 4) = v25;
    *(&v52 - 3) = v28;
    *(&v52 - 2) = v30;
    v33 = v58;
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v31);

    v34 = v54;
    sub_1000D2A70(v33, v54, &unk_1016AF8C0, &unk_1013A07A0);
    if (v57(v34, 1, v27) == 1)
    {
      sub_10000B3A8(v34, &unk_1016AF8C0, &unk_1013A07A0);
    }

    else
    {
      v49 = v52;
      v50 = sub_10002911C(v34, v52, type metadata accessor for BeaconProductInfoRecord);
      __chkstk_darwin(v50);
      *(&v52 - 2) = v32;
      *(&v52 - 1) = v49;
      os_unfair_lock_lock((v21 + 24));
      sub_100B255AC(v21 + 16);
      os_unfair_lock_unlock((v21 + 24));
      sub_100022C40(v49, type metadata accessor for BeaconProductInfoRecord);
    }

    return sub_1000D2AD8(v33, v59, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    sub_10002911C(v14, v20, type metadata accessor for BeaconProductInfoRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177BA08);
    v36 = v56;
    v37 = v57;
    (*(v56 + 16))(v8, v60, v57);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v60 = v20;
      v41 = v36;
      v42 = v40;
      v43 = swift_slowAlloc();
      v59 = a2;
      v44 = v43;
      v63 = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v41 + 8))(v8, v37);
      v20 = v60;
      v48 = sub_1000136BC(v45, v47, &v63);

      *(v42 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v38, v39, "productInfoRecord cache hit: %{private,mask.hash}s", v42, 0x16u);
      sub_100007BAC(v44);
      a2 = v59;
    }

    else
    {

      (*(v36 + 8))(v8, v37);
    }

    sub_10002911C(v20, a2, type metadata accessor for BeaconProductInfoRecord);
    return (*(v55 + 56))(a2, 0, 1, v61);
  }
}

uint64_t sub_100AC1C5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_1000210EC(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for BeaconProductInfoRecord(0);
    v10 = *(v9 - 8);
    sub_100022A54(v8 + *(v10 + 72) * v7, a3, type metadata accessor for BeaconProductInfoRecord);
    return (*(v10 + 56))(a3, 0, 1, v9);
  }

  else
  {
    v12 = type metadata accessor for BeaconProductInfoRecord(0);
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

uint64_t sub_100AC1D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  sub_100022A54(a3, v7, type metadata accessor for BeaconProductInfoRecord);
  v12 = type metadata accessor for BeaconProductInfoRecord(0);
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  return sub_1001E0860(v7, v10);
}

uint64_t sub_100AC1F14()
{
  if (qword_1016951F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  sub_1000076D4(v1, qword_10177C590);
  v2._object = 0x800000010135B5A0;
  v2._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v2);
  type metadata accessor for AccessoryMetadataRecord(0);
  sub_1000BC4D4(&qword_1016B54F8, &unk_1013D6950);
  String.init<A>(describing:)();
  v3 = objc_autoreleasePoolPush();
  __chkstk_darwin(v3);
  sub_1000BC4D4(&qword_1016AF888, &unk_1013CAD70);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v3);
}

void *sub_100AC2088()
{
  v51 = type metadata accessor for SharedBeaconRecord(0);
  v1 = *(v51 - 8);
  v2 = __chkstk_darwin(v51);
  v50 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v38 - v4;
  v6 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v6 - 8);
  v48 = v38 - v7;
  v8 = sub_1000BC4D4(&qword_1016B54E0, &qword_1013D6938);
  v49 = *(v8 - 8);
  __chkstk_darwin(v8);
  v47 = v38 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v45 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v38 - v15;
  __chkstk_darwin(v14);
  v18 = v38 - v17;
  v19 = sub_1000BC4D4(&qword_1016B54E8, &unk_1013D6940);
  __chkstk_darwin(v19 - 8);
  v46 = (v38 - v20);
  v44 = *(v0 + 168);
  if (qword_101695470 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v21 = sub_1000076D4(v10, qword_10177CD50);
    v22 = v11[2];
    v22(v18, v21, v10);
    v22(v16, v18, v10);
    v23 = *(v8 + 40);
    v43 = v23;
    v40 = type metadata accessor for DirectorySequence();
    v41 = v18;
    v24 = *(v40 - 8);
    v42 = v8;
    v25 = *(v24 + 56);
    v38[1] = v24 + 56;
    v39 = v25;
    v26 = v47;
    v25(&v47[v23], 1, 1, v40);
    v22(v26, v16, v10);
    v27 = v45;
    *&v26[*(v8 + 36)] = v44;
    v22(v27, v16, v10);

    v28 = v48;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v29 = v11[1];
    v29(v16, v10);
    v29(v41, v10);
    v39(v28, 0, 1, v40);
    v30 = v26;
    sub_10002311C(v28, &v26[v43], &qword_1016A5970, &unk_1013B3470);
    v18 = *(v49 + 56);
    v31 = v46;
    v32 = v42;
    (v18)(v46, 1, 1, v42);
    sub_10000B3A8(v31, &qword_1016B54F0, &qword_1013D7430);
    sub_1000D2AD8(v30, v31, &qword_1016B54E0, &qword_1013D6938);
    (v18)(v31, 0, 1, v32);
    v11 = sub_100B33054(v31);
    sub_10000B3A8(v31, &qword_1016B54E8, &unk_1013D6940);
    v8 = v11[2];
    if (!v8)
    {
      break;
    }

    v16 = 0;
    v33 = _swiftEmptyArrayStorage;
    while (v16 < v11[2])
    {
      v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v18 = *(v1 + 72);
      sub_100022A54(v11 + v10 + v18 * v16, v5, type metadata accessor for SharedBeaconRecord);
      if (v5[*(v51 + 64)] == 5)
      {
        sub_10002911C(v5, v50, type metadata accessor for SharedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112421C(0, v33[2] + 1, 1);
          v33 = v52;
        }

        v36 = v33[2];
        v35 = v33[3];
        if (v36 >= v35 >> 1)
        {
          sub_10112421C((v35 > 1), v36 + 1, 1);
          v33 = v52;
        }

        v33[2] = v36 + 1;
        sub_10002911C(v50, v33 + v10 + v36 * v18, type metadata accessor for SharedBeaconRecord);
      }

      else
      {
        sub_100022C40(v5, type metadata accessor for SharedBeaconRecord);
      }

      if (v8 == ++v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_14:

  return v33;
}

void sub_100AC26E0(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_1000035D0(a1, v9);
  if (((*(v10 + 96))(v9, v10) & 1) == 0)
  {
    v11 = a1[3];
    v12 = a1[4];
    sub_1000035D0(a1, v11);
    if ((*(v12 + 104))(v11, v12))
    {
      v14 = a1[3];
      v13 = a1[4];
      sub_1000035D0(a1, v14);
      (*(*(*(v13 + 8) + 8) + 32))(v14);
      sub_100AC1584(v5, v8);
      (*(v3 + 8))(v5, v2);
      v15 = type metadata accessor for BeaconProductInfoRecord(0);
      if ((*(*(v15 - 8) + 48))(v8, 1, v15) == 1)
      {
        sub_10000B3A8(v8, &unk_1016AF8C0, &unk_1013A07A0);
        v16 = static os_log_type_t.error.getter();
        if (qword_101695038 != -1)
        {
          v19 = v16;
          swift_once();
          v16 = v19;
        }

        os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C380, "No txPower in productInfo -- defaulting to 4", 44, 2, _swiftEmptyArrayStorage);
      }

      else
      {
        v17 = *&v8[*(v15 + 72)];
        v18 = sub_100022C40(v8, type metadata accessor for BeaconProductInfoRecord);
        sub_100B03EFC(v18, v17);
      }
    }
  }
}

uint64_t sub_100AC29C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v13 = UUID.uuidString.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "wildModeAssociationRecord(beaconUUID: %@)", 41, 2, v12);

  static SystemInfo.lockState.getter();
  (*(v4 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v13) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  if (v13)
  {
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v11, "wildModeAssociationRecord call failed because in device is in beforeFirstUnlock state", 85, 2, _swiftEmptyArrayStorage);
    v18 = type metadata accessor for WildModeAssociationRecord(0);
    return (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  }

  else
  {
    v20 = sub_10002F740();
    __chkstk_darwin(v20);
    *(&v21 - 2) = a1;
    sub_1012BC3D0(sub_100B25518, v20, v22);
  }
}

uint64_t sub_100AC2CF4(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = __chkstk_darwin(v10 - 8);
  v25 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = *(type metadata accessor for WildModeAssociationRecord(0) + 20);
  (*(v4 + 16))(v14, a2, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v16 = *(v7 + 56);
  sub_1000D2A70(v26 + v15, v9, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v14, &v9[v16], &qword_1016980D0, &unk_10138F3B0);
  v17 = *(v4 + 48);
  if (v17(v9, 1, v3) != 1)
  {
    v19 = v25;
    sub_1000D2A70(v9, v25, &qword_1016980D0, &unk_10138F3B0);
    if (v17(&v9[v16], 1, v3) != 1)
    {
      v20 = v24;
      (*(v4 + 32))(v24, &v9[v16], v3);
      sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v4 + 8);
      v21(v20, v3);
      sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
      v21(v19, v3);
      sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
      return v18 & 1;
    }

    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v19, v3);
    goto LABEL_6;
  }

  sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
  if (v17(&v9[v16], 1, v3) != 1)
  {
LABEL_6:
    sub_10000B3A8(v9, &qword_1016AF880, &unk_10138CE20);
    v18 = 0;
    return v18 & 1;
  }

  sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
  v18 = 1;
  return v18 & 1;
}

void *sub_100AC30F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  __chkstk_darwin(v4 - 8);
  v70 = v68 - v5;
  v86 = type metadata accessor for SystemInfo.DeviceLockState();
  v6 = *(v86 - 8);
  v7 = __chkstk_darwin(v86);
  v85 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = v68 - v9;
  v91 = type metadata accessor for UUID();
  v89 = *(v91 - 8);
  v10 = __chkstk_darwin(v91);
  v76 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = v68 - v12;
  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v13 - 8);
  v88 = v68 - v14;
  v15 = [objc_allocWithZone(SPBeaconGroup) init];
  v16 = v15;
  v17 = 0;
  if ((*(a1 + 24) & 1) == 0)
  {
    v17 = *(a1 + 16);
  }

  [v15 setVersion:v17];
  v18 = type metadata accessor for OwnedBeaconGroup(0);
  v19 = *(v18 + 24);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v16 setIdentifier:isa];

  v21 = String._bridgeToObjectiveC()();
  [v16 setName:v21];

  v22 = MACAddress.data.getter();
  v24 = v23;
  v25 = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v22, v24);
  [v16 setMacAddress:v25];

  [v16 setClassification:0];
  [v16 setIsPairingComplete:sub_100518118() & 1];
  [v16 setIsFindMyNetworkEnabled:*(a1 + *(v18 + 32))];
  [v16 setStatus:sub_100AC3C94(a1)];
  sub_100519FB0();
  sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v26 = Set._bridgeToObjectiveC()().super.isa;

  [v16 setBeaconIdentifiers:v26];

  if (qword_101694920 != -1)
  {
LABEL_29:
    swift_once();
  }

  v68[1] = v19;
  v75 = qword_10177B2E8;
  v27 = sub_100035730(a1 + v19, 0, 0);
  v28 = v88;
  v29 = sub_1005232D8(v88, v27);

  sub_10000B3A8(v28, &unk_101696900, &unk_10138B1E0);
  [v16 setIsClassicConnected:v29 & 1];
  v30 = v2;
  sub_100A8B080(a1);
  sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
  v31 = Set._bridgeToObjectiveC()().super.isa;

  v69 = v16;
  [v16 setMultipartStatus:v31];

  v71 = a1;
  sub_100519FB0();
  v33 = v32;
  v34 = *(v32 + 56);
  v73 = v32 + 56;
  v35 = 1 << *(v32 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  a1 = v36 & v34;
  v74 = (v35 + 63) >> 6;
  v81 = v89 + 16;
  v80 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v79 = (v6 + 104);
  v78 = (v6 + 8);
  v82 = (v89 + 8);

  v19 = 0;
  v90 = 0;
  v77 = xmmword_101385D80;
  v38 = v72;
  v87 = v2;
  v83 = v37;
  while (1)
  {
    if (!a1)
    {
      v2 = v30;
      while (1)
      {
        v39 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v39 >= v74)
        {

          v65 = 1;
          goto LABEL_23;
        }

        a1 = *(v73 + 8 * v39);
        ++v19;
        if (a1)
        {
          v19 = v39;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_13:
    (*(v89 + 16))(v38, *(v33 + 48) + *(v89 + 72) * (__clz(__rbit64(a1)) | (v19 << 6)), v91);
    v40 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v41 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v42 = swift_allocObject();
    *(v42 + 16) = v77;
    v43 = UUID.uuidString.getter();
    v45 = v44;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_100008C00();
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v41, "beaconRecord(for uuid: %@)", 26, 2, v42);

    v46 = v84;
    static SystemInfo.lockState.getter();
    v16 = v85;
    v47 = v86;
    (*v79)(v85, v80, v86);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *v78;
    (*v78)(v16, v47);
    v49(v46, v47);
    if (v48)
    {

      v60 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v60, &_mh_execute_header, v41, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
      v94 = 0;
      v92 = 0u;
      v93 = 0u;
      goto LABEL_22;
    }

    v50 = v87;
    v51 = sub_100007F54();
    __chkstk_darwin(v51);
    v68[-2] = v38;
    v52 = v90;
    sub_1000314D0(sub_1004E4EC0, v51, &v92);

    if (!*(&v93 + 1))
    {
      break;
    }

    v90 = v52;
    a1 &= a1 - 1;
    sub_10000A748(&v92, &v95);
    v53 = v96;
    v54 = v97;
    sub_1000035D0(&v95, v96);
    v55 = v76;
    (*(*(*(v54 + 8) + 8) + 32))(v53);
    v56 = sub_100035730(v55, 0, 0);
    v6 = v88;
    v30 = v50;
    LOBYTE(v54) = sub_10003ABC0(v88, v55, v56, 1);

    v57 = *v82;
    v58 = v55;
    v59 = v91;
    (*v82)(v58, v91);
    sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
    v57(v38, v59);
    sub_100007BAC(&v95);
    v33 = v83;
    if ((v54 & 1) == 0)
    {

      v65 = 0;
      v66 = v70;
      v67 = v69;
      goto LABEL_24;
    }
  }

LABEL_22:
  (*v82)(v38, v91);
  sub_10000B3A8(&v92, &qword_101696920, &unk_10138B200);

  v65 = 0;
LABEL_23:
  v66 = v70;
  v67 = v69;
LABEL_24:
  [v67 setIsConnected:v65];
  sub_100ABD87C(v66);
  v61 = type metadata accessor for LostModeRecord(0);
  if ((*(*(v61 - 8) + 48))(v66, 1, v61) == 1)
  {
    sub_10000B3A8(v66, &unk_1016A99E0, &qword_1013A07B0);
    v62 = 0;
  }

  else
  {
    v62 = sub_100E78AA8();
    sub_100022C40(v66, type metadata accessor for LostModeRecord);
  }

  [v67 setLostModeInfo:v62];

  sub_100520B14();
  sub_100008BB8(0, &qword_1016B54D8, SPPairingState_ptr);
  v63 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v67 setBeaconMap:v63];

  return v67;
}

uint64_t sub_100AC3C94(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v5 = __chkstk_darwin(v4);
  v174 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v164 = &v154 - v8;
  v9 = __chkstk_darwin(v7);
  v165 = &v154 - v10;
  v11 = __chkstk_darwin(v9);
  v161 = &v154 - v12;
  __chkstk_darwin(v11);
  v160 = &v154 - v13;
  v14 = type metadata accessor for Date();
  v171 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v170 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v169 = &v154 - v17;
  v176 = sub_1000BC4D4(&qword_1016B54A8, &qword_1013D6838);
  v18 = *(v176 - 8);
  v19 = __chkstk_darwin(v176);
  v163 = (&v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v162 = &v154 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v154 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v154 - v27;
  v29 = __chkstk_darwin(v26);
  v166 = &v154 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v154 - v32;
  v34 = __chkstk_darwin(v31);
  v168 = &v154 - v35;
  v36 = __chkstk_darwin(v34);
  v167 = &v154 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = (&v154 - v39);
  __chkstk_darwin(v38);
  v42 = (&v154 - v41);
  v43 = sub_1000BC4D4(&qword_1016B54B0, &unk_1013D6840);
  v44 = __chkstk_darwin(v43 - 8);
  v45 = __chkstk_darwin(v44);
  v172 = &v154 - v46;
  v47 = __chkstk_darwin(v45);
  v173 = &v154 - v48;
  __chkstk_darwin(v47);
  v51 = *(v4 + 40);
  v175 = a1;
  v52 = *(*(a1 + v51) + 16);
  if (v52 > 0xFF)
  {
    goto LABEL_79;
  }

  if (v52 == 1)
  {
    if (qword_101694BE8 == -1)
    {
LABEL_4:
      v53 = type metadata accessor for Logger();
      sub_1000076D4(v53, qword_10177BA08);
      sub_100022A54(v175, v174, type metadata accessor for OwnedBeaconGroup);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v177[0] = v57;
        *v56 = 136315138;
        type metadata accessor for UUID();
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v58 = v174;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        sub_100022C40(v58, type metadata accessor for OwnedBeaconGroup);
        v62 = sub_1000136BC(v59, v61, v177);

        *(v56 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v54, v55, "%s is a single beacon group, returning .grouped", v56, 0xCu);
        sub_100007BAC(v57);
      }

      else
      {

        sub_100022C40(v174, type metadata accessor for OwnedBeaconGroup);
      }

      return 2;
    }

LABEL_80:
    swift_once();
    goto LABEL_4;
  }

  v155 = v50;
  v157 = v14;
  v156 = v33;
  v154 = v4;
  v174 = &v154 - v49;
  sub_100519FB0();
  v64 = v63;

  v65 = sub_100B05364(v64, v2);

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v159 = sub_101073CD0(v177[0]);

  v66 = v65[2];
  if (v66)
  {
    v67 = 0;
    while (v67 < v65[2])
    {
      sub_1000D2A70(v65 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v67, v42, &qword_1016B54A8, &qword_1013D6838);
      if (*v42 == 1)
      {
        v69 = v174;
        sub_1000D2AD8(v42, v174, &qword_1016B54A8, &qword_1013D6838);
        v68 = 0;
        goto LABEL_17;
      }

      ++v67;
      sub_10000B3A8(v42, &qword_1016B54A8, &qword_1013D6838);
      if (v66 == v67)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_13:
  v68 = 1;
  v69 = v174;
LABEL_17:
  v71 = 1;
  v72 = v176;
  v158 = *(v18 + 56);
  v158(v69, v68, 1, v176);
  if (v66)
  {
    v73 = 0;
    while (1)
    {
      if (v73 >= v65[2])
      {
        goto LABEL_77;
      }

      sub_1000D2A70(v65 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v73, v40, &qword_1016B54A8, &qword_1013D6838);
      if (*v40 == 4)
      {
        break;
      }

      ++v73;
      sub_10000B3A8(v40, &qword_1016B54A8, &qword_1013D6838);
      if (v66 == v73)
      {
        v71 = 1;
        v74 = v173;
        v69 = v174;
LABEL_25:
        v72 = v176;
        goto LABEL_26;
      }
    }

    v75 = v40;
    v74 = v173;
    sub_1000D2AD8(v75, v173, &qword_1016B54A8, &qword_1013D6838);
    v71 = 0;
    v69 = v174;
    goto LABEL_25;
  }

  v74 = v173;
LABEL_26:
  v158(v74, v71, 1, v72);
  v76 = v172;
  sub_1000D2A70(v69, v172, &qword_1016B54B0, &unk_1013D6840);
  v77 = *(v18 + 48);
  if (v77(v76, 1, v72) == 1)
  {
    sub_10000B3A8(v76, &qword_1016B54B0, &unk_1013D6840);
    if (v66)
    {
LABEL_28:
      if (v65[2])
      {
        v78 = v65 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        sub_1000D2A70(v78, v28, &qword_1016B54A8, &qword_1013D6838);
        if (v66 != 1)
        {
          v105 = 1;
          while (v105 < v65[2])
          {
            sub_1000D2A70(v78 + *(v18 + 72) * v105, v25, &qword_1016B54A8, &qword_1013D6838);
            if (static Date.< infix(_:_:)())
            {
              sub_10000B3A8(v28, &qword_1016B54A8, &qword_1013D6838);
              sub_1000D2AD8(v25, v28, &qword_1016B54A8, &qword_1013D6838);
            }

            else
            {
              sub_10000B3A8(v25, &qword_1016B54A8, &qword_1013D6838);
            }

            if (v66 == ++v105)
            {
              goto LABEL_30;
            }
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

LABEL_30:

        v79 = v166;
        sub_1000D2AD8(v28, v166, &qword_1016B54A8, &qword_1013D6838);
        v80 = v156;
        sub_1000D2AD8(v79, v156, &qword_1016B54A8, &qword_1013D6838);
        v81 = v169;
        Date.addingTimeInterval(_:)();
        v82 = v170;
        static Date.trustedNow.getter(v170);
        v83 = static Date.< infix(_:_:)();
        v84 = *(v171 + 8);
        v85 = v157;
        v84(v82, v157);
        v84(v81, v85);
        if (v83)
        {
          if (qword_101694BE8 != -1)
          {
            swift_once();
          }

          v86 = type metadata accessor for Logger();
          sub_1000076D4(v86, qword_10177BA08);
          v87 = v161;
          sub_100022A54(v175, v161, type metadata accessor for OwnedBeaconGroup);
          v88 = Logger.logObject.getter();
          v89 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = v80;
            v92 = swift_slowAlloc();
            v177[0] = v92;
            *v90 = 136315138;
            type metadata accessor for UUID();
            sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v93 = dispatch thunk of CustomStringConvertible.description.getter();
            v95 = v94;
            sub_100022C40(v87, type metadata accessor for OwnedBeaconGroup);
            v96 = sub_1000136BC(v93, v95, v177);

            *(v90 + 4) = v96;
            _os_log_impl(&_mh_execute_header, v88, v89, "Last multipart observation for group %s has expired, returning .unknown", v90, 0xCu);
            sub_100007BAC(v92);

            v97 = v91;
          }

          else
          {

            sub_100022C40(v87, type metadata accessor for OwnedBeaconGroup);
            v97 = v80;
          }

          sub_10000B3A8(v97, &qword_1016B54A8, &qword_1013D6838);
          goto LABEL_66;
        }

        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v106 = type metadata accessor for Logger();
        sub_1000076D4(v106, qword_10177BA08);
        v107 = v162;
        sub_1000D2A70(v80, v162, &qword_1016B54A8, &qword_1013D6838);
        v108 = v165;
        sub_100022A54(v175, v165, type metadata accessor for OwnedBeaconGroup);
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.default.getter();
        v111 = os_log_type_enabled(v109, v110);
        v112 = v163;
        if (!v111)
        {

          sub_100022C40(v108, type metadata accessor for OwnedBeaconGroup);
          sub_10000B3A8(v107, &qword_1016B54A8, &qword_1013D6838);
          sub_10000B3A8(v74, &qword_1016B54B0, &unk_1013D6840);
          sub_10000B3A8(v174, &qword_1016B54B0, &unk_1013D6840);
LABEL_75:
          sub_1000D2AD8(v80, v112, &qword_1016B54A8, &qword_1013D6838);
          v153 = *v112;
          v84(v112 + *(v176 + 48), v85);
          return v153;
        }

        LODWORD(v175) = v110;
        v113 = 0x6574617261706573;
        v114 = swift_slowAlloc();
        v177[0] = swift_slowAlloc();
        *v114 = 136315394;
        sub_1000D2A70(v107, v112, &qword_1016B54A8, &qword_1013D6838);
        v115 = v85;
        v116 = *v112;
        v84(v112 + *(v176 + 48), v115);
        if (v116 <= 1)
        {
          if (v116 == 1)
          {
            v117 = 0xE900000000000064;
            goto LABEL_74;
          }
        }

        else
        {
          switch(v116)
          {
            case 2:
              v117 = 0xE700000000000000;
              v113 = 0x646570756F7267;
              goto LABEL_74;
            case 3:
              v117 = 0xED0000657361436ELL;
              v113 = 0x49646570756F7267;
              goto LABEL_74;
            case 4:
              v117 = 0xEF657361436E4964;
LABEL_74:
              sub_10000B3A8(v107, &qword_1016B54A8, &qword_1013D6838);
              v147 = sub_1000136BC(v113, v117, v177);

              *(v114 + 4) = v147;
              *(v114 + 12) = 2080;
              type metadata accessor for UUID();
              sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v148 = v165;
              v149 = dispatch thunk of CustomStringConvertible.description.getter();
              v151 = v150;
              sub_100022C40(v148, type metadata accessor for OwnedBeaconGroup);
              v152 = sub_1000136BC(v149, v151, v177);

              *(v114 + 14) = v152;
              _os_log_impl(&_mh_execute_header, v109, v175, "Returning %s for group %s", v114, 0x16u);
              swift_arrayDestroy();

              sub_10000B3A8(v74, &qword_1016B54B0, &unk_1013D6840);
              sub_10000B3A8(v174, &qword_1016B54B0, &unk_1013D6840);
              v80 = v156;
              v85 = v157;
              goto LABEL_75;
          }
        }

        v117 = 0xE700000000000000;
        v113 = 0x6E776F6E6B6E75;
        goto LABEL_74;
      }

      __break(1u);
LABEL_82:
      swift_once();
LABEL_63:
      v137 = type metadata accessor for Logger();
      sub_1000076D4(v137, qword_10177BA08);
      v138 = v164;
      sub_100022A54(v175, v164, type metadata accessor for OwnedBeaconGroup);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v177[0] = v142;
        *v141 = 136315138;
        type metadata accessor for UUID();
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v143 = dispatch thunk of CustomStringConvertible.description.getter();
        v145 = v144;
        sub_100022C40(v138, type metadata accessor for OwnedBeaconGroup);
        v146 = sub_1000136BC(v143, v145, v177);

        *(v141 + 4) = v146;
        _os_log_impl(&_mh_execute_header, v139, v140, "No multipart observation for group %s has been found, returning .unknown", v141, 0xCu);
        sub_100007BAC(v142);
      }

      else
      {

        sub_100022C40(v138, type metadata accessor for OwnedBeaconGroup);
      }

LABEL_66:
      sub_10000B3A8(v74, &qword_1016B54B0, &unk_1013D6840);
      sub_10000B3A8(v174, &qword_1016B54B0, &unk_1013D6840);
      return 0;
    }

LABEL_62:

    if (qword_101694BE8 == -1)
    {
      goto LABEL_63;
    }

    goto LABEL_82;
  }

  v98 = v76;
  v99 = v167;
  sub_1000D2AD8(v98, v167, &qword_1016B54A8, &qword_1013D6838);
  v100 = v74;
  v101 = v155;
  sub_1000D2A70(v100, v155, &qword_1016B54B0, &unk_1013D6840);
  if (v77(v101, 1, v72) == 1)
  {
    sub_10000B3A8(v99, &qword_1016B54A8, &qword_1013D6838);
    v102 = &qword_1016B54B0;
    v103 = &unk_1013D6840;
    v104 = v101;
    goto LABEL_61;
  }

  sub_1000D2AD8(v101, v168, &qword_1016B54A8, &qword_1013D6838);
  v118 = v169;
  Date.addingTimeInterval(_:)();
  v119 = v170;
  static Date.trustedNow.getter(v170);
  v159 = sub_10000768C(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v120 = v157;
  LODWORD(v172) = dispatch thunk of static Comparable.< infix(_:_:)();
  v121 = *(v171 + 8);
  v158 = v121;
  (v121)(v119, v120);
  (v121)(v118, v120);
  Date.addingTimeInterval(_:)();
  static Date.trustedNow.getter(v119);
  v122 = dispatch thunk of static Comparable.< infix(_:_:)();
  v123 = v119;
  v124 = v158;
  (v158)(v123, v120);
  v124(v118, v120);
  if (v172 & 1) != 0 || (v122)
  {
    sub_10000B3A8(v168, &qword_1016B54A8, &qword_1013D6838);
    v104 = v167;
    v102 = &qword_1016B54A8;
    v103 = &qword_1013D6838;
LABEL_61:
    sub_10000B3A8(v104, v102, v103);
    v74 = v173;
    if (v66)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v125 = type metadata accessor for Logger();
  sub_1000076D4(v125, qword_10177BA08);
  v126 = v160;
  sub_100022A54(v175, v160, type metadata accessor for OwnedBeaconGroup);
  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.default.getter();
  v129 = os_log_type_enabled(v127, v128);
  v130 = v173;
  if (v129)
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v177[0] = v132;
    *v131 = 136315138;
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v133 = dispatch thunk of CustomStringConvertible.description.getter();
    v135 = v134;
    sub_100022C40(v126, type metadata accessor for OwnedBeaconGroup);
    v136 = sub_1000136BC(v133, v135, v177);

    *(v131 + 4) = v136;
    _os_log_impl(&_mh_execute_header, v127, v128, "Buds from group %s report separated & separatedInCase, returning separatedInCase", v131, 0xCu);
    sub_100007BAC(v132);
  }

  else
  {

    sub_100022C40(v126, type metadata accessor for OwnedBeaconGroup);
  }

  sub_10000B3A8(v168, &qword_1016B54A8, &qword_1013D6838);
  sub_10000B3A8(v167, &qword_1016B54A8, &qword_1013D6838);
  sub_10000B3A8(v130, &qword_1016B54B0, &unk_1013D6840);
  sub_10000B3A8(v174, &qword_1016B54B0, &unk_1013D6840);
  return 4;
}

uint64_t sub_100AC53EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v13 = UUID.uuidString.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "ownedBeaconGroup(for uuid: %{mask.hash}@)", 41, 2, v12);

  static SystemInfo.lockState.getter();
  (*(v4 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  if (v15)
  {
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v11, "ownedBeaconGroup call failed because in device is in beforeFirstUnlock state", 76, 2, _swiftEmptyArrayStorage);
    v18 = type metadata accessor for OwnedBeaconGroup(0);
    return (*(*(v18 - 8) + 56))(v29, 1, 1, v18);
  }

  else
  {
    v20 = *(v28 + 168);
    if (qword_1016947B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for URL();
    v22 = sub_1000076D4(v21, qword_10177AEF8);
    v23._object = 0x800000010135B5A0;
    v23._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v23);
    v30 = type metadata accessor for OwnedBeaconGroup(0);
    sub_1000BC4D4(&qword_1016A5AF8, &unk_1013B3630);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v27 = objc_autoreleasePoolPush();
    __chkstk_darwin(v27);
    *(&v28 - 6) = v20;
    *(&v28 - 5) = a1;
    *(&v28 - 4) = v22;
    *(&v28 - 3) = v24;
    *(&v28 - 2) = v26;
    sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v27);
  }
}

uint64_t sub_100AC57E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = type metadata accessor for OwnedBeaconGroup(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v15 - 8);
  LODWORD(v38) = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v39 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    static String.Encoding.utf8.getter();
    v18 = String.init(data:encoding:)();
    v34 = a1;
    if (!v17)
    {
      v18 = Data.hexString.getter();
    }

    v19 = v17;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v18;
    *(v16 + 40) = v19;
    v20 = v39;
    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v39, "ownedBeaconGroup(serialNumber: %{mask.hash}@)", 45, 2, v16);

    static SystemInfo.lockState.getter();
    (v9[13])(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    a1 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = v9[1];
    ++v9;
    v21(v12, v8);
    v21(v14, v8);
    if (a1)
    {
      v22 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v20, "ownedBeaconGroup call failed because in device is in beforeFirstUnlock state", 76, 2, _swiftEmptyArrayStorage);
      goto LABEL_16;
    }

    v8 = v37;
    v39 = sub_100008CA0();
    v33 = v39[2];
    if (!v33)
    {
      break;
    }

    v23 = 0;
    v32 = v39 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (v23 < v39[2])
    {
      v24 = v40;
      v25 = sub_100022A54(&v32[*(v6 + 72) * v23], v40, type metadata accessor for OwnedBeaconGroup);
      v14 = *(v24 + *(v5 + 40));
      v12 = *(v14 + 2);
      if (v12)
      {
        a1 = sub_1003A864C(*(v14 + 2), 0);
        v26 = sub_1003A9BF4(&v41, (a1 + 32), v12, v14);
        v9 = v41;
        v37 = v42;
        v38 = v26;
        v8 = v44;
        v35 = v45;
        v36 = v43;

        v25 = sub_1000128F8(v9);
        if (v38 != v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        a1 = _swiftEmptyArrayStorage;
      }

      v9 = &v31;
      v41 = v34;
      v42 = a2;
      __chkstk_darwin(v25);
      *(&v31 - 2) = &v41;
      v8 = sub_1002EB6B8(sub_100469610, (&v31 - 4), a1);

      if (v8)
      {

        v30 = v31;
        sub_10002911C(v40, v31, type metadata accessor for OwnedBeaconGroup);
        v28 = v30;
        v27 = 0;
        return (*(v6 + 56))(v28, v27, 1, v5);
      }

      ++v23;
      sub_100022C40(v40, type metadata accessor for OwnedBeaconGroup);
      if (v33 == v23)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_15:

LABEL_16:
  v27 = 1;
  v28 = v31;
  return (*(v6 + 56))(v28, v27, 1, v5);
}

uint64_t sub_100AC5D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v13 = MACAddress.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "ownedBeaconGroup(macAddress: %{mask.hash}@)", 43, 2, v12);

  static SystemInfo.lockState.getter();
  (*(v4 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v13) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  if (v13)
  {
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v11, "ownedBeaconGroup call failed because in device is in beforeFirstUnlock state", 76, 2, _swiftEmptyArrayStorage);
    v18 = type metadata accessor for OwnedBeaconGroup(0);
    return (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  }

  else
  {
    v20 = sub_100008CA0();
    __chkstk_darwin(v20);
    *(&v21 - 2) = a1;
    sub_1012BC0C4(sub_100B25438, v20, v22);
  }
}

void *sub_100AC607C(uint64_t a1)
{
  v2 = type metadata accessor for SystemInfo.DeviceLockState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v20 - v7;
  v9 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = MACAddress.description.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "ownedBeaconGroup(macAddress: %{mask.hash}@)", 43, 2, v11);

  static SystemInfo.lockState.getter();
  (*(v3 + 104))(v6, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v2);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v3 + 8);
  v15(v6, v2);
  v15(v8, v2);
  if (v12)
  {
    v16 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v10, "ownedBeaconGroup call failed because in device is in beforeFirstUnlock state", 76, 2, _swiftEmptyArrayStorage);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v18 = sub_100008CA0();
    __chkstk_darwin(v18);
    v20[-2] = a1;
    return sub_10013D56C(sub_100B27FB0, &v20[-4], v19);
  }
}

uint64_t sub_100AC6364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v47 = type metadata accessor for SharedBeaconRecord(0);
  v42 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for UUID();
  v48 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SystemInfo.DeviceLockState();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v40 - v10;
  v12 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = UUID.uuidString.getter();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100008C00();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "sharedBeaconGroup(for uuid: %{mask.hash}@)", 42, 2, v14);

  static SystemInfo.lockState.getter();
  (*(v6 + 104))(v9, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v5);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v6 + 8);
  v18(v9, v5);
  v18(v11, v5);
  if (v15)
  {
    v19 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v13, "sharedBeaconGroup call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
    v20 = type metadata accessor for SharedBeaconGroup(0);
    return (*(*(v20 - 8) + 56))(v45, 1, 1, v20);
  }

  v22 = sub_100030068();
  __chkstk_darwin(v22);
  v40[-2] = a1;
  v24 = sub_10013D0F8(sub_100B25418, &v40[-4], v23);
  v25 = v24[2];
  if (v25)
  {
    v44 = a1;
    v49 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v25, 0);
    v26 = v41;
    v27 = *(v42 + 80);
    v40[1] = v24;
    v28 = v24 + ((v27 + 32) & ~v27);
    v29 = *(v42 + 72);
    v30 = v49;
    v31 = (v48 + 16);
    v32 = v43;
    do
    {
      v33 = v46;
      sub_100022A54(v28, v46, type metadata accessor for SharedBeaconRecord);
      (*v31)(v26, v33 + *(v47 + 20), v32);
      sub_100022C40(v33, type metadata accessor for SharedBeaconRecord);
      v49 = v30;
      v35 = v30[2];
      v34 = v30[3];
      if (v35 >= v34 >> 1)
      {
        sub_101123D4C((v34 > 1), v35 + 1, 1);
        v30 = v49;
      }

      v30[2] = v35 + 1;
      (*(v48 + 32))(v30 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v35, v26, v32);
      v28 += v29;
      --v25;
    }

    while (v25);

    a1 = v44;
    v36 = v45;
    if (v30[2])
    {
      goto LABEL_11;
    }
  }

  else
  {

    v30 = _swiftEmptyArrayStorage;
    v32 = v43;
    v36 = v45;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_11:
      (*(v48 + 16))(v36, a1, v32);
      v37 = sub_10000954C(v30);

      v38 = type metadata accessor for SharedBeaconGroup(0);
      *(v36 + *(v38 + 20)) = v37;
      return (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
    }
  }

  v39 = type metadata accessor for SharedBeaconGroup(0);
  (*(*(v39 - 8) + 56))(v36, 1, 1, v39);
}

uint64_t sub_100AC69A4(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = __chkstk_darwin(v10 - 8);
  v25 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = *(type metadata accessor for SharedBeaconRecord(0) + 76);
  (*(v4 + 16))(v14, a2, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v16 = *(v7 + 56);
  sub_1000D2A70(v26 + v15, v9, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v14, &v9[v16], &qword_1016980D0, &unk_10138F3B0);
  v17 = *(v4 + 48);
  if (v17(v9, 1, v3) != 1)
  {
    v19 = v25;
    sub_1000D2A70(v9, v25, &qword_1016980D0, &unk_10138F3B0);
    if (v17(&v9[v16], 1, v3) != 1)
    {
      v20 = v24;
      (*(v4 + 32))(v24, &v9[v16], v3);
      sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v4 + 8);
      v21(v20, v3);
      sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
      v21(v19, v3);
      sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
      return v18 & 1;
    }

    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v19, v3);
    goto LABEL_6;
  }

  sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
  if (v17(&v9[v16], 1, v3) != 1)
  {
LABEL_6:
    sub_10000B3A8(v9, &qword_1016AF880, &unk_10138CE20);
    v18 = 0;
    return v18 & 1;
  }

  sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_100AC6DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_101699848, &unk_1013D6610);
  __chkstk_darwin(v5);
  v7 = &v15[-v6];
  v8._object = 0x800000010135C8F0;
  v8._countAndFlagsBits = 0xD000000000000015;
  prohibitAsyncContext(functionName:)(v8);
  v16 = v2;
  v17 = a1;
  OS_dispatch_queue.sync<A>(execute:)();
  v9 = sub_1000BC4D4(&qword_101699850, &unk_1013D6620);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_10000B3A8(v7, &qword_101699848, &unk_1013D6610);
    v10 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    v12 = v7[*(v9 + 48)];
    v13 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
    v14 = *(v13 + 48);
    sub_10002911C(v7, a2, type metadata accessor for BeaconStatus);
    *(a2 + v14) = v12;
    return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
  }
}

uint64_t sub_100AC6FE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v23 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v25 = *(v2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue);
  (*(v11 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v10);
  sub_1000D2A70(v23, v9, &qword_1016998D0, &unk_1013931A0);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  (*(v11 + 32))(v15 + v13, &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_1000D2AD8(v9, v15 + v14, &qword_1016998D0, &unk_1013931A0);
  aBlock[4] = sub_100B2533C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016477A8;
  v16 = _Block_copy(aBlock);

  v17 = v21;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v18 = v24;
  v19 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v29 + 8))(v18, v19);
  (*(v26 + 8))(v17, v28);
}

uint64_t sub_100AC7468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a2;
  v5 = type metadata accessor for DeviceEvent(0);
  v6 = __chkstk_darwin(v5 - 8);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v49 - v8;
  v9 = type metadata accessor for UUID();
  v58 = *(v9 - 8);
  __chkstk_darwin(v9);
  v54 = v10;
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v49 - v16;
  __chkstk_darwin(v15);
  v19 = &v49 - v18;
  v20 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_attachEventForBeacon;
  swift_beginAccess();
  v53 = a1;
  v21 = *(a1 + v20);
  v22 = *(v21 + 16);
  v56 = a3;
  if (v22)
  {

    v23 = sub_1000210EC(v59);
    if (v24)
    {
      v25 = v23;
      v26 = v9;
      v27 = *(v21 + 56);
      v28 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
      v29 = *(v28 - 8);
      v30 = v27 + *(v29 + 72) * v25;
      v9 = v26;
      a3 = v56;
      sub_1000D2A70(v30, v19, &qword_1016998D0, &unk_1013931A0);

      (*(v29 + 56))(v19, 0, 1, v28);
      goto LABEL_6;
    }
  }

  v31 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  (*(*(v31 - 8) + 56))(v19, 1, 1, v31);
LABEL_6:
  v32 = v57;
  v33 = *(v58 + 16);
  v55 = v9;
  v51 = v33;
  v33(v57, v59, v9);
  sub_1000D2A70(a3, v17, &qword_1016998D0, &unk_1013931A0);
  v34 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  v35 = *(v34 - 8);
  (*(v35 + 56))(v17, 0, 1, v34);
  swift_beginAccess();
  sub_1001E0AD0(v17, v32);
  swift_endAccess();
  sub_1000D2A70(v19, v14, &qword_1016AA4E0, &unk_1013BD0E0);
  v36 = v19;
  if ((*(v35 + 48))(v14, 1, v34) == 1)
  {
    sub_10000B3A8(v14, &qword_1016AA4E0, &unk_1013BD0E0);
    v37 = 0;
    v38 = v55;
    v39 = v52;
  }

  else
  {
    v40 = v50;
    v41 = sub_100A870CC(v50);
    v39 = v52;
    v37 = v41;
    sub_100022C40(v40, type metadata accessor for DeviceEvent);
    sub_10000B3A8(v14, &qword_1016998D0, &unk_1013931A0);
    v38 = v55;
  }

  v42 = sub_100A870CC(v39);
  sub_100022C40(v39, type metadata accessor for DeviceEvent);
  v43 = (v37 ^ v42);

  AnyCurrentValuePublisher.value.getter();

  if (v60 == 1 && (v43 & 1) != 0)
  {
    sub_100A8306C(0x16u);
  }

  type metadata accessor for Transaction();
  v44 = v57;
  v51(v57, v59, v38);
  v45 = v58;
  v46 = (*(v58 + 80) + 17) & ~*(v58 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v43 & 1;
  (*(v45 + 32))(v47 + v46, v44, v38);
  static Transaction.asyncTask(name:block:)();

  return sub_10000B3A8(v36, &qword_1016AA4E0, &unk_1013BD0E0);
}

uint64_t sub_100AC7A98(char a1, uint64_t a2)
{
  v2[2] = a2;
  if (a1)
  {
    v3 = swift_task_alloc();
    v2[3] = v3;
    *v3 = v2;
    v3[1] = sub_100AC7B60;

    return daemon.getter();
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100AC7B60(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_100AC7D3C;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100AC7D3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100AC7EBC, 0, 0);
  }
}

uint64_t sub_100AC7EBC()
{
  v1 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = sub_100B05044(v5);
  v0[7] = v6;
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_10082FE84;

  return sub_10094DB94(v6);
}

uint64_t sub_100AC8094(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CAC90);
  *v3 = v9;
  v3[1] = sub_100AC8270;

  return ActorServiceDaemon.getService<A>()(v4, updated, v6, v7);
}

uint64_t sub_100AC8270(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = swift_task_alloc();
    *(v4 + 80) = v6;
    *v6 = v5;
    v6[1] = sub_100031C04;

    return daemon.getter();
  }

  else
  {

    *(v4 + 56) = a1;

    return _swift_task_switch(sub_100AC840C, 0, 0);
  }
}

uint64_t sub_100AC840C()
{
  v1 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  v6 = v1[3];
  v7 = v1[4];
  sub_1000035D0(v1, v6);
  (*(*(*(v7 + 8) + 8) + 32))(v6);
  v8 = sub_100B05044(v5);
  v0[8] = v8;
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_100AC85C8;

  return sub_10094DB94(v8);
}

uint64_t sub_100AC85C8()
{

  return _swift_task_switch(sub_100AC86E0, 0, 0);
}

uint64_t sub_100AC86E0()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100031C04;

  return daemon.getter();
}

uint64_t sub_100AC8778(uint64_t a1)
{
  v1[14] = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0);
  v1[21] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  v1[22] = v4;
  v5 = *(v4 - 8);
  v1[23] = v5;
  v1[24] = *(v5 + 64);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v1[31] = v6;
  v1[32] = *(v6 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = type metadata accessor for BeaconStatus(0);
  v1[36] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v1[37] = swift_task_alloc();
  v7 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v1[38] = v7;
  v1[39] = *(v7 - 8);
  v1[40] = swift_task_alloc();
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v1[41] = swift_task_alloc();
  v8 = type metadata accessor for ObservedAdvertisement(0);
  v1[42] = v8;
  v1[43] = *(v8 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = type metadata accessor for BeaconIdentifier(0);
  v1[46] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v1[47] = v9;
  v10 = *(v9 - 8);
  v1[48] = v10;
  v1[49] = *(v10 + 64);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();

  return _swift_task_switch(sub_100AC8C38, 0, 0);
}

uint64_t sub_100AC8C38()
{
  if (qword_101695250 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 456) = sub_1000076D4(v1, qword_10177C650);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "readLatestBeaconStatusObservations called.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_100AC8D88;

  return daemon.getter();
}

uint64_t sub_100AC8D88(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 472) = a1;

  v3 = swift_task_alloc();
  *(v2 + 480) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100AC8F64;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100AC8F64(uint64_t a1)
{
  *(*v2 + 488) = a1;

  if (v1)
  {

    v3 = sub_100AC90B4;
  }

  else
  {

    v3 = sub_100AC92A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100AC90B4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "readLatestBeaconStatusObservations could not get the ObservationStoreService.", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_100AC92A4()
{

  v1 = swift_task_alloc();
  *(v0 + 496) = v1;
  v2 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  *v1 = v0;
  v1[1] = sub_100AC9378;
  v3 = *(v0 + 112);

  return unsafeBlocking<A>(_:)(v0 + 88, sub_100B26544, v3, v2);
}

uint64_t sub_100AC9378()
{

  return _swift_task_switch(sub_100AC9490, 0, 0);
}

uint64_t sub_100AC9490()
{
  v1 = *(v0 + 88);
  *(v0 + 504) = v1;
  v2 = *(v1 + 16);
  *(v0 + 512) = v2;
  if (v2)
  {
    *(v0 + 520) = OBJC_IVAR____TtC12searchpartyd11BeaconStore_advertisementCacheQueue;
    v3 = *(v0 + 376);
    v4 = *(v0 + 384);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 632) = v6;
    *(v0 + 528) = *(v4 + 56);
    *(v0 + 536) = v5;
    *(v0 + 544) = 0;
    v7 = *(v0 + 448);
    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    *(v0 + 552) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v10 = getuid();
    sub_1000294F0(v10);
    v5(v8 + *(v9 + 20), v7, v3);
    v11 = swift_task_alloc();
    *(v0 + 560) = v11;
    *v11 = v0;
    v11[1] = sub_100AC9744;
    v12 = *(v0 + 368);
    v13 = *(v0 + 328);

    return sub_1010CD810(v13, v12);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100AC9744()
{
  *(*v1 + 568) = v0;

  if (v0)
  {
    v2 = sub_100ACAE68;
  }

  else
  {
    v2 = sub_100AC9858;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AC9858()
{
  v77 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 328);
  if ((*(*(v0 + 344) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 536);
    v4 = *(v0 + 448);
    v5 = *(v0 + 416);
    v6 = *(v0 + 376);
    sub_10000B3A8(v2, &unk_10169BB50, &unk_101395760);
    v3(v5, v4, v6);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 448);
    v11 = *(v0 + 416);
    v12 = *(v0 + 376);
    v13 = *(v0 + 384);
    v14 = *(v0 + 368);
    if (v9)
    {
      v75 = *(v0 + 448);
      v15 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76 = v73;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v11, v12);
      v20 = sub_1000136BC(v16, v18, &v76);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v7, v8, "No latest advertisement read from ObservationService beacon: %{private,mask.hash}s.", v15, 0x16u);
      sub_100007BAC(v73);

      sub_100022C40(v14, type metadata accessor for BeaconIdentifier);
      v19(v75, v12);
    }

    else
    {

      v26 = *(v13 + 8);
      v26(v11, v12);
      sub_100022C40(v14, type metadata accessor for BeaconIdentifier);
      v26(v10, v12);
    }

    v27 = *(v0 + 544) + 1;
    if (v27 == *(v0 + 512))
    {

      v28 = *(v0 + 8);

      return v28();
    }

    else
    {
      *(v0 + 544) = v27;
      v52 = *(v0 + 536);
      v53 = *(v0 + 448);
      v54 = *(v0 + 376);
      v56 = *(v0 + 360);
      v55 = *(v0 + 368);
      v57 = *(v0 + 504) + ((*(v0 + 632) + 32) & ~*(v0 + 632)) + *(v0 + 528) * v27;
      *(v0 + 552) = (*(v0 + 384) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v52(v53, v57, v54);
      v58 = getuid();
      sub_1000294F0(v58);
      v52(v55 + *(v56 + 20), v53, v54);
      v59 = swift_task_alloc();
      *(v0 + 560) = v59;
      *v59 = v0;
      v59[1] = sub_100AC9744;
      v60 = *(v0 + 368);
      v61 = *(v0 + 328);

      return sub_1010CD810(v61, v60);
    }
  }

  else
  {
    v21 = *(v0 + 352);
    v23 = *(v0 + 304);
    v22 = *(v0 + 312);
    v24 = *(v0 + 296);
    sub_10002911C(v2, v21, type metadata accessor for ObservedAdvertisement);
    sub_1000D2A70(v21 + *(v1 + 52), v24, &qword_101699DB0, &unk_101393100);
    if ((*(v22 + 48))(v24, 1, v23) == 1)
    {
      sub_10000B3A8(*(v0 + 296), &qword_101699DB0, &unk_101393100);
      v69 = 0;
      v25 = 2;
    }

    else
    {
      v30 = *(v0 + 320);
      v31 = *(v0 + 304);
      sub_10002911C(*(v0 + 296), v30, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
      v25 = *(v30 + *(v31 + 20));
      v69 = *(v30 + *(v31 + 24));
      sub_100022C40(v30, type metadata accessor for ObservedAdvertisement.BeaconIndexInformation);
    }

    v68 = *(v0 + 536);
    v32 = *(v0 + 440);
    v71 = *(v0 + 432);
    v33 = *(v0 + 384);
    v74 = *(v0 + 376);
    v34 = *(v0 + 352);
    v35 = *(v0 + 336);
    v36 = *(v0 + 280);
    v37 = *(v0 + 288);
    v38 = *(v0 + 272);
    v70 = *(v0 + 264);
    v39 = *(v0 + 256);
    v62 = *(v0 + 248);
    v63 = v38;
    v72 = *(v0 + 112);
    v67 = (*(v34 + 24) & 0x2000000000000000) == 0;
    (v68)(v32, *(v0 + 448));
    v65 = *(v34 + 32);
    v66 = *(v39 + 16);
    v66(v38, v34 + *(v35 + 44), v62);
    v40 = v25 & 1;
    if (v25 == 2)
    {
      v40 = 2;
    }

    v64 = v40;
    if (v25 == 2)
    {
      v41 = 0;
    }

    else
    {
      v41 = v69;
    }

    v42 = *(v33 + 32);
    *(v0 + 576) = v42;
    *(v0 + 584) = (v33 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v42(v37, v32, v74);
    *(v37 + v36[5]) = v65;
    v43 = v36[6];
    (*(v39 + 32))(v37 + v43, v63, v62);
    v44 = (v37 + v36[7]);
    *v44 = v64;
    v44[1] = v41;
    *(v37 + v36[8]) = v67;
    *(v37 + v36[9]) = 0;
    v45 = *(v34 + 9);
    v68(v71, v37, v74);
    v66(v70, v37 + v43, v62);
    type metadata accessor for Transaction();
    v46 = swift_task_alloc();
    *(v46 + 16) = v72;
    *(v46 + 24) = v71;
    *(v46 + 32) = v70;
    *(v46 + 40) = v37;
    *(v46 + 48) = v45;
    *(v46 + 49) = v65;
    static Transaction.named<A>(_:with:)();

    (*(v39 + 8))(v70, v62);
    v47 = *(v33 + 8);
    *(v0 + 592) = v47;
    *(v0 + 600) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47(v71, v74);
    sub_100022C40(v37, type metadata accessor for BeaconStatus);
    sub_100022C40(v34, type metadata accessor for ObservedAdvertisement);

    v48 = swift_task_alloc();
    *(v0 + 608) = v48;
    *v48 = v0;
    v48[1] = sub_100ACA134;
    v49 = *(v0 + 240);
    v50 = *(v0 + 216);
    v51 = *(v0 + 112);

    return unsafeBlocking<A>(_:)(v49, sub_100B2654C, v51, v50);
  }
}

uint64_t sub_100ACA134()
{

  return _swift_task_switch(sub_100ACA24C, 0, 0);
}

uint64_t sub_100ACA24C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 232);
  sub_1000D2A70(*(v0 + 240), v3, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 592);
    v5 = *(v0 + 448);
    v7 = *(v0 + 368);
    v6 = *(v0 + 376);
    v8 = *(v0 + 232);
    sub_10000B3A8(*(v0 + 240), &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v7, type metadata accessor for BeaconIdentifier);
    v4(v5, v6);
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
    v9 = *(v0 + 544) + 1;
    if (v9 == *(v0 + 512))
    {

      v10 = *(v0 + 8);

      return v10();
    }

    else
    {
      *(v0 + 544) = v9;
      v21 = *(v0 + 536);
      v22 = *(v0 + 448);
      v23 = *(v0 + 376);
      v25 = *(v0 + 360);
      v24 = *(v0 + 368);
      v26 = *(v0 + 504) + ((*(v0 + 632) + 32) & ~*(v0 + 632)) + *(v0 + 528) * v9;
      *(v0 + 552) = (*(v0 + 384) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v21(v22, v26, v23);
      v27 = getuid();
      sub_1000294F0(v27);
      v21(v24 + *(v25 + 20), v22, v23);
      v28 = swift_task_alloc();
      *(v0 + 560) = v28;
      *v28 = v0;
      v28[1] = sub_100AC9744;
      v29 = *(v0 + 368);
      v30 = *(v0 + 328);

      return sub_1010CD810(v30, v29);
    }
  }

  else
  {
    v12 = *(v0 + 536);
    v13 = *(v0 + 424);
    v14 = *(v0 + 376);
    v15 = *(v0 + 384);
    v16 = *(v0 + 224);
    (*(v0 + 576))(v13, *(v0 + 232), v14);
    v12(v16, v13, v14);
    (*(v15 + 56))(v16, 0, 1, v14);
    v17 = swift_task_alloc();
    *(v0 + 616) = v17;
    *v17 = v0;
    v17[1] = sub_100ACA680;
    v18 = *(v0 + 368);
    v19 = *(v0 + 224);
    v20 = *(v0 + 168);

    return sub_1010CEAB4(v20, v18, v19);
  }
}

uint64_t sub_100ACA680()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  sub_10000B3A8(*(v2 + 224), &qword_1016980D0, &unk_10138F3B0);
  if (v0)
  {
    v3 = sub_100ACB390;
  }

  else
  {
    v3 = sub_100ACA7C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100ACA7C4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  if ((*(v1 + 48))(v2, 1, *(v0 + 176)) == 1)
  {
    v3 = *(v0 + 592);
    v4 = *(v0 + 448);
    v6 = *(v0 + 368);
    v5 = *(v0 + 376);
    v7 = *(v0 + 240);
    v3(*(v0 + 424), v5);
    sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v6, type metadata accessor for BeaconIdentifier);
    v3(v4, v5);
    sub_10000B3A8(v2, &qword_1016AA4E0, &unk_1013BD0E0);
  }

  else
  {
    v43 = *(v0 + 592);
    v32 = *(v0 + 576);
    v31 = *(v0 + 536);
    v8 = *(v0 + 448);
    v40 = v8;
    v9 = *(v0 + 432);
    v10 = *(v0 + 376);
    v44 = *(v0 + 368);
    v41 = *(v0 + 424);
    v42 = *(v0 + 240);
    v30 = *(v0 + 200);
    v38 = *(v0 + 152);
    v39 = *(v0 + 144);
    v35 = *(v0 + 136);
    v36 = *(v0 + 208);
    v37 = *(v0 + 128);
    v11 = (*(v0 + 632) + 24) & ~*(v0 + 632);
    v29 = *(v0 + 392) + v11;
    v12 = *(v0 + 112);
    v33 = *(v0 + 160);
    v34 = *(v0 + 120);
    sub_1000D2AD8(v2, v36, &qword_1016998D0, &unk_1013931A0);
    v31(v9, v8, v10);
    sub_1000D2A70(v36, v30, &qword_1016998D0, &unk_1013931A0);
    v13 = (v29 + *(v1 + 80)) & ~*(v1 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v32(v14 + v11, v9, v10);
    sub_1000D2AD8(v30, v14 + v13, &qword_1016998D0, &unk_1013931A0);
    *(v0 + 48) = sub_100B27E18;
    *(v0 + 56) = v14;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100006684;
    *(v0 + 40) = &unk_101647D98;
    v15 = _Block_copy((v0 + 16));

    static DispatchQoS.unspecified.getter();
    *(v0 + 104) = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v37 + 8))(v35, v34);
    (*(v38 + 8))(v33, v39);
    sub_10000B3A8(v36, &qword_1016998D0, &unk_1013931A0);
    v43(v41, v10);
    sub_10000B3A8(v42, &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v44, type metadata accessor for BeaconIdentifier);
    v43(v40, v10);
  }

  v16 = *(v0 + 544) + 1;
  if (v16 == *(v0 + 512))
  {

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 544) = v16;
    v19 = *(v0 + 536);
    v20 = *(v0 + 448);
    v21 = *(v0 + 376);
    v23 = *(v0 + 360);
    v22 = *(v0 + 368);
    v24 = *(v0 + 504) + ((*(v0 + 632) + 32) & ~*(v0 + 632)) + *(v0 + 528) * v16;
    *(v0 + 552) = (*(v0 + 384) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v20, v24, v21);
    v25 = getuid();
    sub_1000294F0(v25);
    v19(v22 + *(v23 + 20), v20, v21);
    v26 = swift_task_alloc();
    *(v0 + 560) = v26;
    *v26 = v0;
    v26[1] = sub_100AC9744;
    v27 = *(v0 + 368);
    v28 = *(v0 + 328);

    return sub_1010CD810(v28, v27);
  }
}