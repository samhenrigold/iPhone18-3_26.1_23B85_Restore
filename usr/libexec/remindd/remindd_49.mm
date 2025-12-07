void sub_10048B278(uint64_t a1, void *a2, void *a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5)
{
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (v55[0])
  {
    if (qword_100936230 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100948750);
    v10 = a2;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    a5, v13, v14, v15, v16, v17, v18, v19;

    if (os_log_type_enabled(v11, v12))
    {
      v20 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v20 = 136446466;
      v21 = sub_1003533B0();
      v23 = v22;
      v24 = sub_10000668C(v21, v22, v55);
      v23, v25, v26, v27, v28, v29, v30, v31;
      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_10000668C(a4, a5, v55);
      _os_log_impl(&_mh_execute_header, v11, v12, "UnsetCKDirtyFlagsInNonCKAccounts {store: %{public}s} with {account: %s} is not a CK account, skip migration", v20, 0x16u);
      swift_arrayDestroy();

LABEL_10:
    }
  }

  else
  {
    v54 = sub_10048B834(a3, a2);
    if (qword_100936230 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_100948750);
    v33 = a2;

    v11 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    a5, v35, v36, v37, v38, v39, v40, v41;

    if (os_log_type_enabled(v11, v34))
    {
      v42 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v42 = 136446722;
      v43 = sub_1003533B0();
      v45 = v44;
      v46 = sub_10000668C(v43, v44, v55);
      v45, v47, v48, v49, v50, v51, v52, v53;
      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_10000668C(a4, a5, v55);
      *(v42 + 22) = 2048;
      *(v42 + 24) = v54;
      _os_log_impl(&_mh_execute_header, v11, v34, "UnsetCKDirtyFlagsInNonCKAccounts END {store: %{public}s, migrated ckDirtyFlagsInNonCKAccounts, accountIdentifier = %s, count = %ld}", v42, 0x20u);
      swift_arrayDestroy();

      goto LABEL_10;
    }
  }
}

id RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10048B834(void *a1, void *a2)
{
  v3 = [objc_opt_self() subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
  sub_1000F5104(&qword_100947250, &unk_1007AC8E0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = 0;
  v13 = 0;
  v81 = *(v4 + 16);
  v14 = &selRef_accountStatusWithCompletionHandler_;
  v78 = v4;
  while (1)
  {
    if (v81 == v13)
    {
      goto LABEL_13;
    }

    if (v13 >= *(v4 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
    }

    v82 = v12;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (([ObjCClassFromMetadata respondsToSelector:v14[146]] & 1) == 0)
    {
      goto LABEL_18;
    }

    v16 = [ObjCClassFromMetadata v14[146]];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = objc_allocWithZone(NSBatchUpdateRequest);
    v20 = String._bridgeToObjectiveC()();
    v18, v21, v22, v23, v24, v25, v26, v27;
    v28 = [v19 initWithEntityName:v20];

    sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100791340;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100006600();
    strcpy((v29 + 32), "ckDirtyFlags");
    *(v29 + 45) = 0;
    *(v29 + 46) = -5120;
    v30 = sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    *(v29 + 96) = v30;
    *(v29 + 104) = sub_10048BE3C();
    *(v29 + 72) = isa;
    v32 = NSPredicate.init(format:_:)();
    [v28 setPredicate:v32];

    sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    strcpy(&v85, "ckDirtyFlags");
    BYTE13(v85) = 0;
    HIWORD(v85) = -5120;
    AnyHashable.init<A>(_:)();
    v34.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    *(inited + 96) = v30;
    *(inited + 72) = v34;
    v35 = sub_10038ED74(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
    v36 = Dictionary._bridgeToObjectiveC()().super.isa;
    v35, v37, v38, v39, v40, v41, v42, v43;
    [v28 setPropertiesToUpdate:v36];

    [v28 setIncludesSubentities:1];
    [v28 setResultType:2];
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1007953F0;
    *(v44 + 32) = a2;
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v45 = v28;
    v46 = a2;
    v47 = Array._bridgeToObjectiveC()().super.isa;
    v44, v48, v49, v50, v51, v52, v53, v54;
    [v45 setAffectedStores:v47];

    v83 = 0;
    v55 = [a1 executeRequest:v45 error:&v83];
    v56 = v83;
    if (!v55)
    {
      v62 = v83;
      v78, v63, v64, v65, v66, v67, v68, v69;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return v12;
    }

    v57 = v55;
    *(&v86 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
    *&v85 = v57;
    sub_1000060C8(0, &qword_1009465A0, NSBatchUpdateResult_ptr);
    v58 = v56;
    throwingCast<A>(_:as:failureMessage:)();
    v4 = v78;
    if (v2)
    {
      break;
    }

    sub_10000607C(&v85);
    v59 = v84;
    if ([v84 result])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100005EE0(&v84, &v85);
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    throwingCast<A>(_:as:failureMessage:)();
    sub_1000050A4(&v85, &qword_100939ED0, &qword_100791B10);
    v60 = v83;
    v61 = [v83 integerValue];

    ++v13;
    v12 += v61;
    v14 = &selRef_accountStatusWithCompletionHandler_;
    if (__OFADD__(v82, v61))
    {
      __break(1u);
LABEL_13:
      v4, v5, v6, v7, v8, v9, v10, v11;
      return v12;
    }
  }

  v78, v70, v71, v72, v73, v74, v75, v76;
  sub_10000607C(&v85);
  return v12;
}

unint64_t sub_10048BE3C()
{
  result = qword_100948790;
  if (!qword_100948790)
  {
    sub_1000060C8(255, &qword_100938DE0, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948790);
  }

  return result;
}

uint64_t sub_10048BEA4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948798);
  v1 = sub_100006654(v0, qword_100948798);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10048BF6C()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 fileExistsAtPath:v2];

  return v3;
}

id sub_10048BFD8(uint64_t a1, char a2, Class isa)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v8 = v7;
  if (isa)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_10048CDD8(&qword_1009371F8, type metadata accessor for FileAttributeKey, &unk_100792B2C);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v12 = 0;
  v9 = [v4 createDirectoryAtURL:v8 withIntermediateDirectories:a2 & 1 attributes:isa error:&v12];

  if (v9)
  {
    return v12;
  }

  v11 = v12;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_10048C11C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, Class a5)
{
  v8 = *v5;
  v9 = String._bridgeToObjectiveC()();
  if (a4 >> 60 == 15)
  {
    isa = 0;
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  if (a5)
  {
LABEL_5:
    type metadata accessor for FileAttributeKey(0);
    sub_10048CDD8(&qword_1009371F8, type metadata accessor for FileAttributeKey, &unk_100792B2C);
    a5 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_6:
  v11 = [v8 createFileAtPath:v9 contents:isa attributes:a5];

  return v11;
}

uint64_t sub_10048C21C()
{
  v1 = v0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for URL();
  v7 = *(v68 - 8);
  __chkstk_darwin(v68, v8);
  v11 = __chkstk_darwin(v9, v10);
  v13 = &v67 - v12;
  v69[0] = 0x73656C6946;
  v69[1] = 0xE500000000000000;
  (*(v3 + 104))(v6, enum case for URL.DirectoryHint.isDirectory(_:), v2, v11);
  sub_10013BCF4();
  URL.appending<A>(path:directoryHint:)();
  (*(v3 + 8))(v6, v2);
  v14 = (v0 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager);
  v15 = *(v0 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager + 24);
  v16 = *(v0 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager + 32);
  sub_10000F61C(v14, v14[3]);
  (*(v16 + 16))(v13, 1, 0, v15, v16);
  v17 = v13;
  v18 = sub_10048C990();
  v20 = v19;
  v21 = v14[3];
  v22 = v14[4];
  sub_10000F61C(v14, v21);
  if (((*(v22 + 24))(v18, v20, 0, 0xF000000000000000, 0, v21, v22) & 1) == 0)
  {
    if (qword_100936238 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_100948798);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v20, v44, v45, v46, v47, v48, v49, v50;

    if (os_log_type_enabled(v24, v25))
    {
      v33 = swift_slowAlloc();
      v69[0] = swift_slowAlloc();
      *v33 = 136446466;
      *(v33 + 4) = sub_10000668C(*(v1 + 16), *(v1 + 24), v69);
      *(v33 + 12) = 2080;
      v51 = sub_10000668C(v18, v20, v69);
      v20, v52, v53, v54, v55, v56, v57, v58;
      *(v33 + 14) = v51;
      v42 = "[%{public}s] Cannot create sentinel file at %s";
      goto LABEL_10;
    }

LABEL_11:

    v20, v59, v60, v61, v62, v63, v64, v65;
    return (*(v7 + 8))(v17, v68);
  }

  if (qword_100936238 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_100948798);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v20, v26, v27, v28, v29, v30, v31, v32;

  if (!os_log_type_enabled(v24, v25))
  {
    goto LABEL_11;
  }

  v33 = swift_slowAlloc();
  v69[0] = swift_slowAlloc();
  *v33 = 136446466;
  *(v33 + 4) = sub_10000668C(*(v1 + 16), *(v1 + 24), v69);
  *(v33 + 12) = 2080;
  v34 = sub_10000668C(v18, v20, v69);
  v20, v35, v36, v37, v38, v39, v40, v41;
  *(v33 + 14) = v34;
  v42 = "[%{public}s] Created sentinel file at %s";
LABEL_10:
  _os_log_impl(&_mh_execute_header, v24, v25, v42, v33, 0x16u);
  swift_arrayDestroy();

  return (*(v7 + 8))(v17, v68);
}

uint64_t sub_10048C990()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10, v11);
  v30 = &v29 - v13;
  v33 = 0x73656C6946;
  v34 = 0xE500000000000000;
  v14 = *(v2 + 104);
  v14(v5, enum case for URL.DirectoryHint.isDirectory(_:), v1, v12);
  sub_10013BCF4();
  URL.appending<A>(path:directoryHint:)();
  v15 = *(v2 + 8);
  v15(v5, v1);
  v16 = *(v0 + 24);
  v33 = *(v0 + 16);
  v34 = v16;
  (v14)(v5, enum case for URL.DirectoryHint.notDirectory(_:), v1);

  v17 = v30;
  URL.appending<A>(path:directoryHint:)();
  v15(v5, v1);
  v16, v18, v19, v20, v21, v22, v23, v24;
  v25 = v32;
  v26 = *(v31 + 8);
  v26(v9, v32);
  countAndFlagsBits = URL.path(percentEncoded:)(0)._countAndFlagsBits;
  v26(v17, v25);
  return countAndFlagsBits;
}

uint64_t sub_10048CC2C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_containerURL;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  sub_10000607C((v8 + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDSentinelFileLocation(uint64_t a1)
{
  result = qword_1009487E8;
  if (!qword_1009487E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10048CD34(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_10048CDD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10048CE20()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009488A8);
  v1 = sub_100006654(v0, qword_1009488A8);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10048CEE8(void *a1)
{
  v2 = v1;
  v504 = *v1;
  v503 = type metadata accessor for UUID();
  v499 = *(v503 - 8);
  __chkstk_darwin(v503, v4);
  v502 = v462 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v501 = v462 - v8;
  v512 = type metadata accessor for RDSavedReminder(0);
  __chkstk_darwin(v512, v9);
  v509 = v462 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v505 = v462 - v13;
  v14 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v514 = *(v14 - 8);
  v515 = v14;
  __chkstk_darwin(v14, v15);
  v513 = v462 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v507 = v462 - v19;
  v516 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v516, v20);
  v22 = v462 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v517 = *(Subtasks - 8);
  v518 = Subtasks;
  __chkstk_darwin(Subtasks, v24);
  v26 = v462 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27, v29);
  v498 = v462 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v500 = v462 - v33;
  __chkstk_darwin(v34, v35);
  v497 = v462 - v36;
  __chkstk_darwin(v37, v38);
  v506 = v462 - v39;
  __chkstk_darwin(v40, v41);
  v508 = v462 - v42;
  __chkstk_darwin(v43, v44);
  v46 = v462 - v45;
  if (qword_100936240 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  v48 = sub_100006654(v47, qword_1009488A8);
  swift_retain_n();
  v510 = v48;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v49, v50);
  v520 = a1;
  v521 = v2;
  v519 = v27;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v511 = v46;
    *v52 = 138543874;
    v54 = v2[3];
    v55 = v521[4];
    *(v52 + 4) = v54;
    *(v52 + 12) = 2114;
    *(v52 + 14) = v55;
    *v53 = v54;
    v53[1] = v55;
    *(v52 + 22) = 2048;
    v56 = v54;
    v57 = v55;
    v2 = v521;

    *(v52 + 24) = 50;

    _os_log_impl(&_mh_execute_header, v49, v50, "RDTemplateOperationCopyRemindersFromTemplateToREMList: Start execution {templateObjectID: %{public}@, targetListObjectID: %{public}@, limitPerSave: %ld}", v52, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
    v46 = v511;

    v58 = v520;
  }

  else
  {

    v58 = a1;
  }

  Date.init()();
  v59 = v2[3];
  v61 = v517;
  v60 = v518;
  (v517)[13](v26, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v518);
  swift_storeEnumTagMultiPayload();
  v62 = v522;
  v63 = sub_100268564(v59, v58, v26, v22);
  v522 = v62;
  if (v62)
  {
    sub_1004909AC(v22, _s9UtilitiesO12SortingStyleOMa);
    (v61[1])(v26, v60);
    (*(v28 + 8))(v46, v519);
    return;
  }

  v64 = v63;
  v516 = v59;
  sub_1004909AC(v22, _s9UtilitiesO12SortingStyleOMa);
  (v61[1])(v26, v60);
  v65 = *(v28 + 16);
  v66 = v519;
  v67 = v508;
  v486 = v28 + 16;
  v485 = v65;
  v65(v508, v46, v519);
  v68 = v64;
  swift_bridgeObjectRetain_n();

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  v71 = os_log_type_enabled(v69, v70);
  v496 = v28;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v517 = v73;
    v74 = swift_slowAlloc();
    v511 = v46;
    v75 = v74;
    v524 = v74;
    *v72 = 136446978;
    v523 = v504;
    swift_getMetatypeMetadata();
    v76 = String.init<A>(describing:)();
    v78 = v77;
    v79 = v68;
    v80 = sub_10000668C(v76, v77, &v524);
    v78, v81, v82, v83, v84, v85, v86, v87;
    *(v72 + 4) = v80;
    *(v72 + 12) = 2114;
    v88 = v516;
    *(v72 + 14) = v516;
    *v73 = v88;
    *(v72 + 22) = 2048;
    v89 = *v79->clientIdentity;
    v90 = v88;
    v79, v91, v92, v93, v94, v95, v96, v97;
    *(v72 + 24) = v89;
    v79, v98, v99, v100, v101, v102, v103, v104;
    *(v72 + 32) = 2048;
    v105 = v506;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v107 = v106;
    v108 = *(v496 + 8);
    v518 = v108;
    v109 = v105;
    v68 = v79;
    v108(v109, v519);
    v108(v67, v519);
    *(v72 + 34) = v107;
    _os_log_impl(&_mh_execute_header, v69, v70, "%{public}s: Fetched reminders in template {templateObjectID: %{public}@, topLevelRemindersCount: %ld, elapsedSeconds: %f}", v72, 0x2Au);
    sub_1000050A4(v517, &unk_100938E70, &unk_100797230);

    sub_10000607C(v75);
    v110 = v519;
    v46 = v511;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v518 = *(v28 + 8);
    v518(v67, v66);
    v110 = v66;
  }

  v523 = v68;
  sub_1000F5104(&qword_100941B60, &qword_1007A1E48);
  sub_10048F8E0();
  v111 = BidirectionalCollection<>.slices(by:)();
  v112 = v521[4];
  v113 = v521[5];
  v523 = 0;
  v482 = v112;
  v114 = [RDXPCStorePerformer fetchListWithObjectID:v113 error:"fetchListWithObjectID:error:"];
  v115 = v68;
  if (!v114)
  {
    v146 = v523;
    v111, v147, v148, v149, v150, v151, v152, v153;
    v68, v154, v155, v156, v157, v158, v159, v160;
    v161 = _convertNSErrorToError(_:)();

    v522 = v161;
    swift_willThrow();
    v518(v46, v110);
    return;
  }

  v116 = v114;
  v495 = v111;
  v493 = v115;
  v117 = v523;
  v504 = sub_10038EEC4(&_swiftEmptyArrayStorage);
  v118 = [objc_allocWithZone(REMSaveRequest) initWithStore:v113];
  v484 = [v118 updateList:v116];
  v119 = [v484 sectionsContextChangeItem];
  v490 = v118;
  v477 = v113;
  if (v119)
  {
    v128 = v119;
    v129 = v516;
    v130 = v522;
    v131 = sub_10034AE0C(v516, v520, 0, 0);
    v522 = v130;
    if (v130)
    {
      v493, v132, v133, v134, v135, v136, v137, v138;

      v495, v139, v140, v141, v142, v143, v144, v145;
LABEL_79:
      v381 = v46;
      v382 = v110;
      goto LABEL_85;
    }

    v302 = v131;
    v303 = [v131 membershipsOfRemindersInSectionsAsData];
    if (v303)
    {
      v480 = v116;
      v304 = v303;
      v305 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v307 = v306;

      sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
      v308 = v522;
      static REMJSONRepresentable.fromJSONData(_:)();
      v522 = v308;
      if (v308)
      {
        sub_10001BBA0(v305, v307);
        v493, v309, v310, v311, v312, v313, v314, v315;

        v495, v316, v317, v318, v319, v320, v321, v322;
        v323 = &v512;
LABEL_78:

        goto LABEL_79;
      }

      sub_10001BBA0(v305, v307);
      v478 = v523;
      v116 = v480;
      v118 = v490;
      v129 = v516;
    }

    else
    {
      v478 = 0;
    }

    v348 = v522;
    v349 = sub_10048F944(v129, v118, v520, v128);
    v522 = v348;
    if (v348)
    {
      v493, v350, v351, v352, v353, v354, v355, v356;

      v495, v357, v358, v359, v360, v361, v362, v363;
LABEL_77:
      v323 = &v510;
      goto LABEL_78;
    }

    v364 = v349;
    v480 = v116;
    v504, v350, v351, v352, v353, v354, v355, v356;

    v504 = v364;
    v113 = v477;
  }

  else
  {
    v480 = v116;
    v478 = 0;
  }

  v162 = *v504->clientIdentity;
  if (v162 && !*v493->clientIdentity)
  {
    v523 = 0;
    v324 = [v118 saveSynchronouslyWithError:&v523];
    v325 = v523;
    if (!v324)
    {
      v365 = v523;
      v495, v366, v367, v368, v369, v370, v371, v372;
      v493, v373, v374, v375, v376, v377, v378, v379;
      v380 = _convertNSErrorToError(_:)();

      v522 = v380;
      swift_willThrow();

      goto LABEL_77;
    }

    v326 = v497;
    v485(v497, v46, v110);
    swift_retain_n();
    v327 = v325;
    v328 = Logger.logObject.getter();
    v329 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v328, v329))
    {
      v330 = swift_slowAlloc();
      v331 = swift_slowAlloc();
      *v330 = 134349826;
      *(v330 + 4) = v162;
      *(v330 + 12) = 2114;
      v332 = v516;
      *(v330 + 14) = v516;
      *(v330 + 22) = 2114;
      v333 = v482;
      *(v330 + 24) = v482;
      *v331 = v332;
      v331[1] = v333;
      *(v330 + 32) = 2048;
      v334 = v332;
      v335 = v333;
      v336 = v506;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v338 = v337;
      v339 = v336;
      v340 = v518;
      v518(v339, v110);
      v340(v326, v110);
      *(v330 + 34) = v338;
      _os_log_impl(&_mh_execute_header, v328, v329, "RDTemplateOperationCopyRemindersFromTemplateToREMList: Copied %{public}ld sections to target list {templateObjectID: %{public}@, targetListObjectID: %{public}@, elapsedSeconds: %f}", v330, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    else
    {

      v518(v326, v110);
    }

    v163 = 0;
    v118 = v490;
    v113 = v477;
  }

  else
  {
    v163 = 1;
  }

  v164 = *v495->clientIdentity;
  v165 = v515;
  if (!v164)
  {
LABEL_61:
    v495, v120, v121, v122, v123, v124, v125, v126;
    v493, v281, v282, v283, v284, v285, v286, v287;
    v288 = v498;
    v485(v498, v46, v110);
    swift_retain_n();
    v289 = Logger.logObject.getter();
    v290 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v289, v290))
    {
      v291 = swift_slowAlloc();
      v292 = swift_slowAlloc();
      *v291 = 138544130;
      v293 = v516;
      *(v291 + 4) = v516;
      *(v291 + 12) = 2114;
      v294 = v482;
      *(v291 + 14) = v482;
      *v292 = v293;
      v292[1] = v294;
      LODWORD(v521) = v290;
      *(v291 + 22) = 2048;
      v295 = v293;
      v296 = v294;

      *(v291 + 24) = 50;

      *(v291 + 32) = 2048;
      v297 = v506;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v299 = v298;
      v300 = v297;
      v301 = v518;
      v518(v300, v110);
      v301(v288, v110);
      *(v291 + 34) = v299;
      _os_log_impl(&_mh_execute_header, v289, v521, "RDTemplateOperationCopyRemindersFromTemplateToREMList: Finished execution {templateObjectID: %{public}@, targetListObjectID: %{public}@, limitPerSave: %ld, elapsedSeconds: %f}", v291, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    else
    {

      v301 = v518;
      v518(v288, v110);
    }

    v301(v46, v110);
    goto LABEL_86;
  }

  v469 = 0;
  v483 = 0;
  v166 = 0;
  v467 = &v495->clientIdentity[16];
  v497 = (v514 + 16);
  v473 = (v499 + 8);
  v499 = v514 + 8;
  v465 = v496 + 8;
  v466 = v163 ^ 1;
  *&v127 = 134219010;
  v463 = v127;
  v511 = v46;
  while (1)
  {
    if (v166 >= v164)
    {
      goto LABEL_94;
    }

    v167 = &v467[32 * v166];
    v168 = *v167;
    v476 = *(v167 + 1);
    v170 = *(v167 + 2);
    v169 = *(v167 + 3);
    v472 = v168;
    swift_unknownObjectRetain();
    v471 = objc_autoreleasePoolPush();
    v468 = v166;
    v171 = v466;
    if (v166)
    {
      v171 = 1;
    }

    v172 = (v171 & 1) != 0 ? [objc_allocWithZone(REMSaveRequest) initWithStore:v113] : v118;
    v517 = v172;
    v494 = [v172 updateList:v480];
    v474 = [v494 sectionsContextChangeItem];
    v180 = sub_10038EEC4(&_swiftEmptyArrayStorage);
    v181 = v169 >> 1;
    if (v170 != v169 >> 1)
    {
      break;
    }

LABEL_29:
    v182 = v500;
    if (v478 && *v504->clientIdentity && *v180->clientIdentity)
    {
      v183 = v478;
      v184 = v504;

      sub_1004901A8(v183, v184, v180, v474);

      v184, v185, v186, v187, v188, v189, v190, v191;
    }

    v180, v173, v174, v175, v176, v177, v178, v179;
    v523 = 0;
    v192 = [v517 saveSynchronouslyWithError:&v523];
    v193 = v523;
    if (!v192)
    {
      v446 = v523;
      v447 = _convertNSErrorToError(_:)();

      v522 = v447;
      swift_willThrow();
      v493, v448, v449, v450, v451, v452, v453, v454;
      v495, v455, v456, v457, v458, v459, v460, v461;

      goto LABEL_80;
    }

    v485(v182, v46, v110);
    swift_retain_n();
    v194 = v493;
    swift_bridgeObjectRetain_n();
    v195 = v193;
    v196 = Logger.logObject.getter();
    v197 = v182;
    v198 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v196, v198))
    {
      v199 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *v199 = v463;
      *(v199 + 4) = v469;
      *(v199 + 12) = 2048;
      v201 = v197;
      v202 = *v194->clientIdentity;
      v194, v203, v204, v205, v206, v207, v208, v209;
      *(v199 + 14) = v202;
      v194, v210, v211, v212, v213, v214, v215, v216;
      *(v199 + 22) = 2114;
      v217 = v516;
      *(v199 + 24) = v516;
      *(v199 + 32) = 2114;
      v218 = v482;
      *(v199 + 34) = v482;
      *v200 = v217;
      v200[1] = v218;
      *(v199 + 42) = 2048;
      v219 = v217;
      v220 = v218;
      v221 = v506;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v223 = v222;
      v224 = v221;
      v225 = v518;
      v518(v224, v110);
      v226 = v201;
      v46 = v511;
      v225(v226, v110);
      *(v199 + 44) = v223;
      _os_log_impl(&_mh_execute_header, v196, v198, "RDTemplateOperationCopyRemindersFromTemplateToREMList: Copied %ld out of %ld top-level reminders to target list {templateObjectID: %{public}@, targetListObjectID: %{public}@, elapsedSeconds: %f}", v199, 0x34u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v165 = v515;

      v483 = v469;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v518(v197, v110);
    }

    v113 = v477;
    v166 = v468 + 1;
    objc_autoreleasePoolPop(v471);
    swift_unknownObjectRelease();
    v164 = *v495->clientIdentity;
    v118 = v490;
    if (v166 == v164)
    {
      goto LABEL_61;
    }
  }

  v469 = v483 + v181 - v170;
  if (v170 <= v181)
  {
    v227 = v169 >> 1;
  }

  else
  {
    v227 = v170;
  }

  v475 = v227;
  v228 = v505;
  v229 = v507;
  v470 = v181;
  while (1)
  {
    if (v170 == v475)
    {
      goto LABEL_92;
    }

    v230 = *(v514 + 72);
    v479 = v170;
    v488 = v230;
    v492 = *(v514 + 16);
    v492(v229, v476 + v230 * v170, v165);
    v231 = type metadata accessor for REMCDSavedReminder();
    v232 = REMRemindersListDataView.ReminderLite.objectID.getter();
    v491 = v231;
    v233 = v522;
    sub_10055C8D4(v232, v520);
    v234 = v513;
    v522 = v233;
    if (v233)
    {
      (*v499)(v507, v165);
      v493, v383, v384, v385, v386, v387, v388, v389;
      v495, v390, v391, v392, v393, v394, v395, v396;
      v180, v397, v398, v399, v400, v401, v402, v403;

LABEL_83:
      v110 = v519;
      v46 = v511;
      goto LABEL_84;
    }

    v235 = v180;

    v489 = objc_opt_self();
    v236 = [v489 newObjectID];
    v237 = String._bridgeToObjectiveC()();
    v238 = [v517 addReminderWithTitle:v237 toListChangeItem:v494 reminderObjectID:v236];

    v239 = v522;
    sub_10052EA40(v228, v238);
    v522 = v239;
    if (v239)
    {

      (*v499)(v507, v515);
      sub_1004909AC(v228, type metadata accessor for RDSavedReminder);
      v493, v404, v405, v406, v407, v408, v409, v410;
      v495, v411, v412, v413, v414, v415, v416, v417;
      v235, v418, v419, v420, v421, v422, v423, v424;
      goto LABEL_83;
    }

    v229 = v507;
    v240 = REMRemindersListDataView.ReminderLite.objectID.getter();
    v241 = v520;
    v242 = v522;
    sub_10048EF38(v240, v520, v238);
    v522 = v242;
    if (v242)
    {
      break;
    }

    v243 = REMRemindersListDataView.ReminderLite.objectID.getter();
    v244 = [v243 uuid];

    v508 = v238;
    v245 = v501;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v246 = [v508 objectID];
    v247 = [v246 uuid];

    v248 = v502;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v523 = v235;
    sub_1002C81B4(v248, v245, isUniquelyReferenced_nonNull_native);
    v250 = v508;
    (*v473)(v245, v503);
    v180 = v523;
    [v494 insertReminderChangeItem:v250 afterReminderChangeItem:0];
    [v241 reset];
    v251 = REMRemindersListDataView.ReminderLite.subtasks.getter();
    if (v251)
    {
      v252 = v251;
      v253 = [v250 subtaskContext];
      v165 = v515;
      if (v253)
      {
        v254 = v253;
        v255 = *(v252 + 16);
        v487 = v252;
        v481 = v255;
        if (v255)
        {
          v462[1] = v499 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v464 = v180;
          v256 = 0;
          v257 = v252;
          v258 = v509;
          while (v256 < *v487->clientIdentity)
          {
            v492(v234, v257 + ((*(v514 + 80) + 32) & ~*(v514 + 80)), v165);
            v259 = REMRemindersListDataView.ReminderLite.objectID.getter();
            sub_10055C8D4(v259, v520);

            v260 = [v489 newObjectID];
            v261 = String._bridgeToObjectiveC()();
            v262 = [v517 addReminderWithTitle:v261 toReminderSubtaskContextChangeItem:v254 reminderObjectID:v260];

            sub_10052EA40(v258, v262);
            v234 = v513;
            v263 = REMRemindersListDataView.ReminderLite.objectID.getter();
            v264 = v520;
            sub_10048EF38(v263, v520, v262);
            ++v256;

            [v254 insertReminderChangeItem:v262 afterReminderChangeItem:0];
            [v264 reset];

            v265 = *v499;
            v165 = v515;
            (*v499)(v234, v515);
            v258 = v509;
            sub_1004909AC(v509, type metadata accessor for RDSavedReminder);
            v257 += v488;
            if (v481 == v256)
            {
              v229 = v507;
              v180 = v464;
              goto LABEL_54;
            }
          }

          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
        }

        v265 = *v499;
LABEL_54:
        v265(v229, v165);
        v487, v273, v274, v275, v276, v277, v278, v279;
      }

      else
      {
        (*v499)(v229, v515);
        v252, v266, v267, v268, v269, v270, v271, v272;
      }

      v250 = v508;
    }

    else
    {
      v165 = v515;
      (*v499)(v229, v515);
    }

    v522 = 0;

    v228 = v505;
    sub_1004909AC(v505, type metadata accessor for RDSavedReminder);
    v280 = __OFADD__(v483++, 1);
    v118 = v490;
    if (v280)
    {
      goto LABEL_93;
    }

    v170 = v479 + 1;
    v110 = v519;
    if (v479 + 1 == v470)
    {
      v483 = v469;
      v46 = v511;
      goto LABEL_29;
    }
  }

  (*v499)(v229, v515);

  sub_1004909AC(v228, type metadata accessor for RDSavedReminder);
  v493, v425, v426, v427, v428, v429, v430, v431;
  v495, v432, v433, v434, v435, v436, v437, v438;
  v235, v439, v440, v441, v442, v443, v444, v445;
  v110 = v519;
  v46 = v511;
LABEL_80:
  v118 = v490;
LABEL_84:
  objc_autoreleasePoolPop(v471);

  swift_unknownObjectRelease();
  v381 = v46;
  v382 = v110;
LABEL_85:
  v518(v381, v382);
LABEL_86:
  v504, v341, v342, v343, v344, v345, v346, v347;
}

void sub_10048EF38(void *a1, int a2, id a3)
{
  v5 = v4;
  v138 = *v3;
  v8 = [a3 attachmentContext];
  if (v8)
  {
    v9 = v8;
    v137 = a3;
    type metadata accessor for REMCDSavedAttachment();
    v10 = sub_1005BE53C();
    v11 = sub_1005BDBEC(a1, 0);
    v12 = [objc_allocWithZone(NSFetchRequest) init];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [ObjCClassFromMetadata entity];
    [v12 setEntity:v14];

    [v12 setAffectedStores:0];
    [v12 setPredicate:v11];

    if (qword_100936668 != -1)
    {
LABEL_37:
      swift_once();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v12 setSortDescriptors:isa];

    v16 = sub_10003450C(v10);
    v17 = Array._bridgeToObjectiveC()().super.isa;
    v16, v18, v19, v20, v21, v22, v23, v24;
    [v12 setPropertiesToFetch:v17];

    v25 = NSManagedObjectContext.fetch<A>(_:)();
    if (v5)
    {

      v10, v33, v34, v35, v36, v37, v38, v39;
      return;
    }

    v43 = v25;
    v10, v26, v27, v28, v29, v30, v31, v32;

    if (v43 >> 62)
    {
      goto LABEL_39;
    }

    v51 = v137;
    v136 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v136)
    {
LABEL_8:
      v135 = v43 & 0xC000000000000001;
      if ((v43 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_11;
      }

      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v52 = *(v43 + 32);
LABEL_11:
        v53 = v52;
        v54 = [v52 storeControllerManagedObjectContext];
        if (!v54)
        {
          v43, v55, v56, v57, v58, v59, v60, v61;
          v115 = objc_opt_self();
          v116 = String._bridgeToObjectiveC()();
          [v115 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v116];

          swift_willThrow();
          return;
        }

        v10 = v54;
        v134 = [(RDXPCStorePerformer *)v54 storeController];
        if (!v134)
        {
          v43, v62, v63, v64, v65, v66, v67, v68;
          v117 = objc_opt_self();
          v118 = String._bridgeToObjectiveC()();
          [v117 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v118];

          swift_willThrow();
          return;
        }

        v126 = v10;
        v127 = v53;
        v69 = 0;
        v128 = v43 & 0xFFFFFFFFFFFFFF8;
        v129 = v9;
        v133 = v43;
        while (1)
        {
          if (v135)
          {
            v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v69 >= *(v128 + 16))
            {
              __break(1u);
LABEL_39:
              v51 = v137;
              v136 = _CocoaArrayWrapper.endIndex.getter();
              if (!v136)
              {
                goto LABEL_40;
              }

              goto LABEL_8;
            }

            v71 = *(v43 + 8 * v69 + 32);
          }

          v5 = v71;
          v12 = (v69 + 1);
          if (__OFADD__(v69, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          v140[3] = sub_1000060C8(0, &qword_10093DD58, off_1008D4118);
          v140[4] = &off_1008F2C88;
          v140[0] = v134;
          v72 = v5;
          v132 = v134;
          v74 = sub_1004755B4(v72, v140);
          if (v73)
          {
            if (v73 == 1)
            {
              v75 = &qword_100940920;
              v76 = REMFileAttachment_ptr;
            }

            else
            {
              v75 = &qword_100940938;
              v76 = REMImageAttachment_ptr;
            }
          }

          else
          {
            v75 = &qword_100940940;
            v76 = REMURLAttachment_ptr;
          }

          sub_1000060C8(0, v75, v76);
          v77 = swift_getObjCClassFromMetadata();
          v78 = v74;
          v79 = [v77 newObjectID];
          v80 = [v51 accountID];
          ObjCClassFromMetadata = [v51 objectID];
          v81 = [objc_allocWithZone(*v76) initWithAttachment:v78 objectID:v79 accountID:v80 reminderID:ObjCClassFromMetadata];
          v139 = v78;

          v82 = v81;
          [v9 addAttachment:v82];
          if (qword_100936240 != -1)
          {
            swift_once();
          }

          v83 = type metadata accessor for Logger();
          sub_100006654(v83, qword_1009488A8);
          v84 = v72;
          v10 = v82;
          v85 = v51;
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v86, v87))
          {
            v130 = v87;
            v88 = swift_slowAlloc();
            ObjCClassFromMetadata = swift_slowAlloc();
            v141 = swift_slowAlloc();
            *v88 = 136446978;
            v140[0] = v138;
            swift_getMetatypeMetadata();
            v89 = String.init<A>(describing:)();
            v91 = v90;
            v92 = sub_10000668C(v89, v90, &v141);
            v91, v93, v94, v95, v96, v97, v98, v99;
            *(v88 + 4) = v92;
            *(v88 + 12) = 2114;
            v100 = [v85 objectID];
            *(v88 + 14) = v100;
            *ObjCClassFromMetadata = v100;
            *(v88 + 22) = 2082;
            v131 = v84;
            v101 = [v84 remObjectID];
            if (v101)
            {
              v102 = v101;
              v103 = [v101 description];

              v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v106 = v105;
            }

            else
            {
              v106 = 0xE300000000000000;
              v104 = 7104878;
            }

            v70 = v69 + 1;
            v107 = sub_10000668C(v104, v106, &v141);
            v106, v108, v109, v110, v111, v112, v113, v114;
            *(v88 + 24) = v107;
            *(v88 + 32) = 2114;
            *(v88 + 34) = v10;
            ObjCClassFromMetadata[1] = v10;
            _os_log_impl(&_mh_execute_header, v86, v130, "%{public}s: Copied attachment into reminderChangeItem {reminderChangeItem.remObjectID: %{public}@, cdSavedAttachment.remObjectID: %{public}s, copiedAttachment: %{public}@}", v88, 0x2Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();

            v9 = v129;
            v51 = v137;
          }

          else
          {

            v70 = v69 + 1;
          }

          ++v69;
          v43 = v133;
          if (v70 == v136)
          {

            v133, v119, v120, v121, v122, v123, v124, v125;
            return;
          }
        }
      }

      __break(1u);
    }

    else
    {
LABEL_40:
      v43, v44, v45, v46, v47, v48, v49, v50;
    }
  }

  else
  {
    v40 = objc_opt_self();
    sub_1000060C8(0, &qword_100944BF8, REMReminderChangeItem_ptr);
    v41 = swift_getObjCClassFromMetadata();
    v42 = String._bridgeToObjectiveC()();
    [v40 unexpectedNilPropertyWithClass:v41 property:v42];

    swift_willThrow();
  }
}

unint64_t sub_10048F8E0()
{
  result = qword_100948980;
  if (!qword_100948980)
  {
    sub_1000F514C(&qword_100941B60, &qword_1007A1E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948980);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10048F944(id a1, void *a2, uint64_t a3, void *a4)
{
  v170 = a2;
  v171 = a4;
  v178 = type metadata accessor for UUID();
  v172 = *(v178 - 8);
  __chkstk_darwin(v178, v5);
  v177 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v169 = &v158 - v9;
  __chkstk_darwin(v10, v11);
  v179 = &v158 - v12;
  v181 = &_swiftEmptyArrayStorage;
  v13 = sub_10038EEC4(&_swiftEmptyArrayStorage);
  v14 = qword_1009360E0;
  v159 = a1;
  if (v14 != -1)
  {
LABEL_37:
    swift_once();
  }

  type metadata accessor for REMCDTemplateSection();
  v15 = sub_1004263A0();
  v16 = sub_1004267FC();
  v17 = sub_100425A50(a1, 1);
  a1 = [objc_allocWithZone(NSFetchRequest) init];
  v18 = [swift_getObjCClassFromMetadata() entity];
  [a1 setEntity:v18];

  [a1 setAffectedStores:0];
  [a1 setPredicate:v17];

  v19 = sub_10003450C(v15);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v19, v21, v22, v23, v24, v25, v26, v27;
  [a1 setPropertiesToFetch:isa];

  v28 = Array._bridgeToObjectiveC()().super.isa;
  [a1 setRelationshipKeyPathsForPrefetching:v28];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v29 = Array._bridgeToObjectiveC()().super.isa;
  [a1 setSortDescriptors:v29];

  v30 = v176;
  v31 = NSManagedObjectContext.fetch<A>(_:)();
  v162 = v30;
  if (v30)
  {
    v13, v32, v33, v34, v35, v36, v37, v38;

    v15, v39, v40, v41, v42, v43, v44, v45;
    v16, v46, v47, v48, v49, v50, v51, v52;

    return v13;
  }

  v53 = v31;
  v15, v32, v33, v34, v35, v36, v37, v38;
  v16, v54, v55, v56, v57, v58, v59, v60;

  if (v53 >> 62)
  {
    v68 = _CocoaArrayWrapper.endIndex.getter();
    if (v68)
    {
      goto LABEL_6;
    }

LABEL_39:
    v13, v61, v62, v63, v64, v65, v66, v67;
    v53, v150, v151, v152, v153, v154, v155, v156;
    v13 = sub_10038EEC4(&_swiftEmptyArrayStorage);
LABEL_40:

    return v13;
  }

  v68 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v68)
  {
    goto LABEL_39;
  }

LABEL_6:
  v69 = 0;
  v166 = v53 & 0xFFFFFFFFFFFFFF8;
  v167 = v53 & 0xC000000000000001;
  v173 = (v172 + 32);
  v161 = v172 + 16;
  v165 = v172 + 8;
  v160 = v172 + 40;
  v168 = &_swiftEmptyArrayStorage;
  v163 = v68;
  v164 = v53;
  while (1)
  {
    if (v167)
    {
      v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v69 >= *(v166 + 16))
      {
        goto LABEL_34;
      }

      v79 = *(v53 + 8 * v69 + 32);
    }

    v80 = v79;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v180 = 0;
    v81 = [v79 remObjectIDWithError:&v180];
    if (!v81)
    {
      v118 = v180;
      v168, v119, v120, v121, v122, v123, v124, v125;
      v13, v126, v127, v128, v129, v130, v131, v132;
      v53, v133, v134, v135, v136, v137, v138, v139;
      v140 = _convertNSErrorToError(_:)();

      v162 = v140;
      swift_willThrow();

      return v13;
    }

    v82 = v81;
    v83 = v180;
    v84 = [v80 displayName];
    v174 = v69 + 1;
    v176 = v80;
    if (v84)
    {
      v85 = v84;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;
    }

    else
    {
      v87 = 0xE000000000000000;
    }

    v88 = String._bridgeToObjectiveC()();
    v87, v89, v90, v91, v92, v93, v94, v95;
    v96 = [v170 addListSectionWithDisplayName:v88 toListSectionContextChangeItem:v171];

    v175 = v96;
    v97 = [v96 objectID];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v168 = v181;
    v98 = [v82 uuid];
    v99 = v179;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v100 = [v97 uuid];
    v101 = v169;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    a1 = *v173;
    (*v173)(v177, v101, v178);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v180 = v13;
    v104 = sub_100363F20(v99);
    v105 = *v13->clientIdentity;
    v106 = (v103 & 1) == 0;
    v107 = v105 + v106;
    if (__OFADD__(v105, v106))
    {
      goto LABEL_35;
    }

    v108 = v103;
    if (*&v13->clientIdentity[8] < v107)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v13 = v180;
      if (v103)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1003744A0();
      v13 = v180;
      if (v108)
      {
LABEL_7:
        v70 = v172;
        v71 = v178;
        (*(v172 + 40))(*&v13->clientIdentity[40] + *(v172 + 72) * v104, v177, v178);

        (*(v70 + 8))(v179, v71);
        goto LABEL_8;
      }
    }

LABEL_26:
    *&v13->storeProvider[8 * (v104 >> 6) + 2] |= 1 << v104;
    v111 = v172;
    v112 = *(v172 + 72) * v104;
    v113 = v178;
    v114 = v179;
    (*(v172 + 16))(*&v13->clientIdentity[32] + v112, v179, v178);
    (a1)(*&v13->clientIdentity[40] + v112, v177, v113);

    (*(v111 + 8))(v114, v113);
    v115 = *v13->clientIdentity;
    v116 = __OFADD__(v115, 1);
    v117 = v115 + 1;
    if (v116)
    {
      goto LABEL_36;
    }

    *v13->clientIdentity = v117;
LABEL_8:
    ++v69;
    v53 = v164;
    if (v174 == v163)
    {
      v164, v72, v73, v74, v75, v76, v77, v78;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v141 = v168;
      v142 = Array._bridgeToObjectiveC()().super.isa;
      v141, v143, v144, v145, v146, v147, v148, v149;
      [v171 setUnsavedSectionIDsOrdering:v142];

      goto LABEL_40;
    }
  }

  sub_10036C648(v107, isUniquelyReferenced_nonNull_native);
  v109 = sub_100363F20(v179);
  if ((v108 & 1) == (v110 & 1))
  {
    v104 = v109;
    v13 = v180;
    if (v108)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double sub_1004901A8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v117 = a2;
  v118 = a4;
  v127 = a3;
  v116 = type metadata accessor for Date();
  v5 = *(v116 - 8);
  __chkstk_darwin(v116, v6);
  v125 = v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v115 = v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v126 = v109 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v114 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v124 = v109 - v20;
  __chkstk_darwin(v21, v22);
  v123 = v109 - v23;
  __chkstk_darwin(v24, v25);
  v128 = v109 - v26;
  v129 = sub_1000F5104(&qword_100948988, &qword_1007ACA00);
  *&v28 = __chkstk_darwin(v129, v27).n128_u64[0];
  v30 = v109 - v29;
  v31 = [a1 membershipByMemberIdentifier];
  v32 = sub_1000060C8(0, &qword_10093B450, REMMembership_ptr);
  sub_100224A60();
  v33 = v14;
  v109[1] = v32;
  v34 = v30;
  v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v35 + 64;
  v36 = *(v35 + 64);
  v38 = 1 << *(v35 + 32);
  v39 = -1;
  v119 = &_swiftEmptyArrayStorage;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v36;
  v41 = (v38 + 63) >> 6;
  v133 = v15 + 16;
  v134 = &_swiftEmptyArrayStorage;
  v121 = (v15 + 32);
  v113 = (v15 + 56);
  v112 = (v15 + 48);
  v130 = v15;
  v120 = (v15 + 8);
  v111 = (v5 + 8);
  v132 = v35;

  v42 = 0;
  v122 = v34;
LABEL_4:
  v43 = v127;
  v44 = v33;
  while (v40)
  {
LABEL_12:
    v46 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v47 = v46 | (v42 << 6);
    v48 = v132;
    v49 = *(v130 + 72);
    v50 = *(v132 + 48) + v49 * v47;
    v51 = v44;
    v131 = *(v130 + 16);
    v131(v34, v50);
    v52 = *(*(v48 + 56) + 8 * v47);
    *(v34 + *(v129 + 48)) = v52;
    v33 = *(v43 + 16);
    v53 = v52;
    if (v33 && (v54 = v53, v55 = sub_100363F20(v34), (v56 & 1) != 0))
    {
      v57 = v123;
      v33 = v51;
      (v131)(v123, *(v43 + 56) + v55 * v49, v51);
      v58 = v57;
      v59 = *v121;
      (*v121)(v128, v58, v51);
      v60 = [v54 groupIdentifier];
      if (!v60)
      {
        (*v120)(v128, v51);
        v43 = v127;
        v34 = v122;
        goto LABEL_6;
      }

      v61 = v114;
      v62 = v60;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = v124;
      v59(v124, v61, v33);
      v64 = v117;
      v65 = v120;
      v66 = v33;
      if (*(v117 + 16))
      {
        v67 = sub_100363F20(v63);
        if (v68)
        {
          (v131)(v126, *(v64 + 56) + v67 * v49, v33);
          v69 = 0;
        }

        else
        {
          v69 = 1;
        }
      }

      else
      {
        v69 = 1;
      }

      v70 = v126;
      (*v113)(v126, v69, 1, v33);
      v71 = v115;
      sub_10018E470(v70, v115);
      static Date.now.getter();
      v72.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v73 = (*v112)(v71, 1, v33);
      v110 = v33;
      if (v73 == 1)
      {
        isa = 0;
      }

      else
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*v65)(v71, v66);
      }

      v75 = v65;
      v76 = objc_allocWithZone(REMMembership);
      v77 = v125;
      v78 = Date._bridgeToObjectiveC()().super.isa;
      v79 = [v76 initWithMemberIdentifier:v72.super.isa groupIdentifier:isa isObsolete:0 modifiedOn:v78];

      (*v111)(v77, v116);
      sub_1000050A4(v126, &unk_100939D90, "8\n\r");
      v80 = *v75;
      v33 = v110;
      (*v75)(v124, v110);
      v80(v128, v33);
      v34 = v122;
      sub_1000050A4(v122, &qword_100948988, &qword_1007ACA00);
      v43 = v127;
      v44 = v33;
      if (v79)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v119 = v134;
        goto LABEL_4;
      }
    }

    else
    {
LABEL_6:
      sub_1000050A4(v34, &qword_100948988, &qword_1007ACA00);
      v44 = v51;
    }
  }

  while (1)
  {
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v45 >= v41)
    {
      break;
    }

    v40 = *(v37 + 8 * v45);
    ++v42;
    if (v40)
    {
      v42 = v45;
      goto LABEL_12;
    }
  }

  v81 = v132;

  v81, v82, v83, v84, v85, v86, v87, v88;
  v33 = v119;
  if (!(v119 >> 62))
  {
    v96 = v118;
    if (!*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_32:
  v108 = _CocoaArrayWrapper.endIndex.getter();
  v96 = v118;
  if (!v108)
  {
    goto LABEL_33;
  }

LABEL_29:
  if (v96)
  {
    v97 = objc_allocWithZone(REMMemberships);
    v98 = Array._bridgeToObjectiveC()().super.isa;
    v33, v99, v100, v101, v102, v103, v104, v105;
    v106 = [v97 initWithMemberships:v98];

    [v96 setUnsavedMembershipsOfRemindersInSections:v106];
    return result;
  }

LABEL_33:
  v33, v89, v90, v91, v92, v93, v94, v95;
  return result;
}

uint64_t sub_1004909AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100490A0C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948990);
  v1 = sub_100006654(v0, qword_100948990);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100490B0C(uint64_t a1)
{
  v2 = v1;
  if (a1 != 2)
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_100948990);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "RDMergePolicy: Merge policy type is not compatible with this merge policy, please use defaultMergePolicy() instead.", v6, 2u);
    }
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for RDMergePolicy();
  return objc_msgSendSuper2(&v8, "initWithMergeType:", 2);
}

id sub_100490C3C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v691 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v13 = __chkstk_darwin(v9, v10);
  v14 = *(a1 + 16);
  v707 = a1;
  if (!v14)
  {
LABEL_161:
    isa = Array._bridgeToObjectiveC()().super.isa;
    v733 = 0;
    v514 = type metadata accessor for RDMergePolicy();
    v724.receiver = v708;
    v724.super_class = v514;
    v515 = objc_msgSendSuper2(&v724, "resolveConflicts:error:", isa, &v733);

    if (v515)
    {
      return v733;
    }

    v517 = v733;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v699 = v12;
  v701 = &v691 - v11;
  v702 = v6;
  v703 = v3;
  v704 = v2;
  v15 = 0;
  v16 = (a1 + 32);
  v709 = @"resolutionTokenMap_v3_JSONData";
  v698 = 0x80000001007E8EB0;
  v696 = 0x80000001007E9180;
  v695 = "";
  v697 = @"reminderIDsMergeableOrdering_v2_JSON";
  v13.n128_u64[0] = 136315138;
  v716 = v13;
  v13.n128_u64[0] = 136315394;
  v706 = v13;
  v719 = v14;
  v720 = (a1 + 32);
  while (1)
  {
    sub_100005EF0(v16 + 32 * v15, &v733);
    sub_100005EF0(&v733, &v731);
    sub_1000060C8(0, &qword_1009489D0, NSConstraintConflict_ptr);
    if (swift_dynamicCast())
    {
      v17 = v729;
      if (sub_1004944C4(v729))
      {
        sub_10000607C(&v733);

        goto LABEL_5;
      }

      if (qword_100936248 != -1)
      {
        swift_once();
      }

      v518 = type metadata accessor for Logger();
      sub_100006654(v518, qword_100948990);
      v519 = v17;
      v520 = Logger.logObject.getter();
      v521 = static os_log_type_t.fault.getter();

      v522 = &selRef_isEmpty;
      if (os_log_type_enabled(v520, v521))
      {
        v523 = swift_slowAlloc();
        *&v731 = swift_slowAlloc();
        *v523 = v706.n128_u32[0];
        v524 = [v519 constraint];
        v723 = v519;
        v525 = v524;
        v526 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v527 = Array.description.getter();
        v529 = v528;
        v526, v528, v530, v531, v532, v533, v534, v535;
        v536 = sub_10000668C(v527, v529, &v731);
        v529, v537, v538, v539, v540, v541, v542, v543;
        *(v523 + 4) = v536;
        *(v523 + 12) = 2080;
        v544 = [v723 constraintValues];
        v545 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v546 = Dictionary.description.getter();
        v548 = v547;
        v549 = v545;
        v522 = &selRef_isEmpty;
        v549, v547, v550, v551, v552, v553, v554, v555;
        v556 = sub_10000668C(v546, v548, &v731);
        v548, v557, v558, v559, v560, v561, v562, v563;
        *(v523 + 14) = v556;
        _os_log_impl(&_mh_execute_header, v520, v521, "RDMergePolicy: Constraint conflict is not handled by remindd, and expect some confusing error message from CoreData {constraint: %s, constraintValues: %s}", v523, 0x16u);
        v519 = v723;
        swift_arrayDestroy();
      }

      v564 = v704;
      v565 = v703;
      v566 = v702;
      v567 = v701;
      v568 = [v519 databaseObject];
      if (v568)
      {
        v569 = v568;
        objc_opt_self();
        v570 = swift_dynamicCastObjCClass();
        v571 = v570;
        if (v570)
        {
          v572 = [v570 identifier];
          if (v572)
          {
            v573 = v699;
            v574 = v572;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v575 = 0;
          }

          else
          {
            v575 = 1;
            v573 = v699;
          }

          (*(v565 + 56))(v573, v575, 1, v564);
          v576 = objc_opt_self();
          sub_100100FB4(v573, v567);
          if (!(*(v565 + 48))(v567, 1, v564))
          {
            (*(v565 + 16))(v566, v567, v564);
            sub_1000050A4(v567, &unk_100939D90, "8\n\r");
            UUID.uuidString.getter();
            v577 = v595;
            (*(v565 + 8))(v566, v564);
            v522 = &selRef_isEmpty;
            goto LABEL_178;
          }

          sub_1000050A4(v567, &unk_100939D90, "8\n\r");
          v522 = &selRef_isEmpty;
        }

        else
        {

          v576 = objc_opt_self();
        }
      }

      else
      {
        v576 = objc_opt_self();
        v571 = 0;
      }

      v577 = 0x80000001007F9970;
LABEL_178:
      v578 = String._bridgeToObjectiveC()();
      v577, v579, v580, v581, v582, v583, v584, v585;
      v586 = [v519 v522[480]];
      if (!v586)
      {
        v587 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v586 = Array._bridgeToObjectiveC()().super.isa;
        v587, v588, v589, v590, v591, v592, v593, v594;
      }

      [v576 constraintConflictWithIdentifier:v578 constraint:v586];

      swift_willThrow();
      return sub_10000607C(&v733);
    }

    sub_100005EF0(&v733, &v731);
    sub_1000060C8(0, &qword_1009489D8, NSMergeConflict_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    v18 = v729;
    v19 = [v729 sourceObject];
    objc_opt_self();
    v722 = swift_dynamicCastObjCClass();
    if (!v722)
    {

LABEL_20:
      if (qword_100936248 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_100006654(v71, qword_100948990);
      sub_100005EF0(&v733, &v731);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v727 = v75;
        *v74 = v716.n128_u32[0];
        sub_100005EF0(&v731, &v729);
        v76 = String.init<A>(describing:)();
        v78 = v77;
        sub_10000607C(&v731);
        v79 = sub_10000668C(v76, v78, &v727);
        v80 = v78;
        v16 = v720;
        v80, v81, v82, v83, v84, v85, v86, v87;
        *(v74 + 4) = v79;
        v14 = v719;
        _os_log_impl(&_mh_execute_header, v72, v73, "RDMergePolicy: Unknown conflict or non-REMCDObject merge conflict is not handled by remindd {conflict: %s}", v74, 0xCu);
        sub_10000607C(v75);
      }

      else
      {

        sub_10000607C(&v731);
      }

      goto LABEL_4;
    }

    v718 = v19;
    v20 = [v18 persistedSnapshot];
    v723 = v18;
    if (!v20)
    {
      break;
    }

    v21 = [v18 persistedSnapshot];
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_26:
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_100006654(v88, qword_100948990);
    v89 = v723;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v731 = v93;
      *v92 = v716.n128_u32[0];
      v94 = v89;
      v95 = [v94 description];
      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v97;

      v99 = sub_10000668C(v96, v98, &v731);
      v98, v100, v101, v102, v103, v104, v105, v106;
      *(v92 + 4) = v99;
      v14 = v719;
      v107 = v91;
      v108 = v90;
      v109 = "RDMergePolicy: Neither persisted or cached snapshot is defined {conflict: %s}";
LABEL_152:
      _os_log_impl(&_mh_execute_header, v108, v107, v109, v92, 0xCu);
      sub_10000607C(v93);
      v16 = v720;

      goto LABEL_4;
    }

LABEL_3:

LABEL_4:
    sub_10000607C(&v733);
LABEL_5:
    if (++v15 == v14)
    {
      goto LABEL_161;
    }
  }

  v21 = [v18 cachedSnapshot];
  if (!v21)
  {
    goto LABEL_26;
  }

LABEL_13:
  v22 = v21;
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v23 + 16))
  {
    v25, v25, v26, v27, v28, v29, v30, v31;
    v23, v459, v460, v461, v462, v463, v464, v465;
LABEL_148:
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v466 = type metadata accessor for Logger();
    sub_100006654(v466, qword_100948990);
    v89 = v723;
    v90 = Logger.logObject.getter();
    v467 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v467))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v731 = v93;
      *v92 = v716.n128_u32[0];
      v94 = v89;
      v468 = [v94 description];
      v469 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v471 = v470;

      v472 = sub_10000668C(v469, v471, &v731);
      v471, v473, v474, v475, v476, v477, v478, v479;
      *(v92 + 4) = v472;
      v14 = v719;
      v107 = v467;
      v108 = v90;
      v109 = "RDMergePolicy: Resolution token map missing from the CDObject snapshot, don't know how to resolve conflict {conflict: %s";
      goto LABEL_152;
    }

    goto LABEL_3;
  }

  v32 = v25;
  v33 = v23;
  v34 = sub_100005F4C(v24, v25);
  v36 = v35;
  v32, v35, v37, v38, v39, v40, v41, v42;
  if ((v36 & 1) == 0 || (sub_100005EF0(*(v33 + 56) + 32 * v34, &v731), (swift_dynamicCast() & 1) == 0))
  {
    v33, v43, v44, v45, v46, v47, v48, v49;
    goto LABEL_148;
  }

  v712 = v33;
  v50 = v729;
  sub_100029344(v729, *(&v729 + 1));
  v51 = Data._bridgeToObjectiveC()().super.isa;
  v693 = v50;
  sub_10001BBA0(v50, *(&v50 + 1));
  v52 = Dictionary._bridgeToObjectiveC()().super.isa;
  v53 = [objc_opt_self() resolutionTokenMapWithJSONData:v51 keyMap:v52];

  if (!v53)
  {
    v712, v54, v55, v56, v57, v58, v59, v60;
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v480 = type metadata accessor for Logger();
    sub_100006654(v480, qword_100948990);
    v481 = v723;
    v482 = Logger.logObject.getter();
    v483 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v482, v483))
    {
      v484 = swift_slowAlloc();
      v485 = swift_slowAlloc();
      *&v731 = v485;
      *v484 = v716.n128_u32[0];
      v486 = v481;
      v487 = [v486 description];
      v488 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v490 = v489;

      v491 = sub_10000668C(v488, v490, &v731);
      v490, v492, v493, v494, v495, v496, v497, v498;
      *(v484 + 4) = v491;
      _os_log_impl(&_mh_execute_header, v482, v483, "RDMergePolicy: Cannot decode data to resolution token map from the CDObject snapshot, don't know how to resolve conflict {conflict: %s", v484, 0xCu);
      sub_10000607C(v485);
      v16 = v720;

      sub_10001BBA0(v693, *(&v693 + 1));
    }

    else
    {

      sub_10001BBA0(v693, *(&v693 + 1));
    }

    sub_10000607C(&v733);
    v14 = v719;
    goto LABEL_5;
  }

  v692 = [v722 createResolutionTokenMapIfNecessary];
  v700 = v53;
  v61 = [v53 getTokenKeys];
  v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v711 = *v62->clientIdentity;
  if (!v711)
  {
    v127 = v723;
LABEL_158:

    v712, v499, v500, v501, v502, v503, v504, v505;
    v62, v506, v507, v508, v509, v510, v511, v512;
    sub_10001BBA0(v693, *(&v693 + 1));

    sub_10000607C(&v733);
    goto LABEL_5;
  }

  v70 = 0;
  v721 = &v62->clientIdentity[24];
  v710 = v62;
  while (2)
  {
    if (v70 >= *v62->clientIdentity)
    {
      __break(1u);
LABEL_186:
      v16, v63, v64, v65, v66, v67, v68, v69;
      v596 = v717;
      goto LABEL_184;
    }

    v715 = v70;
    v128 = *(v721 - 1);
    v16 = *v721;

    *&v731 = [v722 remObjectID];
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v129 = String.init<A>(describing:)();
    v717 = v130;
    v131 = v712;
    v132 = *v712->clientIdentity;
    v714 = v128;
    if (!v132 || (, sub_100005F4C(v128, v16), v134 = v133, v131, v133, v135, v136, v137, v138, v139, v140, (v134 & 1) == 0))
    {
      if (qword_100936248 != -1)
      {
        swift_once();
      }

      v143 = type metadata accessor for Logger();
      sub_100006654(v143, qword_100948990);

      v144 = v717;

      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.info.getter();
      v144, v147, v148, v149, v150, v151, v152, v153;
      v16, v154, v155, v156, v157, v158, v159, v160;
      if (os_log_type_enabled(v145, v146))
      {
        v110 = swift_slowAlloc();
        *&v731 = swift_slowAlloc();
        *v110 = v706.n128_u32[0];
        v111 = sub_10000668C(v714, v16, &v731);
        v16, v112, v113, v114, v115, v116, v117, v118;
        *(v110 + 4) = v111;
        *(v110 + 12) = 2080;
        v119 = sub_10000668C(v129, v144, &v731);
        v144, v120, v121, v122, v123, v124, v125, v126;
        *(v110 + 14) = v119;
        _os_log_impl(&_mh_execute_header, v145, v146, "RDMergePolicy: skip merging key because it does not exist in the snapshot {key: %s, remObjectID: %s}", v110, 0x16u);
        swift_arrayDestroy();

        v14 = v719;
      }

      else
      {
        v144, v161, v162, v163, v164, v165, v166, v167;
        v16, v168, v169, v170, v171, v172, v173, v174;
      }

      goto LABEL_32;
    }

    if (*v131->clientIdentity && (v141 = sub_100005F4C(v128, v16), (v142 & 1) != 0))
    {
      sub_100005EF0(*&v131->clientIdentity[40] + 32 * v141, &v729);
    }

    else
    {
      v729 = 0u;
      v730 = 0u;
    }

    sub_10014F5CC(&v729, &v727);
    v175 = v717;
    if (*(&v728 + 1))
    {
      sub_1000060C8(0, &qword_1009489E0, NSNull_ptr);
      if (swift_dynamicCast())
      {
        sub_1000050A4(&v729, &qword_100939ED0, &qword_100791B10);

        v731 = 0u;
        v732 = 0u;
        goto LABEL_49;
      }
    }

    else
    {
      sub_1000050A4(&v727, &qword_100939ED0, &qword_100791B10);
    }

    v731 = v729;
    v732 = v730;
LABEL_49:
    v705 = v129;
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v176 = type metadata accessor for Logger();
    v177 = sub_100006654(v176, qword_100948990);

    v178 = Logger.logObject.getter();
    v179 = static os_log_type_t.info.getter();
    v175, v180, v181, v182, v183, v184, v185, v186;
    v16, v187, v188, v189, v190, v191, v192, v193;
    if (os_log_type_enabled(v178, v179))
    {
      v194 = v175;
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v694 = v177;
      *&v729 = v196;
      *v195 = v706.n128_u32[0];
      v197 = v714;
      *(v195 + 4) = sub_10000668C(v714, v16, &v729);
      *(v195 + 12) = 2080;
      *(v195 + 14) = sub_10000668C(v705, v194, &v729);
      _os_log_impl(&_mh_execute_header, v178, v179, "RDMergePolicy: let's check if we need to merge this key: {key: %s, remObjectID: %s}", v195, 0x16u);
      swift_arrayDestroy();

      v14 = v719;
    }

    else
    {

      v197 = v714;
    }

    if (v197 == 0x636F44656C746974 && v16 == 0xED0000746E656D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v717, v198, v199, v200, v201, v202, v203, v204;
      *(&v730 + 1) = sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
      *&v729 = v722;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v62 = v718;
      v205 = v713;
      throwingCast<A>(_:as:failureMessage:)();
      v713 = v205;
      if (v205)
      {
        goto LABEL_183;
      }

      sub_10000607C(&v729);
      v213 = v727;
      sub_10014F5CC(&v731, &v729);
      if (*(&v730 + 1))
      {
        v214 = swift_dynamicCast();
        if (v214)
        {
          v215 = v727;
        }

        else
        {
          v215 = 0;
        }

        if (v214)
        {
          v216 = *(&v727 + 1);
        }

        else
        {
          v216 = 0xF000000000000000;
        }

        goto LABEL_66;
      }

LABEL_65:
      sub_1000050A4(&v729, &qword_100939ED0, &qword_100791B10);
      v215 = 0;
      v216 = 0xF000000000000000;
      goto LABEL_66;
    }

    if (v197 == 0x636F447365746F6ELL && v16 == 0xED0000746E656D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v717, v198, v199, v200, v201, v202, v203, v204;
      *(&v730 + 1) = sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
      *&v729 = v722;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v62 = v718;
      v224 = v713;
      throwingCast<A>(_:as:failureMessage:)();
      v713 = v224;
      if (v224)
      {
        goto LABEL_183;
      }

      sub_10000607C(&v729);
      v213 = v727;
      sub_10014F5CC(&v731, &v729);
      if (!*(&v730 + 1))
      {
        goto LABEL_65;
      }

      v225 = swift_dynamicCast();
      if (v225)
      {
        v215 = v727;
      }

      else
      {
        v215 = 0;
      }

      if (v225)
      {
        v216 = *(&v727 + 1);
      }

      else
      {
        v216 = 0xF000000000000000;
      }

LABEL_66:
      sub_100494C68(v213, v215, v216, v700, v714, v16);
      sub_100031A14(v215, v216);
      v16, v217, v218, v219, v220, v221, v222, v223;

LABEL_67:
      sub_1000050A4(&v731, &qword_100939ED0, &qword_100791B10);
      v14 = v719;
LABEL_32:
      v127 = v723;
      v62 = v710;
      v70 = v715 + 1;
      v721 += 2;
      v16 = v720;
      if (v711 == v715 + 1)
      {
        goto LABEL_158;
      }

      continue;
    }

    break;
  }

  if (v197 == 0xD00000000000001CLL && v698 == v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(&v730 + 1) = sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    *&v729 = v722;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v62 = v718;
    v233 = v713;
    throwingCast<A>(_:as:failureMessage:)();
    v713 = v233;
    v234 = v705;
    if (v233)
    {
      goto LABEL_186;
    }

    sub_10000607C(&v729);
    v235 = v727;
    v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v244 = v712;
    if (*v712->clientIdentity)
    {
      v245 = v235;
      v246 = v237;
      v247 = sub_100005F4C(v236, v237);
      v249 = v248;
      v246, v248, v250, v251, v252, v253, v254, v255;
      if (v249)
      {
        sub_100005EF0(*&v244->clientIdentity[40] + 32 * v247, &v729);
      }

      else
      {
        v729 = 0u;
        v730 = 0u;
      }

      v235 = v245;
      v234 = v705;
    }

    else
    {
      v237, v237, v238, v239, v240, v241, v242, v243;
      v729 = 0u;
      v730 = 0u;
    }

    sub_10014F5CC(&v729, &v727);
    v262 = v717;
    if (*(&v728 + 1))
    {
      v263 = swift_dynamicCast();
      if (v263)
      {
        v264 = v725;
      }

      else
      {
        v264 = 0;
      }

      if (v263)
      {
        v265 = v726;
      }

      else
      {
        v265 = 0xF000000000000000;
      }
    }

    else
    {
      sub_1000050A4(&v727, &qword_100939ED0, &qword_100791B10);
      v264 = 0;
      v265 = 0xF000000000000000;
    }

    v266 = v713;
    sub_100495408(v235, v264, v265, v700, v714, v16);
    v713 = v266;
    if (v266)
    {
      sub_100031A14(v264, v265);

      v267 = Logger.logObject.getter();
      v268 = static os_log_type_t.error.getter();
      v262, v269, v270, v271, v272, v273, v274, v275;
      v16, v276, v277, v278, v279, v280, v281, v282;
      if (os_log_type_enabled(v267, v268))
      {
        v283 = swift_slowAlloc();
        v694 = v267;
        v284 = v268;
        v285 = v283;
        *&v727 = swift_slowAlloc();
        *v285 = v706.n128_u32[0];
        v286 = sub_10000668C(v714, v16, &v727);
        v714 = v235;
        v287 = v286;
        v16, v288, v289, v290, v291, v292, v293, v294;
        *(v285 + 4) = v287;
        *(v285 + 12) = 2080;
        v295 = sub_10000668C(v234, v262, &v727);
        v262, v296, v297, v298, v299, v300, v301, v302;
        *(v285 + 14) = v295;
        v303 = v694;
        _os_log_impl(&_mh_execute_header, v694, v284, "RDMergePolicy: Error occured while trying to merge ordered set for: {key: %s, remObjectID: %s}", v285, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v16, v318, v319, v320, v321, v322, v323, v324;
        v262, v325, v326, v327, v328, v329, v330, v331;
      }

      sub_1000050A4(&v729, &qword_100939ED0, &qword_100791B10);
      sub_1000050A4(&v731, &qword_100939ED0, &qword_100791B10);
      v713 = 0;
    }

    else
    {
      sub_100031A14(v264, v265);
      v16, v304, v305, v306, v307, v308, v309, v310;
      v262, v311, v312, v313, v314, v315, v316, v317;

      sub_1000050A4(&v729, &qword_100939ED0, &qword_100791B10);
      sub_1000050A4(&v731, &qword_100939ED0, &qword_100791B10);
    }

    goto LABEL_32;
  }

  v256 = v705;
  if (v197 == 0xD000000000000018 && v696 == v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v717, v226, v227, v228, v229, v230, v231, v232;
    *(&v730 + 1) = sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    *&v729 = v722;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v62 = v718;
    v257 = v713;
    throwingCast<A>(_:as:failureMessage:)();
    v713 = v257;
    if (!v257)
    {
      sub_10000607C(&v729);
      v258 = v727;
      v259 = v712;
      if (*v712->clientIdentity)
      {
        v260 = sub_100005F4C(0xD00000000000001BLL, v695 | 0x8000000000000000);
        if (v261)
        {
          sub_100005EF0(*&v259->clientIdentity[40] + 32 * v260, &v727);
        }

        else
        {
          v727 = 0u;
          v728 = 0u;
        }
      }

      else
      {
        v727 = 0u;
        v728 = 0u;
      }

      sub_10014F5CC(&v727, &v729);
      if (*(&v730 + 1))
      {
        sub_1000060C8(0, &qword_1009489E0, NSNull_ptr);
        if (swift_dynamicCast())
        {
          sub_1000050A4(&v727, &qword_100939ED0, &qword_100791B10);

          v729 = 0u;
          v730 = 0u;
          goto LABEL_127;
        }
      }

      else
      {
        sub_1000050A4(&v729, &qword_100939ED0, &qword_100791B10);
      }

      v729 = v727;
      v730 = v728;
      if (*(&v728 + 1))
      {
        v355 = swift_dynamicCast();
        if (v355)
        {
          v356 = v727;
        }

        else
        {
          v356 = 0;
        }

        if (v355)
        {
          v357 = *(&v727 + 1);
        }

        else
        {
          v357 = 0xF000000000000000;
        }
      }

      else
      {
LABEL_127:
        sub_1000050A4(&v729, &qword_100939ED0, &qword_100791B10);
        v356 = 0;
        v357 = 0xF000000000000000;
      }

      sub_100495F54(v258, v356, v357, v700, v714, v16);
      sub_100031A14(v356, v357);
      v16, v358, v359, v360, v361, v362, v363, v364;

      goto LABEL_67;
    }

LABEL_183:
    v596 = v16;
LABEL_184:
    v596, v206, v207, v208, v209, v210, v211, v212;

    v712, v597, v598, v599, v600, v601, v602, v603;
    v710, v604, v605, v606, v607, v608, v609, v610;
    sub_10001BBA0(v693, *(&v693 + 1));

    sub_1000050A4(&v731, &qword_100939ED0, &qword_100791B10);
    sub_10000607C(&v733);
    return sub_10000607C(&v729);
  }

  v332 = String._bridgeToObjectiveC()();
  v333 = [v692 mergeWithMap:v700 forKey:v332];

  v334 = v717;

  v335 = Logger.logObject.getter();
  if (!v333)
  {
    v365 = static os_log_type_t.info.getter();
    v334, v366, v367, v368, v369, v370, v371, v372;
    v16, v373, v374, v375, v376, v377, v378, v379;
    if (os_log_type_enabled(v335, v365))
    {
      v380 = swift_slowAlloc();
      v694 = v335;
      v381 = v380;
      *&v729 = swift_slowAlloc();
      *v381 = v706.n128_u32[0];
      v382 = sub_10000668C(v714, v16, &v729);
      v16, v383, v384, v385, v386, v387, v388, v389;
      *(v381 + 4) = v382;
      *(v381 + 12) = 2080;
      v390 = sub_10000668C(v705, v334, &v729);
      v334, v391, v392, v393, v394, v395, v396, v397;
      *(v381 + 14) = v390;
      v398 = v694;
      _os_log_impl(&_mh_execute_header, v694, v365, "RDMergePolicy: Resolution token map says we shouldn't merge key: {key: %s, remObjectID: %s}", v381, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v334, v430, v431, v432, v433, v434, v435, v436;
      v16, v437, v438, v439, v440, v441, v442, v443;
    }

    sub_1000050A4(&v731, &qword_100939ED0, &qword_100791B10);
    goto LABEL_32;
  }

  v336 = v335;
  v337 = static os_log_type_t.default.getter();
  v334, v338, v339, v340, v341, v342, v343, v344;
  v16, v345, v346, v347, v348, v349, v350, v351;
  v694 = v336;
  if (os_log_type_enabled(v336, v337))
  {
    v352 = swift_slowAlloc();
    *&v729 = swift_slowAlloc();
    *v352 = v706.n128_u32[0];
    *(v352 + 4) = sub_10000668C(v714, v16, &v729);
    *(v352 + 12) = 2080;
    *(v352 + 14) = sub_10000668C(v256, v717, &v729);
    v353 = v337;
    v354 = v694;
    _os_log_impl(&_mh_execute_header, v694, v353, "RDMergePolicy: Going to merge key: {key: %s, remObjectID: %s}", v352, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10014F5CC(&v731, &v727);
  if (!*(&v728 + 1))
  {
    v717, v399, v400, v401, v402, v403, v404, v405;
    sub_1000050A4(&v727, &qword_100939ED0, &qword_100791B10);
LABEL_141:
    sub_10014F5CC(&v731, &v729);
LABEL_142:
    sub_10014F5CC(&v729, &v727);
    v444 = *(&v728 + 1);
    if (*(&v728 + 1))
    {
      v445 = sub_10000F61C(&v727, *(&v728 + 1));
      v446 = *(v444 - 8);
      v447 = __chkstk_darwin(v445, v445);
      v449 = &v691 - ((v448 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v446 + 16))(v449, v447);
      v450 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v446 + 8))(v449, v444);
      v14 = v719;
      sub_10000607C(&v727);
    }

    else
    {
      v450 = 0;
    }

    v451 = String._bridgeToObjectiveC()();
    v16, v452, v453, v454, v455, v456, v457, v458;
    [v722 setValue:v450 forKey:v451];
    swift_unknownObjectRelease();

    sub_1000050A4(&v729, &qword_100939ED0, &qword_100791B10);
    sub_1000050A4(&v731, &qword_100939ED0, &qword_100791B10);
    goto LABEL_32;
  }

  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v406 = swift_dynamicCast();
  v414 = v717;
  if ((v406 & 1) == 0)
  {
    v717, v407, v408, v409, v410, v411, v412, v413;
    goto LABEL_141;
  }

  v415 = v725;
  v416 = [v722 managedObjectContext];
  if (v416)
  {
    v424 = v416;
    v414, v417, v418, v419, v420, v421, v422, v423;
    *&v727 = 0;
    v425 = [v424 existingObjectWithID:v415 error:&v727];
    v426 = v727;
    if (!v425)
    {
      v659 = v727;
      v710, v660, v661, v662, v663, v664, v665, v666;
      v16, v667, v668, v669, v670, v671, v672, v673;
      v712, v674, v675, v676, v677, v678, v679, v680;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_192;
    }

    v427 = v425;
    v428 = sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
    v429 = v426;

    *&v729 = v427;
    *(&v730 + 1) = v428;
    v14 = v719;
    goto LABEL_142;
  }

  v710, v417, v418, v419, v420, v421, v422, v423;
  v712, v611, v612, v613, v614, v615, v616, v617;

  v618 = Logger.logObject.getter();
  v619 = static os_log_type_t.error.getter();
  v414, v620, v621, v622, v623, v624, v625, v626;
  v16, v627, v628, v629, v630, v631, v632, v633;
  if (os_log_type_enabled(v618, v619))
  {
    v641 = swift_slowAlloc();
    *&v727 = swift_slowAlloc();
    *v641 = v706.n128_u32[0];
    v642 = sub_10000668C(v714, v16, &v727);
    v16, v643, v644, v645, v646, v647, v648, v649;
    *(v641 + 4) = v642;
    *(v641 + 12) = 2080;
    v650 = v717;
    v651 = sub_10000668C(v705, v717, &v727);
    v650, v652, v653, v654, v655, v656, v657, v658;
    *(v641 + 14) = v651;
    _os_log_impl(&_mh_execute_header, v618, v619, "RDMergePolicy: Missing managed object context for resolving merge conflict {key: %s, remObjectID: %s}", v641, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v717, v634, v635, v636, v637, v638, v639, v640;
    v16, v681, v682, v683, v684, v685, v686, v687;
  }

  v688 = objc_opt_self();
  sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v690 = String._bridgeToObjectiveC()();
  [v688 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v690];

  swift_willThrow();
LABEL_192:
  sub_10001BBA0(v693, *(&v693 + 1));

  sub_1000050A4(&v731, &qword_100939ED0, &qword_100791B10);
  return sub_10000607C(&v733);
}

id sub_100493650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDMergePolicy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004936A8(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [(RDXPCStorePerformer *)a1 conflictingObjects];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = v5 >> 62;
  if (v5 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
LABEL_26:
      v5, v6, v7, v8, v9, v10, v11, v12;
      if (qword_100936248 == -1)
      {
LABEL_27:
        v36 = type metadata accessor for Logger();
        sub_100006654(v36, qword_100948990);
        v37 = v3;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v62 = v41;
          *v40 = 136446210;
          v42 = v37;
          v43 = [(RDXPCStorePerformer *)v42 description];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          v47 = sub_10000668C(v44, v46, &v62);
          v46, v48, v49, v50, v51, v52, v53, v54;
          *(v40 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v38, v39, "RDMergePolicy: Missing managed object context for resolving sharee constraint conflict {conflict: %{public}s}", v40, 0xCu);
          sub_10000607C(v41);
        }

        return;
      }

LABEL_34:
      swift_once();
      goto LABEL_27;
    }
  }

  else
  {
    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else if ((v5 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v5 + 8 * v16 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_34;
  }

  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v18 = v17;
  v19 = [v17 managedObjectContext];

  if (!v19)
  {
    goto LABEL_26;
  }

  [v19 deleteObject:a2];
  if (v13)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v20)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
      goto LABEL_19;
    }

LABEL_38:

    v3, v55, v56, v57, v58, v59, v60, v61;
    return;
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v13 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v5 = sub_1002618D4();
  }

  v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_36;
  }

  v23 = v22 - 1;
  v24 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v23 + 0x20);
  *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v23;

  v62 = v5;
  sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
  sub_1000F5104(&qword_1009489E8, &qword_1007ACA18);
  sub_100496B04();
  v3 = Sequence.elements<A>(ofType:)();
  v5, v25, v26, v27, v28, v29, v30, v31;
  if (v3 >> 62)
  {
    goto LABEL_37;
  }

  v32 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_38;
  }

LABEL_19:
  if (v32 >= 1)
  {
    for (i = 0; i != v32; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v3 + 8 * i + 32);
      }

      v35 = v34;
      [v19 deleteObject:v34];
    }

    goto LABEL_38;
  }

  __break(1u);
}

uint64_t sub_100493A8C(void *a1)
{
  v1 = a1;
  v2 = [a1 conflictingObjects];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v173 = &_swiftEmptyArrayStorage;
  if (!(v3 >> 62))
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v171 = v1;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_20:
    v12 = &_swiftEmptyArrayStorage;
    goto LABEL_21;
  }

LABEL_19:
  v11 = _CocoaArrayWrapper.endIndex.getter();
  v171 = v1;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_3:
  v1 = 0;
  v12 = &_swiftEmptyArrayStorage;
  do
  {
    v13 = v1;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(v3 + 8 * v13 + 32);
      }

      v15 = v14;
      v1 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v13;
      if (v1 == v11)
      {
        goto LABEL_21;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = v173;
  }

  while (v1 != v11);
LABEL_21:
  v3, v4, v5, v6, v7, v8, v9, v10;
  v16 = v12 >> 62;
  if (v12 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v171;
  v19 = [v171 conflictingObjects];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v20;
  if (v20 >> 62)
  {
    v168 = v20;
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v168;
  }

  else
  {
    v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28, v21, v22, v23, v24, v25, v26, v27;
  if (v17 != v29)
  {
    v12, v30, v31, v32, v33, v34, v35, v36;
    if (qword_100936248 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_91;
  }

  if (v16)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
    if (!v37)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v37 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
LABEL_44:
      v12, v30, v31, v32, v33, v34, v35, v36;
      if (qword_100936248 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_97;
    }
  }

  v58 = __OFSUB__(v37, 1);
  v59 = v37 - 1;
  if (v58)
  {
LABEL_93:
    __break(1u);
  }

  else
  {
    v19 = (v12 & 0xC000000000000001);
    if ((v12 & 0xC000000000000001) == 0)
    {
      if ((v59 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v59 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v60 = *&v12->clientIdentity[8 * v59 + 16];
        goto LABEL_38;
      }

      __break(1u);
LABEL_97:
      swift_once();
LABEL_45:
      v88 = type metadata accessor for Logger();
      sub_100006654(v88, qword_100948990);
      v89 = v18;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v173 = v43;
        *v42 = 136446210;
        v90 = v89;
        v91 = [v90 description];
        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = v93;

        v95 = sub_10000668C(v92, v94, &v173);
        v94, v96, v97, v98, v99, v100, v101, v102;
        *(v42 + 4) = v95;
        v57 = "RDMergePolicy: Missing managed object context for resolving hashtag constraint conflict {conflict: %{public}s}";
        goto LABEL_47;
      }

      goto LABEL_59;
    }
  }

  v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_38:
  v61 = v60;
  v40 = [v60 managedObjectContext];

  if (!v40)
  {
    goto LABEL_44;
  }

  v62 = [v18 databaseObject];
  if (!v62)
  {
    v12, v63, v64, v65, v66, v67, v68, v69;
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v103 = type metadata accessor for Logger();
    sub_100006654(v103, qword_100948990);
    v104 = v18;
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v173 = v108;
      *v107 = 136446210;
      v109 = v104;
      v110 = [v109 description];
      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;

      v114 = sub_10000668C(v111, v113, &v173);
      v113, v115, v116, v117, v118, v119, v120, v121;
      *(v107 + 4) = v114;
      v122 = "RDMergPolicy: context-level constraint conflict is unexpected and not handled for resolving hashtag constraint conflict {conflict: %{public}s}";
      goto LABEL_57;
    }

LABEL_58:

    goto LABEL_59;
  }

  v173 = v12;
  v70 = [v18 databaseObject];
  if (!v70)
  {
    v12, v71, v72, v73, v74, v75, v76, v77;
    goto LABEL_54;
  }

  v78 = v70;
  objc_opt_self();
  v79 = swift_dynamicCastObjCClass();
  if (!v79)
  {
    v12, v80, v81, v82, v83, v84, v85, v86;

LABEL_54:
    if (qword_100936248 != -1)
    {
      goto LABEL_100;
    }

    goto LABEL_55;
  }

  v170 = v78;
  if (v16)
  {
    v139 = v79;
    v87 = _CocoaArrayWrapper.endIndex.getter();
    v79 = v139;
  }

  else
  {
    v87 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v87)
  {
    v169 = v79;
    v16 = RDStoreControllerICCloudContextAuthor;
    do
    {
      v58 = __OFSUB__(v87--, 1);
      if (v58)
      {
        __break(1u);
        goto LABEL_93;
      }

      if (v19)
      {
        v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v87 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          swift_once();
LABEL_55:
          v123 = type metadata accessor for Logger();
          sub_100006654(v123, qword_100948990);
          v124 = v18;
          v105 = Logger.logObject.getter();
          v106 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v172 = v108;
            *v107 = 136446210;
            v125 = v124;
            v126 = [v125 description];
            v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v129 = v128;

            v130 = sub_10000668C(v127, v129, &v172);
            v129, v131, v132, v133, v134, v135, v136, v137;
            *(v107 + 4) = v130;
            v122 = "RDMergPolicy: databaseObject is not a REMCDHashtag for resolving hashtag constraint conflict {conflict: %{public}s}";
LABEL_57:
            _os_log_impl(&_mh_execute_header, v105, v106, v122, v107, 0xCu);
            sub_10000607C(v108);
          }

          goto LABEL_58;
        }

        if (v87 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_99;
        }

        v140 = *&v12->clientIdentity[8 * v87 + 16];
      }

      v18 = v140;
      v141 = [v140 managedObjectContext];
      if (v141 && (v142 = v141, v143 = [v141 transactionAuthor], v142, v143))
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v145 = v144;
      }

      else
      {
        v145 = 0xE000000000000000;
      }

      v146._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      object = v146._object;
      v148 = String.hasPrefix(_:)(v146);

      v145, v149, v150, v151, v152, v153, v154, v155;
      object, v156, v157, v158, v159, v160, v161, v162;
      if (v148)
      {
        [v40 deleteObject:v169];

        v12 = v173;
        break;
      }
    }

    while (v87);
  }

  if (v12 >> 62)
  {
    v163 = _CocoaArrayWrapper.endIndex.getter();
    if (v163)
    {
LABEL_79:
      v164 = 0;
      v18 = (v12 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v165 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v164 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_90;
          }

          v165 = *&v12->clientIdentity[8 * v164 + 16];
        }

        v166 = v165;
        v167 = v164 + 1;
        if (__OFADD__(v164, 1))
        {
          break;
        }

        [v40 deleteObject:v165];

        ++v164;
        if (v167 == v163)
        {
          goto LABEL_102;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      swift_once();
LABEL_30:
      v38 = type metadata accessor for Logger();
      sub_100006654(v38, qword_100948990);
      v39 = v18;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v173 = v43;
        *v42 = 136446210;
        v44 = v39;
        v45 = [v44 description];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = sub_10000668C(v46, v48, &v173);
        v48, v50, v51, v52, v53, v54, v55, v56;
        *(v42 + 4) = v49;
        v57 = "RDMergePolicy: Some conflicting objects are not hashtag for resolving hashtag constraint conflict {conflict: %{public}s}";
LABEL_47:
        _os_log_impl(&_mh_execute_header, v40, v41, v57, v42, 0xCu);
        sub_10000607C(v43);
      }

LABEL_59:

      return 0;
    }
  }

  else
  {
    v163 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v163)
    {
      goto LABEL_79;
    }
  }

LABEL_102:
  v12, v80, v81, v82, v83, v84, v85, v86;

  return 1;
}

uint64_t sub_1004944C4(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v2 = [(RDXPCStorePerformer *)a1 conflictingObjects];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = &selRef_isEmpty;
  v5 = [(RDXPCStorePerformer *)a1 constraint];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(v6 + 16);
  v6, v8, v9, v10, v11, v12, v13, v14;
  if (v7 != 1)
  {
    goto LABEL_29;
  }

  v22 = [(RDXPCStorePerformer *)a1 constraint];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v23 + 16))
  {
    goto LABEL_34;
  }

  v25 = *(v23 + 32);
  v24 = *(v23 + 40);

  v23, v26, v27, v28, v29, v30, v31, v32;
  if (v25 == 0x696669746E656469 && v24 == 0xEA00000000007265)
  {
    v24, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v24, v42, v43, v44, v45, v46, v47, v48;
    if ((v41 & 1) == 0)
    {
LABEL_29:
      v3, v15, v16, v17, v18, v19, v20, v21;
      return 0;
    }
  }

  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_35;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v49 = [(RDXPCStorePerformer *)a1 databaseObject];
    if (v49)
    {
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (v50)
      {
        break;
      }
    }

    if (v4)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
      if (!v61)
      {
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      v61 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v61)
      {
        goto LABEL_28;
      }
    }

    v4 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v62 = *(v3 + 8 * v4 + 32);
      }

      v63 = v62;
      v64 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v3, v65, v66, v67, v68, v69, v70, v71;

        v60 = sub_100493A8C(a1);
        goto LABEL_31;
      }

      ++v4;
      if (v64 == v61)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_29;
    }
  }

  v51 = v50;
  v49 = v49;
  v3, v52, v53, v54, v55, v56, v57, v58;
  sub_1004936A8(a1, v51);
  v60 = v59;

LABEL_31:
  return v60 & 1;
}

id sub_1004947A4(void *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v6 = [a1 remObjectID];
  if (!v6)
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100948990);
    v22 = a1;
    v7 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v22;
      *v25 = v22;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v7, v23, "RDMergePolicy: Failed to get the reminder remObjectID from the CDReminder {cdReminder: %@}", v24, 0xCu);
      sub_1000050A4(v25, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_18;
  }

  v7 = v6;
  v8 = [a1 account];
  if (!v8 || (v9 = v8, v10 = [v8 remObjectID], v9, !v10))
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_100948990);
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDMergePolicy: Failed to get the account remObjectID from the CDReminder {cdReminder: %@}", v18, 0xCu);
      sub_1000050A4(v19, &unk_100938E70, &unk_100797230);
    }

LABEL_18:
    return 0;
  }

  if (a2 == 0x636F44656C746974 && a3 == 0xED0000746E656D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = [objc_opt_self() titleReplicaIDSourceWithAccountID:v10 reminderID:v7];
LABEL_8:
    v12 = v11;

    return v12;
  }

  if (a2 == 0x636F447365746F6ELL && a3 == 0xED0000746E656D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = [objc_opt_self() notesReplicaIDSourceWithAccountID:v10 reminderID:v7];
    goto LABEL_8;
  }

  if (qword_100936248 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_100948990);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.fault.getter();
  a3, v30, v31, v32, v33, v34, v35, v36;
  if (os_log_type_enabled(v28, v29))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_10000668C(a2, a3, &v39);
    _os_log_impl(&_mh_execute_header, v28, v29, "RDMergePolicy: Unexpected reminder property key to get a replicaIDSource for it {key: %s}", v37, 0xCu);
    sub_10000607C(v38);
  }

  return 0;
}

void sub_100494C68(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _TtC7remindd19RDXPCStorePerformer *a6)
{
  v11 = [a1 remObjectID];
  if (!v11)
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100948990);

    v19 = a1;
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    a6, v21, v22, v23, v24, v25, v26, v27;
    if (os_log_type_enabled(oslog, v20))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v89 = v30;
      *v28 = 136315394;
      *(v28 + 4) = sub_10000668C(a5, a6, &v89);
      *(v28 + 12) = 2112;
      v31 = [v19 objectID];
      *(v28 + 14) = v31;
      *v29 = v31;
      _os_log_impl(&_mh_execute_header, oslog, v20, "RDMergePolicy: cdReminder has no remObjectID {key: %s, cdReminder.objectID: %@}", v28, 0x16u);
      sub_1000050A4(v29, &unk_100938E70, &unk_100797230);

      sub_10000607C(v30);

      return;
    }

    goto LABEL_23;
  }

  oslog = v11;
  v12 = sub_1004947A4(a1, a5, a6);
  if (!v12)
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_100948990);
    v33 = oslog;

    log = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    a6, v35, v36, v37, v38, v39, v40, v41;
    if (os_log_type_enabled(log, v34))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v89 = v44;
      *v42 = 136315394;
      *(v42 + 4) = sub_10000668C(a5, a6, &v89);
      *(v42 + 12) = 2112;
      *(v42 + 14) = v33;
      *v43 = oslog;
      v45 = v33;
      _os_log_impl(&_mh_execute_header, log, v34, "RDMergePolicy: Could not get a replicaIDSource for reminder for key {key: %s, remObjectID: %@}", v42, 0x16u);
      sub_1000050A4(v43, &unk_100938E70, &unk_100797230);

      sub_10000607C(v44);

      return;
    }

    goto LABEL_31;
  }

  log = v12;
  v13 = [a1 account];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v13, "type")}];
    v16 = [v15 supportsCRDTs];

    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  if (a3 >> 60 == 15)
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100006654(v46, qword_100948990);
    v47 = oslog;

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();

    a6, v50, v51, v52, v53, v54, v55, v56;
    if (os_log_type_enabled(v48, v49))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v85 = v17;
      v59 = swift_slowAlloc();
      v89 = v59;
      *v57 = 136315394;
      *(v57 + 4) = sub_10000668C(a5, a6, &v89);
      *(v57 + 12) = 2112;
      *(v57 + 14) = v47;
      *v58 = oslog;
      v60 = v47;
      _os_log_impl(&_mh_execute_header, v48, v49, "RDMergePolicy: Store snapshot document data is nil for the mergeable string document key {key: %s, remObjectID: %@}", v57, 0x16u);
      sub_1000050A4(v58, &unk_100938E70, &unk_100797230);

      sub_10000607C(v59);
      v17 = v85;
    }

    v61 = log;
    v62 = v47;
    isa = 0;
  }

  else
  {
    v64 = log;
    v65 = oslog;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v66 = String._bridgeToObjectiveC()();
  v86 = [objc_opt_self() documentFromSerializedData:isa replicaIDSource:log forKey:v66 ofObjectID:oslog];

  v67 = sub_1002AF880(v86, a5, a6, a4, v17);
  if (v69 != 1)
  {
    v71 = v67;
    v72 = v68;
    v73 = v69;
    if (v68 >> 60 == 15)
    {
      v74 = 0;
    }

    else
    {
      sub_100029344(v67, v68);
      v74 = Data._bridgeToObjectiveC()().super.isa;
      sub_100031A14(v71, v72);
    }

    v75 = String._bridgeToObjectiveC()();
    [a1 setValue:v74 forKey:v75];
    swift_unknownObjectRelease();

    if (v73)
    {
      v76 = String._bridgeToObjectiveC()();
      v73, v77, v78, v79, v80, v81, v82, v83;
      v84 = String._bridgeToObjectiveC()();
      [a1 setValue:v76 forKey:v84];

      sub_100031A14(v71, v72);
      v70 = v86;
      goto LABEL_32;
    }

    sub_100031A14(v71, v72);
LABEL_31:
    v70 = log;
    goto LABEL_32;
  }

LABEL_23:
  v70 = oslog;
LABEL_32:
}

void sub_100495408(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _TtC7remindd19RDXPCStorePerformer *a6)
{
  v7 = v6;
  v10 = a1;
  v11 = [a1 account];
  v102 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v11, "type")}];
    v14 = [v13 supportsCRDTs];

    if (a3 >> 60 == 15)
    {
      v15 = v14 ^ 1;
LABEL_6:
      if (qword_100936248 != -1)
      {
        swift_once();
      }

      v96 = v15;
      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_100948990);

      v17 = v10;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      a6, v20, v21, v22, v23, v24, v25, v26;
      if (os_log_type_enabled(v18, v19))
      {
        v27 = swift_slowAlloc();
        *&v109[0] = swift_slowAlloc();
        *v27 = 136315394;
        *(v27 + 4) = sub_10000668C(a5, a6, v109);
        *(v27 + 12) = 2080;
        *&v107 = [v17 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v28 = Optional.descriptionOrNil.getter();
        v29 = a6;
        v30 = a3;
        v32 = v31;

        v33 = sub_10000668C(v28, v32, v109);
        v34 = v32;
        a3 = v30;
        a6 = v29;
        v34, v35, v36, v37, v38, v39, v40, v41;
        *(v27 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v18, v19, "RDMergePolicy: Store snapshot reminderIDs ordering data is nil for key {key: %s, remObjectID: %s}", v27, 0x16u);
        swift_arrayDestroy();
        v42 = v6;
      }

      else
      {
        v42 = v6;
      }

      v99 = 0;
      v10 = v102;
      v43 = v96;
      goto LABEL_24;
    }

    if ((v14 & 1) == 0)
    {
      v42 = v6;
      v99 = 0;
      v43 = 1;
      goto LABEL_24;
    }
  }

  else if (a3 >> 60 == 15)
  {
    v15 = 0;
    goto LABEL_6;
  }

  sub_100029344(a2, a3);
  if (qword_100936248 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_100948990);
  v45 = v10;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v100 = a6;
    v48 = v10;
    v97 = a3;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v109[0] = v50;
    *v49 = 136315138;
    v51 = [v45 remObjectID];
    if (v51)
    {
      v52 = v51;
      v53 = [v51 description];

      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v7 = v6;
    }

    else
    {
      v56 = 0xE300000000000000;
      v54 = 7104878;
    }

    v57 = sub_10000668C(v54, v56, v109);
    v56, v58, v59, v60, v61, v62, v63, v64;
    *(v49 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v46, v47, "RDMergePolicy: Deserialized reminderIDsMergeableOrdering from data {remObjectID: %s}", v49, 0xCu);
    sub_10000607C(v50);

    a3 = v97;
    v10 = v48;
    a6 = v100;
  }

  else
  {
  }

  v65 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v109[0] = 0;
  v67 = [v65 reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:isa error:v109];

  v68 = *&v109[0];
  if (!v67)
  {
    v88 = v68;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100031A14(a2, a3);
    return;
  }

  v42 = v7;
  sub_100031A14(a2, a3);
  v99 = v67;
  v69 = v67;
  v43 = 0;
LABEL_24:
  sub_1001CB4B8(a2, a3);
  v70 = [v10 createResolutionTokenMapIfNecessary];
  v71 = String._bridgeToObjectiveC()();
  v72 = [v70 mergeWithMap:a4 forKey:v71];

  if (v43)
  {

    if ((v72 & 1) == 0)
    {

      sub_100031A14(a2, a3);
      return;
    }

    v73 = a2;
    sub_1001CB4B8(a2, a3);
    v74 = a3;
    v75 = v99;
  }

  else
  {
    v76 = String._bridgeToObjectiveC()();
    v77 = [v10 valueForKey:v76];

    if (v77)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v107 = 0u;
      v108 = 0u;
    }

    v109[0] = v107;
    v109[1] = v108;
    v78 = v42;
    v98 = a3;
    if (*(&v108 + 1))
    {
      v79 = swift_dynamicCast();
      if (v79)
      {
        v80 = v105;
      }

      else
      {
        v80 = 0;
      }

      if (v79)
      {
        v81 = v106;
      }

      else
      {
        v81 = 0xF000000000000000;
      }
    }

    else
    {
      sub_1000050A4(v109, &qword_100939ED0, &qword_100791B10);
      v80 = 0;
      v81 = 0xF000000000000000;
    }

    v75 = v99;
    *&v109[0] = 0;
    v82 = [v102 remObjectIDWithError:v109];
    if (!v82)
    {
      v87 = *&v109[0];
      sub_100031A14(v80, v81);
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100031A14(a2, a3);

      return;
    }

    v83 = v82;
    v84 = *&v109[0];
    v85 = sub_1006A4484(v99, v80, v81, a5, a6, v83);
    if (v78)
    {

      sub_100031A14(a2, v98);
      sub_100031A14(v80, v81);

      return;
    }

    v73 = v85;
    v74 = v86;

    sub_100031A14(v80, v81);
    a3 = v98;
    v10 = v102;
  }

  if (v74 >> 60 == 15)
  {

    v89 = a2;
    v90 = a3;
  }

  else
  {
    v91 = Data._bridgeToObjectiveC()().super.isa;
    v92 = String._bridgeToObjectiveC()();
    v93 = v10;
    v94 = a3;
    v95 = v92;
    [v93 setValue:v91 forKey:v92];

    sub_100031A14(v73, v74);
    v89 = a2;
    v90 = v94;
  }

  sub_100031A14(v89, v90);
}

id sub_100495C54(void *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v6 = [a1 remObjectID];
  if (v6)
  {
    v7 = v6;
    if (a2 == 0xD000000000000018 && 0x80000001007E9180 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v8 = [objc_opt_self() listIDsMergeableOrderingReplicaIDSourceWithAccountID:v7];

      return v8;
    }

    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_100948990);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    a3, v19, v20, v21, v22, v23, v24, v25;
    if (os_log_type_enabled(v17, v18))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_10000668C(a2, a3, &v28);
      _os_log_impl(&_mh_execute_header, v17, v18, "RDMergePolicy: Unexpected account property key to get a replicaIDSource for it {key: %s}", v26, 0xCu);
      sub_10000607C(v27);
    }
  }

  else
  {
    if (qword_100936248 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100948990);
    v11 = a1;
    v7 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = v11;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v7, v12, "RDMergePolicy: Failed to get the account remObjectID from the CDAccount {cdAccount: %@}", v13, 0xCu);
      sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
    }
  }

  return 0;
}

void sub_100495F54(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _TtC7remindd19RDXPCStorePerformer *a6)
{
  v12 = [a1 remObjectID];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100495C54(a1, a5, a6);
    if (v14)
    {
      v15 = v14;
      v121 = a4;
      v122 = a5;
      v16 = a3 >> 60;
      v124 = v14;
      v125 = a2;
      if (a3 >> 60 == 15)
      {
        if (qword_100936248 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100006654(v17, qword_100948990);

        v18 = v13;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.info.getter();

        a6, v21, v22, v23, v24, v25, v26, v27;
        if (os_log_type_enabled(v19, v20))
        {
          v28 = swift_slowAlloc();
          v118 = a3;
          v29 = v13;
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *&v132[0] = v31;
          *v28 = 136315394;
          *(v28 + 4) = sub_10000668C(v122, a6, v132);
          *(v28 + 12) = 2112;
          *(v28 + 14) = v18;
          *v30 = v29;
          v32 = v18;
          _os_log_impl(&_mh_execute_header, v19, v20, "RDMergePolicy: Store snapshot listIDs ordering data is nil for key {key: %s, remObjectID: %@}", v28, 0x16u);
          sub_1000050A4(v30, &unk_100938E70, &unk_100797230);
          v13 = v29;
          a3 = v118;

          sub_10000607C(v31);
          a5 = v122;

          a2 = v125;
        }

        v15 = v124;
      }

      v33 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(a1, "type", v118)}];
      v34 = [v33 supportsCRDTs];

      oslog = 0;
      if (v16 <= 0xE && v34)
      {
        sub_100029344(a2, a3);
        if (qword_100936248 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_100006654(v35, qword_100948990);
        v36 = a1;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v37, v38))
        {
          osloga = v13;
          v39 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          *&v132[0] = v119;
          *v39 = 136315138;
          v40 = [v36 remObjectID];
          if (v40)
          {
            v41 = v40;
            v42 = [v40 description];

            v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;
          }

          else
          {
            v45 = 0xE300000000000000;
            v43 = 7104878;
          }

          v75 = sub_10000668C(v43, v45, v132);
          v45, v76, v77, v78, v79, v80, v81, v82;
          *(v39 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v37, v38, "RDMergePolicy: Deserialized listIDsMergeableOrdering ordering from data {remObjectID: %s}", v39, 0xCu);
          sub_10000607C(v119);

          a2 = v125;
          v13 = osloga;
          v15 = v124;
        }

        else
        {
        }

        sub_100029344(a2, a3);
        a5 = v122;
        oslog = sub_1002FF534(a2, a3, v15, v122, a6, v13);
        sub_100031A14(a2, a3);
        sub_100031A14(a2, a3);
        v83 = oslog;
      }

      sub_1001CB4B8(a2, a3);
      v84 = [a1 createResolutionTokenMapIfNecessary];
      v85 = String._bridgeToObjectiveC()();
      v86 = [v84 mergeWithMap:v121 forKey:v85];

      if (v34)
      {
        v87 = [a1 remObjectID];
        if (v87)
        {
          v88 = v87;
          v89 = String._bridgeToObjectiveC()();
          v90 = [a1 valueForKey:v89];

          if (v90)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v130 = 0u;
            v131 = 0u;
          }

          v132[0] = v130;
          v132[1] = v131;
          if (*(&v131 + 1))
          {
            v109 = swift_dynamicCast();
            if (v109)
            {
              v91 = v128;
            }

            else
            {
              v91 = 0;
            }

            if (v109)
            {
              v92 = v129;
            }

            else
            {
              v92 = 0xF000000000000000;
            }

            v110 = oslog;
            if (oslog)
            {
              goto LABEL_49;
            }
          }

          else
          {
            sub_1000050A4(v132, &qword_100939ED0, &qword_100791B10);
            v91 = 0;
            v92 = 0xF000000000000000;
            v110 = oslog;
            if (oslog)
            {
LABEL_49:
              v111 = v110;
              v120 = a3;
              v112 = v13;
              v113 = sub_1002F8750(v91, v92, v124, a5, a6, v88);
              v115 = v114;

              sub_100031A14(v91, v92);
              v91 = v113;
              v13 = v112;
              a3 = v120;
              v92 = v115;
              goto LABEL_52;
            }
          }

          goto LABEL_52;
        }

        if (qword_100935E80 != -1)
        {
          swift_once();
        }

        v93 = type metadata accessor for Logger();
        sub_100006654(v93, qword_100941670);

        v94 = a1;
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.error.getter();
        a6, v97, v98, v99, v100, v101, v102, v103;

        if (os_log_type_enabled(v95, v96))
        {
          v104 = swift_slowAlloc();
          v123 = v84;
          v105 = swift_slowAlloc();
          v106 = v95;
          v107 = swift_slowAlloc();
          *&v132[0] = v107;
          *v104 = 138412546;
          v108 = [v94 objectID];
          *(v104 + 4) = v108;
          *v105 = v108;
          *(v104 + 12) = 2080;
          *(v104 + 14) = sub_10000668C(a5, a6, v132);
          _os_log_impl(&_mh_execute_header, v106, v96, "Can't merge list ordering for account because remObjectID is nil {account.objectID: %@, key: %s}", v104, 0x16u);
          sub_1000050A4(v105, &unk_100938E70, &unk_100797230);

          sub_10000607C(v107);

          goto LABEL_54;
        }
      }

      else
      {

        if (v86)
        {
          v91 = v125;
          sub_1001CB4B8(v125, a3);
          v92 = a3;
LABEL_52:
          if (v92 >> 60 != 15)
          {
            isa = Data._bridgeToObjectiveC()().super.isa;
            v117 = String._bridgeToObjectiveC()();
            [a1 setValue:isa forKey:v117];

            sub_100031A14(v91, v92);
            goto LABEL_56;
          }

LABEL_54:
LABEL_56:
          sub_100031A14(v125, a3);

          goto LABEL_57;
        }
      }

      sub_100031A14(v125, a3);
    }

    else
    {
      if (qword_100936248 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_100006654(v60, qword_100948990);

      v61 = v13;
      oslog = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      a6, v63, v64, v65, v66, v67, v68, v69;
      if (os_log_type_enabled(oslog, v62))
      {
        v70 = swift_slowAlloc();
        v71 = v13;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v132[0] = v73;
        *v70 = 136315394;
        *(v70 + 4) = sub_10000668C(a5, a6, v132);
        *(v70 + 12) = 2112;
        *(v70 + 14) = v61;
        *v72 = v71;
        v74 = v61;
        _os_log_impl(&_mh_execute_header, oslog, v62, "RDMergePolicy: Could not get a replicaIDSource for account for key {key: %s, remObjectID: %@}", v70, 0x16u);
        sub_1000050A4(v72, &unk_100938E70, &unk_100797230);

        sub_10000607C(v73);

        return;
      }
    }

LABEL_60:

    goto LABEL_57;
  }

  if (qword_100936248 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100006654(v46, qword_100948990);

  v47 = a1;
  oslog = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  a6, v49, v50, v51, v52, v53, v54, v55;
  if (!os_log_type_enabled(oslog, v48))
  {
    goto LABEL_60;
  }

  v56 = swift_slowAlloc();
  v57 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  *&v132[0] = v58;
  *v56 = 136315394;
  *(v56 + 4) = sub_10000668C(a5, a6, v132);
  *(v56 + 12) = 2112;
  v59 = [v47 objectID];
  *(v56 + 14) = v59;
  *v57 = v59;
  _os_log_impl(&_mh_execute_header, oslog, v48, "RDMergePolicy: cdAccount has no remObjectID {key: %s, cdAccount.objectID: %@}", v56, 0x16u);
  sub_1000050A4(v57, &unk_100938E70, &unk_100797230);

  sub_10000607C(v58);

LABEL_57:
}

unint64_t sub_100496B04()
{
  result = qword_1009489F0;
  if (!qword_1009489F0)
  {
    sub_1000F514C(&qword_1009489E8, &qword_1007ACA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009489F0);
  }

  return result;
}

uint64_t sub_100496B68()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009489F8);
  v1 = sub_100006654(v0, qword_1009489F8);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100496C30()
{
  result = [objc_opt_self() alarmEngine];
  qword_100948A10 = result;
  return result;
}

uint64_t sub_100496D04()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936250 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_1009489F8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "os_transaction INIT {name: com.apple.remindd.RDDueDateDeltaAlarmProducer.reload}", v10, 2u);
  }

  v23[1] = os_transaction_create();
  static os_signpost_type_t.begin.getter();
  if (qword_100936258 != -1)
  {
    swift_once();
  }

  v11 = qword_100948A10;
  static OSSignpostID.exclusive.getter();
  v23[0] = v11;
  os_signpost(_:dso:log:name:signpostID:)();
  v12 = *(v3 + 8);
  v12(v6, v2);
  sub_10000F61C((v1 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_dataSource), *(v1 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_dataSource + 24));
  static os_signpost_type_t.begin.getter();
  if (qword_1009360B0 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12(v6, v2);

  v14 = sub_100412904(v13);

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12(v6, v2);
  sub_100497084(v14);
  sub_1004975CC(v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12(v6, v2);
  sub_10049A0CC();
  return swift_unknownObjectRelease();
}

void sub_100497084(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  isa = v4[-1].isa;
  __chkstk_darwin(v4, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_started) == 1)
  {
    v50 = v4;
    static os_signpost_type_t.begin.getter();
    if (qword_100936258 != -1)
    {
      swift_once();
    }

    v49 = isa;
    v14 = qword_100948A10;
    static OSSignpostID.exclusive.getter();
    v48 = v14;
    os_signpost(_:dso:log:name:signpostID:)();
    v47 = *(v10 + 8);
    v47(v13, v9);
    if (qword_100936250 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_1009489F8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDDueDateDeltaAlarmProducer is firing expired dueDateDelta alarms", v18, 2u);
    }

    v19 = Date.init(timeIntervalSinceNow:)();
    __chkstk_darwin(v19, v20);
    *(&v46 - 2) = v8;
    v21 = sub_1003DFE04(sub_10049A218, (&v46 - 4), a1);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = *v21->clientIdentity;
      _os_log_impl(&_mh_execute_header, v22, v23, "RDDueDateDeltaAlarmProducer is firing expired dueDateDelta alarms, count = %ld", v24, 0xCu);
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    __chkstk_darwin(Strong, v26);
    *(&v46 - 2) = v8;
    v27 = sub_10024D7DC(sub_10049A234, (&v46 - 4), v21);
    v21, v28, v29, v30, v31, v32, v33, v34;
    sub_100292BB4(v2, v27, Strong);
    v27, v35, v36, v37, v38, v39, v40, v41;
    swift_unknownObjectRelease();
    (*(v49 + 1))(v8, v50);
    static os_signpost_type_t.end.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v47(v13, v9);
  }

  else
  {
    if (qword_100936250 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100006654(v42, qword_1009489F8);
    v50 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v50, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v50, v43, "RDDueDateDeltaAlarmProducer.start() must be called before fireExpiredAlarms", v44, 2u);
    }

    v45 = v50;
  }
}

void sub_1004975CC(void *a1)
{
  v209 = a1;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v190 - v4;
  v6 = sub_1000F5104(&qword_100945E58, &unk_1007ACAD0);
  __chkstk_darwin(v6 - 8, v7);
  v205 = (&v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9, v10);
  v206 = (&v190 - v11);
  v213 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  isa = v213[-1].isa;
  __chkstk_darwin(v213, v13);
  v200 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v204 = (&v190 - v17);
  __chkstk_darwin(v18, v19);
  v21 = &v190 - v20;
  __chkstk_darwin(v22, v23);
  v25 = &v190 - v24;
  __chkstk_darwin(v26, v27);
  v29 = &v190 - v28;
  v211 = type metadata accessor for Date();
  v207 = *(v211 - 8);
  __chkstk_darwin(v211, v30);
  v198 = &v190 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v199 = &v190 - v34;
  __chkstk_darwin(v35, v36);
  v208 = &v190 - v37;
  __chkstk_darwin(v38, v39);
  v203 = &v190 - v40;
  __chkstk_darwin(v41, v42);
  v212 = &v190 - v43;
  v44 = type metadata accessor for OSSignpostID();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44, v46);
  v48 = &v190 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = v1;
  v49 = &qword_100936000;
  if (*(v1 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_started) == 1)
  {
    v201 = v29;
    v192 = v5;
    static os_signpost_type_t.begin.getter();
    if (qword_100936258 != -1)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v50 = qword_100948A10;
      static OSSignpostID.exclusive.getter();
      v194 = v50;
      os_signpost(_:dso:log:name:signpostID:)();
      v52 = v45[1];
      v51 = (v45 + 1);
      v202 = v48;
      v196 = v44;
      v195 = v52;
      v52(v48, v44);
      v53 = v211;
      if (v49[74] != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      v193 = sub_100006654(v54, qword_1009489F8);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "RDDueDateDeltaAlarmProducer is setting up the timers", v57, 2u);
        v53 = v211;
      }

      v58 = v212;
      v59 = Date.init()();
      __chkstk_darwin(v59, v60);
      *(&v190 - 2) = v58;
      v61 = sub_1003DFE04(sub_10049A1B4, (&v190 - 4), v209);
      v44 = v61;
      v49 = *v61->clientIdentity;
      v197 = v51;
      if (!v49)
      {
        break;
      }

      v69 = v210;
      v48 = v61 + ((*(isa + 80) + 32) & ~*(isa + 80));
      sub_1003E4398(v48, v25);
      if (v49 == 1)
      {
LABEL_9:
        v44, v70, v71, v72, v73, v74, v75, v76;
        v77 = v205;
        sub_100031B58(v25, v205, &unk_1009464C0, &qword_10079D360);
        v78 = 0;
        v79 = v69;
        v53 = v211;
        goto LABEL_18;
      }

      v164 = 1;
      v45 = &unk_1009464C0;
      while (v164 < *(v44 + 16))
      {
        sub_1003E4398(&v48[*(isa + 9) * v164], v21);
        if (static Date.< infix(_:_:)())
        {
          sub_1000050A4(v25, &unk_1009464C0, &qword_10079D360);
          sub_100031B58(v21, v25, &unk_1009464C0, &qword_10079D360);
        }

        else
        {
          sub_1000050A4(v21, &unk_1009464C0, &qword_10079D360);
        }

        if (v49 == ++v164)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_49:
      swift_once();
    }

    v61, v62, v63, v64, v65, v66, v67, v68;
    v78 = 1;
    v79 = v210;
    v77 = v205;
LABEL_18:
    v84 = v213;
    (*(isa + 7))(v77, v78, 1, v213);
    v85 = v206;
    sub_100031B58(v77, v206, &qword_100945E58, &unk_1007ACAD0);
    v86 = (*(isa + 6))(v85, 1, v84);
    v87 = v201;
    v88 = v202;
    v89 = v208;
    if (v86 == 1)
    {
      sub_1000050A4(v85, &qword_100945E58, &unk_1007ACAD0);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      v92 = os_log_type_enabled(v90, v91);
      v93 = v207;
      if (v92)
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "No dueDateDelta alarm with future fireDate -- Done", v94, 2u);
      }

      v95 = v196;
      if (*(v79 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_beforeFirstUnlockNotificationEngine))
      {
        v96 = v192;
        (*(v93 + 56))(v192, 1, 1, v53);
        sub_10030418C(v96);
        sub_1000050A4(v96, &unk_100938850, qword_100795AE0);
      }

      (*(v93 + 8))(v212, v53);
      static os_signpost_type_t.end.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v195(v88, v95);
    }

    else
    {
      sub_100031B58(v85, v201, &unk_1009464C0, &qword_10079D360);
      v97 = v203;
      Date.init()();
      v98 = v207;
      v99 = v212;
      v206 = *(v207 + 8);
      (v206)(v212, v53);
      v100 = *(v98 + 32);
      v100(v99, v97, v53);
      v101 = v204;
      sub_1003E4398(v87, v204);

      v100(v89, v101 + SLODWORD(v84[6].isa), v53);
      if (static Date.> infix(_:_:)())
      {
        sub_1003E4398(v87, v101);
        v102 = *v101;

        (v206)(v101 + SLODWORD(v213[6].isa), v53);
        v103 = (v98 + 16);
        v104 = *(v98 + 16);
        v105 = v199;
        v203 = v103;
        v198 = v104;
        (v104)(v199, v89, v53);
        v106 = v200;
        sub_1003E4398(v87, v200);
        v107 = v102;
        v108 = Logger.logObject.getter();
        LODWORD(v102) = static os_log_type_t.default.getter();
        v209 = v107;

        LODWORD(v193) = v102;
        v205 = v108;
        if (os_log_type_enabled(v108, v102))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          v215[0] = v191;
          *v109 = 136447234;
          sub_10049A1D0(&qword_100937010, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v111 = dispatch thunk of CustomStringConvertible.description.getter();
          v112 = v106;
          v114 = v113;
          v115 = v105;
          v116 = v206;
          (v206)(v115, v53);
          v117 = sub_10000668C(v111, v114, v215);
          v114, v118, v119, v120, v121, v122, v123, v124;
          *(v109 + 4) = v117;
          *(v109 + 12) = 2080;
          sub_1003E4398(v112, v101);
          isa_low = SLODWORD(v213[6].isa);
          v214 = *v101;
          v126 = String.init<A>(describing:)();
          v128 = v127;
          sub_1000050A4(v112, &unk_1009464C0, &qword_10079D360);
          v116(v101 + isa_low, v53);
          v129 = sub_10000668C(v126, v128, v215);
          v128, v130, v131, v132, v133, v134, v135, v136;
          *(v109 + 14) = v129;
          *(v109 + 22) = 2114;
          v137 = v209;
          v138 = [v209 objectID];
          *(v109 + 24) = v138;
          v139 = v110;
          *v110 = v138;
          *(v109 + 32) = 2082;
          if ([v137 isRecurrent])
          {
            v140 = 89;
          }

          else
          {
            v140 = 78;
          }

          v141 = sub_10000668C(v140, 0xE100000000000000, v215);
          0xE100000000000000, v142, v143, v144, v145, v146, v147, v148;
          *(v109 + 34) = v141;
          *(v109 + 42) = 2082;
          v87 = v201;
          v149 = v210;
          if ([v137 isOverdue])
          {
            v150 = 89;
          }

          else
          {
            v150 = 78;
          }

          v151 = v211;
          v152 = v202;
          v153 = sub_10000668C(v150, 0xE100000000000000, v215);
          0xE100000000000000, v154, v155, v156, v157, v158, v159, v160;
          *(v109 + 44) = v153;
          v161 = v205;
          _os_log_impl(&_mh_execute_header, v205, v193, "Scheduling next dueDateDelta alarm {fireDate: %{public}s, nextAlarm: %s, reminderID: %{public}@, recurrent: %{public}s, overdue: %{public}s}", v109, 0x34u);
          sub_1000050A4(v139, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          v89 = v208;

          v162 = v192;
          v163 = v116;
        }

        else
        {

          sub_1000050A4(v106, &unk_1009464C0, &qword_10079D360);
          v151 = v53;
          v163 = v206;
          (v206)(v105, v53);
          v162 = v192;
          v149 = v210;
          v152 = v202;
        }

        v188 = *(v149 + OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_beforeFirstUnlockNotificationEngine);
        v187 = v196;
        if (v188)
        {
          (v198)(v162, v89, v151);
          (*(v207 + 56))(v162, 0, 1, v151);
          sub_10030418C(v162);
          sub_1000050A4(v162, &unk_100938850, qword_100795AE0);
        }

        sub_1003B80B8(v89);

        v163(v89, v151);
        sub_1000050A4(v87, &unk_1009464C0, &qword_10079D360);
        v163(v212, v151);
        static os_signpost_type_t.end.getter();
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();
        v189 = v152;
      }

      else
      {
        v165 = v206;
        v166 = v98;
        v167 = v53;
        v168 = v198;
        (*(v166 + 16))(v198, v89, v53);
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v169, v170))
        {
          v171 = v168;
          v172 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          *&v214 = v173;
          *v172 = 136446210;
          v174 = Date.description.getter();
          v176 = v175;
          v165(v171, v167);
          v177 = sub_10000668C(v174, v176, &v214);
          v178 = v176;
          v89 = v208;
          v178, v179, v180, v181, v182, v183, v184, v185;
          *(v172 + 4) = v177;
          _os_log_impl(&_mh_execute_header, v169, v170, "Next dueDateDelta alarm is in the past -- Not adding event {fireDate: %{public}s}", v172, 0xCu);
          sub_10000607C(v173);
          v186 = v202;

          v187 = v196;
        }

        else
        {

          v165(v168, v53);
          v187 = v196;
          v186 = v202;
        }

        sub_100497084(v209);
        v165(v89, v167);
        sub_1000050A4(v201, &unk_1009464C0, &qword_10079D360);
        v165(v212, v167);
        static os_signpost_type_t.end.getter();
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();
        v189 = v186;
      }

      v195(v189, v187);
    }
  }

  else
  {
    if (qword_100936250 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_100006654(v80, qword_1009489F8);
    v213 = Logger.logObject.getter();
    v81 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v213, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v213, v81, "RDDueDateDeltaAlarmProducer.start() must be called before setupTimers", v82, 2u);
    }

    v83 = v213;
  }
}

uint64_t sub_1004986C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v85 = a3;
  v88 = a2;
  v4 = type metadata accessor for Date();
  v81 = *(v4 - 8);
  v5 = v81;
  __chkstk_darwin(v4, v6);
  v82 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v80 - v10;
  __chkstk_darwin(v12, v13);
  v87 = &v80 - v14;
  v15 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v16 = v15 - 8;
  __chkstk_darwin(v15, v17);
  v19 = &v80 - v18;
  sub_1003E4398(a1, &v80 - v18);
  v21 = *v19;
  v20 = *(v19 + 1);
  v22 = *(v5 + 8);
  v22(&v19[*(v16 + 56)], v4);
  sub_1003E4398(a1, v19);
  v23 = *v19;
  v24 = v21;
  v25 = v20;
  v26 = v87;
  v83 = v25;

  v27 = *(v16 + 56);
  v28 = v81;
  (*(v81 + 32))(v26, &v19[v27], v4);
  sub_1003E448C();
  static NSDateInterval.remNotificationFireDateGracePeriod.getter();
  Date.addingTimeInterval(_:)();
  v86 = static Date.> infix(_:_:)();
  v84 = v22;
  v88 = v5 + 8;
  v22(v11, v4);
  if (qword_100936250 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_1009489F8);
  v30 = v82;
  (*(v28 + 16))(v82, v26, v4);
  v31 = v24;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v80 = v35;
    v81 = swift_slowAlloc();
    v89 = v81;
    *v34 = 138544130;
    v36 = [v31 objectID];
    *(v34 + 4) = v36;
    *v35 = v36;
    *(v34 + 12) = 2082;
    v37 = Date.description.getter();
    v39 = v38;
    v40 = v30;
    v41 = v84;
    v84(v40, v4);
    v42 = sub_10000668C(v37, v39, &v89);
    v39, v43, v44, v45, v46, v47, v48, v49;
    *(v34 + 14) = v42;
    *(v34 + 22) = 2082;
    if (v86)
    {
      v50 = 0x657669746361;
    }

    else
    {
      v50 = 0x65766973736170;
    }

    if (v86)
    {
      v51 = 0xE600000000000000;
    }

    else
    {
      v51 = 0xE700000000000000;
    }

    v52 = sub_10000668C(v50, v51, &v89);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v34 + 24) = v52;
    *(v34 + 32) = 2082;
    v26 = v87;
    if ([v31 isRecurrent])
    {
      v60 = 89;
    }

    else
    {
      v60 = 78;
    }

    v61 = sub_10000668C(v60, 0xE100000000000000, &v89);
    0xE100000000000000, v62, v63, v64, v65, v66, v67, v68;
    *(v34 + 34) = v61;
    _os_log_impl(&_mh_execute_header, v32, v33, "RDDueDateDeltaAlarmProducer expired dueDateDelta Alarm {reminderID: %{public}@, fireDate: %{public}s alarmType: %{public}s, recurrent: %{public}s}", v34, 0x2Au);
    sub_1000050A4(v80, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  else
  {

    v69 = v30;
    v41 = v84;
    v84(v69, v4);
  }

  v70 = v83;
  v71 = sub_1007467B8(v83);
  v73 = v72;
  v75 = v74;
  v77 = v76;

  result = v41(v26, v4);
  v79 = v85;
  *v85 = v31;
  v79[1] = v71;
  v79[2] = v73;
  v79[3] = v75;
  *(v79 + 32) = v77;
  *(v79 + 33) = (v86 & 1) == 0;
  *(v79 + 34) = 1;
  return result;
}

void sub_100498C9C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v0[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_started])
  {
    if (qword_100936250 == -1)
    {
LABEL_4:
      v9 = type metadata accessor for Logger();
      sub_100006654(v9, qword_1009489F8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "RDDueDateDeltaAlarmProducer.start() must be called exactly once", v12, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v0[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_started] = 1;
  if (qword_100936250 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_1009489F8);
  v14 = v0;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315138;
    v44 = 60;
    v45 = 0xE100000000000000;
    v46 = v18;
    v19._countAndFlagsBits = sub_100597C80(v14);
    object = v19._object;
    String.append(_:)(v19);
    object, v21, v22, v23, v24, v25, v26, v27;
    v28._countAndFlagsBits = 62;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29 = v45;
    v30 = sub_10000668C(v44, v45, &v46);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v17 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting due date delta alarm producer {producer: %s}", v17, 0xCu);
    sub_10000607C(v18);
  }

  v38 = *&v14[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_timeEventStream + 8];
  ObjectType = swift_getObjectType();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = *(v38 + 8);
  v42 = *(v41 + 16);

  v42(sub_10049A254, v40, ObjectType, v41);

  sub_100496D04();
}

void sub_100499064(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_100936250 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_1009489F8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received RDTimeEventHandler event on RDDueDateDeltaAlarmProducer, reloading alarms.", v6, 2u);
    }

    sub_100496D04();
  }

  else
  {
    if (qword_100936250 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_1009489F8);
    v2 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v2, v8, "Received RDTimeEventHandler event on deallocated RDDueDateDeltaAlarmProducer", v9, 2u);
    }
  }
}

uint64_t sub_100499224()
{
  if (qword_100936250 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_1009489F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Alarm trigger did change for RDDueDateDeltaAlarmProducer", v3, 2u);
  }

  return sub_100496D04();
}

uint64_t sub_100499374@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v70 = type metadata accessor for DateComponents();
  v3 = *(v70 - 8);
  __chkstk_darwin(v70, v4);
  v6 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = v69 - v9;
  __chkstk_darwin(v11, v12);
  v14 = v69 - v13;
  __chkstk_darwin(v15, v16);
  v18 = v69 - v17;
  v19 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v19 - 8, v20);
  v22 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v26 = v69 - v25;
  v27 = type metadata accessor for Date();
  v72 = *(v27 - 8);
  v73 = v27;
  __chkstk_darwin(v27, v28);
  v30 = v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33 = __chkstk_darwin(v31, v32).n128_u64[0];
  v69[0] = v69 - v34;
  v35 = [a1 allDay];
  v71 = a1;
  v36 = [a1 dueDateComponents];
  v37 = v36;
  if (v35)
  {
    if (v36)
    {
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = v70;
      (*(v3 + 32))(v18, v14, v70);
      sub_1004F20E4(v22);
      (*(v3 + 8))(v18, v38);
      v40 = v72;
      v39 = v73;
      v41 = *(v72 + 48);
      if (v41(v22, 1, v73) != 1)
      {
        (*(v40 + 32))(v30, v22, v39);
        sub_1004F2BFC(v30, v26);
        (*(v40 + 8))(v30, v39);
        goto LABEL_7;
      }
    }

    else
    {
      v40 = v72;
      v39 = v73;
      (*(v72 + 56))(v22, 1, 1, v73);
    }

    sub_1000050A4(v22, &unk_100938850, qword_100795AE0);
LABEL_12:
    (*(v40 + 56))(v26, 1, 1, v39);
    goto LABEL_13;
  }

  if (!v36)
  {
    v40 = v72;
    v39 = v73;
    goto LABEL_12;
  }

  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = v70;
  (*(v3 + 32))(v10, v6, v70);
  sub_1004F20E4(v26);
  (*(v3 + 8))(v10, v42);
  v40 = v72;
  v39 = v73;
  v41 = *(v72 + 48);
LABEL_7:
  if (v41(v26, 1, v39) != 1)
  {
    v43 = v69[0];
    (*(v40 + 32))(v69[0], v26, v39);
    v44 = [v69[1] dueDateDelta];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v46 = [v44 addedTo:isa];

    v47 = v74;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v40 + 8))(v43, v39);
    v48 = v47;
    v49 = 0;
    return (*(v40 + 56))(v48, v49, 1, v39);
  }

LABEL_13:
  sub_1000050A4(v26, &unk_100938850, qword_100795AE0);
  if (qword_100936250 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100006654(v50, qword_1009489F8);
  v51 = v71;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v75 = v55;
    *v54 = 136315138;
    v56 = [v51 description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = sub_10000668C(v57, v59, &v75);
    v59, v61, v62, v63, v64, v65, v66, v67;
    *(v54 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "Tried to fire dueDateDelta alarm with nil dueDate {reminder: %s}", v54, 0xCu);
    sub_10000607C(v55);
  }

  v49 = 1;
  v48 = v74;
  return (*(v40 + 56))(v48, v49, 1, v39);
}

uint64_t sub_1004999D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v59 = a2;
  v60 = a3;
  v6 = type metadata accessor for DateComponents();
  v61 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v53 - v12;
  v14 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v14 - 8, v15);
  v58 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = &v53 - v19;
  __chkstk_darwin(v21, v22);
  v24 = &v53 - v23;
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25, v27);
  v62 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v32 = &v53 - v31;
  *&v35 = __chkstk_darwin(v33, v34).n128_u64[0];
  v56 = &v53 - v36;
  if (![a1 allDay])
  {
    v43 = [a1 displayDate];
    if (!v43)
    {
      (*(v26 + 56))(v24, 1, 1, v25);
      goto LABEL_12;
    }

    v44 = v43;
    v45 = [v43 date];

    v42 = v62;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = *(v26 + 32);
    v41(v24, v42, v25);
    (*(v26 + 56))(v24, 0, 1, v25);
    v40 = *(v26 + 48);
    goto LABEL_7;
  }

  v54 = a1;
  v55 = a4;
  v37 = [a1 dueDateComponents];
  if (!v37)
  {
    (*(v26 + 56))(v20, 1, 1, v25);
    goto LABEL_10;
  }

  v38 = v37;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = v61;
  (*(v61 + 32))(v13, v9, v6);
  sub_1004F20E4(v20);
  (*(v39 + 8))(v13, v6);
  v40 = *(v26 + 48);
  if (v40(v20, 1, v25) == 1)
  {
LABEL_10:
    sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
    (*(v26 + 56))(v24, 1, 1, v25);
    a4 = v55;
    goto LABEL_12;
  }

  v41 = *(v26 + 32);
  v41(v32, v20, v25);
  sub_1004F2BFC(v32, v24);
  (*(v26 + 8))(v32, v25);
  a1 = v54;
  a4 = v55;
  v42 = v62;
LABEL_7:
  if (v40(v24, 1, v25) != 1)
  {
    v46 = v56;
    v41(v56, v24, v25);
    v47 = [v57 dueDateDelta];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v49 = [v47 addedTo:isa];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v58;
    (*(v26 + 16))(v58, v42, v25);
    (*(v26 + 56))(v50, 0, 1, v25);
    v60(a1, v59, v50);
    sub_1000050A4(v50, &unk_100938850, qword_100795AE0);
    v51 = *(v26 + 8);
    v51(v42, v25);
    return (v51)(v46, v25);
  }

LABEL_12:
  sub_1000050A4(v24, &unk_100938850, qword_100795AE0);
  return (*(v26 + 56))(a4, 1, 1, v25);
}

uint64_t sub_10049A074(uint64_t a1, uint64_t a2)
{
  result = sub_10049A1D0(&qword_100948A70, a2, type metadata accessor for RDDueDateDeltaAlarmProducer, &protocol conformance descriptor for NSObject);
  *(a1 + 8) = result;
  return result;
}

void sub_10049A0CC()
{
  if (qword_100936250 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_1009489F8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.RDDueDateDeltaAlarmProducer.reload}", v2, 2u);
  }
}

uint64_t sub_10049A1D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_10049A25C(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
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
    v46 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v2 & ~(v2 >> 63), 0);
    v41 = &_swiftEmptyArrayStorage;
    if (v39)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v43 = v3;
    v44 = v4;
    v45 = v39 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v37 = v1 + 56;
      v36 = v1 + 64;
      v38 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v13 = v43;
        v14 = v45;
        v40 = v44;
        v15 = v1;
        sub_100411B0C(v43, v44, v45, v1);
        v17 = v16;
        v18 = [v16 name];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = v41;
        v46 = v41;
        v24 = *v41->clientIdentity;
        v23 = *&v41->clientIdentity[8];
        if (v24 >= v23 >> 1)
        {
          sub_100026EF4((v23 > 1), v24 + 1, 1);
          v22 = v46;
        }

        *v22->clientIdentity = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 4) = v19;
        *(v25 + 5) = v21;
        v41 = v22;
        if (v39)
        {
          if (!v14)
          {
            goto LABEL_40;
          }

          v1 = v15;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v38;
          sub_1000F5104(&qword_100948BD0, &qword_1007ACC18);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v42, 0);
          if (v5 == v38)
          {
LABEL_32:
            sub_100010E34(v43, v44, v45, v7, v8, v9, v10, v11);
            return;
          }
        }

        else
        {
          if (v14)
          {
            goto LABEL_41;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v15;
          v26 = (1 << *(v15 + 32));
          if (v13 >= v26)
          {
            goto LABEL_36;
          }

          v27 = v13 >> 6;
          v28 = *(v37 + 8 * (v13 >> 6));
          if (((v28 >> v13) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v15 + 36) != v40)
          {
            goto LABEL_38;
          }

          v29 = v28 & (-2 << (v13 & 0x3F));
          if (v29)
          {
            v26 = (__clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0);
            v2 = v38;
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v36 + 8 * v27);
            v2 = v38;
            while (v31 < &v26->storeProvider[1] >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                sub_100010E34(v13, v40, 0, v7, v8, v9, v10, v11);
                v26 = (__clz(__rbit64(v33)) + v30);
                goto LABEL_31;
              }
            }

            sub_100010E34(v13, v40, 0, v7, v8, v9, v10, v11);
          }

LABEL_31:
          v35 = *(v15 + 36);
          v43 = v26;
          v44 = v35;
          v45 = 0;
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

uint64_t sub_10049A5C4(unint64_t a1, void *a2, void *a3, void **a4)
{
  v5 = a1;
  if (!a2)
  {
    goto LABEL_13;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
    {
      goto LABEL_4;
    }

LABEL_13:

    return v5;
  }

  v13 = a4;
  v14 = a2;
  v15 = a3;
  v16 = _CocoaArrayWrapper.endIndex.getter();
  a3 = v15;
  a2 = v14;
  a4 = v13;
  if (v16 <= 1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v6 = *a4;
  if (!*a4)
  {
    v10 = a4;
    v11 = a3;
    v8 = a2;
    v12 = sub_100012370(v8, v11);
    if (v4)
    {
    }

    else if (v12)
    {
      *v10 = v12;
      v6 = v12;
      _s19PolymorphicListItemCMa();
      goto LABEL_6;
    }

    return v5;
  }

  v7 = a2;
  _s19PolymorphicListItemCMa();
  v8 = v7;
LABEL_6:
  v9 = v6;
  v5 = REMOrderedIdentifierMap.reorder<A>(objects:)();

  return v5;
}

uint64_t sub_10049A710()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948A78);
  v1 = sub_100006654(v0, qword_100948A78);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10049A7D8(_TtC7remindd19RDXPCStorePerformer *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, _TtC7remindd19RDXPCStorePerformer *a4@<X3>, uint64_t a5@<X8>)
{
  v1009 = a2;
  v1052 = type metadata accessor for REMAccountsListDataView.ReminderCounts.ComputedCountContainer();
  v1042 = *(v1052 - 8);
  __chkstk_darwin(v1052, v10);
  v998 = &v991 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v997 = &v991 - v14;
  __chkstk_darwin(v15, v16);
  v996 = &v991 - v17;
  __chkstk_darwin(v18, v19);
  v995 = &v991 - v20;
  __chkstk_darwin(v21, v22);
  v1038 = &v991 - v23;
  __chkstk_darwin(v24, v25);
  v1024 = &v991 - v26;
  __chkstk_darwin(v27, v28);
  v1043 = &v991 - v29;
  __chkstk_darwin(v30, v31);
  v1029 = &v991 - v32;
  v33 = sub_1000F5104(&qword_100948BE0, &qword_1007ACC20);
  __chkstk_darwin(v33 - 8, v34);
  v1026 = &v991 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v1025 = &v991 - v38;
  __chkstk_darwin(v39, v40);
  v1031 = &v991 - v41;
  __chkstk_darwin(v42, v43);
  v1030 = &v991 - v44;
  v1008 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v1007 = *(v1008 - 8);
  __chkstk_darwin(v1008, v45);
  v1006 = &v991 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1005 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v1003 = *(v1005 - 8);
  __chkstk_darwin(v1005, v47);
  v1004 = &v991 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v49 - 8, v50);
  v1002 = &v991 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1000 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v1000, v52);
  v1001 = &v991 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1011 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters();
  v1010 = *(v1011 - 8);
  __chkstk_darwin(v1011, v54);
  v1028 = &v991 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1076 = sub_1000F5104(&qword_100948BE8, &qword_1007ACC28);
  __chkstk_darwin(v1076, v56);
  v1086 = &v991 - v57;
  v1045 = type metadata accessor for TimeZone();
  *&v1035 = *(v1045 - 8);
  __chkstk_darwin(v1045, v58);
  v1036 = &v991 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1051 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v1051, v60);
  v1050 = &v991 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62, v63);
  v1070 = &v991 - v64;
  v1034 = type metadata accessor for Calendar.SearchDirection();
  v1032 = *(v1034 - 8);
  __chkstk_darwin(v1034, v65);
  v1022 = &v991 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1057 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v1021 = *(v1057 - 8);
  __chkstk_darwin(v1057, v67);
  v1020 = &v991 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1046 = type metadata accessor for Calendar.MatchingPolicy();
  v1019 = *(v1046 - 8);
  __chkstk_darwin(v1046, v69);
  v1018 = &v991 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v71 - 8, v72);
  v1014 = &v991 - v73;
  v74 = sub_1000F5104(&qword_100946078, &qword_1007ACC30);
  __chkstk_darwin(v74 - 8, v75);
  v1013 = &v991 - v76;
  v1017 = type metadata accessor for DateComponents();
  v1016 = *(v1017 - 1);
  __chkstk_darwin(v1017, v77);
  v1040 = &v991 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1041 = type metadata accessor for Calendar();
  v1039 = *(v1041 - 8);
  __chkstk_darwin(v1041, v79);
  v1072 = &v991 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v81 - 8, v82);
  v1049 = &v991 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v84, v85);
  v1015 = &v991 - v86;
  v1066 = type metadata accessor for Date();
  v1056 = *(v1066 - 8);
  __chkstk_darwin(v1066, v87);
  v1023 = &v991 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89, v90);
  v1048 = &v991 - v91;
  __chkstk_darwin(v92, v93);
  v1047 = &v991 - v94;
  __chkstk_darwin(v95, v96);
  v1055 = &v991 - v97;
  v98 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder();
  v1089 = *(v98 - 8);
  v1090 = v98;
  __chkstk_darwin(v98, v99);
  v1085 = (&v991 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v101, v102);
  v1092 = &v991 - v103;
  __chkstk_darwin(v104, v105);
  v1079 = (&v991 - v106);
  __chkstk_darwin(v107, v108);
  v1078 = &v991 - v109;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v1080 = *&PredicateType[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(PredicateType, v110);
  v1065 = &v991 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1088 = type metadata accessor for UUID();
  v1082 = *(v1088 - 8);
  __chkstk_darwin(v1088, v112);
  v1037 = &v991 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v114, v115);
  v1033 = &v991 - v116;
  __chkstk_darwin(v117, v118);
  v1081 = &v991 - v119;
  __chkstk_darwin(v120, v121);
  v1068 = &v991 - v122;
  __chkstk_darwin(v123, v124);
  v1058 = &v991 - v125;
  Predicate = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate();
  v1071 = *(Predicate - 1);
  __chkstk_darwin(Predicate, v126);
  v1060 = (&v991 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = _s10PredicatesOMa(0);
  __chkstk_darwin(v128, v129);
  v1064 = &v991 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1083 = a1;
  v1067 = a4;
  sub_10002D468(0, a1, a4);
  v999 = a5;
  v1012 = a3;
  if (v5)
  {
    if (qword_100936260 != -1)
    {
      swift_once();
    }

    v133 = type metadata accessor for Logger();
    sub_100006654(v133, qword_100948A78);
    swift_errorRetain();
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();

    v136 = os_log_type_enabled(v134, v135);
    v1087 = 0;
    if (v136)
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v1095 = v138;
      *v137 = 136315138;
      swift_getErrorValue();
      v139 = Error.rem_errorDescription.getter();
      v141 = v140;
      v142 = sub_10000668C(v139, v140, &v1095);
      v141, v143, v144, v145, v146, v147, v148, v149;
      *(v137 + 4) = v142;
      _os_log_impl(&_mh_execute_header, v134, v135, "REMAccountsListDataView.Invocation fetchCounts() failed to fetch custom smart lists {error: %s}", v137, 0xCu);
      sub_10000607C(v138);
    }

    v481 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v132 = v131;
    v481 = sub_1000303FC(v131, a3);
    v1087 = 0;
    v132, v482, v483, v484, v485, v486, v487, v488;
  }

  swift_storeEnumTagMultiPayload();
  v150 = sub_1000F5104(&qword_100948BF0, &unk_1007ACC38);
  v151 = *&v1080->storeProvider[10];
  v152 = (v1080->dataAccessRequestsWriter[2] + 32) & ~v1080->dataAccessRequestsWriter[2];
  v1074 = v1080->dataAccessRequestsWriter[2];
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_100791320;
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.date.getter();
  v1075 = v151;
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.flagged.getter();
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.hashtags.getter();
  v154 = sub_1001A5B40(v153);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v1100 = v154;
  v1084 = v481;
  if (v481 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((v481 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v1091 = i;
    v1063 = v152;
    v1062 = v150;
    if (i)
    {
      v156 = swift_allocObject();
      *(v156 + 16) = xmmword_100791300;
      static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.account.getter();
      sub_100391CDC(v156);
      swift_setDeallocating();
      (*v1080->storeController)(v156 + v152, PredicateType);
      swift_deallocClassInstance();
      v1099 = v1100;
      v154 = v1084;
      v1093 = (v1084 & 0xC000000000000001);
      v150 = v1084 & 0xFFFFFFFFFFFFFF8;
      v1044 = v1100;

      v152 = 0;
      while (1)
      {
        if (v1093)
        {
          v157 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v152 >= *(v150 + 16))
          {
            goto LABEL_75;
          }

          v157 = *&v154->clientIdentity[8 * v152 + 16];
        }

        v158 = v157;
        v159 = (v152 + 1);
        if (__OFADD__(v152, 1))
        {
          break;
        }

        v160 = [v157 customContext];
        if (v160)
        {
          v161 = v160;
          v162 = REMSmartListCustomContext.filter.getter();

          if (v162)
          {
            v163 = static Set<>.typesSupportedByCustomSmartList.getter();
            v1097 = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
            v1098 = sub_10012DEEC();
            v1095 = v1083;
            v164 = v1083;
            v165 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

            v163, v166, v167, v168, v169, v170, v171, v172;
            sub_10000607C(&v1095);
            v1095 = v165;
            sub_1000F5104(&qword_100949370, &unk_100797770);
            sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770, &protocol conformance descriptor for [A]);
            v173 = Sequence<>.postFetchPredicateTypes.getter();
            v174 = v165;
            v154 = v1084;
            v174, v175, v176, v177, v178, v179, v180, v181;
            sub_100355A34(v173);
          }
        }

        ++v152;
        if (v159 == v1091)
        {
          v182 = v1099;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v1093 = (v1084 & 0xC000000000000001);
    v182 = v154;
    v150 = v1084 & 0xFFFFFFFFFFFFFF8;

    v1044 = v154;
LABEL_23:
    v183 = sub_100235F88(v182);
    v1095 = v183;
    sub_1000F5104(&qword_100948BF8, &unk_1007ACC48);
    v152 = sub_10000CB48(&qword_100948C00, &qword_100948BF8, &unk_1007ACC48, &protocol conformance descriptor for Set<A>);
    v184 = &protocol witness table for String;
    v185 = v1087;
    v186 = Sequence.mapToSet<A>(_:)();
    v187 = v185;
    v183, v188, v189, v190, v191, v192, v193, v194;
    v1054 = v186;
    v1099 = v186;
    v195 = sub_100235FA0(v182);
    v1095 = v195;
    v196 = Sequence.mapToSet<A>(_:)();
    v1061 = v185;
    v195, v197, v198, v199, v200, v201, v202, v203;
    v1053 = v196;
    v1094[1] = v196;
    v1087 = sub_10038DE1C(&_swiftEmptyArrayStorage);
    v1069 = (v1082 + 8);
    v1059 = v182;
    v211 = v1091;
    if (!v1091)
    {
      break;
    }

    v212 = 0;
    LODWORD(v1027) = enum case for REMCustomSmartListFilterDescriptor.PostFetchPredicate.account(_:);
    v994 = v1071 + 104;
    v993 = v1071 + 16;
    v992 = (v1071 + 8);
    v991 = xmmword_100791300;
    v154 = v1084;
    while (1)
    {
      if (v1093)
      {
        v213 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v212 >= *(v150 + 16))
        {
          goto LABEL_77;
        }

        v213 = *&v154->clientIdentity[8 * v212 + 16];
      }

      v184 = v213;
      v187 = v212 + 1;
      if (__OFADD__(v212, 1))
      {
        break;
      }

      v214 = [v213 customContext];
      if (v214 && (v215 = v214, v152 = REMSmartListCustomContext.filter.getter(), v215, v152))
      {
        v216 = [v184 accountID];
        v217 = [v216 uuid];

        v218 = v1060;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v219 = v1071;
        (*(v1071 + 104))(v218, v1027, Predicate);
        v220 = static Set<>.typesSupportedByCustomSmartList.getter();
        v1097 = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
        v1098 = sub_10012DEEC();
        v1095 = v1083;
        v221 = v1083;
        v222 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

        v220, v223, v224, v225, v226, v227, v228, v229;
        sub_10000607C(&v1095);
        sub_1000F5104(&qword_100943DE8, &qword_1007A4580);
        v230 = (*(v219 + 80) + 32) & ~*(v219 + 80);
        v231 = swift_allocObject();
        *(v231 + 16) = v991;
        (*(v219 + 16))(v231 + v230, v218, Predicate);
        v1095 = v222;
        sub_100271FF8(v231);
        v232 = v1095;
        v233 = [v184 objectID];
        v234 = [v233 uuid];

        v235 = v1058;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v154 = v1084;
        v236 = v1087;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v1095 = v236;
        sub_1002C707C(v232, v235, isUniquelyReferenced_nonNull_native);
        v238 = v235;
        v182 = v1059;
        (*v1069)(v238, v1088);

        v1087 = v1095;
        v239 = *(v219 + 8);
        v211 = v1091;
        v239(v1060, Predicate);
        v212 = v187;
        if (v187 == v211)
        {
          goto LABEL_36;
        }
      }

      else
      {

        ++v212;
        if (v187 == v211)
        {
          goto LABEL_36;
        }
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

  v154 = v1084;
LABEL_36:
  v154, v204, v205, v206, v207, v208, v209, v210;
  v240 = v1065;
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.location.getter();
  v241 = sub_100240F04(v240, v182);
  v242 = *v1080->storeController;
  v243 = PredicateType;
  v242(v240, PredicateType);
  v244 = v1063;
  v245 = swift_allocObject();
  *(v245 + 16) = xmmword_100791300;
  static REMCustomSmartListFilterDescriptor.PostFetchPredicateType.lists.getter();

  v1080 = sub_1007274FC(v245, v182);
  swift_setDeallocating();
  v242(v244 + v245, v243);
  swift_deallocClassInstance();
  if ((v241 & 1) == 0)
  {
    sub_100378434(&v1095, 0x6564692E7473696CLL, 0xEF7265696669746ELL);
    v1096, v354, v355, v356, v357, v358, v359, v360;
    if (*v1087->clientIdentity)
    {
      sub_100378434(&v1095, 0xD000000000000012, 0x80000001007F1FC0);
      v1096, v361, v362, v363, v364, v365, v366, v367;
    }

    v368 = sub_100043AA8();
    v261 = sub_1005362CC(v1067, v368);

    [v261 setReturnsDistinctResults:0];

    v376 = sub_100530204(v1054, v369, v370, v371, v372, v373, v374, v375);
    v377 = sub_10003450C(v376);
    v376, v378, v379, v380, v381, v382, v383, v384;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v377, v386, v387, v388, v389, v390, v391, v392;
    [v261 setPropertiesToFetch:isa];

    v401 = sub_100530204(v393, v394, v395, v396, v397, v398, v399, v400);
    v402 = Array._bridgeToObjectiveC()().super.isa;
    v401, v403, v404, v405, v406, v407, v408, v409;
    [v261 setRelationshipKeyPathsForPrefetching:v402];

    if (qword_100936260 != -1)
    {
      swift_once();
    }

    v410 = type metadata accessor for Logger();
    sub_100006654(v410, qword_100948A78);
    v411 = v1059;

    v412 = Logger.logObject.getter();
    v413 = static os_log_type_t.default.getter();
    v411, v414, v415, v416, v417, v418, v419, v420;
    if (os_log_type_enabled(v412, v413))
    {
      v421 = swift_slowAlloc();
      v422 = swift_slowAlloc();
      v1095 = v422;
      *v421 = 136315138;
      sub_100030E90(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
      v423 = Set.description.getter();
      v425 = v424;
      v426 = sub_10000668C(v423, v424, &v1095);
      v425, v427, v428, v429, v430, v431, v432, v433;
      *(v421 + 4) = v426;
      _os_log_impl(&_mh_execute_header, v412, v413, "Computing reminders count in every list by fetching reminders as dictionaries {postFetchPredicateTypes: %s}", v421, 0xCu);
      sub_10000607C(v422);
    }

    sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
    v434 = v1061;
    v435 = NSManagedObjectContext.fetch<A>(_:)();
    if (!v434)
    {
      v336 = v435;
      v1027 = 0;
      if (v435 >> 62)
      {
        v471 = _CocoaArrayWrapper.endIndex.getter();
        if (!v471)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v471 = *((v435 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v471)
        {
          goto LABEL_82;
        }
      }

      v1091 = v261;
      v1095 = &_swiftEmptyArrayStorage;
      sub_100253360(0, v471 & ~(v471 >> 63), 0);
      if (v471 < 0)
      {
        goto LABEL_297;
      }

      v472 = 0;
      v1093 = v1095;
      do
      {
        if ((v336 & 0xC000000000000001) != 0)
        {
          v473 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v473 = *(v336 + 8 * v472 + 32);
        }

        v474 = v473;
        v475 = v1080;

        v476 = v1078;
        REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(dictionary:forEvaluatingAgainst:)(v474, v475, v1078);
        v477 = v1093;
        v1095 = v1093;
        v479 = *v1093->clientIdentity;
        v478 = *&v1093->clientIdentity[8];
        if (v479 >= v478 >> 1)
        {
          sub_100253360((v478 > 1), v479 + 1, 1);
          v477 = v1095;
        }

        ++v472;
        *v477->clientIdentity = v479 + 1;
        v480 = (*(v1089 + 80) + 32) & ~*(v1089 + 80);
        v1093 = v477;
        (*(v1089 + 32))(v477 + v480 + *(v1089 + 72) * v479, v476, v1090);
      }

      while (v471 != v472);
LABEL_73:
      v336, v347, v348, v349, v350, v351, v352, v353;

      goto LABEL_83;
    }

LABEL_62:
    v1044, v329, v330, v331, v332, v333, v334, v335;
    v1054, v436, v437, v438, v439, v440, v441, v442;
    v1053, v443, v444, v445, v446, v447, v448, v449;
    v1059, v450, v451, v452, v453, v454, v455, v456;
    v1080, v457, v458, v459, v460, v461, v462, v463;
    v1087, v464, v465, v466, v467, v468, v469, v470;

    sub_100025434(v1064, _s10PredicatesOMa);
    return;
  }

  sub_100378434(&v1095, 1953720684, 0xE400000000000000);
  v1096, v246, v247, v248, v249, v250, v251, v252;
  if (*v1087->clientIdentity)
  {
    sub_100378434(&v1095, 0x746E756F636361, 0xE700000000000000);
    v1096, v253, v254, v255, v256, v257, v258, v259;
  }

  v260 = sub_100043AA8();
  v261 = sub_100050654(0, 0, v1067, v260);

  [v261 setReturnsDistinctResults:0];

  v270 = sub_100530204(v262, v263, v264, v265, v266, v267, v268, v269);
  v271 = sub_10003450C(v270);
  v270, v272, v273, v274, v275, v276, v277, v278;
  v279 = Array._bridgeToObjectiveC()().super.isa;
  v271, v280, v281, v282, v283, v284, v285, v286;
  [v261 setPropertiesToFetch:v279];

  v294 = sub_100530204(v1053, v287, v288, v289, v290, v291, v292, v293);
  v295 = Array._bridgeToObjectiveC()().super.isa;
  v294, v296, v297, v298, v299, v300, v301, v302;
  [v261 setRelationshipKeyPathsForPrefetching:v295];

  if (qword_100936260 != -1)
  {
    swift_once();
  }

  v303 = type metadata accessor for Logger();
  sub_100006654(v303, qword_100948A78);
  v304 = v1059;

  v305 = Logger.logObject.getter();
  v306 = static os_log_type_t.default.getter();
  v304, v307, v308, v309, v310, v311, v312, v313;
  if (os_log_type_enabled(v305, v306))
  {
    v314 = swift_slowAlloc();
    v315 = swift_slowAlloc();
    v1095 = v315;
    *v314 = 136315138;
    sub_100030E90(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
    v316 = Set.description.getter();
    v318 = v317;
    v319 = sub_10000668C(v316, v317, &v1095);
    v318, v320, v321, v322, v323, v324, v325, v326;
    *(v314 + 4) = v319;
    _os_log_impl(&_mh_execute_header, v305, v306, "Computing reminders count in every list by fetching reminders as an array of REMCDReminder {postFetchPredicateTypes: %s}", v314, 0xCu);
    sub_10000607C(v315);
  }

  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v327 = v1061;
  v328 = NSManagedObjectContext.fetch<A>(_:)();
  if (v327)
  {
    goto LABEL_62;
  }

  v336 = v328;
  v1027 = 0;
  if (v328 >> 62)
  {
    v337 = _CocoaArrayWrapper.endIndex.getter();
    if (!v337)
    {
      goto LABEL_82;
    }

LABEL_46:
    v1091 = v261;
    v1095 = &_swiftEmptyArrayStorage;
    sub_100253360(0, v337 & ~(v337 >> 63), 0);
    if (v337 < 0)
    {
      goto LABEL_296;
    }

    v338 = 0;
    v1093 = v1095;
    do
    {
      if ((v336 & 0xC000000000000001) != 0)
      {
        v339 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v339 = *(v336 + 8 * v338 + 32);
      }

      v340 = v339;
      v341 = v1080;

      v342 = v1079;
      sub_10059062C(v340, v341, v1079);
      v343 = v1093;
      v1095 = v1093;
      v345 = *v1093->clientIdentity;
      v344 = *&v1093->clientIdentity[8];
      if (v345 >= v344 >> 1)
      {
        sub_100253360((v344 > 1), v345 + 1, 1);
        v343 = v1095;
      }

      ++v338;
      *v343->clientIdentity = v345 + 1;
      v346 = (*(v1089 + 80) + 32) & ~*(v1089 + 80);
      v1093 = v343;
      (*(v1089 + 32))(v343 + v346 + *(v1089 + 72) * v345, v342, v1090);
    }

    while (v337 != v338);
    goto LABEL_73;
  }

  v337 = *((v328 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v337)
  {
    goto LABEL_46;
  }

LABEL_82:

  v336, v489, v490, v491, v492, v493, v494, v495;
  v1093 = &_swiftEmptyArrayStorage;
LABEL_83:
  Date.init()();
  v496 = [objc_opt_self() currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  v1039[7](v1013, 1, 1, v1041);
  (*(v1035 + 56))(v1014, 1, 1, v1045);
  v990 = 0;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v497 = v1019;
  v498 = v1018;
  v1019[13](v1018, enum case for Calendar.MatchingPolicy.nextTime(_:), v1046);
  v499 = v1021;
  v500 = v1020;
  (*(v1021 + 104))(v1020, enum case for Calendar.RepeatedTimePolicy.first(_:), v1057);
  v501 = v1032;
  v502 = v1022;
  v503 = v1034;
  (*(v1032 + 104))(v1022, enum case for Calendar.SearchDirection.forward(_:), v1034);
  v504 = v1015;
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  v505 = v504;
  (*(v501 + 8))(v502, v503);
  (*(v499 + 8))(v500, v1057);
  (v497[1])(v498, v1046);
  (*(v1016 + 8))(v1040, v1017);
  (v1039[1])(v1072, v1041);
  v506 = v1056;
  v508 = (v1056 + 6);
  v507 = v1056[6];
  v509 = v1066;
  v510 = (v507)(v505, 1, v1066);
  v1039 = v507;
  if (v510 == 1)
  {
    (v506[2])(v1047, v1055, v509);
    if ((v507)(v505, 1, v509) != 1)
    {
      sub_1000050A4(v505, &unk_100938850, qword_100795AE0);
    }
  }

  else
  {
    (v506[4])(v1047, v505, v509);
  }

  v1013 = objc_opt_self();
  v511 = [v1013 siriFoundInAppsListID];
  v512 = [v511 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v513 = objc_opt_self();
  v514 = [v513 daemonUserDefaults];
  v515 = [v514 treatRemindersAsNotOverdue];

  v516 = [v513 daemonUserDefaults];
  LODWORD(v1020) = [v516 showRemindersAsOverdue];

  v525 = v1093;
  v526 = *v1093->clientIdentity;
  v184 = v1090;
  if (v526)
  {
    v1034 = v508;
    v1079 = 0;
    v1046 = 0;
    v1062 = 0;
    v994 = 0;
    v1022 = 0;
    v1040 = 0;
    v1061 = 0;
    v993 = 0;
    v992 = 0;
    v1021 = 0;
    v1041 = 0;
    v1014 = 0;
    v1015 = 0;
    v1032 = 0;
    v1075 = 0;
    v187 = 0;
    LODWORD(v1016) = v515 ^ 1;
    v1074 = v1093 + ((*(v1089 + 80) + 32) & ~*(v1089 + 80));
    v1084 = v1089 + 16;
    Predicate = (v1082 + 48);
    v1060 = (v1082 + 32);
    v1019 = (v506 + 4);
    v1018 = (v506 + 1);
    v527 = (v1035 + 8);
    v1091 = (v1082 + 16);
    v1078 = &v1087->storeProvider[2];
    v336 = v1089 + 8;
    *&v524 = 136446210;
    v1035 = v524;
    PredicateType = _swiftEmptyDictionarySingleton;
    v1063 = _swiftEmptyDictionarySingleton;
    v1067 = _swiftEmptyDictionarySingleton;
    v1065 = _swiftEmptyDictionarySingleton;
    v528 = v1088;
    v529 = v1070;
    v530 = v1085;
    v1057 = v526;
    v1017 = v527;
    v1072 = (v1089 + 8);
    while (1)
    {
      if (v187 >= *v525->clientIdentity)
      {
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
        goto LABEL_271;
      }

      v538 = *(v1089 + 16);
      v538(v1092, &v1074[*(v1089 + 72) * v187], v184);
      REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.listIdentifier.getter();
      if ((*Predicate)(v529, 1, v528) == 1)
      {
        sub_1000050A4(v529, &unk_100939D90, "8\n\r");
        if (qword_100936260 != -1)
        {
          swift_once();
        }

        v539 = type metadata accessor for Logger();
        sub_100006654(v539, qword_100948A78);
        v538(v530, v1092, v184);
        v540 = Logger.logObject.getter();
        v541 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v540, v541))
        {
          v542 = swift_slowAlloc();
          v543 = swift_slowAlloc();
          v1095 = v543;
          *v542 = v1035;
          REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.identifier.getter();
          v544 = v1085;
          v545 = String.init<A>(describing:)();
          v1071 = v187;
          v546 = v184;
          v548 = v547;
          v549 = v1072;
          (*v1072)(v544, v546);
          v550 = sub_10000668C(v545, v548, &v1095);
          v551 = v548;
          v184 = v546;
          v187 = v1071;
          v551, v552, v553, v554, v555, v556, v557, v558;
          *(v542 + 4) = v550;
          _os_log_impl(&_mh_execute_header, v540, v541, "Reminder missing list identifier. Skipping {reminder.identifier: %{public}s}", v542, 0xCu);
          sub_10000607C(v543);
          v526 = v1057;

          v528 = v1088;

          v336 = v549;
          v530 = v544;
        }

        else
        {

          v336 = v1072;
          (*v1072)(v530, v184);
        }

        v529 = v1070;
        goto LABEL_91;
      }

      v336 = v1081;
      (*v1060)(v1081, v529, v528);
      sub_100030E90(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      (*v1069)(v336, v528);
      if (__OFADD__(v1062, 1))
      {
        goto LABEL_277;
      }

      ++v1062;
LABEL_185:
      v336 = v1072;
LABEL_91:
      ++v187;
      (*v336)(v1092, v184);
      v525 = v1093;
      if (v187 == v526)
      {
        v655 = v1093;
        v1087, v531, v532, v533, v534, v535, v536, v537;
        v655, v656, v657, v658, v659, v660, v661, v662;
        v506 = v1056;
        v187 = v1065;
        goto LABEL_188;
      }
    }

    v1061 = (&v1075->super.isa + 1);
    if (__OFADD__(v1075, 1))
    {
      goto LABEL_276;
    }

    v559 = v1049;
    REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.displayDateDate.getter();
    v336 = v1066;
    v560 = (v1039)(v559, 1, v1066);
    v1071 = v187;
    if (v560 == 1)
    {
      sub_1000050A4(v559, &unk_100938850, qword_100795AE0);
      LODWORD(v1075) = 0;
      v561 = v1065;
LABEL_120:
      v576 = REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.flagged.getter();
      if (v576 != 2 && (v576 & 1) != 0)
      {
        if (__OFADD__(v1014, 1))
        {
          goto LABEL_288;
        }

        v992 = v1014 + 1;
        if (v1075)
        {
          v575 = __OFADD__(v993++, 1);
          if (v575)
          {
            goto LABEL_295;
          }
        }

        ++v1014;
      }

      sub_10003E114(v1079, 0);
      v577 = swift_isUniquelyReferenced_nonNull_native();
      v1095 = v561;
      v336 = sub_100363F20(v1081);
      v579 = *(v561 + 2);
      v580 = (v578 & 1) == 0;
      v581 = v579 + v580;
      if (__OFADD__(v579, v580))
      {
        goto LABEL_278;
      }

      v582 = v578;
      if (*(v561 + 3) >= v581)
      {
        v586 = v1086;
        if ((v577 & 1) == 0)
        {
          sub_1003733B8();
          v586 = v1086;
        }

        v583 = v1081;
        v587 = v1095;
        if (v582)
        {
          goto LABEL_135;
        }
      }

      else
      {
        sub_10036A508(v581, v577);
        v583 = v1081;
        v584 = sub_100363F20(v1081);
        if ((v582 & 1) != (v585 & 1))
        {
          goto LABEL_300;
        }

        v336 = v584;
        v586 = v1086;
        v587 = v1095;
        if (v582)
        {
LABEL_135:
          v589 = *&v587->clientIdentity[40];
          v590 = *(v589 + 8 * v336);
          v575 = __OFADD__(v590, 1);
          v591 = v590 + 1;
          if (v575)
          {
            goto LABEL_279;
          }

          *(v589 + 8 * v336) = v591;
          v1065 = v587;
          if (v1075)
          {
            sub_10003E114(v1046, 0);
            v592 = v1063;
            v593 = swift_isUniquelyReferenced_nonNull_native();
            v594 = v583;
            v595 = v593;
            v1095 = v592;
            v336 = sub_100363F20(v594);
            v597 = *v592->clientIdentity;
            v598 = (v596 & 1) == 0;
            v599 = v597 + v598;
            if (__OFADD__(v597, v598))
            {
              goto LABEL_282;
            }

            v600 = v596;
            if (*&v592->clientIdentity[8] >= v599)
            {
              v586 = v1086;
              if ((v595 & 1) == 0)
              {
                sub_1003733B8();
                v586 = v1086;
              }

              v583 = v1081;
            }

            else
            {
              sub_10036A508(v599, v595);
              v583 = v1081;
              v601 = sub_100363F20(v1081);
              if ((v600 & 1) != (v602 & 1))
              {
                goto LABEL_300;
              }

              v336 = v601;
              v586 = v1086;
            }

            v603 = v1095;
            v1063 = v1095;
            if ((v600 & 1) == 0)
            {
              v604 = v1058;
              (*v1091)(v1058, v583, v1088);
              v586 = v1086;
              sub_1002CB194(v336, v604, 0, v1063);
              v603 = v1063;
            }

            v605 = *&v603->clientIdentity[40];
            v606 = *(v605 + 8 * v336);
            v575 = __OFADD__(v606, 1);
            v607 = v606 + 1;
            if (v575)
            {
              goto LABEL_283;
            }

            *(v605 + 8 * v336) = v607;
            if (__OFADD__(v1040, 1))
            {
              goto LABEL_284;
            }

            v336 = v184;
            ++v1040;
            v1046 = sub_1004A5B14;
          }

          else
          {
            v336 = v184;
          }

          v608 = 1 << v1087->clientIdentity[16];
          if (v608 < 64)
          {
            v609 = ~(-1 << v608);
          }

          else
          {
            v609 = -1;
          }

          v187 = v609 & *&v1087->storeProvider[2];
          v583 = ((v608 + 63) >> 6);

          v184 = 0;
          v528 = v1088;
LABEL_156:
          if (v187)
          {
            goto LABEL_161;
          }

          while (1)
          {
            v618 = v184 + 1;
            if (__OFADD__(v184, 1))
            {
              __break(1u);
              goto LABEL_195;
            }

            if (v618 >= v583)
            {
              break;
            }

            v187 = *&v1078[8 * v618];
            ++v184;
            if (v187)
            {
              v184 = v618;
LABEL_161:
              v619 = __clz(__rbit64(v187)) | (v184 << 6);
              v620 = v1087;
              v621 = *(v1082 + 72);
              v622 = *&v1087->clientIdentity[32] + v621 * v619;
              v1079 = *(v1082 + 16);
              (v1079)(v586, v622, v528);
              v623 = *(*&v620->clientIdentity[40] + 8 * v619);
              *(v586 + *(v1076 + 48)) = v623;
              v1095 = v623;

              v336 = sub_1000F5104(&qword_100949370, &unk_100797770);
              sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770, &protocol conformance descriptor for [A]);
              if ((Sequence<>.evaluate(with:)() & 1) == 0)
              {
                v530 = v1085;
                goto LABEL_155;
              }

              v624 = PredicateType;
              v625 = swift_isUniquelyReferenced_nonNull_native();
              v1095 = v624;
              v626 = sub_100363F20(v586);
              v628 = *v624->clientIdentity;
              v629 = (v627 & 1) == 0;
              v575 = __OFADD__(v628, v629);
              v630 = v628 + v629;
              if (v575)
              {
                goto LABEL_269;
              }

              v336 = v627;
              if (*&v624->clientIdentity[8] >= v630)
              {
                v530 = v1085;
                if ((v625 & 1) == 0)
                {
                  v653 = v626;
                  sub_1003733B8();
                  v626 = v653;
                }
              }

              else
              {
                sub_10036A508(v630, v625);
                v626 = sub_100363F20(v1086);
                v530 = v1085;
                if ((v336 & 1) != (v631 & 1))
                {
                  goto LABEL_300;
                }
              }

              v528 = v1088;
              v586 = v1086;
              v632 = v1095;
              if ((v336 & 1) == 0)
              {
                v633 = v1095;
                *(v1095 + 8 * (v626 >> 6) + 64) |= 1 << v626;
                v336 = v626;
                (v1079)(*&v632->clientIdentity[32] + v626 * v621, v586, v528);
                *(*&v633->clientIdentity[40] + 8 * v336) = 0;
                v634 = *v633->clientIdentity;
                v575 = __OFADD__(v634, 1);
                v635 = v634 + 1;
                if (v575)
                {
                  goto LABEL_273;
                }

                v632 = v633;
                v626 = v336;
                *v633->clientIdentity = v635;
              }

              PredicateType = v632;
              v636 = *&v632->clientIdentity[40];
              v637 = *(v636 + 8 * v626);
              v575 = __OFADD__(v637, 1);
              v638 = v637 + 1;
              if (v575)
              {
                goto LABEL_270;
              }

              *(v636 + 8 * v626) = v638;
              if (v1075)
              {
                v639 = v1067;
                v640 = swift_isUniquelyReferenced_nonNull_native();
                v1095 = v639;
                v641 = sub_100363F20(v586);
                v643 = *v639->clientIdentity;
                v644 = (v642 & 1) == 0;
                v575 = __OFADD__(v643, v644);
                v645 = v643 + v644;
                if (v575)
                {
                  goto LABEL_274;
                }

                v336 = v642;
                if (*&v639->clientIdentity[8] >= v645)
                {
                  if ((v640 & 1) == 0)
                  {
                    v654 = v641;
                    sub_1003733B8();
                    v641 = v654;
                  }
                }

                else
                {
                  sub_10036A508(v645, v640);
                  v641 = sub_100363F20(v1086);
                  if ((v336 & 1) != (v646 & 1))
                  {
LABEL_300:
                    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                    __break(1u);
LABEL_301:
                    type metadata accessor for REMObjectID_Codable();
                    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                    __break(1u);
LABEL_302:

                    v1095, v983, v984, v985, v986, v987, v988, v989;
                    __break(1u);
                    return;
                  }
                }

                v528 = v1088;
                v586 = v1086;
                v647 = v1095;
                if ((v336 & 1) == 0)
                {
                  *(v1095 + 8 * (v641 >> 6) + 64) |= 1 << v641;
                  v336 = v641;
                  (v1079)(*&v647->clientIdentity[32] + v641 * v621, v586, v528);
                  *(*&v647->clientIdentity[40] + 8 * v336) = 0;
                  v648 = *v647->clientIdentity;
                  v575 = __OFADD__(v648, 1);
                  v649 = v648 + 1;
                  if (v575)
                  {
                    goto LABEL_280;
                  }

                  v641 = v336;
                  *v647->clientIdentity = v649;
                }

                v1067 = v647;
                v650 = *&v647->clientIdentity[40];
                v651 = *(v650 + 8 * v641);
                v575 = __OFADD__(v651, 1);
                v652 = v651 + 1;
                if (v575)
                {
                  goto LABEL_275;
                }

                *(v650 + 8 * v641) = v652;
              }

LABEL_155:
              v187 &= v187 - 1;
              v610 = sub_1000050A4(v586, &qword_100948BE8, &qword_1007ACC28);
              v336 = v1090;
              goto LABEL_156;
            }
          }

          (*v1069)(v1081, v528);
          v1079 = sub_1004A5B14;
          v1075 = v1061;
          v529 = v1070;
          v184 = v336;
          v526 = v1057;
          v187 = v1071;
          goto LABEL_185;
        }
      }

      v588 = v1058;
      (*v1091)(v1058, v583, v1088);
      v586 = v1086;
      sub_1002CB194(v336, v588, 0, v587);
      goto LABEL_135;
    }

    (*v1019)(v1048, v559, v336);
    v1041 = v1032 + 1;
    if (__OFADD__(v1032, 1))
    {
      goto LABEL_281;
    }

    LODWORD(v1075) = static Date.< infix(_:_:)();
    v562.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v563.super.isa = Date._bridgeToObjectiveC()().super.isa;
    LODWORD(v1032) = REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.displayDateIsAllDay.getter();
    v564 = REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.displayDateSecondsFromGMT.getter();
    if (v565)
    {
      v566 = v1036;
      static TimeZone.current.getter();
      v567 = v1023;
      Date.init()();
      v568 = TimeZone.secondsFromGMT(for:)();
      v336 = v1018;
      v569 = v1066;
      (*v1018)(v567, v1066);
      v570 = v1017;
      v571 = v1045;
      (*v1017)(v566, v1045);
    }

    else
    {
      v568 = v564;
      v569 = v1066;
      v571 = v1045;
      v566 = v1036;
      v336 = v1018;
      v570 = v1017;
    }

    static TimeZone.current.getter();
    v187 = TimeZone._bridgeToObjectiveC()().super.isa;
    (*v570)(v566, v571);
    v572 = objc_opt_self();
    LOBYTE(v990) = v1016;
    v573 = [v572 isDate:v562.super.isa overdueAtReferenceDate:v563.super.isa allDay:v1032 & 1 floatingDateSecondsFromGMT:v568 floatingDateTargetTimeZone:v187 showAllDayRemindersAsOverdue:v1016 & v1020 showTimedRemindersAsOverdue:v990];

    (*v336)(v1048, v569);
    if (v1075)
    {
      v574 = v1015 + 1;
      v184 = v1090;
      v530 = v1085;
      v561 = v1065;
      if (__OFADD__(v1015, 1))
      {
        goto LABEL_287;
      }

      if (v573)
      {
        v575 = __OFADD__(v994++, 1);
        if (v575)
        {
          goto LABEL_294;
        }

        ++v1015;
        goto LABEL_115;
      }

      LODWORD(v1075) = 0;
      v1022 = ++v1015;
    }

    else
    {
      v184 = v1090;
      v530 = v1085;
      v561 = v1065;
      if (v573)
      {
        v574 = v1022;
LABEL_115:
        if (__OFADD__(v1021, 1))
        {
          goto LABEL_289;
        }

        ++v1021;
        v1022 = v574;
        LODWORD(v1075) = 1;
        goto LABEL_119;
      }

      LODWORD(v1075) = 0;
    }

LABEL_119:
    v1032 = v1041;
    goto LABEL_120;
  }

  v670 = v1093;
  v1087, v517, v518, v519, v520, v521, v522, v523;
  v670, v671, v672, v673, v674, v675, v676, v677;
  v1079 = 0;
  v1046 = 0;
  v1062 = 0;
  v994 = 0;
  v1022 = 0;
  v1040 = 0;
  v1061 = 0;
  v993 = 0;
  v992 = 0;
  v1021 = 0;
  v1041 = 0;
  v187 = _swiftEmptyDictionarySingleton;
  v1067 = _swiftEmptyDictionarySingleton;
  PredicateType = _swiftEmptyDictionarySingleton;
  v1063 = _swiftEmptyDictionarySingleton;
  v528 = v1088;
LABEL_188:
  v1059, v663, v664, v665, v666, v667, v668, v669;
  v1080, v678, v679, v680, v681, v682, v683, v684;
  v685 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.AssignedInvocation());
  v1087 = [v685 initWithFetchResultTokenToDiffAgainst:v1009];
  v686 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v687 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v688 = v1001;
  (*(*(v687 - 8) + 104))(v1001, v686, v687);
  swift_storeEnumTagMultiPayload();
  sub_100539164(v1002);
  sub_100025434(v688, _s9UtilitiesO12SortingStyleOMa);
  (*(v1003 + 104))(v1004, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v1005);
  (*(v1007 + 104))(v1006, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v1008);
  v689 = v1028;
  REMRemindersListDataView.AssignedInvocation.Parameters.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:currentUserShareParticipantIDsOverride:)();
  v690 = v1027;
  v691 = sub_100753DE0(v1083);
  if (v690)
  {
    v701 = v1079;

    (*(v1010 + 8))(v689, v1011);
    (*v1069)(v1068, v528);
    v702 = v506[1];
    v703 = v1066;
    v702(v1047, v1066);
    v702(v1055, v703);
    v1044, v704, v705, v706, v707, v708, v709, v710;
    v1054, v711, v712, v713, v714, v715, v716, v717;
    v1053, v718, v719, v720, v721, v722, v723, v724;
    sub_100025434(v1064, _s10PredicatesOMa);
    v1063, v725, v726, v727, v728, v729, v730, v731;
    PredicateType, v732, v733, v734, v735, v736, v737, v738;
    v1067, v739, v740, v741, v742, v743, v744, v745;
    v187, v746, v747, v748, v749, v750, v751, v752;
    sub_10003E114(v701, 0);
    sub_10003E114(v1046, 0);
  }

  else
  {
    v692 = v691;
    sub_100754818(v691);
    v336 = v693;
    v184 = 0;
    v692, v694, v695, v696, v697, v698, v699, v700;
    if (qword_100936848 != -1)
    {
      goto LABEL_298;
    }

    while (1)
    {
      v753 = type metadata accessor for Logger();
      v754 = sub_100006654(v753, qword_100951B08);
      v1095 = v336;
      __chkstk_darwin(v754, v755);
      sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      sub_10000CB48(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280, &protocol conformance descriptor for [A]);
      v610 = Sequence.map<A>(skippingError:_:)();
      v528 = v184;
      if (v184)
      {

        v528 = 0;
        v756 = &_swiftEmptyArrayStorage;
      }

      else
      {
LABEL_195:
        v756 = v610;
      }

      v336, v611, v612, v613, v614, v615, v616, v617;
      v1095 = v756;
      sub_1000F5104(&qword_10093CB80, &qword_1007A7680);
      sub_10000CB48(&qword_10093CB88, &qword_10093CB80, &qword_1007A7680, &protocol conformance descriptor for [A]);
      sub_1001EB528();
      v757 = Sequence<>.unique()();
      (*(v1010 + 8))(v1028, v1011);
      v756, v758, v759, v760, v761, v762, v763, v764;
      v765 = *(v757 + 16);
      v757, v766, v767, v768, v769, v770, v771, v772;
      __chkstk_darwin(v773, v774);
      sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
      NSManagedObjectContext.rem_performAndWait<A>(_:)();
      v1027 = v528;
      if (v528)
      {
        break;
      }

      v336 = v1095;
      v184 = v1056;
      v834 = v1044;
      v1080 = v765;
      if (v1095 >> 62)
      {
        v982 = v1044;
        v835 = _CocoaArrayWrapper.endIndex.getter();
        v834 = v982;
      }

      else
      {
        v835 = *((v1095 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v583 = v1033;
      if (v835)
      {
        v836 = 0;
        v1095 = _swiftEmptyDictionarySingleton;
        while (1)
        {
          if ((v336 & 0xC000000000000001) != 0)
          {
            v837 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v836 >= *((v336 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_291;
            }

            v837 = *(v336 + 8 * v836 + 32);
          }

          v583 = v837;
          v838 = v836 + 1;
          if (__OFADD__(v836, 1))
          {
            break;
          }

          v1094[0] = v837;
          v839 = v1027;
          sub_10049F2D8(&v1095, v1094, v1012);
          v1027 = v839;
          if (v839)
          {
            goto LABEL_302;
          }

          ++v836;
          v583 = v1033;
          if (v838 == v835)
          {
            v1044, v840, v841, v842, v843, v844, v845, v846;
            v1054, v847, v848, v849, v850, v851, v852, v853;
            v1053, v854, v855, v856, v857, v858, v859, v860;
            v336, v861, v862, v863, v864, v865, v866, v867;
            v1078 = v1095;
            v184 = v1056;
            goto LABEL_211;
          }
        }
      }

      else
      {
        v834, v775, v776, v777, v778, v779, v780, v781;
        v1054, v868, v869, v870, v871, v872, v873, v874;
        v1053, v875, v876, v877, v878, v879, v880, v881;
        v336, v882, v883, v884, v885, v886, v887, v888;
        v1078 = _swiftEmptyDictionarySingleton;
LABEL_211:
        v889 = 0;
        v890 = *(v187 + 64);
        v1085 = (v187 + 64);
        v891 = 1 << *(v187 + 32);
        v892 = -1;
        if (v891 < 64)
        {
          v892 = ~(-1 << v891);
        }

        v336 = v892 & v890;
        v1084 = (v891 + 63) >> 6;
        v1089 = v1082 + 16;
        v1093 = (v1082 + 32);
        v1092 = (v1042 + 32);
        v893 = _swiftEmptyDictionarySingleton;
        v1086 = v1042 + 40;
        v1065 = v187;
        while (v336)
        {
          v1090 = v893;
          v894 = v889;
LABEL_225:
          v896 = __clz(__rbit64(v336));
          v336 &= v336 - 1;
          v897 = v896 | (v894 << 6);
          v898 = v1082;
          v899 = *(v187 + 48) + *(v1082 + 72) * v897;
          v900 = v1058;
          v901 = v187;
          v902 = v1088;
          (*(v1082 + 16))(v1058, v899, v1088);
          v903 = *(*(v901 + 56) + 8 * v897);
          v904 = sub_1000F5104(&qword_100948C08, &qword_1007ACC58);
          v905 = *(v904 + 48);
          v906 = *(v898 + 32);
          v907 = v1031;
          v906(v1031, v900, v902);
          *&v907[v905] = v903;
          (*(*(v904 - 8) + 56))(v907, 0, 1, v904);
          v1091 = v894;
          v908 = v907;
          v184 = v1056;
          v583 = v1033;
          v893 = v1090;
LABEL_226:
          v909 = v1030;
          sub_100031B58(v908, v1030, &qword_100948BE0, &qword_1007ACC20);
          v910 = sub_1000F5104(&qword_100948C08, &qword_1007ACC58);
          v911 = *(v910 - 8);
          v187 = *(v911 + 48);
          if ((v187)(v909, 1, v910) == 1)
          {

            v930 = *&PredicateType->storeProvider[2];
            v1083 = &PredicateType->storeProvider[2];
            v931 = 1 << PredicateType->clientIdentity[16];
            v932 = -1;
            if (v931 < 64)
            {
              v932 = ~(-1 << v931);
            }

            v336 = v932 & v930;
            v1081 = ((v931 + 63) >> 6);
            v1085 = (v911 + 56);

            v933 = 0;
            v934 = v1037;
            v1084 = v910;
            v1090 = v187;
            while (v336)
            {
              v935 = v933;
LABEL_252:
              v937 = __clz(__rbit64(v336));
              v336 &= v336 - 1;
              v938 = v937 | (v935 << 6);
              v939 = PredicateType;
              v940 = v1082;
              v941 = v1058;
              v942 = v1088;
              (*(v1082 + 16))(v1058, *&PredicateType->clientIdentity[32] + *(v1082 + 72) * v938, v1088);
              v943 = *(*&v939->clientIdentity[40] + 8 * v938);
              v944 = *(v1084 + 48);
              v945 = *(v940 + 32);
              v946 = v1026;
              v947 = v941;
              v910 = v1084;
              v945(v1026, v947, v942);
              v948 = 0;
              *(v946 + v944) = v943;
              v1091 = v935;
              v949 = v1056;
              v934 = v1037;
              v187 = v1090;
LABEL_253:
              (*v1085)(v946, v948, 1, v910);
              v950 = v1025;
              sub_100031B58(v946, v1025, &qword_100948BE0, &qword_1007ACC20);
              if ((v187)(v950, 1, v910) == 1)
              {
                v965 = PredicateType;

                REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)();
                REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)();
                REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)();
                REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)();
                REMAccountsListDataView.ReminderCounts.init(scheduled:flagged:all:today:siriFoundInAppsRemindersCount:assignedToMeRemindersCount:recentlyDeletedRemindersCountByAccountObjectID:byObjectID:)();

                (*v1069)(v1068, v1088);
                v966 = *(v949 + 8);
                v967 = v1066;
                v966(v1047, v1066);
                v966(v1055, v967);
                sub_100025434(v1064, _s10PredicatesOMa);
                v1063, v968, v969, v970, v971, v972, v973, v974;
                v965, v975, v976, v977, v978, v979, v980, v981;
                v833 = v1067;
                goto LABEL_267;
              }

              v184 = *(v950 + *(v910 + 48));
              (v1093->super.isa)(v934, v950, v1088);
              v951 = objc_opt_self();
              v952 = UUID._bridgeToObjectiveC()().super.isa;
              v953 = [v951 objectIDWithUUID:v952];

              v583 = REMObjectID.codable.getter();
              if (*v1067->clientIdentity)
              {
                sub_100363F20(v934);
              }

              v954 = v1024;
              REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)();
              v955 = *v1092;
              (*v1092)(v1038, v954, v1052);
              v187 = swift_isUniquelyReferenced_nonNull_native();
              v1095 = v893;
              v956 = sub_100364044(v583);
              v958 = *v893->clientIdentity;
              v959 = (v957 & 1) == 0;
              v575 = __OFADD__(v958, v959);
              v960 = v958 + v959;
              if (v575)
              {
                goto LABEL_286;
              }

              v184 = v957;
              if (*&v893->clientIdentity[8] >= v960)
              {
                if ((v187 & 1) == 0)
                {
                  v964 = v956;
                  sub_100373390();
                  v956 = v964;
                }
              }

              else
              {
                sub_10036A4E0(v960, v187);
                v956 = sub_100364044(v583);
                if ((v184 & 1) != (v961 & 1))
                {
                  goto LABEL_301;
                }
              }

              v187 = v1090;
              v893 = v1095;
              if (v184)
              {
                (*(v1042 + 40))(*(v1095 + 56) + *(v1042 + 72) * v956, v1038, v1052);

                v934 = v1037;
                (*v1069)(v1037, v1088);
              }

              else
              {
                *(v1095 + 8 * (v956 >> 6) + 64) |= 1 << v956;
                *(*&v893->clientIdentity[32] + 8 * v956) = v583;
                v955(*&v893->clientIdentity[40] + *(v1042 + 72) * v956, v1038, v1052);
                v934 = v1037;
                (*v1069)(v1037, v1088);
                v962 = *v893->clientIdentity;
                v575 = __OFADD__(v962, 1);
                v963 = v962 + 1;
                if (v575)
                {
                  goto LABEL_293;
                }

                *v893->clientIdentity = v963;
              }

              v933 = v1091;
              v184 = v1056;
            }

            if (v1081 <= (v933 + 1))
            {
              v936 = v933 + 1;
            }

            else
            {
              v936 = v1081;
            }

            while (1)
            {
              v935 = v933 + 1;
              if (__OFADD__(v933, 1))
              {
                goto LABEL_272;
              }

              if (v935 >= v1081)
              {
                v1091 = (v936 - 1);
                v949 = v184;
                v336 = 0;
                v948 = 1;
                v946 = v1026;
                goto LABEL_253;
              }

              v336 = *(&v1083->super.isa + v935);
              v933 = (v933 + 1);
              if (v336)
              {
                goto LABEL_252;
              }
            }
          }

          v184 = *(v909 + *(v910 + 48));
          (v1093->super.isa)(v583, v909, v1088);
          v912 = UUID._bridgeToObjectiveC()().super.isa;
          v913 = [v1013 objectIDWithUUID:v912];

          v914 = REMObjectID.codable.getter();
          v187 = v1065;
          if (*v1063->clientIdentity)
          {
            sub_100363F20(v583);
          }

          v915 = v1029;
          REMAccountsListDataView.ReminderCounts.ComputedCountContainer.init(incomplete:overdue:)();
          v916 = *v1092;
          (*v1092)(v1043, v915, v1052);
          v917 = swift_isUniquelyReferenced_nonNull_native();
          v1095 = v893;
          v918 = sub_100364044(v914);
          v920 = *v893->clientIdentity;
          v921 = (v919 & 1) == 0;
          v575 = __OFADD__(v920, v921);
          v922 = v920 + v921;
          if (v575)
          {
            goto LABEL_285;
          }

          v184 = v919;
          if (*&v893->clientIdentity[8] >= v922)
          {
            if ((v917 & 1) == 0)
            {
              v929 = v918;
              sub_100373390();
              v918 = v929;
            }
          }

          else
          {
            sub_10036A4E0(v922, v917);
            v918 = sub_100364044(v914);
            if ((v184 & 1) != (v923 & 1))
            {
              goto LABEL_301;
            }
          }

          v924 = v1088;
          v893 = v1095;
          if (v184)
          {
            (*(v1042 + 40))(*(v1095 + 56) + *(v1042 + 72) * v918, v1043, v1052);

            (*v1069)(v583, v924);
          }

          else
          {
            *(v1095 + 8 * (v918 >> 6) + 64) |= 1 << v918;
            *(*&v893->clientIdentity[32] + 8 * v918) = v914;
            v916(*&v893->clientIdentity[40] + *(v1042 + 72) * v918, v1043, v1052);
            (*v1069)(v583, v924);
            v925 = *v893->clientIdentity;
            v575 = __OFADD__(v925, 1);
            v926 = v925 + 1;
            if (v575)
            {
              goto LABEL_292;
            }

            *v893->clientIdentity = v926;
          }

          v889 = v1091;
          v184 = v1056;
        }

        if (v1084 <= v889 + 1)
        {
          v895 = v889 + 1;
        }

        else
        {
          v895 = v1084;
        }

        while (1)
        {
          v894 = v889 + 1;
          if (__OFADD__(v889, 1))
          {
            break;
          }

          if (v894 >= v1084)
          {
            v1091 = (v895 - 1);
            v927 = sub_1000F5104(&qword_100948C08, &qword_1007ACC58);
            v928 = v1031;
            (*(*(v927 - 8) + 56))(v1031, 1, 1, v927);
            v908 = v928;
            v336 = 0;
            goto LABEL_226;
          }

          v336 = v1085[v894];
          v889 = (v889 + 1);
          if (v336)
          {
            v1090 = v893;
            goto LABEL_225;
          }
        }

LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
      }

      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      swift_once();
    }

    (*v1069)(v1068, v1088);
    v782 = v1056[1];
    v783 = v1066;
    v782(v1047, v1066);
    v782(v1055, v783);
    v1044, v784, v785, v786, v787, v788, v789, v790;
    v1054, v791, v792, v793, v794, v795, v796, v797;
    v1053, v798, v799, v800, v801, v802, v803, v804;
    sub_100025434(v1064, _s10PredicatesOMa);
    v1063, v805, v806, v807, v808, v809, v810, v811;
    PredicateType, v812, v813, v814, v815, v816, v817, v818;
    v1067, v819, v820, v821, v822, v823, v824, v825;
    v833 = v187;
LABEL_267:
    v833, v826, v827, v828, v829, v830, v831, v832;
    sub_10003E114(v1079, 0);
    sub_10003E114(v1046, 0);
  }
}

uint64_t sub_10049F1E0@<X0>(uint64_t *a2@<X8>)
{
  result = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v4)
  {
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v5._object = 0x80000001007EC120;
    v5._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v5);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10049F2D8(uint64_t *a1, void **a2, char *a3)
{
  v69 = a3;
  v62 = a1;
  v4 = type metadata accessor for UUID();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4, v5);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v7 - 8, v8);
  v68 = &v59 - v9;
  v10 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin(v10, v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000F5104(&qword_100948C10, &qword_1007ACC68);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = &v59 - v22;
  v24 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v66 = *(v24 - 8);
  v67 = v24;
  v26 = __chkstk_darwin(v24, v25);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a2;
  (*(v15 + 104))(v18, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v14, v26);
  v30 = v70;
  static REMRemindersListDataView.fetchRecentlyDeleted(store:accountID:deletedDaysFromNow:countCompleted:remindersPrefetch:diffingAgainst:)();
  v70 = v30;
  if (v30)
  {
    (*(v15 + 8))(v18, v14);
    if (qword_100936260 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006654(v31, qword_100948A78);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v71 = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v36 = Error.rem_errorDescription.getter();
      v38 = v37;
      v39 = sub_10000668C(v36, v37, &v71);
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to fetch recently deleted reminders count {error: %s}", v34, 0xCu);
      sub_10000607C(v35);
    }

    else
    {
    }
  }

  else
  {
    v69 = v28;
    (*(v15 + 8))(v18, v14);
    REMRemindersListDataView.Result.model.getter();
    (*(v20 + 8))(v23, v19);
    v47 = v68;
    REMRemindersListDataView.FlatModel.remindersCount.getter();
    (*(v64 + 8))(v13, v65);
    v49 = v66;
    v48 = v67;
    if ((*(v66 + 48))(v47, 1, v67) == 1)
    {
      sub_1000050A4(v47, &qword_100938A70, &qword_1007ACC60);
    }

    else
    {
      v50 = v69;
      (*(v49 + 32))(v69, v47, v48);
      v51 = [v29 uuid];
      v52 = v63;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = REMRemindersListDataView.CountByCompleted.completed.getter();
      v54 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
      v55 = __OFADD__(v53, v54);
      v56 = v53 + v54;
      if (v55)
      {
        __break(1u);
      }

      else
      {
        v57 = v62;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = *v57;
        sub_1002C7FC0(v56, v52, isUniquelyReferenced_nonNull_native);
        (*(v60 + 8))(v52, v61);
        (*(v49 + 8))(v50, v48);
        *v57 = v71;
      }
    }
  }
}

id sub_10049F918(unint64_t a1)
{
  result = [v1 updatedProperties];
  if (result)
  {
    v4 = result;
    sub_1000060C8(0, &qword_100939678, NSPropertyDescription_ptr);
    sub_1004A54EC();
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10049A25C(v5);
    v7 = v6;
    v5, v8, v9, v10, v11, v12, v13, v14;
    if (a1 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_17:
        v25 = sub_1001A5660(&_swiftEmptyArrayStorage);
        &_swiftEmptyArrayStorage, v26, v27, v28, v29, v30, v31, v32;
        v33 = sub_1004A4820(v7, v25);
        v7, v34, v35, v36, v37, v38, v39, v40;
        v41 = *(v33 + 16);

        return (v41 != 0);
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v16 = 0;
      v45 = a1 & 0xC000000000000001;
      v43 = v7;
      v44 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v7 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v45)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(v44 + 16))
          {
            goto LABEL_20;
          }
        }

        v17 = a1;
        v18 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v19)
        {
          goto LABEL_23;
        }

        v20 = v18;
        v21 = v19;

        v23 = *_swiftEmptyArrayStorage.clientIdentity;
        v22 = *&_swiftEmptyArrayStorage.clientIdentity[8];
        if (v23 >= v22 >> 1)
        {
          sub_100026EF4((v22 > 1), v23 + 1, 1);
        }

        *_swiftEmptyArrayStorage.clientIdentity = v23 + 1;
        v24 = &_swiftEmptyArrayStorage + 16 * v23;
        *(v24 + 4) = v20;
        *(v24 + 5) = v21;
        ++v16;
        a1 = v17;
        if (v7 == i)
        {
          v7 = v43;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    __break(1u);
LABEL_23:
    _StringGuts.grow(_:)(46);
    v42._object = 0x80000001007EC120;
    v42._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v42);
    sub_1000F5104(&qword_10093F530, &qword_10079B220);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10049FBEC()
{
  v0 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v44 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v5);
  v7 = (&v35 - v6);
  __chkstk_darwin(v8, v9);
  v45 = &v35 - v10;
  v11 = REMAccountsListDataView.Model.Group.lists.getter();
  v43 = *(v11 + 16);
  if (!v43)
  {
    v20 = &_swiftEmptyArrayStorage;
LABEL_17:
    v11, v12, v13, v14, v15, v16, v17, v18;
    return v20;
  }

  v19 = 0;
  v40 = v1 + 88;
  v41 = v1 + 16;
  v39 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
  v36 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
  v35 = (v1 + 8);
  v37 = (v1 + 32);
  v38 = (v1 + 96);
  v20 = &_swiftEmptyArrayStorage;
  v42 = v11;
  while (v19 < *(v11 + 16))
  {
    v21 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v22 = *(v1 + 72);
    v23 = *(v1 + 16);
    v24 = v45;
    v23(v45, v11 + v21 + v22 * v19, v0);
    v23(v7, v24, v0);
    v25 = (*(v1 + 88))(v7, v0);
    if (v25 == v39)
    {
      (*v38)(v7, v0);
      v26 = *v7;
      v27 = [*v7 isPinned];

      if (v27)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v25 != v36)
      {
        goto LABEL_19;
      }

      (*v38)(v7, v0);
      v28 = *v7;
      v29 = [*v7 isPinned];

      if (v29)
      {
LABEL_11:
        v30 = *v37;
        (*v37)(v44, v45, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100253C88(0, *v20->clientIdentity + 1, 1);
          v20 = v46;
        }

        v33 = *v20->clientIdentity;
        v32 = *&v20->clientIdentity[8];
        if (v33 >= v32 >> 1)
        {
          sub_100253C88((v32 > 1), v33 + 1, 1);
          v20 = v46;
        }

        *v20->clientIdentity = v33 + 1;
        v30(v20 + v21 + v33 * v22, v44, v0);
        goto LABEL_4;
      }
    }

    (*v35)(v45, v0);
LABEL_4:
    ++v19;
    v11 = v42;
    if (v43 == v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10049FF50(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = &v24 - v17;
  sub_1004A01F0(v9);
  v19 = *(v11 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
    v20 = 1;
  }

  else
  {
    v26 = v2;
    v25 = *(v11 + 32);
    v25(v18, v9, v10);
    v21 = v28;
    sub_1004A01F0(v28);
    if (v19(v21, 1, v10) == 1)
    {
      (*(v11 + 8))(v18, v10);
      sub_1000050A4(v21, &unk_100938850, qword_100795AE0);
      v20 = 0;
    }

    else
    {
      v25(v14, v21, v10);
      v20 = static Date.< infix(_:_:)();
      v22 = *(v11 + 8);
      v22(v14, v10);
      v22(v18, v10);
    }
  }

  return v20 & 1;
}

uint64_t sub_1004A01F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v17, v2, v12, v15);
  v18 = (*(v13 + 88))(v17, v12);
  if (v18 == enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:))
  {
    (*(v13 + 8))(v17, v12);
    v19 = type metadata accessor for Date();
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  if (v18 == enum case for REMAccountsListDataView.Model.PinnedList.list(_:))
  {
    (*(v13 + 96))(v17, v12);
    v21 = *v17;
    v22 = [*v17 pinnedDate];
    if (v22)
    {
      v23 = v22;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v29 = type metadata accessor for Date();
    (*(*(v29 - 8) + 56))(v11, v24, 1, v29);
    v30 = v11;
  }

  else
  {
    if (v18 != enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v13 + 96))(v17, v12);
    v25 = *v17;
    v26 = [*v17 pinnedDate];
    if (v26)
    {
      v27 = v26;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v31 = type metadata accessor for Date();
    (*(*(v31 - 8) + 56))(v7, v28, 1, v31);
    v30 = v7;
  }

  return sub_100031B58(v30, a1, &unk_100938850, qword_100795AE0);
}

void sub_1004A05A0(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v8 = objc_opt_self();
    v9 = String._bridgeToObjectiveC()();
    [v8 internalErrorWithDebugDescription:v9];

    swift_willThrow();
  }

  else
  {
    v5 = v4;
    if ([v5 isGroup])
    {

      REMAccountsListDataView.Model.Group.init(list:lists:)();
      v6 = enum case for REMAccountsListDataView.Model.AccountChild.group(_:);
      v7 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
      (*(*(v7 - 8) + 104))(a2, v6, v7);
    }

    else
    {
      v10 = objc_opt_self();
      v11 = String._bridgeToObjectiveC()();
      [v10 internalErrorWithDebugDescription:v11];

      swift_willThrow();
    }
  }
}

uint64_t sub_1004A0730(uint64_t a1)
{
  result = sub_100030E90(&qword_100948AB0, &type metadata accessor for REMAccountsListDataView.Invocation, &protocol conformance descriptor for REMAccountsListDataView.Invocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1004A0788(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  v12 = 0xEE0073746E756F43;
  v13 = a1 == 0x7265646E696D6572 && a2 == 0xEE0073746E756F43;
  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v14 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {
    0xE500000000000000, v12, a4, a5, a6, a7, a8, a9;
    v14 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a3 = v14;
}

uint64_t sub_1004A0868(uint64_t a1)
{
  v2 = sub_1000318A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004A08A4(uint64_t a1)
{
  v2 = sub_1000318A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004A08E0(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_100948CF0, &qword_1007ACCD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v18[-v8];
  sub_10000F61C(a1, a1[3]);
  sub_1000318A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19[0]) = 0;
  type metadata accessor for REMAccountsListDataView.ReminderCounts();
  sub_100030E90(&qword_100948CF8, &type metadata accessor for REMAccountsListDataView.ReminderCounts, &protocol conformance descriptor for REMAccountsListDataView.ReminderCounts);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + *(_s5CacheVMa(0) + 20));
  v19[0] = 0;
  v12 = [v11 dataRepresentationWithError:v19];
  v13 = v19[0];
  if (!v12)
  {
    v17 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v19[0] = v14;
  v19[1] = v16;
  v18[7] = 1;
  sub_10015377C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  return sub_10001BBA0(v14, v16);
}

void sub_1004A0B78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    [v2 setAccountsListCategorizedCountsCache:0];
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100031A14(a1, a2);
    [v2 setAccountsListCategorizedCountsCache:isa];
  }
}

uint64_t *_s19PolymorphicListItemC5ModelOwca(uint64_t *a1, uint64_t *a2)
{
  v3 = (*a2 & 0x7FFFFFFFFFFFFFFFLL);
  v4 = *a1;
  *a1 = *a2;
  v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
  v6 = v3;

  return a1;
}

uint64_t *_s19PolymorphicListItemC5ModelOwta(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t _s19PolymorphicListItemC5ModelOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s19PolymorphicListItemC5ModelOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1004A0D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v116 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v108 - v13;
  __chkstk_darwin(v15, v16);
  v122 = &v108 - v17;
  __chkstk_darwin(v18, v19);
  v117 = &v108 - v20;
  __chkstk_darwin(v21, v22);
  v121 = &v108 - v23;
  __chkstk_darwin(v24, v25);
  v135 = &v108 - v26;
  v136 = type metadata accessor for Date();
  v27 = *(v136 - 8);
  __chkstk_darwin(v136, v28);
  v119 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v134 = &v108 - v32;
  v33 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  __chkstk_darwin(v33, v34);
  v130 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v126 = (&v108 - v38);
  __chkstk_darwin(v39, v40);
  v147 = (&v108 - v41);
  __chkstk_darwin(v42, v43);
  v123 = &v108 - v44;
  v48 = __chkstk_darwin(v45, v46);
  v50 = &v108 - v49;
  v110 = a2;
  if (a3 != a2)
  {
    v51 = *a4;
    v53 = *(v47 + 16);
    v52 = v47 + 16;
    v54 = *(v52 + 56);
    v141 = (v52 + 72);
    v142 = v53;
    v140 = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
    v125 = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
    v118 = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
    v124 = (v52 + 80);
    v144 = (v52 - 8);
    v138 = (v27 + 48);
    v139 = (v27 + 56);
    v132 = (v27 + 32);
    v120 = (v27 + 8);
    v143 = v52;
    v127 = (v52 + 16);
    v55 = (v51 + v54 * (a3 - 1));
    v128 = -v54;
    v129 = v51;
    v56 = a1 - a3;
    v109 = v54;
    v57 = v51 + v54 * a3;
    v115 = v14;
    v133 = v50;
LABEL_6:
    v114 = a3;
    v111 = v57;
    v112 = v56;
    v113 = v55;
    v59 = v55;
    v60 = v126;
    v61 = v123;
    while (1)
    {
      v145 = v56;
      v146 = v57;
      v62 = v142;
      (v142)(v50, v57, v33, v48);
      v62(v61, v59, v33);
      v63 = v147;
      v62(v147, v50, v33);
      v64 = *v141;
      v65 = (*v141)(v63, v33);
      if (v65 == v140)
      {
        v66 = v61;
        (*v144)(v147, v33);
        v67 = v135;
        v68 = v136;
        v137 = *v139;
        v137(v135, 1, 1, v136);
      }

      else
      {
        v69 = v121;
        if (v65 == v125)
        {
          v70 = v147;
          (*v124)(v147, v33);
          v71 = *v70;
          v72 = [v71 pinnedDate];
          v66 = v61;
          if (v72)
          {
            v73 = v72;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v74 = 0;
          }

          else
          {
            v74 = 1;
          }

          v81 = v74;
          v68 = v136;
          v137 = *v139;
          v137(v69, v81, 1, v136);
          v67 = v135;
          sub_100031B58(v69, v135, &unk_100938850, qword_100795AE0);
        }

        else
        {
          v75 = v117;
          if (v65 != v118)
          {
            goto LABEL_40;
          }

          v76 = v147;
          (*v124)(v147, v33);
          v77 = *v76;
          v78 = [v77 pinnedDate];
          v66 = v61;
          if (v78)
          {
            v79 = v78;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v80 = 0;
          }

          else
          {
            v80 = 1;
          }

          v82 = v80;
          v68 = v136;
          v137 = *v139;
          v137(v75, v82, 1, v136);
          v67 = v135;
          sub_100031B58(v75, v135, &unk_100938850, qword_100795AE0);
          v60 = v126;
        }
      }

      v83 = *v138;
      if ((*v138)(v67, 1, v68) == 1)
      {
        sub_1000050A4(v67, &unk_100938850, qword_100795AE0);
        v84 = *v144;
        v61 = v66;
        (*v144)(v66, v33);
        v50 = v133;
        v84(v133, v33);
        v85 = v146;
      }

      else
      {
        v131 = *v132;
        v131(v134, v67, v68);
        v142(v60, v66, v33);
        v86 = v64(v60, v33);
        if (v86 == v140)
        {
          (*v144)(v60, v33);
          v87 = v122;
          v137(v122, 1, 1, v68);
        }

        else
        {
          if (v86 == v125)
          {
            (*v124)(v60, v33);
            v88 = *v60;
            v89 = [v88 pinnedDate];
            if (v89)
            {
              v90 = v115;
              v91 = v89;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v92 = 0;
            }

            else
            {
              v92 = 1;
              v90 = v115;
            }

            v98 = v92;
            v68 = v136;
            v137(v90, v98, 1, v136);
            v99 = v90;
          }

          else
          {
            if (v86 != v118)
            {
              goto LABEL_40;
            }

            (*v124)(v60, v33);
            v93 = *v60;
            v94 = [*v60 pinnedDate];
            v95 = v116;
            if (v94)
            {
              v96 = v94;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v97 = 0;
            }

            else
            {
              v97 = 1;
            }

            v68 = v136;
            v137(v95, v97, 1, v136);
            v99 = v95;
          }

          v87 = v122;
          sub_100031B58(v99, v122, &unk_100938850, qword_100795AE0);
        }

        if (v83(v87, 1, v68) == 1)
        {
          (*v120)(v134, v68);
          sub_1000050A4(v87, &unk_100938850, qword_100795AE0);
          v58 = *v144;
          (*v144)(v66, v33);
          v50 = v133;
          v58(v133, v33);
LABEL_5:
          a3 = v114 + 1;
          v55 = &v113[v109];
          v56 = v112 - 1;
          v57 = v111 + v109;
          if (v114 + 1 == v110)
          {
            return;
          }

          goto LABEL_6;
        }

        v100 = v119;
        v131(v119, v87, v68);
        v101 = v134;
        v102 = static Date.< infix(_:_:)();
        v103 = *v120;
        v61 = v123;
        (*v120)(v100, v68);
        v104 = v101;
        v60 = v126;
        v103(v104, v68);
        v105 = *v144;
        (*v144)(v61, v33);
        v50 = v133;
        v105(v133, v33);
        v85 = v146;
        if ((v102 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v129)
      {
        break;
      }

      v106 = *v127;
      v107 = v130;
      (*v127)(v130, v85, v33);
      swift_arrayInitWithTakeFrontToBack();
      v106(v59, v107, v33);
      v59 += v128;
      v57 = v85 + v128;
      v56 = v145 + 1;
      if (v145 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_40:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

void sub_1004A18B0(unint64_t *a1, uint64_t a2, void **a3, unint64_t a4)
{
  v5 = v4;
  v283 = a1;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v299 = &v275 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v275 - v13;
  __chkstk_darwin(v15, v16);
  v310 = &v275 - v17;
  __chkstk_darwin(v18, v19);
  v21 = &v275 - v20;
  __chkstk_darwin(v22, v23);
  v25 = &v275 - v24;
  __chkstk_darwin(v26, v27);
  v29 = &v275 - v28;
  __chkstk_darwin(v30, v31);
  v281 = &v275 - v32;
  __chkstk_darwin(v33, v34);
  v280 = &v275 - v35;
  __chkstk_darwin(v36, v37);
  v289 = &v275 - v38;
  __chkstk_darwin(v39, v40);
  v286 = &v275 - v41;
  __chkstk_darwin(v42, v43);
  v285 = &v275 - v44;
  __chkstk_darwin(v45, v46);
  v300 = &v275 - v47;
  v323 = type metadata accessor for Date();
  v48 = *(v323 - 8);
  __chkstk_darwin(v323, v49);
  v309 = &v275 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51, v52);
  v319 = &v275 - v53;
  __chkstk_darwin(v54, v55);
  v284 = &v275 - v56;
  __chkstk_darwin(v57, v58);
  v297 = &v275 - v59;
  v60 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  __chkstk_darwin(v60, v61);
  v290 = &v275 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63, v64);
  v317 = &v275 - v65;
  __chkstk_darwin(v66, v67);
  v312 = (&v275 - v68);
  __chkstk_darwin(v69, v70);
  v320 = (&v275 - v71);
  __chkstk_darwin(v72, v73);
  v333 = &v275 - v74;
  __chkstk_darwin(v75, v76);
  v332 = &v275 - v77;
  __chkstk_darwin(v78, v79);
  __chkstk_darwin(v80, v81);
  v292 = (&v275 - v82);
  __chkstk_darwin(v83, v84);
  v307 = &v275 - v85;
  __chkstk_darwin(v86, v87);
  v303 = &v275 - v88;
  __chkstk_darwin(v89, v90);
  v277 = &v275 - v91;
  v102 = __chkstk_darwin(v92, v93);
  v276 = &v275 - v103;
  v104 = a3[1];
  v302 = v100;
  if (v104 < 1)
  {
    v107 = &_swiftEmptyArrayStorage;
LABEL_156:
    v48 = *v283;
    if (!*v283)
    {
      goto LABEL_198;
    }

    a4 = v107;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v270 = a4;
    }

    else
    {
LABEL_192:
      v270 = sub_1004361F4(a4, v94, v95, v107, v96, v97, v98, v99);
    }

    v334 = v270;
    a4 = *v270->clientIdentity;
    if (a4 >= 2)
    {
      while (*a3)
      {
        v271 = *(&v270->super.isa + 2 * a4);
        v214 = v270;
        v272 = *&v270->clientIdentity[16 * a4 + 8];
        sub_1004A3308(*a3 + *(v302 + 72) * v271, *a3 + *(v302 + 72) * *&v270->clientIdentity[16 * a4], *a3 + *(v302 + 72) * v272, v48);
        if (v5)
        {
          goto LABEL_168;
        }

        if (v272 < v271)
        {
          goto LABEL_185;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v214 = sub_1004361F4(v214, v94, v95, v107, v96, v97, v98, v99);
        }

        if (a4 - 2 >= *v214->clientIdentity)
        {
          goto LABEL_186;
        }

        v273 = &v214->super.isa + 2 * a4;
        *v273 = v271;
        v273[1] = v272;
        v334 = v214;
        sub_100436168(a4 - 1);
        v270 = v334;
        a4 = *v334->clientIdentity;
        if (a4 <= 1)
        {
          goto LABEL_169;
        }
      }

      goto LABEL_196;
    }

LABEL_169:
    v270, v94, v95, v107, v96, v97, v98, v99;
    return;
  }

  v105 = v104;
  v293 = v101;
  v331 = (v100 + 8);
  v328 = (v100 + 88);
  v329 = v100 + 16;
  v327 = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
  v314 = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
  v308 = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
  v313 = (v100 + 96);
  v325 = (v48 + 56);
  v326 = (v48 + 48);
  v322 = (v48 + 32);
  v106 = 0;
  v311 = (v48 + 8);
  v107 = &_swiftEmptyArrayStorage;
  v321 = (v100 + 32);
  v287 = a3;
  v282 = a4;
  v298 = v14;
  v305 = v21;
  v304 = v25;
  v318 = v29;
  while (1)
  {
    v108 = v106;
    v291 = v107;
    if (v106 + 1 >= v105)
    {
      v162 = v106 + 1;
      goto LABEL_54;
    }

    v306 = v105;
    v109 = *a3;
    v110 = *(v302 + 72);
    v111 = *a3 + v110 * (v106 + 1);
    v112 = *(v302 + 16);
    v113 = v106;
    v114 = v276;
    v112(v276, v111, v60, v102);
    v316 = v109;
    v115 = v109 + v110 * v113;
    v116 = v277;
    v324 = v112;
    (v112)(v277, v115, v60);
    LODWORD(v301) = sub_10049FF50(v114, v116);
    if (v5)
    {
      v274 = *v331;
      (*v331)(v116, v60);
      (v274)(v114, v60);
      v270 = v291;
      goto LABEL_169;
    }

    v279 = 0;
    v117 = *v331;
    (*v331)(v116, v60);
    v330 = v117;
    (v117)(v114, v60);
    v278 = v113;
    v118 = (v113 + 2);
    v48 = v316 + v110 * (v113 + 2);
    v119 = v300;
    v120 = v292;
    v315 = v110;
    while (1)
    {
      v162 = v306;
      if (v306 == v118)
      {
        break;
      }

      v123 = v303;
      v124 = v324;
      v324(v303, v48, v60);
      v124(v307, v111, v60);
      v124(v120, v123, v60);
      v125 = *v328;
      v126 = (*v328)(v120, v60);
      if (v126 != v327)
      {
        if (v126 == v314)
        {
          (*v313)(v120, v60);
          v316 = *v120;
          v128 = [v316 pinnedDate];
          v129 = v323;
          if (v128)
          {
            v130 = v285;
            goto LABEL_18;
          }

          v132 = 1;
          v130 = v285;
        }

        else
        {
          v130 = v286;
          v129 = v323;
          if (v126 != v308)
          {
            goto LABEL_199;
          }

          (*v313)(v120, v60);
          v316 = *v120;
          v128 = [v316 pinnedDate];
          if (v128)
          {
LABEL_18:
            v131 = v128;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v132 = 0;
          }

          else
          {
            v132 = 1;
          }
        }

        v316 = *v325;
        v316(v130, v132, 1, v129);
        v127 = v129;
        v119 = v300;
        sub_100031B58(v130, v300, &unk_100938850, qword_100795AE0);
        goto LABEL_22;
      }

      (v330)(v120, v60);
      v127 = v323;
      v316 = *v325;
      v316(v119, 1, 1, v323);
LABEL_22:
      v133 = *v326;
      if ((*v326)(v119, 1, v127) == 1)
      {
        sub_1000050A4(v119, &unk_100938850, qword_100795AE0);
        v121 = 1;
      }

      else
      {
        v295 = *v322;
        v295(v297, v119, v127);
        v134 = v293;
        v324(v293, v307, v60);
        v135 = v125(v134, v60);
        v136 = v127;
        if (v135 == v327)
        {
          (v330)(v134, v60);
          v137 = v289;
          v316(v289, 1, 1, v136);
        }

        else if (v135 == v314)
        {
          v296 = v111;
          v138 = v127;
          v139 = v293;
          (*v313)(v293, v60);
          v140 = *v139;
          v141 = [*v139 pinnedDate];
          v142 = v280;
          if (v141)
          {
            v143 = v141;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v144 = 0;
          }

          else
          {
            v144 = 1;
          }

          v151 = v316;

          v152 = v144;
          v136 = v138;
          v151(v142, v152, 1, v138);
          v153 = v142;
          v137 = v289;
          sub_100031B58(v153, v289, &unk_100938850, qword_100795AE0);
          v111 = v296;
        }

        else
        {
          v145 = v281;
          if (v135 != v308)
          {
            goto LABEL_199;
          }

          v146 = v293;
          (*v313)();
          v147 = *v146;
          v148 = [v147 pinnedDate];
          if (v148)
          {
            v149 = v148;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v150 = 0;
          }

          else
          {
            v150 = 1;
          }

          v154 = v316;

          v155 = v150;
          v136 = v323;
          v154(v145, v155, 1, v323);
          v156 = v145;
          v137 = v289;
          sub_100031B58(v156, v289, &unk_100938850, qword_100795AE0);
        }

        if (v133(v137, 1, v136) == 1)
        {
          (*v311)(v297, v136);
          sub_1000050A4(v137, &unk_100938850, qword_100795AE0);
          v121 = 0;
        }

        else
        {
          v296 = v111;
          v157 = v136;
          v158 = v284;
          v295(v284, v137, v157);
          v159 = v297;
          v121 = static Date.< infix(_:_:)();
          v160 = *v311;
          (*v311)(v158, v157);
          v161 = v157;
          v111 = v296;
          v160(v159, v161);
        }

        v119 = v300;
        v120 = v292;
      }

      v122 = v330;
      (v330)(v307, v60);
      v122(v303, v60);
      ++v118;
      v110 = v315;
      v48 += v315;
      v111 += v315;
      if ((v301 & 1) != (v121 & 1))
      {
        v162 = (v118 - 1);
        break;
      }
    }

    v5 = v279;
    a3 = v287;
    a4 = v282;
    v107 = v291;
    v108 = v278;
    if ((v301 & 1) == 0)
    {
      goto LABEL_54;
    }

    if (v162 < v278)
    {
      goto LABEL_191;
    }

    if (v278 < v162)
    {
      v163 = v110 * (v162 - 1);
      v164 = v162;
      v165 = v162 * v110;
      v306 = v162;
      v166 = v278;
      v167 = v278 * v110;
      do
      {
        if (v166 != --v164)
        {
          v168 = *v287;
          if (!*v287)
          {
            goto LABEL_195;
          }

          v48 = &v168[v167];
          v169 = *v321;
          (*v321)(v290, &v168[v167], v60, v107);
          if (v167 < v163 || v48 >= &v168[v165])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v167 != v163)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v169(&v168[v163], v290, v60);
          v107 = v291;
          v110 = v315;
        }

        ++v166;
        v163 -= v110;
        v165 -= v110;
        v167 += v110;
      }

      while (v166 < v164);
      v5 = v279;
      a3 = v287;
      a4 = v282;
      v162 = v306;
      v108 = v278;
    }

LABEL_54:
    v170 = a3[1];
    if (v162 >= v170)
    {
      goto LABEL_63;
    }

    if (__OFSUB__(v162, v108))
    {
      goto LABEL_188;
    }

    if (v162 - v108 >= a4)
    {
LABEL_63:
      v48 = v162;
      if (v162 < v108)
      {
        goto LABEL_187;
      }

      goto LABEL_64;
    }

    if (__OFADD__(v108, a4))
    {
      goto LABEL_189;
    }

    if ((v108 + a4) >= v170)
    {
      v48 = a3[1];
    }

    else
    {
      v48 = v108 + a4;
    }

    if (v48 < v108)
    {
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
      goto LABEL_192;
    }

    if (v162 == v48)
    {
      goto LABEL_63;
    }

    v279 = v5;
    v217 = *a3;
    v218 = *(v302 + 72);
    v324 = *(v302 + 16);
    v219 = v217 + v218 * (v162 - 1);
    v315 = -v218;
    v278 = v108;
    v220 = (v108 - v162);
    v316 = v217;
    v288 = v218;
    a4 = v217 + v162 * v218;
    v221 = v320;
    v222 = v318;
    v294 = v48;
LABEL_117:
    v306 = v162;
    v295 = a4;
    v296 = v220;
    v301 = v219;
    v224 = v219;
LABEL_118:
    v330 = v220;
    v225 = v332;
    v226 = v324;
    (v324)(v332, a4, v60, v102);
    v226(v333, v224, v60);
    v226(v221, v225, v60);
    v227 = *v328;
    v228 = (*v328)(v221, v60);
    if (v228 == v327)
    {
      (*v331)(v221, v60);
      v229 = *v325;
      v230 = v323;
      (*v325)(v222, 1, 1, v323);
    }

    else
    {
      if (v228 == v314)
      {
        (*v313)(v221, v60);
        v231 = *v221;
        v232 = [*v221 pinnedDate];
        v233 = v304;
        if (v232)
        {
          v234 = v232;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v235 = 0;
        }

        else
        {
          v235 = 1;
        }

        v229 = *v325;
        v241 = v233;
        v242 = v235;
      }

      else
      {
        v236 = v305;
        if (v228 != v308)
        {
          goto LABEL_199;
        }

        (*v313)(v221, v60);
        v237 = *v221;
        v238 = [*v221 pinnedDate];
        v233 = v236;
        if (v238)
        {
          v239 = v238;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v240 = 0;
        }

        else
        {
          v240 = 1;
        }

        v229 = *v325;
        v241 = v233;
        v242 = v240;
      }

      v230 = v323;
      v229(v241, v242, 1, v323);
      v243 = v233;
      v222 = v318;
      sub_100031B58(v243, v318, &unk_100938850, qword_100795AE0);
    }

    v244 = *v326;
    if ((*v326)(v222, 1, v230) == 1)
    {
      sub_1000050A4(v222, &unk_100938850, qword_100795AE0);
      v245 = *v331;
      (*v331)(v333, v60);
      (v245)(v332, v60);
      goto LABEL_148;
    }

    v246 = v222;
    v247 = *v322;
    (*v322)(v319, v246, v230);
    v248 = v312;
    v324(v312, v333, v60);
    v249 = v227(v248, v60);
    if (v249 == v327)
    {
      (*v331)(v248, v60);
      v250 = v310;
      v229(v310, 1, 1, v230);
      goto LABEL_146;
    }

    if (v249 == v314)
    {
      v251 = v312;
      (*v313)(v312, v60);
      v252 = *v251;
      v253 = [*v251 pinnedDate];
      if (v253)
      {
        v254 = &v330;
        goto LABEL_141;
      }

      v258 = 1;
      v259 = &v330;
LABEL_144:
      v256 = *(v259 - 32);
    }

    else
    {
      v255 = v312;
      if (v249 != v308)
      {
        goto LABEL_199;
      }

      (*v313)(v312, v60);
      v252 = *v255;
      v253 = [*v255 pinnedDate];
      if (!v253)
      {
        v258 = 1;
        v259 = &v331;
        goto LABEL_144;
      }

      v254 = &v331;
LABEL_141:
      v256 = *(v254 - 32);
      v257 = v253;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v258 = 0;
    }

    v230 = v323;
    v229(v256, v258, 1, v323);
    v260 = v256;
    v250 = v310;
    sub_100031B58(v260, v310, &unk_100938850, qword_100795AE0);
LABEL_146:
    if (v244(v250, 1, v230) != 1)
    {
      break;
    }

    (*v311)(v319, v230);
    sub_1000050A4(v250, &unk_100938850, qword_100795AE0);
    v223 = *v331;
    (*v331)(v333, v60);
    (v223)(v332, v60);
    v222 = v318;
LABEL_115:
    v221 = v320;
LABEL_116:
    v162 = (v306 + 1);
    v219 = &v301[v288];
    v220 = (v296 - 1);
    a4 = v295 + v288;
    v48 = v294;
    if (v306 + 1 != v294)
    {
      goto LABEL_117;
    }

    v5 = v279;
    a3 = v287;
    v107 = v291;
    v108 = v278;
    if (v294 < v278)
    {
      goto LABEL_187;
    }

LABEL_64:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v294 = v48;
    if (isUniquelyReferenced_nonNull_native)
    {
      v107 = v291;
    }

    else
    {
      v107 = sub_1003658B8(0, *v291->clientIdentity + 1, 1, v291, v96, v97, v98, v99);
    }

    v48 = *v107->clientIdentity;
    v172 = *&v107->clientIdentity[8];
    a4 = v48 + 1;
    if (v48 >= v172 >> 1)
    {
      v107 = sub_1003658B8((v172 > 1), v48 + 1, 1, v107, v96, v97, v98, v99);
    }

    *v107->clientIdentity = a4;
    v173 = v107 + 16 * v48;
    v174 = v294;
    *(v173 + 4) = v108;
    *(v173 + 5) = v174;
    v175 = *v283;
    if (!*v283)
    {
      goto LABEL_197;
    }

    if (v48)
    {
      while (2)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          v180 = &v107->clientIdentity[16 * a4 + 16];
          v181 = *(v180 - 64);
          v182 = *(v180 - 56);
          v186 = __OFSUB__(v182, v181);
          v183 = v182 - v181;
          if (v186)
          {
            goto LABEL_174;
          }

          v185 = *(v180 - 48);
          v184 = *(v180 - 40);
          v186 = __OFSUB__(v184, v185);
          v178 = v184 - v185;
          v179 = v186;
          if (v186)
          {
            goto LABEL_175;
          }

          v187 = &v107->super.isa + 2 * a4;
          v189 = *v187;
          v188 = v187[1];
          v186 = __OFSUB__(v188, v189);
          v190 = v188 - v189;
          if (v186)
          {
            goto LABEL_177;
          }

          v186 = __OFADD__(v178, v190);
          v191 = v178 + v190;
          if (v186)
          {
            goto LABEL_180;
          }

          if (v191 >= v183)
          {
            v209 = &v107->clientIdentity[16 * v48 + 16];
            v211 = *v209;
            v210 = *(v209 + 1);
            v186 = __OFSUB__(v210, v211);
            v212 = v210 - v211;
            if (v186)
            {
              goto LABEL_184;
            }

            if (v178 < v212)
            {
              v48 = a4 - 2;
            }
          }

          else
          {
LABEL_83:
            if (v179)
            {
              goto LABEL_176;
            }

            v192 = &v107->super.isa + 2 * a4;
            v194 = *v192;
            v193 = v192[1];
            v195 = __OFSUB__(v193, v194);
            v196 = v193 - v194;
            v197 = v195;
            if (v195)
            {
              goto LABEL_179;
            }

            v198 = &v107->clientIdentity[16 * v48 + 16];
            v200 = *v198;
            v199 = *(v198 + 1);
            v186 = __OFSUB__(v199, v200);
            v201 = v199 - v200;
            if (v186)
            {
              goto LABEL_182;
            }

            if (__OFADD__(v196, v201))
            {
              goto LABEL_183;
            }

            if (v196 + v201 < v178)
            {
              goto LABEL_97;
            }

            if (v178 < v201)
            {
              v48 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v176 = *&v107->clientIdentity[16];
            v177 = *&v107->clientIdentity[24];
            v186 = __OFSUB__(v177, v176);
            v178 = v177 - v176;
            v179 = v186;
            goto LABEL_83;
          }

          v202 = &v107->super.isa + 2 * a4;
          v204 = *v202;
          v203 = v202[1];
          v186 = __OFSUB__(v203, v204);
          v196 = v203 - v204;
          v197 = v186;
LABEL_97:
          if (v197)
          {
            goto LABEL_178;
          }

          v205 = v107 + 16 * v48;
          v207 = *(v205 + 4);
          v206 = *(v205 + 5);
          v186 = __OFSUB__(v206, v207);
          v208 = v206 - v207;
          if (v186)
          {
            goto LABEL_181;
          }

          if (v208 < v196)
          {
            break;
          }
        }

        v213 = v48 - 1;
        if (v48 - 1 >= a4)
        {
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

        if (!*a3)
        {
          goto LABEL_194;
        }

        v214 = v107;
        a4 = *&v107->clientIdentity[16 * v213 + 16];
        v215 = *&v107->clientIdentity[16 * v48 + 24];
        sub_1004A3308(*a3 + *(v302 + 72) * a4, *a3 + *(v302 + 72) * *&v107->clientIdentity[16 * v48 + 16], *a3 + *(v302 + 72) * v215, v175);
        if (v5)
        {
LABEL_168:
          v270 = v214;
          goto LABEL_169;
        }

        if (v215 < a4)
        {
          goto LABEL_172;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v214 = sub_1004361F4(v214, v94, v95, v107, v96, v97, v98, v99);
        }

        if (v213 >= *v214->clientIdentity)
        {
          goto LABEL_173;
        }

        v216 = v214 + 16 * v213;
        *(v216 + 4) = a4;
        *(v216 + 5) = v215;
        v334 = v214;
        sub_100436168(v48);
        v107 = v334;
        a4 = *v334->clientIdentity;
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v105 = a3[1];
    v106 = v294;
    a4 = v282;
    if (v294 >= v105)
    {
      goto LABEL_156;
    }
  }

  v261 = v309;
  v247(v309, v250, v230);
  v262 = v319;
  v263 = static Date.< infix(_:_:)();
  v264 = *v311;
  (*v311)(v261, v230);
  v264(v262, v230);
  v265 = *v331;
  (*v331)(v333, v60);
  (v265)(v332, v60);
  v222 = v318;
  if ((v263 & 1) == 0)
  {
    goto LABEL_115;
  }

LABEL_148:
  v221 = v320;
  v266 = v330;
  if (v316)
  {
    v267 = *v321;
    v268 = v317;
    (*v321)(v317, a4, v60);
    swift_arrayInitWithTakeFrontToBack();
    v267(v224, v268, v60);
    v224 += v315;
    a4 += v315;
    v269 = __CFADD__(v266, 1);
    v220 = v266 + 1;
    if (v269)
    {
      goto LABEL_116;
    }

    goto LABEL_118;
  }

  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}