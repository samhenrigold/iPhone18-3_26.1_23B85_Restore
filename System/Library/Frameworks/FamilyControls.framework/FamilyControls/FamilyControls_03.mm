void sub_10004C520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.syncEngine.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Running background sharing activity", v13, 2u);
  }

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100048430("Invalidating background sharing activity", sub_100052D1C, &unk_1000675B0);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_sharingCoordinator);

    sub_100015DB0(a4, a1, a2);
  }
}

uint64_t sub_10004C724(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100052E44, v4);
}

void sub_10004C7B8(uint64_t a1)
{
  v1 = *(a1 + 160);
  v3[4] = sub_100053568;
  v3[5] = a1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10004C724;
  v3[3] = &unk_100067AB0;
  v2 = _Block_copy(v3);

  [v1 scheduleWithBlock:v2];
  _Block_release(v2);
}

uint64_t sub_10004C880(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_10004CBA8(sub_1000535A8, v4, v5);
}

uint64_t sub_10004C904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  if (v4)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    sub_10001FFAC(a1, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = a3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v27 = a1;
      v28 = v17;
      *v16 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v18 = String.init<A>(describing:)();
      v20 = sub_100002CB4(v18, v19, &v28);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Updating visited web domains was unsuccessful: %{public}s", v16, 0xCu);
      sub_1000032BC(v17);

      a3 = v26;
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    static Logger.syncEngine.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Successfully updated visited web domains", v23, 2u);
    }

    (*(v7 + 8))(v12, v6);
  }

  return a3(1);
}

uint64_t sub_10004CBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;
  v3 = type metadata accessor for Logger();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v72 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DateInterval();
  v68 = *(v79 - 8);
  v5 = __chkstk_darwin(v79);
  v66 = v6;
  v67 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v78 = &v64 - v7;
  v8 = type metadata accessor for Calendar.Component();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Calendar();
  v12 = *(v76 - 8);
  __chkstk_darwin(v76);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003720(&qword_10006BA50, &qword_100056770);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = type metadata accessor for Date();
  v75 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v65 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v24 = &v64 - v23;
  v25 = __chkstk_darwin(v22);
  v77 = &v64 - v26;
  __chkstk_darwin(v25);
  v28 = &v64 - v27;
  static Date.now.getter();
  static Calendar.current.getter();
  (*(v9 + 104))(v11, enum case for Calendar.Component.month(_:), v8);
  v80 = v28;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v9 + 8))(v11, v8);
  v29 = v75;
  (*(v12 + 8))(v14, v76);
  v30 = v29;
  v31 = v18;
  if ((*(v29 + 48))(v17, 1, v18) == 1)
  {
    sub_10000D5C4(v17, &qword_10006BA50, &qword_100056770);
    v32 = v72;
    static Logger.syncEngine.getter();
    v33 = v65;
    (*(v29 + 16))(v65, v80, v18);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v81 = v37;
      *v36 = 136315138;
      sub_1000535B4(&qword_10006C890, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v41 = *(v30 + 8);
      v41(v33, v18);
      v42 = sub_100002CB4(v38, v40, &v81);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to subtract a month from now %s", v36, 0xCu);
      sub_1000032BC(v37);

      (*(v73 + 8))(v32, v74);
      return (v41)(v80, v18);
    }

    else
    {

      v63 = *(v29 + 8);
      v63(v33, v18);
      (*(v73 + 8))(v32, v74);
      return (v63)(v80, v18);
    }
  }

  else
  {
    v44 = v29;
    v45 = *(v29 + 32);
    v46 = v77;
    v64 = v31;
    v45(v77, v17, v31);
    (*(v29 + 16))(v24, v46, v31);
    static Date.now.getter();
    v47 = v78;
    DateInterval.init(start:end:)();
    v48 = v68;
    v49 = v69;
    v51 = *(v69 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_usageReporting);
    v50 = *(v69 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_usageReporting + 8);
    v52 = v67;
    v53 = v79;
    (*(v68 + 16))(v67, v47, v79);
    v54 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v55 = (v66 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = v49;
    (*(v48 + 32))(v56 + v54, v52, v53);
    v57 = (v56 + v55);
    v59 = v70;
    v58 = v71;
    *v57 = v70;
    v57[1] = v58;
    v60 = *(v50 + 16);

    sub_100011230(v59, v58);
    v60(sub_10005301C, v56, v51, v50);

    (*(v48 + 8))(v78, v79);
    v61 = *(v44 + 8);
    v62 = v64;
    v61(v77, v64);
    return (v61)(v80, v62);
  }
}

void sub_10004D388(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_retrySharing) invalidate];
  v2 = *(a1 + 176);
  v3 = String._bridgeToObjectiveC()();
  [v2 removeObjectForKey:v3];
}

void sub_10004D414(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, const char *a5)
{
  v8 = a2;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    swift_beginAccess();
    *(a3 + 16) = a1;
    swift_errorRetain();
  }

  else
  {
    static Logger.syncEngine.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, a5, v16, 2u);
    }

    (*(v11 + 8))(v13, v10);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_10004D5A0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  if (v5)
  {
    if (a2)
    {
      swift_errorRetain();
      a2(v5, 1);
    }
  }

  else if (a2)
  {
    return (a2)(0, 0);
  }

  return result;
}

uint64_t sub_10004D630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v79 = a6;
  v86 = a5;
  v83 = a4;
  v8 = 0;
  v85 = type metadata accessor for Logger();
  v84 = *(v85 - 8);
  v9 = __chkstk_darwin(v85);
  v78 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v77 = &v76 - v11;
  v12 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v115 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100003720(&qword_10006BE78, &qword_100056C00);
  __chkstk_darwin(v15 - 8);
  v109 = &v76 - v16;
  v108 = type metadata accessor for UsageItemRecord.Source();
  v117 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for UUID();
  v18 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for UsageItemRecord.UsageType();
  v20 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UsageItemRecord();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v114 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for URL();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 16))
  {
    v26 = a3;
    v27 = *(a3 + 16);
    v116 = type metadata accessor for UsageStore();
    v87 = CTCategoryIdentifierOther;
    v98 = enum case for UsageItemRecord.UsageType.application(_:);
    v97 = (v20 + 104);
    v96 = (v18 + 8);
    v95 = enum case for UsageItemRecord.Source.local(_:);
    v94 = (v117 + 13);
    v93 = (v23 + 16);
    v92 = (v23 + 56);
    v91 = (v13 + 104);
    v90 = (v23 + 8);
    v28 = v13;
    v29 = &_swiftEmptyArrayStorage;
    v100 = v28;
    v89 = v28 + 32;
    v88 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
    v30 = (v26 + 40);
    v101 = a1;
    v102 = v12;
    v99 = v22;
    v31 = v27;
    do
    {
      v117 = v29;
      v33 = *(v30 - 1);
      v32 = *v30;

      v34 = static UsageStore.shared.getter();
      __chkstk_darwin(v34);
      *(&v76 - 2) = v33;
      *(&v76 - 1) = v32;
      v35 = UsageStore.contains(where:)();

      if (v35)
      {

        v29 = v117;
      }

      else
      {
        v112 = v31;
        v113 = v8;
        if (a1 && *(a1 + 16) && (v36 = sub_100041270(v33, v32), (v37 & 1) != 0))
        {
          v111 = *(*(a1 + 56) + 8 * v36);
          v38 = [v111 identifier];
        }

        else
        {
          v38 = v87;
          v111 = 0;
        }

        (*v97)(v103, v98, v104);
        v110 = v38;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v39 = v105;
        UUID.init()();
        UUID.uuidString.getter();
        (*v96)(v39, v106);
        (*v94)(v107, v95, v108);
        v40 = v114;
        UsageItemRecord.init(identifier:recordName:type:source:category:totalUsage:)();
        static UsageStore.shared.getter();
        v41 = v109;
        v42 = v99;
        (*v93)(v109, v40, v99);
        (*v92)(v41, 0, 1, v42);
        UsageStore.subscript.setter();

        sub_1000112B4(0, &qword_10006BE80, CKRecordID_ptr);
        v43 = UsageItemRecord.recordName.getter();
        v45 = v44;
        if (qword_10006B788 != -1)
        {
          swift_once();
        }

        v46 = qword_10006C960;
        v47._countAndFlagsBits = v43;
        v47._object = v45;
        isa = CKRecordID.init(recordName:zoneID:)(v47, v46).super.isa;
        *v115 = isa;
        v49 = v102;
        (*v91)();
        v50 = isa;
        v29 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_10001CCB8(0, v29[2] + 1, 1, v29);
        }

        v8 = v113;
        a1 = v101;
        v52 = v29[2];
        v51 = v29[3];
        if (v52 >= v51 >> 1)
        {
          v29 = sub_10001CCB8((v51 > 1), v52 + 1, 1, v29);
        }

        (*v90)(v114, v42);
        v29[2] = v52 + 1;
        (*(v100 + 32))(v29 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v52, v115, v49);
        v31 = v112;
      }

      v30 += 2;
      --v31;
    }

    while (v31);
  }

  else
  {
    v29 = &_swiftEmptyArrayStorage;
  }

  type metadata accessor for UsageStore();
  static UsageStore.shared.getter();
  v53 = v80;
  Locations.familyControlsStore.getter();
  dispatch thunk of UsageStore.save(to:)();
  if (v8)
  {
    (*(v81 + 8))(v53, v82);

    v54 = v78;
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v118 = v8;
      v119 = v58;
      *v57 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v59 = String.init<A>(describing:)();
      v61 = sub_100002CB4(v59, v60, &v119);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "Failed to save usage store during category lookup: %{public}s", v57, 0xCu);
      sub_1000032BC(v58);
    }

    (*(v84 + 8))(v54, v85);
    v62 = v86;
    if (v86)
    {
      swift_errorRetain();
      v62(v8, 1);
    }
  }

  else
  {
    (*(v81 + 8))(v53, v82);

    v64 = v77;
    static Logger.syncEngine.getter();

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v119 = v68;
      *v67 = 136446210;
      v69 = Array.description.getter();
      v71 = v29;
      v72 = v64;
      v73 = sub_100002CB4(v69, v70, &v119);

      *(v67 + 4) = v73;

      _os_log_impl(&_mh_execute_header, v65, v66, "telling sync engine about changes: %{public}s", v67, 0xCu);
      sub_1000032BC(v68);

      v74 = v72;
      v29 = v71;
      (*(v84 + 8))(v74, v85);
    }

    else
    {

      (*(v84 + 8))(v64, v85);
    }

    v75 = v86;

    CKSyncEngine.state.getter();

    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v29);

    if (v75)
    {
      return (v75)(0, 0);
    }
  }

  return result;
}

uint64_t sub_10004E32C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000112B4(0, &qword_10006C8C0, CTCategory_ptr);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_10004E3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = a5;
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32 = a3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v31 = v9;
      v18 = v17;
      v35 = a1;
      v36[0] = v17;
      *v16 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v19 = String.init<A>(describing:)();
      v21 = sub_100002CB4(v19, v20, v36);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to synchronize usage: %{public}s", v16, 0xCu);
      sub_1000032BC(v18);

      a3 = v32;

      (*(v10 + 8))(v12, v31);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    a5 = v33;
  }

  v23 = *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_usageReporting + 8);
  v24 = *(v23 + 8);
  v37 = *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_usageReporting);
  v22 = v37;
  v38 = v23;
  sub_10001C8A8(v36);
  v24(v22, v23);
  DateInterval.duration.getter();
  v26 = v25;
  v27 = swift_allocObject();
  v28 = v34;
  v27[2] = v34;
  v27[3] = a5;
  v27[4] = a2;
  v29 = *(v23 + 24);
  sub_100011230(v28, a5);

  v29(a3, sub_100053108, v27, v22, v23, v26);

  return sub_1000032BC(v36);
}

uint64_t sub_10004E6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void))
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  result = __chkstk_darwin(v10);
  v13 = &v24 - v12;
  if (!a3)
  {
    if (!a4)
    {
      return result;
    }

    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v9;
      v18 = v17;
      v27 = a4;
      v28 = v17;
      *v16 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v19 = String.init<A>(describing:)();
      v21 = sub_100002CB4(v19, v20, &v28);
      v25 = v8;
      v22 = a5;
      v23 = v21;

      *(v16 + 4) = v23;
      a5 = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to fetch usage: %{public}s", v16, 0xCu);
      sub_1000032BC(v18);

      (*(v26 + 8))(v13, v25);
      if (!v22)
      {
      }
    }

    else
    {

      (*(v9 + 8))(v13, v8);
      if (!a5)
      {
      }
    }

    swift_errorRetain();
    a5(a4, 1);
  }

  result = sub_10004EADC();
  if (a5)
  {
    return (a5)(0, 0);
  }

  return result;
}

uint64_t sub_10004EADC()
{
  v2 = v1;
  v3 = v0;
  v90 = type metadata accessor for URL();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v134 = (&v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v126 = *(v136 - 8);
  v5 = __chkstk_darwin(v136);
  v133 = (&v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v106 = (&v85 - v7);
  v8 = sub_100003720(&qword_10006BE78, &qword_100056C00);
  __chkstk_darwin(v8 - 8);
  v125 = &v85 - v9;
  v124 = type metadata accessor for UsageItemRecord.Source();
  v10 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for UUID();
  v12 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for UsageItemRecord.UsageType();
  v14 = *(v120 - 8);
  __chkstk_darwin(v120);
  v128 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for UsageItemRecord();
  v16 = *(v135 - 8);
  v17 = __chkstk_darwin(v135);
  v132 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v105 = &v85 - v20;
  v91 = v19;
  if (v19 >> 62)
  {
    goto LABEL_77;
  }

  result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
LABEL_3:
    v22 = 0;
    v23 = v19 & 0xC000000000000001;
    v86 = v19 & 0xFFFFFFFFFFFFFF8;
    v85 = v19 + 32;
    v119 = enum case for UsageItemRecord.UsageType.webDomain(_:);
    v118 = (v14 + 104);
    v117 = (v12 + 8);
    v116 = enum case for UsageItemRecord.Source.local(_:);
    v115 = (v10 + 104);
    v114 = (v16 + 16);
    v113 = (v16 + 56);
    v112 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
    v111 = (v126 + 104);
    v110 = (v16 + 8);
    v109 = v126 + 32;
    v139._rawValue = &_swiftEmptyArrayStorage;
    v96 = v3;
    v16 = v2;
    v88 = result;
    v87 = v19 & 0xC000000000000001;
    while (1)
    {
      if (v23)
      {
        v24 = v22;
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v86 + 16))
        {
          __break(1u);
          return result;
        }

        v24 = v22;
        v25 = *(v85 + 8 * v22);
      }

      v95 = v25;
      v26 = __OFADD__(v24, 1);
      v10 = (v24 + 1);
      if (v26)
      {
        goto LABEL_75;
      }

      v92 = v10;
      v27 = [v95 categoryUsage];
      sub_1000112B4(0, &qword_10006C898, USCategoryUsageReport_ptr);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v12;
      v98 = v12;
      if (v12 >> 62)
      {
        v29 = _CocoaArrayWrapper.endIndex.getter();
        v28 = v98;
        v10 = v134;
        if (!v29)
        {
          goto LABEL_68;
        }

LABEL_11:
        v30 = 0;
        v99 = v28 & 0xC000000000000001;
        v94 = v28 & 0xFFFFFFFFFFFFFF8;
        v93 = v28 + 32;
        v97 = v29;
        while (2)
        {
          if (v99)
          {
            v31 = v30;
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v30 >= *(v94 + 16))
            {
              goto LABEL_76;
            }

            v31 = v30;
            v32 = *(v93 + 8 * v30);
          }

          v104 = v32;
          v26 = __OFADD__(v31, 1);
          v10 = (v31 + 1);
          if (v26)
          {
            goto LABEL_73;
          }

          v100 = v10;
          v33 = v104;
          v127 = [v104 categoryIdentifier];
          v34 = [v33 applicationUsage];
          sub_1000112B4(0, &qword_10006C8A0, USApplicationUsageReport_ptr);
          v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v12 >> 62)
          {
            v10 = _CocoaArrayWrapper.endIndex.getter();
            if (v10)
            {
LABEL_20:
              v14 = 0;
              v131 = v12 & 0xC000000000000001;
              v108 = v12 & 0xFFFFFFFFFFFFFF8;
              v107 = v12 + 32;
              v129 = v10;
              v130 = v12;
              do
              {
                if (v131)
                {
                  v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v26 = __OFADD__(v14++, 1);
                  if (v26)
                  {
                    goto LABEL_71;
                  }
                }

                else
                {
                  if (v14 >= *(v108 + 16))
                  {
                    goto LABEL_72;
                  }

                  v35 = *(v107 + 8 * v14);
                  v26 = __OFADD__(v14++, 1);
                  if (v26)
                  {
LABEL_71:
                    __break(1u);
LABEL_72:
                    __break(1u);
LABEL_73:
                    __break(1u);
LABEL_74:
                    __break(1u);
LABEL_75:
                    __break(1u);
LABEL_76:
                    __break(1u);
LABEL_77:
                    result = _CocoaArrayWrapper.endIndex.getter();
                    v19 = v91;
                    if (!result)
                    {
                      goto LABEL_78;
                    }

                    goto LABEL_3;
                  }
                }

                v137 = v35;
                v138 = v14;
                v10 = [v35 webUsageByDomain];
                sub_1000112B4(0, &qword_10006BF48, NSNumber_ptr);
                v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                v3 = 0;
                v36 = v12 + 64;
                v37 = 1 << *(v12 + 32);
                if (v37 < 64)
                {
                  v38 = ~(-1 << v37);
                }

                else
                {
                  v38 = -1;
                }

                v2 = v38 & *(v12 + 64);
                v39 = ((v37 + 63) >> 6);
                v141 = v39;
                v142 = v12;
                v140 = v12 + 64;
LABEL_32:
                v40 = v3;
                if (!v2)
                {
                  goto LABEL_34;
                }

                do
                {
                  v3 = v40;
LABEL_37:
                  v41 = __clz(__rbit64(v2));
                  v2 &= v2 - 1;
                  v42 = v41 | (v3 << 6);
                  v43 = (*(v142 + 48) + 16 * v42);
                  v44 = *v43;
                  v45 = v43[1];
                  v46 = *(*(v142 + 56) + 8 * v42);
                  v10 = type metadata accessor for UsageStore();

                  v47 = v46;
                  v12 = static UsageStore.shared.getter();
                  v14 = &v85;
                  __chkstk_darwin(v12);
                  *(&v85 - 2) = v44;
                  *(&v85 - 1) = v45;
                  v48 = v16;
                  v49 = UsageStore.contains(where:)();
                  v143 = v48;

                  if ((v49 & 1) == 0)
                  {
                    (*v118)(v128, v119, v120);
                    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v101 = v50;

                    v103 = v47;
                    [v47 doubleValue];
                    v51 = v121;
                    UUID.init()();
                    UUID.uuidString.getter();
                    (*v117)(v51, v122);
                    (*v115)(v123, v116, v124);
                    v52 = v105;
                    UsageItemRecord.init(identifier:recordName:type:source:category:totalUsage:)();
                    static UsageStore.shared.getter();
                    v53 = v125;
                    v54 = v135;
                    (*v114)(v125, v52, v135);
                    (*v113)(v53, 0, 1, v54);
                    UsageStore.subscript.setter();

                    sub_1000112B4(0, &qword_10006BE80, CKRecordID_ptr);
                    v55 = UsageItemRecord.recordName.getter();
                    v57 = v56;
                    if (qword_10006B788 != -1)
                    {
                      swift_once();
                    }

                    v58 = qword_10006C960;
                    v59._countAndFlagsBits = v55;
                    v59._object = v57;
                    isa = CKRecordID.init(recordName:zoneID:)(v59, v58).super.isa;
                    *v106 = isa;
                    (*v111)();
                    v10 = isa;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v139._rawValue = sub_10001CCB8(0, *(v139._rawValue + 2) + 1, 1, v139._rawValue);
                    }

                    v14 = v103;
                    v62 = *(v139._rawValue + 2);
                    v61 = *(v139._rawValue + 3);
                    v12 = v62 + 1;
                    if (v62 >= v61 >> 1)
                    {
                      v139._rawValue = sub_10001CCB8((v61 > 1), v62 + 1, 1, v139._rawValue);
                    }

                    (*v110)(v105, v135);
                    rawValue = v139._rawValue;
                    *(v139._rawValue + 2) = v12;
                    (*(v126 + 32))(rawValue + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v62, v106, v136);
                    v16 = v143;
                    v36 = v140;
                    v39 = v141;
                    goto LABEL_32;
                  }

                  v40 = v3;
                  v16 = v143;
                  v36 = v140;
                  v39 = v141;
                }

                while (v2);
                while (1)
                {
LABEL_34:
                  v3 = v40 + 1;
                  if (__OFADD__(v40, 1))
                  {
                    __break(1u);
                    goto LABEL_71;
                  }

                  if (v3 >= v39)
                  {
                    break;
                  }

                  v2 = *(v36 + 8 * v3);
                  ++v40;
                  if (v2)
                  {
                    goto LABEL_37;
                  }
                }

                v10 = v129;
                v12 = v130;
                v14 = v138;
              }

              while (v138 != v129);
            }
          }

          else
          {
            v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v10)
            {
              goto LABEL_20;
            }
          }

          v64 = [v104 webUsage];
          sub_1000112B4(0, &qword_10006C8A8, USWebUsageReport_ptr);
          v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v3 >> 62)
          {
            v2 = _CocoaArrayWrapper.endIndex.getter();
            v10 = v134;
            if (v2)
            {
LABEL_50:
              v142 = type metadata accessor for UsageStore();
              if (v2 < 1)
              {
                goto LABEL_74;
              }

              v65 = 0;
              v66 = v3 & 0xC000000000000001;
              v137 = v3;
              v130 = v3 & 0xC000000000000001;
              v131 = v2;
              do
              {
                if (v66)
                {
                  v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v67 = *(v3 + 8 * v65 + 32);
                }

                v68 = v67;
                v12 = static UsageStore.shared.getter();
                v14 = &v85;
                __chkstk_darwin(v12);
                *(&v85 - 2) = v68;
                v69 = UsageStore.contains(where:)();

                if (v69)
                {
                }

                else
                {
                  v143 = v16;
                  v70 = [v68 domainIdentifier];
                  static String._unconditionallyBridgeFromObjectiveC(_:)();

                  (*v118)(v128, v119, v120);
                  v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v138 = v71;

                  v141 = v68;
                  [v68 totalUsageTime];
                  v72 = v121;
                  UUID.init()();
                  UUID.uuidString.getter();
                  (*v117)(v72, v122);
                  (*v115)(v123, v116, v124);
                  v73 = v132;
                  UsageItemRecord.init(identifier:recordName:type:source:category:totalUsage:)();
                  static UsageStore.shared.getter();
                  v74 = v125;
                  v75 = v135;
                  (*v114)(v125, v73, v135);
                  (*v113)(v74, 0, 1, v75);
                  UsageStore.subscript.setter();

                  sub_1000112B4(0, &qword_10006BE80, CKRecordID_ptr);
                  v76 = UsageItemRecord.recordName.getter();
                  v78 = v77;
                  if (qword_10006B788 != -1)
                  {
                    swift_once();
                  }

                  v79 = qword_10006C960;
                  v80._countAndFlagsBits = v76;
                  v80._object = v78;
                  v81 = CKRecordID.init(recordName:zoneID:)(v80, v79).super.isa;
                  *v133 = v81;
                  (*v111)();
                  v82 = v81;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v139._rawValue = sub_10001CCB8(0, *(v139._rawValue + 2) + 1, 1, v139._rawValue);
                  }

                  v16 = v143;
                  v3 = v137;
                  v66 = v130;
                  v2 = v131;
                  v14 = *(v139._rawValue + 2);
                  v83 = *(v139._rawValue + 3);
                  v12 = v14 + 1;
                  if (v14 >= v83 >> 1)
                  {
                    v139._rawValue = sub_10001CCB8((v83 > 1), v14 + 1, 1, v139._rawValue);
                  }

                  (*v110)(v132, v135);
                  v84 = v139._rawValue;
                  *(v139._rawValue + 2) = v12;
                  (*(v126 + 32))(v84 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v14, v133, v136);
                }

                ++v65;
                v10 = v134;
              }

              while (v2 != v65);
            }
          }

          else
          {
            v2 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v10 = v134;
            if (v2)
            {
              goto LABEL_50;
            }
          }

          v30 = v100;
          v3 = v96;
          v28 = v98;
          if (v100 == v97)
          {
            goto LABEL_68;
          }

          continue;
        }
      }

      v29 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v134;
      if (v29)
      {
        goto LABEL_11;
      }

LABEL_68:
      v12 = v28;

      result = v88;
      v22 = v92;
      v23 = v87;
      if (v92 == v88)
      {
        goto LABEL_79;
      }
    }
  }

LABEL_78:
  v139._rawValue = &_swiftEmptyArrayStorage;
  v16 = v2;
  v10 = v134;
LABEL_79:
  type metadata accessor for UsageStore();
  static UsageStore.shared.getter();
  Locations.familyControlsStore.getter();
  dispatch thunk of UsageStore.save(to:)();
  (*(v89 + 8))(v10, v90);
  if (v16)
  {
  }

  else
  {

    CKSyncEngine.state.getter();

    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v139);
  }
}

uint64_t sub_10004FD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UsageItemRecord.Source();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v20 - v15;
  if (v14 == a4 && a2 == a5 || (v17 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    UsageItemRecord.source.getter();
    (*(v10 + 104))(v13, enum case for UsageItemRecord.Source.local(_:), v9);
    v17 = static UsageItemRecord.Source.== infix(_:_:)();
    v18 = *(v10 + 8);
    v18(v13, v9);
    v18(v16, v9);
  }

  return v17 & 1;
}

uint64_t sub_10004FEFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UsageItemRecord.Source();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = [a4 domainIdentifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == a1 && v17 == a2)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = 0;
    if ((v19 & 1) == 0)
    {
      return v20 & 1;
    }
  }

  UsageItemRecord.source.getter();
  (*(v8 + 104))(v11, enum case for UsageItemRecord.Source.local(_:), v7);
  v20 = static UsageItemRecord.Source.== infix(_:_:)();
  v21 = *(v8 + 8);
  v21(v11, v7);
  v21(v13, v7);
  return v20 & 1;
}

void sub_1000500C4(void *a1, char a2, uint64_t a3, void *a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  sub_10003319C(a4);
  if (a2)
  {
    v11 = a1;
    v12 = 1;
LABEL_8:
    a5(v11, v12);
    return;
  }

  if (!a1)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  v13 = a1;
  sub_10004ABB4(a1, a4, a5, a6);

  sub_10001FF94(a1, 0);
}

uint64_t sub_100050190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  if ((v7 & 1) == 0)
  {
    static Logger.syncEngine.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Successfully fetched all shared authorization zones", v26, 2u);
    }

    v27 = *(v10 + 8);
    v28 = v15;
    goto LABEL_8;
  }

  static Logger.syncEngine.getter();
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  sub_10001FFAC(a1, 1);
  if (!os_log_type_enabled(v16, v17))
  {

    v27 = *(v10 + 8);
    v28 = v13;
LABEL_8:
    v27(v28, v9);
    return sub_10005045C(a4, a5);
  }

  v18 = swift_slowAlloc();
  v31 = v9;
  v19 = v18;
  v30 = swift_slowAlloc();
  v32 = a1;
  v33 = v30;
  *v19 = 136446210;
  swift_errorRetain();
  sub_100003720(&qword_10006BF60, &qword_100056CA0);
  v20 = String.init<A>(describing:)();
  v22 = a5;
  v23 = sub_100002CB4(v20, v21, &v33);

  *(v19 + 4) = v23;
  a5 = v22;
  _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch shared authorization zones: %{public}s", v19, 0xCu);
  sub_1000032BC(v30);

  (*(v10 + 8))(v13, v31);
  return sub_10005045C(a4, a5);
}

uint64_t sub_10005045C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100003720(&qword_10006C930, &qword_100057A20);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_100003720(&qword_10006C8D0, &qword_1000579F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  if (qword_10006B778 != -1)
  {
    swift_once();
  }

  v12 = qword_10006C950;
  v13 = *(v3 + 168);
  v14 = sub_100003720(&qword_10006C8D8, &qword_1000579F8);
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = sub_100051BC8(v12, v13, v11);
  sub_10000D5C4(v11, &qword_10006C8D0, &qword_1000579F0);
  *(v3 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine) = v15;

  v16 = *(v3 + 176);
  v17 = String._bridgeToObjectiveC()();
  LOBYTE(v16) = [v16 BOOLForKey:v17];

  if ((v16 & 1) == 0)
  {

    CKSyncEngine.state.getter();

    sub_100003720(&qword_10006C888, &qword_1000579E8);
    v18 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
    v19 = *(v18 - 8);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100056C30;
    if (qword_10006B7A0 != -1)
    {
      swift_once();
    }

    v22 = qword_10006C978;
    *(v21 + v20) = qword_10006C978;
    (*(v19 + 104))(v21 + v20, enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v18);
    v23 = v22;
    CKSyncEngine.State.add(pendingDatabaseChanges:)(v21);
  }

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v3;
  v25[5] = a1;
  v25[6] = a2;

  sub_1000516D8(0, 0, v8, &unk_100057A30, v25);
}

uint64_t sub_10005081C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_10001FF94(a2, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = a2;
      v21 = v15;
      *v14 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v16 = String.init<A>(describing:)();
      v18 = sub_100002CB4(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, a5, v14, 0xCu);
      sub_1000032BC(v15);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {

    sub_1000315AC(a2);
  }
}

void sub_100050A58(void *a1, char a2, uint64_t a3, void *a4, void (*a5)(void *, uint64_t, uint64_t, void *), uint64_t a6)
{
  if (a2)
  {
    v6 = 1;
LABEL_8:
    a5(a1, v6, a3, a4);
    return;
  }

  if (!a1)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v11 = a1;
  sub_10004A2B8(a1, a4, a5, a6);

  sub_10001FF94(a1, 0);
}

void sub_100050AFC(uint64_t a1)
{
  if (qword_10006B800 != -1)
  {
    swift_once();
  }

  v2 = [qword_10006C9D8 sharedCloudDatabase];
  [v2 addOperation:a1];
}

uint64_t sub_100050B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for Logger();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.Scope();
  v6[14] = Changes;
  v6[15] = *(Changes - 8);
  v6[16] = swift_task_alloc();
  ChangesOptions = type metadata accessor for CKSyncEngine.FetchChangesOptions();
  v6[17] = ChangesOptions;
  v6[18] = *(ChangesOptions - 8);
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_100050D14, 0, 0);
}

uint64_t sub_100050D14()
{
  sub_100003720(&qword_10006C018, &qword_100056D40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100056C40;
  if (qword_10006B798 != -1)
  {
    v11 = v1;
    swift_once();
    v1 = v11;
  }

  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[8];
  v6 = qword_10006C970;
  *(v1 + 32) = qword_10006C970;
  *v3 = v1;
  (*(v2 + 104))(v3, enum case for CKSyncEngine.FetchChangesOptions.Scope.zoneIDs(_:), v4);
  v7 = v6;
  CKSyncEngine.FetchChangesOptions.init(scope:operationGroup:)();
  v8 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine;
  v0[20] = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine;
  v0[21] = *(v5 + v8);

  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_100050E90;
  v10 = v0[19];

  return CKSyncEngine.fetchChanges(_:)(v10);
}

uint64_t sub_100050E90()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100051298;
  }

  else
  {
    v2 = sub_100050FC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100050FC4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[23];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_locations;
  v4 = type metadata accessor for Locations();
  v0[5] = v4;
  v0[6] = &protocol witness table for Locations;
  v5 = sub_10001C8A8(v0 + 2);
  (*(*(v4 - 8) + 16))(v5, v2 + v3, v4);
  v6 = sub_1000426F0(v0 + 2);
  if (v1)
  {
    v8 = v0[9];
    swift_errorRetain();
    v8(v1, 0, 1);
  }

  else
  {
    v19 = v7;
    v9 = v6;

    CKSyncEngine.state.getter();

    sub_100003720(&qword_10006BFD8, &qword_1000579E0);
    v10 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100056C30;
    if (qword_10006B7A8 != -1)
    {
      swift_once();
    }

    v14 = qword_10006C980;
    *(v13 + v12) = qword_10006C980;
    v15 = v0[9];
    (*(v11 + 104))(v13 + v12, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v10);
    v16 = v14;
    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v13);

    sub_10000DA30(v9, v19);
    v15(v9, v19, 0);
    sub_100007644(v9, v19);
    sub_100007644(v9, v19);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100051298()
{
  v33 = v0;
  (*(v0[18] + 8))(v0[19], v0[17]);
  static Logger.syncEngine.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[23];
    v4 = v0[12];
    v30 = v0[13];
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136446210;
    v0[7] = v3;
    swift_errorRetain();
    sub_100003720(&qword_10006BF60, &qword_100056CA0);
    v8 = String.init<A>(describing:)();
    v10 = sub_100002CB4(v8, v9, &v32);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch changes for authorization zone: %{public}s", v6, 0xCu);
    sub_1000032BC(v7);

    (*(v4 + 8))(v30, v5);
  }

  else
  {
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[11];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[8];
  v15 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_locations;
  v16 = type metadata accessor for Locations();
  v0[5] = v16;
  v0[6] = &protocol witness table for Locations;
  v17 = sub_10001C8A8(v0 + 2);
  (*(*(v16 - 8) + 16))(v17, v14 + v15, v16);
  v18 = sub_1000426F0(v0 + 2);
  v31 = v19;
  v20 = v18;

  CKSyncEngine.state.getter();

  sub_100003720(&qword_10006BFD8, &qword_1000579E0);
  v21 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100056C30;
  if (qword_10006B7A8 != -1)
  {
    swift_once();
  }

  v25 = qword_10006C980;
  *(v24 + v23) = qword_10006C980;
  v26 = v0[9];
  (*(v22 + 104))(v24 + v23, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v21);
  v27 = v25;
  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v24);

  sub_10000DA30(v20, v31);
  v26(v20, v31, 0);
  sub_100007644(v20, v31);
  sub_100007644(v20, v31);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1000516D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003720(&qword_10006C930, &qword_100057A20);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001DD64(a3, v25 - v10, &qword_10006C930, &qword_100057A20);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D5C4(v11, &qword_10006C930, &qword_100057A20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000D5C4(a3, &qword_10006C930, &qword_100057A20);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D5C4(a3, &qword_10006C930, &qword_100057A20);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000519D8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100051AD0;

  return v6(a1);
}

uint64_t sub_100051AD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100051BC8(void *a1, void *a2, uint64_t a3)
{
  v116 = a3;
  v119 = a1;
  v120 = a2;
  v3 = type metadata accessor for CKSyncEngine.Configuration();
  v123 = *(v3 - 8);
  v124 = v3;
  v4 = __chkstk_darwin(v3);
  v122 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v121 = &v98 - v6;
  v7 = type metadata accessor for CKSyncEngine.State.Serialization();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v104 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Logger();
  v109 = *(v114 - 8);
  v10 = __chkstk_darwin(v114);
  v108 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v112 = &v98 - v13;
  __chkstk_darwin(v12);
  v15 = &v98 - v14;
  v16 = sub_100003720(&qword_10006C8D0, &qword_1000579F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v98 - v17;
  v19 = sub_100003720(&qword_10006C8D8, &qword_1000579F8);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v98 - v21;
  v23 = sub_100003720(&qword_10006C248, &unk_100057A00);
  v24 = __chkstk_darwin(v23 - 8);
  v105 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v118 = &v98 - v27;
  v28 = __chkstk_darwin(v26);
  v111 = &v98 - v29;
  v30 = __chkstk_darwin(v28);
  v110 = &v98 - v31;
  v32 = __chkstk_darwin(v30);
  v103 = &v98 - v33;
  __chkstk_darwin(v32);
  v35 = &v98 - v34;
  v117 = sub_1000535B4(&qword_10006C8E0, _s10DataSourceCMa, &unk_100057078);
  v113 = v8;
  v36 = v8[7];
  v115 = v7;
  v107 = v8 + 7;
  v106 = v36;
  v36(v35, 1, 1, v7);
  sub_10001DD64(v116, v18, &qword_10006C8D0, &qword_1000579F0);
  v37 = *(v20 + 48);
  v116 = v19;
  if (v37(v18, 1, v19) == 1)
  {
    v38 = &qword_10006C8D0;
    v39 = &qword_1000579F0;
    v40 = v18;
LABEL_23:
    sub_10000D5C4(v40, v38, v39);
    goto LABEL_24;
  }

  sub_1000534F8(v18, v22, &qword_10006C8D8, &qword_1000579F8);
  v41 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v42 = String._bridgeToObjectiveC()();

  v43 = [v41 fileExistsAtPath:v42];

  v44 = v22;
  if ((v43 & 1) == 0)
  {
    v62 = 0;
    v51 = v115;
    v52 = v112;
    v53 = v113;
LABEL_8:
    v55 = v110;
    v54 = v111;
    goto LABEL_15;
  }

  static Logger.syncEngine.getter();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Migrating deprecated sync metadata to sync state serialization", v47, 2u);
  }

  v48 = v109 + 8;
  v102 = *(v109 + 8);
  v102(v15, v114);
  v49 = Data.init(contentsOf:options:)();
  v50 = v115;
  v57 = v56;
  v101 = v48;
  v58 = v49;
  sub_10000DA30(v49, v56);
  v59 = v104;
  CKSyncEngine.State.Serialization.init(deprecatedData:)();
  v60 = v103;
  (v113)[2](v103, v59, v50);
  v106(v60, 0, 1, v50);
  v61 = *(v116 + 48);
  v100 = v22;
  v62 = 0;
  sub_100037438(v60, &v22[v61]);
  v99 = v57;
  sub_10000D5C4(v60, &qword_10006C248, &unk_100057A00);
  v44 = v100;
  URL.path(percentEncoded:)(1);
  v63 = String._bridgeToObjectiveC()();

  v126 = 0;
  v64 = [v41 removeItemAtPath:v63 error:&v126];

  if (v64)
  {
    v65 = v126;
    sub_10000D5C4(v35, &qword_10006C248, &unk_100057A00);
    sub_100007644(v58, v99);
    v53 = v113;
    v51 = v115;
    (v113)[4](v35, v104, v115);
    v106(v35, 0, 1, v51);
    v52 = v112;
    goto LABEL_8;
  }

  v66 = v126;
  v67 = _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100007644(v58, v99);
  v51 = v115;
  (v113[1])(v104, v115);
  v104 = 0;
  v68 = v101;
  v69 = v108;
  static Logger.syncEngine.getter();
  swift_errorRetain();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v126 = v73;
    *v72 = 136446210;
    v125 = v67;
    swift_errorRetain();
    sub_100003720(&qword_10006BF60, &qword_100056CA0);
    v74 = String.init<A>(describing:)();
    v76 = sub_100002CB4(v74, v75, &v126);
    v101 = v68;
    v77 = v41;
    v78 = v76;
    v79 = v115;

    *(v72 + 4) = v78;
    v41 = v77;
    _os_log_impl(&_mh_execute_header, v70, v71, "Failed to migrate deprecated sync metadata: %{public}s", v72, 0xCu);
    sub_1000032BC(v73);

    v51 = v79;

    v102(v108, v114);
  }

  else
  {

    v102(v69, v114);
  }

  v52 = v112;
  v53 = v113;
  v55 = v110;
  v54 = v111;
  v62 = v104;
LABEL_15:
  sub_10001DD64(v35, v55, &qword_10006C248, &unk_100057A00);
  if ((v53[6])(v55, 1, v51) != 1)
  {
    sub_10000D5C4(v44, &qword_10006C8D8, &qword_1000579F8);

    v38 = &qword_10006C248;
    v39 = &unk_100057A00;
    v40 = v55;
    goto LABEL_23;
  }

  v113 = v41;
  sub_10000D5C4(v55, &qword_10006C248, &unk_100057A00);
  _s10DataSourceCMa(0);
  v80 = *(v116 + 48);
  sub_100033928(v44 + v80, v54);
  if (v62)
  {
    v81 = v62;
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = v44;
      v86 = swift_slowAlloc();
      v126 = v86;
      *v84 = 136446210;
      v125 = v81;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v87 = String.init<A>(describing:)();
      v89 = sub_100002CB4(v87, v88, &v126);

      *(v84 + 4) = v89;
      v51 = v115;
      _os_log_impl(&_mh_execute_header, v82, v83, "Failed to read sync serialization: %{public}s", v84, 0xCu);
      sub_1000032BC(v86);
      v44 = v85;

      (*(v109 + 8))(v112, v114);
    }

    else
    {

      (*(v109 + 8))(v52, v114);
    }

    v90 = v105;
    v106(v105, 1, 1, v51);
    sub_100037438(v90, v44 + v80);

    sub_10000D5C4(v90, &qword_10006C248, &unk_100057A00);
    v38 = &qword_10006C8D8;
    v39 = &qword_1000579F8;
    v40 = v44;
    goto LABEL_23;
  }

  sub_10000D5C4(v44, &qword_10006C8D8, &qword_1000579F8);
  sub_10000D5C4(v35, &qword_10006C248, &unk_100057A00);
  sub_1000534F8(v54, v35, &qword_10006C248, &unk_100057A00);
LABEL_24:
  sub_10001DD64(v35, v118, &qword_10006C248, &unk_100057A00);
  v91 = v119;
  v92 = v120;
  v93 = v121;
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  static FamilyControlsService.nameAPS.getter();
  CKSyncEngine.Configuration.apsMachServiceName.setter();
  v94 = v123;
  v95 = v124;
  (*(v123 + 16))(v122, v93, v124);
  type metadata accessor for CKSyncEngine();
  swift_allocObject();
  v96 = CKSyncEngine.init(_:)();
  (*(v94 + 8))(v93, v95);
  sub_10000D5C4(v35, &qword_10006C248, &unk_100057A00);
  return v96;
}

uint64_t sub_1000529D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = 0;
    for (i = (a1 + 32); ; i += 5)
    {
      sub_100007504(i, i[3]);
      v8 = dispatch thunk of FamilyMemberable.altDSID.getter();
      if (v9)
      {
        if (a3)
        {
          if (v8 == a2 && v9 == a3)
          {

            return v6;
          }

          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            return v6;
          }
        }

        else
        {
        }
      }

      else if (!a3)
      {
        return v6;
      }

      if (v3 == ++v6)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_100052AE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a1;
  v24 = a2;
  result = sub_1000529D8(v6, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return v5[2];
  }

  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_38;
  }

  v12 = v5 + 2;
  v11 = v5[2];
  if (v10 == v11)
  {
    return v9;
  }

  v13 = 40 * result + 72;
  while (v10 < v11)
  {
    sub_10001D958(v5 + v13, &v22);
    sub_100007504(&v22, v23);
    v14 = dispatch thunk of FamilyMemberable.altDSID.getter();
    if (!v15)
    {
      if (!a3)
      {
        goto LABEL_32;
      }

LABEL_23:
      result = sub_1000032BC(&v22);
      if (v10 != v9)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    if (!a3)
    {

      goto LABEL_23;
    }

    if (v14 == v24 && v15 == a3)
    {

LABEL_32:
      result = sub_1000032BC(&v22);
      goto LABEL_9;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = sub_1000032BC(&v22);
    if ((v17 & 1) == 0)
    {
      if (v10 != v9)
      {
LABEL_24:
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        v18 = *v12;
        if (v9 >= *v12)
        {
          goto LABEL_35;
        }

        result = sub_10001D958(&v5[5 * v9 + 4], &v22);
        if (v10 >= v18)
        {
          goto LABEL_36;
        }

        sub_10001D958(v5 + v13, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10001CFDC(v5);
        }

        v19 = &v5[5 * v9];
        sub_1000032BC(v19 + 4);
        result = sub_10001D888(v21, (v19 + 4));
        if (v10 >= v5[2])
        {
          goto LABEL_37;
        }

        sub_1000032BC((v5 + v13));
        result = sub_10001D888(&v22, v5 + v13);
        *a1 = v5;
      }

LABEL_8:
      ++v9;
    }

LABEL_9:
    ++v10;
    v12 = v5 + 2;
    v11 = v5[2];
    v13 += 40;
    if (v10 == v11)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

double sub_100052D04(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100052D10(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100052D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100052D3C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100052D8C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052DC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052E0C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052E58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052EE4()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100052F38()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10005301C(uint64_t a1)
{
  v3 = *(type metadata accessor for DateInterval() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_10004E3E0(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1000530C0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005313C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100053198(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000531F0()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100053244()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100053294()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000532E8()
{

  sub_10001FFAC(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100053360(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_10005336C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053470()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000534F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003720(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100053570()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000535B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000535FC()
{
  sub_1000032BC((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100053648()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100053690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003411C;

  return sub_100050B98(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100053758(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100038104;

  return sub_1000519D8(a1, v4);
}

uint64_t sub_100053810(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003411C;

  return sub_1000519D8(a1, v4);
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}