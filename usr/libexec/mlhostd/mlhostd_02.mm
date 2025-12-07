uint64_t sub_10002BCC4()
{
  v1 = v0;
  os_transaction_create();
  v2 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry);
  os_unfair_lock_lock((*(v2 + 16) + 16));
  sub_10000E968();
  *(v2 + 24) = v3;

  os_unfair_lock_unlock((*(v2 + 16) + 16));
  os_unfair_lock_lock((*(v2 + 16) + 16));

  sub_1000297E0(v4);
  v6 = v5;

  os_unfair_lock_unlock((*(v2 + 16) + 16));
  v7 = sub_10004F764(v6);

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000098DC(v8, qword_100087610);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = Set.description.getter();
    v15 = sub_100008A0C(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Discovered extensions identifiers: %s", v11, 0xCu);
    sub_100009914(v12);
  }

  v16 = *(v1 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  sub_1000212BC(v7);

  v17 = sub_10001D78C(v16);
  v18 = *(v16 + 56);
  v21 = __chkstk_darwin(v17);
  __chkstk_darwin(v21);
  os_unfair_lock_lock(v18 + 4);
  sub_100065994(v19);
  os_unfair_lock_unlock(v18 + 4);

  return swift_unknownObjectRelease();
}

void sub_10002BF80(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for MLHostTask();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000098DC(v8, qword_100087610);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = MLHostTask.bundleIdentifier.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_100008A0C(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, a2, v11, 0xCu);
    sub_100009914(v12);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10002C1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TaskStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLHostTask();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_projectBox();
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000098DC(v12, qword_100087610);
  (*(v9 + 16))(v11, a2, v8);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = v7;
    v16 = v15;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33[0] = v30;
    *v16 = 136315394;
    v17 = MLHostTask.bundleIdentifier.getter();
    v28 = v13;
    v18 = v5;
    v19 = v4;
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    v22 = sub_100008A0C(v17, v21, v33);
    v4 = v19;
    v5 = v18;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    v24 = v28;
    v25 = v29;
    *v29 = v23;
    _os_log_impl(&_mh_execute_header, v24, v14, "Error for XPCConnection with %s: %@", v16, 0x16u);
    sub_100009C94(v25, &qword_100085970, &qword_100068F48);

    sub_100009914(v30);

    v7 = v31;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  (*(v5 + 104))(v7, enum case for TaskStatus.taskFailed(_:), v4);
  v26 = v32;
  swift_beginAccess();
  return (*(v5 + 40))(v26, v7, v4);
}

uint64_t sub_10002C564(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v61 = a3;
  v8 = type metadata accessor for MLHostTask();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_1000098DC(v15, qword_100087610);
  v56 = *(v9 + 16);
  v57 = v9 + 16;
  v56(v14, a2, v8);
  v17 = a1;
  v58 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v20 = os_log_type_enabled(v18, v19);
  v59 = v9;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v53 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v54 = v8;
    v51 = v23;
    v52 = swift_slowAlloc();
    v63[0] = v52;
    *v22 = 136315394;
    v24 = MLHostTask.name.getter();
    v25 = v12;
    v26 = a2;
    v28 = v27;
    v55 = *(v9 + 8);
    v55(v14, v54);
    v29 = sub_100008A0C(v24, v28, v63);
    a2 = v26;
    v12 = v25;

    *(v22 + 4) = v29;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v17;
    v30 = v51;
    *v51 = v17;
    v31 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "Task %s completed shouldRun with result %@.", v22, 0x16u);
    sub_100009C94(v30, &qword_100085970, &qword_100068F48);
    v8 = v54;

    sub_100009914(v52);

    a4 = v53;
  }

  else
  {

    v55 = *(v9 + 8);
    v55(v14, v8);
  }

  v32 = v61;
  swift_beginAccess();
  v33 = *(v32 + 16);
  *(v32 + 16) = v17;

  v34 = v17;
  MLHostResult.status.getter();
  v35 = MLHostResultStatus.rawValue.getter();
  v37 = 0;
  if (v35 == MLHostResultStatus.rawValue.getter())
  {
    MLHostResult.policy.getter();
    v36 = MLHostResultPolicy.rawValue.getter();
    if (v36 == MLHostResultPolicy.rawValue.getter())
    {
      v37 = 1;
    }
  }

  swift_beginAccess();
  *(a4 + 16) = v37;
  result = MLHostResult.errorString.getter();
  if (v39)
  {
    v40 = result;
    v41 = v39;
    v56(v12, a2, v8);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v44 = 136315394;
      v45 = MLHostTask.name.getter();
      v47 = v46;
      v55(v12, v8);
      v48 = sub_100008A0C(v45, v47, &v62);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_100008A0C(v40, v41, &v62);
      _os_log_impl(&_mh_execute_header, v42, v43, "Task %s returned error in shouldRun: %s", v44, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v55(v12, v8);
    }

    v49 = MLHostTask.name.getter();
    sub_10001CA2C(v49, v50, v40, v41);
  }

  return result;
}

uint64_t sub_10002CAA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a5;
  v67 = a3;
  v7 = type metadata accessor for TaskStatus();
  v69 = *(v7 - 8);
  __chkstk_darwin(v7);
  v70 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLHostTask();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v57 - v14;
  v68 = swift_projectBox();
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_1000098DC(v16, qword_100087610);
  v62 = *(v10 + 16);
  v63 = v10 + 16;
  v62(v15, a2, v9);
  v18 = a1;
  v64 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  v21 = os_log_type_enabled(v19, v20);
  v65 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v60 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v59 = v13;
    v25 = v24;
    v26 = swift_slowAlloc();
    v58 = v7;
    v27 = v26;
    v72[0] = v26;
    *v23 = 136315394;
    v28 = MLHostTask.name.getter();
    v29 = v10;
    v30 = v9;
    v32 = v31;
    v61 = *(v29 + 8);
    v61(v15, v30);
    v33 = sub_100008A0C(v28, v32, v72);
    v9 = v30;

    *(v23 + 4) = v33;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v18;
    *v25 = v18;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Task %s completed doWork with result %@.", v23, 0x16u);
    sub_100009C94(v25, &qword_100085970, &qword_100068F48);
    v13 = v59;

    sub_100009914(v27);
    v7 = v58;

    a2 = v60;
  }

  else
  {

    v61 = *(v10 + 8);
    v61(v15, v9);
  }

  v35 = v67;
  swift_beginAccess();
  v36 = *(v35 + 16);
  *(v35 + 16) = v18;

  v37 = v18;
  v38 = MLHostResult.status.getter();
  v39 = v70;
  v40 = (v69 + 40);
  if (v38 == 2)
  {
    v41 = &enum case for TaskStatus.taskCompleted(_:);
  }

  else
  {
    v41 = &enum case for TaskStatus.taskFailed(_:);
  }

  (*(v69 + 104))(v70, *v41, v7);
  v42 = v68;
  swift_beginAccess();
  (*v40)(v42, v39, v7);
  result = MLHostResult.errorString.getter();
  if (v44)
  {
    v45 = result;
    v46 = v44;
    v62(v13, a2, v9);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v49 = 136315394;
      v50 = MLHostTask.name.getter();
      v51 = v9;
      v53 = v52;
      v61(v13, v51);
      v54 = sub_100008A0C(v50, v53, &v71);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_100008A0C(v45, v46, &v71);
      _os_log_impl(&_mh_execute_header, v47, v48, "Task %s returned error: %s", v49, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v61(v13, v9);
    }

    v55 = MLHostTask.name.getter();
    sub_10001CA2C(v55, v56, v45, v46);
  }

  return result;
}

uint64_t sub_10002D080(void *a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for MLHostTask();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v97 = &v89 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v89 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v89 - v17;
  __chkstk_darwin(v16);
  v20 = &v89 - v19;
  if ((MLHostTask.isBackgroundTask.getter() & 1) == 0 && (a2 & 1) == 0)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000098DC(v21, qword_100087610);
    (*(v7 + 16))(v10, a1, v6);
    v22 = v7;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136315138;
      v27 = MLHostTask.name.getter();
      v29 = v28;
      (*(v22 + 8))(v10, v6);
      v30 = sub_100008A0C(v27, v29, &aBlock);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Skipping registration for non-background task: %s", v25, 0xCu);
      sub_100009914(v26);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    return 0;
  }

  v95 = a2;
  v98 = v7;
  v99 = v6;
  v94 = v3;
  v31 = *(v3 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry);
  v96 = a1;
  v32 = MLHostTask.bundleIdentifier.getter();
  v34 = v33;
  os_unfair_lock_lock((*(v31 + 16) + 16));

  sub_1000297E0(v35);
  v37 = v36;

  aBlock = v32;
  v101 = v34;
  __chkstk_darwin(v38);
  *(&v89 - 2) = &aBlock;
  LOBYTE(v32) = sub_100029F60(sub_100065978, (&v89 - 4), v37);

  os_unfair_lock_unlock((*(v31 + 16) + 16));
  if ((v32 & 1) == 0)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000098DC(v44, qword_100087610);
    v45 = v98;
    v46 = v99;
    v47 = *(v98 + 16);
    v48 = v96;
    v47(v20, v96, v99);
    v47(v18, v48, v46);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v51 = 136315394;
      v52 = MLHostTask.bundleIdentifier.getter();
      LODWORD(v97) = v50;
      v53 = v52;
      v55 = v54;
      v56 = *(v45 + 8);
      v56(v20, v46);
      v57 = sub_100008A0C(v53, v55, &aBlock);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2080;
      v58 = MLHostTask.name.getter();
      v60 = v59;
      v56(v18, v46);
      v61 = sub_100008A0C(v58, v60, &aBlock);

      *(v51 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v49, v97, "Invalid extension name: %s for task: %s. Skipping registration.", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v74 = *(v45 + 8);
      v74(v18, v46);
      v74(v20, v46);
    }

    return 0;
  }

  v39 = v96;
  if (v95)
  {
    aBlock = MLHostTask.name.getter();
    v101 = v40;
    v41._countAndFlagsBits = 0x6E616D65646E6F2ELL;
    v41._object = 0xE900000000000064;
    String.append(_:)(v41);
    v42 = aBlock;
    v43 = v101;
  }

  else
  {
    v42 = MLHostTask.name.getter();
    v43 = v62;
  }

  v63 = v98;
  v93 = v42;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  v65 = sub_1000098DC(v64, qword_100087610);
  v91 = *(v63 + 16);
  v91(v15, v39, v99);

  v92 = v65;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    aBlock = v90;
    *v68 = 136315394;
    v69 = v93;
    *(v68 + 4) = sub_100008A0C(v93, v43, &aBlock);
    *(v68 + 12) = 2080;
    v70 = MLHostTask.bundleIdentifier.getter();
    v72 = v71;
    (*(v98 + 8))(v15, v99);
    v73 = sub_100008A0C(v70, v72, &aBlock);

    *(v68 + 14) = v73;
    _os_log_impl(&_mh_execute_header, v66, v67, "Registering task %s with bundleIdentifier %s.", v68, 0x16u);
    swift_arrayDestroy();

    v63 = v98;
    v39 = v96;
  }

  else
  {

    (*(v63 + 8))(v15, v99);
    v69 = v93;
  }

  v96 = [objc_opt_self() sharedScheduler];
  v75 = String._bridgeToObjectiveC()();
  v76 = v94;
  v90 = *(v94 + 48);
  v77 = v97;
  v78 = v99;
  v91(v97, v39, v99);
  v79 = (*(v63 + 80) + 41) & ~*(v63 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v76;
  *(v80 + 24) = v69;
  *(v80 + 32) = v43;
  *(v80 + 40) = v95 & 1;
  (*(v63 + 32))(v80 + v79, v77, v78);
  v104 = sub_100052014;
  v105 = v80;
  aBlock = _NSConcreteStackBlock;
  v101 = 1107296256;
  v102 = sub_100065970;
  v103 = &unk_100082CA8;
  v81 = _Block_copy(&aBlock);

  v82 = v96;
  v83 = [v96 registerForTaskWithIdentifier:v75 usingQueue:v90 launchHandler:v81];
  _Block_release(v81);

  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    aBlock = v87;
    *v86 = 136315394;
    *(v86 + 4) = sub_100008A0C(v69, v43, &aBlock);
    *(v86 + 12) = 1024;
    *(v86 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v84, v85, "Task %s registration info: %{BOOL}d", v86, 0x12u);
    sub_100009914(v87);
  }

  return v69;
}

uint64_t sub_10002DA9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v30 = a6;
  v31 = a5;
  v27 = a3;
  v28 = a1;
  v29 = type metadata accessor for MLHostTask();
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v29);
  v11 = sub_1000089AC(&qword_100085C50, &qword_100069400);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  os_unfair_lock_lock((*(v14 + 56) + 16));
  swift_beginAccess();
  sub_10004E224(a3, a4);
  swift_endAccess();

  os_unfair_lock_unlock((*(v14 + 56) + 16));
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  aBlock[4] = sub_1000520D0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002DFA8;
  aBlock[3] = &unk_100082CF8;
  v16 = _Block_copy(aBlock);

  v17 = v28;
  [v28 setExpirationHandlerWithReason:v16];
  _Block_release(v16);
  v18 = type metadata accessor for TaskPriority();
  v19 = v13;
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v20 = v29;
  (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v29);
  v21 = (*(v9 + 80) + 57) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v23 = v27;
  *(v22 + 32) = a2;
  *(v22 + 40) = v23;
  *(v22 + 48) = a4;
  *(v22 + 56) = v31;
  (*(v9 + 32))(v22 + v21, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  *(v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;

  v24 = v17;
  sub_10002F68C(0, 0, v19, &unk_100069410, v22);
}

void sub_10002DDE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000098DC(v8, qword_100087610);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100008A0C(a2, a3, v14);
    *(v11 + 12) = 2048;
    *(v11 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v9, v10, "Task %s expired with reason: %lu", v11, 0x16u);
    sub_100009914(v12);
  }

  v13 = *(a4 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  os_unfair_lock_lock((*(v13 + 56) + 16));
  swift_beginAccess();

  sub_10004A918(&v15, a2, a3);
  swift_endAccess();

  os_unfair_lock_unlock((*(v13 + 56) + 16));
}

uint64_t sub_10002DFA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10002DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 160) = a8;
  *(v8 + 168) = v13;
  *(v8 + 272) = a7;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 136) = a4;
  v9 = type metadata accessor for TaskDefinition();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  sub_1000089AC(&qword_1000859A0, &qword_100069268);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_1000089AC(&qword_100085C58, &qword_100069430);
  *(v8 + 224) = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock.Instant();
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();

  return (_swift_task_switch)(sub_10002E1E0, 0, 0);
}

uint64_t sub_10002E1E0()
{
  if (*(v0 + 272) == 1)
  {
    v2 = *(v0 + 240);
    v1 = *(v0 + 248);
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(*(v0 + 136) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_triggerRegistry);
    static ContinuousClock.Instant.now.getter();
    os_unfair_lock_lock((*(v7 + 16) + 16));
    (*(v2 + 16))(v4, v1, v3);
    (*(v2 + 56))(v4, 0, 1, v3);
    swift_beginAccess();

    sub_100028DE8(v4, v6, v5);
    swift_endAccess();
    os_unfair_lock_unlock((*(v7 + 16) + 16));
    (*(v2 + 8))(v1, v3);
  }

  v8 = swift_task_alloc();
  *(v0 + 256) = v8;
  *v8 = v0;
  v8[1] = sub_10002E3BC;
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);

  return sub_100053544(v10, v11, v11, v12, v9);
}

uint64_t sub_10002E3BC(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return (_swift_task_switch)(sub_10002E52C, 0, 0);
}

uint64_t sub_10002E52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v118 = v3;
  v4 = *(v3 + 264);
  if (!v4)
  {
    if (qword_1000850B8 == -1)
    {
LABEL_13:
      v27 = type metadata accessor for Logger();
      sub_1000098DC(v27, qword_100087610);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v31 = *(v3 + 144);
        v30 = *(v3 + 152);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v117[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_100008A0C(v31, v30, v117);
        _os_log_impl(&_mh_execute_header, v28, v29, "Task %s returned nil, marking DAS task as completed.", v32, 0xCu);
        sub_100009914(v33);
      }

      v34 = *(v3 + 272);
      v36 = *(v3 + 144);
      v35 = *(v3 + 152);
      v37 = *(v3 + 136);
      [*(v3 + 168) setTaskCompleted];
      sub_10002F308(v34, v37, v36, v35);
      v38 = *(v37 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
      goto LABEL_31;
    }

LABEL_61:
    swift_once();
    goto LABEL_13;
  }

  v5 = v4;
  MLHostResult.status.getter();
  v6 = MLHostResultStatus.rawValue.getter();
  if (v6 == MLHostResultStatus.rawValue.getter())
  {
    MLHostResult.policy.getter();
    v7 = MLHostResultPolicy.rawValue.getter();
    if (v7 == MLHostResultPolicy.rawValue.getter())
    {

      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000098DC(v8, qword_100087610);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v12 = *(v3 + 144);
        v11 = *(v3 + 152);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v117[0] = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_100008A0C(v12, v11, v117);
        _os_log_impl(&_mh_execute_header, v9, v10, "Task %s has reschedule policy, passing retry to DAS.", v13, 0xCu);
        sub_100009914(v14);
      }

      v15 = *(v3 + 168);
      *(v3 + 128) = 0;
      v16 = [v15 setTaskExpiredWithRetryAfter:v3 + 128 error:300.0];
      v17 = *(v3 + 128);
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v53 = v17;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Task setTaskExpiredWithRetryAfter failed. Fallback to default strategy.", v56, 2u);
        }

        v57 = *(v3 + 168);

        [v57 setTaskCompleted];
      }

      v36 = *(v3 + 144);
      v35 = *(v3 + 152);
      v58 = *(v3 + 136);
      sub_10002F308(*(v3 + 272), v58, v36, v35);
      v38 = *(v58 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
LABEL_31:
      v60 = *(v38 + 56);
      v59 = (v38 + 56);
      os_unfair_lock_lock(v60 + 4);
      swift_beginAccess();
      v61 = v36;
      v62 = v35;
      goto LABEL_56;
    }
  }

  v19 = *(v3 + 216);
  v20 = *(v3 + 200);
  v21 = *(v3 + 176);
  v22 = *(v3 + 184);
  MLHostTask.taskDefinition.getter();
  TaskDefinition.taskRequest.getter();
  v115 = *(v22 + 8);
  v115(v20, v21);
  v23 = type metadata accessor for TaskRequest();
  v24 = *(v23 - 8);
  v114 = *(v24 + 48);
  v25 = v114(v19, 1, v23);
  v26 = *(v3 + 216);
  v113 = v24;
  if (v25 != 1)
  {
    v39 = TaskRequest.dependencies.getter();
    (*(v24 + 8))(v26, v23);
    if (!v39)
    {
      goto LABEL_37;
    }

    v40 = 0;
    v110 = _swiftEmptyArrayStorage;
    v117[0] = _swiftEmptyArrayStorage;
    v41 = *(v39 + 16);
    v42 = v39 + 40;
LABEL_18:
    v43 = v42 + 16 * v40;
    while (1)
    {
      if (v41 == v40)
      {
        v48 = *(v3 + 168);

        sub_100052B18(v110);

        sub_100009A48(0, &qword_100085C60, BGSystemTaskResult_ptr);
        sub_100063B48();
        isa = Set._bridgeToObjectiveC()().super.isa;

        *(v3 + 120) = 0;
        v50 = [v48 consumedResults:isa error:v3 + 120];

        v51 = *(v3 + 120);
        if (v50)
        {
          v52 = v51;
        }

        else
        {
          v63 = v51;
          v64 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1000850B8 != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          sub_1000098DC(v65, qword_100087610);

          swift_errorRetain();
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          v108 = v64;
          if (os_log_type_enabled(v66, v67))
          {
            v111 = *(v3 + 152);
            v109 = *(v3 + 144);
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v117[0] = v70;
            *v68 = 136315394;
            *(v68 + 4) = sub_100008A0C(v109, v111, v117);
            *(v68 + 12) = 2112;
            swift_errorRetain();
            v71 = _swift_stdlib_bridgeErrorToNSError();
            *(v68 + 14) = v71;
            *v69 = v71;
            _os_log_impl(&_mh_execute_header, v66, v67, "Failed at consuming results for task: %s. Error: %@", v68, 0x16u);
            sub_100009C94(v69, &qword_100085970, &qword_100068F48);

            sub_100009914(v70);
          }

          else
          {
          }
        }

        goto LABEL_37;
      }

      if (v40 >= *(v39 + 16))
      {
        break;
      }

      v44 = v43 + 16;
      ++v40;
      v45 = objc_allocWithZone(BGSystemTaskResult);

      v46 = String._bridgeToObjectiveC()();

      v47 = [v45 initWithIdentifier:v46 consumptionCount:1];

      v43 = v44;
      if (v47)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v117[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v110 = v117[0];
        v42 = v39 + 40;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  sub_100009C94(v26, &qword_1000859A0, &qword_100069268);
LABEL_37:
  v72 = *(v3 + 208);
  v73 = *(v3 + 192);
  v74 = *(v3 + 176);
  MLHostTask.taskDefinition.getter();
  TaskDefinition.taskRequest.getter();
  v115(v73, v74);
  v75 = v114(v72, 1, v23);
  v76 = *(v3 + 208);
  if (v75 == 1)
  {
    sub_100009C94(*(v3 + 208), &qword_1000859A0, &qword_100069268);
  }

  else
  {
    v77 = TaskRequest.producedResultIdentifiers.getter();
    (*(v113 + 8))(v76, v23);
    if (v77)
    {
      v112 = v5;
      v78 = 0;
      v116 = _swiftEmptyArrayStorage;
      v117[0] = _swiftEmptyArrayStorage;
      v79 = *(v77 + 16);
      v80 = v77 + 40;
LABEL_41:
      v81 = v80 + 16 * v78;
      while (v79 != v78)
      {
        if (v78 >= *(v77 + 16))
        {
          goto LABEL_60;
        }

        v82 = v81 + 16;
        ++v78;
        v83 = objc_allocWithZone(BGSystemTaskResult);

        v84 = String._bridgeToObjectiveC()();

        v85 = [v83 initWithIdentifier:v84 cumulativeProductionCount:1];

        v81 = v82;
        if (v85)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v117[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v116 = v117[0];
          v80 = v77 + 40;
          goto LABEL_41;
        }
      }

      v86 = *(v3 + 168);

      sub_100052B18(v116);

      sub_100009A48(0, &qword_100085C60, BGSystemTaskResult_ptr);
      sub_100063B48();
      v87 = Set._bridgeToObjectiveC()().super.isa;

      *(v3 + 112) = 0;
      LOBYTE(v86) = [v86 producedCumulativeResults:v87 error:v3 + 112];

      v88 = *(v3 + 112);
      if (v86)
      {
        v89 = v88;
        v5 = v112;
      }

      else
      {
        v90 = v88;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v5 = v112;
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v91 = type metadata accessor for Logger();
        sub_1000098DC(v91, qword_100087610);

        swift_errorRetain();
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v92, v93))
        {
          v95 = *(v3 + 144);
          v94 = *(v3 + 152);
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v117[0] = v98;
          *v96 = 136315394;
          *(v96 + 4) = sub_100008A0C(v95, v94, v117);
          *(v96 + 12) = 2112;
          swift_errorRetain();
          v99 = _swift_stdlib_bridgeErrorToNSError();
          *(v96 + 14) = v99;
          *v97 = v99;
          _os_log_impl(&_mh_execute_header, v92, v93, "Failed at generating results for task: %s. Error: %@", v96, 0x16u);
          sub_100009C94(v97, &qword_100085970, &qword_100068F48);

          sub_100009914(v98);
        }

        else
        {
        }
      }
    }
  }

  v100 = *(v3 + 272);
  v102 = *(v3 + 144);
  v101 = *(v3 + 152);
  v103 = *(v3 + 136);
  [*(v3 + 168) setTaskCompleted];

  sub_10002F308(v100, v103, v102, v101);
  v104 = *(v103 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v105 = *(v104 + 56);
  v59 = (v104 + 56);
  os_unfair_lock_lock(v105 + 4);
  swift_beginAccess();
  v61 = v102;
  v62 = v101;
LABEL_56:
  sub_10004E224(v61, v62);
  swift_endAccess();

  os_unfair_lock_unlock(*v59 + 4);

  v106 = *(v3 + 8);

  return v106();
}

uint64_t sub_10002F308(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1000089AC(&qword_100085C58, &qword_100069430);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for ContinuousClock.Instant();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  if (a1)
  {
    sub_100063BB0(a3, a4, v16);
    sub_100010B74(a3, a4, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return sub_100009C94(v9, &qword_100085C58, &qword_100069430);
    }

    else
    {
      (*(v11 + 32))(v18, v9, v10);
      static ContinuousClock.Instant.now.getter();
      ContinuousClock.Instant.duration(to:)();
      v31 = v19;
      v20 = *(v11 + 8);
      v20(v14, v10);
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000098DC(v21, qword_100087610);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30 = v20;
        v32 = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_100008A0C(a3, a4, &v32);
        *(v24 + 12) = 2080;
        v26 = Duration.description.getter();
        v28 = sub_100008A0C(v26, v27, &v32);

        *(v24 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "On-demand task %s terminated after: %s", v24, 0x16u);
        swift_arrayDestroy();

        return v30(v18, v10);
      }

      else
      {

        return (v20)(v18, v10);
      }
    }
  }

  return result;
}

uint64_t sub_10002F68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000089AC(&qword_100085C50, &qword_100069400);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100009C2C(a3, v25 - v10, &qword_100085C50, &qword_100069400);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009C94(v11, &qword_100085C50, &qword_100069400);
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

      sub_100009C94(a3, &qword_100085C50, &qword_100069400);

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

  sub_100009C94(a3, &qword_100085C50, &qword_100069400);
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

void sub_10002F98C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10002F9F8()
{
  v1 = v0;
  v2 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v68 - v3;
  v87 = type metadata accessor for MLHostTask();
  v73 = *(v87 - 8);
  v5 = __chkstk_darwin(v87);
  v72 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v68 - v7;
  v8 = sub_1000089AC(&qword_100085910, &unk_1000693B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v68 - v9;
  v11 = sub_1000089AC(&qword_100085918, &qword_100069250);
  __chkstk_darwin(v11 - 8);
  v13 = &v68 - v12;
  v68 = os_transaction_create();
  v14 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v15 = type metadata accessor for TaskType();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = enum case for TaskCategory.backgroundTask(_:);
  v17 = type metadata accessor for TaskCategory();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v10, v16, v17);
  (*(v18 + 56))(v10, 0, 1, v17);
  v19 = v14;
  v20 = sub_10001BA90(v13, v10);
  sub_100009C94(v10, &qword_100085910, &unk_1000693B0);
  v21 = v13;
  v22 = v4;
  sub_100009C94(v21, &qword_100085918, &qword_100069250);
  v69 = v20;
  v24 = v20[2];
  if (v24)
  {
    v86 = (v73 + 56);
    v80 = (v73 + 16);
    v84 = 0;
    v85 = (v73 + 48);
    v75 = (v73 + 32);
    v76 = OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry;
    v74 = (v73 + 8);
    v25 = v69 + 5;
    *&v23 = 136315138;
    v71 = v23;
    *&v23 = 136315394;
    v70 = v23;
    v78 = v1;
    v79 = v22;
    v77 = v19;
    do
    {
      v30 = *(v25 - 1);
      v31 = *v25;
      v32 = *(v19 + 56);

      os_unfair_lock_lock(v32 + 4);
      swift_beginAccess();
      v33 = *(v19 + 64);
      if (*(v33 + 16))
      {
        v34 = sub_100010DF4(v30, v31);
        v35 = v87;
        if (v36)
        {
          (*(v73 + 16))(v22, *(v33 + 56) + *(v73 + 72) * v34, v87);
          v37 = 0;
        }

        else
        {
          v37 = 1;
        }
      }

      else
      {
        v37 = 1;
        v35 = v87;
      }

      (*v86)(v22, v37, 1, v35);
      swift_endAccess();
      os_unfair_lock_unlock((*(v19 + 56) + 16));
      if ((*v85)(v22, 1, v35) == 1)
      {
        sub_100009C94(v22, &qword_100085940, &unk_1000693D0);
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_1000098DC(v38, qword_100087610);

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v26 = swift_slowAlloc();
          v27 = v24;
          v28 = swift_slowAlloc();
          v88[0] = v28;
          *v26 = v71;
          v29 = sub_100008A0C(v30, v31, v88);

          *(v26 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v39, v40, "Skipping %s because is not available in TaskRegistry", v26, 0xCu);
          sub_100009914(v28);
          v24 = v27;
          v1 = v78;
        }

        else
        {
        }
      }

      else
      {
        v81 = v30;
        v83 = v24;
        v41 = v82;
        (*v75)(v82, v22, v35);
        v42 = v1;
        v43 = *(v1 + v76);
        v44 = MLHostTask.bundleIdentifier.getter();
        v46 = v45;
        os_unfair_lock_lock((*(v43 + 16) + 16));

        v48 = v84;
        sub_1000297E0(v47);
        v50 = v49;

        v88[0] = v44;
        v88[1] = v46;
        __chkstk_darwin(v51);
        *(&v68 - 2) = v88;
        LOBYTE(v44) = sub_100029F60(sub_100051F2C, (&v68 - 4), v50);
        v84 = v48;

        os_unfair_lock_unlock((*(v43 + 16) + 16));
        if (v44)
        {

          sub_10002D080(v41, 0);

          (*v74)(v41, v87);
          v1 = v42;
        }

        else
        {
          if (qword_1000850B8 != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          sub_1000098DC(v52, qword_100087610);
          v53 = v72;
          v54 = v82;
          v55 = v87;
          (*v80)(v72, v82, v87);

          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v88[0] = swift_slowAlloc();
            *v58 = v70;
            v59 = sub_100008A0C(v81, v31, v88);

            *(v58 + 4) = v59;
            *(v58 + 12) = 2080;
            v60 = MLHostTask.bundleIdentifier.getter();
            v61 = v53;
            v63 = v62;
            v64 = *v74;
            (*v74)(v61, v55);
            v65 = sub_100008A0C(v60, v63, v88);

            *(v58 + 14) = v65;
            _os_log_impl(&_mh_execute_header, v56, v57, "Skipping %s because invalid extension: %s", v58, 0x16u);
            swift_arrayDestroy();

            v64(v82, v55);
          }

          else
          {

            v66 = *v74;
            (*v74)(v53, v55);
            v66(v54, v55);
          }

          v1 = v78;
        }

        v22 = v79;
        v19 = v77;
        v24 = v83;
      }

      v25 += 2;
      --v24;
    }

    while (v24);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100030304()
{
  v1 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = type metadata accessor for MLHostTask();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000089AC(&qword_100085910, &unk_1000693B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_1000089AC(&qword_100085918, &qword_100069250);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v39 = os_transaction_create();
  v12 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v13 = type metadata accessor for TaskType();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = enum case for TaskCategory.backgroundTask(_:);
  v15 = type metadata accessor for TaskCategory();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v8, v14, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v17 = sub_10001BA90(v11, v8);
  sub_100009C94(v8, &qword_100085910, &unk_1000693B0);
  sub_100009C94(v11, &qword_100085918, &qword_100069250);
  v40 = v17;
  v19 = v17[2];
  if (v19)
  {
    v20 = (v45 + 56);
    v44 = v45 + 16;
    v21 = (v45 + 48);
    v46 = (v45 + 8);
    v47 = (v45 + 32);
    v22 = v40 + 5;
    *&v18 = 136315138;
    v41 = v18;
    v42 = (v45 + 56);
    v43 = v4;
    v48 = (v45 + 48);
    do
    {
      v25 = *(v22 - 1);
      v24 = *v22;
      v26 = *(v12 + 56);

      os_unfair_lock_lock(v26 + 4);
      swift_beginAccess();
      v27 = *(v12 + 64);
      if (*(v27 + 16) && (v28 = sub_100010DF4(v25, v24), (v29 & 1) != 0))
      {
        (*(v45 + 16))(v3, *(v27 + 56) + *(v45 + 72) * v28, v4);
        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      (*v20)(v3, v30, 1, v4);
      swift_endAccess();
      os_unfair_lock_unlock((*(v12 + 56) + 16));
      if ((*v21)(v3, 1, v4) == 1)
      {
        sub_100009C94(v3, &qword_100085940, &unk_1000693D0);
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_1000098DC(v31, qword_100087610);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = v3;
          v36 = swift_slowAlloc();
          v50[0] = v36;
          *v34 = v41;
          v37 = sub_100008A0C(v25, v24, v50);

          *(v34 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping %s because is not available in TaskRegistry", v34, 0xCu);
          sub_100009914(v36);
          v3 = v35;
          v4 = v43;

          v20 = v42;
        }

        else
        {
        }

        v21 = v48;
      }

      else
      {

        v23 = v49;
        (*v47)(v49, v3, v4);
        sub_1000509EC(v23);
        (*v46)(v23, v4);
      }

      v22 += 2;
      --v19;
    }

    while (v19);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1000308A4()
{
  v0 = sub_1000089AC(&qword_100085910, &unk_1000693B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_1000089AC(&qword_100085918, &qword_100069250);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  os_transaction_create();
  v6 = type metadata accessor for TaskType();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = enum case for TaskCategory.backgroundTask(_:);
  v8 = type metadata accessor for TaskCategory();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = sub_10001BA90(v5, v2);
  sub_100009C94(v2, &qword_100085910, &unk_1000693B0);
  sub_100009C94(v5, &qword_100085918, &qword_100069250);
  v11 = v10[2];
  if (v11)
  {
    v12 = v10 + 5;
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      sub_100063BB0(v13, v14, v15);

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100030AE0(void *a1, uint64_t a2, uint64_t a3)
{
  v89 = a3;
  v87 = a2;
  v4 = type metadata accessor for MLHostTask();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000089AC(&qword_1000859A0, &qword_100069268);
  __chkstk_darwin(v8 - 8);
  v85 = &v76 - v9;
  v10 = type metadata accessor for TaskDefinition();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TaskRequest();
  v83 = *(v13 - 8);
  v84 = v13;
  __chkstk_darwin(v13);
  v80 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000089AC(&qword_100085E50, &qword_1000695A8);
  __chkstk_darwin(v15 - 8);
  v17 = &v76 - v16;
  v18 = type metadata accessor for OnDemandTaskRequest();
  v86 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a1;
  v21 = sub_10002D080(a1, 1);
  if (v22)
  {
    v79 = v12;
    v23 = v21;
    v24 = v22;
    v25 = objc_opt_self();
    v26 = [v25 sharedScheduler];
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 taskRequestForIdentifier:v27];

    if (v28)
    {

      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000098DC(v29, qword_100087610);
      v30 = v28;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        *(v33 + 4) = v30;
        *v34 = v28;
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v31, v32, "Found existing taskRequest: %@", v33, 0xCu);
        sub_100009C94(v34, &qword_100085970, &qword_100068F48);
      }

      v36 = enum case for OnDemandError.taskPending(_:);
      v37 = type metadata accessor for OnDemandError();
      (*(*(v37 - 8) + 104))(v89, v36, v37);
      sub_100051EE4(&qword_100085E60, &type metadata accessor for OnDemandError, &protocol conformance descriptor for OnDemandError);
      swift_willThrowTypedImpl();
    }

    else
    {
      v78 = v25;
      v47 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
      v77 = v23;
      v48 = v24;
      v49 = String._bridgeToObjectiveC()();
      v50 = [v47 initWithIdentifier:v49];

      v91 = v50;
      [v50 setScheduleAfter:1.0];
      sub_100009C2C(v87, v17, &qword_100085E50, &qword_1000695A8);
      v51 = v86;
      if ((*(v86 + 48))(v17, 1, v18) == 1)
      {
        sub_100009C94(v17, &qword_100085E50, &qword_1000695A8);
        v52 = v79;
      }

      else
      {
        (*(v51 + 32))(v20, v17, v18);
        OnDemandTaskRequest.scheduleAfter.getter();
        v56 = Duration.components.getter();
        v52 = v79;
        if (v56 >= 0x15181)
        {

          v57 = enum case for OnDemandError.invalidRequest(_:);
          v58 = type metadata accessor for OnDemandError();
          (*(*(v58 - 8) + 104))(v89, v57, v58);
          sub_100051EE4(&qword_100085E60, &type metadata accessor for OnDemandError, &protocol conformance descriptor for OnDemandError);
          swift_willThrowTypedImpl();
          (*(v51 + 8))(v20, v18);

          return 1;
        }

        [v50 setScheduleAfter:v56];
        (*(v51 + 8))(v20, v18);
      }

      [v50 scheduleAfter];
      [v50 setTrySchedulingBefore:?];
      MLHostTask.taskDefinition.getter();
      v59 = v85;
      TaskDefinition.taskRequest.getter();
      (*(v81 + 8))(v52, v82);
      v61 = v83;
      v60 = v84;
      if ((*(v83 + 48))(v59, 1, v84) == 1)
      {
        sub_100009C94(v59, &qword_1000859A0, &qword_100069268);
      }

      else
      {
        v62 = v80;
        (*(v61 + 32))(v80, v59, v60);
        sub_100009A48(0, &qword_100085E68, BGNonRepeatingSystemTaskRequest_ptr);
        TaskRequest.asSystemRequest<A>(request:)();
        (*(v61 + 8))(v62, v60);
      }

      v63 = [v78 sharedScheduler];
      v30 = v91;
      v90 = 0;
      v64 = [v63 submitTaskRequest:v91 error:&v90];

      if (v64)
      {
        v65 = v90;

        return 1;
      }

      v66 = v90;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_1000098DC(v67, qword_100087610);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v90 = v71;
        *v70 = 136315138;
        v72 = v77;
        *(v70 + 4) = sub_100008A0C(v77, v48, &v90);
        _os_log_impl(&_mh_execute_header, v68, v69, "Failed at scheduling ondemand task: %s", v70, 0xCu);
        sub_100009914(v71);
      }

      else
      {

        v72 = v77;
      }

      sub_100063BB0(v72, v48, v73);

      v74 = enum case for OnDemandError.schedulingError(_:);
      v75 = type metadata accessor for OnDemandError();
      (*(*(v75 - 8) + 104))(v89, v74, v75);
      sub_100051EE4(&qword_100085E60, &type metadata accessor for OnDemandError, &protocol conformance descriptor for OnDemandError);
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000098DC(v38, qword_100087610);
    (*(v5 + 16))(v7, v88, v4);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v91 = v42;
      *v41 = 136315138;
      sub_100051EE4(&unk_100085C40, &type metadata accessor for MLHostTask, &protocol conformance descriptor for MLHostTask);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v5 + 8))(v7, v4);
      v46 = sub_100008A0C(v43, v45, &v91);

      *(v41 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed at registering activity for task: %s", v41, 0xCu);
      sub_100009914(v42);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v53 = enum case for OnDemandError.taskInvalid(_:);
    v54 = type metadata accessor for OnDemandError();
    (*(*(v54 - 8) + 104))(v89, v53, v54);
    sub_100051EE4(&qword_100085E60, &type metadata accessor for OnDemandError, &protocol conformance descriptor for OnDemandError);
    swift_willThrowTypedImpl();
  }

  return 1;
}

uint64_t sub_100031790(NSObject *a1, unint64_t a2)
{
  v5 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  __chkstk_darwin(v5 - 8);
  v96 = &v92[-v6];
  v7 = type metadata accessor for DatastoreKey();
  v98 = *(v7 - 8);
  v99 = v7;
  v8 = __chkstk_darwin(v7);
  v97 = &v92[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v95 = &v92[-v11];
  __chkstk_darwin(v10);
  v102 = &v92[-v12];
  v13 = sub_1000089AC(&qword_100085C28, &qword_1000693C8);
  __chkstk_darwin(v13 - 8);
  v15 = &v92[-v14];
  v16 = type metadata accessor for TaskDefinition();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v92[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for TaskTriggerRequest();
  v21 = *(v20 - 8);
  v103 = v20;
  v104 = v21;
  __chkstk_darwin(v20);
  v101 = &v92[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v23 - 8);
  v25 = &v92[-v24];
  v26 = type metadata accessor for MLHostTask();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v92[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = v2;
  v105 = a1;
  v30 = a1;
  v32 = v31;
  sub_100019300(v30, a2, v25);
  if ((*(v27 + 48))(v25, 1, v32) == 1)
  {
    sub_100009C94(v25, &qword_100085940, &unk_1000693D0);
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000098DC(v33, qword_100087610);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v107[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100008A0C(v105, a2, v107);
      _os_log_impl(&_mh_execute_header, v34, v35, "Skipping %s because is not available in TaskRegistry", v36, 0xCu);
      sub_100009914(v37);
    }

    return 0;
  }

  (*(v27 + 32))(v29, v25, v32);
  if ((MLHostTask.isTriggerTask.getter() & 1) == 0)
  {
LABEL_10:
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000098DC(v40, qword_100087610);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v107[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_100008A0C(v105, a2, v107);
      _os_log_impl(&_mh_execute_header, v41, v42, "Skipping %s because is not a subscription task", v43, 0xCu);
      sub_100009914(v44);
    }

    (*(v27 + 8))(v29, v32);
    return 0;
  }

  MLHostTask.taskDefinition.getter();
  TaskDefinition.triggerRequest.getter();
  (*(v17 + 8))(v19, v16);
  v39 = v103;
  v38 = v104;
  if ((*(v104 + 48))(v15, 1, v103) == 1)
  {
    sub_100009C94(v15, &qword_100085C28, &qword_1000693C8);
    goto LABEL_10;
  }

  v94 = v29;
  v46 = *(v38 + 32);
  v47 = v101;
  v46(v101, v15, v39);
  v48 = TaskTriggerRequest.subscriptionTriggerTopic.getter();
  v50 = v102;
  if (v49)
  {
    v51 = v48;
    v52 = v49;
    sub_1000089AC(&qword_100085900, &qword_100069240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000691A0;
    v54 = v51;
    *(inited + 32) = v51;
    *(inited + 40) = v52;

    v55 = sub_100051D7C(inited);
    swift_setDeallocating();
    sub_100014C04(inited + 32);
    v107[0] = v55;
    v56 = TaskTriggerRequest.subscriptionTopics.getter();
    if (v56)
    {
      sub_1000500E8(v56);
    }

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000098DC(v57, qword_100087610);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v60 = 136315394;
      *(v60 + 4) = sub_100008A0C(v105, a2, &v106);
      *(v60 + 12) = 2080;
      v61 = sub_100008A0C(v54, v52, &v106);

      *(v60 + 14) = v61;
      v39 = v103;
      _os_log_impl(&_mh_execute_header, v58, v59, "Enabling trigger task: %s with triggerTopic: %s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v62 = MLHostTask.name.getter();
    sub_100010088(v62, v63, v107[0]);

    v47 = v101;
    v50 = v102;
  }

  v64 = v96;
  TaskTriggerRequest.datastoreTriggerKey.getter();
  v66 = v98;
  v65 = v99;
  if ((*(v98 + 48))(v64, 1, v99) == 1)
  {
    (*(v104 + 8))(v47, v39);
    (*(v27 + 8))(v94, v32);
    sub_100009C94(v64, &qword_100085C20, &qword_1000693C0);
    return 1;
  }

  else
  {
    (*(v66 + 32))(v50, v64, v65);
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_1000098DC(v67, qword_100087610);
    v68 = *(v66 + 16);
    v69 = v95;
    v68(v95, v50, v65);
    v68(v97, v50, v65);

    v70 = v65;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v93 = v72;
      v74 = v73;
      v96 = swift_slowAlloc();
      v107[0] = v96;
      *v74 = 136315650;
      *(v74 + 4) = sub_100008A0C(v105, a2, v107);
      *(v74 + 12) = 2080;
      v105 = v71;
      v75 = DatastoreKey.group.getter();
      v77 = v76;
      v78 = *(v66 + 8);
      v78(v69, v65);
      v79 = sub_100008A0C(v75, v77, v107);

      *(v74 + 14) = v79;
      *(v74 + 22) = 2080;
      v80 = v97;
      v81 = DatastoreKey.key.getter();
      v83 = v82;
      v78(v80, v70);
      v84 = v78;
      v85 = sub_100008A0C(v81, v83, v107);

      *(v74 + 24) = v85;
      v86 = v105;
      _os_log_impl(&_mh_execute_header, v105, v93, "Enabling trigger task: %s with triggerKey: %s, %s", v74, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v87 = *(v66 + 8);
      v87(v97, v65);
      v87(v69, v65);
      v84 = v87;
    }

    v88 = v94;
    v89 = MLHostTask.name.getter();
    v90 = v102;
    sub_100010374(v89, v91, v102);

    v84(v90, v70);
    (*(v104 + 8))(v101, v103);
    (*(v27 + 8))(v88, v32);
    return 1;
  }
}

uint64_t sub_10003240C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  __chkstk_darwin(v5 - 8);
  v102 = &v96 - v6;
  v105 = type metadata accessor for DatastoreKey();
  v103 = *(v105 - 8);
  v7 = __chkstk_darwin(v105);
  v101 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v100 = &v96 - v10;
  __chkstk_darwin(v9);
  v104 = &v96 - v11;
  v12 = sub_1000089AC(&qword_100085C28, &qword_1000693C8);
  __chkstk_darwin(v12 - 8);
  v14 = &v96 - v13;
  v15 = type metadata accessor for TaskDefinition();
  v109 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TaskTriggerRequest();
  v110 = *(v18 - 8);
  v111 = v18;
  __chkstk_darwin(v18);
  v107 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v20 - 8);
  v22 = &v96 - v21;
  v23 = type metadata accessor for MLHostTask();
  __chkstk_darwin(v23);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v2;
  v112 = a1;
  v26 = a1;
  v28 = v27;
  sub_100019300(v26, a2, v22);
  if ((*(v28 + 48))(v22, 1, v23) == 1)
  {
    sub_100009C94(v22, &qword_100085940, &unk_1000693D0);
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000098DC(v29, qword_100087610);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v112;
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v114[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100008A0C(v33, a2, v114);
      _os_log_impl(&_mh_execute_header, v30, v31, "Skipping %s because is not available in TaskRegistry", v34, 0xCu);
      sub_100009914(v35);
    }

    return 0;
  }

  (*(v28 + 32))(v25, v22, v23);
  v108 = v25;
  v36 = v23;
  v37 = a2;
  if ((MLHostTask.isTriggerTask.getter() & 1) == 0)
  {
LABEL_10:
    v41 = v28;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000098DC(v42, qword_100087610);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v112;
    v47 = v108;
    if (v45)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v114[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_100008A0C(v46, v37, v114);
      _os_log_impl(&_mh_execute_header, v43, v44, "Skipping %s because is not a subscription task", v48, 0xCu);
      sub_100009914(v49);
    }

    (*(v41 + 8))(v47, v36);
    return 0;
  }

  v38 = v108;
  MLHostTask.taskDefinition.getter();
  TaskDefinition.triggerRequest.getter();
  (*(v109 + 8))(v17, v15);
  v40 = v110;
  v39 = v111;
  if ((*(v110 + 48))(v14, 1, v111) == 1)
  {
    sub_100009C94(v14, &qword_100085C28, &qword_1000693C8);
    goto LABEL_10;
  }

  v51 = v107;
  (*(v40 + 32))(v107, v14, v39);
  v52 = v112;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  v54 = sub_1000098DC(v53, qword_100087610);

  v109 = v54;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v114[0] = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_100008A0C(v52, v37, v114);
    _os_log_impl(&_mh_execute_header, v55, v56, "Disabling subscription task: %s", v57, 0xCu);
    sub_100009914(v58);
  }

  v59 = TaskTriggerRequest.subscriptionTriggerTopic.getter();
  if (v60)
  {
    v61 = v59;
    v62 = v60;
    sub_1000089AC(&qword_100085900, &qword_100069240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000691A0;
    v99 = v61;
    *(inited + 32) = v61;
    *(inited + 40) = v62;

    v64 = sub_100051D7C(inited);
    swift_setDeallocating();
    sub_100014C04(inited + 32);
    v114[0] = v64;
    v65 = TaskTriggerRequest.subscriptionTopics.getter();
    if (v65)
    {
      sub_1000500E8(v65);
    }

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v68 = 136315394;
      *(v68 + 4) = sub_100008A0C(v52, v37, &v113);
      *(v68 + 12) = 2080;
      v69 = v36;
      v70 = sub_100008A0C(v99, v62, &v113);

      *(v68 + 14) = v70;
      v36 = v69;
      v51 = v107;
      _os_log_impl(&_mh_execute_header, v66, v67, "Disable trigger task: %s with triggerTopic: %s", v68, 0x16u);
      swift_arrayDestroy();
      v38 = v108;
    }

    else
    {
    }

    sub_100010580(v52, v37, v114[0]);
  }

  v71 = v102;
  v72 = v51;
  TaskTriggerRequest.datastoreTriggerKey.getter();
  v73 = v103;
  v74 = v105;
  if ((*(v103 + 48))(v71, 1, v105) == 1)
  {
    (*(v110 + 8))(v72, v111);
    (*(v28 + 8))(v38, v36);
    sub_100009C94(v71, &qword_100085C20, &qword_1000693C0);
    return 1;
  }

  else
  {
    v99 = v28;
    v75 = v104;
    (*(v73 + 32))(v104, v71, v74);
    v76 = *(v73 + 16);
    v77 = v100;
    v76(v100, v75, v74);
    v78 = v101;
    v76(v101, v75, v74);

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v98 = v80;
      v82 = v81;
      v102 = swift_slowAlloc();
      v114[0] = v102;
      *v82 = 136315650;
      *(v82 + 4) = sub_100008A0C(v52, v37, v114);
      *(v82 + 12) = 2080;
      v97 = v79;
      v83 = DatastoreKey.group.getter();
      v109 = v36;
      v85 = v84;
      v86 = *(v73 + 8);
      v86(v77, v74);
      v87 = sub_100008A0C(v83, v85, v114);

      *(v82 + 14) = v87;
      *(v82 + 22) = 2080;
      v88 = DatastoreKey.key.getter();
      v90 = v89;
      v86(v78, v74);
      v91 = sub_100008A0C(v88, v90, v114);
      v36 = v109;

      *(v82 + 24) = v91;
      v92 = v97;
      _os_log_impl(&_mh_execute_header, v97, v98, "Disable trigger task: %s with triggerKey: %s, %s", v82, 0x20u);
      swift_arrayDestroy();

      v93 = v112;
    }

    else
    {

      v93 = v52;
      v86 = *(v73 + 8);
      v86(v78, v74);
      v86(v77, v74);
    }

    v94 = v37;
    v95 = v104;
    sub_100010728(v93, v94, v104);
    v86(v95, v74);
    (*(v110 + 8))(v107, v111);
    (*(v99 + 8))(v108, v36);
    return 1;
  }
}

uint64_t sub_100033164(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = sub_1000089AC(&qword_100085910, &unk_1000693B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1000089AC(&qword_100085918, &qword_100069250);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  os_transaction_create();
  v9 = type metadata accessor for TaskType();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = enum case for TaskCategory.triggerTask(_:);
  v11 = type metadata accessor for TaskCategory();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v5, v10, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  v13 = sub_10001BA90(v8, v5);
  sub_100009C94(v5, &qword_100085910, &unk_1000693B0);
  sub_100009C94(v8, &qword_100085918, &qword_100069250);
  v14 = v13[2];
  if (v14)
  {
    v15 = (v13 + 5);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      a2(v16, v17);

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  swift_unknownObjectRelease();
}

void sub_1000333B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000089AC(&qword_100085E50, &qword_1000695A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v109[-v9];
  v120 = type metadata accessor for OnDemandError();
  v11 = *(v120 - 8);
  v12 = __chkstk_darwin(v120);
  v119 = &v109[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v16 = &v109[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v109[-v18];
  __chkstk_darwin(v17);
  v118 = &v109[-v20];
  v128 = type metadata accessor for TaskStatus();
  v21 = *(v128 - 8);
  v22 = __chkstk_darwin(v128);
  v127 = &v109[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v126 = &v109[-v24];
  v25 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v25 - 8);
  v135 = &v109[-v26];
  v134 = type metadata accessor for MLHostTask();
  v27 = *(v134 - 8);
  __chkstk_darwin(v134);
  v142 = &v109[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 || (v29 = type metadata accessor for DatastoreKey(), (*(*(v29 - 8) + 48))(a3, 1, v29) != 1))
  {
    v116 = v19;
    v121 = v16;
    v117 = v10;
    v34 = sub_1000108C8(a1, a2, a3);
    v36 = 0;
    v122 = 0;
    v38 = v34 + 7;
    v37 = v34[7];
    v141 = v34;
    v39 = 1 << *(v34 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & v37;
    v139 = OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry;
    v42 = (v39 + 63) >> 6;
    v129 = v27 + 16;
    v130 = v27;
    v136 = (v27 + 48);
    v137 = (v27 + 56);
    v133 = (v27 + 32);
    v131 = (v27 + 8);
    v125 = enum case for TaskStatus.taskRunning(_:);
    v124 = (v21 + 104);
    v123 = (v21 + 8);
    v114 = (v11 + 32);
    v115 = (v11 + 16);
    v113 = (v11 + 8);
    *&v35 = 136315138;
    v132 = v35;
    *&v35 = 136315394;
    v112 = v35;
    v44 = v134;
    v43 = v135;
    v45 = v142;
    v138 = v42;
    v140 = v4;
    if ((v40 & v37) != 0)
    {
      goto LABEL_15;
    }

    do
    {
LABEL_16:
      v46 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_53;
      }

      if (v46 >= v42)
      {

        return;
      }

      v41 = v38[v46];
      ++v36;
    }

    while (!v41);
    while (1)
    {
      v47 = v141[6] + ((v46 << 10) | (16 * __clz(__rbit64(v41))));
      v48 = *v47;
      v49 = *(v47 + 8);
      v50 = *(v4 + v139);
      v51 = *(v50 + 56);

      os_unfair_lock_lock(v51 + 4);
      swift_beginAccess();
      v52 = *(v50 + 64);
      v53 = *(v52 + 16);
      v143 = v48;
      if (v53 && (v54 = sub_100010DF4(v48, v49), (v55 & 1) != 0))
      {
        (*(v130 + 16))(v43, *(v52 + 56) + *(v130 + 72) * v54, v44);
        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      v41 &= v41 - 1;
      (*v137)(v43, v56, 1, v44);
      swift_endAccess();
      os_unfair_lock_unlock((*(v50 + 56) + 16));
      if ((*v136)(v43, 1, v44) == 1)
      {
        sub_100009C94(v43, &qword_100085940, &unk_1000693D0);
      }

      else
      {
        (*v133)(v45, v43, v44);
        if (MLHostTask.isTriggerTask.getter())
        {
          v57 = v126;
          MLHostTask.status.getter();
          v58 = v127;
          v59 = v128;
          (*v124)(v127, v125, v128);
          sub_100051EE4(&qword_100085E58, &type metadata accessor for TaskStatus, &protocol conformance descriptor for TaskStatus);
          v60 = dispatch thunk of static Equatable.== infix(_:_:)();
          v61 = *v123;
          (*v123)(v58, v59);
          v61(v57, v59);
          if (v60)
          {
            v62 = v143;
            if (qword_1000850B8 != -1)
            {
              swift_once();
            }

            v63 = type metadata accessor for Logger();
            sub_1000098DC(v63, qword_100087610);

            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              v144 = v67;
              *v66 = v132;
              v68 = sub_100008A0C(v62, v49, &v144);

              *(v66 + 4) = v68;
              _os_log_impl(&_mh_execute_header, v64, v65, "Task %s is already running. Skipping activation.", v66, 0xCu);
              sub_100009914(v67);
            }

            else
            {
            }

            v45 = v142;
            v44 = v134;
            (*v131)(v142, v134);
LABEL_48:
            v36 = v46;
            v4 = v140;
          }

          else
          {
            v75 = v143;
            if (qword_1000850B8 != -1)
            {
              swift_once();
            }

            v76 = type metadata accessor for Logger();
            v77 = sub_1000098DC(v76, qword_100087610);

            v111 = v77;
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.info.getter();

            v80 = os_log_type_enabled(v78, v79);
            v81 = v122;
            if (v80)
            {
              v82 = swift_slowAlloc();
              v83 = swift_slowAlloc();
              v144 = v83;
              *v82 = v132;
              *(v82 + 4) = sub_100008A0C(v75, v49, &v144);
              _os_log_impl(&_mh_execute_header, v78, v79, "Requesting activation of task %s", v82, 0xCu);
              sub_100009914(v83);
            }

            v4 = v140;
            v84 = type metadata accessor for OnDemandTaskRequest();
            v85 = v117;
            (*(*(v84 - 8) + 56))(v117, 1, 1, v84);
            v86 = v142;
            v87 = v116;
            sub_100030AE0(v142, v85, v116);
            if (v81)
            {
              sub_100009C94(v85, &qword_100085E50, &qword_1000695A8);
              v88 = *v114;
              v89 = v118;
              v90 = v120;
              (*v114)(v118, v87, v120);
              v91 = v121;
              v88(v121, v89, v90);
              v92 = *v115;
              v93 = v119;
              (*v115)(v119, v91, v90);

              v94 = Logger.logObject.getter();
              v95 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v94, v95))
              {
                v96 = swift_slowAlloc();
                v110 = v95;
                v97 = v93;
                v98 = v96;
                v111 = swift_slowAlloc();
                v122 = swift_slowAlloc();
                v144 = v122;
                *v98 = v112;
                v99 = v92;
                v100 = sub_100008A0C(v143, v49, &v144);

                *(v98 + 4) = v100;
                *(v98 + 12) = 2112;
                sub_100051EE4(&qword_100085E60, &type metadata accessor for OnDemandError, &protocol conformance descriptor for OnDemandError);
                swift_allocError();
                v99(v101, v97, v90);
                v102 = _swift_stdlib_bridgeErrorToNSError();
                v103 = v94;
                v104 = *v113;
                v105 = v97;
                v106 = v90;
                (*v113)(v105, v90);
                *(v98 + 14) = v102;
                v107 = v111;
                *v111 = v102;
                _os_log_impl(&_mh_execute_header, v103, v110, "Failed to activate task %s: %@", v98, 0x16u);
                sub_100009C94(v107, &qword_100085970, &qword_100068F48);

                sub_100009914(v122);

                v104(v121, v106);
              }

              else
              {

                v108 = *v113;
                (*v113)(v93, v90);
                v108(v121, v90);
              }

              v45 = v142;
              v44 = v134;
              (*v131)(v142, v134);
              v122 = 0;
              goto LABEL_48;
            }

            v122 = 0;

            sub_100009C94(v85, &qword_100085E50, &qword_1000695A8);
            v45 = v86;
            v44 = v134;
            (*v131)(v86, v134);
            v36 = v46;
          }

          v43 = v135;
          v42 = v138;
          if (!v41)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        (*v131)(v45, v44);
      }

      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_1000098DC(v69, qword_100087610);

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v144 = v73;
        *v72 = v132;
        v74 = sub_100008A0C(v143, v49, &v144);

        *(v72 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v70, v71, "Task %s not found in task registry or is not a trigger task. Skipping activation.", v72, 0xCu);
        sub_100009914(v73);
        v44 = v134;
        v43 = v135;
      }

      else
      {
      }

      v36 = v46;
      v4 = v140;
      v45 = v142;
      v42 = v138;
      if (!v41)
      {
        goto LABEL_16;
      }

LABEL_15:
      v46 = v36;
    }
  }

  if (qword_1000850B8 != -1)
  {
LABEL_53:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_1000098DC(v30, qword_100087610);
  v143 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v143, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v143, v31, "No topic or key provided. Skipping activation of trigger tasks.", v32, 2u);
  }

  v33 = v143;
}

void sub_100034304(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v86 = a2;
  v77 = a3;
  v6 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v6 - 8);
  v76 = &v75 - v7;
  v8 = type metadata accessor for MLHostTask();
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v78 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TaskValidationError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v3;
  v14 = *(v3 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry);
  v82 = a1;
  v15 = TaskDefinition.bundleIdentifier.getter();
  v17 = v16;
  os_unfair_lock_lock((*(v14 + 16) + 16));

  sub_1000297E0(v18);
  v20 = v19;

  v85[0] = v15;
  v85[1] = v17;
  v84 = v85;
  LOBYTE(v15) = sub_100029F60(sub_100065978, v83, v20);

  os_unfair_lock_unlock((*(v14 + 16) + 16));
  if ((v15 & 1) == 0)
  {
    (*(v11 + 104))(v86, enum case for TaskValidationError.invalidBundleIdentifier(_:), v10);
    sub_100051EE4(&unk_100085990, &type metadata accessor for TaskValidationError, &protocol conformance descriptor for TaskValidationError);
    swift_willThrowTypedImpl();
    return;
  }

  v21 = v86;
  v22 = v82;
  _s20LighthouseBackground22validateTaskDefinitionyyAA0dE0VAA0D15ValidationErrorOYKF();
  if (v4)
  {
    (*(v11 + 32))(v21, v13, v10);
    return;
  }

  v23 = TaskDefinition.name.getter();
  v25 = v24;
  v26 = *(v79 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v27 = *(v26 + 56);
  v28 = __chkstk_darwin(v23);
  *(&v75 - 4) = v26;
  *(&v75 - 3) = v28;
  *(&v75 - 2) = v29;
  __chkstk_darwin(v28);
  *(&v75 - 2) = sub_10006464C;
  *(&v75 - 1) = v30;
  os_unfair_lock_lock(v27 + 4);
  sub_10006466C(v85);
  v86 = 0;
  os_unfair_lock_unlock(v27 + 4);
  v31 = LOBYTE(v85[0]);
  v32 = v76;
  sub_10001E8E8(v22, v76);
  v34 = v80;
  v33 = v81;
  if ((*(v80 + 48))(v32, 1, v81) == 1)
  {
    sub_100009C94(v32, &qword_100085940, &unk_1000693D0);
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000098DC(v35, qword_100087610);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v85[0] = v39;
      *v38 = 136315138;
      v40 = sub_100008A0C(v23, v25, v85);

      *(v38 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to add task %s to TaskRegistry.", v38, 0xCu);
      sub_100009914(v39);
      v34 = v80;

      v33 = v81;
    }

    else
    {
    }

    goto LABEL_38;
  }

  v82 = v23;
  v41 = *(v34 + 32);
  v42 = v32;
  v43 = v78;
  v41(v78, v42, v33);
  if ((MLHostTask.isBackgroundTask.getter() & 1) == 0)
  {
LABEL_19:
    v53 = v43;
    if (MLHostTask.isTriggerTask.getter())
    {
      if (v31)
      {
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_1000098DC(v54, qword_100087610);

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v85[0] = v58;
          *v57 = 136315138;
          v59 = sub_100008A0C(v82, v25, v85);

          *(v57 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v55, v56, "Task %s is replacing an existing task, disabling subscriptions.", v57, 0xCu);
          sub_100009914(v58);
          v34 = v80;

          v33 = v81;
        }

        else
        {
        }

        v71 = MLHostTask.name.getter();
        sub_10003240C(v71, v72);
      }

      v73 = MLHostTask.name.getter();
      sub_100031790(v73, v74);
    }

    v70 = v77;

    v41(v70, v53, v33);
    v69 = 0;
    goto LABEL_43;
  }

  if (v31)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000098DC(v44, qword_100087610);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v85[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_100008A0C(v82, v25, v85);
      _os_log_impl(&_mh_execute_header, v45, v46, "Task %s is replacing an existing task, unregistering its existing activity.", v47, 0xCu);
      sub_100009914(v48);
      v34 = v80;

      v33 = v81;
    }

    v49 = MLHostTask.name.getter();
    sub_100063BB0(v49, v50, v51);
  }

  v43 = v78;
  sub_10002D080(v78, 0);
  if (!v52)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_1000098DC(v60, qword_100087610);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    v64 = v82;
    if (!v63)
    {
      goto LABEL_37;
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v85[0] = v66;
    *v65 = 136315138;
    *(v65 + 4) = sub_100008A0C(v64, v25, v85);
    v67 = "Task %s failed registration with DAS.";
    goto LABEL_36;
  }

  if (sub_1000509EC(v43))
  {
    goto LABEL_19;
  }

  v64 = v82;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_1000098DC(v68, qword_100087610);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v85[0] = v66;
    *v65 = 136315138;
    *(v65 + 4) = sub_100008A0C(v64, v25, v85);
    v67 = "Task %s failed scheduling with DAS.";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v61, v62, v67, v65, 0xCu);
    sub_100009914(v66);
    v34 = v80;

    v33 = v81;
  }

LABEL_37:

  sub_100018354(v64, v25);

  (*(v34 + 8))(v78, v33);
LABEL_38:
  v69 = 1;
  v70 = v77;
LABEL_43:
  (*(v34 + 56))(v70, v69, 1, v33);
}

uint64_t sub_100034DB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ListKeysDictionaryRequest();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for KVDatastoreError();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return (_swift_task_switch)(sub_100034EF8, 0, 0);
}

uint64_t sub_100034EF8()
{
  if (ListKeysDictionaryRequest.group.getter() == 42 && v1 == 0xE100000000000000)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      v4 = ListKeysDictionaryRequest.group.getter();
      goto LABEL_9;
    }
  }

  v4 = 0;
  v5 = 0;
LABEL_9:
  v0[14] = v4;
  v0[15] = v5;
  v0[16] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10003501C, v7, v6);
}

uint64_t sub_10003501C()
{
  *(v0 + 136) = _s20LighthouseBackground11KVDatastoreC8listKeys5groupSaySSGSSSg_tAA0C5ErrorOYKFTj();

  return (_swift_task_switch)(sub_1000350B8, 0, 0);
}

uint64_t sub_1000350B8()
{
  ListKeysDictionaryResponse.init(keys:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100035154()
{
  v28 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = *(v0[9] + 32);
  v4(v1, v0[12], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[3];
  v9 = type metadata accessor for Logger();
  sub_1000098DC(v9, qword_100087610);
  (*(v6 + 16))(v5, v8, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    v18 = ListKeysDictionaryRequest.group.getter();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_100008A0C(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed at listing keys: %s", v16, 0xCu);
    sub_100009914(v17);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v22 = v0[11];
  v23 = v0[8];
  v24 = v0[9];
  (*(v24 + 16))(v0[10], v22, v23);
  ListKeysDictionaryResponse.init(error:)();
  (*(v24 + 8))(v22, v23);

  v25 = v0[1];

  return v25();
}

uint64_t sub_100035408(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  KeyTypeRequest = type metadata accessor for GetKeyTypeRequest();
  v3[5] = KeyTypeRequest;
  v3[6] = *(KeyTypeRequest - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_1000089AC(&qword_100085EF0, &qword_1000695F8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for KVDatastoreError();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000355A8, 0, 0);
}

uint64_t sub_1000355A8()
{
  v0[18] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[19] = GetKeyTypeRequest.group.getter();
  v0[20] = v1;
  v0[21] = GetKeyTypeRequest.key.getter();
  v0[22] = v2;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10003568C, v4, v3);
}

uint64_t sub_10003568C()
{
  _s20LighthouseBackground11KVDatastoreC10getKeyType5group3keyAC0e8CategoryF0OSgSS_SStAA0C5ErrorOYKFTj();

  return (_swift_task_switch)(sub_100035738, 0, 0);
}

uint64_t sub_100035738()
{
  v1 = v0[10];
  sub_100009C2C(v1, v0[9], &qword_100085EF0, &qword_1000695F8);
  GetKeyTypeResponse.init(keyType:)();
  sub_100009C94(v1, &qword_100085EF0, &qword_1000695F8);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100035848()
{
  v51 = v0;
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[11];
  v4 = *(v0[12] + 32);
  v4(v1, v0[16], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v47 = v0[14];
  v49 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[3];
  v12 = type metadata accessor for Logger();
  sub_1000098DC(v12, qword_100087610);
  v13 = *(v10 + 16);
  v13(v7, v11, v9);
  v13(v8, v11, v9);
  v14 = *(v5 + 16);
  v14(v47, v49, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[12];
  v46 = v0[11];
  v48 = v0[14];
  v20 = v0[7];
  v19 = v0[8];
  v22 = v0[5];
  v21 = v0[6];
  if (v17)
  {
    log = v15;
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v23 = 136315650;
    KeyType = GetKeyTypeRequest.group.getter();
    v42 = v14;
    v26 = v25;
    v43 = v16;
    v27 = *(v21 + 8);
    v27(v19, v22);
    v28 = sub_100008A0C(KeyType, v26, &v50);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v29 = GetKeyTypeRequest.key.getter();
    v31 = v30;
    v27(v20, v22);
    v32 = sub_100008A0C(v29, v31, &v50);

    *(v23 + 14) = v32;
    *(v23 + 22) = 2112;
    sub_100051EE4(&qword_100085EB8, &type metadata accessor for KVDatastoreError, &protocol conformance descriptor for KVDatastoreError);
    swift_allocError();
    v42(v33, v48, v46);
    v34 = _swift_stdlib_bridgeErrorToNSError();
    v35 = *(v18 + 8);
    v35(v48, v46);
    *(v23 + 24) = v34;
    *v44 = v34;
    _os_log_impl(&_mh_execute_header, log, v43, "Failed at getting key type: %s, %s, %@", v23, 0x20u);
    sub_100009C94(v44, &qword_100085970, &qword_100068F48);

    swift_arrayDestroy();

    v36 = v42;
  }

  else
  {

    v35 = *(v18 + 8);
    v35(v48, v46);
    v37 = *(v21 + 8);
    v37(v20, v22);
    v37(v19, v22);
    v36 = v14;
  }

  v38 = v0[15];
  v39 = v0[11];
  v36(v0[13], v38, v39);
  GetKeyTypeResponse.init(error:)();
  v35(v38, v39);

  v40 = v0[1];

  return v40();
}

uint64_t sub_100035CFC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  KeyExpirationRequest = type metadata accessor for GetKeyExpirationRequest();
  v3[5] = KeyExpirationRequest;
  v3[6] = *(KeyExpirationRequest - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_1000089AC(&qword_100085ED0, &qword_1000695E0);
  v3[9] = swift_task_alloc();
  sub_1000089AC(&qword_100085ED8, &qword_1000695E8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for KVDatastoreError();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return (_swift_task_switch)(sub_100035EE0, 0, 0);
}

uint64_t sub_100035EE0()
{
  v0[20] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[21] = GetKeyExpirationRequest.group.getter();
  v0[22] = v1;
  v0[23] = GetKeyExpirationRequest.key.getter();
  v0[24] = v2;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100035FC4, v4, v3);
}

uint64_t sub_100035FC4()
{
  _s20LighthouseBackground11KVDatastoreC14getKeyMetadata5group3keyAC0F4TypeVSgSS_SStAA0C5ErrorOYKFTj();

  return (_swift_task_switch)(sub_100036070, 0, 0);
}

uint64_t sub_100036070()
{
  v1 = v0[11];
  sub_100009C2C(v0[12], v1, &qword_100085ED8, &qword_1000695E8);
  v2 = type metadata accessor for KVDatastore.MetadataType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[11];
  if (v5 == 1)
  {
    sub_100009C94(v0[11], &qword_100085ED8, &qword_1000695E8);
    v7 = 1;
  }

  else
  {
    KVDatastore.MetadataType.expirationDate.getter();
    (*(v3 + 8))(v6, v2);
    v7 = 0;
  }

  v8 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v10, v7, 1, v11);
  sub_100009C2C(v8, v9, &qword_100085ED8, &qword_1000695E8);
  LODWORD(v8) = v4(v9, 1, v2);
  v12 = v0[10];
  if (v8 == 1)
  {
    sub_100009C94(v0[10], &qword_100085ED8, &qword_1000695E8);
  }

  else
  {
    KVDatastore.MetadataType.timeToLive.getter();
    (*(v3 + 8))(v12, v2);
  }

  v13 = v0[12];
  GetKeyExpirationResponse.init(expirationDate:timeToLive:)();
  sub_100009C94(v13, &qword_100085ED8, &qword_1000695E8);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10003632C()
{
  v51 = v0;
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[13];
  v4 = *(v0[14] + 32);
  v4(v1, v0[18], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v47 = v0[16];
  v49 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[3];
  v12 = type metadata accessor for Logger();
  sub_1000098DC(v12, qword_100087610);
  v13 = *(v10 + 16);
  v13(v7, v11, v9);
  v13(v8, v11, v9);
  v14 = *(v5 + 16);
  v14(v47, v49, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[14];
  v46 = v0[13];
  v48 = v0[16];
  v20 = v0[7];
  v19 = v0[8];
  v22 = v0[5];
  v21 = v0[6];
  if (v17)
  {
    log = v15;
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v23 = 136315650;
    KeyExpiration = GetKeyExpirationRequest.group.getter();
    v42 = v14;
    v26 = v25;
    v43 = v16;
    v27 = *(v21 + 8);
    v27(v19, v22);
    v28 = sub_100008A0C(KeyExpiration, v26, &v50);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v29 = GetKeyExpirationRequest.key.getter();
    v31 = v30;
    v27(v20, v22);
    v32 = sub_100008A0C(v29, v31, &v50);

    *(v23 + 14) = v32;
    *(v23 + 22) = 2112;
    sub_100051EE4(&qword_100085EB8, &type metadata accessor for KVDatastoreError, &protocol conformance descriptor for KVDatastoreError);
    swift_allocError();
    v42(v33, v48, v46);
    v34 = _swift_stdlib_bridgeErrorToNSError();
    v35 = *(v18 + 8);
    v35(v48, v46);
    *(v23 + 24) = v34;
    *v44 = v34;
    _os_log_impl(&_mh_execute_header, log, v43, "Failed at getting key expiration date: %s, %s, %@", v23, 0x20u);
    sub_100009C94(v44, &qword_100085970, &qword_100068F48);

    swift_arrayDestroy();

    v36 = v42;
  }

  else
  {

    v35 = *(v18 + 8);
    v35(v48, v46);
    v37 = *(v21 + 8);
    v37(v20, v22);
    v37(v19, v22);
    v36 = v14;
  }

  v38 = v0[17];
  v39 = v0[13];
  v36(v0[15], v38, v39);
  GetKeyExpirationResponse.init(error:)();
  v35(v38, v39);

  v40 = v0[1];

  return v40();
}

uint64_t sub_1000367F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for KVDatastoreError();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000368E0, 0, 0);
}

uint64_t sub_1000368E0()
{
  if (ClearDictionaryRequest.group.getter() == 42 && v1 == 0xE100000000000000)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      v4 = ClearDictionaryRequest.group.getter();
      v6 = v5;
      goto LABEL_9;
    }
  }

  v4 = 0;
  v6 = 0;
LABEL_9:
  v0[11] = v4;
  v0[12] = v6;
  v0[13] = ClearDictionaryRequest.key.getter();
  v0[14] = v7;
  if (v7)
  {
    if (!v6)
    {
      v13 = v0[8];
      v14 = v0[5];
      v15 = v0[6];

      (*(v15 + 104))(v13, enum case for KVDatastoreError.invalidGroup(_:), v14);
      ClearDictionaryResponse.init(error:)();

      v16 = v0[1];

      __asm { BRAA            X1, X16 }
    }

    v0[15] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
    type metadata accessor for KVDatastore();
    sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v11 = sub_100036C68;
  }

  else if (v6)
  {
    v0[16] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
    type metadata accessor for KVDatastore();
    sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v12;
    v11 = sub_100036DA8;
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000098DC(v17, qword_100087610);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Clearing all dictionary.", v20, 2u);
    }

    v21 = v0[4];

    v0[17] = *(v21 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
    type metadata accessor for KVDatastore();
    sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v22;
    v11 = sub_100036EB0;
  }

  return (_swift_task_switch)(v11, v8, v10);
}

uint64_t sub_100036C68()
{
  *(v0 + 144) = _s20LighthouseBackground11KVDatastoreC8clearKey5group3keySbSS_SStAA0C5ErrorOYKFTj() & 1;

  return (_swift_task_switch)(sub_100036D18, 0, 0);
}

uint64_t sub_100036D18()
{
  ClearDictionaryResponse.init(result:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100036DA8()
{
  dispatch thunk of KVDatastore.clearGroup(group:)();

  return (_swift_task_switch)(sub_100036E20, 0, 0);
}

uint64_t sub_100036E20()
{
  ClearDictionaryResponse.init(result:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100036EB0()
{
  dispatch thunk of KVDatastore.clear()();

  return (_swift_task_switch)(sub_1000658C4, 0, 0);
}

uint64_t sub_100036F18()
{
  v22 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(v0[6] + 32);
  v4(v1, v0[9], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000098DC(v5, qword_100087610);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  if (v8)
  {
    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[11];
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_100008A0C(v12, v11, &v21);

    *(v13 + 4) = v14;
    *(v13 + 12) = 2080;
    v15 = sub_100008A0C(v10, v9, &v21);

    *(v13 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed at clearing key: %s/%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[7];
  v17 = v0[5];
  v18 = v0[6];
  (*(v18 + 16))(v0[8], v16, v17);
  ClearDictionaryResponse.init(error:)();
  (*(v18 + 8))(v16, v17);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000371D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for KVDatastoreInfo();
  v3[5] = swift_task_alloc();

  return (_swift_task_switch)(sub_100037264, 0, 0);
}

uint64_t sub_100037264()
{
  if (GetInfoDictionaryRequest.estimated.getter())
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000098DC(v1, qword_100087610);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Not calculating store size and keys size", v4, 2u);
    }
  }

  *(v0 + 48) = *(*(v0 + 32) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_1000373F4, v6, v5);
}

uint64_t sub_1000373F4()
{
  dispatch thunk of KVDatastore.getInfo()();

  return (_swift_task_switch)(sub_10003745C, 0, 0);
}

uint64_t sub_10003745C()
{
  GetInfoDictionaryResponse.init(info:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000374CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  KeyDictionaryRequest = type metadata accessor for GetKeyDictionaryRequest();
  v3[5] = KeyDictionaryRequest;
  v3[6] = *(KeyDictionaryRequest - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for KVDatastoreError();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return (_swift_task_switch)(sub_100037628, 0, 0);
}

uint64_t sub_100037628()
{
  *(v0 + 128) = *(*(v0 + 32) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  *(v0 + 136) = GetKeyDictionaryRequest.group.getter();
  *(v0 + 144) = v1;
  *(v0 + 152) = GetKeyDictionaryRequest.key.getter();
  *(v0 + 160) = v2;
  *(v0 + 184) = GetKeyDictionaryRequest.deleteOnAccess.getter() & 1;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100037718, v4, v3);
}

uint64_t sub_100037718()
{
  v1 = _s20LighthouseBackground11KVDatastoreC6getKey5group3key14deleteOnAccess10Foundation4DataVSgSS_SSSbtAA0C5ErrorOYKFTj();
  v3 = v2;

  *(v0 + 168) = v3;
  *(v0 + 176) = v1;

  return (_swift_task_switch)(sub_1000377D8, 0, 0);
}

uint64_t sub_1000377D8()
{
  GetKeyDictionaryResponse.init(value:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100037890()
{
  v51 = v0;
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[9];
  v4 = *(v0[10] + 32);
  v4(v1, v0[14], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v47 = v0[12];
  v49 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[3];
  v12 = type metadata accessor for Logger();
  sub_1000098DC(v12, qword_100087610);
  v13 = *(v10 + 16);
  v13(v7, v11, v9);
  v13(v8, v11, v9);
  v14 = *(v5 + 16);
  v14(v47, v49, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[10];
  v46 = v0[9];
  v48 = v0[12];
  v20 = v0[7];
  v19 = v0[8];
  v22 = v0[5];
  v21 = v0[6];
  if (v17)
  {
    log = v15;
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v23 = 136315650;
    KeyDictionary = GetKeyDictionaryRequest.group.getter();
    v42 = v14;
    v26 = v25;
    v43 = v16;
    v27 = *(v21 + 8);
    v27(v19, v22);
    v28 = sub_100008A0C(KeyDictionary, v26, &v50);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v29 = GetKeyDictionaryRequest.key.getter();
    v31 = v30;
    v27(v20, v22);
    v32 = sub_100008A0C(v29, v31, &v50);

    *(v23 + 14) = v32;
    *(v23 + 22) = 2112;
    sub_100051EE4(&qword_100085EB8, &type metadata accessor for KVDatastoreError, &protocol conformance descriptor for KVDatastoreError);
    swift_allocError();
    v42(v33, v48, v46);
    v34 = _swift_stdlib_bridgeErrorToNSError();
    v35 = *(v18 + 8);
    v35(v48, v46);
    *(v23 + 24) = v34;
    *v44 = v34;
    _os_log_impl(&_mh_execute_header, log, v43, "Failed at getting key: %s, %s, %@", v23, 0x20u);
    sub_100009C94(v44, &qword_100085970, &qword_100068F48);

    swift_arrayDestroy();

    v36 = v42;
  }

  else
  {

    v35 = *(v18 + 8);
    v35(v48, v46);
    v37 = *(v21 + 8);
    v37(v20, v22);
    v37(v19, v22);
    v36 = v14;
  }

  v38 = v0[13];
  v39 = v0[9];
  v36(v0[11], v38, v39);
  GetKeyDictionaryResponse.init(error:)();
  v35(v38, v39);

  v40 = v0[1];

  return v40();
}

uint64_t sub_100037D30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SetKeyDictionaryRequest();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for KVDatastoreError();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return (_swift_task_switch)(sub_100037E80, 0, 0);
}

uint64_t sub_100037E80()
{
  *(v0 + 120) = *(*(v0 + 32) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  *(v0 + 128) = SetKeyDictionaryRequest.group.getter();
  *(v0 + 136) = v1;
  *(v0 + 144) = SetKeyDictionaryRequest.key.getter();
  *(v0 + 152) = v2;
  *(v0 + 160) = SetKeyDictionaryRequest.value.getter();
  *(v0 + 168) = v3;
  *(v0 + 176) = SetKeyDictionaryRequest.timeToLive.getter();
  *(v0 + 184) = v4;
  *(v0 + 192) = v5;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100037F78, v7, v6);
}

uint64_t sub_100037F78()
{
  _s20LighthouseBackground11KVDatastoreC6setKey5group3key5value10timeToLiveySS_SS10Foundation4DataVs8DurationVSgtAA0C5ErrorOYKFTj();
  sub_1000099D4(*(v0 + 160), *(v0 + 168));

  return (_swift_task_switch)(sub_100038044, 0, 0);
}

uint64_t sub_100038044()
{
  SetKeyDictionaryResponse.init(result:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000380F0()
{
  v36 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[10] + 32);
  v4(v1, v0[13], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v11(v5, v9, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[7];
  v15 = v0[8];
  v18 = v0[5];
  v17 = v0[6];
  if (v14)
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = SetKeyDictionaryRequest.group.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_100008A0C(v20, v22, &v35);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = SetKeyDictionaryRequest.key.getter();
    v27 = v26;
    v23(v16, v18);
    v28 = sub_100008A0C(v25, v27, &v35);

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed at setting key: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v17 + 8);
    v29(v16, v18);
    v29(v15, v18);
  }

  v30 = v0[12];
  v31 = v0[9];
  v32 = v0[10];
  (*(v32 + 16))(v0[11], v30, v31);
  SetKeyDictionaryResponse.init(error:)();
  (*(v32 + 8))(v30, v31);

  v33 = v0[1];

  return v33();
}

uint64_t sub_10003843C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ListLengthDictionaryRequest();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for KVDatastoreError();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return (_swift_task_switch)(sub_10003858C, 0, 0);
}

uint64_t sub_10003858C()
{
  v0[15] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[16] = ListLengthDictionaryRequest.group.getter();
  v0[17] = v1;
  v0[18] = ListLengthDictionaryRequest.key.getter();
  v0[19] = v2;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100038670, v4, v3);
}

uint64_t sub_100038670()
{
  v1 = _s20LighthouseBackground11KVDatastoreC10listLength5group3keySiSgSS_SStAA0C5ErrorOYKFTj();
  v3 = v2;

  *(v0 + 168) = v3;
  *(v0 + 160) = v1;

  return (_swift_task_switch)(sub_100038730, 0, 0);
}

uint64_t sub_100038730()
{
  ListLengthDictionaryResponse.init(length:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000387E4()
{
  v36 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[10] + 32);
  v4(v1, v0[13], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v11(v5, v9, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[7];
  v15 = v0[8];
  v18 = v0[5];
  v17 = v0[6];
  if (v14)
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = ListLengthDictionaryRequest.group.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_100008A0C(v20, v22, &v35);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = ListLengthDictionaryRequest.key.getter();
    v27 = v26;
    v23(v16, v18);
    v28 = sub_100008A0C(v25, v27, &v35);

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed at calling list length: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v17 + 8);
    v29(v16, v18);
    v29(v15, v18);
  }

  v30 = v0[12];
  v31 = v0[9];
  v32 = v0[10];
  (*(v32 + 16))(v0[11], v30, v31);
  ListLengthDictionaryResponse.init(error:)();
  (*(v32 + 8))(v30, v31);

  v33 = v0[1];

  return v33();
}

uint64_t sub_100038B30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ListIndexDictionaryRequest();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for KVDatastoreError();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return (_swift_task_switch)(sub_100038CF4, 0, 0);
}

uint64_t sub_100038CF4()
{
  v0[20] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[21] = ListIndexDictionaryRequest.group.getter();
  v0[22] = v1;
  v0[23] = ListIndexDictionaryRequest.key.getter();
  v0[24] = v2;
  ListIndexDictionaryRequest.date.getter();
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100038DE4, v4, v3);
}

uint64_t sub_100038DE4()
{
  v1 = _s20LighthouseBackground11KVDatastoreC9listIndex5group3key9timestampSiSgSS_SS10Foundation4DateVtAA0C5ErrorOYKFTj();
  v3 = v2;
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  *(v0 + 224) = v3;
  *(v0 + 200) = v1;
  (*(v6 + 8))(v4, v5);

  return (_swift_task_switch)(sub_100038EE8, 0, 0);
}

uint64_t sub_100038EE8()
{
  ListIndexDictionaryResponse.init(index:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100038FC4()
{
  v51 = v0;
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = *(v0[15] + 32);
  v4(v1, v0[18], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  v10 = v0[3];
  v11 = type metadata accessor for Logger();
  sub_1000098DC(v11, qword_100087610);
  v12 = *(v8 + 16);
  v12(v6, v10, v9);
  v12(v5, v10, v9);
  v12(v7, v10, v9);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v48 = v0[26];
    v49 = v14;
    v15 = v0[9];
    v16 = v0[10];
    v17 = v0[8];
    v45 = v0[7];
    v46 = v0[12];
    log = v13;
    v18 = v0[5];
    v19 = v0[6];
    v20 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v20 = 136315650;
    v21 = ListIndexDictionaryRequest.group.getter();
    v23 = v22;
    v24 = *(v19 + 8);
    v24(v15, v18);
    v25 = sub_100008A0C(v21, v23, &v50);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = ListIndexDictionaryRequest.key.getter();
    v28 = v27;
    v24(v17, v18);
    v29 = sub_100008A0C(v26, v28, &v50);

    *(v20 + 14) = v29;
    *(v20 + 22) = 2080;
    ListIndexDictionaryRequest.date.getter();
    sub_100051EE4(&unk_100085980, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v48(v46, v16);
    v24(v45, v18);
    v33 = sub_100008A0C(v30, v32, &v50);

    *(v20 + 24) = v33;
    _os_log_impl(&_mh_execute_header, log, v49, "Failed at calling list index: %s, %s, %s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v35 = v0[8];
    v34 = v0[9];
    v37 = v0[6];
    v36 = v0[7];
    v38 = v0[5];

    v39 = *(v37 + 8);
    v39(v36, v38);
    v39(v35, v38);
    v39(v34, v38);
  }

  v40 = v0[17];
  v41 = v0[14];
  v42 = v0[15];
  (*(v42 + 16))(v0[16], v40, v41);
  ListIndexDictionaryResponse.init(error:)();
  (*(v42 + 8))(v40, v41);

  v43 = v0[1];

  return v43();
}

uint64_t sub_100039430(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  DictionaryRequest = type metadata accessor for ListGetDictionaryRequest();
  v3[5] = DictionaryRequest;
  v3[6] = *(DictionaryRequest - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for KVDatastoreError();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return (_swift_task_switch)(sub_100039580, 0, 0);
}

uint64_t sub_100039580()
{
  v0[15] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[16] = ListGetDictionaryRequest.group.getter();
  v0[17] = v1;
  v0[18] = ListGetDictionaryRequest.key.getter();
  v0[19] = v2;
  v0[20] = ListGetDictionaryRequest.index.getter();
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10003966C, v4, v3);
}

uint64_t sub_10003966C()
{
  v1 = _s20LighthouseBackground11KVDatastoreC7listGet5group3key5index10Foundation4DataVSgSS_SSSitAA0C5ErrorOYKFTj();
  v3 = v2;

  *(v0 + 168) = v3;
  *(v0 + 176) = v1;

  return (_swift_task_switch)(sub_100039728, 0, 0);
}

uint64_t sub_100039728()
{
  ListGetDictionaryResponse.init(value:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000397D4()
{
  v36 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[10] + 32);
  v4(v1, v0[13], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v11(v5, v9, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[7];
  v15 = v0[8];
  v18 = v0[5];
  v17 = v0[6];
  if (v14)
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v19 = 136315394;
    Dictionary = ListGetDictionaryRequest.group.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_100008A0C(Dictionary, v22, &v35);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = ListGetDictionaryRequest.key.getter();
    v27 = v26;
    v23(v16, v18);
    v28 = sub_100008A0C(v25, v27, &v35);

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed at calling list get: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v17 + 8);
    v29(v16, v18);
    v29(v15, v18);
  }

  v30 = v0[12];
  v31 = v0[9];
  v32 = v0[10];
  (*(v32 + 16))(v0[11], v30, v31);
  ListGetDictionaryResponse.init(error:)();
  (*(v32 + 8))(v30, v31);

  v33 = v0[1];

  return v33();
}

uint64_t sub_100039B20(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = type metadata accessor for ListPushDictionaryRequest();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = type metadata accessor for KVDatastoreError();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return (_swift_task_switch)(sub_100039D28, 0, 0);
}

uint64_t sub_100039D28()
{
  v0[28] = *(v0[11] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[29] = ListPushDictionaryRequest.group.getter();
  v0[30] = v1;
  v0[31] = ListPushDictionaryRequest.key.getter();
  v0[32] = v2;
  v0[33] = ListPushDictionaryRequest.value.getter();
  v0[34] = v3;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100039E14, v5, v4);
}

uint64_t sub_100039E14()
{
  _s20LighthouseBackground11KVDatastoreC8listPush5group3key5value10timeToLiveySS_SS10Foundation4DataVs8DurationVSgtAA0C5ErrorOYKFTj();
  sub_1000099D4(*(v0 + 264), *(v0 + 272));

  return (_swift_task_switch)(sub_100039EE0, 0, 0);
}

uint64_t sub_100039EE0()
{
  v1 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  v2 = v0[16];
  v15 = v0[17];
  v14 = v0[18];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = ListPushDictionaryRequest.group.getter();
  v6 = v5;
  v7 = ListPushDictionaryRequest.key.getter();
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v9;
  v0[6] = sub_1000654F4;
  v0[7] = v10;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000658D0;
  v0[5] = &unk_1000833D8;
  v11 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100051EE4(&qword_100085F28, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000089AC(&qword_100085F30, &qword_100069618);
  sub_1000656B8(&qword_100085F38, &qword_100085F30, &qword_100069618);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v15 + 8))(v14, v2);
  (*(v16 + 8))(v1, v17);

  ListPushDictionaryResponse.init(result:)();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10003A1B4()
{
  v36 = v0;
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  v4 = *(v0[23] + 32);
  v4(v1, v0[26], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[10];
  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v11(v5, v9, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[14];
  v15 = v0[15];
  v18 = v0[12];
  v17 = v0[13];
  if (v14)
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = ListPushDictionaryRequest.group.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_100008A0C(v20, v22, &v35);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = ListPushDictionaryRequest.key.getter();
    v27 = v26;
    v23(v16, v18);
    v28 = sub_100008A0C(v25, v27, &v35);

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed at calling list push: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v17 + 8);
    v29(v16, v18);
    v29(v15, v18);
  }

  v30 = v0[25];
  v31 = v0[22];
  v32 = v0[23];
  (*(v32 + 16))(v0[24], v30, v31);
  ListPushDictionaryResponse.init(error:)();
  (*(v32 + 8))(v30, v31);

  v33 = v0[1];

  return v33();
}

uint64_t sub_10003A518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    DatastoreKey.init(group:key:)();
    v9 = type metadata accessor for DatastoreKey();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    sub_1000333B0(0, 0, v7);

    return sub_100009C94(v7, &qword_100085C20, &qword_1000693C0);
  }

  return result;
}

uint64_t sub_10003A66C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10003A6B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ListPopDictionaryRequest();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for KVDatastoreError();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return (_swift_task_switch)(sub_10003A800, 0, 0);
}

uint64_t sub_10003A800()
{
  v0[15] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[16] = ListPopDictionaryRequest.group.getter();
  v0[17] = v1;
  v0[18] = ListPopDictionaryRequest.key.getter();
  v0[19] = v2;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10003A8E4, v4, v3);
}

uint64_t sub_10003A8E4()
{
  v1 = _s20LighthouseBackground11KVDatastoreC7listPop5group3key10Foundation4DataVSgSS_SStAA0C5ErrorOYKFTj();
  v3 = v2;

  *(v0 + 160) = v3;
  *(v0 + 168) = v1;

  return (_swift_task_switch)(sub_10003A9A0, 0, 0);
}

uint64_t sub_10003A9A0()
{
  ListPopDictionaryResponse.init(value:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003AA4C()
{
  v36 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[10] + 32);
  v4(v1, v0[13], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v11(v5, v9, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[7];
  v15 = v0[8];
  v18 = v0[5];
  v17 = v0[6];
  if (v14)
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = ListPopDictionaryRequest.group.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_100008A0C(v20, v22, &v35);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = ListPopDictionaryRequest.key.getter();
    v27 = v26;
    v23(v16, v18);
    v28 = sub_100008A0C(v25, v27, &v35);

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed at calling list pop: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v17 + 8);
    v29(v16, v18);
    v29(v15, v18);
  }

  v30 = v0[12];
  v31 = v0[9];
  v32 = v0[10];
  (*(v32 + 16))(v0[11], v30, v31);
  ListPopDictionaryResponse.init(error:)();
  (*(v32 + 8))(v30, v31);

  v33 = v0[1];

  return v33();
}

uint64_t sub_10003AD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v64 = a3;
  v68 = type metadata accessor for RemoteHandler();
  v56 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000089AC(&qword_100085F98, &unk_100069660);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v54 - v12;
  v14 = sub_1000089AC(&qword_100085FA0, &qword_1000690F8);
  __chkstk_darwin(v14 - 8);
  v16 = &v54 - v15;
  v17 = type metadata accessor for StreamMessage();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v63 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v54 - v21;
  sub_100051EE4(&unk_100085FA8, &type metadata accessor for StreamMessage, &protocol conformance descriptor for StreamMessage);
  v65 = a1;
  v23 = dispatch thunk of StreamMessageWithTopic.topic.getter();
  v24 = a2;
  LOBYTE(a2) = sub_1000292B0(v23, v25, a2);

  if (a2 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v24))
  {
    v62 = v17;
    v54 = a4;
    v26 = StreamMessage.topic.getter();
    v28 = v27;
    v29 = type metadata accessor for UUID();
    a4 = v56;
    v30 = *(v29 - 8);
    (*(v30 + 16))(v16, v64, v29);
    v31 = *(v30 + 56);
    v60 = v29;
    v31(v16, 0, 1, v29);
    v32 = sub_10000A764(v26, v28, v16);

    sub_100009C94(v16, &qword_100085FA0, &qword_1000690F8);
    v17 = 0;
    v22 = v32[2];
    v57 = (v18 + 1);
    v58 = a4 + 32;
    v55 = (v30 + 8);
    v56 = a4 + 8;
    v18 = &qword_100085A00;
    v61 = v13;
    v59 = v11;
    if (v22)
    {
      goto LABEL_5;
    }

LABEL_4:
    v33 = sub_1000089AC(&qword_100085A00, &unk_100069670);
    (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
    v34 = v22;
    while (1)
    {
      sub_100009CF4(v11, v13, &qword_100085F98, &unk_100069660);
      v37 = sub_1000089AC(&qword_100085A00, &unk_100069670);
      if ((*(*(v37 - 8) + 48))(v13, 1, v37) == 1)
      {

        a4 = v54;
        goto LABEL_12;
      }

      (*v58)(v67, &v13[*(v37 + 48)], v68);
      mach_absolute_time();
      UUID.uuidString.getter();
      StreamMessage.topic.getter();
      a4 = v22;
      StreamMessage.data.getter();
      v66 = v34;
      v38 = v63;
      v18 = &qword_100085A00;
      StreamMessage.init(timestamp:sourceId:topic:data:)();
      sub_100051EE4(&qword_100085D70, &type metadata accessor for StreamMessage, &protocol conformance descriptor for StreamMessage);
      v39 = v62;
      v40 = v67;
      RemoteHandler.sendNoReply<A>(_:)();
      v41 = v38;
      v17 = v66;
      (*v57)(v41, v39);
      v11 = v59;
      v13 = v61;
      (*v56)(v40, v68);
      (*v55)(v13, v60);
      if (v17 == v22)
      {
        goto LABEL_4;
      }

LABEL_5:
      if ((v17 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v17 >= v32[2])
      {
        goto LABEL_18;
      }

      v35 = sub_1000089AC(&qword_100085A00, &unk_100069670);
      v36 = *(v35 - 8);
      sub_100009C2C(v32 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v17, v11, &qword_100085A00, &unk_100069670);
      v34 = (v17 + 1);
      (*(v36 + 56))(v11, 0, 1, v35);
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else if (qword_1000850B8 == -1)
  {
    goto LABEL_14;
  }

  swift_once();
LABEL_14:
  v44 = type metadata accessor for Logger();
  sub_1000098DC(v44, qword_100087610);
  (v18[2])(v22, v65, v17);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = v17;
    v49 = swift_slowAlloc();
    v69 = v49;
    *v47 = 136315138;
    v50 = StreamMessage.topic.getter();
    v52 = v51;
    (v18[1])(v22, v48);
    v53 = sub_100008A0C(v50, v52, &v69);

    *(v47 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v45, v46, "Dropping message for topic %s because it is not allowed.", v47, 0xCu);
    sub_100009914(v49);
  }

  else
  {

    (v18[1])(v22, v17);
  }

LABEL_12:
  v42 = type metadata accessor for EmptyMessage();
  return (*(*(v42 - 8) + 56))(a4, 1, 1, v42);
}

uint64_t sub_10003B5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v49 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StreamError();
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin(v12);
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StreamPublisherRequest();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051EE4(&qword_100085F78, &type metadata accessor for StreamPublisherRequest, &protocol conformance descriptor for StreamPublisherRequest);
  v18 = dispatch thunk of StreamMessageWithTopic.topic.getter();
  v20 = sub_1000292B0(v18, v19, a2);

  if (v20 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, a2))
  {
    v21 = StreamPublisherRequest.topic.getter();
    v23 = sub_10000BB60(v48, v21, v22);

    if (v23)
    {
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = StreamPublisherRequest.topic.getter();
      v27 = v26;
      v28 = swift_allocObject();
      v28[2] = v24;
      v28[3] = v25;
      v28[4] = v27;
      aBlock[4] = sub_100065588;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000658D0;
      aBlock[3] = &unk_100083428;
      v29 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v50 = &_swiftEmptyArrayStorage;
      sub_100051EE4(&qword_100085F28, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000089AC(&qword_100085F30, &qword_100069618);
      sub_1000656B8(&qword_100085F38, &qword_100085F30, &qword_100069618);
      v30 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v29);
      (*(v46 + 8))(v8, v30);
      (*(v44 + 8))(v11, v45);

      UUID.uuidString.getter();
      return StreamPublisherResponse.init(result:publisherId:)();
    }

    else
    {
      UUID.uuidString.getter();

      return StreamPublisherResponse.init(result:publisherId:)();
    }
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000098DC(v32, qword_100087610);
    (*(v15 + 16))(v17, a1, v14);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      v37 = StreamPublisherRequest.topic.getter();
      v39 = v38;
      (*(v15 + 8))(v17, v14);
      v40 = sub_100008A0C(v37, v39, aBlock);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "Dropping request for topic %s because it is not allowed.", v35, 0xCu);
      sub_100009914(v36);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    (*(v42 + 104))(v41, enum case for StreamError.invalidTopic(_:), v43);
    return StreamPublisherResponse.init(error:)();
  }
}

uint64_t sub_10003BC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = type metadata accessor for DatastoreKey();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_1000333B0(a2, a3, v7);

    return sub_100009C94(v7, &qword_100085C20, &qword_1000693C0);
  }

  return result;
}

void sub_10003BDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000098DC(v3, qword_100087610);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received SIGTERM, shutting down daemon", v6, 2u);
  }

  exit(0);
}

uint64_t sub_10003BE88()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100051EE4(&qword_100085F28, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000089AC(&qword_100085F30, &qword_100069618);
  sub_1000656B8(&qword_100085F38, &qword_100085F30, &qword_100069618);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10003BF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085C50, &qword_100069400);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000098DC(v11, qword_100087610);
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v6;
    v17 = v16;
    v28 = v16;
    *v15 = 136315138;
    swift_getObjectType();
    OS_dispatch_source_memorypressure.data.getter();
    v18 = OS_dispatch_source.MemoryPressureEvent.description.getter();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_100008A0C(v18, v20, &v28);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received memory pressure warning (event: %s)", v15, 0xCu);
    sub_100009914(v17);
    v6 = v26;

    a2 = v27;
  }

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a1;
  v23[5] = a2;
  swift_unknownObjectRetain();

  sub_10002F68C(0, 0, v6, &unk_1000696D8, v23);
}

uint64_t sub_10003C270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return (_swift_task_switch)(sub_10003C33C, 0, 0);
}

uint64_t sub_10003C33C(uint64_t a1, uint64_t a2)
{
  v4 = v2[8];
  v3 = v2[9];
  v5 = v2[6];
  v6 = v2[7];
  swift_getObjectType();
  OS_dispatch_source_memorypressure.data.getter();
  static OS_dispatch_source.MemoryPressureEvent.critical.getter();
  sub_100051EE4(&qword_100086020, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent, &protocol conformance descriptor for OS_dispatch_source.MemoryPressureEvent);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  if (v2[2] == v2[3])
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000098DC(v8, qword_100087610);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Reducing memory usage in KV store due to pressure.", v11, 2u);
    }

    v12 = v2[5];

    v2[10] = *(v12 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
    type metadata accessor for KVDatastore();
    sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    v16 = sub_10003C6A8;
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000098DC(v17, qword_100087610);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Pruning KV store for expired keys due to memory pressure.", v20, 2u);
    }

    v21 = v2[5];

    v2[11] = *(v21 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
    type metadata accessor for KVDatastore();
    sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v22;
    v16 = sub_10003C718;
  }

  return (_swift_task_switch)(v16, v13, v15);
}

uint64_t sub_10003C6A8()
{
  dispatch thunk of KVDatastore.reduceMemoryUsage()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003C718()
{
  dispatch thunk of KVDatastore.pruneExpiredKeys()();

  v1 = *(v0 + 8);

  return v1();
}

id sub_10003C788(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000098DC(v4, qword_100087610);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100008A0C(0xD000000000000019, 0x8000000100072E40, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "Daemon performing %s activity.", v7, 0xCu);
    sub_100009914(v8);
  }

  return [a1 setTaskCompleted];
}

uint64_t sub_10003C8E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v68 = a3;
  v4 = type metadata accessor for RemoteProcessInfo();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v61 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v61 - v13;
  __chkstk_darwin(v12);
  v16 = (&v61 - v15);
  v69 = a1;
  XPCListener.IncomingSessionRequest.withUnsafeAuditToken<A>(_:)();
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_1000098DC(v17, qword_100087610);
  v64 = *(v5 + 16);
  v64(v14, v16, v4);
  v65 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v63 = v16;
    v22 = v21;
    v23 = swift_slowAlloc();
    v66 = v4;
    v61 = v23;
    v71[0] = v23;
    *v22 = 136315138;
    sub_100051EE4(&qword_100085D38, &type metadata accessor for RemoteProcessInfo, &protocol conformance descriptor for RemoteProcessInfo);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v11;
    v26 = v8;
    v27 = v5;
    v29 = v28;
    v67 = *(v27 + 8);
    v67(v14, v66);
    v30 = sub_100008A0C(v24, v29, v71);
    v5 = v27;
    v8 = v26;
    v11 = v25;

    *(v22 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "Received incoming request from: %s", v22, 0xCu);
    sub_100009914(v61);
    v4 = v66;

    v16 = v63;
  }

  else
  {

    v67 = *(v5 + 8);
    v67(v14, v4);
  }

  v33 = sub_10003D084(v16, v31, v32);
  if (v34)
  {
    v64(v11, v16, v4);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v16;
      v38 = swift_slowAlloc();
      v39 = v11;
      v40 = swift_slowAlloc();
      v71[0] = v40;
      *v38 = 136315138;
      sub_100051EE4(&qword_100085D38, &type metadata accessor for RemoteProcessInfo, &protocol conformance descriptor for RemoteProcessInfo);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v44 = v39;
      v45 = v67;
      v67(v44, v4);
      v46 = sub_100008A0C(v41, v43, v71);

      *(v38 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v35, v36, "Invalid entitlements. Dropping connection from: %s", v38, 0xCu);
      sub_100009914(v40);

      v16 = v37;
    }

    else
    {

      v45 = v67;
      v67(v11, v4);
    }

    dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  }

  else
  {
    v47 = v33;
    v66 = v5;
    v64(v8, v16, v4);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v63 = v16;
      v70 = v47;
      v71[0] = v51;
      *v50 = 136315394;
      sub_1000646BC();
      v52 = String.init<A>(_:radix:uppercase:)();
      v54 = sub_100008A0C(v52, v53, v71);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      sub_100051EE4(&qword_100085D38, &type metadata accessor for RemoteProcessInfo, &protocol conformance descriptor for RemoteProcessInfo);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v45 = v67;
      v67(v8, v4);
      v58 = sub_100008A0C(v55, v57, v71);

      *(v50 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v48, v49, "Accepting connection with entitlements %s from: %s ", v50, 0x16u);
      swift_arrayDestroy();
      v16 = v63;
    }

    else
    {

      v45 = v67;
      v59 = (v67)(v8, v4);
    }

    __chkstk_darwin(v59);
    *(&v61 - 4) = v62;
    *(&v61 - 3) = v47;
    *(&v61 - 2) = v16;
    type metadata accessor for RemoteHandler();
    sub_100051EE4(&qword_100085D40, &type metadata accessor for RemoteHandler, &protocol conformance descriptor for RemoteHandler);
    dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
  }

  return (v45)(v16, v4);
}

uint64_t sub_10003D084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000850C0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v3 = off_100085A50;
  v4 = off_100085A50 + 64;
  v5 = 1 << *(off_100085A50 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(off_100085A50 + 8);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v21 = 0;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = v10 | (v9 << 6);
      v12 = (v3[6] + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(v3[7] + 8 * v11);

      v16._countAndFlagsBits = v13;
      v16._object = v14;
      v17.value = RemoteProcessInfo.valueBool(forEntitlement:)(v16).value;

      if (v17.value != 2)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    if (v17.value && (v15 & ~v21) != 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0;
    }

    v21 |= v19;
  }

  while (v7);
  while (1)
  {
LABEL_7:
    v18 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v18 >= v8)
    {
      break;
    }

    v7 = *&v4[8 * v18];
    ++v9;
    if (v7)
    {
      v9 = v18;
      goto LABEL_5;
    }
  }

  return v21;
}

uint64_t sub_10003D1FC@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, char *, uint64_t)@<X2>, char *a4@<X8>)
{
  v106 = type metadata accessor for UUID();
  v110 = *(v106 - 8);
  v7 = __chkstk_darwin(v106);
  v103 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v101 - v10;
  v108 = v12;
  __chkstk_darwin(v9);
  v14 = &v101 - v13;
  v15 = *(a2 + 40);

  v16 = v15;
  RemoteHandler.init(session:handoffQueue:)();
  v111 = a3;
  v109 = v14;
  if ((a3 & 0x30) != 0)
  {
    v17._object = 0x80000001000731A0;
    v17._countAndFlagsBits = 0xD000000000000025;
    v18 = RemoteProcessInfo.valueStringArray(forEntitlement:)(v17);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

    v20 = sub_10004F764(v19);

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000098DC(v21, qword_100087610);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v107 = v11;
      v25 = v24;
      v26 = swift_slowAlloc();
      v112 = v26;
      *v25 = 136315138;
      v27 = Set.description.getter();
      v29 = sub_100008A0C(v27, v28, &v112);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Accepted connection with allowedTasks: %s", v25, 0xCu);
      sub_100009914(v26);

      v11 = v107;
      v14 = v109;
    }

    if ((v111 & 4) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v20 = &_swiftEmptySetSingleton;
    if ((v111 & 4) != 0)
    {
LABEL_10:
      type metadata accessor for ListTasksRequest();
      sub_100051EE4(&qword_100085E30, &type metadata accessor for ListTasksRequest, &protocol conformance descriptor for ListTasksRequest);

      RemoteHandler.handle<A>(_:handler:)();

      type metadata accessor for GetTaskRequest();
      sub_100051EE4(&qword_100085E38, &type metadata accessor for GetTaskRequest, &protocol conformance descriptor for GetTaskRequest);

      RemoteHandler.handle<A>(_:handler:)();
    }
  }

  type metadata accessor for ListExtensionsRequest();
  sub_100051EE4(&qword_100085D50, &type metadata accessor for ListExtensionsRequest, &protocol conformance descriptor for ListExtensionsRequest);

  RemoteHandler.handle<A>(_:handler:)();

  type metadata accessor for GetExtensionRequest();
  sub_100051EE4(&qword_100085D58, &type metadata accessor for GetExtensionRequest, &protocol conformance descriptor for GetExtensionRequest);

  RemoteHandler.handle<A>(_:handler:)();

  if ((v111 & 8) != 0)
  {
    type metadata accessor for AddTaskRequest();
    v31 = swift_allocObject();
    *(v31 + 16) = v20;
    *(v31 + 24) = a2;
    sub_100051EE4(&qword_100085E28, &type metadata accessor for AddTaskRequest, &protocol conformance descriptor for AddTaskRequest);

    RemoteHandler.handle<A>(_:handler:)();

    if ((v111 & 0x10) == 0)
    {
LABEL_13:
      if ((v111 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((v111 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for RemoveTaskRequest();
  v32 = swift_allocObject();
  *(v32 + 16) = v20;
  *(v32 + 24) = a2;
  sub_100051EE4(&qword_100085E10, &type metadata accessor for RemoveTaskRequest, &protocol conformance descriptor for RemoveTaskRequest);

  RemoteHandler.handle<A>(_:handler:)();

  type metadata accessor for ResetTasksRequest();
  sub_100051EE4(&qword_100085E18, &type metadata accessor for ResetTasksRequest, &protocol conformance descriptor for ResetTasksRequest);

  RemoteHandler.handle<A>(_:handler:)();

  type metadata accessor for CleanTasksRequest();
  sub_100051EE4(&qword_100085E20, &type metadata accessor for CleanTasksRequest, &protocol conformance descriptor for CleanTasksRequest);

  RemoteHandler.handle<A>(_:handler:)();

  if ((v111 & 1) == 0)
  {
LABEL_14:
    if ((v111 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  type metadata accessor for GetHostConfigurationRequest();
  sub_100051EE4(&qword_100085E08, &type metadata accessor for GetHostConfigurationRequest, &protocol conformance descriptor for GetHostConfigurationRequest);

  RemoteHandler.handle<A>(_:handler:)();

  if ((v111 & 2) == 0)
  {
LABEL_15:
    if ((v111 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_22:
  type metadata accessor for SetHostConfigurationRequest();
  sub_100051EE4(&qword_100085E00, &type metadata accessor for SetHostConfigurationRequest, &protocol conformance descriptor for SetHostConfigurationRequest);
  RemoteHandler.handle<A>(_:handler:)();
  if ((v111 & 1) == 0)
  {
LABEL_16:
    if ((v111 & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    type metadata accessor for ResetNotificationsRequest();
    sub_100051EE4(&qword_100085DF0, &type metadata accessor for ResetNotificationsRequest, &protocol conformance descriptor for ResetNotificationsRequest);

    RemoteHandler.handle<A>(_:handler:)();

    if ((v111 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_23:
  type metadata accessor for GetNotificationsConfigRequest();
  sub_100051EE4(&qword_100085DF8, &type metadata accessor for GetNotificationsConfigRequest, &protocol conformance descriptor for GetNotificationsConfigRequest);

  RemoteHandler.handle<A>(_:handler:)();

  if ((v111 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  if ((v111 & 0x20) == 0)
  {
LABEL_18:

    goto LABEL_26;
  }

LABEL_25:
  type metadata accessor for GetOnDemandTaskRequest();
  v33 = swift_allocObject();
  *(v33 + 16) = v20;
  *(v33 + 24) = a2;
  sub_100051EE4(&qword_100085DE8, &type metadata accessor for GetOnDemandTaskRequest, &protocol conformance descriptor for GetOnDemandTaskRequest);

  RemoteHandler.handle<A>(_:handler:)();

LABEL_26:
  v34 = _swiftEmptyArrayStorage;
  if ((v111 & 0x1C0) == 0)
  {
    goto LABEL_43;
  }

  v35._countAndFlagsBits = 0xD000000000000030;
  v35._object = 0x80000001000731D0;
  v36 = RemoteProcessInfo.valueStringArray(forEntitlement:)(v35);
  if (v36)
  {
    v34 = v36;
  }

  v37 = sub_10004F764(v34);

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_1000098DC(v38, qword_100087610);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v107 = v11;
    v42 = v41;
    v43 = swift_slowAlloc();
    v112 = v43;
    *v42 = 136315138;
    v44 = Set.description.getter();
    v46 = sub_100008A0C(v44, v45, &v112);

    *(v42 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "Accepted connection with allowedGroups: %s", v42, 0xCu);
    sub_100009914(v43);

    v11 = v107;
    v14 = v109;
  }

  if ((v111 & 0x40) == 0)
  {
    if ((v111 & 0x80) == 0)
    {
      goto LABEL_35;
    }

LABEL_40:
    type metadata accessor for SetKeyDictionaryRequest();
    v54 = swift_allocObject();
    *(v54 + 16) = a2;
    *(v54 + 24) = v37;
    sub_100051EE4(&qword_100085D90, &type metadata accessor for SetKeyDictionaryRequest, &protocol conformance descriptor for SetKeyDictionaryRequest);

    RemoteHandler.handleAsync<A>(_:handler:)();

    type metadata accessor for ListPushDictionaryRequest();
    v55 = swift_allocObject();
    *(v55 + 16) = a2;
    *(v55 + 24) = v37;
    sub_100051EE4(&qword_100085D98, &type metadata accessor for ListPushDictionaryRequest, &protocol conformance descriptor for ListPushDictionaryRequest);

    RemoteHandler.handleAsync<A>(_:handler:)();

    type metadata accessor for ListPopDictionaryRequest();
    v56 = swift_allocObject();
    *(v56 + 16) = a2;
    *(v56 + 24) = v37;
    sub_100051EE4(&qword_100085DA0, &type metadata accessor for ListPopDictionaryRequest, &protocol conformance descriptor for ListPopDictionaryRequest);

    RemoteHandler.handleAsync<A>(_:handler:)();

    if ((v111 & 0x100) == 0)
    {
      goto LABEL_36;
    }

LABEL_41:
    type metadata accessor for ClearDictionaryRequest();
    v57 = swift_allocObject();
    *(v57 + 16) = a2;
    *(v57 + 24) = v37;
    sub_100051EE4(&qword_100085D88, &type metadata accessor for ClearDictionaryRequest, &protocol conformance descriptor for ClearDictionaryRequest);

    RemoteHandler.handleAsync<A>(_:handler:)();

    goto LABEL_42;
  }

  type metadata accessor for ListKeysDictionaryRequest();
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  *(v47 + 24) = v37;
  sub_100051EE4(&qword_100085DA8, &type metadata accessor for ListKeysDictionaryRequest, &protocol conformance descriptor for ListKeysDictionaryRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for GetKeyTypeRequest();
  v48 = swift_allocObject();
  *(v48 + 16) = a2;
  *(v48 + 24) = v37;
  sub_100051EE4(&qword_100085DB0, &type metadata accessor for GetKeyTypeRequest, &protocol conformance descriptor for GetKeyTypeRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for GetKeyExpirationRequest();
  v49 = swift_allocObject();
  *(v49 + 16) = a2;
  *(v49 + 24) = v37;
  sub_100051EE4(&qword_100085DB8, &type metadata accessor for GetKeyExpirationRequest, &protocol conformance descriptor for GetKeyExpirationRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for GetKeyDictionaryRequest();
  v50 = swift_allocObject();
  *(v50 + 16) = a2;
  *(v50 + 24) = v37;
  sub_100051EE4(&qword_100085DC0, &type metadata accessor for GetKeyDictionaryRequest, &protocol conformance descriptor for GetKeyDictionaryRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for ListLengthDictionaryRequest();
  v51 = swift_allocObject();
  *(v51 + 16) = a2;
  *(v51 + 24) = v37;
  sub_100051EE4(&qword_100085DC8, &type metadata accessor for ListLengthDictionaryRequest, &protocol conformance descriptor for ListLengthDictionaryRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for ListIndexDictionaryRequest();
  v52 = swift_allocObject();
  *(v52 + 16) = a2;
  *(v52 + 24) = v37;
  sub_100051EE4(&qword_100085DD0, &type metadata accessor for ListIndexDictionaryRequest, &protocol conformance descriptor for ListIndexDictionaryRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for ListGetDictionaryRequest();
  v53 = swift_allocObject();
  *(v53 + 16) = a2;
  *(v53 + 24) = v37;
  sub_100051EE4(&qword_100085DD8, &type metadata accessor for ListGetDictionaryRequest, &protocol conformance descriptor for ListGetDictionaryRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for GetInfoDictionaryRequest();
  sub_100051EE4(&qword_100085DE0, &type metadata accessor for GetInfoDictionaryRequest, &protocol conformance descriptor for GetInfoDictionaryRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  if ((v111 & 0x80) != 0)
  {
    goto LABEL_40;
  }

LABEL_35:
  if ((v111 & 0x100) != 0)
  {
    goto LABEL_41;
  }

LABEL_36:

LABEL_42:
  v34 = _swiftEmptyArrayStorage;
LABEL_43:
  if ((v111 & 0xE00) == 0)
  {
    return result;
  }

  v58._countAndFlagsBits = 0xD000000000000026;
  v58._object = 0x8000000100073210;
  v59 = RemoteProcessInfo.valueStringArray(forEntitlement:)(v58);
  if (v59)
  {
    v34 = v59;
  }

  v60 = sub_10004F764(v34);

  v107 = a4;
  RemoteHandler.sessionId.getter();
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_1000098DC(v61, qword_100087610);
  v62 = *(v110 + 16);
  v63 = v106;
  v104 = v110 + 16;
  v105 = v62;
  (v62)(v11, v14);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();

  v66 = os_log_type_enabled(v64, v65);
  v102 = v60;
  if (!v66)
  {

    v101 = *(v110 + 8);
    v101(v11, v63);
    if ((v111 & 0x200) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v67 = swift_slowAlloc();
  v112 = swift_slowAlloc();
  *v67 = 136315394;
  v68 = UUID.uuidString.getter();
  v70 = v69;
  v101 = *(v110 + 8);
  v101(v11, v63);
  v71 = sub_100008A0C(v68, v70, &v112);

  *(v67 + 4) = v71;
  *(v67 + 12) = 2080;
  v72 = Set.description.getter();
  v74 = sub_100008A0C(v72, v73, &v112);

  *(v67 + 14) = v74;
  _os_log_impl(&_mh_execute_header, v64, v65, "Accepted connection %s with allowedTopics: %s", v67, 0x16u);
  swift_arrayDestroy();

  v14 = v109;

  if ((v111 & 0x200) != 0)
  {
LABEL_52:
    type metadata accessor for StreamListRequest();
    sub_100051EE4(&qword_100085D80, &type metadata accessor for StreamListRequest, &protocol conformance descriptor for StreamListRequest);

    RemoteHandler.handle<A>(_:handler:)();
  }

LABEL_53:
  if ((v111 & 0x800) != 0)
  {
    v75 = swift_allocObject();
    swift_weakInit();
    v76 = v103;
    v105(v103, v14, v63);
    v77 = v110;
    v78 = *(v110 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = v75;
    v80 = *(v77 + 32);
    v80(v79 + ((v78 + 24) & ~v78), v76, v63);

    RemoteHandler.onCancellation(_:)();

    type metadata accessor for StreamMessage();
    v105(v76, v109, v63);
    v81 = (v78 + 32) & ~v78;
    v82 = swift_allocObject();
    v83 = v102;
    *(v82 + 16) = a2;
    *(v82 + 24) = v83;
    v80(v82 + v81, v76, v106);
    sub_100051EE4(&qword_100085D70, &type metadata accessor for StreamMessage, &protocol conformance descriptor for StreamMessage);

    RemoteHandler.handle<A>(_:handler:)();

    type metadata accessor for StreamPublisherRequest();
    v105(v76, v109, v106);
    v84 = swift_allocObject();
    *(v84 + 16) = a2;
    *(v84 + 24) = v83;
    v85 = v84 + v81;
    v63 = v106;
    (v80)(v85, v76);
    v86 = v109;
    sub_100051EE4(&qword_100085D78, &type metadata accessor for StreamPublisherRequest, &protocol conformance descriptor for StreamPublisherRequest);

    v87 = v107;
    RemoteHandler.handle<A>(_:handler:)();

    v14 = v86;
    sub_10000AFC0(v86, v87);
    if ((v111 & 0x400) == 0)
    {
      goto LABEL_55;
    }
  }

  else if ((v111 & 0x400) == 0)
  {
LABEL_55:
    v101(v14, v63);
  }

  v88 = swift_allocObject();
  swift_weakInit();
  v89 = v103;
  v90 = v14;
  v105(v103, v14, v63);
  v91 = v110;
  v92 = *(v110 + 80);
  v93 = swift_allocObject();
  *(v93 + 16) = v88;
  v94 = *(v91 + 32);
  v94(v93 + ((v92 + 24) & ~v92), v89, v63);
  v111 = v94;

  RemoteHandler.onCancellation(_:)();

  type metadata accessor for StreamSubscribeRequest();
  v105(v89, v90, v63);
  v110 = v91 + 32;
  v95 = (v92 + 32) & ~v92;
  v96 = swift_allocObject();
  v97 = v102;
  *(v96 + 16) = a2;
  *(v96 + 24) = v97;
  v94(v96 + v95, v89, v63);
  sub_100051EE4(&qword_100085D60, &type metadata accessor for StreamSubscribeRequest, &protocol conformance descriptor for StreamSubscribeRequest);

  RemoteHandler.handle<A>(_:handler:)();

  type metadata accessor for StreamUnsubscribeRequest();
  v98 = v109;
  v105(v89, v109, v63);
  v99 = swift_allocObject();
  *(v99 + 16) = a2;
  *(v99 + 24) = v97;
  v111(v99 + v95, v89, v63);
  sub_100051EE4(&qword_100085D68, &type metadata accessor for StreamUnsubscribeRequest, &protocol conformance descriptor for StreamUnsubscribeRequest);

  v100 = v107;
  RemoteHandler.handle<A>(_:handler:)();

  sub_10000B660(v98, v100);
  return (v101)(v98, v63);
}

uint64_t sub_10003EE24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v4 - 8);
  v6 = v34 - v5;
  v7 = type metadata accessor for MLHostTask();
  v37 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v41 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = v34 - v10;
  v11 = *(a1 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  os_unfair_lock_lock((*(v11 + 56) + 16));
  swift_beginAccess();
  v12 = *(v11 + 64);
  v13 = *(v12 + 16);
  v34[1] = a2;
  if (v13)
  {
    v14 = sub_100024920(v13, 0);
    v15 = sub_100025B0C(v42, v14 + 4, v13, v12);
    v16 = v42[0];
    v38 = v42[3];
    v39 = v42[2];
    v36 = v42[4];

    sub_100009A28(v16);
    if (v15 == v13)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_5:
  os_unfair_lock_unlock((*(v11 + 56) + 16));
  v17 = v14[2];
  v34[0] = v14;
  if (v17)
  {
    v18 = (v37 + 56);
    v36 = (v37 + 16);
    v38 = (v37 + 32);
    v39 = (v37 + 48);
    v34[2] = v37 + 8;
    v19 = v14 + 5;
    v20 = _swiftEmptyArrayStorage;
    v35 = (v37 + 56);
    do
    {
      v22 = *(v19 - 1);
      v21 = *v19;
      v23 = *(v11 + 56);

      os_unfair_lock_lock(v23 + 4);
      swift_beginAccess();
      v24 = *(v11 + 64);
      if (*(v24 + 16) && (v25 = sub_100010DF4(v22, v21), (v26 & 1) != 0))
      {
        (*(v37 + 16))(v6, *(v24 + 56) + *(v37 + 72) * v25, v7);
        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      (*v18)(v6, v27, 1, v7);
      swift_endAccess();

      os_unfair_lock_unlock((*(v11 + 56) + 16));
      if ((*v39)(v6, 1, v7) == 1)
      {
        sub_100009C94(v6, &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v28 = *v38;
        v29 = v40;
        (*v38)(v40, v6, v7);
        (*v36)(v41, v29, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10002471C(0, *(v20 + 2) + 1, 1, v20);
        }

        v31 = *(v20 + 2);
        v30 = *(v20 + 3);
        if (v31 >= v30 >> 1)
        {
          v20 = sub_10002471C((v30 > 1), v31 + 1, 1, v20);
        }

        v32 = v37;
        (*(v37 + 8))(v40, v7);
        *(v20 + 2) = v31 + 1;
        v28(&v20[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31], v41, v7);
        v18 = v35;
      }

      v19 += 2;
      --v17;
    }

    while (v17);
  }

  return ListTasksResponse.init(tasks:)();
}

uint64_t sub_10003F270()
{
  v0 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v13 - v4;
  v6 = type metadata accessor for MLHostTask();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = GetTaskRequest.name.getter();
  sub_100019300(Task, v11, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100009C94(v5, &qword_100085940, &unk_1000693D0);
    (*(v7 + 56))(v3, 1, 1, v6);
    return GetTaskResponse.init(task:)();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    (*(v7 + 16))(v3, v9, v6);
    (*(v7 + 56))(v3, 0, 1, v6);
    GetTaskResponse.init(task:)();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_10003F4C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry);
  os_unfair_lock_lock((*(v2 + 16) + 16));

  sub_10000E2B0(v3);
  v5 = v4;

  os_unfair_lock_unlock((*(v2 + 16) + 16));

  return ListExtensionsResponse.init(extensions:)(v5);
}

uint64_t sub_10003F550()
{
  v0 = sub_1000089AC(&qword_100085728, &qword_100069140);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v13 - v4;
  v6 = type metadata accessor for ExtensionRecord();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Extension = GetExtensionRequest.bundleIdentifier.getter();
  sub_10000EC54(Extension, v11, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100009C94(v5, &qword_100085728, &qword_100069140);
    (*(v7 + 56))(v3, 1, 1, v6);
    return GetExtensionResponse.init(extensionRecord:)();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    (*(v7 + 16))(v3, v9, v6);
    (*(v7 + 56))(v3, 0, 1, v6);
    GetExtensionResponse.init(extensionRecord:)();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_10003F7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a3;
  v63 = a2;
  v66 = a4;
  v5 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for TaskValidationError();
  v65 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v54 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v52 = &v50 - v12;
  v13 = __chkstk_darwin(v11);
  v55 = &v50 - v14;
  v15 = __chkstk_darwin(v13);
  v57 = &v50 - v16;
  __chkstk_darwin(v15);
  v60 = &v50 - v17;
  v18 = type metadata accessor for TaskDefinition();
  v62 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v56 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v50 - v21;
  v23 = type metadata accessor for AddTaskRequest();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v59 = v7;
  v27 = type metadata accessor for Logger();
  v28 = sub_1000098DC(v27, qword_100087610);
  v29 = *(v24 + 16);
  v64 = a1;
  v29(v26, a1, v23);
  v53 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  v32 = os_log_type_enabled(v30, v31);
  v61 = v8;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v50 = v33;
    v51 = swift_slowAlloc();
    v67[0] = v51;
    *v33 = 136315138;
    AddTaskRequest.taskDefinition.getter();
    v34 = TaskDefinition.name.getter();
    v36 = v35;
    v37 = v62;
    (*(v62 + 8))(v22, v18);
    (*(v24 + 8))(v26, v23);
    v38 = sub_100008A0C(v34, v36, v67);

    v39 = v50;
    *(v50 + 1) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "Processing AddTaskRequest for task: %s", v39, 0xCu);
    sub_100009914(v51);
  }

  else
  {

    (*(v24 + 8))(v26, v23);
    v37 = v62;
  }

  AddTaskRequest.taskDefinition.getter();
  v40 = TaskDefinition.name.getter();
  v42 = v41;
  v43 = *(v37 + 8);
  v43(v22, v18);
  v44 = v63;
  LOBYTE(v40) = sub_1000292B0(v40, v42, v63);

  v45 = v65;
  if (v40 & 1) != 0 && (sub_1000292B0(42, 0xE100000000000000, v44))
  {
    v46 = v56;
    AddTaskRequest.taskDefinition.getter();
    v47 = v59;
    sub_100034304(v46, v57, v59);
    v43(v46, v18);
    v49 = type metadata accessor for MLHostTask();
    if ((*(*(v49 - 8) + 48))(v47, 1, v49) == 1)
    {
      AddTaskResponse.init(result:)();
      return sub_100009C94(v47, &qword_100085940, &unk_1000693D0);
    }

    else
    {
      sub_100009C94(v47, &qword_100085940, &unk_1000693D0);
      return AddTaskResponse.init(result:)();
    }
  }

  else
  {
    (*(v45 + 104))(v60, enum case for TaskValidationError.invalidName(_:), v61);
    return AddTaskResponse.init(error:)();
  }
}

uint64_t sub_100040148@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v5 - 8);
  v7 = v56 - v6;
  v8 = type metadata accessor for MLHostTask();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = __chkstk_darwin(v8);
  v59 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = v56 - v12;
  __chkstk_darwin(v11);
  v60 = v56 - v14;
  v15 = type metadata accessor for TaskValidationError();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = RemoveTaskRequest.name.getter();
  v21 = sub_1000292B0(v19, v20, a1);

  if ((v21 & 1) == 0 || (sub_1000292B0(42, 0xE100000000000000, a1) & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v23 = RemoveTaskRequest.name.getter();
  v58 = v22;
  sub_100019300(v23, v24, v7);

  v26 = v61;
  v25 = v62;
  if ((*(v61 + 48))(v7, 1, v62) == 1)
  {
    sub_100009C94(v7, &qword_100085940, &unk_1000693D0);
LABEL_5:
    (*(v16 + 104))(v18, enum case for TaskValidationError.invalidName(_:), v15);
    return RemoveTaskResponse.init(error:)();
  }

  v28 = v60;
  (*(v26 + 32))(v60, v7, v25);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_1000098DC(v29, qword_100087610);
  v57 = *(v26 + 16);
  v57(v13, v28, v25);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v64 = v34;
    *v33 = 136315138;
    v35 = MLHostTask.name.getter();
    v56[1] = v30;
    v37 = v36;
    v38 = *(v26 + 8);
    v38(v13, v62);
    v39 = sub_100008A0C(v35, v37, &v64);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "Processing RemoveTaskRequest for task: %s", v33, 0xCu);
    sub_100009914(v34);
    v25 = v62;

    v28 = v60;
  }

  else
  {

    v38 = *(v26 + 8);
    v38(v13, v25);
  }

  v40 = MLHostTask.name.getter();
  v42 = sub_100018354(v40, v41);

  if (v42)
  {
    if (MLHostTask.isBackgroundTask.getter())
    {
      v43 = RemoveTaskRequest.name.getter();
      sub_100063BB0(v43, v44, v45);
    }

    RemoveTaskResponse.init(result:)();
    return (v38)(v28, v25);
  }

  else
  {
    v46 = v59;
    v57(v59, v28, v25);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v64 = v50;
      *v49 = 136315138;
      v51 = MLHostTask.name.getter();
      v52 = v46;
      v54 = v53;
      v38(v52, v62);
      v55 = sub_100008A0C(v51, v54, &v64);

      *(v49 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed at removing task: %s.", v49, 0xCu);
      sub_100009914(v50);
      v25 = v62;
    }

    else
    {

      v38(v46, v25);
    }

    RemoveTaskResponse.init(result:)();
    return (v38)(v60, v25);
  }
}

uint64_t sub_10004078C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000098DC(v4, qword_100087610);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resetting tasks in mlhostd.", v7, 2u);
  }

  sub_1000308A4();
  v8 = sub_100033164("disableTriggerTasks", sub_10003240C);
  v9 = *(*(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry) + 56);
  __chkstk_darwin(v8);
  os_unfair_lock_lock(v9 + 4);
  sub_100065490(v10);
  os_unfair_lock_unlock(v9 + 4);
  sub_10001802C();
  if (ResetTasksRequest.reload.getter())
  {
    sub_10002BCC4();
    sub_10002F9F8();
    sub_100030304();
    sub_100033164("enableTriggerTasks", sub_100031790);
  }

  return ResetTasksResponse.init(reloaded:)();
}

uint64_t sub_100040968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_1000098DC(v3, qword_100087610);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cleaning dynamicTasks", v7, 2u);
  }

  sub_1000171C0();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 40);
    v11 = _swiftEmptyArrayStorage;
    do
    {
      v17 = *(v10 - 1);
      v16 = *v10;

      sub_100063BB0(v17, v16, v18);
      if (sub_100018354(v17, v16))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1000243B8(0, *(v11 + 2) + 1, 1, v11);
        }

        v20 = *(v11 + 2);
        v19 = *(v11 + 3);
        if (v20 >= v19 >> 1)
        {
          v11 = sub_1000243B8((v19 > 1), v20 + 1, 1, v11);
        }

        *(v11 + 2) = v20 + 1;
        v21 = &v11[16 * v20];
        *(v21 + 4) = v17;
        *(v21 + 5) = v16;
      }

      else
      {

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v12 = v4;
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v25 = v14;
          *v13 = 136315138;
          v15 = sub_100008A0C(v17, v16, &v25);

          *(v13 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v22, v23, "Failed at removing task: %s", v13, 0xCu);
          sub_100009914(v14);

          v4 = v12;
        }

        else
        {
        }
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  return CleanTasksResponse.init(tasks:)(v11);
}

uint64_t sub_100040C60(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MLHostConfig();
  __chkstk_darwin(v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_config);
  return GetHostConfigurationResponse.init(config:)();
}

uint64_t sub_100040D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SetHostConfigurationRequest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLHostConfig();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  SetHostConfigurationRequest.config.getter();
  v12 = sub_100052CC4();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (v12)
  {
    v31 = a2;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000098DC(v14, qword_100087610);
    (*(v5 + 16))(v7, a1, v4);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = v12;
      v18 = v17;
      v30 = swift_slowAlloc();
      v32 = v30;
      *v18 = 136315138;
      v28 = v16;
      SetHostConfigurationRequest.config.getter();
      sub_100051EE4(&unk_100085E40, &type metadata accessor for MLHostConfig, &protocol conformance descriptor for MLHostConfig);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v15;
      v21 = v20;
      v13(v11, v8);
      (*(v5 + 8))(v7, v4);
      v22 = sub_100008A0C(v19, v21, &v32);

      v23 = v28;
      *(v18 + 4) = v22;
      v24 = v27;
      _os_log_impl(&_mh_execute_header, v27, v23, "Updated MLHost config: %s", v18, 0xCu);
      sub_100009914(v30);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  return SetHostConfigurationResponse.init(success:error:)();
}

uint64_t sub_1000410A8()
{
  if (GetNotificationsConfigRequest.registeredOnly.getter())
  {
    v0 = sub_100007650();
  }

  else
  {
    v0 = sub_100007018();
  }

  return GetNotificationsConfigResponse.init(channelsByTopic:)(v0);
}

uint64_t sub_10004110C()
{
  sub_100006504();
  v0 = ResetNotificationsRequest.reload.getter();
  if (v0)
  {
    sub_100004F58(v0, v1, v2);
  }

  ResetNotificationsRequest.reload.getter();

  return ResetTasksResponse.init(reloaded:)();
}

uint64_t sub_100041180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a3;
  v7 = type metadata accessor for GetOnDemandTaskRequest();
  v113 = *(v7 - 8);
  v114 = v7;
  __chkstk_darwin(v7);
  v112 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OnDemandResult();
  v104 = *(v9 - 8);
  v105 = v9;
  __chkstk_darwin(v9);
  v103 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OnDemandError();
  v12 = *(v11 - 8);
  v117 = v11;
  v118 = v12;
  v13 = __chkstk_darwin(v11);
  v106 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v101 = &v98 - v16;
  v17 = __chkstk_darwin(v15);
  v116 = &v98 - v18;
  __chkstk_darwin(v17);
  v109 = &v98 - v19;
  v20 = sub_1000089AC(&qword_100085E50, &qword_1000695A8);
  __chkstk_darwin(v20 - 8);
  v107 = &v98 - v21;
  v22 = type metadata accessor for TaskStatus();
  v110 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v98 - v26;
  v28 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  __chkstk_darwin(v28 - 8);
  v30 = &v98 - v29;
  v31 = type metadata accessor for MLHostTask();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v108 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v102 = &v98 - v36;
  __chkstk_darwin(v35);
  v111 = &v98 - v37;
  v38 = GetOnDemandTaskRequest.taskName.getter();
  LOBYTE(a2) = sub_1000292B0(v38, v39, a2);

  if ((a2 & 1) == 0)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000098DC(v42, qword_100087610);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v117;
    if (v45)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Client not authorized for onDemand requests.", v47, 2u);
    }

    (*(v118 + 104))(v116, enum case for OnDemandError.clientUnauthorized(_:), v46);
    return GetOnDemandTaskRequestResponse.init(error:)();
  }

  v100 = a4;
  v99 = a1;
  v40 = GetOnDemandTaskRequest.taskName.getter();
  sub_100019300(v40, v41, v30);

  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_100009C94(v30, &qword_100085940, &unk_1000693D0);
LABEL_16:
    v68 = v99;
    v70 = v112;
    v69 = v113;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_1000098DC(v71, qword_100087610);
    v72 = v68;
    v73 = v114;
    (*(v69 + 16))(v70, v72, v114);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v119[0] = v77;
      *v76 = 136315138;
      v78 = GetOnDemandTaskRequest.taskName.getter();
      v80 = v79;
      (*(v69 + 8))(v70, v73);
      v81 = sub_100008A0C(v78, v80, v119);

      *(v76 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v74, v75, "Invalid taskName for onDemand request: %s", v76, 0xCu);
      sub_100009914(v77);
    }

    else
    {

      (*(v69 + 8))(v70, v73);
    }

    (*(v118 + 104))(v116, enum case for OnDemandError.taskInvalid(_:), v117);
    return GetOnDemandTaskRequestResponse.init(error:)();
  }

  v48 = v31;
  v49 = v32;
  v50 = v111;
  (*(v32 + 32))(v111, v30, v48);
  if ((MLHostTask.isBackgroundTask.getter() & 1) == 0)
  {
    (*(v32 + 8))(v50, v48);
    goto LABEL_16;
  }

  MLHostTask.status.getter();
  v51 = v110;
  (*(v110 + 104))(v25, enum case for TaskStatus.taskRunning(_:), v22);
  sub_100051EE4(&qword_100085E58, &type metadata accessor for TaskStatus, &protocol conformance descriptor for TaskStatus);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v51 + 8);
  v53(v25, v22);
  v53(v27, v22);
  if (v52)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000098DC(v54, qword_100087610);
    v55 = v108;
    (*(v49 + 16))(v108, v50, v48);
    v56 = Logger.logObject.getter();
    v57 = v49;
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v58))
    {
      v59 = swift_slowAlloc();
      v115 = v48;
      v60 = v59;
      v61 = swift_slowAlloc();
      v119[0] = v61;
      *v60 = 136315138;
      sub_100051EE4(&unk_100085C40, &type metadata accessor for MLHostTask, &protocol conformance descriptor for MLHostTask);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v55;
      v65 = v64;
      v66 = *(v57 + 8);
      v66(v63, v115);
      v67 = sub_100008A0C(v62, v65, v119);

      *(v60 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v56, v58, "Found existing running task: %s", v60, 0xCu);
      sub_100009914(v61);

      v48 = v115;
    }

    else
    {

      v66 = *(v57 + 8);
      v66(v55, v48);
    }

    (*(v118 + 104))(v116, enum case for OnDemandError.taskRunning(_:), v117);
    GetOnDemandTaskRequestResponse.init(error:)();
    return (v66)(v50, v48);
  }

  else
  {
    v83 = v48;
    v84 = v107;
    GetOnDemandTaskRequest.onDemandRequest.getter();
    sub_100030AE0(v50, v84, v109);
    sub_100009C94(v84, &qword_100085E50, &qword_1000695A8);
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_1000098DC(v85, qword_100087610);
    v86 = v102;
    (*(v49 + 16))(v102, v50, v48);
    v87 = Logger.logObject.getter();
    v88 = v49;
    v89 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v87, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v119[0] = v91;
      *v90 = 136315138;
      sub_100051EE4(&unk_100085C40, &type metadata accessor for MLHostTask, &protocol conformance descriptor for MLHostTask);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v86;
      v95 = v94;
      v96 = *(v88 + 8);
      v96(v93, v83);
      v97 = sub_100008A0C(v92, v95, v119);

      *(v90 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v87, v89, "Task %s scheduled for onDemand execution.", v90, 0xCu);
      sub_100009914(v91);
      v50 = v111;

      v48 = v83;
    }

    else
    {

      v96 = *(v88 + 8);
      v96(v86, v48);
    }

    (*(v104 + 104))(v103, enum case for OnDemandResult.taskScheduled(_:), v105);
    GetOnDemandTaskRequestResponse.init(result:)();
    return (v96)(v50, v48);
  }
}

uint64_t sub_100042144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100042208, 0, 0);
}

uint64_t sub_100042208()
{
  v1 = v0[5];
  type metadata accessor for ListKeysDictionaryRequest();
  sub_100051EE4(&qword_100085EF8, &type metadata accessor for ListKeysDictionaryRequest, &protocol conformance descriptor for ListKeysDictionaryRequest);

  v2 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v2, v3, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_100042414;
    v5 = v0[3];
    v6 = v0[2];

    return sub_100034DB4(v6, v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    type metadata accessor for ListKeysDictionaryResponse();
    (*(v9 + 104))(v8, enum case for KVDatastoreError.invalidGroup(_:), v10);
    sub_100051EE4(&qword_100085F00, &type metadata accessor for ListKeysDictionaryResponse, &protocol conformance descriptor for ListKeysDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100042414()
{

  return (_swift_task_switch)(sub_100065920, 0, 0);
}

uint64_t sub_100042510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000425D4, 0, 0);
}

uint64_t sub_1000425D4()
{
  v1 = v0[5];
  type metadata accessor for GetKeyTypeRequest();
  sub_100051EE4(&qword_100085EE0, &type metadata accessor for GetKeyTypeRequest, &protocol conformance descriptor for GetKeyTypeRequest);

  v2 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v2, v3, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1000427E0;
    v5 = v0[3];
    v6 = v0[2];

    return sub_100035408(v6, v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    type metadata accessor for GetKeyTypeResponse();
    (*(v9 + 104))(v8, enum case for KVDatastoreError.invalidGroup(_:), v10);
    sub_100051EE4(&qword_100085EE8, &type metadata accessor for GetKeyTypeResponse, &protocol conformance descriptor for GetKeyTypeResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1000427E0()
{

  return (_swift_task_switch)(sub_1000428DC, 0, 0);
}

uint64_t sub_1000428DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100042A08, 0, 0);
}

uint64_t sub_100042A08()
{
  v1 = v0[5];
  type metadata accessor for GetKeyExpirationRequest();
  sub_100051EE4(&qword_100085EC0, &type metadata accessor for GetKeyExpirationRequest, &protocol conformance descriptor for GetKeyExpirationRequest);

  v2 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v2, v3, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_100042414;
    v5 = v0[3];
    v6 = v0[2];

    return sub_100035CFC(v6, v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    type metadata accessor for GetKeyExpirationResponse();
    (*(v9 + 104))(v8, enum case for KVDatastoreError.invalidGroup(_:), v10);
    sub_100051EE4(&qword_100085EC8, &type metadata accessor for GetKeyExpirationResponse, &protocol conformance descriptor for GetKeyExpirationResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100042C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100042CD8, 0, 0);
}

uint64_t sub_100042CD8()
{
  v1 = v0[5];
  type metadata accessor for GetKeyDictionaryRequest();
  sub_100051EE4(&qword_100085EA8, &type metadata accessor for GetKeyDictionaryRequest, &protocol conformance descriptor for GetKeyDictionaryRequest);

  v2 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v2, v3, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_100042414;
    v5 = v0[3];
    v6 = v0[2];

    return sub_1000374CC(v6, v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    type metadata accessor for GetKeyDictionaryResponse();
    (*(v9 + 104))(v8, enum case for KVDatastoreError.invalidGroup(_:), v10);
    sub_100051EE4(&qword_100085EB0, &type metadata accessor for GetKeyDictionaryResponse, &protocol conformance descriptor for GetKeyDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100042EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100042FA8, 0, 0);
}

uint64_t sub_100042FA8()
{
  v1 = v0[5];
  type metadata accessor for ListLengthDictionaryRequest();
  sub_100051EE4(&qword_100085E98, &type metadata accessor for ListLengthDictionaryRequest, &protocol conformance descriptor for ListLengthDictionaryRequest);

  v2 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v2, v3, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_100042414;
    v5 = v0[3];
    v6 = v0[2];

    return sub_10003843C(v6, v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    type metadata accessor for ListLengthDictionaryResponse();
    (*(v9 + 104))(v8, enum case for KVDatastoreError.invalidGroup(_:), v10);
    sub_100051EE4(&qword_100085EA0, &type metadata accessor for ListLengthDictionaryResponse, &protocol conformance descriptor for ListLengthDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1000431B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100043278, 0, 0);
}

uint64_t sub_100043278()
{
  v1 = v0[5];
  type metadata accessor for ListIndexDictionaryRequest();
  sub_100051EE4(&qword_100085E80, &type metadata accessor for ListIndexDictionaryRequest, &protocol conformance descriptor for ListIndexDictionaryRequest);

  v2 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v2, v3, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_100042414;
    v5 = v0[3];
    v6 = v0[2];

    return sub_100038B30(v6, v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    type metadata accessor for ListIndexDictionaryResponse();
    (*(v9 + 104))(v8, enum case for KVDatastoreError.invalidGroup(_:), v10);
    sub_100051EE4(&unk_100085E88, &type metadata accessor for ListIndexDictionaryResponse, &protocol conformance descriptor for ListIndexDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100043484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100043548, 0, 0);
}

uint64_t sub_100043548()
{
  v1 = v0[5];
  type metadata accessor for ListGetDictionaryRequest();
  sub_100051EE4(&qword_100085E70, &type metadata accessor for ListGetDictionaryRequest, &protocol conformance descriptor for ListGetDictionaryRequest);

  v2 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v2, v3, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_100042414;
    v5 = v0[3];
    v6 = v0[2];

    return sub_100039430(v6, v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    type metadata accessor for ListGetDictionaryResponse();
    (*(v9 + 104))(v8, enum case for KVDatastoreError.invalidGroup(_:), v10);
    sub_100051EE4(&qword_100085E78, &type metadata accessor for ListGetDictionaryResponse, &protocol conformance descriptor for ListGetDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100043754(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100043800;

  return sub_1000371D0(a1, a2);
}

uint64_t sub_100043800()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000438F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000439B8, 0, 0);
}

uint64_t sub_1000439B8()
{
  v1 = v0[5];
  type metadata accessor for SetKeyDictionaryRequest();
  sub_100051EE4(&qword_100085F40, &type metadata accessor for SetKeyDictionaryRequest, &protocol conformance descriptor for SetKeyDictionaryRequest);

  v2 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v2, v3, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_100042414;
    v5 = v0[3];
    v6 = v0[2];

    return sub_100037D30(v6, v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    type metadata accessor for SetKeyDictionaryResponse();
    (*(v9 + 104))(v8, enum case for KVDatastoreError.invalidGroup(_:), v10);
    sub_100051EE4(&qword_100085F48, &type metadata accessor for SetKeyDictionaryResponse, &protocol conformance descriptor for SetKeyDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100043BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100043C88, 0, 0);
}

uint64_t sub_100043C88()
{
  v1 = v0[5];
  type metadata accessor for ListPushDictionaryRequest();
  sub_100051EE4(&qword_100085F18, &type metadata accessor for ListPushDictionaryRequest, &protocol conformance descriptor for ListPushDictionaryRequest);

  v2 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v2, v3, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_100042414;
    v5 = v0[3];
    v6 = v0[2];

    return sub_100039B20(v6, v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    type metadata accessor for ListPushDictionaryResponse();
    (*(v9 + 104))(v8, enum case for KVDatastoreError.invalidGroup(_:), v10);
    sub_100051EE4(&qword_100085F20, &type metadata accessor for ListPushDictionaryResponse, &protocol conformance descriptor for ListPushDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100043E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100043F58, 0, 0);
}

uint64_t sub_100043F58()
{
  v1 = v0[5];
  type metadata accessor for ListPopDictionaryRequest();
  sub_100051EE4(&qword_100085F08, &type metadata accessor for ListPopDictionaryRequest, &protocol conformance descriptor for ListPopDictionaryRequest);

  v2 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v2, v3, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_100042414;
    v5 = v0[3];
    v6 = v0[2];

    return sub_10003A6B0(v6, v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    type metadata accessor for ListPopDictionaryResponse();
    (*(v9 + 104))(v8, enum case for KVDatastoreError.invalidGroup(_:), v10);
    sub_100051EE4(&qword_100085F10, &type metadata accessor for ListPopDictionaryResponse, &protocol conformance descriptor for ListPopDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100044164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100044228, 0, 0);
}

uint64_t sub_100044228()
{
  v1 = v0[5];
  type metadata accessor for ClearDictionaryRequest();
  sub_100051EE4(&qword_100085F50, &type metadata accessor for ClearDictionaryRequest, &protocol conformance descriptor for ClearDictionaryRequest);

  v2 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v2, v3, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_100042414;
    v5 = v0[3];
    v6 = v0[2];

    return sub_1000367F8(v6, v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    type metadata accessor for ClearDictionaryResponse();
    (*(v9 + 104))(v8, enum case for KVDatastoreError.invalidGroup(_:), v10);
    sub_100051EE4(&qword_100085F58, &type metadata accessor for ClearDictionaryResponse, &protocol conformance descriptor for ClearDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100044434()
{
  v0 = type metadata accessor for StreamServiceInfo();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000A044();
  v2 = sub_100029B48(v1);

  v3 = sub_10000A3D4();
  v4 = sub_100029B48(v3);

  v5 = sub_10004461C(v2);

  if (v5[2])
  {
    sub_1000089AC(&qword_1000857F8, &qword_1000695A0);
    v6 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v6 = &_swiftEmptyDictionarySingleton;
  }

  v12[0] = v6;

  sub_10004E82C(v7, 1, v12);

  v8 = sub_10004461C(v4);

  if (v8[2])
  {
    sub_1000089AC(&qword_1000857F8, &qword_1000695A0);
    v9 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v9 = &_swiftEmptyDictionarySingleton;
  }

  v12[0] = v9;

  sub_10004E82C(v10, 1, v12);

  StreamServiceInfo.init(publishers:subscribers:)();
  return StreamListResponse.init(info:)();
}

unint64_t *sub_10004461C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024A04(0, v1, 0);
    v3 = a1 + 48;
    do
    {

      sub_1000089AC(&qword_1000859F0, &unk_100069630);
      sub_1000089AC(&qword_1000859E0, &qword_100069290);
      swift_dynamicCast();
      v4 = v10;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_100024A04((v5 > 1), v6 + 1, 1);
        v4 = v10;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[3 * v6];
      *(v7 + 4) = v9;
      *(v7 + 40) = v4;
      v3 += 24;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10004476C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1000089AC(&qword_100085F90, &qword_100069658);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  sub_10003AD98(a1, a2, a3, &v15 - v9);
  v11 = type metadata accessor for EmptyMessage();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v11) != 1)
  {
    return (*(v12 + 32))(a4, v10, v11);
  }

  EmptyMessage.init()();
  result = (v13)(v10, 1, v11);
  if (result != 1)
  {
    return sub_100009C94(v10, &qword_100085F90, &qword_100069658);
  }

  return result;
}

uint64_t sub_1000448D0(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(void))
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000098DC(v12, qword_100087610);
    (*(v8 + 16))(v10, a2, v7);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = a3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v26 = a4;
      v27 = v17;
      v18 = v17;
      *v16 = 136315138;
      v19 = UUID.uuidString.getter();
      v25 = a2;
      v21 = v20;
      (*(v8 + 8))(v10, v7);
      v22 = sub_100008A0C(v19, v21, &v27);
      a2 = v25;

      *(v16 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, v24, v16, 0xCu);
      sub_100009914(v18);
      a4 = v26;
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    a4(a2);
  }

  return result;
}

uint64_t sub_100044B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v34 = a4;
  v7 = type metadata accessor for StreamError();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StreamSubscribeRequest();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051EE4(&unk_100085FC0, &type metadata accessor for StreamSubscribeRequest, &protocol conformance descriptor for StreamSubscribeRequest);
  v14 = dispatch thunk of StreamMessageWithTopic.topic.getter();
  v16 = sub_1000292B0(v14, v15, a2);

  if (v16 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, a2))
  {
    v17 = StreamSubscribeRequest.topic.getter();
    v19 = sub_10000BFE0(a3, v17, v18);

    v21 = UUID.uuidString.getter();

    return StreamSubscribeResponse.init(result:subscriberId:)((v19 & 1) != 0, v21, v20);
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000098DC(v22, qword_100087610);
    (*(v11 + 16))(v13, a1, v10);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136315138;
      v27 = StreamSubscribeRequest.topic.getter();
      v29 = v28;
      (*(v11 + 8))(v13, v10);
      v30 = sub_100008A0C(v27, v29, &v35);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Dropping request for topic %s because it is not allowed.", v25, 0xCu);
      sub_100009914(v26);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    (*(v32 + 104))(v9, enum case for StreamError.invalidTopic(_:), v33);
    return StreamSubscribeResponse.init(error:)();
  }
}

uint64_t sub_100044F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = type metadata accessor for StreamError();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StreamUnsubscribeRequest();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051EE4(&qword_100085FB8, &type metadata accessor for StreamUnsubscribeRequest, &protocol conformance descriptor for StreamUnsubscribeRequest);
  v14 = dispatch thunk of StreamMessageWithTopic.topic.getter();
  v16 = sub_1000292B0(v14, v15, a2);

  if (v16 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, a2))
  {
    v17 = StreamUnsubscribeRequest.topic.getter();
    v19 = sub_10000C460(a3, v17, v18);

    return StreamUnsubscribeResponse.init(result:)(v19);
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000098DC(v20, qword_100087610);
    (*(v11 + 16))(v13, a1, v10);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;
      v25 = StreamUnsubscribeRequest.topic.getter();
      v27 = v26;
      (*(v11 + 8))(v13, v10);
      v28 = sub_100008A0C(v25, v27, &v33);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Dropping request for topic %s because it is not allowed.", v23, 0xCu);
      sub_100009914(v24);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    (*(v30 + 104))(v9, enum case for StreamError.invalidTopic(_:), v31);
    return StreamUnsubscribeResponse.init(error:)();
  }
}

void sub_100045330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v421 = a8;
  v420 = a7;
  v419 = a6;
  v418 = a5;
  v417 = a4;
  v416 = a3;
  v415 = a2;
  v414 = a1;
  v362 = type metadata accessor for URL.DirectoryHint();
  v465 = *(v362 - 8);
  __chkstk_darwin(v362);
  v361 = &v341[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000089AC(&qword_100085948, &qword_100069258);
  __chkstk_darwin(v11 - 8);
  v360 = &v341[-v12];
  v371 = type metadata accessor for URL();
  v468 = *(v371 - 8);
  v13 = __chkstk_darwin(v371);
  v348 = &v341[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v359 = &v341[-v16];
  __chkstk_darwin(v15);
  v372 = &v341[-v17];
  v423 = type metadata accessor for MLHostTask();
  v467 = *(v423 - 8);
  __chkstk_darwin(v423);
  v385 = &v341[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v388 = type metadata accessor for TaskValidationError();
  v466 = *(v388 - 8);
  __chkstk_darwin(v388);
  v410 = &v341[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v341[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v21);
  v409 = &v341[-v25];
  __chkstk_darwin(v24);
  v433 = &v341[-v26];
  v27 = sub_1000089AC(&unk_100085CE8, &qword_100069498);
  v28 = __chkstk_darwin(v27 - 8);
  v349 = &v341[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v382 = &v341[-v30];
  v383 = type metadata accessor for RepeatingTaskRequest();
  v458 = *(v383 - 8);
  __chkstk_darwin(v383);
  v370 = &v341[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_1000089AC(&qword_1000859A0, &qword_100069268);
  v33 = __chkstk_darwin(v32 - 8);
  v379 = &v341[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v392 = &v341[-v35];
  v424 = type metadata accessor for TaskRequest();
  v36 = *(v424 - 8);
  __chkstk_darwin(v424);
  v393 = &v341[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v440 = type metadata accessor for TaskCategory();
  v456 = *(v440 - 8);
  v38 = __chkstk_darwin(v440);
  v439 = &v341[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v38);
  v438 = &v341[-v40];
  v443 = type metadata accessor for TaskDefinition();
  v457 = *(v443 - 8);
  v41 = __chkstk_darwin(v443);
  v408 = &v341[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v41);
  v469 = &v341[-v43];
  v44 = sub_1000089AC(&unk_1000859C0, &qword_1000694A0);
  __chkstk_darwin(v44 - 8);
  v448 = &v341[-v45];
  v464 = type metadata accessor for DynamicTaskSource();
  v459 = *(v464 - 8);
  __chkstk_darwin(v464);
  v447 = &v341[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v463 = type metadata accessor for TaskStatus();
  v47 = *(v463 - 8);
  __chkstk_darwin(v463);
  v446 = &v341[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_1000089AC(&qword_100085CF8, &qword_1000694A8);
  __chkstk_darwin(v49 - 8);
  v413 = &v341[-v50];
  v51 = sub_1000089AC(&unk_100085D00, &unk_1000694B0);
  __chkstk_darwin(v51 - 8);
  v412 = &v341[-v52];
  v445 = type metadata accessor for TaskMetadata();
  v455 = *(v445 - 8);
  __chkstk_darwin(v445);
  v462 = &v341[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v432 = type metadata accessor for PushMetadata();
  v454 = *(v432 - 8);
  __chkstk_darwin(v432);
  v431 = &v341[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v422 = type metadata accessor for Date();
  v55 = *(v422 - 8);
  __chkstk_darwin(v422);
  v437 = &v341[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v450 = sub_1000089AC(&qword_1000854E8, &qword_100068F70);
  v57 = __chkstk_darwin(v450);
  v358 = &v341[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = __chkstk_darwin(v57);
  v387 = &v341[-v60];
  v61 = __chkstk_darwin(v59);
  v380 = &v341[-v62];
  v63 = __chkstk_darwin(v61);
  v347 = &v341[-v64];
  v65 = __chkstk_darwin(v63);
  v357 = &v341[-v66];
  v67 = __chkstk_darwin(v65);
  v356 = &v341[-v68];
  v69 = __chkstk_darwin(v67);
  v411 = &v341[-v70];
  v71 = __chkstk_darwin(v69);
  v436 = &v341[-v72];
  v73 = __chkstk_darwin(v71);
  v435 = &v341[-v74];
  __chkstk_darwin(v73);
  v76 = &v341[-v75];
  v77 = sub_1000089AC(&qword_1000854E0, &qword_1000694C0);
  v78 = *(v77 - 8);
  __chkstk_darwin(v77);
  v434 = &v341[-v79];
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  v81 = sub_1000098DC(v80, qword_100087610);

  v470 = v81;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.info.getter();
  v84 = os_log_type_enabled(v82, v83);
  v381 = v23;
  v471 = v76;
  if (v84)
  {
    v85 = swift_slowAlloc();
    *v85 = 134217984;
    *(v85 + 4) = *(a9 + 16);

    _os_log_impl(&_mh_execute_header, v82, v83, "Received push notification with %ld messages.", v85, 0xCu);
    v76 = v471;
  }

  else
  {
  }

  v87 = v422;
  v88 = *(a9 + 16);
  if (v88)
  {
    v449 = 0;
    v89 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v430 = *(v77 + 48);
    v90 = a9 + v89;
    v429 = (v55 + 8);
    v407 = (v55 + 16);
    v461 = (v47 + 104);
    v406 = OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry;
    v460 = (v459 + 13);
    ++v459;
    v444 = (v47 + 8);
    v428 = *(v78 + 72);
    v405 = (v456 + 13);
    v404 = (v456 + 1);
    v403 = enum case for TaskStatus.taskCreated(_:);
    v391 = (v36 + 48);
    v378 = (v36 + 32);
    v377 = (v458 + 48);
    v368 = (v458 + 32);
    v365 = (v458 + 8);
    *&v86 = 134218242;
    v402 = v86;
    *&v86 = 136315138;
    v390 = v86;
    *&v86 = 136315394;
    v384 = v86;
    v346 = (v458 + 16);
    v345 = (v458 + 56);
    LODWORD(v458) = enum case for DynamicTaskSource.push(_:);
    v401 = enum case for TaskStatus.taskReceived(_:);
    v375 = (v36 + 16);
    v374 = (v36 + 56);
    v373 = (v36 + 8);
    v427 = (v457 + 2);
    v425 = (v457 + 1);
    v400 = enum case for TaskCategory.backgroundTask(_:);
    v386 = (v466 + 32);
    v394 = enum case for TaskStatus.taskFailedToRegister(_:);
    v355 = enum case for TaskStatus.taskSuccessfullyRegistered(_:);
    v354 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v344 = enum case for TaskStatus.taskParametersStored(_:);
    v350 = enum case for TaskStatus.taskParametersFailedToStore(_:);
    v91 = &qword_1000854E8;
    v399 = (v454 + 16);
    v398 = (v454 + 56);
    v457 = (v455 + 16);
    v456 = (v455 + 56);
    v397 = (v467 + 56);
    v426 = a10;
    v396 = (v455 + 8);
    v395 = (v454 + 8);
    v376 = (v467 + 48);
    v366 = (v467 + 32);
    v353 = (v468 + 56);
    v352 = (v465 + 104);
    v351 = (v465 + 8);
    v369 = (v468 + 8);
    v343 = (v468 + 16);
    v367 = (v467 + 8);
    do
    {
      v466 = v88;
      v465 = v90;
      v94 = v434;
      sub_100009C2C(v90, v434, &qword_1000854E0, &qword_1000694C0);
      v467 = *&v94[v430];
      sub_100009CF4(v94, v76, v91, &qword_100068F70);
      v95 = v435;
      sub_100009C2C(v76, v435, v91, &qword_100068F70);
      v96 = v436;
      sub_100009C2C(v76, v436, v91, &qword_100068F70);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v474 = v100;
        *v99 = v402;
        v101 = *v95;
        sub_100009C94(v95, v91, &qword_100068F70);
        *(v99 + 4) = v101;
        *(v99 + 12) = 2080;
        v102 = v450;
        v103 = TaskDefinition.name.getter();
        v104 = v96;
        v106 = v105;
        sub_100009C94(v104, v91, &qword_100068F70);
        v107 = sub_100008A0C(v103, v106, &v474);

        *(v99 + 14) = v107;
        _os_log_impl(&_mh_execute_header, v97, v98, "Received new push message: version: %ld, task: %s", v99, 0x16u);
        sub_100009914(v100);

        v108 = v437;
      }

      else
      {
        sub_100009C94(v95, v91, &qword_100068F70);

        sub_100009C94(v96, v91, &qword_100068F70);
        v108 = v437;
        v102 = v450;
      }

      v76 = v471;
      v109 = &v471[*(v102 + 44)];
      static Date.now.getter();
      v110 = static Date.> infix(_:_:)();
      (*v429)(v108, v87);
      if (v110)
      {

        v111 = v411;
        sub_100009C2C(v76, v411, v91, &qword_100068F70);
        v112 = v91;
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v474 = v116;
          *v115 = v390;
          v117 = TaskDefinition.name.getter();
          v119 = v118;
          sub_100009C94(v111, v112, &qword_100068F70);
          v120 = sub_100008A0C(v117, v119, &v474);

          *(v115 + 4) = v120;
          _os_log_impl(&_mh_execute_header, v113, v114, "Push task cannot be registered before created, task name: %s.", v115, 0xCu);
          sub_100009914(v116);
          v76 = v471;
        }

        else
        {

          sub_100009C94(v111, v112, &qword_100068F70);
        }

        sub_100009C94(v76, v112, &qword_100068F70);
        v92 = v466;
        v93 = v465;
        v91 = v112;
        goto LABEL_10;
      }

      (*v407)(v108, v109, v87);

      v121 = v431;
      PushMetadata.init(topic:channelID:pushType:pushPriority:creationDate:)();
      v122 = v412;
      v123 = v432;
      (*v399)(v412, v121, v432);
      (*v398)(v122, 0, 1, v123);
      v124 = type metadata accessor for PullMetadata();
      (*(*(v124 - 8) + 56))(v413, 1, 1, v124);
      v125 = v462;
      TaskMetadata.init(pushMetadata:pullMetadata:)();
      v455 = *(v426 + v406);
      v468 = &v76[*(v102 + 48)];
      v126 = TaskDefinition.name.getter();
      v128 = v127;
      v451 = *v461;
      v129 = v446;
      v130 = v463;
      v451(v446, v403, v463);
      v452 = *v460;
      v131 = v447;
      v132 = v464;
      v452(v447, v458, v464);
      v453 = *v457;
      v133 = v448;
      v134 = v445;
      v453(v448, v125, v445);
      v454 = *v456;
      (v454)(v133, 0, 1, v134);
      sub_10001CCB4(v126, v128, v129, v131, v133);

      sub_100009C94(v133, &unk_1000859C0, &qword_1000694A0);
      v135 = *v459;
      (*v459)(v131, v132);
      v136 = *v444;
      (*v444)(v129, v130);
      v137 = TaskDefinition.name.getter();
      v139 = v138;
      v451(v129, v401, v130);
      v140 = v464;
      v452(v131, v458, v464);
      v453(v133, v462, v134);
      v141 = v134;
      v142 = v443;
      (v454)(v133, 0, 1, v141);
      sub_10001CCB4(v137, v139, v129, v131, v133);

      sub_100009C94(v133, &unk_1000859C0, &qword_1000694A0);
      v441 = v135;
      v135(v131, v140);
      v442 = v136;
      v136(v129, v463);
      v143 = *v427;
      (*v427)(v469, v468, v142);
      swift_beginAccess();
      TaskDefinition.taskCategory.getter();
      (*v405)(v439, v400, v440);
      sub_100051EE4(&qword_100085920, &type metadata accessor for TaskCategory, &protocol conformance descriptor for TaskCategory);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v474 == v472 && v475 == v473)
      {
        v144 = *v404;
        v145 = v440;
        (*v404)(v439, v440);
        v144(v438, v145);

        v146 = v433;
      }

      else
      {
        v147 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v148 = *v404;
        v149 = v440;
        (*v404)(v439, v440);
        v148(v438, v149);

        v146 = v433;
        if ((v147 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      swift_beginAccess();
      v150 = v392;
      TaskDefinition.taskRequest.getter();
      v151 = v424;
      if ((*v391)(v150, 1, v424) == 1)
      {
        sub_100009C94(v150, &qword_1000859A0, &qword_100069268);
        swift_endAccess();
      }

      else
      {
        (*v378)(v393, v150, v151);
        swift_endAccess();
        v152 = v382;
        TaskRequest.repeatingTask.getter();
        v153 = v383;
        if ((*v377)(v152, 1, v383) == 1)
        {
          sub_100009C94(v152, &unk_100085CE8, &qword_100069498);
        }

        else
        {
          v154 = v370;
          (*v368)(v370, v152, v153);
          RepeatingTaskRequest.interval.getter();
          if (v155 > 0.0 && (RepeatingTaskRequest.minDurationBetweenInstances.getter(), (v156 & 1) != 0))
          {
            RepeatingTaskRequest.interval.getter();
            v158 = v157 * 0.2;
            if (v158 > 300.0)
            {
              v159 = v158;
            }

            else
            {
              v159 = 300.0;
            }

            RepeatingTaskRequest.interval.getter();
            v161 = v160 * 0.8;
            if (v161 > 1200.0)
            {
              v162 = v161;
            }

            else
            {
              v162 = 1200.0;
            }

            if (v159 > v162)
            {
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
            }

            if (COERCE__INT64(fabs(v162 - v159)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_88;
            }

            v163 = sub_100008FB4(0x20000000000001uLL);
            v164 = v159 + (v162 - v159) * vcvtd_n_f64_u64(v163, 0x35uLL);
            if (v163 == 0x20000000000000)
            {
              v165 = v162;
            }

            else
            {
              v165 = v164;
            }

            v166 = Logger.logObject.getter();
            v167 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v166, v167))
            {
              v168 = swift_slowAlloc();
              v169 = swift_slowAlloc();
              v474 = v169;
              *v168 = v384;
              v170 = TaskDefinition.name.getter();
              v172 = sub_100008A0C(v170, v171, &v474);

              *(v168 + 4) = v172;
              v142 = v443;
              *(v168 + 12) = 2048;
              *(v168 + 14) = v165;
              _os_log_impl(&_mh_execute_header, v166, v167, "Updating minDurationBetweenInstances for push task %s to %f", v168, 0x16u);
              sub_100009914(v169);
            }

            v173 = v370;
            RepeatingTaskRequest.minDurationBetweenInstances.setter();
            v174 = v349;
            v175 = v383;
            (*v346)(v349, v173, v383);
            (*v345)(v174, 0, 1, v175);
            TaskRequest.repeatingTask.setter();
            (*v365)(v173, v175);
          }

          else
          {
            (*v365)(v154, v153);
          }
        }

        v176 = v393;
        TaskRequest.randomInitialDelay.getter();
        v177 = v424;
        if (v178)
        {
          v179 = COERCE_DOUBLE(sub_100048C18());
          if ((v180 & 1) == 0)
          {
            v181 = v179;
            if (v179 > 0.0)
            {
              if ((~*&v179 & 0x7FF0000000000000) == 0)
              {
                goto LABEL_87;
              }

              v182 = sub_100008FB4(0x20000000000001uLL);
              v183 = vcvtd_n_f64_u64(v182, 0x35uLL) * v181 + 0.0;
              if (v182 != 0x20000000000000)
              {
                v181 = v183;
              }

              v184 = Logger.logObject.getter();
              v185 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v184, v185))
              {
                v186 = swift_slowAlloc();
                v187 = swift_slowAlloc();
                v474 = v187;
                *v186 = v384;
                v188 = TaskDefinition.name.getter();
                v190 = sub_100008A0C(v188, v189, &v474);

                *(v186 + 4) = v190;
                v142 = v443;
                *(v186 + 12) = 2048;
                *(v186 + 14) = v181;
                _os_log_impl(&_mh_execute_header, v184, v185, "Updating randomInitialDelay for push task %s to %f", v186, 0x16u);
                sub_100009914(v187);
              }

              v177 = v424;
              v176 = v393;
              TaskRequest.randomInitialDelay.setter();
            }
          }
        }

        v191 = v379;
        (*v375)(v379, v176, v177);
        (*v374)(v191, 0, 1, v177);
        swift_beginAccess();
        TaskDefinition.taskRequest.setter();
        swift_endAccess();
        (*v373)(v176, v177);
      }

LABEL_52:
      v192 = v423;
      (*v397)(v146, 1, 1, v423);
      v193 = v408;
      v143(v408, v469, v142);
      v194 = v146;
      v195 = v409;
      v196 = v449;
      v197 = v410;
      sub_100034304(v193, v410, v409);
      if (v196)
      {
        v449 = *v425;
        v449(v193, v142);

        sub_100051EE4(&unk_100085990, &type metadata accessor for TaskValidationError, &protocol conformance descriptor for TaskValidationError);
        v198 = v388;
        swift_allocError();
        (*v386)(v199, v197, v198);
        v200 = v387;
        sub_100009C2C(v471, v387, &qword_1000854E8, &qword_100068F70);
        swift_errorRetain();
        swift_errorRetain();
        v201 = Logger.logObject.getter();
        v202 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v201, v202))
        {
          v203 = swift_slowAlloc();
          v204 = swift_slowAlloc();
          v205 = swift_slowAlloc();
          v474 = v205;
          *v203 = v384;
          v206 = TaskDefinition.name.getter();
          v208 = v207;
          sub_100009C94(v200, &qword_1000854E8, &qword_100068F70);
          v209 = sub_100008A0C(v206, v208, &v474);

          *(v203 + 4) = v209;
          *(v203 + 12) = 2112;
          swift_errorRetain();
          v210 = _swift_stdlib_bridgeErrorToNSError();
          *(v203 + 14) = v210;
          *v204 = v210;
          _os_log_impl(&_mh_execute_header, v201, v202, "Failed to register push task %s. Error: %@", v203, 0x16u);
          sub_100009C94(v204, &qword_100085970, &qword_100068F48);

          sub_100009914(v205);
        }

        else
        {

          sub_100009C94(v200, &qword_1000854E8, &qword_100068F70);
        }

        v216 = TaskDefinition.name.getter();
        v218 = v217;
        v219 = v446;
        v220 = v463;
        v451(v446, v394, v463);
        v221 = v447;
        v222 = v464;
        v452(v447, v458, v464);
        v223 = v448;
        v224 = v462;
        v225 = v445;
        v453(v448, v462, v445);
        (v454)(v223, 0, 1, v225);
        sub_10001CCB4(v216, v218, v219, v221, v223);

        sub_100009C94(v223, &unk_1000859C0, &qword_1000694A0);
        v441(v221, v222);
        v442(v219, v220);
        sub_100009C94(v433, &qword_100085940, &unk_1000693D0);
        (*v396)(v224, v225);
        (*v395)(v431, v432);
        v76 = v471;
        sub_100009C94(v471, &qword_1000854E8, &qword_100068F70);

        v449(v469, v443);
        v449 = 0;
        v87 = v422;
        v92 = v466;
        v93 = v465;
        v91 = &qword_1000854E8;
        goto LABEL_10;
      }

      v449 = 0;
      v389 = *v425;
      v389(v193, v142);
      sub_100009C94(v194, &qword_100085940, &unk_1000693D0);
      sub_100009CF4(v195, v194, &qword_100085940, &unk_1000693D0);
      v211 = v381;
      sub_100009C2C(v194, v381, &qword_100085940, &unk_1000693D0);
      v212 = (*v376)(v211, 1, v192);
      v213 = v385;
      if (v212 == 1)
      {

        sub_100009C94(v211, &qword_100085940, &unk_1000693D0);
        v214 = v380;
        v215 = v471;
LABEL_63:
        sub_100009C2C(v215, v214, &qword_1000854E8, &qword_100068F70);
        v238 = Logger.logObject.getter();
        v239 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v238, v239))
        {
          v240 = swift_slowAlloc();
          v241 = swift_slowAlloc();
          v474 = v241;
          *v240 = v390;
          v242 = TaskDefinition.name.getter();
          v244 = v243;
          sub_100009C94(v214, &qword_1000854E8, &qword_100068F70);
          v245 = sub_100008A0C(v242, v244, &v474);

          *(v240 + 4) = v245;
          _os_log_impl(&_mh_execute_header, v238, v239, "Failed to fetch task folder for pushed task %s. Skipping task.", v240, 0xCu);
          sub_100009914(v241);
        }

        else
        {

          sub_100009C94(v214, &qword_1000854E8, &qword_100068F70);
        }

        v246 = TaskDefinition.name.getter();
        v248 = v247;
        v249 = v446;
        v250 = v463;
        v451(v446, v394, v463);
        v251 = v447;
        v252 = v464;
        v452(v447, v458, v464);
        v253 = v448;
        v254 = v462;
        v255 = v445;
        v453(v448, v462, v445);
        (v454)(v253, 0, 1, v255);
        sub_10001CCB4(v246, v248, v249, v251, v253);

        sub_100009C94(v253, &unk_1000859C0, &qword_1000694A0);
        v441(v251, v252);
        v442(v249, v250);
        goto LABEL_84;
      }

      (*v366)(v385, v211, v192);
      v227 = MLHostTask.taskFolder.getter();
      v214 = v380;
      if (!v226)
      {
        v237 = v471;
        (*v367)(v213, v192);

        v215 = v237;
        goto LABEL_63;
      }

      v363 = v226;
      v364 = v227;
      v228 = v356;
      sub_100009C2C(v471, v356, &qword_1000854E8, &qword_100068F70);
      v229 = Logger.logObject.getter();
      v230 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v229, v230))
      {
        v231 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        v474 = v232;
        *v231 = v390;
        v233 = TaskDefinition.name.getter();
        v235 = v234;
        sub_100009C94(v228, &qword_1000854E8, &qword_100068F70);
        v236 = sub_100008A0C(v233, v235, &v474);

        *(v231 + 4) = v236;
        _os_log_impl(&_mh_execute_header, v229, v230, "Task %s is successfully registered via push message.", v231, 0xCu);
        sub_100009914(v232);
      }

      else
      {

        sub_100009C94(v228, &qword_1000854E8, &qword_100068F70);
      }

      v256 = v371;
      v257 = TaskDefinition.name.getter();
      v259 = v258;
      v260 = v446;
      v261 = v463;
      v451(v446, v355, v463);
      v262 = v447;
      v263 = v464;
      v452(v447, v458, v464);
      v264 = v448;
      v265 = v445;
      v453(v448, v462, v445);
      (v454)(v264, 0, 1, v265);
      sub_10001CCB4(v257, v259, v260, v262, v264);

      sub_100009C94(v264, &unk_1000859C0, &qword_1000694A0);
      v441(v262, v263);
      v442(v260, v261);
      (*v353)(v360, 1, 1, v256);
      v266 = *v352;
      v267 = v361;
      v268 = v354;
      v269 = v362;
      (*v352)(v361, v354, v362);
      v270 = v359;
      URL.init(filePath:directoryHint:relativeTo:)();
      v474 = 0x6574656D61726170;
      v475 = 0xEF6E6F736A2E7372;
      v266(v267, v268, v269);
      sub_100027A04();
      URL.appending<A>(path:directoryHint:)();
      (*v351)(v267, v269);
      v271 = *v369;
      (*v369)(v270, v256);
      v272 = v471;
      v273 = v357;
      sub_100009C2C(v471, v357, &qword_1000854E8, &qword_100068F70);

      v274 = Logger.logObject.getter();
      v275 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v274, v275))
      {
        v276 = swift_slowAlloc();
        v474 = swift_slowAlloc();
        *v276 = v384;
        v277 = v275;
        v278 = TaskDefinition.name.getter();
        v279 = v273;
        v280 = v271;
        v282 = v281;
        sub_100009C94(v279, &qword_1000854E8, &qword_100068F70);
        v283 = sub_100008A0C(v278, v282, &v474);

        *(v276 + 4) = v283;
        *(v276 + 12) = 2080;
        v284 = Dictionary.description.getter();
        v286 = sub_100008A0C(v284, v285, &v474);

        *(v276 + 14) = v286;
        v271 = v280;
        _os_log_impl(&_mh_execute_header, v274, v277, "Task %s parameters %s", v276, 0x16u);
        swift_arrayDestroy();

        v272 = v471;
      }

      else
      {

        sub_100009C94(v273, &qword_1000854E8, &qword_100068F70);
      }

      v287 = v358;
      v288 = objc_opt_self();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v474 = 0;
      v290 = [v288 dataWithJSONObject:isa options:1 error:&v474];

      v291 = v474;
      v364 = v271;
      if (v290)
      {
        v292 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v294 = v293;

        v295 = v372;
        v296 = v449;
        Data.write(to:options:)();
        if (!v296)
        {
          v363 = v292;
          v467 = v294;
          v449 = 0;
          v318 = v347;
          sub_100009C2C(v272, v347, &qword_1000854E8, &qword_100068F70);
          v319 = v348;
          v320 = v371;
          (*v343)(v348, v295, v371);
          v321 = Logger.logObject.getter();
          v322 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v321, v322))
          {
            v323 = swift_slowAlloc();
            v474 = swift_slowAlloc();
            *v323 = v384;
            v342 = v322;
            v324 = TaskDefinition.name.getter();
            v325 = v321;
            v326 = v320;
            v328 = v327;
            sub_100009C94(v318, &qword_1000854E8, &qword_100068F70);
            v329 = sub_100008A0C(v324, v328, &v474);

            *(v323 + 4) = v329;
            *(v323 + 12) = 2080;
            sub_100051EE4(&qword_100085D10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v330 = dispatch thunk of CustomStringConvertible.description.getter();
            v332 = v331;
            v271(v319, v326);
            v333 = sub_100008A0C(v330, v332, &v474);

            *(v323 + 14) = v333;
            _os_log_impl(&_mh_execute_header, v325, v342, "Task %s parameters are stored at: %s", v323, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            v271(v319, v320);
            sub_100009C94(v318, &qword_1000854E8, &qword_100068F70);
          }

          v334 = v363;
          v335 = TaskDefinition.name.getter();
          v337 = v336;
          v311 = v446;
          v312 = v463;
          v451(v446, v344, v463);
          v338 = v447;
          v339 = v464;
          v452(v447, v458, v464);
          v340 = v448;
          v254 = v462;
          v255 = v445;
          v453(v448, v462, v445);
          (v454)(v340, 0, 1, v255);
          sub_10001CCB4(v335, v337, v311, v338, v340);

          sub_1000099D4(v334, v467);
          sub_100009C94(v340, &unk_1000859C0, &qword_1000694A0);
          v316 = v338;
          v317 = v339;
          goto LABEL_83;
        }

        sub_1000099D4(v292, v294);
      }

      else
      {
        v297 = v291;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v449 = 0;
      sub_100009C2C(v272, v287, &qword_1000854E8, &qword_100068F70);
      swift_errorRetain();
      v298 = Logger.logObject.getter();
      v299 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v298, v299))
      {
        v300 = swift_slowAlloc();
        v301 = swift_slowAlloc();
        v302 = swift_slowAlloc();
        v474 = v302;
        *v300 = v384;
        v303 = TaskDefinition.name.getter();
        v305 = v304;
        sub_100009C94(v287, &qword_1000854E8, &qword_100068F70);
        v306 = sub_100008A0C(v303, v305, &v474);

        *(v300 + 4) = v306;
        *(v300 + 12) = 2112;
        swift_errorRetain();
        v307 = _swift_stdlib_bridgeErrorToNSError();
        *(v300 + 14) = v307;
        *v301 = v307;
        _os_log_impl(&_mh_execute_header, v298, v299, "Failed at storing parameters for pushed task %s, with error: %@", v300, 0x16u);
        sub_100009C94(v301, &qword_100085970, &qword_100068F48);

        sub_100009914(v302);
      }

      else
      {

        sub_100009C94(v287, &qword_1000854E8, &qword_100068F70);
      }

      v308 = TaskDefinition.name.getter();
      v310 = v309;
      v311 = v446;
      v312 = v463;
      v451(v446, v350, v463);
      v313 = v447;
      v314 = v464;
      v452(v447, v458, v464);
      v315 = v448;
      v254 = v462;
      v255 = v445;
      v453(v448, v462, v445);
      (v454)(v315, 0, 1, v255);
      sub_10001CCB4(v308, v310, v311, v313, v315);

      sub_100009C94(v315, &unk_1000859C0, &qword_1000694A0);
      v316 = v313;
      v317 = v314;
LABEL_83:
      v441(v316, v317);
      v442(v311, v312);
      v364(v372, v371);
      (*v367)(v385, v423);
LABEL_84:
      sub_100009C94(v433, &qword_100085940, &unk_1000693D0);
      (*v396)(v254, v255);
      (*v395)(v431, v432);
      v76 = v471;
      v91 = &qword_1000854E8;
      sub_100009C94(v471, &qword_1000854E8, &qword_100068F70);
      v389(v469, v443);
      v87 = v422;
      v92 = v466;
      v93 = v465;
LABEL_10:
      v90 = v93 + v428;
      v88 = v92 - 1;
    }

    while (v88);
  }
}

uint64_t sub_100048C18()
{
  v0 = sub_1000089AC(&qword_100085D18, &qword_1000694C8);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_1000089AC(&unk_100085CE8, &qword_100069498);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  TaskRequest.repeatingTask.getter();
  v6 = type metadata accessor for RepeatingTaskRequest();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    sub_100009C94(v5, &unk_100085CE8, &qword_100069498);
  }

  else
  {
    RepeatingTaskRequest.interval.getter();
    v8 = v7;
    sub_100009C94(v5, &unk_100085CE8, &qword_100069498);
    if (v8 > 0.0)
    {
      goto LABEL_7;
    }
  }

  TaskRequest.nonRepeatingTask.getter();
  v9 = type metadata accessor for NonRepeatingTaskRequest();
  if (!(*(*(v9 - 8) + 48))(v2, 1, v9))
  {
    NonRepeatingTaskRequest.scheduleAfter.getter();
    v8 = v10;
    sub_100009C94(v2, &qword_100085D18, &qword_1000694C8);
    if (v8 <= 0.0)
    {
      goto LABEL_8;
    }

LABEL_7:
    *&result = v8 * 0.8;
    return result;
  }

  sub_100009C94(v2, &qword_100085D18, &qword_1000694C8);
LABEL_8:
  *&result = 0.0;
  return result;
}

id sub_100048E2C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000098DC(v5, qword_100087610);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100008A0C(0xD00000000000001DLL, 0x8000000100072EE0, v16);
    _os_log_impl(&_mh_execute_header, v6, v7, "Daemon performing %s activity.", v8, 0xCu);
    sub_100009914(v9);
  }

  v16[4] = nullsub_1;
  v16[5] = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000658D0;
  v16[3] = &unk_100083040;
  v10 = _Block_copy(v16);
  [a1 setExpirationHandler:v10];
  _Block_release(v10);
  if (*(a2 + 16) == 1)
  {
    sub_10001802C();
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100008A0C(0xD00000000000001DLL, 0x8000000100072EE0, v16);
    _os_log_impl(&_mh_execute_header, v11, v12, "Daemon completed %s activity.", v13, 0xCu);
    sub_100009914(v14);
  }

  return [a1 setTaskCompleted];
}

void sub_1000490F0(void *a1, char *a2)
{
  v4 = type metadata accessor for CoreAnalyticsEvents();
  v92 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v100 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Date();
  v99 = *(v105 - 8);
  v10 = __chkstk_darwin(v105);
  v104 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v98 = &v90 - v13;
  __chkstk_darwin(v12);
  v107 = &v90 - v14;
  v15 = sub_1000089AC(&qword_100085910, &unk_1000693B0);
  __chkstk_darwin(v15 - 8);
  v96 = &v90 - v16;
  v17 = sub_1000089AC(&qword_100085918, &qword_100069250);
  __chkstk_darwin(v17 - 8);
  v95 = &v90 - v18;
  v114 = nullsub_1;
  v115 = 0;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_1000658D0;
  v113 = &unk_100082FC8;
  v19 = _Block_copy(&aBlock);
  [a1 setExpirationHandler:v19];
  _Block_release(v19);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_1000098DC(v20, qword_100087610);

  v109 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  v24 = os_log_type_enabled(v22, v23);
  v93 = v4;
  v94 = a1;
  v91 = v6;
  v101 = v8;
  v102 = v7;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = *&a2[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry];
    os_unfair_lock_lock((*(v26 + 56) + 16));
    swift_beginAccess();
    v27 = *(v26 + 56);
    v28 = *(*(v26 + 64) + 16);
    os_unfair_lock_unlock(v27 + 4);
    *(v25 + 4) = v28;

    _os_log_impl(&_mh_execute_header, v22, v23, "MLHostDaemon: TaskRegistry has %ld tasks before pruning.", v25, 0xCu);
  }

  else
  {
  }

  v97 = a2;
  v106 = *&a2[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry];
  v103 = sub_10001967C();
  v30 = v103[2];
  if (v30)
  {
    v31 = v103 + 5;
    *&v29 = 136315138;
    v108 = v29;
    do
    {
      v33 = *(v31 - 1);
      v34 = *v31;

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock = v38;
        *v37 = v108;
        *(v37 + 4) = sub_100008A0C(v33, v34, &aBlock);
        _os_log_impl(&_mh_execute_header, v35, v36, "Unregistering task %s because it was pruned.", v37, 0xCu);
        sub_100009914(v38);
      }

      sub_100063BB0(v33, v34, v32);

      v31 += 2;
      --v30;
    }

    while (v30);
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    v42 = v106;
    os_unfair_lock_lock((*(v106 + 56) + 16));
    swift_beginAccess();
    v43 = *(*(v42 + 64) + 16);
    os_unfair_lock_unlock((*(v42 + 56) + 16));
    *(v41 + 4) = v43;

    _os_log_impl(&_mh_execute_header, v39, v40, "MLHostDaemon: TaskRegistry has %ld tasks after pruning.", v41, 0xCu);
  }

  else
  {

    v42 = v106;
  }

  v45 = v95;
  v44 = v96;
  v46 = enum case for TaskType.dynamicTask(_:);
  v47 = type metadata accessor for TaskType();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v45, v46, v47);
  (*(v48 + 56))(v45, 0, 1, v47);
  v49 = type metadata accessor for TaskCategory();
  (*(*(v49 - 8) + 56))(v44, 1, 1, v49);
  v50 = sub_10001BA90(v45, v44);
  sub_100009C94(v44, &qword_100085910, &unk_1000693B0);
  sub_100009C94(v45, &qword_100085918, &qword_100069250);
  v51 = sub_10004F764(v50);

  v52 = sub_100026CD4(v42, v51);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  v55 = os_log_type_enabled(v53, v54);
  v97 = v52;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock = v57;
    *v56 = 136315138;
    v58 = Array.description.getter();
    v60 = sub_100008A0C(v58, v59, &aBlock);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "MLHostDaemon: pruned orphaned taskFolders: %s", v56, 0xCu);
    sub_100009914(v57);
  }

  v62 = v100;
  v61 = v101;
  v64 = v98;
  v63 = v99;
  static Calendar.current.getter();
  static Date.now.getter();
  v65 = v107;
  Calendar.startOfDay(for:)();
  v66 = v105;
  *&v108 = *(v63 + 8);
  (v108)(v64, v105);
  (*(v61 + 8))(v62, v102);
  (*(v63 + 16))(v64, v65, v66);
  Date.init(timeInterval:since:)();
  sub_1000089AC(&qword_100085CB8, &qword_100069480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069310;
  *(inited + 32) = 0x49747865746E6F63;
  *(inited + 40) = 0xE900000000000064;
  sub_100009A48(0, &unk_100085CC0, NSString_ptr);
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0x756F43736B736174;
  *(inited + 64) = 0xEA0000000000746ELL;
  v68 = v106;
  os_unfair_lock_lock((*(v106 + 56) + 16));
  swift_beginAccess();
  os_unfair_lock_unlock((*(v68 + 56) + 16));
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x6E7552736B736174;
  *(inited + 88) = 0xE800000000000000;
  sub_100009A48(0, &unk_100085930, NSNumber_ptr);
  *(inited + 96) = NSNumber.init(integerLiteral:)(-1);
  strcpy((inited + 104), "tasksDeferred");
  *(inited + 118) = -4864;
  *(inited + 120) = NSNumber.init(integerLiteral:)(-1);
  *(inited + 128) = 0x696146736B736174;
  *(inited + 136) = 0xEB0000000064656CLL;
  *(inited + 144) = NSNumber.init(integerLiteral:)(-1);
  strcpy((inited + 152), "tasksCompleted");
  *(inited + 167) = -18;
  *(inited + 168) = NSNumber.init(integerLiteral:)(-1);
  *(inited + 176) = 0x745374656B637562;
  *(inited + 184) = 0xEB00000000747261;
  Date.timeIntervalSince1970.getter();
  if ((*&v69 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v69 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v69 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v70 = [objc_allocWithZone(NSNumber) initWithLongLong:v69];
  v71 = [v70 stringValue];
  if (!v71)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v72 = v71;

  *(inited + 192) = v72;
  *(inited + 200) = 0x6E4574656B637562;
  *(inited + 208) = 0xE900000000000064;
  Date.timeIntervalSince1970.getter();
  if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (v73 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v73 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v74 = [objc_allocWithZone(NSNumber) initWithLongLong:v73];
  v75 = [v74 stringValue];
  if (!v75)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v76 = v75;

  *(inited + 216) = v76;
  v77 = sub_100052A14(inited);
  swift_setDeallocating();
  sub_1000089AC(&qword_100085CD0, &qword_100069488);
  swift_arrayDestroy();
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();
  v80 = os_log_type_enabled(v78, v79);
  v81 = v91;
  if (v80)
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "MLHostDaemon: sending device telemetry", v82, 2u);
  }

  v84 = v92;
  v83 = v93;
  (*(v92 + 104))(v81, enum case for CoreAnalyticsEvents.deviceStatusTelemetry(_:), v93);
  CoreAnalyticsEvents.rawValue.getter();
  (*(v84 + 8))(v81, v83);
  v85 = String._bridgeToObjectiveC()();

  v86 = swift_allocObject();
  *(v86 + 16) = v77;
  v114 = sub_1000645EC;
  v115 = v86;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_100049F20;
  v113 = &unk_100083018;
  v87 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v87);

  [v94 setTaskCompleted];
  v88 = v105;
  v89 = v108;
  (v108)(v104, v105);
  v89(v107, v88);
}

Class sub_100049F20(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100009A48(0, &qword_100085CD8, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_100049FBC(void *a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085C50, &qword_100069400);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000658D0;
  aBlock[3] = &unk_100082F78;
  v7 = _Block_copy(aBlock);
  [a1 setExpirationHandler:v7];
  _Block_release(v7);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;

  sub_10002F68C(0, 0, v6, &unk_100069478, v9);

  return [a1 setTaskCompleted];
}

uint64_t sub_10004A180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000098DC(v4, qword_100087610);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "MLHostDaemon: pruning KVDatastore expired keys.", v7, 2u);
  }

  v8 = *(v3 + 16);

  *(v3 + 24) = *(v8 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore, &protocol conformance descriptor for KVDatastore);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10004A304, v10, v9);
}

uint64_t sub_10004A304()
{
  dispatch thunk of KVDatastore.pruneExpiredKeys()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004A364()
{

  v1 = OBJC_IVAR____TtC7mlhostd12MLHostDaemon_config;
  v2 = type metadata accessor for MLHostConfig();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10004A43C()
{
  sub_10004A364();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MLHostDaemon(uint64_t a1)
{
  result = qword_100085AB8;
  if (!qword_100085AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004A4E8(uint64_t a1)
{
  result = type metadata accessor for MLHostConfig();
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

uint64_t *sub_10004A5B4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10004A618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004A694()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004A728(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10004A820;

  return v6(a1);
}

uint64_t sub_10004A820()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004A918(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10004CD94(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10004AA68(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
      sub_100051EE4(&qword_100085F80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
    sub_10004CF14(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}