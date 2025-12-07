uint64_t sub_1000033A4(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 1);
  v9 = __chkstk_darwin(v6, v8);
  v11 = (&v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v4[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_listenerQueue];
  *v11 = v12;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v14 = *&v4[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcDaemon];
  v15 = *&v4[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcDaemon + 8];
  sub_100003C4C();
  swift_unknownObjectRetain();
  v16 = static NSObject.== infix(_:_:)();
  v17 = objc_allocWithZone(type metadata accessor for RDClientConnection());
  v18 = a2;
  v3 = sub_100003C98(v18, v14, v15, v13, v16 & 1);
  v19 = *&v3[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44] >> 14;
  if (v19 < 2)
  {
    LOWORD(v20) = -129;
    goto LABEL_12;
  }

  if (v19 != 2)
  {
    LOWORD(v20) = -1;
    goto LABEL_12;
  }

  v20 = *&v3[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 40];
  if (v20)
  {
    if ((v20 & 5) == 0)
    {
      if (qword_100935AF0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_10093A260);
      v22 = v3;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v73 = v24;
        v26 = v25;
        v27 = swift_slowAlloc();
        v72 = v23;
        v28 = v27;
        *v26 = 138543362;
        *(v26 + 4) = v22;
        *v27 = v22;
        v29 = v22;
        v30 = v72;
        _os_log_impl(&_mh_execute_header, v72, v73, "clientConnection.accessLevel has no read/write access {clientConnection: %{public}@}", v26, 0xCu);
        sub_100039860(v28);
      }

      else
      {
      }
    }

LABEL_12:
    if (static NSObject.== infix(_:_:)())
    {
      if ((v20 & 0x100) != 0)
      {
        v38 = sub_100007CF0([v18 processIdentifier]);
        goto LABEL_23;
      }

      if (qword_100935AF0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100006654(v31, qword_10093A260);
      v32 = v18;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        *(v35 + 4) = v32;
        *v36 = v32;
        v37 = v32;
        _os_log_impl(&_mh_execute_header, v33, v34, "Connection requested as UserInteractive but is missing the entitlement. Using xpc Queue {connection: %@}", v35, 0xCu);
        sub_100039860(v36);
      }
    }

    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v38 = qword_100974CB0;
LABEL_23:
    v6 = v38;
    [v18 _setQueue:v6];
    if (qword_100935AF0 == -1)
    {
LABEL_24:
      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_10093A260);
      v40 = v3;
      v41 = v6;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138543618;
        *(v44 + 4) = v40;
        *(v44 + 12) = 2114;
        *(v44 + 14) = v41;
        *v45 = v40;
        v45[1] = v41;
        v46 = v40;
        _os_log_impl(&_mh_execute_header, v42, v43, "New client connection {connection: %{public}@, queue: %{public}@}", v44, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
      }

      else
      {
      }

      *&v40[OBJC_IVAR____TtC7remindd18RDClientConnection_delegate + 8] = &off_1008E7F50;
      swift_unknownObjectWeakAssign();
      v47 = OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnections;
      swift_beginAccess();
      v48 = v40;
      sub_10000854C(&v74, v48);
      v49 = v74;
      swift_endAccess();

      v50 = v4;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 134217984;
        v54 = *&v4[v47];
        if ((v54 & 0xC000000000000001) != 0)
        {

          v55 = __CocoaSet.count.getter();
          v54, v56, v57, v58, v59, v60, v61, v62;
        }

        else
        {
          v55 = *(v54 + 16);
        }

        *(v53 + 4) = v55;

        _os_log_impl(&_mh_execute_header, v51, v52, "Connection count: %ld", v53, 0xCu);
      }

      else
      {

        v51 = v50;
      }

      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100008950(v48, sub_100007AA8, v63);

      v64 = 1;
      goto LABEL_34;
    }

LABEL_42:
    swift_once();
    goto LABEL_24;
  }

  if (qword_100935AF0 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_100006654(v66, qword_10093A260);
  v67 = v3;
  v41 = Logger.logObject.getter();
  v68 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v41, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v69 = 138543362;
    *(v69 + 4) = v67;
    *v70 = v67;
    v71 = v67;
    _os_log_impl(&_mh_execute_header, v41, v68, "clientConnection.accessLevel == .none. Rejecting connection {clientConnection: %{public}@}", v69, 0xCu);
    sub_100039860(v70);
  }

  v64 = 0;
LABEL_34:

  return v64;
}

uint64_t sub_100003C14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100003C4C()
{
  result = qword_100945FC0;
  if (!qword_100945FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100945FC0);
  }

  return result;
}

char *sub_100003C98(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_keepAliveTransaction] = 0;
  *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_cancellables] = _swiftEmptySetSingleton;
  *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection] = a1;
  *&v5[OBJC_IVAR____TtC7remindd18RDClientConnection_notificationSubscriptionQueue] = a4;
  v5[OBJC_IVAR____TtC7remindd18RDClientConnection_isUserInteractive] = a5;
  v10 = a1;
  v46 = a4;
  v11 = [v10 processIdentifier];
  v12 = v10;
  v13 = sub_10000410C(v12);
  v15 = v14;
  v17 = v16;

  v18 = 0xFFFF800000000000;
  if (a5)
  {
    v18 = 0xFFFF810000000000;
  }

  v19 = &v5[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
  *v19 = v11;
  *(v19 + 1) = v15;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0;
  *(v19 + 2) = v17;
  *(v19 + 22) = (v18 & 0xFFFFFFFE00000000 | v13 & 0x1FFFFFFFFLL) >> 32;
  *(v19 + 10) = v13;
  v20 = &v5[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon];
  *v20 = a2;
  v20[1] = a3;
  v54.receiver = v5;
  v54.super_class = type metadata accessor for RDClientConnection();
  swift_unknownObjectRetain();
  v21 = objc_msgSendSuper2(&v54, "init");
  v22 = v21;
  v23 = *&v21[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44] >> 14;
  if (v23 <= 1 || v23 == 2 && (*&v21[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 40] & 0x80) == 0)
  {
    v24 = v21;
  }

  else
  {
    v25 = v21;
    sub_100006110();
    sub_100006758();
  }

  v26 = OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection;
  v27 = *&v22[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection];
  v28 = v22;
  [v27 setExportedObject:v28];
  v29 = *&v22[v26];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 interface];
  [v31 setExportedInterface:v32];

  v33 = *&v22[v26];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 interface];
  [v35 setRemoteObjectInterface:v36];

  v37 = *&v22[v26];
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = sub_1004BECB4;
  v53 = v38;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_100019200;
  v51 = &unk_1008F4550;
  v39 = _Block_copy(&aBlock);
  v40 = v37;

  [v40 setInterruptionHandler:v39];
  _Block_release(v39);

  v41 = *&v22[v26];
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v41;

  v52 = sub_100052674;
  v53 = v42;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_100019200;
  v51 = &unk_1008F4578;
  v44 = _Block_copy(&aBlock);

  [v43 setInvalidationHandler:v44];
  _Block_release(v44);

  swift_unknownObjectRelease();
  return v28;
}

uint64_t sub_1000040B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000410C(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = sub_100004F64(v2, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5)
  {
    if ([objc_opt_self() isInternalInstall])
    {
      v21 = sub_100005104(0, 1, 1, &_swiftEmptyArrayStorage, v13, v14, v15, v16);
      v23 = *v21->clientIdentity;
      v22 = *&v21->clientIdentity[8];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_100005104((v22 > 1), v23 + 1, 1, v21, v17, v18, v19, v20);
      }

      *v21->clientIdentity = v23 + 1;
      *&v21->clientIdentity[4 * v23 + 16] = 0x7FFFFFFF;
      goto LABEL_12;
    }

    if (qword_1009367A0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100950D98);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Device is running a non-internal Install. Not providing remindtool access level", v27, 2u);
    }
  }

  v21 = &_swiftEmptyArrayStorage;
LABEL_12:
  if (sub_100004F64(0xD00000000000001ELL, 0x80000001007FA3B0))
  {
    goto LABEL_21;
  }

  v28 = String._bridgeToObjectiveC()();
  v29 = [a1 valueForEntitlement:v28];

  if (v29)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v154 = 0u;
    v155 = 0u;
  }

  v156 = v154;
  v157 = v155;
  sub_1000050A4(&v156, &qword_100939ED0, &qword_100791B10);
  if (*(&v155 + 1))
  {
    goto LABEL_21;
  }

  v30 = String._bridgeToObjectiveC()();
  v31 = [a1 valueForEntitlement:v30];

  if (v31)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v154 = 0u;
    v155 = 0u;
  }

  v156 = v154;
  v157 = v155;
  sub_1000050A4(&v156, &qword_100939ED0, &qword_100791B10);
  if (*(&v155 + 1))
  {
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_100005104(0, *v21->clientIdentity + 1, 1, v21, v32, v33, v34, v35);
    }

    v37 = *v21->clientIdentity;
    v36 = *&v21->clientIdentity[8];
    v38 = v36 >> 1;
    v39 = v37 + 1;
    if (v36 >> 1 <= v37)
    {
      v21 = sub_100005104((v36 > 1), v37 + 1, 1, v21, v32, v33, v34, v35);
      v36 = *&v21->clientIdentity[8];
      v38 = v36 >> 1;
    }

    *v21->clientIdentity = v39;
    *&v21->clientIdentity[4 * v37 + 16] = 1;
    v40 = v37 + 2;
    if (v38 < (v37 + 2))
    {
      v21 = sub_100005104((v36 > 1), v37 + 2, 1, v21, v32, v33, v34, v35);
    }

    *v21->clientIdentity = v40;
    *&v21->clientIdentity[4 * v39 + 16] = 4;
    v41 = *&v21->clientIdentity[8];
    if ((v37 + 3) > (v41 >> 1))
    {
      v21 = sub_100005104((v41 > 1), v37 + 3, 1, v21, v32, v33, v34, v35);
    }

    *v21->clientIdentity = v37 + 3;
    *&v21->clientIdentity[4 * v40 + 16] = 8;
  }

  if (sub_100004F64(0xD000000000000012, 0x80000001007FA430) & 1) != 0 || (sub_100004F64(0xD000000000000026, 0x80000001007FA450))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_100005104(0, *v21->clientIdentity + 1, 1, v21, v42, v43, v44, v45);
    }

    v47 = *v21->clientIdentity;
    v46 = *&v21->clientIdentity[8];
    if (v47 >= v46 >> 1)
    {
      v21 = sub_100005104((v46 > 1), v47 + 1, 1, v21, v42, v43, v44, v45);
    }

    *v21->clientIdentity = v47 + 1;
    *&v21->clientIdentity[4 * v47 + 16] = 2;
  }

  v48 = String._bridgeToObjectiveC()();
  v49 = [a1 valueForEntitlement:v48];

  if (v49)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v154 = 0u;
    v155 = 0u;
  }

  v156 = v154;
  v157 = v155;
  sub_1000050A4(&v156, &qword_100939ED0, &qword_100791B10);
  if (*(&v155 + 1) || (sub_100004F64(0xD000000000000024, 0x80000001007FA4B0) & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_100005104(0, *v21->clientIdentity + 1, 1, v21, v50, v51, v52, v53);
    }

    v55 = *v21->clientIdentity;
    v54 = *&v21->clientIdentity[8];
    v56 = v54 >> 1;
    v57 = v55 + 1;
    if (v54 >> 1 <= v55)
    {
      v21 = sub_100005104((v54 > 1), v55 + 1, 1, v21, v50, v51, v52, v53);
      v54 = *&v21->clientIdentity[8];
      v56 = v54 >> 1;
    }

    *v21->clientIdentity = v57;
    *&v21->clientIdentity[4 * v55 + 16] = 8;
    v58 = v55 + 2;
    if (v56 < (v55 + 2))
    {
      v21 = sub_100005104((v54 > 1), v55 + 2, 1, v21, v50, v51, v52, v53);
    }

    *v21->clientIdentity = v58;
    *&v21->clientIdentity[4 * v57 + 16] = 16;
    v59 = *&v21->clientIdentity[8];
    v60 = v55 + 3;
    if ((v55 + 3) > (v59 >> 1))
    {
      v21 = sub_100005104((v59 > 1), v55 + 3, 1, v21, v50, v51, v52, v53);
    }

    *v21->clientIdentity = v60;
    *&v21->clientIdentity[4 * v58 + 16] = 4;
    v61 = *&v21->clientIdentity[8];
    if ((v55 + 4) > (v61 >> 1))
    {
      v21 = sub_100005104((v61 > 1), v55 + 4, 1, v21, v50, v51, v52, v53);
    }

    *v21->clientIdentity = v55 + 4;
    *&v21->clientIdentity[4 * v60 + 16] = 32;
  }

  if (sub_10000520C(15))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_100005104(0, *v21->clientIdentity + 1, 1, v21, v62, v63, v64, v65);
    }

    v67 = *v21->clientIdentity;
    v66 = *&v21->clientIdentity[8];
    if (v67 >= v66 >> 1)
    {
      v21 = sub_100005104((v66 > 1), v67 + 1, 1, v21, v62, v63, v64, v65);
    }

    *v21->clientIdentity = v67 + 1;
    *&v21->clientIdentity[4 * v67 + 16] = 1;
  }

  v68 = String._bridgeToObjectiveC()();
  v69 = [a1 valueForEntitlement:v68];

  if (v69)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v154 = 0u;
    v155 = 0u;
  }

  v156 = v154;
  v157 = v155;
  sub_1000050A4(&v156, &qword_100939ED0, &qword_100791B10);
  if (*(&v155 + 1) || (result = sub_1004BEAB0(1u), (result & 1) != 0))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_100005104(0, *v21->clientIdentity + 1, 1, v21, v78, v79, v80, v81);
    }

    v83 = *v21->clientIdentity;
    v82 = *&v21->clientIdentity[8];
    v84 = v82 >> 1;
    v85 = v83 + 1;
    if (v82 >> 1 <= v83)
    {
      v21 = sub_100005104((v82 > 1), v83 + 1, 1, v21, v78, v79, v80, v81);
      v82 = *&v21->clientIdentity[8];
      v84 = v82 >> 1;
    }

    *v21->clientIdentity = v85;
    *&v21->clientIdentity[4 * v83 + 16] = 1;
    v86 = v83 + 2;
    if (v84 < v86)
    {
      v21 = sub_100005104((v82 > 1), v86, 1, v21, v78, v79, v80, v81);
    }

    *v21->clientIdentity = v86;
    *&v21->clientIdentity[4 * v85 + 16] = 4;
    if (sub_1000055D8(0))
    {
      v92 = *v21->clientIdentity;
      v91 = *&v21->clientIdentity[8];
      if (v92 >= v91 >> 1)
      {
        v21 = sub_100005104((v91 > 1), v92 + 1, 1, v21, v87, v88, v89, v90);
      }

      *v21->clientIdentity = v92 + 1;
      *&v21->clientIdentity[4 * v92 + 16] = 1;
    }

    if (sub_1000055D8(1u))
    {
      v98 = *v21->clientIdentity;
      v97 = *&v21->clientIdentity[8];
      if (v98 >= v97 >> 1)
      {
        v21 = sub_100005104((v97 > 1), v98 + 1, 1, v21, v93, v94, v95, v96);
      }

      *v21->clientIdentity = v98 + 1;
      *&v21->clientIdentity[4 * v98 + 16] = 2;
    }

    if (sub_1000055D8(2u))
    {
      v104 = *v21->clientIdentity;
      v103 = *&v21->clientIdentity[8];
      v105 = v103 >> 1;
      v106 = v104 + 1;
      if (v103 >> 1 <= v104)
      {
        v21 = sub_100005104((v103 > 1), v104 + 1, 1, v21, v99, v100, v101, v102);
        v103 = *&v21->clientIdentity[8];
        v105 = v103 >> 1;
      }

      *v21->clientIdentity = v106;
      *&v21->clientIdentity[4 * v104 + 16] = 8;
      v107 = v104 + 2;
      if (v105 < (v104 + 2))
      {
        v21 = sub_100005104((v103 > 1), v104 + 2, 1, v21, v99, v100, v101, v102);
      }

      *v21->clientIdentity = v107;
      *&v21->clientIdentity[4 * v106 + 16] = 4;
      v108 = *&v21->clientIdentity[8];
      if ((v104 + 3) > (v108 >> 1))
      {
        v21 = sub_100005104((v108 > 1), v104 + 3, 1, v21, v99, v100, v101, v102);
      }

      *v21->clientIdentity = v104 + 3;
      *&v21->clientIdentity[4 * v107 + 16] = 16;
    }

    if (sub_1000055D8(3u))
    {
      v114 = *v21->clientIdentity;
      v113 = *&v21->clientIdentity[8];
      if (v114 >= v113 >> 1)
      {
        v21 = sub_100005104((v113 > 1), v114 + 1, 1, v21, v109, v110, v111, v112);
      }

      *v21->clientIdentity = v114 + 1;
      *&v21->clientIdentity[4 * v114 + 16] = 32;
    }

    if (sub_1000055D8(4u))
    {
      v120 = *v21->clientIdentity;
      v119 = *&v21->clientIdentity[8];
      if (v120 >= v119 >> 1)
      {
        v21 = sub_100005104((v119 > 1), v120 + 1, 1, v21, v115, v116, v117, v118);
      }

      *v21->clientIdentity = v120 + 1;
      *&v21->clientIdentity[4 * v120 + 16] = 1024;
    }

    if (sub_1000055D8(5u))
    {
      v126 = *v21->clientIdentity;
      v125 = *&v21->clientIdentity[8];
      if (v126 >= v125 >> 1)
      {
        v21 = sub_100005104((v125 > 1), v126 + 1, 1, v21, v121, v122, v123, v124);
      }

      *v21->clientIdentity = v126 + 1;
      *&v21->clientIdentity[4 * v126 + 16] = 64;
    }

    if (sub_1000055D8(6u))
    {
      v132 = *v21->clientIdentity;
      v131 = *&v21->clientIdentity[8];
      if (v132 >= v131 >> 1)
      {
        v21 = sub_100005104((v131 > 1), v132 + 1, 1, v21, v127, v128, v129, v130);
      }

      *v21->clientIdentity = v132 + 1;
      *&v21->clientIdentity[4 * v132 + 16] = 256;
    }

    result = sub_1000055D8(7u);
    if (result)
    {
      v134 = *v21->clientIdentity;
      v133 = *&v21->clientIdentity[8];
      if (v134 >= v133 >> 1)
      {
        result = sub_100005104((v133 > 1), v134 + 1, 1, v21, v74, v75, v76, v77);
        v21 = result;
      }

      *v21->clientIdentity = v134 + 1;
      *&v21->clientIdentity[4 * v134 + 16] = 128;
    }
  }

  v135 = 0;
  v136 = *v21->clientIdentity;
  while (v136 != v135)
  {
    v137 = v21 + 4 * v135++;
    if (*(v137 + 8) == 1)
    {
      v138 = 0;
      goto LABEL_118;
    }
  }

  if (!kTCCServiceReminders)
  {
    __break(1u);
    return result;
  }

  v139 = kTCCServiceReminders;
  [a1 auditToken];
  v140 = TCCAccessCheckAuditToken();

  if (v140)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_100005104(0, *v21->clientIdentity + 1, 1, v21, v74, v75, v76, v77);
    }

    v142 = *v21->clientIdentity;
    v141 = *&v21->clientIdentity[8];
    v136 = v142 + 1;
    if (v142 >= v141 >> 1)
    {
      v21 = sub_100005104((v141 > 1), v142 + 1, 1, v21, v74, v75, v76, v77);
    }

    *v21->clientIdentity = v136;
    *&v21->clientIdentity[4 * v142 + 16] = 1;
    v138 = &_mh_execute_header;
  }

  else
  {
    v138 = 0;
    v136 = *v21->clientIdentity;
  }

LABEL_118:
  v143 = 0;
  while (v136 != v143)
  {
    v144 = v21 + 4 * v143++;
    if (*(v144 + 8) == 1)
    {
      v145 = String._bridgeToObjectiveC()();
      v146 = [a1 valueForEntitlement:v145];

      if (v146)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v154 = 0u;
        v155 = 0u;
      }

      v156 = v154;
      v157 = v155;
      sub_1000050A4(&v156, &qword_100939ED0, &qword_100791B10);
      if (*(&v155 + 1))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100005104(0, *v21->clientIdentity + 1, 1, v21, v74, v75, v76, v77);
        }

        v148 = *v21->clientIdentity;
        v147 = *&v21->clientIdentity[8];
        v136 = v148 + 1;
        if (v148 >= v147 >> 1)
        {
          v21 = sub_100005104((v147 > 1), v148 + 1, 1, v21, v74, v75, v76, v77);
        }

        *v21->clientIdentity = v136;
        *&v21->clientIdentity[4 * v148 + 16] = 512;
        goto LABEL_132;
      }

      v136 = *v21->clientIdentity;
      break;
    }
  }

  if (!v136)
  {
    v21, v71, v72, v73, v74, v75, v76, v77;
    v149 = 0;
    goto LABEL_138;
  }

LABEL_132:
  LODWORD(v149) = 0;
  v150 = 32;
  do
  {
    v151 = *(&v21->super.isa + v150);
    if ((v151 & ~v149) == 0)
    {
      v151 = 0;
    }

    v149 = v151 | v149;
    v150 += 4;
    --v136;
  }

  while (v136);
  v21, v71, v72, v73, v74, v75, v76, v77;
LABEL_138:
  v152 = String._bridgeToObjectiveC()();
  v153 = [a1 valueForEntitlement:v152];

  if (v153)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v154 = 0u;
    v155 = 0u;
  }

  v156 = v154;
  v157 = v155;
  if (*(&v155 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1000050A4(&v156, &qword_100939ED0, &qword_100791B10);
  }

  return v149 | v138;
}

uint64_t sub_100004F64(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v3 valueForEntitlement:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (!*(&v25 + 1))
  {
    sub_1000050A4(v26, &qword_100939ED0, &qword_100791B10);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v15 = 0;
    return v15 & 1;
  }

  if (v24 == __PAIR128__(a2, a1))
  {
    *(&v24 + 1), v8, v9, v10, v11, v12, v13, v14;
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    *(&v24 + 1), v17, v18, v19, v20, v21, v22, v23;
  }

  return v15 & 1;
}

uint64_t sub_1000050A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000F5104(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_TtC7remindd19RDXPCStorePerformer *sub_100005104(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, void *a3, _TtC7remindd19RDXPCStorePerformer *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *&a4->clientIdentity[8];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->clientIdentity;
  if (v11 <= v12)
  {
    v13 = *a4->clientIdentity;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000F5104(&qword_100943C80, &qword_1007A4498);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 29;
    }

    *v14->clientIdentity = v12;
    *&v14->clientIdentity[8] = 2 * (v16 >> 2);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  v17 = &v14->clientIdentity[16];
  v18 = &a4->clientIdentity[16];
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[4 * v12])
    {
      memmove(v17, v18, 4 * v12);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    memcpy(v17, v18, 4 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_10000520C(char a1)
{
  sub_100005394(a1);
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v3, v5, v6, v7, v8, v9, v10, v11;
  v12 = [v1 valueForEntitlement:v4];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v16[0] = v17;
  v16[1] = v18;
  if (*(&v18 + 1))
  {
    sub_100005EE0(v16, &v17);
    sub_100005EF0(&v17, v16);
    sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    if (swift_dynamicCast() & 1) != 0 || (sub_100005EF0(&v17, v16), sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr), (swift_dynamicCast()))
    {
      v13 = [v15 BOOLValue];

      sub_10000607C(&v17);
      return v13;
    }

    else
    {
      sub_10000607C(&v17);
      return 1;
    }
  }

  else
  {
    sub_1000050A4(v16, &qword_100939ED0, &qword_100791B10);
    return 0;
  }
}

unint64_t sub_100005394(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD00000000000003ELL;
      break;
    case 3:
      result = 0xD000000000000034;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000027;
      break;
    case 6:
      result = 0xD000000000000032;
      break;
    case 7:
      result = 0xD000000000000024;
      break;
    case 8:
    case 17:
      result = 0xD000000000000026;
      break;
    case 9:
      result = 0xD00000000000002ELL;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
      result = 0xD000000000000043;
      break;
    case 12:
      result = 0xD000000000000039;
      break;
    case 13:
      result = 0xD000000000000042;
      break;
    case 14:
      result = 0xD000000000000038;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0xD00000000000004CLL;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000055D8(unsigned __int8 a1)
{
  v3 = 0xD000000000000011;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v1 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v125 = 0u;
    v126 = 0u;
  }

  v124[0] = v125;
  v124[1] = v126;
  if (!*(&v126 + 1))
  {
    sub_1000050A4(v124, &qword_100939ED0, &qword_100791B10);
LABEL_53:
    v35 = 0;
    return v35 & 1;
  }

  sub_100005EE0(v124, &v125);
  sub_100005EF0(&v125, v124);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
    sub_100005EF0(&v125, v124);
    sub_1000F5104(&unk_100938CB0, &unk_100796A70);
    if (swift_dynamicCast())
    {
      if (a1 > 3u)
      {
        if (a1 > 5u)
        {
          if (a1 == 6)
          {
            v18 = 0x65746E4972657375;
            v17 = 0xEF65766974636172;
          }

          else
          {
            v18 = 0x76696C417065656BLL;
            v17 = 0xE900000000000065;
          }
        }

        else if (a1 == 4)
        {
          v17 = 0x80000001007F35B0;
          v18 = 0xD000000000000011;
        }

        else
        {
          v17 = 0xE800000000000000;
          v18 = 0x676E697865646E69;
        }
      }

      else if (a1 > 1u)
      {
        if (a1 == 2)
        {
          v17 = 0xE400000000000000;
          v18 = 1668184435;
        }

        else
        {
          v17 = 0xE500000000000000;
          v18 = 0x6775626564;
        }
      }

      else if (a1)
      {
        v18 = 0x6E756F4669726973;
        v17 = 0xEF737070416E4964;
      }

      else
      {
        v17 = 0xE500000000000000;
        v18 = 0x65726F7473;
      }

      if (*v123[0]->clientIdentity)
      {
        v50 = sub_100005F4C(v18, v17);
        v52 = v51;
        v17, v51, v53, v54, v55, v56, v57, v58;
        if (v52)
        {
          sub_100005EF0(*&v123[0]->clientIdentity[40] + 32 * v50, v124);
          v123[0], v66, v67, v68, v69, v70, v71, v72;
          sub_100005EF0(v124, v123);
          sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v35 = [v122[0] BOOLValue];

            sub_10000607C(v124);
            sub_10000607C(&v125);
            return v35 & 1;
          }

          if (qword_1009367A0 != -1)
          {
            swift_once();
          }

          v75 = type metadata accessor for Logger();
          sub_100006654(v75, qword_100950D98);
          sub_100005EF0(v124, v123);
          sub_100005EF0(v124, v122);
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            *v78 = 136446722;
            v79 = 0xE500000000000000;
            v80 = 0x65746E4972657375;
            v81 = 0xEF65766974636172;
            if (a1 != 6)
            {
              v80 = 0x76696C417065656BLL;
              v81 = 0xE900000000000065;
            }

            v82 = 0x80000001007F35B0;
            v83 = 0x676E697865646E69;
            if (a1 == 4)
            {
              v83 = 0xD000000000000011;
            }

            else
            {
              v82 = 0xE800000000000000;
            }

            if (a1 <= 5u)
            {
              v80 = v83;
              v81 = v82;
            }

            v84 = 0xE400000000000000;
            v85 = 1668184435;
            if (a1 != 2)
            {
              v85 = 0x6775626564;
              v84 = 0xE500000000000000;
            }

            v86 = 0x6E756F4669726973;
            if (a1)
            {
              v79 = 0xEF737070416E4964;
            }

            else
            {
              v86 = 0x65726F7473;
            }

            if (a1 > 1u)
            {
              v79 = v84;
            }

            else
            {
              v85 = v86;
            }

            if (a1 <= 3u)
            {
              v87 = v85;
            }

            else
            {
              v87 = v80;
            }

            if (a1 <= 3u)
            {
              v88 = v79;
            }

            else
            {
              v88 = v81;
            }

            v89 = sub_10000668C(v87, v88, &v121);
            v88, v90, v91, v92, v93, v94, v95, v96;
            *(v78 + 4) = v89;
            *(v78 + 12) = 2082;
            sub_100005EF0(v123, v120);
            v97 = String.init<A>(describing:)();
            v99 = v98;
            sub_10000607C(v123);
            v100 = sub_10000668C(v97, v99, &v121);
            v99, v101, v102, v103, v104, v105, v106, v107;
            *(v78 + 14) = v100;
            *(v78 + 22) = 2082;
            sub_10000F61C(v122, v122[3]);
            v120[0] = swift_getDynamicType();
            sub_1000F5104(&qword_100949DB8, &qword_1007AE138);
            v108 = String.init<A>(describing:)();
            v110 = v109;
            sub_10000607C(v122);
            v111 = sub_10000668C(v108, v110, &v121);
            v110, v112, v113, v114, v115, v116, v117, v118;
            *(v78 + 24) = v111;
            _os_log_impl(&_mh_execute_header, v76, v77, "Unexpected type for remindd entitlement {entitlement: %{public}s, value: %{public}s, type: %{public}s}", v78, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_10000607C(v122);
            sub_10000607C(v123);
          }

          goto LABEL_31;
        }

        v73 = v123[0];
      }

      else
      {
        v123[0], v10, v11, v12, v13, v14, v15, v16;
        v73 = v17;
      }

      v73, v59, v60, v61, v62, v63, v64, v65;
      goto LABEL_52;
    }

    if (qword_1009367A0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100950D98);
    sub_100005EF0(&v125, v124);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v122[0] = v23;
      *v22 = 136446210;
      sub_100005EF0(v124, v123);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      sub_10000607C(v124);
      v27 = sub_10000668C(v24, v26, v122);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unexpected privateRemindd entitlement format {reminddEntitlements: %{public}s}", v22, 0xCu);
      sub_10000607C(v23);

LABEL_52:
      sub_10000607C(&v125);
      goto LABEL_53;
    }

LABEL_31:
    sub_10000607C(v124);
    goto LABEL_52;
  }

  v8 = v123[0];
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v3 = 0x65746E4972657375;
        v9 = 0xEF65766974636172;
      }

      else
      {
        v3 = 0x76696C417065656BLL;
        v9 = 0xE900000000000065;
      }
    }

    else if (a1 == 4)
    {
      v9 = 0x80000001007F35B0;
    }

    else
    {
      v9 = 0xE800000000000000;
      v3 = 0x676E697865646E69;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v9 = 0xE400000000000000;
      v3 = 1668184435;
    }

    else
    {
      v9 = 0xE500000000000000;
      v3 = 0x6775626564;
    }
  }

  else if (a1)
  {
    v3 = 0x6E756F4669726973;
    v9 = 0xEF737070416E4964;
  }

  else
  {
    v3 = 0x65726F7473;
    v9 = 0xE500000000000000;
  }

  *&v124[0] = v3;
  *(&v124[0] + 1) = v9;
  __chkstk_darwin(v6, v7);
  v119[2] = v124;
  v35 = sub_100040A74(sub_100040B20, v119, v123[0]);
  v8, v36, v37, v38, v39, v40, v41, v42;
  sub_10000607C(&v125);
  v9, v43, v44, v45, v46, v47, v48, v49;
  return v35 & 1;
}

_OWORD *sub_100005EE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100005F4C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100005FC4(a1, a2, v4);
}

unint64_t sub_100005FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000607C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000060C8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100006110()
{
  v1 = OBJC_IVAR____TtC7remindd18RDClientConnection_keepAliveTransaction;
  if (!*(v0 + OBJC_IVAR____TtC7remindd18RDClientConnection_keepAliveTransaction))
  {
    v2 = v0;
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
    v10 = 0xD000000000000011;
    v50 = 0xD00000000000001CLL;
    v51 = 0x80000001007FA310;
    v11 = *(v2 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16);
    v52 = *(v2 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
    *v53 = v11;
    *&v53[14] = *(v2 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30);
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v12 = swift_allocObject();
    v13 = v12;
    *(v12 + 16) = xmmword_100791340;
    if (((*&v53[28] << 32) & 0xC10000000000) == 0x810000000000)
    {
      v14 = 0x80000001007EECE0;
    }

    else
    {
      v10 = 0;
      v14 = 0xE000000000000000;
    }

    *(v12 + 56) = &type metadata for String;
    v15 = sub_100006600();
    v13[8] = v15;
    v13[4] = v10;
    v13[5] = v14;
    v16 = sub_1000063E8();
    v13[12] = &type metadata for String;
    v13[13] = v15;
    v13[9] = v16;
    v13[10] = v17;
    v18._countAndFlagsBits = String.init(format:_:)();
    object = v18._object;
    String.append(_:)(v18);
    object, v20, v21, v22, v23, v24, v25, v26;
    v27._countAndFlagsBits = 93;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v29 = v50;
    v28 = v51;
    if (qword_1009362C0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_100949BB0);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v51, v33, v34, v35, v36, v37, v38, v39;
    if (os_log_type_enabled(v31, v32))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50 = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_10000668C(v29, v28, &v50);
      _os_log_impl(&_mh_execute_header, v31, v32, "os_transaction INIT {name: %{public}s}", v40, 0xCu);
      sub_10000607C(v41);
    }

    String.utf8CString.getter();
    v28, v42, v43, v44, v45, v46, v47, v48;
    v49 = os_transaction_create();

    *(v2 + v1) = v49;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000063E8()
{
  if (((*(v0 + 22) << 32) & 0xC00000000000) == 0x400000000000)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    v3 = sub_100008E70();
    if (v4)
    {
      v5 = v3;
      v6 = v4;
    }

    else if (((*(v0 + 22) << 32) & 0xC00000000000) == 0x800000000000)
    {
      v6 = v0[4];
      if (v6)
      {
        v5 = v0[3];
      }

      else
      {
        v6 = 0xEF4449656C646E75;
        v5 = 0x426E776F6E6B6E55;
      }
    }

    else
    {
      v7 = [objc_opt_self() processInfo];
      v8 = [v7 processName];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v9;
    }

    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100791320;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100006600();
    *(v10 + 32) = v5;
    *(v10 + 40) = v6;
    v11 = *(v0 + 10) | (*(v0 + 22) << 32);
    if ((v11 & 0xC00000000000) == 0x800000000000)
    {
      v12 = *v0;
    }

    else
    {
      v13 = [objc_opt_self() processInfo];
      v12 = [v13 processIdentifier];
    }

    *(v10 + 96) = &type metadata for Int32;
    *(v10 + 104) = &protocol witness table for Int32;
    *(v10 + 72) = v12;
    *(v10 + 136) = &type metadata for Bool;
    *(v10 + 144) = &protocol witness table for Bool;
    *(v10 + 112) = (v11 & 0xC00000000100) != 0x800000000000;
    return String.init(format:_:)();
  }
}

unint64_t sub_100006600()
{
  result = qword_1009388A0;
  if (!qword_1009388A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009388A0);
  }

  return result;
}

uint64_t sub_100006654(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000668C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t *a3)
{

  v6 = sub_100008F38(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100005EF0(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_10000607C(v18);
  return v14;
}

uint64_t sub_100006758()
{
  v1 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v28 - v3;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100936ED0, &unk_100791AF0);
  v34 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = &v28 - v11;
  v13 = [objc_opt_self() defaultCenter];
  if (qword_1009362C8 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();
  v43 = *(v0 + OBJC_IVAR____TtC7remindd18RDClientConnection_notificationSubscriptionQueue);
  v14 = v43;
  v15 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v41 = v13;
  v16 = *(v15 - 8);
  v39 = *(v16 + 56);
  v40 = v15;
  v38 = v16 + 56;
  v39(v4, 1, 1);
  v17 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v18 = sub_100006C4C();
  v19 = sub_100006CA4();
  v36 = v14;
  v37 = v17;
  v35 = v18;
  v33 = v19;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v4, &qword_100939980, &unk_10079ADA0);
  v20 = *(v42 + 8);
  v42 += 8;
  v31 = v20;
  v20(v8, v5);
  v21 = type metadata accessor for RDClientConnection();
  v22 = sub_100006D0C();
  v32 = v21;
  v30 = v22;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  v29 = v5;
  v34 = *(v34 + 8);
  (v34)(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_1009362D0 != -1)
  {
    swift_once();
  }

  v23 = v41;
  NSNotificationCenter.publisher(for:object:)();
  v24 = v36;
  v43 = v36;
  (v39)(v4, 1, 1, v40);
  v25 = v8;
  v26 = v29;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v4, &qword_100939980, &unk_10079ADA0);

  v31(v25, v26);
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (v34)(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

unint64_t sub_100006C4C()
{
  result = qword_100936F00;
  if (!qword_100936F00)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936F00);
  }

  return result;
}

unint64_t sub_100006CA4()
{
  result = qword_10093CD40;
  if (!qword_10093CD40)
  {
    sub_1000060C8(255, &qword_10093E6E0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CD40);
  }

  return result;
}

unint64_t sub_100006D0C()
{
  result = qword_100936F10;
  if (!qword_100936F10)
  {
    sub_1000F514C(&unk_100936ED0, &unk_100791AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936F10);
  }

  return result;
}

uint64_t sub_100006D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007000(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007040(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007070(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007090(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007240(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007260(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007270(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000072E4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void (*a5)(uint64_t a1, uint64_t a2, void *a3), void *a6, uint64_t a7, _TtC7remindd19RDXPCStorePerformer *a8, char a9, uint64_t a10, uint64_t a11)
{
  v16 = objc_opt_self();
  v17 = String._bridgeToObjectiveC()();
  v44 = [v16 applicationWithBundleIdentifier:v17];

  if (qword_100936840 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_1009519C0);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  a8, v21, v22, v23, v24, v25, v26, v27;
  if (os_log_type_enabled(v19, v20))
  {
    v28 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v28 = 136446466;
    *(v28 + 4) = sub_10000668C(a7, a8, &aBlock);
    *(v28 + 12) = 2082;
    if (a9)
    {
      v29 = 4408148;
    }

    else
    {
      v29 = 0xD000000000000013;
    }

    if (a9)
    {
      v30 = 0xE300000000000000;
    }

    else
    {
      v30 = 0x80000001008007B0;
    }

    v31 = sub_10000668C(v29, v30, &aBlock);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v28 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "RDSystemAppProtectionGuard: initiate auth {processDescription: %{public}s, accessGrantReason: %{public}s}", v28, 0x16u);
    swift_arrayDestroy();
  }

  if (a9)
  {
    v39 = 1;
  }

  else
  {
    v39 = 2;
  }

  v43 = v39;
  v40 = [objc_opt_self() sharedGuard];
  v41 = swift_allocObject();
  *(v41 + 16) = a10;
  *(v41 + 24) = a11;
  v50 = sub_100007A00;
  v51 = v41;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_100007688;
  v49 = &unk_1008FE3E0;
  v42 = _Block_copy(&aBlock);

  aBlock = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  [v40 initiateAuthenticationWithShieldingForSubject:v44 onBehalfOfProcessWithAuditToken:&aBlock accessGrantReason:v43 completion:v42];

  _Block_release(v42);
}

uint64_t sub_100007640()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100007688(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100007700(char a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  if (a2)
  {
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = v7;
LABEL_9:
    if (qword_100936840 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006654(v36, qword_1009519C0);

    v10 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v8, v38, v39, v40, v41, v42, v43, v44;
    if (os_log_type_enabled(v10, v37))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57 = v46;
      *v45 = 67240450;
      *(v45 + 4) = a1 & 1;
      *(v45 + 8) = 2082;
      v47 = sub_10000668C(v6, v8, &v57);
      v8, v48, v49, v50, v51, v52, v53, v54;
      *(v45 + 10) = v47;
      _os_log_impl(&_mh_execute_header, v10, v37, "RDSystemAppProtectionGuard: initiate auth finished {success: %{BOOL,public}d, error: %{public}s}", v45, 0x12u);
      sub_10000607C(v46);

      goto LABEL_13;
    }

    v55 = v8;
LABEL_15:
    v55, v19, v20, v21, v22, v23, v24, v25;
    goto LABEL_16;
  }

  v6 = 7104878;
  if ((a1 & 1) == 0)
  {
    v8 = 0xE300000000000000;
    goto LABEL_9;
  }

  if (qword_100936840 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_1009519C0);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  0xE300000000000000, v12, v13, v14, v15, v16, v17, v18;
  if (!os_log_type_enabled(v10, v11))
  {
    v55 = 0xE300000000000000;
    goto LABEL_15;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v57 = v27;
  *v26 = 67240450;
  *(v26 + 4) = 1;
  *(v26 + 8) = 2082;
  v28 = sub_10000668C(7104878, 0xE300000000000000, &v57);
  0xE300000000000000, v29, v30, v31, v32, v33, v34, v35;
  *(v26 + 10) = v28;
  _os_log_impl(&_mh_execute_header, v10, v11, "RDSystemAppProtectionGuard: initiate auth finished {success: %{BOOL,public}d, error: %{public}s}", v26, 0x12u);
  sub_10000607C(v27);

LABEL_13:

LABEL_16:

  return a3(a1 & 1, a2);
}

_TtC7remindd19RDXPCStorePerformer *sub_100007A08(uint64_t a1, unint64_t a2)
{
  v3 = sub_100009664(a1, a2);
  sub_100008C44(&off_1008DC8A8);
  return v3;
}

void sub_100007A54(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100007AB0();
  }
}

id sub_100007AB0()
{
  if (qword_1009362C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100949BB0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136446210;
    v7 = *&v2[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16];
    v29 = *&v2[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
    *v30 = v7;
    *&v30[14] = *&v2[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30];
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v8 = swift_allocObject();
    v9 = v8;
    *(v8 + 16) = xmmword_100791340;
    if (((*&v30[28] << 32) & 0xC10000000000) == 0x810000000000)
    {
      v10 = 0xD000000000000011;
    }

    else
    {
      v10 = 0;
    }

    if (((*&v30[28] << 32) & 0xC10000000000) == 0x810000000000)
    {
      v11 = 0x80000001007EECE0;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    *(v8 + 56) = &type metadata for String;
    v12 = sub_100006600();
    v9[8] = v12;
    v9[4] = v10;
    v9[5] = v11;
    v13 = sub_1000063E8();
    v9[12] = &type metadata for String;
    v9[13] = v12;
    v9[9] = v13;
    v9[10] = v14;
    v15 = String.init(format:_:)();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &v28);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v5 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "RDClientConnection: resuming XPC connection {clientIdentity: %{public}s}", v5, 0xCu);
    sub_10000607C(v6);
  }

  v26 = *&v2[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection];

  return [v26 resume];
}

uint64_t sub_100007CF0(int a1)
{
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7, v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8, v10);
  v28 = sub_100007F54();
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v31, v11, v12, v13, v14, v15, v16, v17;
  v30 = 0xD000000000000019;
  v31 = 0x80000001007F22E0;
  v29 = a1;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v18._object;
  String.append(_:)(v18);
  object, v20, v21, v22, v23, v24, v25, v26;
  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_100007F54()
{
  result = qword_10093E6E0;
  if (!qword_10093E6E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093E6E0);
  }

  return result;
}

unint64_t sub_100007FA0()
{
  result = qword_100936EF0;
  if (!qword_100936EF0)
  {
    sub_1000F514C(&unk_10093FEE0, &qword_100791B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936EF0);
  }

  return result;
}

uint64_t sub_100008004(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, id))
{
  v4 = v3;
  if (qword_100935FC8 != -1)
  {
    v19 = a1;
    v20 = a2;
    swift_once();
    a1 = v19;
    a2 = v20;
  }

  v6 = *&v4[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16];
  v22 = *&v4[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
  v23[0] = v6;
  *(v23 + 14) = *&v4[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30];
  v21[0] = 0x2E636E7973;
  v21[1] = 0xE500000000000000;
  String.append(_:)(*&a1);
  sub_1000081D8(&v22, 0x2E636E7973, 0xE500000000000000);
  0xE500000000000000, v7, v8, v9, v10, v11, v12, v13;
  sub_100009808(v4, v21);
  if (v21[0])
  {
    v15 = swift_unknownObjectRetain();
    a3(v15, 0);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    v16 = objc_opt_self();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 xpcPerformerUnavailableErrorWithDescription:v17];

    swift_willThrow();
    swift_errorRetain();
    a3(0, v18);
  }
}

void sub_1000081D8(uint64_t result, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v4 = v3;
  v7 = *(result + 8);
  v8 = *(result + 44) >> 14;
  if (v8 >= 2)
  {
    if (v8 != 2)
    {
      return;
    }

    v10 = *(result + 16);
    if (!v10)
    {
      v10 = *(result + 32);
      if (!v10)
      {
        v10 = 0xE90000000000003ELL;
        v7 = 0x4E574F4E4B4E553CLL;
        goto LABEL_8;
      }

      v7 = *(result + 24);
    }
  }

  else
  {
    v9._countAndFlagsBits = *result;
    v45[0] = 0x2E64646E696D6572;
    v45[1] = 0xE800000000000000;
    v9._object = v7;
    String.append(_:)(v9);
    v7 = 0x2E64646E696D6572;
    v10 = 0xE800000000000000;
  }

LABEL_8:
  if (qword_100935FC0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100944F80);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  a3, v14, v15, v16, v17, v18, v19, v20;
  v10, v21, v22, v23, v24, v25, v26, v27;
  if (os_log_type_enabled(v12, v13))
  {
    v28 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v28 = 136446466;
    *(v28 + 4) = sub_10000668C(v7, v10, v45);
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_10000668C(a2, a3, v45);
    _os_log_impl(&_mh_execute_header, v12, v13, "LAUNCH EVENT {client: %{public}s, reason: %{public}s}", v28, 0x16u);
    swift_arrayDestroy();
  }

  v45[0] = *(v4 + 16);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  if ((v46 & 1) == 0)
  {
    type metadata accessor for Analytics();
    sub_1000F5104(&unk_100939240, &unk_100798990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 0x6E6F73616572;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = String._bridgeToObjectiveC()();
    *(inited + 56) = 0x746E65696C63;
    *(inited + 64) = 0xE600000000000000;
    v37 = String._bridgeToObjectiveC()();
    v10, v38, v39, v40, v41, v42, v43, v44;
    *(inited + 72) = v37;
    v10 = sub_10038D880(inited);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939250, &unk_100795D30);
    swift_arrayDestroy();
    static Analytics.postEvent(_:payload:duration:)();
  }

  v10, v29, v30, v31, v32, v33, v34, v35;
}

uint64_t sub_10000854C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {
      v6, v10, v11, v12, v13, v14, v15, v16;

      type metadata accessor for RDClientConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_10037F9C8(v7, result + 1, &qword_10093A810, &unk_100797D70, type metadata accessor for RDClientConnection);
    v27 = v26[2];
    if (v26[3] <= v27)
    {
      sub_10001B868(v27 + 1, &qword_10093A810, &unk_100797D70);
    }

    v25 = v8;
    sub_100382EB4(v25, v26);
    v6, v28, v29, v30, v31, v32, v33, v34;
    *v3 = v26;
    goto LABEL_16;
  }

  type metadata accessor for RDClientConnection();
  v18 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v19 = -1 << *(v6 + 32);
  v20 = v18 & ~v19;
  if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v3;
    v25 = a2;
    sub_1000087D0(v25, v20, isUniquelyReferenced_nonNull_native, &qword_10093A810, &unk_100797D70, type metadata accessor for RDClientConnection, sub_10019AA00);
    *v3 = v38;
LABEL_16:
    *a1 = v25;
    return 1;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = *(*(v6 + 48) + 8 * v20);
  *a1 = v35;
  v36 = v35;
  return 0;
}

void sub_1000087D0(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), void (*a7)(void))
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    sub_10001B868(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      a7();
      goto LABEL_12;
    }

    v12 = a6;
    sub_10001B37C(v10 + 1, a4, a5);
  }

  v13 = *v7;
  v14 = NSObject._rawHashValue(seed:)(*(*v7 + 40));
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = *(*(v13 + 48) + 8 * a2);
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100008950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity;
  v6 = *(a1 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 40) | (*(a1 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44) << 32);
  if ((v6 & 0xC00000000800) == 0x800000000000)
  {
    v7 = HIDWORD(v6) & 1;
    type metadata accessor for RDSystemAppProtectionGuard();
    v8 = &off_1008FE398;
  }

  else
  {
    type metadata accessor for RDNoOpAppProtectionGuard();
    LODWORD(v7) = 2;
    v8 = &off_1008FE3A8;
  }

  swift_allocObject();
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  [*(a1 + OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection) auditToken];
  v39 = v45;
  v46 = *(v5 + 30);
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_100791340;
  if (((HIWORD(v46) << 32) & 0xC10000000000) == 0x810000000000)
  {
    v13 = 0xD000000000000011;
  }

  else
  {
    v13 = 0;
  }

  if (((HIWORD(v46) << 32) & 0xC10000000000) == 0x810000000000)
  {
    v14 = 0x80000001007EECE0;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  *(v11 + 56) = &type metadata for String;
  v15 = sub_100006600();
  v12[8] = v15;
  v12[4] = v13;
  v12[5] = v14;
  v16 = sub_1000063E8();
  v12[12] = &type metadata for String;
  v12[13] = v15;
  v12[9] = v16;
  v12[10] = v17;
  v18 = String.init(format:_:)();
  v20 = v19;
  v21 = (v7 == 2) | v7;
  swift_getObjectType();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  v23 = v8[1];

  v23(v40, v10, v42, v43, v44, v39, v18, v20, v21 & 1, sub_100008D30, v22);
  swift_unknownObjectRelease();
  v10, v24, v25, v26, v27, v28, v29, v30;
  v20, v31, v32, v33, v34, v35, v36, v37;
}

uint64_t sub_100008BCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100008C44(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1)->clientIdentity;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *&v3->clientIdentity[8] >> 1)
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_100128F20(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*(result + 16))
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *v3->clientIdentity;
  if ((*&v3->clientIdentity[8] >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3->clientIdentity[v15 + 16], (result + 32), v2);
  result, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3->clientIdentity;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3->clientIdentity = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

unint64_t sub_100008D58()
{
  result = qword_100936EE0;
  if (!qword_100936EE0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936EE0);
  }

  return result;
}

uint64_t sub_100008DB0(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);

  v13, v16, v17, v18, v19, v20, v21, v22;
}

void *sub_100008E70()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 44) >> 14;
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v3 = *v0;
    _StringGuts.grow(_:)(20);
    0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
    v11._countAndFlagsBits = v3;
    v11._object = v1;
    String.append(_:)(v11);
    return 0xD000000000000012;
  }

  return v1;
}

unint64_t sub_100008F38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100007A08(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1000090AC()
{
  v1 = v0;
  *&v77 = 0;
  *(&v77 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(77);
  v76 = v77;
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v75.receiver = v0;
  v75.super_class = type metadata accessor for RDClientConnection();
  v3 = objc_msgSendSuper2(&v75, "description");
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);
  v6, v8, v9, v10, v11, v12, v13, v14;
  v15._object = 0x80000001007FA350;
  v15._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v15);
  v16 = *&v1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16];
  v77 = *&v1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
  v78[0] = v16;
  *(v78 + 14) = *&v1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30];
  v17._countAndFlagsBits = sub_1000063E8();
  object = v17._object;
  String.append(_:)(v17);
  object, v19, v20, v21, v22, v23, v24, v25;
  v26._countAndFlagsBits = 91;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v27._object;
  String.append(_:)(v27);
  v28, v29, v30, v31, v32, v33, v34, v35;
  v36._object = 0x80000001007FA370;
  v36._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v36);
  v37 = [*&v1[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection] serviceName];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
  }

  else
  {
    v41 = 0xE300000000000000;
    v39 = 7104878;
  }

  v42._countAndFlagsBits = v39;
  v42._object = v41;
  String.append(_:)(v42);
  v41, v43, v44, v45, v46, v47, v48, v49;
  v50._countAndFlagsBits = 0x6C417065656B202CLL;
  v50._object = 0xEC0000003D657669;
  String.append(_:)(v50);
  v51 = *&v1[OBJC_IVAR____TtC7remindd18RDClientConnection_keepAliveTransaction];
  if (v51)
  {
    v52 = 1702195828;
  }

  else
  {
    v52 = 0x65736C6166;
  }

  if (v51)
  {
    v53 = 0xE400000000000000;
  }

  else
  {
    v53 = 0xE500000000000000;
  }

  v54 = v53;
  String.append(_:)(*&v52);
  v53, v55, v56, v57, v58, v59, v60, v61;
  v62._countAndFlagsBits = 0xD000000000000012;
  v62._object = 0x80000001007FA390;
  String.append(_:)(v62);
  if (v1[OBJC_IVAR____TtC7remindd18RDClientConnection_isUserInteractive])
  {
    v63 = 1702195828;
  }

  else
  {
    v63 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____TtC7remindd18RDClientConnection_isUserInteractive])
  {
    v64 = 0xE400000000000000;
  }

  else
  {
    v64 = 0xE500000000000000;
  }

  v65 = v64;
  String.append(_:)(*&v63);
  v64, v66, v67, v68, v69, v70, v71, v72;
  v73._countAndFlagsBits = 62;
  v73._object = 0xE100000000000000;
  String.append(_:)(v73);
  return v76;
}

_TtC7remindd19RDXPCStorePerformer *sub_100009664(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100009794(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(&v6->clientIdentity[16], v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(&v7->clientIdentity[16], v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009794(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100009794(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000F5104(&unk_1009388C0, &unk_1007A1760);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  *v4->clientIdentity = a1;
  *&v4->clientIdentity[8] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100009808@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = &a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
  v6 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44];
  if (v6 >> 14 >= 2)
  {
    if (v6 >> 14 == 2)
    {
      v7 = *(v5 + 10) | (*&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44] << 32);
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v7 = 2147483519;
  }

  result = sub_100009A40(8, v7);
  if (!v2)
  {
    if (qword_1009362C0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100949BB0);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v30 = a2;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v14;
      *v13 = 136315138;
      v15 = [v10 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_10000668C(v16, v18, &v33);
      v18, v20, v21, v22, v23, v24, v25, v26;
      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "RDClientConnection: returning sync interface performer from %s", v13, 0xCu);
      sub_10000607C(v14);

      a2 = v30;
    }

    v27 = *&v10[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon + 8];
    ObjectType = swift_getObjectType();
    v29 = *(v5 + 1);
    v31 = *v5;
    v32[0] = v29;
    *(v32 + 14) = *(v5 + 30);
    result = (*(v27 + 32))(&v31, v10, ObjectType, v27);
    *a2 = result;
  }

  return result;
}

uint64_t sub_100009A40(uint64_t result, uint64_t a2)
{
  if ((result & ~a2) != 0)
  {
    v2 = a2;
    v3 = result;
    if (qword_1009367A0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100950D98);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v7 = 136446466;
      v15 = sub_100729CB0(v3, v8, v9, v10, v11, v12, v13, v14);
      v17 = v16;
      v18 = sub_10000668C(v15, v16, &v80);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v7 + 4) = v18;
      *(v7 + 12) = 2082;
      v33 = sub_100729CB0(v2, v26, v27, v28, v29, v30, v31, v32);
      v35 = v34;
      v36 = sub_10000668C(v33, v34, &v80);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v7 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v5, v6, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v7, 0x16u);
      swift_arrayDestroy();
    }

    v44 = objc_opt_self();
    if ((v3 & 0x200) != 0)
    {
      v72 = String._bridgeToObjectiveC()();
      [v44 unauthorizedErrorWithMissingEntitlement:v72];
    }

    else
    {
      v45 = String._bridgeToObjectiveC()();
      sub_100729CB0(v3, v46, v47, v48, v49, v50, v51, v52);
      v54 = v53;
      v55 = String._bridgeToObjectiveC()();
      v54, v56, v57, v58, v59, v60, v61, v62;
      sub_100729CB0(v2, v63, v64, v65, v66, v67, v68, v69);
      v71 = v70;
      v72 = String._bridgeToObjectiveC()();
      v71, v73, v74, v75, v76, v77, v78, v79;
      [v44 unauthorizedErrorWithMissingEntitlement:v45 requestedAccessLevel:v55 currentAccesslevel:v72];
    }

    return swift_willThrow();
  }

  return result;
}

id sub_100009CCC(_OWORD *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1[1];
  *(v5 + 24) = *a1;
  *(v5 + 40) = v6;
  *(v5 + 54) = *(a1 + 30);
  sub_100009DAC(a1, &v9);
  v7 = sub_100009E08(sub_10000F13C, v5, a1, a2);

  return v7;
}

id sub_100009E08(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v8 = v4[2];
  v7 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v12 = v4[6];
  v11 = v4[7];
  v22 = type metadata accessor for RDXPCSyncInterfacePerformer();
  v13 = objc_allocWithZone(v22);
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_queue] = v8;
  *&v13[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeController] = v7;
  *&v13[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_cloudKitThrottler] = v10;
  *&v13[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_discretionaryCloudKitThrottler] = v9;
  *&v13[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_dataAccessThrottler] = v12;
  *&v13[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_dataAccessRequestsWriter] = v11;
  v14 = &v13[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_storeProvider];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_clientIdentity];
  v16 = *(a3 + 30);
  v17 = a3[1];
  *v15 = *a3;
  *(v15 + 1) = v17;
  *(v15 + 30) = v16;
  swift_unknownObjectWeakAssign();
  v18 = v8;
  v19 = v7;

  sub_100009DAC(a3, v24);
  v23.receiver = v13;
  v23.super_class = v22;
  return objc_msgSendSuper2(&v23, "init");
}

_OWORD *sub_100009F5C(_OWORD *a1, void *a2)
{
  v5 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v5, v6);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = *(v2 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_debugPerformer);
    v9 = a2;
    v10 = sub_1003E470C(v9, v2, v8);
  }

  else
  {
    v10 = *(v2 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_storeController);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v51 = v10;
  if (!Strong)
  {
    v15 = v10;
    goto LABEL_8;
  }

  v12 = *(Strong + OBJC_IVAR____TtC7remindd8RDDaemon_templateOperationQueue);
  v13 = Strong;

  v14 = v10;

  if (!v12)
  {
LABEL_8:
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    goto LABEL_9;
  }

  sub_10000A87C(v12 + 16, v60);

LABEL_9:
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v18 = a1[1];
  *(v17 + 24) = *a1;
  *(v17 + 16) = v16;
  *(v17 + 40) = v18;
  *(v17 + 54) = *(a1 + 30);
  v19 = *(v2 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_contactInteractionWriter);
  v47 = *(v2 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_dataAccessRequestsWriter);
  v48 = v19;
  sub_10000A87C(v2 + OBJC_IVAR____TtC7remindd11RDXPCDaemon_coreSuggestionsHandler, v59);
  sub_10000C948(v60, v58);
  v20 = sub_10000C9DC(v59, v59[3]);
  v49 = &v44;
  v21 = __chkstk_darwin(v20, v20);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v26 = type metadata accessor for RDCoreSuggestionsController();
  v56 = v26;
  v57 = &off_1008F0550;
  v55[0] = v25;
  v45 = type metadata accessor for RDXPCStorePerformer();
  v27 = objc_allocWithZone(v45);
  v28 = sub_10000C9DC(v55, v56);
  v46 = &v44;
  v29 = __chkstk_darwin(v28, v28);
  v31 = (&v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31, v29);
  v33 = *v31;
  v54[3] = v26;
  v54[4] = &off_1008F0550;
  v54[0] = v33;
  *&v27[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_sharingObserverForAccountID] = _swiftEmptyDictionarySingleton;
  v34 = OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_shareRecordIDToRootRecordID;
  sub_100009DAC(a1, v53);
  *&v27[v34] = sub_10000A8E0(&_swiftEmptyArrayStorage);
  v35 = OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_shareRecordIDToRootRecordIDLock;
  v53[0] = &_swiftEmptyArrayStorage;
  sub_10000D458(&qword_100936E60, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB90(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v27[v35] = UnfairLock.init(options:)();
  v36 = v51;
  *&v27[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController] = v51;
  v37 = &v27[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity];
  v38 = *(a1 + 30);
  v39 = a1[1];
  *v37 = *a1;
  *(v37 + 1) = v39;
  *(v37 + 30) = v38;
  v40 = &v27[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeProvider];
  *v40 = sub_100018000;
  v40[1] = v17;
  v41 = v48;
  *&v27[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_dataAccessRequestsWriter] = v47;
  *&v27[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_contactInteractionWriter] = v41;
  sub_10000A87C(v54, &v27[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_coreSuggestionsHandler]);
  sub_10000C948(v58, &v27[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_publicCloudDatabaseController]);
  sub_100009DAC(a1, v53);
  v52.receiver = v27;
  v52.super_class = v45;

  v42 = objc_msgSendSuper2(&v52, "init");

  sub_10000CBE4(v58);
  sub_10000CBE4(v60);
  sub_10000607C(v54);
  sub_10000607C(v55);
  sub_10000607C(v59);
  return v42;
}

uint64_t sub_10000A4DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t initializeWithCopy for RDClientIdentity(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *(a2 + 22);
  v9 = *(a2 + 10);
  sub_10000C71C(*a2, v4, v5, v6, v7, v9 | (v8 << 32));
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 44) = v8;
  *(a1 + 40) = v9;
  return a1;
}

uint64_t sub_10000A83C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A87C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000AA28()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd18RDClientConnection_xpcConnection);
  aBlock[4] = sub_1004BE8A8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10056A480;
  aBlock[3] = &unk_1008F4438;
  v2 = _Block_copy(aBlock);
  v3 = [v1 remoteObjectProxyWithErrorHandler:v2];
  _Block_release(v2);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000F5104(&qword_100949CF0, qword_1007AE108);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10000AB38()
{
  result = qword_100936E90;
  if (!qword_100936E90)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936E90);
  }

  return result;
}

unint64_t sub_10000AB90()
{
  result = qword_100936EA0;
  if (!qword_100936EA0)
  {
    sub_1000F514C(&unk_100939E50, &unk_100791AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936EA0);
  }

  return result;
}

void sub_10000ABF4(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, void *a2@<X2>, char *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v322 = a4;
  v314 = a2;
  v295 = a5;
  v297 = type metadata accessor for REMAccountsListDataView.Diff();
  v296 = *(v297 - 8);
  __chkstk_darwin(v297, v7);
  v294 = &v288 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v304 = &v288 - v11;
  v303 = type metadata accessor for REMAccountsListDataView.Model();
  v302 = *(v303 - 8);
  __chkstk_darwin(v303, v12);
  v301 = &v288 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v305 = &v288 - v16;
  v299 = type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result();
  v298 = *(v299 - 8);
  __chkstk_darwin(v299, v17);
  v306 = &v288 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Style = type metadata accessor for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle();
  v308 = *(Style - 8);
  __chkstk_darwin(Style, v19);
  v307 = &v288 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000F5104(&qword_100948B80, &qword_1007ACB90);
  __chkstk_darwin(v21 - 8, v22);
  v318 = &v288 - v23;
  v24 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  v315 = *(v24 - 8);
  v316 = v24;
  __chkstk_darwin(v24, v25);
  v300 = &v288 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v313 = &v288 - v29;
  __chkstk_darwin(v30, v31);
  v310 = &v288 - v32;
  v33 = type metadata accessor for REMAccountsListDataView.CachablePropertyFetchStyle();
  v34 = *(v33 - 8);
  v319 = v33;
  v320 = v34;
  __chkstk_darwin(v33, v35);
  v311 = &v288 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v38);
  v317 = &v288 - v39;
  v40 = sub_1000F5104(&qword_100948B88, &unk_1007ACB98);
  __chkstk_darwin(v40 - 8, v41);
  v43 = &v288 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44, v45);
  v47 = &v288 - v46;
  __chkstk_darwin(v48, v49);
  v51 = &v288 - v50;
  v52 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v53 = *(v52 - 8);
  __chkstk_darwin(v52, v54);
  v56 = &v288 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v326;
  v58 = sub_10000EAF8(a1, a3);
  if (!v57)
  {
    v325 = v53;
    v291 = v47;
    v289 = v43;
    v290 = a3;
    v326 = a1;
    v293 = v51;
    v312 = 0;
    v328 = v58;
    v59 = v58;
    v60 = REMAccountsListDataView.FetchOptions.fetchAccounts.getter();
    v292 = v59;
    if (v60)
    {
      v327 = &_swiftEmptyArrayStorage;
      v61 = *v59->clientIdentity;
      if (v61)
      {
        clientIdentity = v325->clientIdentity;
        v62 = *v325->clientIdentity;
        v64 = v59 + ((v325->dataAccessRequestsWriter[2] + 32) & ~v325->dataAccessRequestsWriter[2]);
        v324 = *&v325->storeProvider[10];
        v325 = v62;
        v65 = (clientIdentity - 8);
        v323 = &_swiftEmptyArrayStorage;
        do
        {
          v66 = clientIdentity;
          (v325)(v56, v64, v52);
          v67 = REMAccountsListDataView.Model.Account.account.getter();
          v68 = [v67 objectID];

          v69 = [(RDXPCStorePerformer *)v326 persistentStoreOfAccountWithAccountID:v68];
          (*v65)(v56, v52);
          if (v69)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v323 = v327;
          }

          v64 += v324;
          --v61;
          clientIdentity = v66;
        }

        while (v61);
      }

      else
      {
        v323 = &_swiftEmptyArrayStorage;
      }

      v73 = [objc_opt_self() localInternalAccountID];
      v71 = v326;
      v74 = [(RDXPCStorePerformer *)v326 persistentStoreOfAccountWithAccountID:v73];

      v72 = v320;
      if (v74)
      {
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007953F0;
        *(inited + 32) = v74;
        v327 = v323;

        sub_100012884(inited);
        v70 = v327;
      }

      else
      {
        v70 = v323;
      }
    }

    else
    {
      v70 = 0;
      v323 = 0;
      v71 = v326;
      v72 = v320;
    }

    v76 = v317;
    v77 = v318;
    v324 = objc_opt_self();
    v78 = [v324 daemonUserDefaults];
    REMAccountsListDataView.FetchOptions.fetchReminderCounts.getter();
    v79 = *(v72 + 88);
    v320 = v72 + 88;
    v325 = v79;
    v80 = (v79)(v76, v319);
    v81 = enum case for REMAccountsListDataView.CachablePropertyFetchStyle.doNotFetch(_:);
    if (v80 == enum case for REMAccountsListDataView.CachablePropertyFetchStyle.doNotFetch(_:))
    {

      v70, v82, v83, v84, v85, v86, v87, v88;
      v89 = v291;
      (*(v315 + 56))(v291, 1, 1, v316);
      LODWORD(v70) = 0;
      goto LABEL_25;
    }

    if (v80 == enum case for REMAccountsListDataView.CachablePropertyFetchStyle.cachedOrStore(_:))
    {
      sub_1000312B8(&off_1008F37F8, v77);
      v90 = sub_1000F5104(&qword_100948BB0, &qword_1007ACBC0);
      if ((*(*(v90 - 8) + 48))(v77, 1, v90) != 1)
      {
        v70, v91, v92, v93, v94, v95, v96, v97;
        v124 = *(v77 + *(v90 + 48));
        v126 = v315;
        v125 = v316;
        v127 = v310;
        (*(v315 + 32))(v310, v77, v316);
        v70 = v291;
        (*(v126 + 16))(v291, v127, v125);
        (*(v126 + 56))(v70, 0, 1, v125);
        sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
        v128 = static NSObject.== infix(_:_:)();

        v71 = v326;
        v129 = v125;
        v89 = v70;
        LODWORD(v70) = v128;
        (*(v126 + 8))(v127, v129);
        goto LABEL_25;
      }

      sub_1000050A4(v77, &qword_100948B80, &qword_1007ACB90);
    }

    else if (v80 != enum case for REMAccountsListDataView.CachablePropertyFetchStyle.store(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_88;
    }

    v99 = v313;
    v98 = v314;
    v100 = v312;
    sub_10049A7D8(v71, v314, v290, v70, v313);
    v312 = v100;
    if (v100)
    {
      v292, v101, v102, v103, v104, v105, v106, v107;

      v70, v108, v109, v110, v111, v112, v113, v114;
      v323, v115, v116, v117, v118, v119, v120, v121;
      return;
    }

    v70, v101, v102, v103, v104, v105, v106, v107;
    sub_1004A507C(v98, v78, v99);

    v123 = v315;
    v122 = v316;
    v89 = v291;
    (*(v315 + 32))(v291, v99, v316);
    LODWORD(v70) = 1;
    (*(v123 + 56))(v89, 0, 1, v122);
LABEL_25:
    v130 = v293;
    sub_100031B58(v89, v293, &qword_100948B88, &unk_1007ACB98);
    v131 = v323;
    v132 = v312;
    sub_100031BC0(v71, 2, 0, v323);
    if (v132)
    {
      sub_1000050A4(v130, &qword_100948B88, &unk_1007ACB98);
      v292, v141, v142, v143, v144, v145, v146, v147;
      v131, v148, v149, v150, v151, v152, v153, v154;
      return;
    }

    v155 = v133;
    v131, v134, v135, v136, v137, v138, v139, v140;
    if (v155 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_30:
        if ((v155 & 0xC000000000000001) != 0)
        {
          v163 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_78;
          }

          v163 = *(v155 + 32);
        }

        v171 = v163;
        v155, v164, v165, v166, v167, v168, v169, v170;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v172 = swift_allocObject();
        *(v172 + 16) = xmmword_1007953F0;
        *(v172 + 32) = v171;
        v155 = v171;
        v130 = sub_1000271D0(v172, v290);
        v172, v173, v174, v175, v176, v177, v178, v179;
        if (!(v130 >> 62))
        {
          if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_35:
            if ((v130 & 0xC000000000000001) != 0)
            {
              v180 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_82;
              }

              v180 = *(v130 + 32);
            }

            v181 = v180;

            v130, v182, v183, v184, v185, v186, v187, v188;
            goto LABEL_42;
          }

          goto LABEL_79;
        }

LABEL_78:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_35;
        }

LABEL_79:

        v189 = v130;
        goto LABEL_41;
      }
    }

    else if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v189 = v155;
LABEL_41:
    v189, v156, v157, v158, v159, v160, v161, v162;
    v181 = 0;
LABEL_42:
    v190 = REMAccountsListDataView.FetchOptions.fetchHashtagLabels.getter();
    v191 = v311;
    if (v190)
    {
      sub_100012D90(v71);
      v193 = v192;
    }

    else
    {
      v193 = &_swiftEmptyArrayStorage;
    }

    REMAccountsListDataView.FetchOptions.fetchSmartListHashtagLabels.getter();
    v194 = (v325)(v191, v319);
    v195 = v289;
    if (v194 == v81)
    {
      v196 = 0;
      v197 = &_swiftEmptyArrayStorage;
      v198 = v290;
      goto LABEL_52;
    }

    v325 = v193;
    LODWORD(v318) = v70;
    if (v194 == enum case for REMAccountsListDataView.CachablePropertyFetchStyle.cachedOrStore(_:))
    {
      v199 = &enum case for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle.cachedOrStore(_:);
      v200 = v314;
      v201 = Style;
      v202 = v308;
LABEL_51:
      v70 = v307;
      (*(v202 + 104))(v307, *v199, v201);
      type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation();
      v203 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v204 = [v324 daemonUserDefaults];
      v205 = v306;
      sub_100035608(v326, v204, &off_1008F7C98, v200, v70, v306);

      v206 = v202;
      v197 = REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.labels.getter();
      v207 = REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.isUpToDate.getter();

      (*(v298 + 8))(v205, v299);
      (*(v206 + 8))(v70, v201);
      v196 = v207;
      v198 = v290;
      v195 = v289;
      LOBYTE(v70) = v318;
      v193 = v325;
LABEL_52:
      sub_100036A44(v326, v198, v322, &v328);
      v312 = 0;
      v324 = v215;
      if ((REMAccountsListDataView.FetchOptions.fetchUserDefinedVisibilityOfPredefinedSmartLists.getter() & 1) != 0 && (v216 = sub_10003A1B8()) != 0)
      {
        v217 = v216;
        v218 = v312;
        sub_10003A680(v326, v216);
        v312 = v218;
        if (v218)
        {
          sub_1000050A4(v293, &qword_100948B88, &unk_1007ACB98);
          v292, v219, v220, v221, v222, v223, v224, v225;
          v324, v226, v227, v228, v229, v230, v231, v232;
          v197, v233, v234, v235, v236, v237, v238, v239;

          v193, v208, v209, v210, v211, v212, v213, v214;
          return;
        }

        v325 = v193;
        LODWORD(v323) = v196;
      }

      else
      {
        v325 = v193;
        LODWORD(v323) = v196;
        sub_10003AFEC(&_swiftEmptyArrayStorage);
      }

      sub_10003B0D8(v293, v195);
      v240 = v195;
      v241 = v315;
      v242 = *(v315 + 48);
      v243 = v195;
      v244 = v316;
      if (v242(v243, 1, v316) == 1)
      {
        static REMAccountsListDataView.ReminderCounts.zero.getter();
        v245 = v242(v240, 1, v244);
        v246 = v301;
        if (v245 != 1)
        {
          sub_1000050A4(v240, &qword_100948B88, &unk_1007ACB98);
        }
      }

      else
      {
        (*(v241 + 32))(v300, v240, v244);
        v246 = v301;
      }

      v155 = v181;
      REMAccountsListDataView.Model.init(accounts:defaultList:reminderCounts:hashtagLabels:smartListHashtagLabels:userDefinedVisibilityOfPredefinedSmartLists:orderedPinnedLists:)();
      v247 = [v321 fetchResultTokenToDiffAgainst];
      if (v247)
      {
        v248 = v247;
        v249 = v312;
        sub_10003CAE0(v247);
        v312 = v249;
        v250 = v303;
        v251 = v302;
        v252 = v304;
        if (v249)
        {

          (*(v251 + 8))(v305, v250);
LABEL_74:
          sub_1000050A4(v293, &qword_100948B88, &unk_1007ACB98);
          return;
        }

LABEL_67:
        REMAccountsListDataView.Diff.init(updatedAccountObjectIDs:updatedListObjectIDs:)();
        sub_1000F5104(&qword_100948B90, &qword_1007ACBA8);
        v253 = *(sub_1000F5104(&qword_100948B98, &qword_1007ACBB0) - 8);
        v254 = *(v253 + 72);
        v255 = (*(v253 + 80) + 32) & ~*(v253 + 80);
        v256 = swift_allocObject();
        *(v256 + 16) = xmmword_100791340;
        v257 = v256 + v255;
        v322 = v155;
        if (v70)
        {
          v258 = type metadata accessor for REMAccountsListDataView.CachableProperty();
          (*(*(v258 - 8) + 56))(v257, 1, 1, v258);
        }

        else
        {
          v259 = enum case for REMAccountsListDataView.CachableProperty.reminderCounts(_:);
          v260 = type metadata accessor for REMAccountsListDataView.CachableProperty();
          v261 = *(v260 - 8);
          (*(v261 + 104))(v257, v259, v260);
          (*(v261 + 56))(v257, 0, 1, v260);
          v252 = v304;
        }

        v262 = v252;
        if (v323)
        {
          v263 = type metadata accessor for REMAccountsListDataView.CachableProperty();
          (*(*(v263 - 8) + 56))(v257 + v254, 1, 1, v263);
        }

        else
        {
          v264 = enum case for REMAccountsListDataView.CachableProperty.smartListHashtagLabels(_:);
          v265 = type metadata accessor for REMAccountsListDataView.CachableProperty();
          v266 = *(v265 - 8);
          (*(v266 + 104))(v257 + v254, v264, v265);
          (*(v266 + 56))(v257 + v254, 0, 1, v265);
        }

        v327 = v256;
        sub_1000F5104(&qword_100948BA0, &qword_1007ACBB8);
        type metadata accessor for REMAccountsListDataView.CachableProperty();
        sub_10000CB48(&qword_100948BA8, &qword_100948BA0, &qword_1007ACBB8, &protocol conformance descriptor for [A]);
        v267 = Sequence.removingNils<A>()();
        v256, v268, v269, v270, v271, v272, v273, v274;
        sub_10003B148(v267);
        v267, v275, v276, v277, v278, v279, v280, v281;
        v282 = v302;
        v283 = v246;
        v284 = v305;
        v285 = v303;
        (*(v302 + 16))(v283, v305, v303);
        v286 = v296;
        v287 = v297;
        (*(v296 + 16))(v294, v262, v297);
        REMAccountsListDataView.Invocation.Result.init(model:outdatedProperties:diff:)();

        (*(v286 + 8))(v262, v287);
        (*(v282 + 8))(v284, v285);
        goto LABEL_74;
      }

      v252 = v304;
      if (!(&_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_67;
      }

LABEL_82:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(&_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(&_swiftEmptyArrayStorage);
      }

      v252 = v304;
      v246 = v301;
      goto LABEL_67;
    }

    v200 = v314;
    v201 = Style;
    v202 = v308;
    if (v194 == enum case for REMAccountsListDataView.CachablePropertyFetchStyle.store(_:))
    {
      v199 = &enum case for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle.store(_:);
      goto LABEL_51;
    }

LABEL_88:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

void sub_10000C2B8(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = 1;
  *a1 = v2;
}

void sub_10000C2CC(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v7 = a5;
  v8 = &a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
  v9 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
  v10 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 8];
  v11 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 24];
  v91 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16];
  v12 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 32];
  v13 = *(v8 + 10) | (*(v8 + 22) << 32);
  if (*&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44] >> 14 > 1u)
  {
    if (*&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 44] >> 14 == 2)
    {
      v15 = *&a1[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 32];
      v16 = v9;
      v17 = v9;
      v12 = a3;
      v72 = a4;
      sub_10000C71C(v16, v10, v91, v11, v15, v13);

      v15, v19, v20, v21, v22, v23, v24, v25;
      LODWORD(v77[0]) = v17;
      v77[1] = v10;
      v77[2] = v91;
      v77[3] = a2;
      v77[4] = v12;
      v78 = v13;
      LOBYTE(v79) = BYTE4(v13) & 1;
      HIBYTE(v79) = BYTE5(v13) & 1;
      v26 = v77[0];
      v66 = (v13 | (v79 << 32)) & 0x101FFFFFFFFLL | 0xFFFF800000000000;
      LODWORD(v80) = v17;
      v7 = a5;
      v81 = v10;
      v82 = v91;
      v83 = a2;
      v84 = v12;
      v85 = v13;
      v86 = BYTE4(v13) & 1;
      v87 = BYTE5(v13) & 1;
      sub_10000C774(v77, v76);
      sub_10000C8D4(&v80);
      a4 = v72;
      v11 = a2;
      v9 = v26;
      v13 = v66;
    }
  }

  else
  {
    v14 = a4;

    a4 = v14;
  }

  v88[0] = v9;
  v88[1] = v10;
  v88[2] = v91;
  v88[3] = v11;
  v27 = v12;
  v88[4] = v12;
  v89 = v13;
  v90 = WORD2(v13);
  if (qword_100935FC8 != -1)
  {
    v65 = a4;
    swift_once();
    a4 = v65;
  }

  v80 = 0x2E65726F7473;
  v81 = 0xE600000000000000;
  v28._countAndFlagsBits = a4;
  v28._object = v7;
  String.append(_:)(v28);
  v29 = v81;
  sub_1000081D8(v88, v80, v81);
  v29, v30, v31, v32, v33, v34, v35, v36;
  v37 = *(v8 + 22);
  if (v37 >> 14 >= 2)
  {
    v39 = v27;
    if (v37 >> 14 == 3)
    {
      v38 = 0x7FFFFFFFLL;
    }

    else
    {
      v38 = *(v8 + 10) | (*(v8 + 22) << 32);
    }
  }

  else
  {
    v38 = 2147483519;
    v39 = v27;
  }

  sub_100009A40(1, v38);
  if (v73)
  {
    sub_10000CC4C(v9, v10, v91, v11, v39, v13, v40, v41);
  }

  else
  {
    if (qword_1009362C0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100006654(v42, qword_100949BB0);
    v43 = a1;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    v74 = v45;
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v80 = v67;
      *v46 = 136315138;
      v69 = v43;
      v47 = [v43 description];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = v48;
      v39 = v27;
      v52 = sub_10000668C(v51, v50, &v80);
      v50, v53, v54, v55, v56, v57, v58, v59;
      *(v46 + 4) = v52;
      v43 = v69;
      _os_log_impl(&_mh_execute_header, v44, v74, "RDClientConnection: returning storePerformer from %s", v46, 0xCu);
      sub_10000607C(v67);
    }

    v60 = *&v43[OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon + 8];
    ObjectType = swift_getObjectType();
    v62 = (*(v60 + 24))(v88, a6, ObjectType, v60);
    sub_10000CC4C(v9, v10, v91, v11, v39, v13, v63, v64);
    *a7 = v62;
  }
}

void sub_10000C71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = (a6 >> 46) & 3;
  if (v7 >= 2)
  {
    if (v7 == 3)
    {
      return;
    }
  }
}

uint64_t initializeWithCopy for RDClientIdentity.XPCClientIdentity(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);

  return a1;
}

void destroy for RDSavedHashtag(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 16), a2, a3, a4, a5, a6, a7, a8;
  v16 = *(a1 + 32);

  v16, v9, v10, v11, v12, v13, v14, v15;
}

void sub_10000C864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10000C948(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100945EF8, &qword_1007B1F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C9DC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_10000CA50(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1000F5104(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000CB48(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CB90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CBE4(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100945EF8, &qword_1007B1F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000CC4C(uint64_t a1, char *a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4, void *a5, unint64_t a6, void *a7, void *a8)
{
  v9 = (a6 >> 46) & 3;
  if (v9 >= 2)
  {
    if (v9 == 3)
    {
      return;
    }

    a3, a2, a3, a4, a5, a6, a7, a8;
    a2 = a5;
  }

  a2, a2, a3, a4, a5, a6, a7, a8;
}

uint64_t sub_10000CCAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, id))
{
  sub_10000C2CC(v6, a1, a2, a4, a5, a3, &v13);
  if (v13)
  {
    v9 = swift_unknownObjectRetain();
    a6(v9, 0);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 xpcPerformerUnavailableErrorWithDescription:v11];

    swift_willThrow();
    swift_errorRetain();
    a6(0, v12);
  }
}

uint64_t sub_10000CDE4(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000060C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CE28(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000060C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CE78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a5;
  *&v57[8] = sub_1000060C8(0, &qword_10094C9D0, REMStoreSwiftInvocation_ptr);
  *&v56 = a1;
  sub_1000F5104(&qword_10094C9D8, &qword_1007B1FA8);
  v15 = a1;
  throwingCast<A>(_:as:failureMessage:)();
  v16 = sub_10000607C(&v56);
  v17 = (*(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeProvider))(v16);
  v49 = &v49;
  v53 = 0;
  v18 = *(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v56 = *(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  *v57 = v18;
  *&v57[14] = *(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  __chkstk_darwin(v17, v19);
  v48[2] = &v53;
  v48[3] = v54;
  v48[4] = &v55;
  v48[5] = v20;
  v48[6] = a2;
  v48[7] = a3;
  v48[8] = a4;
  sub_10001803C(&v56, a8, v48, &v50);
  v21 = v50;
  v22 = v51;
  v23 = v52;
  sub_100029344(v50, v51);
  sub_10003B59C(v23);
  v25 = v24;
  v23, v26, v27, v28, v29, v30, v31, v32;
  v33 = v53;
  v34 = objc_allocWithZone(REMStoreSwiftInvocationResult);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v36 = Dictionary._bridgeToObjectiveC()().super.isa;
  v25, v37, v38, v39, v40, v41, v42, v43;
  v44 = [v34 initWithResultData:isa storages:v36 latestFetchResultToken:v33];

  sub_10001BBA0(v21, v22);
  v45 = *(a7 + 16);
  v46 = v44;
  v45(a7, v46, 0);

  sub_10001BBA0(v21, v22);
  return sub_10000607C(v54);
}

uint64_t sub_10000D338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D3C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D4A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000F5104(&qword_100943D48, &qword_1007A4520);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v43 = v9;
    v44 = v5;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    v39 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v42 = *(v6 + 72);
      v26 = v25 + v42 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v44);
        sub_100005EE0((*(v10 + 56) + 32 * v24), v45);
      }

      else
      {
        (*v37)(v43, v26, v44);
        sub_100005EF0(*(v10 + 56) + 32 * v24, v45);
      }

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v38;
        v10 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v38;
      v10 = v39;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v41)((*(v12 + 48) + v42 * v20), v43, v44);
      result = sub_100005EE0(v45, (*(v12 + 56) + 32 * v20));
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_10000D980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a10(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    return v12;
  }

  return result;
}

NSObject *sub_10000D9BC(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = type metadata accessor for REMAccountsListDataView.Invocation.Result();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for REMAccountsListDataView.FetchOptions();
  v12 = *(Options - 8);
  __chkstk_darwin(Options, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_100950840, &type metadata accessor for REMAccountsListDataView.FetchOptions, &protocol conformance descriptor for REMAccountsListDataView.FetchOptions);
  v27 = Options;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950848, &qword_1007B67F0);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = *(v12 + 32);
    v58 = v72;
    v57(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v60 = v80;
    sub_10000ABF4(v68, v69, v24, v58, v70);
    v76 = v60;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v61 = v24;
    v62 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v62;

    v63 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v63(v81, 0);
    sub_10000F85C(&qword_100950850, &type metadata accessor for REMAccountsListDataView.Invocation.Result, &protocol conformance descriptor for REMAccountsListDataView.Invocation.Result);
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v70, v64);
    (*(v56 + 8))(v72, v27);
  }

  return v31;
}

uint64_t sub_10000E350(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100005EE0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_10000E46C(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for CodingUserInfoKey();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1000050A4(a1, &qword_100942148, &qword_1007A25C8);
    sub_100369004(a2, v9);
    v7 = type metadata accessor for CodingUserInfoKey();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_1000050A4(v9, &qword_100942148, &qword_1007A25C8);
  }

  return result;
}

_OWORD *sub_10000E46C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10000F660(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100373FC4();
      goto LABEL_7;
    }

    sub_10000D528(v18, a3 & 1);
    v24 = sub_10000F660(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10000E644(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  sub_10000607C(v22);

  return sub_100005EE0(a1, v22);
}

_OWORD *sub_10000E644(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100005EE0(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

id sub_10000E72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791300;

  v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v9)
  {
    v10 = v8;
    v11 = v9;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = v10;
    *(v7 + 40) = v11;
    v12 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v7, v14, v15, v16, v17, v18, v19, v20;
    v21 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

    return v21;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v23._object = 0x80000001007EC120;
    v23._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v23);
    sub_1000F5104(a4, a5);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10000E8EC(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&unk_100939D90, "8\n\r");
    v8 = sub_1000103CC((v3 + 64));
    sub_100010364(a2, v8, &unk_100939D90, "8\n\r");
    v9 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v18 = [objc_opt_self() predicateWithFormat:v9 argumentArray:isa];

    sub_1000050A4(a2, &unk_100939D90, "8\n\r");
    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&qword_10093F530, &qword_10079B220);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10000EAF8(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v7 = &_swiftEmptyArrayStorage;
  if (REMAccountsListDataView.FetchOptions.fetchAccounts.getter())
  {
    v76 = v2;
    v77 = a1;
    v8 = sub_10000F8A4(6uLL, 0, 7u);
    if (qword_1009360A0 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v9 = qword_100974E38;
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v10 = [objc_allocWithZone(NSFetchRequest) init];
      v11 = [swift_getObjCClassFromMetadata() entity];
      [v10 setEntity:v11];

      [v10 setAffectedStores:0];
      [v10 setPredicate:v8];
      v78 = _swiftEmptySetSingleton;

      sub_100010864(v12);
      v9, v13, v14, v15, v16, v17, v18, v19;
      v20 = v78;
      v21 = sub_1002137C0(v78);
      v20, v22, v23, v24, v25, v26, v27, v28;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v21, v30, v31, v32, v33, v34, v35, v36;
      [v10 setPropertiesToFetch:isa];

      v37 = NSManagedObjectContext.fetch<A>(_:)();
      if (v4)
      {
        break;
      }

      v78 = sub_10000EEFC(v38);
      sub_100011170(&v78);
      v37, v39, v40, v41, v42, v43, v44, v45;
      v8 = v78;
      v46 = sub_100019514(v78, a2);
      v4 = 0;
      v78 = v7;
      v73 = v46;
      v74 = a2;
      if ((v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
      {
        v46 = _CocoaArrayWrapper.endIndex.getter();
        v7 = v46;
      }

      else
      {
        v7 = *(v8 + 16);
      }

      v48 = 0;
      a2 = v8 & 0xC000000000000001;
      v75 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if (v7 == v48)
        {
          __chkstk_darwin(v46, v47);
          v72[2] = v76;
          v72[3] = v77;
          v54 = v75;
          v72[4] = v74;
          v72[5] = v75;
          v55 = v73;
          sub_10001BC4C(v8, v73, sub_10001E2A8, v72);
          v7 = v56;
          v54, v57, v58, v59, v60, v61, v62, v63;
          v55, v64, v65, v66, v67, v68, v69, v70;

          return v7;
        }

        if (a2)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v48 >= *(v8 + 16))
          {
            goto LABEL_21;
          }

          v49 = *(v8 + 8 * v48 + 32);
        }

        v50 = v49;
        v51 = (&v48->super.isa + 1);
        if (__OFADD__(v48, 1))
        {
          break;
        }

        v52 = [v49 objectID];
        v53 = [v52 persistentStore];

        v48 = (v48 + 1);
        if (v53)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v46 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v75 = v78;
          v48 = v51;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      swift_once();
    }
  }

  return v7;
}

_TtC7remindd19RDXPCStorePerformer *sub_10000EF34(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  *v4->clientIdentity = a1;
  *&v4->clientIdentity[8] = (2 * (v9 >> 3)) | 1;
  return result;
}

NSString sub_10000EFBC(uint64_t a1, _OWORD *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for RDDaemonController();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
    *v7 = v4;
    *(v7 + 1) = &off_1008F03B0;
    v8 = &v6[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
    v9 = *(a2 + 30);
    v10 = a2[1];
    *v8 = *a2;
    *(v8 + 1) = v10;
    *(v8 + 30) = v9;
    *&v6[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
    v11 = v4;
    sub_100009DAC(a2, v17);
    v16.receiver = v6;
    v16.super_class = v5;
    v12 = objc_msgSendSuper2(&v16, "init");
    v13 = [objc_allocWithZone(REMStore) initWithDaemonController:v12];
  }

  else
  {
    v14 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();
    [v14 internalErrorWithDebugDescription:v13];

    swift_willThrow();
  }

  return v13;
}

uint64_t sub_10000F18C@<X0>(void *a1@<X0>, void **a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t (*a11)(uint64_t))
{
  v40[0] = 0;
  v18 = [a1 latestFetchResultTokenWithError:v40];
  v19 = v40[0];
  if (v18)
  {
    v20 = v18;
    v35 = a9;
    v36 = a8;
    v21 = *a2;
    *a2 = v18;
    v22 = v19;
    v23 = v20;

    v24 = a3[3];
    v25 = a3[4];
    sub_10000F61C(a3, v24);
    v40[3] = a11(a10);
    v40[0] = a4;
    v26 = *(v25 + 8);
    v27 = a4;
    v28 = v26(v40, a1, v23, a5, a6, a7, v36, v24, v25);
    v30 = v29;
    v32 = v31;

    result = sub_10000607C(v40);
    if (!v11)
    {
      *v35 = v28;
      v35[1] = v30;
      v35[2] = v32;
    }
  }

  else
  {
    v34 = v40[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

void sub_10000F4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F500(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) l_accountStoreMap];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(*(a1 + 40) + 8) + 40) addObject:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void *sub_10000F61C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000F660(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000F6C4(a1, v2);
}

unint64_t sub_10000F6C4(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v7 = __chkstk_darwin(v4, v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v9, *(v24 + 48) + v16 * v11, v4, v7);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v9, v4);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_10000F85C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F8A4(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v64 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v64 - v17;
  v67 = &_swiftEmptyArrayStorage;
  if (a3 <= 3u)
  {
    if (a3 <= 1u)
    {
      if (!a3)
      {
        KeyPath = swift_getKeyPath();
        sub_1003FC4C0(a1, a2, 0);
        sub_10039132C(KeyPath, a1, a2);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*v67->clientIdentity >= *&v67->clientIdentity[8] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        LODWORD(v7) = 0;
        goto LABEL_50;
      }

      v32 = swift_getKeyPath();
      if (a1 >> 62)
      {
        v33 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = &_swiftEmptyArrayStorage;
      if (!v33)
      {
        goto LABEL_51;
      }

      v64 = v32;
      v65 = v10;
      v66 = &_swiftEmptyArrayStorage;
      sub_100253218(0, v33 & ~(v33 >> 63), 0);
      if ((v33 & 0x8000000000000000) == 0)
      {
        v35 = 0;
        v34 = v66;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v36 = *(a1 + 8 * v35 + 32);
          }

          v37 = v36;
          v38 = [v36 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v39 = type metadata accessor for UUID();
          (*(*(v39 - 8) + 56))(v18, 0, 1, v39);
          v66 = v34;
          v41 = *v34->clientIdentity;
          v40 = *&v34->clientIdentity[8];
          if (v41 >= v40 >> 1)
          {
            sub_100253218((v40 > 1), v41 + 1, 1);
            v34 = v66;
          }

          ++v35;
          *v34->clientIdentity = v41 + 1;
          sub_100100FB4(v18, v34 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v41);
        }

        while (v33 != v35);
        v32 = v64;
        v10 = v65;
LABEL_51:
        sub_1003EB804(v32, v34);
        goto LABEL_52;
      }

      goto LABEL_78;
    }

    if (a3 == 2)
    {
      v20 = swift_getKeyPath();
      v21 = sub_100270804(a1);
      sub_1003EB828(v20, v21);
LABEL_52:

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v67->clientIdentity >= *&v67->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_55:
      LODWORD(v7) = 0;
LABEL_56:
      v51 = 0;
      goto LABEL_57;
    }

    goto LABEL_38;
  }

  if (a3 <= 5u)
  {
    if (a3 != 4)
    {
      sub_1000F5104(&qword_1009463A8, qword_1007A7BC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      v43 = swift_getKeyPath();
      v44 = REMAccountType.asInt16.getter();
      v45 = sub_100391340(v43, v44);

      *(inited + 32) = v45;
      v46 = swift_getKeyPath();
      v47 = REMAccountType.asInt16.getter();
      v48 = sub_100391340(v46, v47);

      *(inited + 40) = v48;
      sub_100025060(inited);
LABEL_39:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v67->clientIdentity >= *&v67->clientIdentity[8] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      LODWORD(v7) = 0;
      v51 = a1;
      goto LABEL_57;
    }

LABEL_38:
    v49 = swift_getKeyPath();
    v50 = REMAccountType.asInt16.getter();
    sub_100391340(v49, v50);

    goto LABEL_39;
  }

  if (a3 == 6)
  {
    v22 = swift_getKeyPath();
    if (a1 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = &_swiftEmptyArrayStorage;
    if (v23)
    {
      v64 = v22;
      v65 = v10;
      v66 = &_swiftEmptyArrayStorage;
      sub_100253218(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_46:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_50:
        v51 = 1;
        goto LABEL_57;
      }

      v25 = 0;
      v24 = v66;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *(a1 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = [v26 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = type metadata accessor for UUID();
        (*(*(v29 - 8) + 56))(v14, 0, 1, v29);
        v66 = v24;
        v31 = *v24->clientIdentity;
        v30 = *&v24->clientIdentity[8];
        if (v31 >= v30 >> 1)
        {
          sub_100253218((v30 > 1), v31 + 1, 1);
          v24 = v66;
        }

        ++v25;
        *v24->clientIdentity = v31 + 1;
        sub_100100FB4(v14, v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v31);
      }

      while (v23 != v25);
      v22 = v64;
      v10 = v65;
    }

    sub_1003EB804(v22, v24);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v67->clientIdentity >= *&v67->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    LODWORD(v7) = 1;
    goto LABEL_50;
  }

  LODWORD(v7) = 1;
  if (a1 > 3)
  {
    v51 = 1;
    if (__PAIR128__((a1 >= 6) + a2 - 1, a1 - 6) >= 2)
    {
      if (!(a1 ^ 4 | a2))
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      v51 = 1;
      if (!(a1 | a2))
      {
        goto LABEL_57;
      }

      v52 = swift_getKeyPath();
      v53 = REMAccountType.asInt16.getter();
      sub_100391340(v52, v53);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*v67->clientIdentity < *&v67->clientIdentity[8] >> 1)
      {
        goto LABEL_46;
      }

      goto LABEL_79;
    }

    v51 = 1;
    if (!(a1 ^ 2 | a2))
    {
      v62 = swift_getKeyPath();
      _auto_REMAccountTypeForPrimaryCloudKit();
      v63 = REMAccountType.asInt16.getter();
      sub_100391340(v62, v63);
      goto LABEL_52;
    }
  }

LABEL_57:
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v67->clientIdentity >= *&v67->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (v51)
  {
    v54 = swift_getKeyPath();
    sub_10000E704(v54);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v67->clientIdentity >= *&v67->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (v7)
  {
    v55 = swift_getKeyPath();
    v56 = [objc_opt_self() localInternalAccountID];
    v57 = [v56 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = type metadata accessor for UUID();
    (*(*(v58 - 8) + 56))(v10, 0, 1, v58);
    sub_10000E8EC(v55, v10);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v67->clientIdentity >= *&v67->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v59 = swift_getKeyPath();
  v60 = REMAccountType.asInt16.getter();
  sub_10001060C(v59, v60);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v67->clientIdentity >= *&v67->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0();
}

uint64_t sub_100010364(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000F5104(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_1000103CC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_100010430(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100791340;

  v10 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;

    *(v9 + 56) = &type metadata for String;
    *(v9 + 32) = v12;
    *(v9 + 40) = v13;
    *(v9 + 88) = &type metadata for Int16;
    *(v9 + 64) = a2;
    v14 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v9, v16, v17, v18, v19, v20, v21, v22;
    v23 = [objc_opt_self() predicateWithFormat:v14 argumentArray:isa];

    return v23;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v25._object = 0x80000001007EC120;
    v25._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v25);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_100010634(void *result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = result;
  v9 = 0;
  v10 = result[2];
  while (1)
  {
    if (v10 == v9)
    {
      v8, a2, a3, a4, a5, a6, a7, a8;
      sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      &_swiftEmptyArrayStorage, v14, v15, v16, v17, v18, v19, v20;
      v21 = [objc_opt_self() andPredicateWithSubpredicates:isa];

      return v21;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    v11 = *(v8 + 8 * v9++ + 32);
    if (v11)
    {
      v12 = v11;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100010770(unint64_t result, void (*a2)(uint64_t *, uint64_t))
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        a2(&v8, v6);

        ++v5;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10001087C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1000F5104(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));

      sub_1000F5104(a4, a5);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v9 + 32);
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
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v5;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
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
    *v6 = v9;
  }

  return result;
}

uint64_t sub_100010AAC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1000F5104(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      sub_1000F5104(a4, a5);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    v6 = v5;
    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100010D04(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100010D24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100010D24(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = &v10->clientIdentity[16];
  v14 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100010E34(_TtC7remindd19RDXPCStorePerformer *result, SEL a2, id a3, id x3_0, id x4_0, id x5_0, id x6_0, id x7_0)
{
  if (a3)
  {
    result, a2, a3, x3_0, x4_0, x5_0, x6_0, x7_0;
  }
}

void sub_100010E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (qword_100936738 != -1)
  {
    v19 = v9;
    swift_once();
    v9 = v19;
  }

  sub_10001895C(v9, v11, a4, a5, a6);

  v11, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_100010EF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100011110(&unk_10093F510, &qword_10094F630, qword_1007A3430);
          for (i = 0; i != v6; ++i)
          {
            sub_1000F5104(&qword_10094F630, qword_1007A3430);
            v9 = sub_100011090(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100011090(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return j__s7remindd24RDSavedDueDateDeltaAlertVwxx;
  }

  __break(1u);
  return result;
}

uint64_t sub_100011110(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011170(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10043653C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000111EC(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1000111EC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      v9 = v2 / 2;
      if (v2 <= 1)
      {
        v10 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v20[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v20[1] = v9;
      v12 = v10;
      sub_1007524CC(v20, v21, a1, v8, v4, v5, v6, v7);
      *(v11 + 16) = 0;
      v12, v13, v14, v15, v16, v17, v18, v19;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100011300(0, v2, 1, a1);
  }
}

void sub_100011300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
    v67 = *a4;
LABEL_6:
    v65 = v7;
    v66 = a3;
    v23 = *(v6 + 8 * a3);
    v64 = v8;
    while (1)
    {
      v24 = *v7;
      v25 = v23;
      v26 = v24;
      v27 = [v25 accountTypeHost];
      REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();
      v68 = v25;
      if (v5)
      {

        if (qword_100936098 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_100006654(v28, qword_100946390);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Unknown or undefined account type in AccountsListDataView", v31, 2u);
        }

        v5 = 0;
      }

      else
      {

        v32 = v70;
        if (v70 != 4)
        {
          goto LABEL_15;
        }
      }

      v32 = 3;
LABEL_15:
      v33 = v26;
      v34 = [v33 accountTypeHost];
      REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

      if (v69 == 4)
      {
        if (v32 < 3)
        {
          goto LABEL_17;
        }

        v35 = v68;
        if (v32 != 3)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v32 < v69)
        {
LABEL_17:

          goto LABEL_32;
        }

        if (v69 < v32)
        {
LABEL_19:

LABEL_5:
          a3 = v66 + 1;
          v7 = v65 + 8;
          v8 = v64 - 1;
          if (v66 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v35 = v68;
      }

      v36 = [v35 name];
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0xE000000000000000;
      }

      v41 = [v33 name];
      if (v41)
      {
        v42 = v41;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        if (v38 == v43)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v45 = 0xE000000000000000;
        if (!v38)
        {
LABEL_30:
          if (v40 == v45)
          {

            v45, v9, v10, v11, v12, v13, v14, v15;
            v40, v16, v17, v18, v19, v20, v21, v22;
            v6 = v67;
            goto LABEL_5;
          }
        }
      }

      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v45, v47, v48, v49, v50, v51, v52, v53;
      v40, v54, v55, v56, v57, v58, v59, v60;
      v6 = v67;
      if ((v46 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (!v6)
      {
        __break(1u);
        return;
      }

      v61 = *v7;
      v23 = *(v7 + 8);
      *v7 = v23;
      *(v7 + 8) = v61;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_10001184C(_TtC7remindd19RDXPCStorePerformer *a1, void *a2)
{
  type metadata accessor for REMListStorageCDIngestor();
  swift_initStackObject();
  if (qword_100936518 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100006654(v4, qword_10094C3E8);
  v104 = a1;
  __chkstk_darwin(v5, v6);
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
  sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300, &protocol conformance descriptor for [A]);
  v7 = Sequence.map<A>(skippingError:_:)();
  if (v2)
  {

    v8 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v8 = v7;
  }

  v104 = _swiftEmptyDictionarySingleton;
  sub_100011D74(&_swiftEmptyArrayStorage, a1, &v104);
  v10 = v9;
  v103 = _swiftEmptyDictionarySingleton;
  sub_10002BE2C(&_swiftEmptyArrayStorage, a1, &v103);
  v101 = v11;
  v103, v12, v13, v14, v15, v16, v17, v18;
  v104, v19, v20, v21, v22, v23, v24, v25;
  v104 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000F5104(&qword_10093F640, &qword_100796D50);
  sub_10000CB48(&qword_100939BE8, &qword_10093F640, &qword_100796D50, &protocol conformance descriptor for [A]);
  sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
  v26 = Sequence.indexBy<A, B>(key:value:)();
  v8, v27, v28, v29, v30, v31, v32, v33;

  v34 = sub_10002CAF8(v26);
  v26, v35, v36, v37, v38, v39, v40, v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104 = _swiftEmptyDictionarySingleton;
  sub_100011DA0(v34, sub_10002CCBC, 0, isUniquelyReferenced_nonNull_native, &v104);
  v34, v43, v44, v45, v46, v47, v48, v49;
  v50 = v104;
  v104 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000F5104(&qword_10094F660, &unk_1007B1570);
  sub_10000CB48(&qword_1009460B8, &qword_10094F660, &unk_1007B1570, &protocol conformance descriptor for [A]);
  v51 = Sequence.indexBy<A, B>(key:value:)();
  v10, v52, v53, v54, v55, v56, v57, v58;

  v59 = sub_10002CF88(v51);
  v51, v60, v61, v62, v63, v64, v65, v66;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v104 = v50;
  sub_100011DA0(v59, sub_10002CCBC, 0, v67, &v104);
  v59, v68, v69, v70, v71, v72, v73, v74;
  v75 = v104;
  v104 = v101;
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = Sequence.indexBy<A, B>(key:value:)();
  v101, v77, v78, v79, v80, v81, v82, v83;

  v84 = sub_10002CAF8(v76);
  v76, v85, v86, v87, v88, v89, v90, v91;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v104 = v75;
  sub_100011DA0(v84, sub_10002CCBC, 0, v92, &v104);
  v84, v93, v94, v95, v96, v97, v98, v99;
  type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();
  v100 = a2;
  REMStoreObjectsContainer.init(store:storages:)();
}

unint64_t sub_100011DA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_10002CB0C(&v43);
  v12 = v43;
  if (!v43)
  {
    goto LABEL_25;
  }

  sub_100005EE0(v44, v42);
  v13 = *a5;
  result = sub_10002B924(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_10002CD0C(v19, a4 & 1);
    result = sub_10002B924(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_100373210();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 32 * result;
    sub_100005EF0(*(*a5 + 56) + 32 * result, v41);
    sub_10000607C(v42);

    v24 = *(v22 + 56);
    sub_10000607C((v24 + v23));
    sub_100005EE0(v41, (v24 + v23));
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + 8 * result) = v12;
  result = sub_100005EE0(v42, (v26[7] + 32 * result));
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    sub_10002CB0C(&v43);
    v12 = v43;
    if (v43)
    {
      v20 = 1;
      do
      {
        sub_100005EE0(v44, v42);
        v32 = *a5;
        result = sub_10002B924(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          sub_10002CD0C(v36, 1);
          result = sub_10002B924(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 32 * result;
          sub_100005EF0(*(*a5 + 56) + 32 * result, v41);
          sub_10000607C(v42);

          v31 = *(v29 + 56);
          sub_10000607C((v31 + v30));
          sub_100005EE0(v41, (v31 + v30));
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_100005EE0(v42, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_10002CB0C(&v43);
        v12 = v43;
      }

      while (v43);
    }

LABEL_25:
    sub_10002CF84(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_1000120D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100791340;

  v10 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;

    *(v9 + 56) = &type metadata for String;
    *(v9 + 32) = v12;
    *(v9 + 40) = v13;
    *(v9 + 88) = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    *(v9 + 64) = a2;
    *(v9 + 72) = a3;
    v14 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v9, v16, v17, v18, v19, v20, v21, v22;
    v23 = [objc_opt_self() predicateWithFormat:v14 argumentArray:isa];

    return v23;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v25._object = 0x80000001007EC120;
    v25._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v25);
    sub_1000F5104(a4, a5);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000122D0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

unint64_t sub_100012370(void *a1, id a2)
{
  v5 = sub_100012718(a1);
  v80 = a1;
  v6 = [a2 persistentStoreOfAccountWithAccountID:a1];
  if (v6)
  {
    v7 = v6;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007953F0;
    *(v8 + 32) = v7;
  }

  else
  {
    v8 = 0;
  }

  if (qword_100935DD0 != -1)
  {
    swift_once();
  }

  v9 = qword_100974D10;
  if (qword_100974D10 >> 62)
  {

    sub_1000F5104(&qword_100943980, &unk_10079EF10);
    v70 = _bridgeCocoaArray<A>(_:)();
    v9, v71, v72, v73, v74, v75, v76, v77;
    v9 = v70;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  type metadata accessor for REMCDAccountListData();
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  if (v8)
  {
    sub_100293C88();
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  [v10 setAffectedStores:v12.super.isa];

  [v10 setPredicate:v5];

  sub_100030F74(v13);
  v9, v14, v15, v16, v17, v18, v19, v20;
  v21 = sub_100293638(_swiftEmptySetSingleton);
  _swiftEmptySetSingleton, v22, v23, v24, v25, v26, v27, v28;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v21, v30, v31, v32, v33, v34, v35, v36;
  [v10 setPropertiesToFetch:isa];
  v9, v37, v38, v39, v40, v41, v42, v43;
  v8, v44, v45, v46, v47, v48, v49, v50;

  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    goto LABEL_12;
  }

  if (!(result >> 62))
  {
    v59 = v5;
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_22:
    result, v52, v53, v54, v55, v56, v57, v58;
    [objc_opt_self() noSuchObjectErrorWithObjectID:v80];
    swift_willThrow();
    v5 = v59;
LABEL_12:

    return a2;
  }

  v78 = result;
  v79 = _CocoaArrayWrapper.endIndex.getter();
  result = v78;
  v59 = v5;
  if (!v79)
  {
    goto LABEL_22;
  }

LABEL_15:
  if ((result & 0xC000000000000001) != 0)
  {
    v60 = result;
    v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_18;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v60 = result;
    v61 = *(result + 32);
LABEL_18:
    v69 = v61;
    v60, v62, v63, v64, v65, v66, v67, v68;
    a2 = [v69 orderedIdentifierMap];

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100012718(void *a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v10 - v4;
  v11 = &_swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  v7 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_100030F2C(KeyPath, v5);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v11->clientIdentity >= *&v11->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0();
}

uint64_t sub_10001289C()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

uint64_t sub_1000128E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1000F5104(&qword_100948B88, &unk_1007ACB98);
  __chkstk_darwin(v4 - 8, v5);
  v36 = &v31 - v6;
  v7 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&qword_100948CD0, &qword_1007ACCD0);
  v37 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v14 = &v31 - v13;
  sub_10000F61C(a1, a1[3]);
  sub_1000318A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v33 = v10;
    v34 = a1;
    LOBYTE(v39) = 0;
    sub_100030E90(&qword_100948CE0, &type metadata accessor for REMAccountsListDataView.ReminderCounts, &protocol conformance descriptor for REMAccountsListDataView.ReminderCounts);
    v15 = v36;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v11;
    v17 = v38;
    (*(v38 + 56))(v15, 0, 1, v7);
    v18 = v15;
    v19 = *(v17 + 32);
    v19(v33, v18, v7);
    v41 = 1;
    sub_1000318F4();
    v36 = v14;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v34;
    v32 = v19;
    v22 = v39;
    v21 = v40;
    sub_1000060C8(0, &qword_100948CE8, REMFetchResultToken_ptr);
    v28 = sub_100031948();
    sub_10001BBA0(v22, v21);
    v29 = v37;
    if (v28)
    {
      (*(v37 + 8))(v36, v16);
      v30 = v35;
      v32(v35, v33, v7);
      *(v30 + *(_s5CacheVMa(0) + 20)) = v28;
      v26 = v20;
      return sub_10000607C(v26);
    }

    (*(v38 + 8))(v33, v7);
    v23 = v36;
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();
    [v24 internalErrorWithDebugDescription:v25];

    swift_willThrow();
    (*(v29 + 8))(v23, v16);
    a1 = v34;
  }

  v26 = a1;
  return sub_10000607C(v26);
}

void sub_100012D90(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_100941B98, qword_1007ACBD0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation();
  v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v3 + 56))(v14, 1, 1, v2);
  REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters.init(sortingStyle:)();
  REMHashtagLabelDataView.AllHashtagLabelsInvocation.Parameters.sortingStyle.getter();
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1000050A4(v10, &qword_100941B98, qword_1007ACBD0);
    v19 = 0;
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    v20 = (*(v3 + 88))(v6, v2);
    v19 = v20 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:);
    if (v20 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:) && v20 != enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.recencyDate(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    (*(v3 + 8))(v10, v2);
  }

  sub_1000131E0(0, 2, v19);
  if (v1)
  {
    (*(v53 + 8))(v18, v15);
  }

  else
  {
    v22 = v21;
    v23 = *(v21 + 16);
    if (v23)
    {
      v51 = v15;
      v54 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v24 = type metadata accessor for REMHashtagLabel_Codable();
      v50 = v22;
      v25 = &v22->clientIdentity[24];
      do
      {
        v26 = *v25;
        v27 = objc_allocWithZone(v24);

        v28 = String._bridgeToObjectiveC()();
        v26, v29, v30, v31, v32, v33, v34, v35;
        [v27 initWithName:v28];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v25 += 2;
        --v23;
      }

      while (v23);

      v50, v36, v37, v38, v39, v40, v41, v42;
      (*(v53 + 8))(v18, v51);
    }

    else
    {

      v22, v43, v44, v45, v46, v47, v48, v49;
      (*(v53 + 8))(v18, v15);
    }
  }
}

void sub_1000131E0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a2;
  v7 = sub_10003450C(&off_1008DD310);
  sub_100034610(&unk_1008DD330);
  v8 = sub_100034664(a1, v5);
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v9 = [objc_allocWithZone(NSFetchRequest) init];
  v10 = [swift_getObjCClassFromMetadata() entity];
  [v9 setEntity:v10];

  [v9 setAffectedStores:0];
  [v9 setPredicate:v8];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v9 setPropertiesToFetch:isa];

  v12 = Array._bridgeToObjectiveC()().super.isa;
  [v9 setRelationshipKeyPathsForPrefetching:v12];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  if (a3)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100796900;
    if (qword_100936118 != -1)
    {
      swift_once();
    }

    v14 = qword_100974E70;
    *(v13 + 32) = qword_100974E70;
    v15 = (v13 + 40);
    v16 = qword_100936110;
    v17 = v14;
    if (v16 != -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007953F0;
    v15 = (v13 + 32);
    if (qword_100936110 != -1)
    {
LABEL_5:
      swift_once();
    }
  }

  v18 = qword_100974E68;
  *v15 = qword_100974E68;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v19 = v18;
  v20 = Array._bridgeToObjectiveC()().super.isa;
  v13, v21, v22, v23, v24, v25, v26, v27;
  [v9 setSortDescriptors:v20];

  v28 = NSManagedObjectContext.fetch<A>(_:)();
  v7, v29, v30, v31, v32, v33, v34, v35;

  if (!v3)
  {
    sub_100034C08(v28);
    v28, v36, v37, v38, v39, v40, v41, v42;
  }
}

uint64_t sub_1000134D0()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0x736C6562616CLL;
  }
}

void sub_100013530(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(result + 16))
  {
LABEL_10:
    result, v10, v11, v12, v13, v14, v15, v16;
    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v17 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v17 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();
  result, v18, v19, v20, v21, v22, v23, v24;
  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v25 = *(v5 + 16);
  v26 = __OFADD__(v25, v4);
  v27 = v25 + v4;
  if (!v26)
  {
    *(v5 + 16) = v27;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

id sub_100013674(uint64_t a1)
{
  v2 = v1;
  v181 = sub_1000F5104(&qword_1009442A8, &unk_1007A4C80);
  v4 = *(v181 - 1);
  __chkstk_darwin(v181, v5);
  v7 = &v161 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v161 - v15;
  __chkstk_darwin(v17, v18);
  v20 = &v161 - v19;
  __chkstk_darwin(v21, v22);
  v177 = &v161 - v23;
  __chkstk_darwin(v24, v25);
  v27 = &v161 - v26;
  Date.init()();
  v28 = [v2 storeController];
  if (v28)
  {
    v180 = v28;
    v29 = [v28 inMemoryPrimaryActiveCKAccountREMObjectID];
    if (v29)
    {
      v172 = v20;
      v176 = v2;
      v178 = v9;
      v179 = v27;
      v30 = v16;
      v31 = v29;
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      v33 = *(v4 + 104);
      v34 = v181;
      v167 = v4 + 104;
      v166 = v33;
      v33(v7, enum case for REMCache.ExecutionMode.synchronously<A, B>(_:), v181);
      v35 = swift_allocObject();
      *(v35 + 16) = v32;
      *(v35 + 24) = v31;
      v173 = v32;

      v170 = v31;
      v36 = v31;
      v37 = v30;
      v174 = v36;
      v169 = a1;
      dispatch thunk of REMCache.performReadOnly(_:operations:)();

      v38 = *(v4 + 8);
      v168 = v7;
      v165 = v4 + 8;
      v38(v7, v34);
      swift_beginAccess();
      v39 = *(v32 + 16);
      v175 = v8;
      if (v39)
      {
        v182 = 0;
        v40 = v39;
        v41 = [v176 existingObjectWithID:v40 error:&v182];
        v42 = v182;
        if (v41)
        {
          v43 = v41;
          v163 = v37;
          objc_opt_self();
          v44 = swift_dynamicCastObjCClass();
          if (v44)
          {
            v45 = v44;
            v46 = v174;
            v47 = v42;
            v48 = [v45 remObjectID];
            if (v48)
            {
              v49 = v48;
              v171 = v45;
              sub_10003980C();
              v50 = static NSObject.== infix(_:_:)();

              if (v50)
              {
                v51 = qword_100935F40;
                v52 = v43;
                v53 = v175;
                if (v51 != -1)
                {
                  swift_once();
                }

                v54 = type metadata accessor for Logger();
                sub_100006654(v54, qword_100944290);
                v55 = v177;
                v56 = v178;
                (*(v178 + 16))(v177, v179, v53);
                static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
                static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
                v57 = v40;
                v58 = Logger.logObject.getter();
                v59 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v58, v59))
                {
                  v60 = swift_slowAlloc();
                  v176 = v46;
                  v61 = v60;
                  v62 = swift_slowAlloc();
                  v181 = v52;
                  v63 = v62;
                  *v61 = 68158210;
                  *(v61 + 4) = 4;
                  *(v61 + 8) = 2048;
                  Date.rem_elapsedInMilliseconds.getter();
                  v65 = v64;
                  v66 = *(v56 + 8);
                  v66(v55, v53);
                  *(v61 + 10) = v65;
                  *(v61 + 18) = 2112;
                  *(v61 + 20) = v57;
                  *v63 = v39;
                  v67 = v57;
                  _os_log_impl(&_mh_execute_header, v58, v59, "primaryActiveCloudKitAccountOptimized: RDPrimaryActiveCloudKitAccountManagedObjectIDCache hit {elapsed: %.*f ms, mid: %@}", v61, 0x1Cu);
                  sub_100039860(v63);

                  v66(v179, v53);
                }

                else
                {

                  v160 = *(v56 + 8);
                  v160(v55, v53);
                  v160(v179, v53);
                }

                goto LABEL_56;
              }
            }

            else
            {
            }

            v8 = v175;
          }

          else
          {
            v87 = v42;
          }

          v37 = v163;
        }

        else
        {
          v86 = v182;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      v88 = [objc_opt_self() _groundTruth_primaryActiveCloudKitAccountInContext:v176];
      v89 = qword_100935F40;
      v171 = v88;
      v90 = v88;
      if (v89 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_100006654(v91, qword_100944290);
      v92 = v178;
      v93 = v172;
      v176 = *(v178 + 16);
      v177 = (v178 + 16);
      (v176)(v172, v179, v8);
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.info.getter();
      v96 = os_log_type_enabled(v94, v95);
      v164 = v38;
      if (v96)
      {
        v97 = v37;
        v98 = v8;
        v99 = swift_slowAlloc();
        *v99 = 68157952;
        *(v99 + 4) = 4;
        *(v99 + 8) = 2048;
        Date.rem_elapsedInMilliseconds.getter();
        v101 = v100;
        v102 = *(v92 + 8);
        v103 = v98;
        v37 = v97;
        v102(v93, v103);
        *(v99 + 10) = v101;
        _os_log_impl(&_mh_execute_header, v94, v95, "primaryActiveCloudKitAccountOptimized: RDPrimaryActiveCloudKitAccountManagedObjectIDCache miss (before cache-write) {elapsed: %.*f ms}", v99, 0x12u);

        if (v90)
        {
          goto LABEL_32;
        }
      }

      else
      {

        v102 = *(v92 + 8);
        v102(v93, v8);
        if (v90)
        {
LABEL_32:
          v172 = v102;
          v104 = v174;
          v105 = v90;
          v106 = [v105 remObjectID];
          if (v106)
          {
            v107 = v106;
            sub_10003980C();
            v108 = static NSObject.== infix(_:_:)();

            if (v108)
            {
LABEL_47:
              v134 = [v105 objectID];
              if ([v134 isTemporaryID])
              {
                v135 = v104;
                v136 = Logger.logObject.getter();
                v137 = static os_log_type_t.fault.getter();

                if (os_log_type_enabled(v136, v137))
                {
                  v138 = swift_slowAlloc();
                  v139 = swift_slowAlloc();
                  *v138 = 138543362;
                  *(v138 + 4) = v135;
                  *v139 = v170;
                  v140 = v135;
                  _os_log_impl(&_mh_execute_header, v136, v137, "primaryActiveCloudKitAccountOptimized: Unexpectedly primary CK REMCDAccount's objectID() isTemporary, should have saved the CD account before trying to access it via this API {remObjectID: %{public}@}", v138, 0xCu);
                  sub_100039860(v139);
                }

                else
                {
                }

                v172(v179, v175);
              }

              else
              {
                v174 = v105;
                v141 = v168;
                v142 = v181;
                v166(v168, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v181);
                v143 = swift_allocObject();
                *(v143 + 16) = v134;
                *(v143 + 24) = v104;
                v144 = v104;
                v145 = v134;
                dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

                v164(v141, v142);
                v146 = v37;
                v147 = v37;
                v148 = v179;
                v149 = v175;
                (v176)(v146, v179, v175);
                static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
                static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
                v150 = Logger.logObject.getter();
                v151 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v150, v151))
                {
                  v152 = swift_slowAlloc();
                  *v152 = 68157952;
                  *(v152 + 4) = 4;
                  *(v152 + 8) = 2048;
                  Date.rem_elapsedInMilliseconds.getter();
                  v154 = v153;
                  v155 = v147;
                  v156 = v172;
                  v172(v155, v149);
                  *(v152 + 10) = v154;
                  _os_log_impl(&_mh_execute_header, v150, v151, "primaryActiveCloudKitAccountOptimized: RDPrimaryActiveCloudKitAccountManagedObjectIDCache miss + write (after cache-write) {elapsed: %.*f ms (from start)}", v152, 0x12u);

                  v157 = v174;
                  v156(v148, v149);
                }

                else
                {

                  v158 = v174;
                  v159 = v172;
                  v172(v147, v149);
                  v159(v148, v149);
                }
              }

LABEL_56:

              return v171;
            }
          }

          else
          {
          }

          v113 = v104;
          v114 = v105;
          v115 = Logger.logObject.getter();
          v116 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v115, v116))
          {
            v174 = v105;
            v163 = v37;
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            v182 = v162;
            *v117 = 136446466;
            v119 = [v114 remObjectID];
            if (v119)
            {
              v120 = v119;
              v121 = [v119 description];

              v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v124 = v123;
            }

            else
            {
              v124 = 0xE300000000000000;
              v122 = 7104878;
            }

            v125 = sub_10000668C(v122, v124, &v182);
            v124, v126, v127, v128, v129, v130, v131, v132;
            *(v117 + 4) = v125;
            *(v117 + 12) = 2114;
            *(v117 + 14) = v113;
            *v118 = v170;
            v133 = v113;
            _os_log_impl(&_mh_execute_header, v115, v116, "primaryActiveCloudKitAccountOptimized: Mismatching cdAccount.remObjectID with inMemoryPrimaryActiveCKAccountREMObjectID {cdAccount.remObjectID: %{public}s, in-memory: %{public}@}", v117, 0x16u);
            sub_100039860(v118);

            sub_10000607C(v162);

            v37 = v163;
            v105 = v174;
          }

          else
          {
          }

          goto LABEL_47;
        }
      }

      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&_mh_execute_header, v109, v110, "primaryActiveCloudKitAccountOptimized: Unexpectedly fetched no active CK account from persistence. Should have returned early for nil inMemoryPrimaryActiveCKAccountREMObjectID if no active CK account is signed in. Indicates there is a bug.", v111, 2u);

        v112 = v180;
      }

      else
      {

        v112 = v174;
      }

      v102(v179, v175);

      return 0;
    }

    else
    {
      if (qword_100935F40 != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      sub_100006654(v74, qword_100944290);
      (*(v9 + 16))(v12, v27, v8);
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
      v75 = v9;
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = v27;
        v79 = v8;
        v80 = swift_slowAlloc();
        *v80 = 68157952;
        *(v80 + 4) = 4;
        *(v80 + 8) = 2048;
        Date.rem_elapsedInMilliseconds.getter();
        v82 = v81;
        v83 = *(v75 + 8);
        v83(v12, v79);
        *(v80 + 10) = v82;
        _os_log_impl(&_mh_execute_header, v76, v77, "primaryActiveCloudKitAccountOptimized: Returning nil because inMemoryPrimaryActiveCKAccountREMObjectID is nil {elapsed: %.*f ms}", v80, 0x12u);

        v84 = v78;
        v85 = v79;
      }

      else
      {

        v83 = *(v75 + 8);
        v83(v12, v8);
        v84 = v27;
        v85 = v8;
      }

      v83(v84, v85);
      return 0;
    }
  }

  else
  {
    if (qword_100935F40 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100006654(v68, qword_100944290);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "primaryActiveCloudKitAccountOptimized: Cannot get the RDStoreController from RDStoreControllerManagedObjectContext. Fallback to call REMCDAccount._groundTruth_primaryActiveCloudKitAccountInContext(in:).", v71, 2u);
    }

    v72 = [objc_opt_self() _groundTruth_primaryActiveCloudKitAccountInContext:v2];
    (*(v9 + 8))(v27, v8);
    return v72;
  }
}

uint64_t sub_100014724()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014764()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001479C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = 1;
  v64 = 0;
  sub_1000063E8();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v60 = [v4 newBackgroundContextWithAuthor:v15];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v23 = [objc_opt_self() localInternalAccountID];
    v24 = [v23 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    v26 = v25;
    (*(v9 + 8))(v12, v8);
    v27 = String._bridgeToObjectiveC()();
    v26, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v4 storeForAccountIdentifier:v27];

    if (v35)
    {
      v59 = a2;
      v36 = [v4 persistentStoreCoordinator];
      v37 = [v36 persistentStores];

      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = &_swiftEmptyArrayStorage;
      if (v38 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v58 = a3;
        v46 = 0;
        v62 = v38 & 0xC000000000000001;
        a3 = i;
        while (1)
        {
          if (v62)
          {
            v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v46 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v47 = *(v38 + 8 * v46 + 32);
          }

          v48 = v47;
          v49 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v46;
          if (v49 == a3)
          {
            a3 = v58;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
      v38, v39, v40, v41, v42, v43, v44, v45;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v60 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v59;
    }
  }

  v51 = swift_allocObject();
  v51[2] = &v65;
  v51[3] = a2;
  v52 = v60;
  v51[4] = a3;
  v51[5] = v52;
  v51[6] = &v64;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_1004128EC;
  *(v53 + 24) = v51;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0A28;
  v54 = _Block_copy(aBlock);
  v55 = v52;

  [v55 performBlockAndWait:v54];
  _Block_release(v54);
  LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

  if (v54)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (v64)
  {
    swift_willThrow();
    swift_errorRetain();
  }

  if (v65)
  {
    goto LABEL_27;
  }
}

uint64_t sub_100014F98()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100014FE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v4[0] = v1;
  *(v4 + 14) = *(v0 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  return sub_100014A64(&v3, sub_1000151EC, 0);
}

void sub_1000151EC(void *a1)
{
  v3 = sub_100015484(a1);
  if (!v1)
  {
    v4 = v3;
    if (v3)
    {
      sub_1000F5104(&unk_100939E10, &qword_1007970D0);

      v16 = 0;
      if ([a1 save:&v16])
      {
        v5 = qword_100936558;
        v6 = v16;
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        sub_100006654(v7, qword_10094C8C0);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "Inserted grocery operation queue item for downloading grocery model assets from Trial", v10, 2u);
        }
      }

      else
      {
        v15 = v16;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100936558 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_10094C8C0);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Skipped inserting grocery operation queue item for downloading grocery model assets from Trial because there are no active CloudKit accounts.", v14, 2u);
      }
    }
  }
}

id sub_100015484(unint64_t a1)
{
  if (qword_1009367D8 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v2 = sub_100013674(qword_1009752E8);
    if (v2)
    {
      return v2;
    }

    v3 = [objc_opt_self() allCloudKitAccountsInContext:a1];
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (a1 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (!v11)
      {
LABEL_19:
        a1, v4, v5, v6, v7, v8, v9, v10;
        return 0;
      }
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    v12 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v2 = v13;
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (([v13 inactive] & 1) == 0)
      {
        a1, v15, v16, v17, v18, v19, v20, v21;
        return v2;
      }

      ++v12;
      if (v14 == v11)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_100015620(objc_class *a1, unint64_t ObjCClassFromMetadata, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v245 = a5;
  v240 = a4;
  v243 = a1;
  v9 = type metadata accessor for Date();
  v241 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v239 = &v228 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v238 = &v228 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v16, v17);
  __chkstk_darwin(v18, v19);
  v236 = v21;
  v237 = v12;
  v234 = v22;
  v242 = v9;
  if (!(a3 >> 6))
  {
    v232 = a3;
    v230 = &v228 - v20;
    v244 = v5;
    v246 = &_swiftEmptyArrayStorage;
    v6 = ObjCClassFromMetadata & 0xFFFFFFFFFFFFFF8;
    if (ObjCClassFromMetadata >> 62)
    {
      goto LABEL_34;
    }

    v28 = *((ObjCClassFromMetadata & 0xFFFFFFFFFFFFFF8) + 0x10);
    v233 = v13;
    if (v28)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

  if (a3 >> 6 == 1)
  {
    v244 = v5;
    type metadata accessor for REMCDOperationQueueItem();
    v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v24 = [v23 initWithContext:v245];
    [v24 setOperationTypeRawValue:3];
    v25 = [(objc_class *)v243 uuid];
    v26 = v238;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v26, v12);
    [v24 setEntityIdentifier:isa];

LABEL_75:
    [v24 setAccount:v240];
    v182 = v24;
    v183 = v239;
    Date.init()();
    v184 = Date._bridgeToObjectiveC()().super.isa;
    (*(v241 + 8))(v183, v242);
    [v182 setCreationDate:v184];

    if (qword_1009367D0 != -1)
    {
      swift_once();
    }

    v185 = type metadata accessor for Logger();
    sub_100006654(v185, qword_100951480);
    v55 = v182;
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v248 = swift_slowAlloc();
      *v188 = 136446722;
      v246 = v235;
      swift_getMetatypeMetadata();
      v189 = String.init<A>(describing:)();
      v191 = v190;
      v192 = sub_10000668C(v189, v190, &v248);
      v191, v193, v194, v195, v196, v197, v198, v199;
      *(v188 + 4) = v192;
      *(v188 + 12) = 2082;
      LOBYTE(v246) = sub_1000175DC();
      sub_1000F5104(&qword_10093A528, &unk_1007976E0);
      v200 = Optional.descriptionOrNil.getter();
      v202 = v201;
      v203 = sub_10000668C(v200, v201, &v248);
      v202, v204, v205, v206, v207, v208, v209, v210;
      *(v188 + 14) = v203;
      *(v188 + 22) = 2082;
      v211 = [(RDXPCStorePerformer *)v55 entityIdentifier];
      if (v211)
      {
        v212 = v234;
        v213 = v211;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v214 = 0;
      }

      else
      {
        v214 = 1;
        v212 = v234;
      }

      (*(v13 + 56))(v212, v214, 1, v237);
      v215 = v212;
      v216 = Optional.descriptionOrNil.getter();
      v218 = v217;

      sub_1000050A4(v215, &unk_100939D90, "8\n\r");
      v219 = sub_10000668C(v216, v218, &v248);
      v218, v220, v221, v222, v223, v224, v225, v226;
      *(v188 + 24) = v219;
      _os_log_impl(&_mh_execute_header, v186, v187, "%{public}s: Inserted grocery operation queue item {operationType: %{public}s, entityIdentifier: %{public}s}", v188, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return v55;
  }

  v233 = v13;
  v33 = sub_100016788(&off_1008DDFA8, 0, 1);
  type metadata accessor for REMCDOperationQueueItem();
  v55 = [objc_allocWithZone(NSFetchRequest) init];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [ObjCClassFromMetadata entity];
  [(RDXPCStorePerformer *)v55 setEntity:v34];

  [(RDXPCStorePerformer *)v55 setAffectedStores:0];
  [(RDXPCStorePerformer *)v55 setPredicate:v33];

  if (qword_100935F10 != -1)
  {
LABEL_67:
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v35 = Array._bridgeToObjectiveC()().super.isa;
  [(RDXPCStorePerformer *)v55 setSortDescriptors:v35];

  [(RDXPCStorePerformer *)v55 setReturnsObjectsAsFaults:0];
  v36 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v6)
  {
    v243 = ObjCClassFromMetadata;
    v244 = 0;
    if (v36 >> 62)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
      if (v44)
      {
LABEL_20:
        v45 = 0;
        v13 = v36 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v45 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v46 = *(v36 + 8 * v45 + 32);
          }

          v55 = v46;
          v6 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          ObjCClassFromMetadata = [(RDXPCStorePerformer *)v46 objectID];
          v47 = [ObjCClassFromMetadata isTemporaryID];

          if (v47)
          {
            v36, v48, v49, v50, v51, v52, v53, v54;
            return v55;
          }

          ++v45;
          if (v6 == v44)
          {
            goto LABEL_69;
          }
        }

        while (1)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v28 = _CocoaArrayWrapper.endIndex.getter();
          v233 = v13;
          if (!v28)
          {
            break;
          }

LABEL_6:
          v29 = 0;
          while (1)
          {
            if ((ObjCClassFromMetadata & 0xC000000000000001) != 0)
            {
              v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v29 >= *(v6 + 16))
              {
                goto LABEL_31;
              }

              v30 = *(ObjCClassFromMetadata + 8 * v29 + 32);
            }

            v31 = v30;
            v32 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            REMObjectID.codable.getter();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v13 = *((v246 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v13 >= *((v246 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            ++v29;
            if (v32 == v28)
            {
              v55 = v246;
              goto LABEL_36;
            }
          }

          __break(1u);
LABEL_31:
          __break(1u);
        }

LABEL_35:
        v55 = &_swiftEmptyArrayStorage;
LABEL_36:
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007953F0;
        v57 = v243;
        *(inited + 32) = v243;
        v243 = v57;
        v58 = sub_100016788(&off_1008DDF80, inited, 1);
        swift_setDeallocating();
        swift_arrayDestroy();
        type metadata accessor for REMCDOperationQueueItem();
        ObjCClassFromMetadata = [objc_allocWithZone(NSFetchRequest) init];
        v231 = swift_getObjCClassFromMetadata();
        v59 = [(objc_class *)v231 entity];
        [ObjCClassFromMetadata setEntity:v59];

        [ObjCClassFromMetadata setAffectedStores:0];
        [ObjCClassFromMetadata setPredicate:v58];

        v60 = v244;
        if (qword_100935F10 != -1)
        {
          swift_once();
        }

        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
        v61 = Array._bridgeToObjectiveC()().super.isa;
        [ObjCClassFromMetadata setSortDescriptors:v61];

        [ObjCClassFromMetadata setReturnsObjectsAsFaults:0];
        v62 = NSManagedObjectContext.fetch<A>(_:)();
        if (v60)
        {
          v55, v63, v64, v65, v66, v67, v68, v69;

          return v55;
        }

        v70 = v62;

        v244 = 0;
        v229 = v55;
        if (v70 >> 62)
        {
          v78 = _CocoaArrayWrapper.endIndex.getter();
          if (v78)
          {
LABEL_43:
            v79 = 0;
            v6 = v70 & 0xC000000000000001;
            v55 = (v70 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v6)
              {
                v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v79 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_66;
                }

                v80 = *(v70 + 8 * v79 + 32);
              }

              v81 = v80;
              v82 = v79 + 1;
              if (__OFADD__(v79, 1))
              {
                __break(1u);
LABEL_66:
                __break(1u);
                goto LABEL_67;
              }

              ObjCClassFromMetadata = [v80 objectID];
              v83 = [ObjCClassFromMetadata isTemporaryID];

              if (v83)
              {
                break;
              }

              ++v79;
              if (v82 == v78)
              {
                goto LABEL_71;
              }
            }

            v70, v84, v85, v86, v87, v88, v89, v90;
            v91 = [v81 configurationData];
            v92 = v232;
            v55 = v229;
            if (!v91)
            {

              goto LABEL_72;
            }

            v93 = v91;
            v94 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v96 = v95;

            v97 = objc_autoreleasePoolPush();
            type metadata accessor for JSONDecoder();
            swift_allocObject();
            JSONDecoder.init()();
            sub_100742DB8();
            v98 = v244;
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            if (v98)
            {
              v55, v99, v100, v101, v102, v103, v104, v105;

              objc_autoreleasePoolPop(v97);
              sub_10001BBA0(v94, v96);
            }

            else
            {

              objc_autoreleasePoolPop(v97);
              v106 = v247;
              sub_100272024(v55);
              v107 = v246;
              v108 = objc_autoreleasePoolPush();
              type metadata accessor for JSONEncoder();
              swift_allocObject();
              JSONEncoder.init()();
              v246 = v107;
              v247 = v106;
              sub_100742D64();
              v109 = dispatch thunk of JSONEncoder.encode<A>(_:)();
              v111 = v110;
              v107, v110, v112, v113, v114, v115, v116, v117;

              objc_autoreleasePoolPop(v108);
              v118 = Data._bridgeToObjectiveC()().super.isa;
              [v81 setConfigurationData:v118];

              if (qword_1009367D0 != -1)
              {
                swift_once();
              }

              v119 = type metadata accessor for Logger();
              sub_100006654(v119, qword_100951480);
              v55 = v81;
              v120 = Logger.logObject.getter();
              v121 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v120, v121))
              {
                LODWORD(v243) = v121;
                v244 = v120;
                v122 = swift_slowAlloc();
                v242 = swift_slowAlloc();
                v246 = v242;
                *v122 = 136446722;
                v123 = sub_1001424F8(v235);
                v125 = v124;
                v126 = sub_10000668C(v123, v124, &v246);
                v125, v127, v128, v129, v130, v131, v132, v133;
                *(v122 + 4) = v126;
                *(v122 + 12) = 2080;
                LOBYTE(v248) = sub_1000175DC();
                sub_1000F5104(&qword_10093A528, &unk_1007976E0);
                v134 = Optional.descriptionOrNil.getter();
                v136 = v135;
                v137 = sub_10000668C(v134, v135, &v246);
                v136, v138, v139, v140, v141, v142, v143, v144;
                *(v122 + 14) = v137;
                *(v122 + 22) = 2080;
                v145 = [(RDXPCStorePerformer *)v55 entityIdentifier];
                v245 = v111;
                if (v145)
                {
                  v146 = v230;
                  v147 = v145;
                  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                  v148 = 0;
                }

                else
                {
                  v148 = 1;
                  v146 = v230;
                }

                (*(v233 + 56))(v146, v148, 1, v237);
                v151 = Optional.descriptionOrNil.getter();
                v153 = v152;
                sub_1000050A4(v146, &unk_100939D90, "8\n\r");
                v154 = sub_10000668C(v151, v153, &v246);
                v153, v155, v156, v157, v158, v159, v160, v161;
                *(v122 + 24) = v154;
                v120 = v244;
                _os_log_impl(&_mh_execute_header, v244, v243, "%{public}s: Updated unsaved grocery operation queue item {operationType: %s, entityIdentifier: %s}", v122, 0x20u);
                swift_arrayDestroy();

                sub_10001BBA0(v94, v96);
                v149 = v109;
                v150 = v245;
              }

              else
              {
                sub_10001BBA0(v94, v96);
                v149 = v109;
                v150 = v111;
              }

              sub_10001BBA0(v149, v150);
            }

            return v55;
          }
        }

        else
        {
          v78 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v78)
          {
            goto LABEL_43;
          }
        }

LABEL_71:
        v70, v71, v72, v73, v74, v75, v76, v77;
        v92 = v232;
        v55 = v229;
LABEL_72:
        v163 = v92 & 1;
        v164 = objc_autoreleasePoolPush();
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        v246 = v55;
        v247 = v163;
        sub_100742D64();
        v165 = v244;
        v166 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v174 = v55;
        v55 = v237;
        v13 = v233;
        if (v165)
        {
          v174, v167, v168, v169, v170, v171, v172, v173;

          objc_autoreleasePoolPop(v164);
          return v55;
        }

        v244 = 0;
        v175 = v166;
        v176 = v167;
        v174, v167, v168, v169, v170, v171, v172, v173;

        objc_autoreleasePoolPop(v164);
        v177 = objc_allocWithZone(v231);
        v24 = [v177 initWithContext:v245];
        [v24 setOperationTypeRawValue:1];
        [v24 setPriorityRawValue:20];
        v178 = [(objc_class *)v243 uuid];
        v179 = v238;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v180 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v13 + 8))(v179, v55);
        [v24 setEntityIdentifier:v180];

        v181 = Data._bridgeToObjectiveC()().super.isa;
        [v24 setConfigurationData:v181];

        sub_10001BBA0(v175, v176);
        goto LABEL_75;
      }
    }

    else
    {
      v44 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
        goto LABEL_20;
      }
    }

LABEL_69:
    v36, v37, v38, v39, v40, v41, v42, v43;
    v162 = objc_allocWithZone(v243);
    v24 = [v162 initWithContext:v245];
    [v24 setOperationTypeRawValue:2];
    [v24 setPriorityRawValue:30];
    [v24 setEntityIdentifier:0];
    [v24 setConfigurationData:0];
    v13 = v233;
    goto LABEL_75;
  }

  return v55;
}

_TtC7remindd19RDXPCStorePerformer *sub_100016788(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v42 - v9;
  v45 = &_swiftEmptyArrayStorage;
  if (a3 < 0)
  {
    KeyPath = swift_getKeyPath();
    v33 = *(a2 + 16);
    v34 = &_swiftEmptyArrayStorage;
    if (v33)
    {
      v44 = &_swiftEmptyArrayStorage;
      sub_100016ED8(0, v33, 0);
      v34 = v44;
      v35 = (a2 + 32);
      v36 = *v44->clientIdentity;
      do
      {
        v38 = *v35++;
        v37 = v38;
        v44 = v34;
        v39 = *&v34->clientIdentity[8];
        if (v36 >= v39 >> 1)
        {
          sub_100016ED8((v39 > 1), v36 + 1, 1);
        }

        v34 = v44;
        *v44->clientIdentity = v36 + 1;
        *&v34->clientIdentity[2 * v36++ + 16] = 0x65000300020001uLL >> (16 * v37);
        --v33;
      }

      while (v33);
    }

    sub_1000170E4(KeyPath, v34);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v45->clientIdentity >= *&v45->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v40 = swift_getKeyPath();
    if (a1)
    {
      sub_1003EF7C4(v40);
    }

    else
    {
      sub_100016DB4(v40);
    }

    goto LABEL_38;
  }

  if (a3)
  {
    v11 = swift_getKeyPath();
    sub_100016DB4(v11);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v45->clientIdentity >= *&v45->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v12 = swift_getKeyPath();
  v13 = v12;
  v14 = *(a1 + 16);
  v15 = &_swiftEmptyArrayStorage;
  if (v14)
  {
    v43 = v12;
    v44 = &_swiftEmptyArrayStorage;
    sub_100016ED8(0, v14, 0);
    v15 = v44;
    v16 = (a1 + 32);
    v17 = *v44->clientIdentity;
    do
    {
      v19 = *v16++;
      v18 = v19;
      v44 = v15;
      v20 = *&v15->clientIdentity[8];
      if (v17 >= v20 >> 1)
      {
        sub_100016ED8((v20 > 1), v17 + 1, 1);
      }

      v15 = v44;
      *v44->clientIdentity = v17 + 1;
      *&v15->clientIdentity[2 * v17++ + 16] = 0x65000300020001uLL >> (16 * v18);
      --v14;
    }

    while (v14);
    v13 = v43;
  }

  sub_1000170E4(v13, v15);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v45->clientIdentity >= *&v45->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (!a2)
  {
    return sub_10000C2B0();
  }

  v21 = swift_getKeyPath();
  if (a2 >> 62)
  {
    v41 = v21;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v21 = v41;
  }

  else
  {
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = &_swiftEmptyArrayStorage;
  if (!v22)
  {
LABEL_36:
    sub_1003EF710(v21, v23);
LABEL_38:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*v45->clientIdentity >= *&v45->clientIdentity[8] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return sub_10000C2B0();
  }

  v43 = v21;
  v44 = &_swiftEmptyArrayStorage;
  result = sub_100253218(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v23 = v44;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(a2 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = [v26 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = type metadata accessor for UUID();
      (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
      v44 = v23;
      v31 = *v23->clientIdentity;
      v30 = *&v23->clientIdentity[8];
      if (v31 >= v30 >> 1)
      {
        sub_100253218((v30 > 1), v31 + 1, 1);
        v23 = v44;
      }

      ++v25;
      *v23->clientIdentity = v31 + 1;
      sub_100100FB4(v10, v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v31);
    }

    while (v22 != v25);
    v21 = v43;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

id sub_100016CD8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 operationTypeRawValue];
  *a2 = result;
  return result;
}

id sub_100016D20@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCompleted];
  *a2 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100016DDC(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, char a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *&a4->clientIdentity[8];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *a4->clientIdentity;
  if (v7 <= v8)
  {
    v9 = *a4->clientIdentity;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_10093ECA0, &qword_10079D3C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->clientIdentity = v8;
    *&v10->clientIdentity[8] = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = &v10->clientIdentity[16];
  v13 = &a4->clientIdentity[16];
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

_TtC7remindd19RDXPCStorePerformer *sub_100016ED8(_TtC7remindd19RDXPCStorePerformer *a1, int64_t a2, char a3)
{
  result = sub_100016DDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_100016EF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100791340;

  v12 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v13)
  {
    v14 = v12;
    v15 = v13;

    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    *(v11 + 88) = sub_1000F5104(a3, a4);
    *(v11 + 64) = a2;
    v16 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v11, v18, v19, v20, v21, v22, v23, v24;
    v25 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

    return v25;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v27._object = 0x80000001007EC120;
    v27._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v27);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100017188(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = (a2 >> 56) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    while (1)
    {
      v4 = String.subscript.getter();
      v12 = v5;
      if (v4 == 58 && v5 == 0xE100000000000000)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12, v14, v15, v16, v17, v18, v19, v20;
      if ((v13 & 1) != 0 || 4 * v3 == String.index(after:)() >> 14)
      {
        goto LABEL_12;
      }
    }

    0xE100000000000000, 0xE100000000000000, v6, v7, v8, v9, v10, v11;
  }

LABEL_12:
  String.subscript.getter();
  v22 = v21;
  a2, v23, v24, v21, v25, v26, v27, v28;
  v29 = static String._fromSubstring(_:)();
  v22, v30, v31, v32, v33, v34, v35, v36;
  return v29;
}

uint64_t sub_1000172CC()
{
  v1 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5 + 8), v12, v13, v14, v15, v16, v17, v18;
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10001744C()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 40, 7);
}