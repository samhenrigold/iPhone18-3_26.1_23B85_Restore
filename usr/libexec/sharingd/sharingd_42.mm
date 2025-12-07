uint64_t sub_1005C8FF4()
{
  v16 = *(v0 + 184);
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 24);
  v14 = *(*(v0 + 168) + 48);
  *(v0 + 240) = *(v0 + 241);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_tetheringLSKKey;
  (*(v1 + 104))(v2, enum case for LSKStatusOptions.Scope.sameAccount(_:), v3);
  sub_10028088C(&qword_100984EC8, &qword_10080C7F8);
  v6 = type metadata accessor for LSKStatusOptions.DeviceType();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007F5670;
  (*(v7 + 104))(v9 + v8, enum case for LSKStatusOptions.DeviceType.n301(_:), v6);
  LSKStatusOptions.init(scope:publishToDeviceTypes:)();
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_1005C9214;
  v11 = *(v0 + 184);
  v12 = *(v0 + 160);

  return LSKLocalStatusClient.publish<A>(_:for:options:)(v11, v16 + v14, v0 + 240, v4 + v5, v12, &type metadata for Bool, &protocol witness table for Bool, &protocol witness table for Bool);
}

uint64_t sub_1005C9214()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  *(*v1 + 200) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1005C9FF4;
  }

  else
  {
    v5 = sub_1005C9384;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005C9384()
{
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[12];
  v4 = v0[13];
  sub_1005CBDB0(v0[23], v1);
  v5 = *(v2 + 48);
  v6 = (*(v4 + 48))(v1 + v5, 1, v3);
  v7 = v0[22];
  if (v6 == 1)
  {
    v8 = v0[4];
    v9 = v0[5];
    sub_100005508(v1 + v5, &qword_100984ED0, &qword_10080C800);
    (*(v9 + 8))(v7, v8);
    if (qword_100973B08 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100984E00);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[23];
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Not scanning for deliveries", v15, 2u);
    }

    sub_100005508(v14, &qword_100984EC0, &qword_10080C7F0);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[4];
    v19 = v0[5];
    (*(v0[13] + 32))(v0[14], v1 + v5, v0[12]);
    v20 = *(v19 + 8);
    v0[26] = v20;
    v0[27] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v7, v18);
    LSKPublishedStatusSequence.makeAsyncIterator()();
    v21 = sub_100011630(&qword_100984ED8, &qword_100984EB0, &qword_10080C7E0, &protocol conformance descriptor for LSKPublishedStatusSequence<A, B>.AsyncIterator);
    v22 = swift_task_alloc();
    v0[28] = v22;
    *v22 = v0;
    v22[1] = sub_1005C96AC;
    v23 = v0[8];
    v24 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v23, v24, v21);
  }
}

uint64_t sub_1005C96AC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1005C9D08;
  }

  else
  {
    v2 = sub_1005C97C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005C97C0()
{
  v48 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 241);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    if (v4)
    {
      v5 = 0x64656C62616E65;
    }

    else
    {
      v5 = 0x64656C6261736964;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }

    if (qword_100973B08 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100984E00);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 184);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
    v14 = *(v0 + 96);
    if (v10)
    {
      v45 = *(v0 + 184);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v47 = v16;
      *v15 = 136315138;
      v17 = sub_10000C4E4(v5, v6, &v47);

      *(v15 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Finished delivering cellular slicing status: %s", v15, 0xCu);
      sub_10000C60C(v16);

      (*(v12 + 8))(v13, v14);
      v18 = v45;
    }

    else
    {

      (*(v12 + 8))(v13, v14);
      v18 = v11;
    }

    sub_100005508(v18, &qword_100984EC0, &qword_10080C7F0);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    (*(v3 + 32))(*(v0 + 56), v1, v2);
    if (qword_100973B08 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 48);
    v20 = *(v0 + 56);
    v21 = *(v0 + 32);
    v22 = *(v0 + 40);
    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_100984E00);
    (*(v22 + 16))(v19, v20, v21);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 208);
    v28 = *(v0 + 48);
    v29 = *(v0 + 56);
    v30 = *(v0 + 32);
    if (v26)
    {
      v44 = v25;
      v31 = swift_slowAlloc();
      v46 = v29;
      v47 = swift_slowAlloc();
      v32 = v47;
      *v31 = 136315138;
      v33 = LSKPublishedStatus.debugDescription.getter();
      v35 = v34;
      v27(v28, v30);
      v36 = sub_10000C4E4(v33, v35, &v47);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v24, v44, "Delivery update: %s", v31, 0xCu);
      sub_10000C60C(v32);

      v37 = v46;
    }

    else
    {

      v27(v28, v30);
      v37 = v29;
    }

    v27(v37, v30);
    v40 = sub_100011630(&qword_100984ED8, &qword_100984EB0, &qword_10080C7E0, &protocol conformance descriptor for LSKPublishedStatusSequence<A, B>.AsyncIterator);
    v41 = swift_task_alloc();
    *(v0 + 224) = v41;
    *v41 = v0;
    v41[1] = sub_1005C96AC;
    v42 = *(v0 + 64);
    v43 = *(v0 + 72);

    return dispatch thunk of AsyncIteratorProtocol.next()(v42, v43, v40);
  }
}

uint64_t sub_1005C9D08()
{
  *(v0 + 16) = *(v0 + 232);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1005C9D9C, 0, 0);
}

uint64_t sub_1005C9D9C()
{
  v1 = v0[23];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 8))(v2, v4);
  sub_100005508(v1, &qword_100984EC0, &qword_10080C7F0);
  if (qword_100973B08 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100984E00);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "### Failed to publish for cellular slicing capability: %@", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005C9FF4()
{
  if (qword_100973B08 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984E00);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "### Failed to publish for cellular slicing capability: %@", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005CA3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_10028088C(&qword_100984E80, &qword_10080C7A8);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_10028088C(&qword_100984E88, &qword_10080C7B0);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_10028088C(&qword_100984E90, &qword_10080C7B8);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1005CA568, 0, 0);
}

uint64_t sub_1005CA568()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_tetheringLSKKey;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1005CA63C;
  v4 = v0[13];

  return LSKLocalStatusClient.subscribe<A>(to:)(v4, v1 + v2, &type metadata for Bool, &protocol witness table for Bool, &protocol witness table for Bool);
}

uint64_t sub_1005CA63C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1005CB0A4;
  }

  else
  {
    v2 = sub_1005CA750;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005CA750()
{
  LSKObservationsSequence.makeAsyncIterator()();
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated;
  v0[16] = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_lock;
  v0[17] = v1;
  v2 = sub_100011630(&qword_100984E98, &qword_100984E88, &qword_10080C7B0, &protocol conformance descriptor for LSKObservationsSequence<A, B>.AsyncIterator);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1005CA848;
  v4 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v4, v2);
}

uint64_t sub_1005CA848()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1005CAE1C;
  }

  else
  {
    v2 = sub_1005CA95C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005CA980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = v3;
  v4 = *(v3 + 160);
  if (v4)
  {
    v39 = *(v4 + 16);
    if (v39)
    {
      v5 = 0;
      v6 = *(*(v3 + 32) + *(v3 + 128));
      v7 = *(*(v3 + 48) + 80);
      v38 = v4 + ((v7 + 32) & ~v7);
      v8 = *(v3 + 152);
      v37 = *(v3 + 160);
      v36 = v6;
      while (1)
      {
        if (v5 >= *(v4 + 16))
        {
          __break(1u);
          return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
        }

        v9 = *(v3 + 48);
        v10 = *(v3 + 56);
        v11 = *(v3 + 40);
        (*(v9 + 16))(v10, v38 + *(v9 + 72) * v5, v11);
        v40 = LSKLocalStatusObservation.deviceIDSIdentifier.getter();
        v13 = v12;
        LSKLocalStatusObservation.value.getter();
        (*(v9 + 8))(v10, v11);
        v14 = *(v3 + 168);
        if (qword_100973B08 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_10000C4AC(v15, qword_100984E00);

        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v41 = v19;
          *v18 = 67109378;
          *(v18 + 4) = v14;
          *(v18 + 8) = 2080;
          v20 = v40;
          *(v18 + 10) = sub_10000C4E4(v40, v13, &v41);
          _os_log_impl(&_mh_execute_header, v16, v17, "Observed cellular slicing state of %{BOOL}d for %s", v18, 0x12u);
          sub_10000C60C(v19);
          v6 = v36;

          v4 = v37;
        }

        else
        {

          v20 = v40;
        }

        v21 = *(v3 + 32);
        v22 = swift_task_alloc();
        *(v22 + 16) = v21;
        *(v22 + 24) = v20;
        *(v22 + 32) = v13;
        *(v22 + 40) = v14;
        v23 = swift_task_alloc();
        *(v23 + 16) = sub_1005CBC7C;
        *(v23 + 24) = v22;
        os_unfair_lock_lock(v6 + 4);
        sub_1002F5418(v24);
        if (v8)
        {
          break;
        }

        v25 = *(v3 + 136);
        v26 = *(v3 + 32);
        os_unfair_lock_unlock(v6 + 4);

        v27 = *(v26 + v25);
        if (v27)
        {
          v28 = *(*(v3 + 32) + *(v3 + 136) + 8);

          v27(v40, v13);
          sub_100015D04(v27, v28);
        }

        ++v5;

        v8 = 0;
        if (v39 == v5)
        {
          goto LABEL_14;
        }
      }

      os_unfair_lock_unlock(v6 + 4);
    }

    else
    {
LABEL_14:

      v29 = sub_100011630(&qword_100984E98, &qword_100984E88, &qword_10080C7B0, &protocol conformance descriptor for LSKObservationsSequence<A, B>.AsyncIterator);
      v30 = swift_task_alloc();
      *(v3 + 144) = v30;
      *v30 = v3;
      v30[1] = sub_1005CA848;
      a2 = *(v3 + 64);
      a1 = v3 + 16;
      a3 = v29;

      return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
    }
  }

  else
  {
    v32 = *(v3 + 96);
    v31 = *(v3 + 104);
    v33 = *(v3 + 88);
    (*(*(v3 + 72) + 8))(*(v3 + 80), *(v3 + 64), a3);
    (*(v32 + 8))(v31, v33);

    v34 = *(v3 + 8);

    return v34();
  }
}

uint64_t sub_1005CAE1C()
{
  *(v0 + 24) = *(v0 + 152);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1005CAEB0, 0, 0);
}

uint64_t sub_1005CAEB0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);
  if (qword_100973B08 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100984E00);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "### Failed to subscribe to cellular slicing availability: %@", v7, 0xCu);
    sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005CB0A4()
{
  if (qword_100973B08 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984E00);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "### Failed to subscribe to cellular slicing availability: %@", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005CB264(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_cellularSlicingObservations;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_10057C2B0(a4, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + v8) = v11;
  return swift_endAccess();
}

uint64_t sub_1005CB4D4(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for TerminusFeatureFlag;
  v8[4] = sub_1005CBB2C();
  v4 = isFeatureEnabled(_:)();
  sub_10000C60C(v8);
  result = 0;
  if (v4)
  {
    if (a2)
    {
      v6 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_lock);
      v7 = __chkstk_darwin(0);
      __chkstk_darwin(v7);
      os_unfair_lock_lock(v6 + 4);
      sub_1000156CC(v8);
      os_unfair_lock_unlock(v6 + 4);
      return LOBYTE(v8[0]);
    }
  }

  return result;
}

void sub_1005CB5D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_cellularSlicingObservations;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_100012854(a2, a3);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v12 = *(*(v9 + 56) + v10);

LABEL_6:
  *a4 = v12;
}

id sub_1005CB6F4()
{
  v1 = v0;
  v2 = type metadata accessor for LSKDomain();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_cellularSlicingObservations;
  *&v1[v6] = sub_100281D9C(_swiftEmptyArrayStorage);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_tetheringLSKClient;
  type metadata accessor for LSKLocalStatusClient();
  swift_allocObject();
  *&v1[v7] = LSKLocalStatusClient.init()();
  (*(v3 + 104))(v5, enum case for LSKDomain.personalHotspot(_:), v2);
  LSKKey.init(domain:name:)();
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_lock;
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v1[v8] = v9;
  v10 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated];
  v11 = type metadata accessor for SDLocalCellularStatusManager(0);
  *v10 = 0;
  *(v10 + 1) = 0;
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "init");
}

id sub_1005CB8CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDLocalCellularStatusManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SDLocalCellularStatusManager(uint64_t a1)
{
  result = qword_100984E60;
  if (!qword_100984E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005CBA14(uint64_t a1)
{
  sub_1005CBACC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005CBACC()
{
  if (!qword_100984E70)
  {
    v0 = type metadata accessor for LSKKey();
    if (!v1)
    {
      atomic_store(v0, &qword_100984E70);
    }
  }
}

unint64_t sub_1005CBB2C()
{
  result = qword_100984E78;
  if (!qword_100984E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984E78);
  }

  return result;
}

uint64_t sub_1005CBBC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1005CA3CC(a1, v4, v5, v6);
}

uint64_t sub_1005CBCA0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_1005CBCEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1005C8D10(a1, v4, v5, v6, v7);
}

uint64_t sub_1005CBDB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100984EC0, &qword_10080C7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1005CBE20()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  (*(v1 + 16))(v1, v2);
}

unint64_t sub_1005CBE8C()
{
  result = qword_100984EE8;
  if (!qword_100984EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984EE8);
  }

  return result;
}

Swift::Int sub_1005CBEE0(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005CC028(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005CC140(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005CC24C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005CC39C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005CC4CC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1005CC610(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1005CC67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4(v5, a3);
}

uint64_t sub_1005CC73C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984EF0);
  v1 = sub_10000C4AC(v0, qword_100984EF0);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005CC81C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1005CC958@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005D7D10(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005CC988@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xEB0000000074656ELL;
  v3 = *v1;
  v4 = 0xEB00000000746E65;
  v5 = 0x674179627261656ELL;
  v6 = 0x80000001007888E0;
  v7 = 0xD000000000000010;
  if (v3 != 5)
  {
    v7 = 0x65756C4265726F63;
    v6 = 0xED000068746F6F74;
  }

  v8 = 0xE900000000000054;
  v9 = 0x4274726F70706172;
  result = 0x4174726F70706172;
  if (v3 != 3)
  {
    v9 = 0x4174726F70706172;
    v8 = 0xEB000000004C4457;
  }

  if (*v1 <= 4u)
  {
    v7 = v9;
    v6 = v8;
  }

  v11 = 0x6C61636F4C736469;
  if (v3 == 1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v11 = 0x7265746E49736469;
  }

  if (*v1)
  {
    v5 = v11;
    v4 = v2;
  }

  if (*v1 <= 2u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 <= 2u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_1005CCA8C(unsigned __int8 a1, uint64_t a2)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsLocalTransport;
      }

      else
      {
        v3 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsInternetTransport;
      }
    }

    else
    {
      v3 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_nearbyAgentTransport;
    }

    goto LABEL_15;
  }

  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
      v3 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportBT;
    }

    else
    {
      v3 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportAWDL;
    }

    goto LABEL_15;
  }

  if (a1 != 5)
  {
    v3 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_coreBluetoothTransport;
LABEL_15:
    v8 = *(v2 + v3);
    swift_unknownObjectRetain();
    return v8;
  }

  sub_1004FFD8C(a2, &v9);
  if (v10)
  {
    v4 = sub_1000121F8(&v9, v11);
    v5 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
    v6 = __chkstk_darwin(v4);
    __chkstk_darwin(v6);
    os_unfair_lock_lock(v5 + 4);
    sub_1003FC8BC(&v9);
    os_unfair_lock_unlock(v5 + 4);
    *&v8 = v9;
    sub_10000C60C(v11);
    return v8;
  }

  sub_100005508(&v9, &qword_100982080, &unk_1007FDD30);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1005CCC7C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int8 a5)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100984EF0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "TransportManager: sending", v12, 2u);
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28[0] = v16;
    *v15 = 136315138;
    v17 = sub_1004FECE8(a4);
    v19 = a1;
    v20 = a2;
    v21 = sub_10000C4E4(v17, v18, v28);

    *(v15 + 4) = v21;
    a2 = v20;
    a1 = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "TransportManager: sending message of type: %s", v15, 0xCu);
    sub_10000C60C(v16);
  }

  sub_1002A9938(a3, v28);
  sub_1005CCA8C(a5, v28);
  v23 = v22;
  sub_100005508(v28, &qword_100982080, &unk_1007FDD30);
  ObjectType = swift_getObjectType();
  v25 = (*(v23 + 48))(a1, a2, a3, a4, ObjectType, v23);
  swift_unknownObjectRelease();
  return v25 | ((HIDWORD(v25) & 1) << 32);
}

double sub_1005CCEF8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100984EF0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "TransportManager: handling", v13, 2u);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v25 = a3;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    v18 = sub_1004FECE8(a3);
    v20 = sub_10000C4E4(v18, v19, &v26);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "TransportManager: handling message of type: %s", v16, 0xCu);
    sub_10000C60C(v17);
  }

  v21 = v5 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    (*(v23 + 8))(a1, a2, v25, a4, ObjectType, v23);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005CD160(int a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v26 = a5;
  v28 = a3;
  v29 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = type metadata accessor for DispatchQoS();
  v12 = *(v30 - 8);
  __chkstk_darwin(v30);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_100984EF0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "TransportManager: handling error", v18, 2u);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  v21 = v28;
  v20 = v29;
  *(v19 + 40) = v28;
  *(v19 + 48) = v20;
  *(v19 + 56) = v26;
  aBlock[4] = sub_1005D7F14;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E9830;
  v22 = _Block_copy(aBlock);
  v23 = v6;

  sub_100294008(v21, v20);
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1000054C0(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v27 + 8))(v11, v9);
  (*(v12 + 8))(v14, v30);
}

double sub_1005CD4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(a2, a3, a4, a5, a6, ObjectType, v13);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005CD5C8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_nearbyAgentTransport + 8];
  ObjectType = swift_getObjectType();
  result = (*(v9 + 32))(ObjectType, v9);
  if (result)
  {
    v12 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsLocalTransport + 8];
    v13 = swift_getObjectType();
    result = (*(v12 + 32))(v13, v12);
    if (result)
    {
      v14 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsInternetTransport + 8];
      v15 = swift_getObjectType();
      result = (*(v14 + 32))(v15, v14);
      if (result)
      {
        v16 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportBT + 8];
        v17 = swift_getObjectType();
        result = (*(v16 + 32))(v17, v16);
        if (result)
        {
          v18 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportAWDL + 8];
          v19 = swift_getObjectType();
          result = (*(v18 + 32))(v19, v18);
          if (result)
          {
            v20 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_coreBluetoothTransport + 8];
            v21 = swift_getObjectType();
            result = (*(v20 + 32))(v21, v20);
            if (result)
            {
              v22 = swift_allocObject();
              *(v22 + 16) = v0;
              aBlock[4] = sub_1005D7F0C;
              aBlock[5] = v22;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100011678;
              aBlock[3] = &unk_1008E97E0;
              v23 = _Block_copy(aBlock);
              v24 = v0;
              static DispatchQoS.unspecified.getter();
              v25[1] = _swiftEmptyArrayStorage;
              sub_1000054C0(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
              sub_100013EB8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v23);
              (*(v2 + 8))(v4, v1);
              (*(v6 + 8))(v8, v5);
            }
          }
        }
      }
    }
  }

  return result;
}

double sub_1005CD9A4(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005CDA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SDAuthenticationTransportRapportInfraWiFiOnly();
  result = swift_dynamicCastClass();
  if (result)
  {
    sub_1004FFD8C(a3, &v11);
    if (v12)
    {
      sub_1000121F8(&v11, v13);
      v6 = v14;
      v7 = v15;
      sub_10002CDC0(v13, v14);
      result = (*(v7 + 8))(v6, v7);
      if (v8)
      {
        v9 = result;
        v10 = v8;
        swift_beginAccess();
        sub_1002B24B4(0, 0, v9, v10);
        swift_endAccess();
        return sub_10000C60C(v13);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return sub_100005508(&v11, &qword_100982080, &unk_1007FDD30);
    }
  }

  return result;
}

uint64_t sub_1005CDB38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[3];
  v5 = a2[4];
  sub_10002CDC0(a2, v4);
  v24 = *(v5 + 8);
  result = v24(v4, v5);
  if (!v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = v7;
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportInfraWiFiTransportsByIdentifier;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (*(v11 + 16))
  {
    v12 = sub_100012854(v8, v9);
    v14 = v13;

    if (v14)
    {
      v25 = *(*(v11 + 56) + 16 * v12);
      swift_endAccess();
      *a3 = v25;
      return swift_unknownObjectRetain();
    }
  }

  else
  {
  }

  swift_endAccess();
  v15 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_queue);
  type metadata accessor for SDAuthenticationTransportRapportInfraWiFiOnly();
  v16 = swift_allocObject();
  *(v16 + 56) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v17 = objc_allocWithZone(RPCompanionLinkClient);
  v18 = v15;
  v19 = [v17 init];
  *(v16 + 48) = v19;
  *(v16 + 16) = v18;
  *(v16 + 24) = 0;
  [v19 setDispatchQueue:v18];
  *(v16 + 64) = 0x2020000400004;
  result = v24(v4, v5);
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = result;
  v22 = v20;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_1005D7D5C(v16, v21, v22, isUniquelyReferenced_nonNull_native, &v27);

  *(a1 + v10) = v27;
  result = swift_endAccess();
  *a3 = v16;
  *(a3 + 8) = &off_1008E9580;
  return result;
}

void sub_1005CDEB4(uint64_t a1)
{
  if (a1)
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100984EF0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136315138;
      swift_errorRetain();
      sub_10028088C(&unk_100985A40, &qword_1007FE740);
      v5 = String.init<A>(describing:)();
      v7 = sub_10000C4E4(v5, v6, &v12);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Error sending data: %s", v3, 0xCu);
      sub_10000C60C(v4);

      return;
    }
  }

  else
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100984EF0);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Sent data", v10, 2u);
    }
  }
}

void sub_1005CE104()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v62 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v58 - v10;
  v12 = type metadata accessor for UUID();
  v65 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Notification.userInfo.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v17;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v18 = sub_100570754(&aBlock), (v19 & 1) == 0))
  {

    sub_100285E74(&aBlock);
LABEL_14:
    v74 = 0u;
    v75 = 0u;
    goto LABEL_15;
  }

  sub_10000C5B0(*(v16 + 56) + 32 * v18, &v74);
  sub_100285E74(&aBlock);

  if (!*(&v75 + 1))
  {
LABEL_15:
    v30 = &unk_1009746F0;
    v31 = &qword_1007F90B0;
    v32 = &v74;
LABEL_16:
    sub_100005508(v32, v30, v31);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v60 = aBlock;
  v61 = v67;
  v20 = Notification.userInfo.getter();
  if (!v20)
  {
    sub_100026AC0(v60, v61);
    v74 = 0u;
    v75 = 0u;
    goto LABEL_24;
  }

  v21 = v20;
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v22;
  AnyHashable.init<A>(_:)();
  if (!*(v21 + 16) || (v23 = sub_100570754(&aBlock), (v24 & 1) == 0))
  {

    sub_100285E74(&aBlock);
    v74 = 0u;
    v75 = 0u;
    sub_100026AC0(v60, v61);
LABEL_24:
    v37 = v65;
    sub_100005508(&v74, &unk_1009746F0, &qword_1007F90B0);
LABEL_25:
    (*(v37 + 56))(v11, 1, 1, v12);
LABEL_26:
    v30 = &unk_100976120;
    v31 = &qword_1007F9260;
    v32 = v11;
    goto LABEL_16;
  }

  sub_10000C5B0(*(v21 + 56) + 32 * v23, &v74);
  sub_100285E74(&aBlock);

  if (!*(&v75 + 1))
  {
    sub_100026AC0(v60, v61);
    goto LABEL_24;
  }

  v25 = v60;
  v26 = v61;
  sub_1000276B4(0, &qword_100985A88, SFBLEDevice_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100026AC0(v25, v26);
    v37 = v65;
    goto LABEL_25;
  }

  v27 = aBlock;
  v28 = [aBlock identifier];

  if (v28)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v38 = v65;
  (*(v65 + 56))(v9, v29, 1, v12);
  sub_1005D8888(v9, v11);
  v39 = (*(v38 + 48))(v11, 1, v12);
  v40 = v61;
  if (v39 == 1)
  {
    sub_100026AC0(v60, v61);
    goto LABEL_26;
  }

  (*(v38 + 32))(v14, v11, v12);
  v41 = objc_allocWithZone(SDAutoUnlockSessionWrapper);
  v42 = v60;
  sub_100294008(v60, v40);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v42, v40);
  v44 = [v41 initWithData:isa];
  v45 = v40;
  v46 = v44;

  if (v46)
  {
    if ([v46 hasEncryptedPayload])
    {
      v47 = v64;
      v48 = v64[6];

      v59 = v48(v46, v14);
      v50 = v49;

      if (v50 >> 60 != 15)
      {
        v51 = v50;
        v58[2] = v47[2];
        v52 = swift_allocObject();
        swift_weakInit();
        v53 = swift_allocObject();
        v54 = v59;
        v53[2] = v59;
        v53[3] = v51;
        v58[0] = v51;
        v53[4] = v46;
        v53[5] = v52;
        v58[1] = v52;
        v70 = sub_1005D88F8;
        v71 = v53;
        aBlock = _NSConcreteStackBlock;
        v67 = 1107296256;
        v68 = sub_100011678;
        v69 = &unk_1008E9B50;
        v55 = _Block_copy(&aBlock);
        v56 = v54;
        v57 = v58[0];
        sub_1002A9924(v56, v58[0]);
        v64 = v46;

        static DispatchQoS.unspecified.getter();
        *&v74 = _swiftEmptyArrayStorage;
        sub_1000054C0(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
        sub_100013EB8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v55);

        sub_10028BCC0(v59, v57);
        sub_100026AC0(v60, v61);
        (*(v63 + 8))(v2, v0);
        (*(v62 + 8))(v5, v3);
        (*(v65 + 8))(v14, v12);

        return;
      }
    }

    (*(v65 + 8))(v14, v12);
    sub_100026AC0(v60, v61);
  }

  else
  {
    (*(v65 + 8))(v14, v12);
    sub_100026AC0(v42, v45);
  }

LABEL_17:
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000C4AC(v33, qword_100984EF0);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Received corrupt wrapper", v36, 2u);
  }
}

void sub_1005CEA18(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100984EF0);
  sub_100294008(a1, a2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100026AC0(a1, a2);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29[0] = v11;
    *v10 = 136315138;
    v12 = Data.description.getter();
    v14 = sub_10000C4E4(v12, v13, v29);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received data: %s", v10, 0xCu);
    sub_10000C60C(v11);
  }

  v15 = [a3 messageType];
  v16 = sub_1004FFD78(v15);
  if (v16 == 13)
  {
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = v15;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Received unknown message type %u", v18, 8u);
    }
  }

  else
  {
    v19 = v16;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      v22 = swift_unknownObjectWeakLoadStrong();
      v23 = *(v21 + 40);

      if (v22)
      {
        v24 = [objc_opt_self() sharedTransport];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 activeDevice];

          if (v26)
          {
            ObjectType = swift_getObjectType();
            v29[3] = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
            v29[4] = &off_1008EA2C0;
            v29[0] = v26;
            (*(v23 + 8))(a1, a2, v19, v29, ObjectType, v23);
            swift_unknownObjectRelease();
            sub_10000C60C(v29);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1005CEE7C()
{
  sub_10004C60C(v0 + 32);

  return swift_deallocClassInstance();
}

double sub_1005CEEE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

void sub_1005CEF70(void *a1)
{
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_queue] = a1;
  v1[OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_ready] = 1;
  v3 = objc_allocWithZone(IDSService);
  v4 = a1;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 initWithService:v5];

  if (v6)
  {

    v15 = sub_1000276B4(0, &unk_100985A30, IDSService_ptr);
    v16 = &off_1008E2EE8;
    *&v14 = v6;
    sub_1000121F8(&v14, &v1[OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_idsService]);
    v13.receiver = v1;
    v13.super_class = type metadata accessor for SDAuthenticationTransportIDSService();
    v7 = objc_msgSendSuper2(&v13, "init");
    sub_1002A9938(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_idsService, &v14);
    v8 = v15;
    v9 = v16;
    sub_10002CDC0(&v14, v15);
    v10 = v9[2];
    v11 = v4;
    v12 = v7;
    v10(v7, v4, v8, v9);

    sub_10000C60C(&v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005CF114(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v8 = a4;
  v9 = objc_allocWithZone(IDSProtobuf);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithProtobufData:isa type:(v8 + 2006) isResponse:0];

  v12 = a3[3];
  v13 = a3[4];
  sub_10002CDC0(a3, v12);
  v14 = (*(v13 + 32))(v12, v13);
  sub_10028088C(&qword_100985A68, &qword_10080CDB8);
  if (v14)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v16;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    sub_1002A9938(a3, &v45);
    sub_10028088C(&unk_100985A70, &unk_10080CDC0);
    sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
    if (swift_dynamicCast())
    {
      v17 = v44;
    }

    else
    {
      v17 = 0;
    }

    v18 = IDSCopyIDForDevice();

    if (v18)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v45 = v19;
    v46 = v21;
    sub_10028088C(&qword_100975100, &qword_1007FBA10);
    sub_1005D808C();
  }

  AnyHashable.init<A>(_:)();
  v22 = sub_1002F31EC(inited);
  swift_setDeallocating();
  sub_100285E74(inited + 32);
  sub_10028088C(&qword_100985A60, &unk_100808040);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1007F8830;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v24;
  AnyHashable.init<A>(_:)();
  *(v23 + 96) = &type metadata for Int;
  *(v23 + 72) = 15;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v25;
  AnyHashable.init<A>(_:)();
  *(v23 + 168) = &type metadata for Bool;
  v26 = v14 & 1;
  *(v23 + 144) = v26;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v27;
  AnyHashable.init<A>(_:)();
  *(v23 + 240) = &type metadata for Bool;
  *(v23 + 216) = v26;
  v28 = sub_10027FD18(v23);
  swift_setDeallocating();
  sub_10028088C(&qword_1009832B0, &unk_1007F64D0);
  swift_arrayDestroy();
  sub_1000276B4(0, &qword_100974E28, NSString_ptr);
  v29 = NSString.init(stringLiteral:)();
  sub_1002A9938(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_idsService, &v45);
  v30 = v47;
  v31 = v48;
  sub_10002CDC0(&v45, v47);
  v44 = v29;
  (*(v31 + 24))(v11, v22, 300, v28, &v44, v30, v31);

  v32 = v44;
  v33 = v44;

  sub_10000C60C(&v45);
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000C4AC(v34, qword_100984EF0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v37 = 136315394;
    v40 = sub_1004FECE8(a4);
    v42 = sub_10000C4E4(v40, v41, &v45);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2112;
    *(v37 + 14) = v33;
    *v38 = v32;
    v33 = v33;
    _os_log_impl(&_mh_execute_header, v35, v36, "Sent %s: %@", v37, 0x16u);
    sub_100005508(v38, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v39);
  }

  return 0x100000000;
}

id sub_1005CF9F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SDAuthenticationTransportIDSService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1005CFAE8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

void sub_1005CFB34(uint64_t a1)
{
  if (!a1)
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100984EF0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Successfully activated and registered request", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984EF0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Received error upon activation: %@)", v3, 0xCu);
    sub_100005508(v4, &qword_100975400, &qword_1007F65D0);

LABEL_10:

    return;
  }
}

void sub_1005CFD84(char a1)
{
  v2 = v1;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100984EF0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315138;
    v9 = sub_1004FECE8(a1);
    v11 = sub_10000C4E4(v9, v10, v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Registering for %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v12 = *(v2 + 32);
  sub_1004FECE8(a1);
  v13 = v12;
  v14 = String._bridgeToObjectiveC()();

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v15;
  v18[4] = sub_1005D8080;
  v18[5] = v16;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1005CC67C;
  v18[3] = &unk_1008E9AD8;
  v17 = _Block_copy(v18);

  [v13 registerEventID:v14 options:0 handler:v17];
  _Block_release(v17);
}

void sub_1005CFFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100984EF0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41[0] = v11;
    *v10 = 136315138;
    v12 = sub_1004FECE8(a3);
    v14 = sub_10000C4E4(v12, v13, v41);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received %s", v10, 0xCu);
    sub_10000C60C(v11);
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v15 = sub_100570754(v41), (v16 & 1) == 0))
  {
    sub_100285E74(v41);
LABEL_19:

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41[0] = v31;
      *v30 = 136315138;
      v32 = Dictionary.description.getter();
      v34 = sub_10000C4E4(v32, v33, v41);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to get data: %s", v30, 0xCu);
      sub_10000C60C(v31);
    }

    goto LABEL_28;
  }

  sub_10000C5B0(*(a1 + 56) + 32 * v15, &v44);
  sub_100285E74(v41);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
LABEL_22:
    v44 = 0u;
    v45 = 0u;
    goto LABEL_23;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v17 = sub_100570754(v41), (v18 & 1) == 0))
  {
    sub_100285E74(v41);
    goto LABEL_22;
  }

  sub_10000C5B0(*(a2 + 56) + 32 * v17, &v44);
  sub_100285E74(v41);
  if (!*(&v45 + 1))
  {
LABEL_23:
    sub_100005508(&v44, &unk_1009746F0, &qword_1007F90B0);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v28 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v35))
    {
LABEL_27:
      sub_100026AC0(1635017060, 0xE400000000000000);
LABEL_28:

      return;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "No sender IDS ID";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v28, v35, v37, v36, 2u);

    goto LABEL_27;
  }

  v20 = v41[0];
  v19 = v41[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v22 = *(Strong + 16), v23 = *(Strong + 24), swift_unknownObjectRetain(), , !v22))
  {

    v28 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v35))
    {
      goto LABEL_27;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "No delegate to send date to";
    goto LABEL_26;
  }

  v40 = a2;
  v24 = [objc_opt_self() sharedTransport];
  if (v24)
  {
    v25 = v24;
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 idsDeviceForUniqueID:v26];

    if (v27)
    {

      v42 = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
      v43 = &off_1008EA2C0;
      v41[0] = v27;
    }

    else
    {
      v42 = type metadata accessor for AuthenticationDevice(0);
      v43 = &off_1008EA310;
      v38 = sub_10002F604(v41);

      sub_1005E7C74(v20, v19, v40, v38);
    }

    ObjectType = swift_getObjectType();
    (*(v23 + 8))(1635017060, 0xE400000000000000, a3, v41, ObjectType, v23);
    sub_100026AC0(1635017060, 0xE400000000000000);
    swift_unknownObjectRelease();
    sub_10000C60C(v41);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005D05E8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1005D064C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = [*(v5 + 48) destinationDevice];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 identifier];

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v13 == a3 && v15 == a4)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v17 = [*(v5 + 48) destinationDevice];
  if (v17 && (v17, (v12 & 1) == 0) || *(v5 + 56) == 1)
  {
    [*(v5 + 48) invalidate];
    v18 = [objc_allocWithZone(RPCompanionLinkClient) init];
    v19 = *(v5 + 48);
    *(v5 + 48) = v18;
  }

  v20 = [*(v5 + 48) destinationDevice];
  if (v20 && (v20, (v12 & 1) != 0) && *(v5 + 56) != 1)
  {
    sub_1005D1378(a5, a1, a2);
  }

  else
  {
    v21 = [objc_allocWithZone(RPCompanionLinkDevice) init];
    v22 = String._bridgeToObjectiveC()();
    [v21 setIdentifier:v22];

    [*(v5 + 48) setDestinationDevice:v21];
    [*(v5 + 48) setControlFlags:*(v5 + 64)];
    v23 = *(v5 + 48);
    v42 = sub_1005D805C;
    v43 = v5;
    v36 = a4;
    v24 = a2;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_100011678;
    v41 = &unk_1008E99E8;
    v25 = _Block_copy(&aBlock);
    v26 = v23;

    [v26 setInvalidationHandler:v25];
    _Block_release(v25);

    v27 = *(v5 + 48);
    v42 = sub_1005D8064;
    v43 = v5;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_100011678;
    v41 = &unk_1008E9A10;
    v28 = _Block_copy(&aBlock);

    v29 = v27;

    [v29 setErrorFlagsChangedHandler:v28];
    _Block_release(v28);

    v30 = *(v5 + 48);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = a1;
    *(v32 + 32) = a2;
    *(v32 + 40) = a5;
    *(v32 + 48) = a3;
    *(v32 + 56) = v36;
    v42 = sub_1005D806C;
    v43 = v32;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_1005CC610;
    v41 = &unk_1008E9A60;
    v33 = _Block_copy(&aBlock);
    v34 = v30;
    sub_100294008(a1, v24);

    [v34 activateWithCompletion:v33];
    _Block_release(v33);
  }

  LOBYTE(aBlock) = 1;
  return 0x100000000;
}

void sub_1005D0AA0(uint64_t a1)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984EF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "rpSender object invalidated", v5, 2u);
  }

  *(a1 + 56) = 1;
}

id sub_1005D0B84(uint64_t a1)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984EF0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v5 = 136315394;
    v21 = [*(a1 + 48) errorFlags];
    type metadata accessor for RPErrorFlags(0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000C4E4(v6, v7, &v22);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = [*(a1 + 48) destinationDevice];
    if (v9 && (v10 = v9, v11 = [v9 identifier], v10, v11))
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = v12;
    }

    else
    {
      v14 = 0x8000000100798270;
      v15 = 0xD00000000000001BLL;
    }

    v16 = sub_10000C4E4(v15, v14, &v22);

    *(v5 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error Flags Changed to: %s for RPCompanionLinkClient with device %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  result = [*(a1 + 48) errorFlags];
  if ((result & 0x200) != 0)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Invalidating due to connection lost, cleaning up RPCompanionLinkClient", v20, 2u);
    }

    return [*(a1 + 48) invalidate];
  }

  return result;
}

void sub_1005D0E3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a5;
  if (a1)
  {
    swift_errorRetain();
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_100984EF0);
    swift_errorRetain();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = 7562617;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v43[0] = v15;
      *v13 = 138412546;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      *(v13 + 12) = 2080;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong && (v18 = *(Strong + 32), swift_unknownObjectRetain(), , v18))
      {
        swift_unknownObjectRelease();
        v19 = 0xE200000000000000;
        v12 = 28526;
      }

      else
      {
        v19 = 0xE300000000000000;
      }

      v31 = sub_10000C4E4(v12, v19, v43);

      *(v13 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v10, v11, "Received error upon activation: %@). Delegate is nil: %s", v13, 0x16u);
      sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v15);
    }

    else
    {
    }

    swift_beginAccess();
    v32 = swift_weakLoadStrong();
    if (v32)
    {
      v34 = *(v32 + 32);
      v33 = *(v32 + 40);
      swift_unknownObjectRetain();

      if (v34)
      {
        swift_getObjectType();
        v35 = _convertErrorToNSError(_:)();
        v36 = sub_1004FFBC4(v35, 25);
        (*(v33 + 16))(v36);

LABEL_22:

        swift_unknownObjectRelease();
        return;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      *(v22 + 56) = 0;
      *(v22 + 24) = 1;
      if (*(v22 + 32))
      {
        v23 = *(v22 + 40);
        ObjectType = swift_getObjectType();
        v25 = *(v23 + 24);
        swift_unknownObjectRetain();
        v25(ObjectType, v23);
        swift_unknownObjectRelease();
      }

      if (qword_100973B10 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000C4AC(v26, qword_100984EF0);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v42[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_10000C4E4(a6, a7, v42);
        _os_log_impl(&_mh_execute_header, v27, v28, "Successfully activated for connecting to IDS ID %s", v29, 0xCu);
        sub_10000C60C(v30);
      }

      sub_1005D1378(v7, a3, a4);
    }

    else
    {
      swift_beginAccess();
      v37 = swift_weakLoadStrong();
      if (v37)
      {
        v39 = *(v37 + 32);
        v38 = *(v37 + 40);
        swift_unknownObjectRetain();

        if (v39)
        {
          swift_getObjectType();
          v40 = sub_100010F88(10, 0xD000000000000029, 0x8000000100798240);
          (*(v38 + 16))(v40);
          goto LABEL_22;
        }
      }
    }
  }
}

void sub_1005D1378(char a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 48);
  sub_1004FECE8(a1);
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();

  sub_10028088C(&qword_100985A60, &unk_100808040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = a2;
  *(inited + 80) = a3;
  sub_100294008(a2, a3);
  sub_10027FD18(inited);
  swift_setDeallocating();
  sub_100005508(inited + 32, &qword_1009832B0, &unk_1007F64D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a1;
  aBlock[4] = sub_1005D804C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005CC610;
  aBlock[3] = &unk_1008E99C0;
  v14 = _Block_copy(aBlock);
  sub_100294008(a2, a3);

  [v8 sendEventID:v9 event:isa options:0 completion:v14];
  _Block_release(v14);
}

void sub_1005D15C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  if (a1)
  {
    swift_errorRetain();
    v8 = _convertErrorToNSError(_:)();
    v9 = [v8 code];

    if (v9 == -71148)
    {
      if (qword_100973B10 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000C4AC(v10, qword_100984EF0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "rpSender was invalidated. Retrying", v13, 2u);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        *(Strong + 56) = 1;
      }

      swift_beginAccess();
      v15 = swift_weakLoadStrong();
      if (v15)
      {
        v16 = *(v15 + 48);

        v17 = [v16 destinationDevice];

        if (v17)
        {
          v18 = [v17 identifier];

          if (v18)
          {
            v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v21 = v20;

            swift_beginAccess();
            if (swift_weakLoadStrong())
            {
              sub_1005D064C(a3, a4, v19, v21, a5);
            }

            else
            {
            }

            return;
          }
        }
      }
    }

    else
    {
      if (qword_100973B10 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000C4AC(v29, qword_100984EF0);
      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        swift_errorRetain();
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v34;
        *v33 = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "Received error for sending request: %@", v32, 0xCu);
        sub_100005508(v33, &qword_100975400, &qword_1007F65D0);
      }

      swift_beginAccess();
      v35 = swift_weakLoadStrong();
      if (v35)
      {
        v36 = *(v35 + 32);
        v37 = *(v35 + 40);
        swift_unknownObjectRetain();

        if (v36)
        {
          swift_getObjectType();
          v38 = _convertErrorToNSError(_:)();
          v39 = sub_1004FFBC4(v38, 25);
          (*(v37 + 16))(v39);

          swift_unknownObjectRelease();
        }
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1005D1B5C();

        return;
      }
    }

    return;
  }

  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_100984EF0);
  oslog = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41[0] = v25;
    *v24 = 136315138;
    v26 = sub_1004FECE8(a5);
    v28 = sub_10000C4E4(v26, v27, v41);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, oslog, v23, "Sent request: %s", v24, 0xCu);
    sub_10000C60C(v25);
  }

  else
  {
  }
}

id sub_1005D1B5C()
{
  v1 = v0;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984EF0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for SDAuthenticationTransportRapport();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Disconnecting", v5, 0xCu);
    sub_10000C60C(v6);
  }

  *(v1 + 56) = 1;
  return [*(v1 + 48) invalidate];
}

unint64_t sub_1005D1D0C(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v7 = a3[3];
  v8 = a3[4];
  sub_10002CDC0(a3, v7);
  result = (*(v8 + 8))(v7, v8);
  if (v10)
  {
    v11 = sub_1005D064C(a1, a2, result, v10, a4);

    return v11 | ((HIDWORD(v11) & 1) << 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005D1E14()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1005D1E98(void *a1)
{
  v28 = 0;
  v2 = [objc_opt_self() sharedManager];
  if (!v2)
  {
LABEL_15:
    if (!v28)
    {
      return v2;
    }

    goto LABEL_16;
  }

  v3 = [a1 encryptedPayload];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v5, v7);
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [a1 authTag];
  if (v9)
  {
    v10 = v9;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v11, v13);
  }

  else
  {
    v14.super.isa = 0;
  }

  v15 = [a1 nonce];
  if (v15)
  {
    v16 = v15;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v17, v19);
  }

  else
  {
    v20.super.isa = 0;
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v22 = [v2 decryptMessage:v8.super.isa authTag:v14.super.isa nonce:v20.super.isa bluetoothID:isa cachedDevices:1 errorCode:&v28];

  if (!v22)
  {
    v2 = 0;
    goto LABEL_15;
  }

  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v28)
  {
    return v2;
  }

LABEL_16:
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_100984EF0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to decrypt message", v26, 2u);
  }

  return v2;
}

void sub_1005D2170()
{
  v1 = v0;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984EF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Configuring CBServer", v5, 2u);
  }

  v6 = *(v1 + 16);
  v7 = *(v1 + 48);
  [v7 setDispatchQueue:v6];
  if (qword_100973B20 != -1)
  {
    swift_once();
  }

  [v7 setBleListenPSM:word_1009A0CB8];
  v8 = swift_allocObject();
  swift_weakInit();
  v15 = sub_1005D7EF0;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1005D2AC8;
  v14 = &unk_1008E96F0;
  v9 = _Block_copy(&v11);

  [v7 setAcceptHandler:v9];
  _Block_release(v9);
  v15 = sub_1005D2BE4;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1005CC610;
  v14 = &unk_1008E9718;
  v10 = _Block_copy(&v11);
  [v7 activateWithCompletion:v10];
  _Block_release(v10);
}

uint64_t sub_1005D23E4(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100984EF0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Accepted connection", v9, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v11 = *(Strong + 72), v12 = v11, , !v11) || (sub_1000276B4(0, &unk_100985A20, CBConnection_ptr), v13 = a1, v14 = static NSObject.== infix(_:_:)(), v12, v13, (v14 & 1) == 0))
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "New connection", v17, 2u);
    }

    swift_beginAccess();
    v18 = swift_weakLoadStrong();
    if (v18)
    {
      v19 = *(v18 + 72);
      *(v18 + 72) = a1;

      v20 = a1;
    }

    swift_beginAccess();
    v21 = swift_weakLoadStrong();
    if (v21)
    {
      v22 = *(v21 + 16);

      swift_beginAccess();
      v23 = swift_weakLoadStrong();
      if (v23)
      {
        v24 = *(v23 + 72);
        if (v24)
        {
          v25 = v24;

          [v25 setDispatchQueue:v22];
        }

        else
        {
        }
      }
    }
  }

  a2(0);
  v26 = a1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v29 = 136315394;
    v30 = [v26 peerDevice];
    v31 = [v30 identifier];

    if (v31)
    {
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0xD000000000000015;
      v34 = 0x8000000100789F30;
    }

    v35 = sub_10000C4E4(v32, v34, v47);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    v36 = [v26 peerDevice];
    v37 = [v36 idsDeviceID];

    if (v37)
    {
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {
      v38 = 0xD000000000000015;
      v40 = 0x8000000100789F30;
    }

    v41 = sub_10000C4E4(v38, v40, v47);

    *(v29 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v27, v28, "connection peer device: %s, idsID: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v42 = swift_weakLoadStrong();
  if (v42)
  {
    *(v42 + 24) = 1;
  }

  swift_beginAccess();
  v43 = swift_weakLoadStrong();
  if (v43)
  {
    if (*(v43 + 32))
    {
      v44 = *(v43 + 40);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      (*(v44 + 24))(ObjectType, v44);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1005D296C(v26);
  }

  return result;
}

void sub_1005D296C(void *a1)
{
  v3 = [objc_allocWithZone(CBReadRequest) init];
  [v3 setMinLength:1];
  [v3 setMaxLength:500];
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = a1;
  v10[4] = sub_1005D7F00;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100011678;
  v10[3] = &unk_1008E9790;
  v5 = _Block_copy(v10);
  v6 = v3;

  v7 = a1;

  [v6 setCompletion:v5];
  _Block_release(v5);
  v8 = *(v1 + 72);
  if (v8)
  {
    v9 = v8;
    [v9 readWithCBReadRequest:v6];
  }
}

void sub_1005D2AC8(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

void sub_1005D2B80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1005D2BE4(uint64_t a1)
{
  if (a1)
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100984EF0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Encountered error while activating CBServer %@", v3, 0xCu);
      sub_100005508(v4, &qword_100975400, &qword_1007F65D0);

LABEL_10:
    }
  }

  else
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100984EF0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Activated CBServer", v8, 2u);
      goto LABEL_10;
    }
  }
}

void sub_1005D2DE0(void *a1, void *a2, NSObject *a3)
{
  v6 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v6 - 8);
  v8 = &ObjectType - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &ObjectType - v14;
  v16 = [a1 error];
  if (v16)
  {

    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_100984EF0);
    v18 = a1;
    v105 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v105, v19))
    {
      goto LABEL_19;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = [v18 error];
    if (v22)
    {
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    *(v20 + 4) = v22;
    *v21 = v23;
    _os_log_impl(&_mh_execute_header, v105, v19, "Encountered error while trying to read: %@", v20, 0xCu);
    sub_100005508(v21, &qword_100975400, &qword_1007F65D0);

LABEL_18:

LABEL_19:
    v33 = v105;
LABEL_20:

    return;
  }

  v24 = [a1 data];
  if (!v24)
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000C4AC(v30, qword_100984EF0);
    v105 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v105, v31))
    {
      goto LABEL_19;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v105, v31, "data is nil!", v32, 2u);
    goto LABEL_18;
  }

  v104 = a3;
  v25 = v24;
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = v28 >> 62;
  v105 = v26;
  if ((v28 >> 62) > 1)
  {
    if (v29 != 2)
    {
      goto LABEL_35;
    }

    isa = v26[2].isa;
    v34 = v26[3].isa;
    v36 = __OFSUB__(v34, isa);
    v37 = v34 - isa;
    if (!v36)
    {
      if (v37)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v29)
  {
    if (!__OFSUB__(HIDWORD(v26), v26))
    {
      if (HIDWORD(v26) != v26)
      {
        goto LABEL_26;
      }

LABEL_35:
      if (qword_100973B10 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10000C4AC(v49, qword_100984EF0);
      v104 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v104, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v104, v50, "data is length 0!", v51, 2u);
      }

      sub_100026AC0(v105, v28);
      v33 = v104;
      goto LABEL_20;
    }

    goto LABEL_75;
  }

  if (!BYTE6(v28))
  {
    goto LABEL_35;
  }

LABEL_26:
  v103 = a2;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  v39 = sub_10000C4AC(v38, qword_100984EF0);
  sub_100294008(v26, v28);
  v40 = v26;
  v102 = v39;
  v41 = Logger.logObject.getter();
  v42 = v28;
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v43))
  {
    v101 = v10;
    v44 = v42;
    v45 = swift_slowAlloc();
    v46 = v45;
    *v45 = 134217984;
    if (v29 == 2)
    {
      v56 = v105[2].isa;
      v55 = v105[3].isa;
      v36 = __OFSUB__(v55, v56);
      v48 = v55 - v56;
      v47 = v103;
      if (!v36)
      {
        goto LABEL_45;
      }

      __break(1u);
    }

    else
    {
      v47 = v103;
      if (v29 == 1)
      {
        LODWORD(v48) = HIDWORD(v105) - v105;
        if (!__OFSUB__(HIDWORD(v105), v105))
        {
          v48 = v48;
LABEL_45:
          *(v45 + 4) = v48;
          sub_100026AC0(v105, v44);
          v57 = v43;
          v52 = v44;
          _os_log_impl(&_mh_execute_header, v41, v57, "Got data of length %ld", v46, 0xCu);

          v54 = v101;
          v53 = v47;
          goto LABEL_46;
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }
    }

    v48 = BYTE6(v44);
    goto LABEL_45;
  }

  sub_100026AC0(v40, v42);
  v52 = v42;
  v53 = v103;
  v54 = v10;
LABEL_46:

  v58 = v53[9];
  if (v58)
  {
    v59 = [v58 peerDevice];
    v60 = [v59 identifier];

    if (v60)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  UUID.init(uuidString:)();

  if ((*(v54 + 48))(v8, 1, v9) == 1)
  {
    sub_100005508(v8, &unk_100976120, &qword_1007F9260);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Connection with no peer device? Check whether you set self.connection for CBServer", v63, 2u);
    }

    sub_100026AC0(v105, v52);

    return;
  }

  (*(v54 + 32))(v15, v8, v9);
  v64 = [objc_opt_self() sharedTransport];
  if (!v64)
  {
LABEL_77:
    __break(1u);
    return;
  }

  v65 = v64;
  v66 = UUID._bridgeToObjectiveC()().super.isa;
  v67 = [v65 idsDeviceForBluetoothID:v66];

  if (!v67)
  {
    v104 = v52;
    (*(v54 + 16))(v13, v15, v9);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v106[0] = v103;
      *v81 = 136315138;
      sub_1000054C0(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v85 = *(v54 + 8);
      v85(v13, v9);
      v86 = sub_10000C4E4(v82, v84, v106);

      *(v81 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v79, v80, "Could not find IDS device for BT UUID %s", v81, 0xCu);
      sub_10000C60C(v103);

      sub_100026AC0(v105, v104);
      v85(v15, v9);
    }

    else
    {

      sub_100026AC0(v105, v104);
      v87 = *(v54 + 8);
      v87(v13, v9);
      v87(v15, v9);
    }

    return;
  }

  v101 = v54;
  v68 = objc_allocWithZone(SDAutoUnlockSessionWrapper);
  v69 = v105;
  sub_100294008(v105, v52);
  v70 = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v69, v52);
  v71 = [v68 initWithData:v70];

  if (!v71)
  {
    goto LABEL_59;
  }

  if (![v71 hasEncryptedPayload] || (v72 = v53[7], , v73 = v72(v71, v15), v75 = v74, , v75 >> 60 == 15))
  {

LABEL_59:
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "Received corrupt wrapper", v78, 2u);

      sub_100026AC0(v105, v52);
    }

    else
    {
      sub_100026AC0(v105, v52);
    }

    (*(v101 + 8))(v15, v9);
    return;
  }

  v88 = sub_1004FFD78([v71 messageType]);
  if (v88 == 13)
  {
    v89 = v71;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v104 = v75;
      v93 = v92;
      *v92 = 67109120;
      *(v92 + 1) = [v89 messageType];

      _os_log_impl(&_mh_execute_header, v90, v91, "Received unknown message type %u", v93, 8u);
      v94 = v101;

      sub_10028BCC0(v73, v104);

      sub_100026AC0(v105, v52);
    }

    else
    {
      sub_100026AC0(v105, v52);

      sub_10028BCC0(v73, v75);
      v94 = v101;
    }

    (*(v94 + 8))(v15, v9);
  }

  else
  {
    v95 = v101;
    if (v53[4])
    {
      v102 = v53[5];
      v100 = v88;
      ObjectType = swift_getObjectType();
      v106[3] = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
      v106[4] = &off_1008EA2C0;
      v106[0] = v67;
      v96 = v52;
      v97 = *(v102 + 8);
      swift_unknownObjectRetain();
      v98 = v67;
      v97(v73, v75, v100, v106, ObjectType, v102);
      v52 = v96;
      v95 = v101;
      swift_unknownObjectRelease();
      sub_10000C60C(v106);
    }

    sub_1005D296C(v104);
    sub_10028BCC0(v73, v75);

    sub_100026AC0(v105, v52);
    (*(v95 + 8))(v15, v9);
  }
}

uint64_t sub_1005D3AEC(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_1005D3B0C, 0, 0);
}

uint64_t sub_1005D3B0C()
{
  v1 = v0[19];
  [*(v1 + 72) invalidate];
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[20] = sub_10000C4AC(v2, qword_100984EF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating CBConnection", v5, 2u);
  }

  v6 = [objc_allocWithZone(CBConnection) init];
  v7 = *(v1 + 72);
  *(v1 + 72) = v6;

  v8 = *(v1 + 72);
  if (v8 && ([v8 setDispatchQueue:*(v0[19] + 16)], (v9 = *(v1 + 72)) != 0))
  {
    v10 = v0[19];
    [v9 setUseCase:131088];
    v11 = *(v1 + 72);
    v0[21] = v11;
    *(v10 + 88) = 0;
    if (v11)
    {
      v12 = v0[18];
      v13 = v11;
      [v13 setConnectionFlags:256];
      [v13 setPeerDevice:v12];
      [v13 setConnectTimeoutSeconds:4.0];
      if (qword_100973B20 != -1)
      {
        swift_once();
      }

      [v13 setBlePSM:word_1009A0CB8];
      v0[2] = v0;
      v0[3] = sub_1005D3E98;
      v14 = swift_continuation_init();
      v0[17] = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100638A98;
      v0[13] = &unk_1008E9948;
      v0[14] = v14;
      [v13 activateWithCompletion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }
  }

  else
  {
    *(v0[19] + 88) = 0;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Failed to create CBConnection", v17, 2u);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1005D3E98()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1005D4094;
  }

  else
  {
    v2 = sub_1005D3FA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005D3FA8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully activated CBConnection!!!", v4, 2u);
  }

  v5 = v1[21];
  v6 = v1[19];

  *(v6 + 88) = 1;
  sub_1005D4104();

  v7 = v1[1];

  return v7();
}

uint64_t sub_1005D4094(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_1005D4104()
{
  v1 = v0;
  if (!*(v0 + 72) || *(v0 + 88) != 1)
  {
LABEL_40:
    if (qword_100973B10 != -1)
    {
LABEL_52:
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_100984EF0);

    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25[0] = v20;
      *v19 = 136315138;

      v21 = String.init<A>(describing:)();
      v23 = sub_10000C4E4(v21, v22, v25);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, oslog, v18, "%s: Not connected yet", v19, 0xCu);
      sub_10000C60C(v20);
    }

    else
    {
    }

    return;
  }

  swift_beginAccess();
  while (1)
  {
    v2 = *(v1 + 80);
    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        return;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

    swift_beginAccess();
    v3 = *(v1 + 80);
    v4 = v3 >> 62;
    if (v3 >> 62)
    {
      break;
    }

    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_9:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v5 = *(v3 + 32);
    }

    v6 = v5;
    if (v4)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_50;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_51;
      }

      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_50;
      }
    }

    v8 = v7 - 1;
    if (__OFSUB__(v7, 1))
    {
      goto LABEL_49;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v1 + 80) = v3;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v4)
      {
        v10 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v8 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_24:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_25;
    }

    if (v4)
    {
      goto LABEL_24;
    }

LABEL_25:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *(v1 + 80) = v3;
    v10 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_26:

    if (v3 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_55;
      }

      memmove((v10 + 32), (v10 + 40), 8 * (v15 - 1));
      v16 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v16 - 1;
      if (__OFSUB__(v16, 1))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      v11 = *(v10 + 16);
      memmove((v10 + 32), (v10 + 40), 8 * v11 - 8);
      v12 = v11 - 1;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_39;
      }
    }

    *(v10 + 16) = v12;
    *(v1 + 80) = v3;
    swift_endAccess();
    v13 = *(v1 + 72);
    if (v13)
    {
      v14 = v13;
      [v14 writeWithCBWriteRequest:v6];
    }
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_54;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

unint64_t sub_1005D4540(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  LODWORD(v6) = a4;
  v86 = a1;
  v87 = a2;
  v85 = *v4;
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v8 - 8);
  v10 = &v80 - v9;
  v11 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v11 - 8);
  v13 = &v80 - v12;
  v14 = v4[9];
  if (v14 && (v15 = [v14 peerDevice], v16 = objc_msgSend(v15, "idsDeviceID"), v15, v16))
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = a3[3];
  v21 = a3[4];
  sub_10002CDC0(a3, v20);
  v22 = (*(v21 + 8))(v20, v21);
  v24 = &selRef_finishedEventForRecordID_withResults_;
  if (v19)
  {
    if (v23)
    {
      if (v17 == v22 && v19 == v23)
      {

        goto LABEL_34;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    v83 = v6;
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_100984EF0);
    sub_1002A9938(a3, aBlock);

    v6 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = os_log_type_enabled(v6, v28);
    v84 = v10;
    if (v29)
    {
      v82 = v28;
      v30 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v92 = v81;
      *v30 = 136315394;
      v31 = v5[9];
      if (v31 && (v32 = [v31 peerDevice], v33 = objc_msgSend(v32, "idsDeviceID"), v32, v33))
      {
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v34 = 0xD000000000000015;
        v36 = 0x8000000100789F30;
      }

      v37 = sub_10000C4E4(v34, v36, &v92);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2080;
      v38 = v89;
      v39 = v90;
      sub_10002CDC0(aBlock, v89);
      v40 = (*(v39 + 1))(v38, v39);
      if (v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = 0xD000000000000015;
      }

      if (v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = 0x8000000100789F30;
      }

      sub_10000C60C(aBlock);
      v44 = sub_10000C4E4(v42, v43, &v92);

      *(v30 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v6, v82, "peer device changed from %s to %s. Invalidating old BT connection", v30, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v6) = v83;
      v24 = &selRef_finishedEventForRecordID_withResults_;
    }

    else
    {

      sub_10000C60C(aBlock);
      LOBYTE(v6) = v83;
    }
  }

  else
  {
    if (!v23)
    {
      goto LABEL_34;
    }

    v84 = v10;
  }

  v45 = v24;
  v46 = [objc_allocWithZone(CBDevice) v24[486]];
  v47 = a3[3];
  v48 = a3[4];
  sub_10002CDC0(a3, v47);
  (*(v48 + 48))(v47, v48);
  v49 = type metadata accessor for UUID();
  v50 = *(v49 - 8);
  result = (*(v50 + 48))(v13, 1, v49);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  UUID.uuidString.getter();
  v52 = String._bridgeToObjectiveC()();

  (*(v50 + 8))(v13, v49);
  [v46 setIdentifier:v52];

  v53 = type metadata accessor for TaskPriority();
  v54 = v84;
  (*(*(v53 - 8) + 56))(v84, 1, 1, v53);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v5;
  *(v55 + 40) = v46;
  v57 = v86;
  v56 = v87;
  *(v55 + 48) = v86;
  *(v55 + 56) = v56;
  *(v55 + 64) = v6;

  sub_100294008(v57, v56);
  sub_1002B3098(0, 0, v54, &unk_10080CDA0, v55);

  v24 = v45;
LABEL_34:
  v58 = sub_1005D5620(v86, v87, a3, v6);
  v60 = v59 >> 60;
  if (v59 >> 60 == 15)
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_10000C4AC(v70, qword_100984EF0);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock[0] = v74;
      *v73 = 136315138;
      v92 = v5;

      v75 = String.init<A>(describing:)();
      v77 = sub_10000C4E4(v75, v76, aBlock);

      *(v73 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v71, v72, "%s: Error encrypting message", v73, 0xCu);
      sub_10000C60C(v74);
    }

    if (v5[4])
    {
      v78 = v5[5];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v69 = 1;
      v79 = sub_100010F88(1, 0xD000000000000018, 0x8000000100798200);
      (*(v78 + 16))(v79);

      swift_unknownObjectRelease();
    }

    else
    {
      v69 = 1;
    }
  }

  else
  {
    v61 = v58;
    v62 = v59;
    v63 = [objc_allocWithZone(CBWriteRequest) v24[486]];
    sub_10028088C(&unk_100985A50, &qword_1007F8340);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1007F5670;
    *(v64 + 32) = v61;
    *(v64 + 40) = v62;
    sub_100294008(v61, v62);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v63 setDataArray:isa];

    v66 = swift_allocObject();
    *(v66 + 16) = v61;
    *(v66 + 24) = v62;
    v90 = sub_1005D8008;
    v91 = v66;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    v89 = &unk_1008E98D0;
    v67 = _Block_copy(aBlock);
    sub_100294008(v61, v62);

    [v63 setCompletion:v67];
    _Block_release(v67);
    swift_beginAccess();
    v68 = v63;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v5[10] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10028BCC0(v61, v62);

    v69 = 0;
  }

  LOBYTE(aBlock[0]) = v60 < 0xF;
  return v69 | ((v60 < 0xF) << 32);
}

uint64_t sub_1005D4F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 160) = a8;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  *(v8 + 72) = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 96) = v10;
  *(v8 + 104) = *(v10 - 8);
  *(v8 + 112) = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  *(v8 + 120) = v11;
  *(v8 + 128) = *(v11 - 8);
  *(v8 + 136) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v8 + 144) = v12;
  *v12 = v8;
  v12[1] = sub_1005D5084;

  return sub_1005D3AEC(a5);
}

uint64_t sub_1005D5084()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005D51CC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1005D51CC()
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984EF0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "CBConnection activation failed with error: %@. Is the other device running CBServer?", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  v7 = v0[9];

  v8 = *(v7 + 72);
  if (v8)
  {
    [v8 invalidate];
  }

  v9 = v0[19];
  v10 = v0[14];
  v22 = v0[16];
  v23 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  v13 = *(v0 + 160);
  v14 = v0[10];
  v15 = v0[11];
  v16 = v0[9];
  v21 = v0[17];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v9;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = v13;
  v0[6] = sub_1005D8010;
  v0[7] = v17;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E9920;
  v18 = _Block_copy(v0 + 2);
  swift_errorRetain();

  sub_100294008(v14, v15);
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_1000054C0(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v11 + 8))(v10, v12);
  (*(v22 + 8))(v21, v23);

  v19 = v0[1];

  return v19();
}

double sub_1005D554C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = _convertErrorToNSError(_:)();
    v4 = sub_1004FFBC4(v3, 25);
    (*(v2 + 16))(v4);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005D5620(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v5 = v4;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100984EF0);
  sub_1002A9938(a3, v48);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v45 = a2;
    v46 = v4;
    v47 = swift_slowAlloc();
    *v12 = 136315394;

    v13 = String.init<A>(describing:)();
    v15 = sub_10000C4E4(v13, v14, &v47);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = v49;
    v17 = v50;
    sub_10002CDC0(v48, v49);
    v18 = (*(v17 + 8))(v16, v17);
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0xD000000000000015;
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0x8000000100789F30;
    }

    sub_10000C60C(v48);
    v22 = sub_10000C4E4(v20, v21, &v47);

    *(v12 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: Beginning encryption with key for device %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000C60C(v48);
  }

  v23 = [objc_opt_self() sharedManager];
  if (!v23)
  {
    v29 = 0;
    goto LABEL_16;
  }

  v24.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v25 = a3[3];
  v26 = a3[4];
  sub_10002CDC0(a3, v25);
  (*(v26 + 8))(v25, v26);
  if (v27)
  {
    v28 = String._bridgeToObjectiveC()();
  }

  else
  {
    v28 = 0;
  }

  v47 = 0;
  v48[0] = 0;
  v46 = 0;
  v33 = [v23 encryptMessageData:v24.super.isa deviceID:v28 encryptedMessage:v48 authTag:&v47 nonce:{&v46, v45}];

  v34 = v46;
  v23 = v47;
  v29 = v48[0];
  if (!v33)
  {
    v30 = v46;
    v23 = v23;
    goto LABEL_27;
  }

  if (!v48[0])
  {
    v30 = v46;
    v23 = v23;
    if (v5[4])
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (!v47)
  {
    v30 = v46;
LABEL_27:
    v29 = v29;
    if (v5[4])
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (!v46)
  {
    v23 = v47;
    v29 = v29;
LABEL_16:
    v30 = 0;
    if (v5[4])
    {
LABEL_17:
      v31 = v5[5];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v32 = sub_100010F88(1, 0xD000000000000019, 0x8000000100798220);
      (*(v31 + 16))(v32);

      swift_unknownObjectRelease();
LABEL_29:

      return 0;
    }

LABEL_28:

    goto LABEL_29;
  }

  v35 = objc_allocWithZone(SDAutoUnlockSessionWrapper);
  v36 = v34;
  v37 = v23;
  v38 = v29;
  v39 = [v35 init];
  if (v39)
  {
    v40 = v39;
    [v39 setEncryptedPayload:v38];
    [v40 setAuthTag:v37];
    [v40 setNonce:v36];
    [v40 setMessageType:a4 + 2006];
    v41 = [v40 data];
    if (v41)
    {
      v42 = v41;
      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v43;
    }
  }

  else
  {
  }

  return 0;
}

void sub_1005D5B98(uint64_t a1, unint64_t a2)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100984EF0);
  sub_100294008(a1, a2);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100026AC0(a1, a2);
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = Data.description.getter();
    v10 = sub_10000C4E4(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Wrote data %s", v6, 0xCu);
    sub_10000C60C(v7);
  }
}

id sub_1005D5D0C()
{
  v1 = v0;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984EF0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Disconnecting", v5, 0xCu);
    sub_10000C60C(v6);
  }

  result = *(v1 + 72);
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

uint64_t sub_1005D5EB0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1005D5F80()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1005D5FDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1005D6028()
{
  v1 = v0;
  if (!*(v0 + 32) || (, isCancelled = swift_task_isCancelled(), result = , (isCancelled & 1) == 0))
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100984EF0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      type metadata accessor for ResponseTimer();

      v9 = String.init<A>(describing:)();
      v11 = sub_10000C4E4(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s Timer cancelled", v7, 0xCu);
      sub_10000C60C(v8);
    }

    if (*(v1 + 32))
    {

      Task.cancel()();
    }

    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t sub_1005D6208(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for ContinuousClock.Instant();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1005D6330, 0, 0);
}

uint64_t sub_1005D6330()
{
  v19 = v0;
  if (*(v0[4] + 32))
  {
    sub_1005D6028();
  }

  ContinuousClock.init()();
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[12] = sub_10000C4AC(v1, qword_100984EF0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    v0[2] = v4;
    type metadata accessor for ResponseTimer();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Starting timer for %ld sec", v6, 0x16u);
    sub_10000C60C(v7);
  }

  v11 = v0[7];
  v12 = v0[5];
  v13 = v0[6];
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v14 = *(v13 + 8);
  v0[13] = v14;
  v0[14] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_1005D65C0;
  v16 = v0[8];

  return ContinuousClock.sleep(until:tolerance:)(v16, 0, 0, 1);
}

uint64_t sub_1005D65C0()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  *(*v1 + 128) = v0;

  v2(v3, v4);
  if (v0)
  {
    v5 = sub_1005D67EC;
  }

  else
  {
    v5 = sub_1005D6740;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005D6740()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_1005D6990();
  (*(v2 + 8))(v1, v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1005D67EC()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ran into error creating timer: %@", v3, 0xCu);
    sub_100005508(v4, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = sub_1005D6990();
  (*(v7 + 8))(v6, v8, v9);

  v10 = v0[1];

  return v10();
}

double sub_1005D6990()
{
  v1 = v0;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984EF0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for ResponseTimer();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Timer fired", v5, 0xCu);
    sub_10000C60C(v6);
  }

  if (*(v1 + 16))
  {
    swift_unknownObjectRetain();
    sub_100430E2C();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005D6B1C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1005D6B94()
{
  result = qword_100985A10;
  if (!qword_100985A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985A10);
  }

  return result;
}

uint64_t sub_1005D6C04(void *a1)
{
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  *(v1 + 24) = 1;
  *(v1 + 48) = sub_1005D8990;
  *(v1 + 56) = 0;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 defaultCenter];
  v6 = qword_100973B18;

  if (v6 != -1)
  {
    swift_once();
  }

  [v5 addObserver:v1 selector:"handleBLEMessage:" name:qword_1009A0CB0 object:0];

  return v1;
}

uint64_t sub_1005D6D00(void *a1)
{
  *(v1 + 72) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  v3 = objc_allocWithZone(CBServer);
  v4 = a1;
  *(v1 + 48) = [v3 init];
  *(v1 + 80) = _swiftEmptyArrayStorage;
  *(v1 + 88) = 0;
  *(v1 + 56) = sub_1005D8990;
  *(v1 + 64) = 0;
  sub_1005D2170();
  return v1;
}

void *sub_1005D6D8C(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = 0;
  v3 = [objc_allocWithZone(RPCompanionLinkClient) init];
  v1[4] = v3;
  [v3 setDispatchQueue:a1];
  sub_1005CFD84(0);
  sub_1005CFD84(1);
  sub_1005CFD84(2);
  sub_1005CFD84(3);
  sub_1005CFD84(4);
  sub_1005CFD84(5);
  sub_1005CFD84(6);
  sub_1005CFD84(7);
  sub_1005CFD84(8);
  sub_1005CFD84(9);
  sub_1005CFD84(10);
  sub_1005CFD84(11);
  sub_1005CFD84(12);
  v4 = v1[4];
  v8[4] = sub_1005CFB34;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1005CC610;
  v8[3] = &unk_1008E96A0;
  v5 = _Block_copy(v8);
  v6 = v4;
  [v6 activateWithCompletion:v5];
  _Block_release(v5);

  return v1;
}

char *sub_1005D6EEC(void *a1)
{
  type metadata accessor for SDAuthenticationTransportNearbyAgent();
  swift_allocObject();
  v2 = a1;
  v3 = sub_1005D6C04(v2);
  v4 = objc_allocWithZone(type metadata accessor for SDAuthenticationTransportIDSServiceLocal());
  v5 = v2;
  sub_1005CEF70(v5);
  v7 = v6;
  v8 = objc_allocWithZone(type metadata accessor for SDAuthenticationTransportIDSServiceInternet());
  v9 = v5;
  sub_1005CEF70(v9);
  v11 = v10;
  type metadata accessor for SDAuthenticationTransportRapportBTOnly();
  v12 = swift_allocObject();
  *(v12 + 56) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  v13 = objc_allocWithZone(RPCompanionLinkClient);
  v14 = v9;
  v15 = [v13 init];
  *(v12 + 48) = v15;
  *(v12 + 16) = v14;
  *(v12 + 24) = 0;
  [v15 setDispatchQueue:v14];
  *(v12 + 64) = 0x40000600102;
  type metadata accessor for SDAuthenticationTransportRapportAWDLOnly();
  v16 = swift_allocObject();
  *(v16 + 56) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v17 = objc_allocWithZone(RPCompanionLinkClient);
  v18 = v14;
  v19 = [v17 init];
  *(v16 + 48) = v19;
  *(v16 + 16) = v18;
  *(v16 + 24) = 0;
  [v19 setDispatchQueue:v18];
  *(v16 + 64) = 0x8040000220002;
  type metadata accessor for SDAuthenticationTransportCoreBluetooth();
  swift_allocObject();
  v20 = v18;
  v21 = sub_1005D6D00(v20);

  v22 = type metadata accessor for SDAuthenticationTransportManager();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock;
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *&v23[v24] = v25;
  *&v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportInfraWiFiTransportsByIdentifier] = &_swiftEmptyDictionarySingleton;
  *&v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_queue] = v20;
  v26 = &v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_nearbyAgentTransport];
  *v26 = v3;
  v26[1] = &off_1008E9640;
  v27 = &v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsLocalTransport];
  *v27 = v7;
  *(v27 + 1) = &off_1008E9600;
  v28 = &v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsInternetTransport];
  *v28 = v11;
  *(v28 + 1) = &off_1008E95C0;
  v29 = &v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportBT];
  *v29 = v12;
  v29[1] = &off_1008E9580;
  v30 = &v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportAWDL];
  *v30 = v16;
  v30[1] = &off_1008E9580;
  v31 = &v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_coreBluetoothTransport];
  *v31 = v21;
  v31[1] = &off_1008E9540;
  type metadata accessor for SDAuthenticationTransportRapportReceiver();
  swift_allocObject();
  v32 = v20;
  *&v23[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportReceiver] = sub_1005D6D8C(v32);
  v60.receiver = v23;
  v60.super_class = v22;
  v33 = objc_msgSendSuper2(&v60, "init");
  v34 = *&v33[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_nearbyAgentTransport + 8];
  ObjectType = swift_getObjectType();
  v36 = *(v34 + 16);
  v37 = v33;
  swift_unknownObjectRetain();
  v36(v33, &off_1008E9680, ObjectType, v34);
  swift_unknownObjectRelease();
  v38 = *&v37[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsLocalTransport + 8];
  v39 = swift_getObjectType();
  v40 = *(v38 + 16);
  v41 = v37;
  swift_unknownObjectRetain();
  v40(v33, &off_1008E9680, v39, v38);
  swift_unknownObjectRelease();
  v42 = *&v41[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsInternetTransport + 8];
  v43 = swift_getObjectType();
  v44 = *(v42 + 16);
  v45 = v41;
  swift_unknownObjectRetain();
  v44(v33, &off_1008E9680, v43, v42);
  swift_unknownObjectRelease();
  v46 = *&v45[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportBT + 8];
  v47 = swift_getObjectType();
  v48 = *(v46 + 16);
  v49 = v45;
  swift_unknownObjectRetain();
  v48(v33, &off_1008E9680, v47, v46);
  swift_unknownObjectRelease();
  v50 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportAWDL + 8];
  v51 = swift_getObjectType();
  v52 = *(v50 + 16);
  v53 = v49;
  swift_unknownObjectRetain();
  v52(v33, &off_1008E9680, v51, v50);
  swift_unknownObjectRelease();
  v54 = *&v53[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_coreBluetoothTransport + 8];
  v55 = swift_getObjectType();
  v56 = *(v54 + 16);
  v57 = v53;
  swift_unknownObjectRetain();
  v56(v33, &off_1008E9680, v55, v54);
  swift_unknownObjectRelease();

  v58 = *&v57[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportReceiver];

  *(v58 + 16) = v33;
  *(v58 + 24) = &off_1008E9680;

  swift_unknownObjectRelease();
  return v57;
}

unint64_t sub_1005D745C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v6 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v6 - 8);
  v8 = &v52 - v7;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100984EF0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Beginning encryption", v12, 2u);
  }

  v13 = [objc_opt_self() sharedManager];
  if (!v13)
  {
    v19 = 0;
    v20 = 0;
LABEL_24:
    v25 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v25, v47, "Error converting message to data", v48, 2u);
    }

    v46 = 0;
    v45 = 10;
    goto LABEL_27;
  }

  v14.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = a3[3];
  v16 = a3[4];
  sub_10002CDC0(a3, v15);
  (*(v16 + 8))(v15, v16);
  if (v17)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  aBlock[0] = 0;
  v56 = 0;
  v57 = 0;
  v21 = [v13 encryptMessageData:v14.super.isa deviceID:v18 encryptedMessage:aBlock authTag:&v57 nonce:&v56];

  v20 = v56;
  v22 = v57;
  v13 = aBlock[0];
  if (!v21)
  {
    v20 = v56;
LABEL_21:
    v19 = v22;
    v13 = v13;
    goto LABEL_24;
  }

  if (!aBlock[0])
  {
    v20 = v56;
    v19 = v22;
    goto LABEL_24;
  }

  if (!v57)
  {
    v20 = v56;
    v13 = v13;
    v19 = 0;
    goto LABEL_24;
  }

  if (!v56)
  {
    goto LABEL_21;
  }

  v23 = objc_allocWithZone(SDAutoUnlockSessionWrapper);
  v20 = v20;
  v19 = v22;
  v13 = v13;
  v24 = [v23 init];
  v25 = v24;
  if (!v24 || ([v24 setEncryptedPayload:v13], [v25 setAuthTag:v19], [v25 setNonce:v20], [v25 setMessageType:a4 + 2006], (v26 = [v25 data]) == 0))
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Error encrypting message", v51, 2u);
    }

    v46 = 0;
    v45 = 10;
    v13 = v19;
    v19 = v20;
    v20 = v49;
    goto LABEL_27;
  }

  v27 = v26;
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v29;
  v54 = v28;

  v52 = [objc_allocWithZone(SFBLEDevice) init];
  v31 = a3[3];
  v30 = a3[4];
  sub_10002CDC0(a3, v31);
  (*(v30 + 48))(v31, v30);
  v32 = type metadata accessor for UUID();
  v33 = *(v32 - 8);
  result = (*(v33 + 48))(v8, 1, v32);
  if (result != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v33 + 8))(v8, v32);
    v36 = v52;
    [v52 setIdentifier:isa];

    [v36 setUseBTPipe:1];
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Sending data", v39, 2u);
    }

    v40 = [objc_opt_self() sharedNearbyAgent];
    v42 = v53;
    v41 = v54;
    v43 = Data._bridgeToObjectiveC()().super.isa;
    aBlock[4] = sub_1005CDEB4;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005CC610;
    aBlock[3] = &unk_1008E9858;
    v44 = _Block_copy(aBlock);
    [v40 sendUnlockData:v43 toBLEDevice:v36 completion:v44];
    _Block_release(v44);

    sub_100026AC0(v41, v42);
    v45 = 0;
    v46 = 1;
LABEL_27:

    LOBYTE(aBlock[0]) = v46;
    return v45 | (v46 << 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1005D7B38()
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100984EF0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Cannot send message over unsupported transport", v3, 2u);
  }

  return 0x100000000;
}

void sub_1005D7C28()
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100984EF0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Cannot disconnect over unsupported transport", v2, 2u);
  }
}

unint64_t sub_1005D7D10(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D8160, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_1005D7D5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_100012854(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100577CA0(v16, a4 & 1);
      v11 = sub_100012854(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1002D2190();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = &off_1008E9580;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = (v21[7] + 16 * v11);
  *v24 = a1;
  v24[1] = &off_1008E9580;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_1005D7F2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100005C04;

  return sub_1005D4F28(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1005D808C()
{
  result = qword_100985A80;
  if (!qword_100985A80)
  {
    sub_100280938(&qword_100975100, &qword_1007FBA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985A80);
  }

  return result;
}

void sub_1005D8108(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v51[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (qword_100973B10 == -1)
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
  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_100984EF0);
  v17 = a2;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v50 = v5;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = a1;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v51[0] = v24;
    *v21 = 138412546;
    *(v21 + 4) = v17;
    *v23 = v17;
    *(v21 + 12) = 2080;
    v25 = v17;
    *(v21 + 14) = sub_10000C4E4(a3, a4, v51);
    _os_log_impl(&_mh_execute_header, v18, v19, "Received: %@ from: %s", v21, 0x16u);
    sub_100005508(v23, &qword_100975400, &qword_1007F65D0);
    a1 = v22;

    sub_10000C60C(v24);
  }

  v26 = [v17 type];
  v27 = v26;
  v28 = sub_1004FFD78(v26);
  if (v28 == 13)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 33554688;
      *(v31 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received unknown message type %hu", v31, 6u);
    }
  }

  else
  {
    v32 = v28;
    v33 = a3;
    v34 = String._bridgeToObjectiveC()();
    v35 = [a1 deviceForFromID:v34];

    if (v35)
    {
      v36 = v50 + OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v37 = *(v36 + 8);
        v38 = [v17 data];
        if (v38)
        {
          v39 = v38;
          ObjectType = swift_getObjectType();
          v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;

          v51[3] = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
          v51[4] = &off_1008EA2C0;
          v51[0] = v35;
          v44 = *(v37 + 8);
          v45 = v35;
          v44(v41, v43, v32, v51, ObjectType, v37);

          sub_100026AC0(v41, v43);
          swift_unknownObjectRelease();
          sub_10000C60C(v51);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }

    else
    {

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v51[0] = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_10000C4E4(v33, a4, v51);
        _os_log_impl(&_mh_execute_header, v46, v47, "Could not find same account device matching fromID %s", v48, 0xCu);
        sub_10000C60C(v49);
      }
    }
  }
}

void sub_1005D8644(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (qword_100973B10 == -1)
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
  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100984EF0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_10000C4E4(a1, a2, &v19);
    *(v16 + 12) = 1024;
    *(v16 + 14) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received confirmation that message: %s sent success: %{BOOL}d", v16, 0x12u);
    sub_10000C60C(v17);
  }
}

uint64_t sub_1005D8888(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1005D8990(void *a1)
{

  return sub_1000469B8(a1);
}

uint64_t sub_1005D89EC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100985A90);
  v1 = sub_10000C4AC(v0, qword_100985A90);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005D8AB4()
{
  v1 = *(_s22GuestModeUnlockPairingV17InitialKeyContextVMa(0) + 24);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationPrePairingRequest) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1005D8B88(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 28);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005D8C08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007FA7E0;
  if (qword_100973B30 != -1)
  {
    swift_once();
  }

  *(v7 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v7 + 64) = &off_10097BD58;
  *(v7 + 96) = &type metadata for SDAuthentication.Operation.UnpairOtherDevicesForSameFeature;
  *(v7 + 104) = &off_10097BF58;
  *(v7 + 136) = &type metadata for SDAuthentication.Operation.IncludeLongTermKeyAndAKSTokenInMessage;
  *(v7 + 144) = &off_10097BFE8;
  *(v7 + 176) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v7 + 184) = &off_10097BE18;
  *a3 = v7;
  v8 = _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa(0);
  *(a3 + *(v8 + 28)) = 0;
  v36 = v8;
  *(a3 + *(v8 + 32)) = 4;
  if (qword_100973B28 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100985A90);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v33 = a3;
    v34 = v3;
    v35 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136315138;
    v15 = [v10 sessionID];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0xD000000000000015;
      v19 = 0x8000000100789F30;
    }

    v20 = sub_10000C4E4(v17, v19, &v37);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Process PairingRequest SessionID: %s", v13, 0xCu);
    sub_10000C60C(v14);

    a2 = v35;
    a3 = v33;
  }

  else
  {
  }

  v21 = [v10 longTermKey];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = (a3 + *(v36 + 24));
    *v26 = v23;
    v26[1] = v25;
    v27 = _s22GuestModeUnlockPairingV17InitialKeyContextVMa(0);
    sub_1005DB85C(a2 + *(v27 + 20), a3 + *(v36 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV17InitialKeyContextVMa);
  }

  else
  {
    v29 = sub_100010F88(10, 0xD000000000000015, 0x800000010078CD90);
    v31 = v30;
    sub_1000115C8();
    swift_allocError();
    *v32 = v29;
    *(v32 + 8) = v31;
    swift_willThrow();

    sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV17InitialKeyContextVMa);
  }
}

id sub_1005D8FF8()
{
  v1 = *(_s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa(0) + 36);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationPairingCreateSecret) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005D9068@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973B30 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.SignAndStoreRemoteLTK;
  *(v6 + 64) = &off_10097BFD0;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v6 + 104) = &off_10097BE18;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.EnableDynamicStore;
  *(v6 + 144) = &off_10097BFB8;
  *a3 = v6;
  v7 = _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa(0);
  v44 = a3 + v7[6];
  *v44 = xmmword_1007F8A80;
  *(a3 + v7[9]) = 0;
  *(a3 + v7[10]) = 6;
  if (qword_100973B28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100985A90);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v9;
    *v14 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Handling authentication pairing response: %@", v13, 0xCu);
    sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

    a2 = v12;
  }

  v16 = [v9 token];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [v9 longTermKey];
    if (v21)
    {
      v22 = v21;
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = a2;
      v26 = v25;

      v27 = (a3 + v7[8]);
      *v27 = v18;
      v27[1] = v20;
      v28 = (a3 + v7[7]);
      *v28 = v23;
      v28[1] = v26;
      v29 = _s22GuestModeUnlockPairingV18InitialLockContextVMa(0);
      v30 = (v24 + *(v29 + 24));
      v31 = *v30;
      v32 = v30[1];
      v33 = *v44;
      v34 = *(v44 + 1);
      sub_1002A9924(*v30, v32);
      sub_10028BCC0(v33, v34);
      *v44 = v31;
      *(v44 + 1) = v32;
      sub_1005DB85C(v24 + *(v29 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
      return sub_1005DB8C4(v24, _s22GuestModeUnlockPairingV18InitialLockContextVMa);
    }

    v40 = sub_100010F88(10, 0xD000000000000013, 0x800000010078CDB0);
    v42 = v41;
    sub_1000115C8();
    swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v42;
    swift_willThrow();
    sub_100026AC0(v18, v20);
  }

  else
  {
    v36 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
    v38 = v37;
    sub_1000115C8();
    swift_allocError();
    *v39 = v36;
    *(v39 + 8) = v38;
    swift_willThrow();
  }

  sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV18InitialLockContextVMa);

  return sub_10028BCC0(*v44, *(v44 + 1));
}

uint64_t sub_1005D94DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_100973B30 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.StepPairingCreateSecret;
  *(v6 + 64) = &off_10097BFA0;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v6 + 104) = &off_10097BE18;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordPairing;
  *(v6 + 144) = &off_10097BF88;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.EnableDynamicStore;
  *(v6 + 184) = &off_10097BFB8;
  *a3 = v6;
  SecretContextVMa = _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa(0);
  *(a3 + *(SecretContextVMa + 28)) = 0;
  v35 = SecretContextVMa;
  *(a3 + *(SecretContextVMa + 32)) = 5;
  if (qword_100973B28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100985A90);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v33 = a3;
    v34 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v14 = [v9 sessionID];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0x8000000100789F30;
      v16 = 0xD000000000000015;
    }

    v19 = sub_10000C4E4(v16, v18, &v36);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received authentication pairing create secret: %@ for sessionID %s", v12, 0x16u);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v32);

    a2 = v34;
    a3 = v33;
  }

  else
  {
  }

  v20 = [v9 token];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = (a3 + *(v35 + 24));
    *v25 = v22;
    v25[1] = v24;
    v26 = _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa(0);
    sub_1005DB85C(a2 + *(v26 + 20), a3 + *(v35 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa);
  }

  else
  {
    v28 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
    v30 = v29;
    sub_1000115C8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    swift_willThrow();

    sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa);
  }
}

uint64_t sub_1005D991C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_1005D8B88(a3, a4);
  v5 = [v4 data];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v8 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }
}

id sub_1005D99F4()
{
  v1 = *(_s22GuestModeUnlockPairingV32HandlePairingCreateRecordContextVMa(0) + 32);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005D9A64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973B30 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.StepPairingCreateRecordWithPasscode;
  *(v6 + 64) = &off_10097BF70;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RecordPairing;
  *(v6 + 104) = &off_10097BF88;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 144) = &off_10097C270;
  *a3 = v6;
  RecordContextVMa = _s22GuestModeUnlockPairingV32HandlePairingCreateRecordContextVMa(0);
  v8 = a3 + RecordContextVMa[6];
  *v8 = xmmword_1007F8A80;
  *(a3 + RecordContextVMa[8]) = 0;
  v43 = a3;
  *(a3 + RecordContextVMa[9]) = 2;
  if (qword_100973B28 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100985A90);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v41 = v8;
    v42 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    v39 = v14;
    *v14 = v10;
    *(v13 + 12) = 2080;
    v15 = [v10 sessionID];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0xD000000000000015;
      v19 = 0x8000000100789F30;
    }

    v20 = sub_10000C4E4(v17, v19, &v44);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received authentication pairing create record: %@ for sessionID %s", v13, 0x16u);
    sub_100005508(v39, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v40);

    v8 = v41;
    a2 = v42;
  }

  else
  {
  }

  v21 = [v10 token];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = (v43 + RecordContextVMa[7]);
    *v26 = v23;
    v26[1] = v25;
    v27 = _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa(0);
    v28 = (a2 + *(v27 + 24));
    v29 = *v28;
    v30 = v28[1];
    v31 = v8;
    v32 = *v8;
    v33 = v31[1];
    sub_1002A9924(*v28, v30);
    sub_10028BCC0(v32, v33);
    *v31 = v29;
    v31[1] = v30;
    sub_1005DB85C(a2 + *(v27 + 20), v43 + RecordContextVMa[5], type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa);
  }

  else
  {
    v35 = sub_100010F88(10, 0xD000000000000053, 0x800000010078CDD0);
    v37 = v36;
    sub_1000115C8();
    swift_allocError();
    *v38 = v35;
    *(v38 + 8) = v37;
    swift_willThrow();

    sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa);

    return sub_10028BCC0(*v8, *(v8 + 1));
  }
}

uint64_t sub_1005D9EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

uint64_t sub_1005D9FB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F5670;
  if (qword_100973B30 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa(0) + 20);
    v8 = _s22GuestModeUnlockPairingV25HandleConfirmationContextVMa(0);
    sub_1005DB85C(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_1005DB8C4(a2, _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa);
  }

  return result;
}

uint64_t sub_1005DA17C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v32[-v11];
  __chkstk_darwin(v10);
  v14 = &v32[-v13];
  v15 = _s22GuestModeUnlockPairingV4FlowVMa(0);
  *(a3 + v15[6]) = _swiftEmptyArrayStorage;
  *(a3 + v15[7]) = _swiftEmptyArrayStorage;
  sub_1002A9938(a1, a3 + v15[5]);
  sub_1005DB85C(a2, a3, type metadata accessor for SDAuthenticationCommonOperationInput);
  if (qword_100973B28 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_100985A90);
  sub_1005DB85C(a2, v14, type metadata accessor for SDAuthenticationCommonOperationInput);
  sub_1005DB85C(a2, v12, type metadata accessor for SDAuthenticationCommonOperationInput);
  sub_1005DB85C(a2, v9, type metadata accessor for SDAuthenticationCommonOperationInput);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v19 = 136315650;
    type metadata accessor for UUID();
    v33 = v18;
    sub_100349CFC();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = a1;
    v22 = v21;
    sub_1005DB8C4(v14, type metadata accessor for SDAuthenticationCommonOperationInput);
    v23 = sub_10000C4E4(v20, v22, &v36);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = sub_100027340();
    v26 = v25;
    sub_1005DB8C4(v12, type metadata accessor for SDAuthenticationCommonOperationInput);
    v27 = sub_10000C4E4(v24, v26, &v36);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2080;
    if (v9[*(v6 + 32)])
    {
      v28 = 7955787;
    }

    else
    {
      v28 = 1801678668;
    }

    if (v9[*(v6 + 32)])
    {
      v29 = 0xE300000000000000;
    }

    else
    {
      v29 = 0xE400000000000000;
    }

    sub_1005DB8C4(v9, type metadata accessor for SDAuthenticationCommonOperationInput);
    v30 = sub_10000C4E4(v28, v29, &v36);

    *(v19 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v17, v33, "Begin SDAuthenticationPairingFlow %s with %s role %s", v19, 0x20u);
    swift_arrayDestroy();

    sub_1005DB8C4(a2, type metadata accessor for SDAuthenticationCommonOperationInput);
    return sub_10000C60C(v35);
  }

  else
  {

    sub_1005DB8C4(a2, type metadata accessor for SDAuthenticationCommonOperationInput);
    sub_10000C60C(a1);
    sub_1005DB8C4(v9, type metadata accessor for SDAuthenticationCommonOperationInput);
    sub_1005DB8C4(v12, type metadata accessor for SDAuthenticationCommonOperationInput);
    return sub_1005DB8C4(v14, type metadata accessor for SDAuthenticationCommonOperationInput);
  }
}

void sub_1005DA56C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v136 = a2;
  v131 = a3;
  v109 = _s22GuestModeUnlockPairingV25HandleConfirmationContextVMa(0);
  __chkstk_darwin(v109);
  v113 = (&v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10028088C(&qword_100985CC8, &qword_10080CF38);
  __chkstk_darwin(v5 - 8);
  v118 = &v109 - v6;
  RecordContextVMa = _s22GuestModeUnlockPairingV32HandlePairingCreateRecordContextVMa(0);
  __chkstk_darwin(RecordContextVMa);
  v117 = (&v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10028088C(&qword_100985CD0, &qword_10080CF40);
  __chkstk_darwin(v8 - 8);
  v124 = &v109 - v9;
  SecretContextVMa = _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa(0);
  v116 = *(SecretContextVMa - 8);
  v10 = __chkstk_darwin(SecretContextVMa);
  v111 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v112 = &v109 - v13;
  __chkstk_darwin(v12);
  v123 = (&v109 - v14);
  v15 = sub_10028088C(&qword_100985CD8, &qword_10080CF48);
  __chkstk_darwin(v15 - 8);
  v130 = &v109 - v16;
  v125 = _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa(0);
  v122 = *(v125 - 8);
  v17 = __chkstk_darwin(v125);
  v114 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v115 = &v109 - v20;
  __chkstk_darwin(v19);
  v129 = (&v109 - v21);
  v22 = sub_10028088C(&qword_100985CE0, &qword_10080CF50);
  __chkstk_darwin(v22 - 8);
  v24 = &v109 - v23;
  v25 = _s22GuestModeUnlockPairingV18InitialLockContextVMa(0);
  v133 = *(v25 - 8);
  v134 = v25;
  v26 = __chkstk_darwin(v25);
  v127 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v128 = &v109 - v28;
  v132 = _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa(0);
  v126 = *(v132 - 8);
  v29 = __chkstk_darwin(v132);
  v120 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v121 = &v109 - v32;
  __chkstk_darwin(v31);
  v34 = (&v109 - v33);
  v35 = sub_10028088C(&qword_100985CE8, &qword_10080CF58);
  __chkstk_darwin(v35 - 8);
  v37 = &v109 - v36;
  v38 = _s22GuestModeUnlockPairingV17InitialKeyContextVMa(0);
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v42 = &v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v44 = &v109 - v43;
  sub_1002A9938(a1, v137);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &unk_100979C38, off_1008C8D28);
  if (swift_dynamicCast())
  {
    v45 = v138;
    sub_1002A9938(v136, v137);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v46 = swift_dynamicCast();
    v47 = *(v39 + 56);
    if (!v46)
    {
      v47(v37, 1, 1, v38);
      sub_100005508(v37, &qword_100985CE8, &qword_10080CF58);
      v61 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v63 = v62;
      sub_1000115C8();
      swift_allocError();
      *v64 = v61;
      *(v64 + 8) = v63;
      swift_willThrow();

      return;
    }

    v47(v37, 0, 1, v38);
    sub_1005DB924(v37, v44, _s22GuestModeUnlockPairingV17InitialKeyContextVMa);
    sub_1005DB85C(v44, v42, _s22GuestModeUnlockPairingV17InitialKeyContextVMa);
    v48 = v45;
    v49 = v135;
    sub_1005D8C08(v48, v42, v34);
    if (v49)
    {
      sub_1005DB8C4(v44, _s22GuestModeUnlockPairingV17InitialKeyContextVMa);

      return;
    }

    v81 = v131;
    v131[3] = v132;
    v81[4] = &off_1008E9F60;
    v82 = sub_10002F604(v81);
    sub_1005DB924(v34, v82, _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa);

    v83 = _s22GuestModeUnlockPairingV17InitialKeyContextVMa;
    v84 = v44;
    goto LABEL_35;
  }

  v50 = v136;
  sub_1002A9938(a1, v137);
  sub_1000276B4(0, &qword_100979D78, off_1008C8D30);
  if (swift_dynamicCast())
  {
    v51 = v138;
    sub_1002A9938(v50, v137);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v52 = v134;
    v53 = swift_dynamicCast();
    v54 = *(v133 + 56);
    if (v53)
    {
      v54(v24, 0, 1, v52);
      v55 = v128;
      sub_1005DB924(v24, v128, _s22GuestModeUnlockPairingV18InitialLockContextVMa);
      v56 = v127;
      sub_1005DB85C(v55, v127, _s22GuestModeUnlockPairingV18InitialLockContextVMa);
      v57 = v51;
      v58 = v129;
      v59 = v135;
      sub_1005D9068(v57, v56, v129);
      if (v59)
      {
        v60 = _s22GuestModeUnlockPairingV18InitialLockContextVMa;
LABEL_25:
        sub_1005DB8C4(v55, v60);

        return;
      }

      v92 = v131;
      v131[3] = v125;
      v92[4] = &off_1008E9F78;
      v93 = sub_10002F604(v92);
      sub_1005DB924(v58, v93, _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa);

      v94 = _s22GuestModeUnlockPairingV18InitialLockContextVMa;
      goto LABEL_34;
    }

    v54(v24, 1, 1, v52);
    sub_100005508(v24, &qword_100985CE0, &qword_10080CF50);
    v72 = "sult, message may be replayed";
    v73 = 0xD000000000000047;
LABEL_31:
    v101 = sub_100010F88(10, v73, v72 | 0x8000000000000000);
    v103 = v102;
    sub_1000115C8();
    swift_allocError();
    *v104 = v101;
    *(v104 + 8) = v103;
    swift_willThrow();

    return;
  }

  sub_1002A9938(a1, v137);
  sub_1000276B4(0, &qword_100979D80, off_1008C8D18);
  if (!swift_dynamicCast())
  {
    sub_1002A9938(a1, v137);
    sub_1000276B4(0, &qword_100979D88, off_1008C8D10);
    if (swift_dynamicCast())
    {
      v51 = v138;
      sub_1002A9938(v50, v137);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v75 = v124;
      v74 = v125;
      v76 = swift_dynamicCast();
      v77 = *(v122 + 56);
      if (v76)
      {
        v77(v75, 0, 1, v74);
        v55 = v115;
        sub_1005DB924(v75, v115, _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa);
        v78 = v114;
        sub_1005DB85C(v55, v114, _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa);
        v57 = v51;
        v79 = v117;
        v80 = v135;
        sub_1005D9A64(v57, v78, v117);
        if (v80)
        {
          v60 = _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa;
          goto LABEL_25;
        }

        v105 = v131;
        v131[3] = RecordContextVMa;
        v105[4] = &off_1008E9FA8;
        v106 = sub_10002F604(v105);
        sub_1005DB924(v79, v106, _s22GuestModeUnlockPairingV32HandlePairingCreateRecordContextVMa);

        v94 = _s22GuestModeUnlockPairingV28HandlePairingResponseContextVMa;
        goto LABEL_34;
      }

      v77(v75, 1, 1, v74);
      sub_100005508(v75, &qword_100985CD0, &qword_10080CF40);
      v72 = "ssage may be replayed";
      v73 = 0xD000000000000051;
    }

    else
    {
      sub_1002A9938(a1, v137);
      sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
      if (!swift_dynamicCast())
      {
        v95 = sub_100010F88(10, 0xD00000000000003ALL, 0x8000000100798340);
        v97 = v96;
        sub_1000115C8();
        swift_allocError();
        *v98 = v95;
        *(v98 + 8) = v97;
        swift_willThrow();
        return;
      }

      v51 = v138;
      sub_1002A9938(v50, v137);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v85 = v118;
      v86 = SecretContextVMa;
      v87 = swift_dynamicCast();
      v88 = *(v116 + 56);
      if (v87)
      {
        v88(v85, 0, 1, v86);
        v55 = v112;
        sub_1005DB924(v85, v112, _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa);
        v89 = v111;
        sub_1005DB85C(v55, v111, _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa);
        v57 = v51;
        v90 = v113;
        v91 = v135;
        sub_1005D9FB4(v57, v89, v113);
        if (v91)
        {
          v60 = _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa;
          goto LABEL_25;
        }

        v107 = v131;
        v131[3] = v109;
        v107[4] = &off_1008E9FC0;
        v108 = sub_10002F604(v107);
        sub_1005DB924(v90, v108, _s22GuestModeUnlockPairingV25HandleConfirmationContextVMa);

        v94 = _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa;
        goto LABEL_34;
      }

      v88(v85, 1, 1, v86);
      sub_100005508(v85, &qword_100985CC8, &qword_10080CF38);
      v72 = "for VisionUnlockiOSPairing";
      v73 = 0xD000000000000055;
    }

    goto LABEL_31;
  }

  v51 = v138;
  sub_1002A9938(v50, v137);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  v65 = v130;
  v66 = v132;
  v67 = swift_dynamicCast();
  v68 = *(v126 + 56);
  if (!v67)
  {
    v68(v65, 1, 1, v66);
    sub_100005508(v65, &qword_100985CD8, &qword_10080CF48);
    v72 = "e may be replayed";
    v73 = 0xD000000000000050;
    goto LABEL_31;
  }

  v68(v65, 0, 1, v66);
  v55 = v121;
  sub_1005DB924(v65, v121, _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa);
  v69 = v120;
  sub_1005DB85C(v55, v120, _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa);
  v57 = v51;
  v70 = v123;
  v71 = v135;
  sub_1005D94DC(v57, v69, v123);
  if (v71)
  {
    v60 = _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa;
    goto LABEL_25;
  }

  v99 = v131;
  v131[3] = SecretContextVMa;
  v99[4] = &off_1008E9F90;
  v100 = sub_10002F604(v99);
  sub_1005DB924(v70, v100, _s22GuestModeUnlockPairingV32HandlePairingCreateSecretContextVMa);

  v94 = _s22GuestModeUnlockPairingV27HandlePairingRequestContextVMa;
LABEL_34:
  v83 = v94;
  v84 = v55;
LABEL_35:
  sub_1005DB8C4(v84, v83);
}

void sub_1005DB700(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6C94(319, &qword_100979CE0, &unk_100979CE8, off_1008C8D38);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1005DB85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005DB8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005DB924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005DBA78()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100986090);
  v1 = sub_10000C4AC(v0, qword_100986090);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005DBE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_10028088C(&qword_100986248, &qword_10080D420);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_1005DBF54(uint64_t a1, uint64_t a2)
{
  sub_10028088C(&qword_100986248, &qword_10080D420);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

char *sub_1005DC1B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for SFAirDropClient.Identifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR___SDShareSheetAirDropController_browser] = 0;
  v12 = &v3[OBJC_IVAR___SDShareSheetAirDropController_realName];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = OBJC_IVAR___SDShareSheetAirDropController_currentTransferID;
  v14 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR___SDShareSheetAirDropController_lockStateMonitor;
  type metadata accessor for SFLockStateMonitor();
  swift_allocObject();
  *&v4[v15] = SFLockStateMonitor.init()();
  v16 = &v4[OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v4[OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v4[OBJC_IVAR___SDShareSheetAirDropController_availableNodes] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR___SDShareSheetAirDropController_updateNearbySharingInteractionsTask] = 0;
  v18 = OBJC_IVAR___SDShareSheetAirDropController_currentNearbySharingInteraction;
  v19 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = &v4[OBJC_IVAR___SDShareSheetAirDropController_sessionID];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v4[OBJC_IVAR___SDShareSheetAirDropController_queue] = a3;
  type metadata accessor for SFAirDropClient();
  (*(v9 + 104))(v11, enum case for SFAirDropClient.Identifier.shareSheet(_:), v8);
  v21 = a3;
  *&v4[OBJC_IVAR___SDShareSheetAirDropController_airDropClient] = SFAirDropClient.__allocating_init(identifier:)();
  v27.receiver = v4;
  v27.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v27, "init");
  sub_1005E6290(&qword_100986258, type metadata accessor for ShareSheetAirDropController, &unk_10080D310);
  v23 = v22;

  dispatch thunk of SFLockStateMonitor.delegate.setter();

  return v23;
}

uint64_t sub_1005DC514(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100986090);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Beginning activate of AirDrop browser for share sheet", v12, 2u);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = qword_1009735E0;
  v15 = v3;

  if (v14 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;
  v17 = sub_1005E6290(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v15;
  v18[5] = a1;
  v18[6] = a2;

  sub_1002B3098(0, 0, v8, &unk_10080D408, v18);
}

uint64_t sub_1005DC774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for NWBrowser.Descriptor();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  type metadata accessor for NWBrowser.Descriptor.Options.Scope();
  v6[9] = swift_task_alloc();
  v8 = type metadata accessor for NWBrowser.Descriptor.Options();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005DC930, v9, 0);
}

uint64_t sub_1005DC930()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___SDShareSheetAirDropController_browser;
  if (*(v1 + OBJC_IVAR___SDShareSheetAirDropController_browser))
  {
    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100986090);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "We already have a AirDrop browser for Share Sheet, ignoring", v6, 2u);
    }
  }

  else
  {
    v8 = v0[11];
    v7 = v0[12];
    v10 = v0[7];
    v9 = v0[8];
    v25 = v0[10];
    v26 = v0[6];
    type metadata accessor for NWParameters();
    static NWParameters.airDropClientBrowserParameters(domain:type:bundleID:)();
    static NWBrowser.Descriptor.Options.Scope.all.getter();
    NWBrowser.Descriptor.Options.init(scope:)();
    NWBrowser.Descriptor.Options.applicationServiceEndpointsOnly.setter();
    v11 = *(sub_10028088C(&qword_100986240, &qword_10080D410) + 48);
    *v9 = 0x706F7264726961;
    *(v9 + 1) = 0xE700000000000000;
    (*(v8 + 16))(&v9[v11], v7, v25);
    (*(v10 + 104))(v9, enum case for NWBrowser.Descriptor.applicationServiceWithOptions(_:), v26);
    type metadata accessor for NWBrowser();
    swift_allocObject();

    *(v1 + v2) = NWBrowser.init(for:using:)();

    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_100986090);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Activating AirDrop browser for share sheet", v15, 2u);
    }

    if (*(v1 + v2))
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();

      NWBrowser.browseResultsChangedHandler.setter();

      if (*(v1 + v2))
      {

        NWBrowser.start(queue:)();
      }
    }

    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    v19 = v0[5];
    v20 = v0[2];
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v20;
    v20;
    sub_1002B281C(0, 0, v19, &unk_10080D418, v22);

    sub_1005E3058();

    (*(v17 + 8))(v16, v18);
  }

  v23 = v0[1];

  return v23();
}

void sub_1005DCDF0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1005DCE4C(a1);
  }
}

void sub_1005DCE4C(void *a1)
{
  v116 = type metadata accessor for UUID();
  v2 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v5 = __chkstk_darwin(v4 - 8);
  v115 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v118 = &v107 - v7;
  v8 = type metadata accessor for NWEndpoint();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v120 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v107 - v13;
  v15 = __chkstk_darwin(v12);
  v136 = &v107 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v107 - v18;
  __chkstk_darwin(v17);
  v137 = &v107 - v20;
  v21 = type metadata accessor for NWBrowser.Result();
  v22 = __chkstk_darwin(v21);
  v138 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v130 = &v107 - v25;
  v27 = a1 + 7;
  v26 = a1[7];
  v28 = 1 << *(a1 + 32);
  v117 = _swiftEmptyArrayStorage;
  v140 = _swiftEmptyArrayStorage;
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v26;
  v119 = OBJC_IVAR___SDShareSheetAirDropController_helperConnection;
  v128 = v24 + 32;
  v129 = v24 + 16;
  v134 = (v28 + 63) >> 6;
  v135 = (v9 + 8);
  v124 = (v9 + 16);
  v131 = v24;
  v127 = (v24 + 8);
  v114 = (v2 + 48);
  v112 = (v2 + 32);
  v111 = (v2 + 8);
  v110 = 0x8000000100798980;

  v31 = 0;
  *&v32 = 136315138;
  v121 = v32;
  v122 = a1;
  v126 = v8;
  v123 = v14;
  v132 = v21;
  v133 = v19;
  while (v30)
  {
LABEL_11:
    v34 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v36 = v130;
    v35 = v131;
    (*(v131 + 16))(v130, a1[6] + *(v131 + 72) * (v34 | (v31 << 6)), v21);
    (*(v35 + 32))(v138, v36, v21);
    NWBrowser.Result.endpoint.getter();
    if (!NWEndpoint.nw.getter())
    {
      if (qword_100973630 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_10000C4AC(v45, qword_100978E38);
      (*v124)(v19, v137, v8);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v139 = v49;
        *v48 = v121;
        v50 = NWEndpoint.debugDescription.getter();
        v52 = v51;
        v53 = v19;
        v54 = v135;
        (*v135)(v53, v126);
        v55 = sub_10000C4E4(v50, v52, &v139);
        a1 = v122;

        *(v48 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v46, v47, "Could not convert endpoint to nw_endpoint %s", v48, 0xCu);
        sub_10000C60C(v49);
        v8 = v126;

        v38 = v54;
      }

      else
      {

        v38 = v135;
        (*v135)(v19, v8);
      }

      goto LABEL_26;
    }

    device_model = nw_endpoint_get_device_model();
    v38 = v135;
    if (!device_model)
    {
      swift_unknownObjectRelease();
LABEL_26:
      v43 = v136;
      v44 = *v38;
      (*v38)(v137, v8);
      goto LABEL_27;
    }

    v39 = String.init(cString:)();
    v41 = v40;
    swift_unknownObjectRelease();
    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (!v42)
    {

      goto LABEL_26;
    }

    v43 = v136;
    if (v39 == 63 && v41 == 0xE100000000000000)
    {
      v44 = *v38;
      (*v38)(v137, v8);
    }

    else
    {
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v44 = *v38;
      (*v38)(v137, v8);

      if ((v71 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

LABEL_27:
    NWBrowser.Result.endpoint.getter();
    if (!NWEndpoint.nw.getter())
    {
      if (qword_100973630 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_10000C4AC(v60, qword_100978E38);
      v61 = v123;
      (*v124)(v123, v43, v8);
      v62 = Logger.logObject.getter();
      v63 = v43;
      v64 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v62, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v139 = v66;
        *v65 = v121;
        v67 = NWEndpoint.debugDescription.getter();
        v69 = v68;
        v44(v123, v126);
        v70 = sub_10000C4E4(v67, v69, &v139);
        a1 = v122;

        *(v65 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v62, v64, "Could not convert endpoint to nw_endpoint %s", v65, 0xCu);
        sub_10000C60C(v66);
        v8 = v126;

        v44(v136, v8);
      }

      else
      {

        v44(v61, v8);
        v44(v63, v8);
        a1 = v122;
      }

      goto LABEL_5;
    }

    if (!nw_endpoint_get_contact_id())
    {
      v44(v43, v8);
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    v56 = String.init(cString:)();
    v58 = v57;
    swift_unknownObjectRelease();
    v44(v136, v8);

    v59 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v59 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {
LABEL_39:
      v72 = v120;
      NWBrowser.Result.endpoint.getter();
      Strong = swift_unknownObjectWeakLoadStrong();
      v74 = objc_allocWithZone(type metadata accessor for ShareSheetAirDropNode(0));
      v75 = sub_1005E6D78(v72, Strong);

      v76 = *&v75[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayName + 8];
      if (!v76)
      {
        __break(1u);
        return;
      }

      if ((v76 & 0x2000000000000000) != 0)
      {
        v77 = HIBYTE(v76) & 0xF;
      }

      else
      {
        v77 = *&v75[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayName] & 0xFFFFFFFFFFFFLL;
      }

      v19 = v133;
      if (v77)
      {
        v95 = v75;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v21 = v132;
        if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v21 = v132;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v127)(v138, v21);
        v117 = v140;
      }

      else
      {
        if (qword_100973B38 != -1)
        {
          swift_once();
        }

        v78 = type metadata accessor for Logger();
        sub_10000C4AC(v78, qword_100986090);
        v79 = v75;
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v80, v81))
        {
          v109 = v81;
          v82 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v139 = v108;
          *v82 = v121;
          v83 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_nodeIdentifier;
          swift_beginAccess();
          v84 = v118;
          sub_10000FF90(&v79[v83], v118, &unk_100976120, &qword_1007F9260);
          v85 = v84;
          v86 = v115;
          sub_10000FF90(v85, v115, &unk_100976120, &qword_1007F9260);
          v87 = v116;
          if ((*v114)(v86, 1, v116) == 1)
          {
            v88 = 0xD000000000000013;
            v89 = v110;
          }

          else
          {
            v90 = v113;
            (*v112)(v113, v86, v87);
            sub_1005E6290(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v91 = v87;
            v88 = dispatch thunk of CustomStringConvertible.description.getter();
            v89 = v92;
            v93 = v91;
            v19 = v133;
            (*v111)(v90, v93);
          }

          v8 = v126;
          sub_100005508(v118, &unk_100976120, &qword_1007F9260);
          v94 = sub_10000C4E4(v88, v89, &v139);

          *(v82 + 4) = v94;
          _os_log_impl(&_mh_execute_header, v80, v109, "Skipping node with no display name: %s", v82, 0xCu);
          sub_10000C60C(v108);

          v21 = v132;
          (*v127)(v138, v132);
          a1 = v122;
        }

        else
        {

          v21 = v132;
          (*v127)(v138, v132);
        }
      }
    }

    else
    {
LABEL_5:
      v21 = v132;
      (*v127)(v138, v132);
      v19 = v133;
    }
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v33 >= v134)
    {
      break;
    }

    v30 = v27[v33];
    ++v31;
    if (v30)
    {
      v31 = v33;
      goto LABEL_11;
    }
  }

  a1 = v117;
  *(v125 + OBJC_IVAR___SDShareSheetAirDropController_availableNodes) = v117;

  if (qword_100973B38 == -1)
  {
    goto LABEL_56;
  }

LABEL_62:
  swift_once();
LABEL_56:
  v96 = type metadata accessor for Logger();
  sub_10000C4AC(v96, qword_100986090);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v139 = v100;
    *v99 = v121;

    sub_10028088C(&qword_100986248, &qword_10080D420);
    v101 = Array.description.getter();
    v103 = v102;

    v104 = sub_10000C4E4(v101, v103, &v139);

    *(v99 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v97, v98, "Share sheet AirDrop nodes changed: %s", v99, 0xCu);
    sub_10000C60C(v100);
  }

  v105 = *(v125 + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler);
  if (v105)
  {
    v106 = *(v125 + OBJC_IVAR___SDShareSheetAirDropController_availableNodesChangedHandler + 8);

    sub_1000387D0(v105, v106);
    v105(a1);
    sub_100015D04(v105, v106);
  }
}

uint64_t sub_1005DDDD8()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100986090);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Beginning invalidation of AirDrop browser for share sheet", v8, 2u);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = qword_1009735E0;
  v11 = v1;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v13 = sub_1005E6290(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v11;

  sub_1002B3098(0, 0, v4, &unk_10080D3F8, v14);
}

uint64_t sub_1005DE01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005DE0B8, v5, 0);
}

uint64_t sub_1005DE0B8()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___SDShareSheetAirDropController_browser;
  if (*(v1 + OBJC_IVAR___SDShareSheetAirDropController_browser))
  {
    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100986090);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Invalidating AirDrop browser for share sheet", v6, 2u);
    }

    if (*(v1 + v2))
    {

      NWBrowser.cancel()();
    }

    *(v1 + v2) = 0;

    sub_1005DE220();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005DE220()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR___SDShareSheetAirDropController_updateNearbySharingInteractionsTask;
  if (*&v0[OBJC_IVAR___SDShareSheetAirDropController_updateNearbySharingInteractionsTask])
  {

    Task.cancel()();
  }

  *&v0[v4] = 0;

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1002B281C(0, 0, v3, &unk_10080D380, v6);
}

uint64_t sub_1005DE3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v14;
  v8[13] = v15;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v9 = type metadata accessor for SFAirDropSend.Transfer();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  v8[17] = swift_task_alloc();
  v10 = sub_10028088C(&unk_100976280, &qword_1007F93F0);
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_1005DE590, 0, 0);
}

uint64_t sub_1005DE590(uint64_t a1)
{
  v30 = v1;
  v2 = v1[7];
  v3 = UUID.uuidString.getter();
  v4 = (v2 + OBJC_IVAR___SDShareSheetAirDropController_realName);
  *v4 = v3;
  v4[1] = v5;

  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v7 = v1[22];
  v6 = v1[23];
  v8 = v1[21];
  v9 = v1[8];
  v10 = type metadata accessor for Logger();
  v1[24] = sub_10000C4AC(v10, qword_100986090);
  (*(v7 + 16))(v6, v9, v8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v15 = v1[22];
  v14 = v1[23];
  v16 = v1[21];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v17 = 136315394;
    type metadata accessor for URL();
    v18 = Array.description.getter();
    v20 = sub_10000C4E4(v18, v19, &v29);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    sub_1005E6290(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v15 + 8))(v14, v16);
    v24 = sub_10000C4E4(v21, v23, &v29);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "Sending URLs: %s to %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v1[5] = v1[9];
  v25 = swift_task_alloc();
  v1[25] = v25;
  v26 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
  v27 = sub_100011630(&qword_10097B1D8, &qword_100975610, &qword_1007F89B0, &protocol conformance descriptor for [A]);
  *v25 = v1;
  v25[1] = sub_1005DE8E8;

  return Sequence<>.coordinateRead(withSaveToTempDir:options:)(1, 1, v26, v27);
}

uint64_t sub_1005DE8E8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_1005DEF30;
  }

  else
  {
    v4 = sub_1005DE9FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005DE9FC()
{
  v0[28] = *(v0[7] + OBJC_IVAR___SDShareSheetAirDropController_airDropClient);

  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_1005DEAC8;
  v2 = v0[26];
  v3 = v0[20];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[8];

  return SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:)(v3, v2, v8, v6, v7, v4, v5, 0);
}

uint64_t sub_1005DEAC8()
{
  *(*v1 + 240) = v0;

  if (v0)
  {

    v2 = sub_1005DF0E4;
  }

  else
  {

    v2 = sub_1005DEC2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005DEC2C()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[7];
  SFXPCProgressTask.initialValue.getter();
  SFAirDropSend.Transfer.id.getter();
  (*(v3 + 8))(v2, v4);
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v7 = OBJC_IVAR___SDShareSheetAirDropController_currentTransferID;
  swift_beginAccess();
  sub_10000C788(v1, v5 + v7, &unk_100977BE0, &unk_1007FAE40);
  swift_endAccess();
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_1005DED94;
  v9 = v0[20];

  return sub_1005DF298(v9);
}

uint64_t sub_1005DED94()
{

  return _swift_task_switch(sub_1005DEE90, 0, 0);
}

uint64_t sub_1005DEE90()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1005DEF30()
{
  v12 = v0;
  v1 = v0[27];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[6] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000C4E4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to send URLs: %s", v4, 0xCu);
    sub_10000C60C(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005DF0E4()
{
  v12 = v0;
  v1 = v0[30];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[6] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000C4E4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to send URLs: %s", v4, 0xCu);
    sub_10000C60C(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005DF298(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2[13] = swift_task_alloc();
  v3 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v2[19] = *(v5 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Failure();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  sub_10028088C(&qword_1009861D0, &qword_10080D3C0);
  v2[27] = swift_task_alloc();
  sub_10028088C(&qword_10097B1B0, &unk_10080DD40);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.Progress();
  v2[32] = v7;
  v2[33] = *(v7 - 8);
  v2[34] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropSend.Transfer.State();
  v2[35] = v8;
  v2[36] = *(v8 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropSend.Transfer();
  v2[39] = v9;
  v2[40] = *(v9 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  sub_10028088C(&qword_100976460, &qword_1007F9730);
  v2[43] = swift_task_alloc();
  v10 = sub_10028088C(&qword_1009861D8, &qword_10080D3C8);
  v2[44] = v10;
  v2[45] = *(v10 - 8);
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_1005DF700, 0, 0);
}

uint64_t sub_1005DF700()
{
  *(v0 + 376) = sub_10028088C(&unk_100976280, &qword_1007F93F0);
  SFXPCProgressTask.makeAsyncIterator()();
  v1 = OBJC_IVAR___SDShareSheetAirDropController_sessionID;
  *(v0 + 384) = OBJC_IVAR___SDShareSheetAirDropController_realName;
  *(v0 + 392) = v1;
  *(v0 + 400) = OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler;
  *(v0 + 440) = enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:);
  *(v0 + 444) = enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:);
  *(v0 + 448) = enum case for SFAirDropSend.Transfer.State.transferring(_:);
  *(v0 + 452) = enum case for SFAirDropSend.Transfer.State.waitingForShareContactPermissionResponse(_:);
  *(v0 + 456) = enum case for SFAirDropSend.Transfer.State.exchanging(_:);
  *(v0 + 460) = enum case for SFAirDropSend.Transfer.State.waitingForImportContactResponse(_:);
  *(v0 + 464) = enum case for SFAirDropSend.Transfer.State.transferFailed(_:);
  *(v0 + 468) = enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:);
  *(v0 + 472) = enum case for SFAirDropSend.Transfer.State.created(_:);
  *(v0 + 476) = enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:);
  v2 = sub_100011630(&unk_1009861E0, &qword_1009861D8, &qword_10080D3C8, &protocol conformance descriptor for SFXPCAsyncSequence<A>.AsyncIterator);
  v3 = swift_task_alloc();
  *(v0 + 408) = v3;
  *v3 = v0;
  v3[1] = sub_1005DF8BC;
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_1005DF8BC()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1005E024C;
  }

  else
  {
    v2 = sub_1005DF9D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005DF9D0()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
    v4 = swift_task_alloc();
    *(v0 + 424) = v4;
    *v4 = v0;
    v4[1] = sub_1005E04E8;
    v5 = *(v0 + 376);
    v6 = *(v0 + 328);

    return SFXPCProgressTask.finalValue.getter(v6, v5);
  }

  v7 = *(v0 + 440);
  v8 = *(v0 + 304);
  v9 = *(v0 + 280);
  v10 = *(v0 + 288);
  (*(v3 + 32))(*(v0 + 336), v1, v2);
  SFAirDropSend.Transfer.state.getter();
  v11 = (*(v10 + 88))(v8, v9);
  if (v11 == v7)
  {
    v12 = *(v0 + 304);
    (*(*(v0 + 288) + 96))(v12, *(v0 + 280));

    v13 = *(sub_10028088C(&unk_100986230, &qword_1007FE6B0) + 64);
    v14 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
    v15 = 0.0;
    v16 = 3;
LABEL_7:
    v17 = *(v0 + 96);
    v18 = (v17 + *(v0 + 384));
    v19 = v18[1];
    if (v19)
    {
      v20 = *(v0 + 400);
      v21 = (v17 + *(v0 + 392));
      v22 = *v18;
      v24 = *v21;
      v23 = v21[1];
      v25 = type metadata accessor for ShareSheetAirDropTransferUpdate();
      v26 = objc_allocWithZone(v25);
      *&v26[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state] = 1;
      *&v26[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress] = 0;
      v27 = &v26[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_sessionID];
      *v27 = v24;
      *(v27 + 1) = v23;
      v28 = &v26[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_realName];
      *v28 = v22;
      *(v28 + 1) = v19;
      *(v0 + 64) = v26;
      *(v0 + 72) = v25;

      v29 = objc_msgSendSuper2((v0 + 64), "init");
      *&v29[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state] = v16;
      *&v29[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress] = v15;
      v30 = *(v17 + v20);
      if (v30)
      {
        v31 = *(v0 + 336);
        v32 = *(v0 + 312);
        v33 = *(v0 + 320);
        v34 = *(*(v0 + 96) + *(v0 + 400) + 8);

        v30(v29);
        sub_100015D04(v30, v34);

        (*(v33 + 8))(v31, v32);
      }

      else
      {
        (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
      }
    }

    else
    {
      (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
    }

    goto LABEL_25;
  }

  if (v11 != *(v0 + 444))
  {
    if (v11 == *(v0 + 448))
    {
      v40 = *(v0 + 304);
      v42 = *(v0 + 264);
      v41 = *(v0 + 272);
      v43 = *(v0 + 256);
      (*(*(v0 + 288) + 96))(v40, *(v0 + 280));

      v44 = sub_10028088C(&qword_10097B2C8, &qword_1007FE680);
      v45 = *(v44 + 48);

      (*(v42 + 32))(v41, v40 + v45, v43);
      v46 = COERCE_DOUBLE(SFAirDrop.Progress.percent.getter());
      LOBYTE(v45) = v47;
      (*(v42 + 8))(v41, v43);
      v48 = *(v44 + 80);
      if (v45)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v46 * 100.0;
      }

      v49 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v49 - 8) + 8))(v40 + v48, v49);
      v16 = 7;
      goto LABEL_7;
    }

    if (v11 == *(v0 + 452))
    {
      v50 = *(v0 + 304);
      v51 = *(v0 + 280);
      v52 = *(v0 + 288);
      (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
      (*(v52 + 96))(v50, v51);
      v53 = *(sub_10028088C(&unk_100986200, &unk_1007FE580) + 48);
      v54 = &unk_10097C660;
      v55 = &unk_10080D3E0;
    }

    else
    {
      if (v11 == *(v0 + 456))
      {
        v50 = *(v0 + 304);
        v58 = *(v0 + 280);
        v59 = *(v0 + 288);
        (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
        (*(v59 + 96))(v50, v58);
        v57 = type metadata accessor for SFAirDrop.ContactRequest();
        goto LABEL_24;
      }

      if (v11 != *(v0 + 460))
      {
        if (v11 == *(v0 + 464))
        {
          v66 = *(v0 + 304);
          v67 = *(v0 + 192);
          v68 = *(v0 + 200);
          (*(*(v0 + 288) + 96))(v66, *(v0 + 280));
          v69 = sub_10028088C(&unk_100986210, &unk_1008042C0);
          (*(v68 + 8))(v66 + *(v69 + 48), v67);
          v70 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
          (*(*(v70 - 8) + 8))(v66, v70);
          v15 = 0.0;
          v16 = 10;
        }

        else if (v11 == *(v0 + 468))
        {
          (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
          v15 = 100.0;
          v16 = 9;
        }

        else
        {
          v15 = 0.0;
          v16 = 3;
          if (v11 != *(v0 + 472) && v11 != *(v0 + 476))
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }
        }

        goto LABEL_7;
      }

      v50 = *(v0 + 304);
      v64 = *(v0 + 280);
      v65 = *(v0 + 288);
      (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
      (*(v65 + 96))(v50, v64);
      v53 = *(sub_10028088C(&unk_1009861F0, &unk_1007FE5B0) + 48);
      v54 = &qword_10097B218;
      v55 = &unk_100809050;
    }

    v56 = sub_10028088C(v54, v55);
    (*(*(v56 - 8) + 8))(v50 + v53, v56);
    v57 = type metadata accessor for SFAirDrop.ContactInfo();
LABEL_24:
    (*(*(v57 - 8) + 8))(v50, v57);
    goto LABEL_25;
  }

  v35 = *(v0 + 304);
  v36 = *(v0 + 280);
  v37 = *(v0 + 288);
  (*(*(v0 + 320) + 8))(*(v0 + 336), *(v0 + 312));
  (*(v37 + 96))(v35, v36);

  v38 = *(sub_10028088C(&unk_100986220, &qword_1007FE6C0) + 48);
  v39 = sub_10028088C(&qword_10097B2E0, &qword_1007FE690);
  (*(*(v39 - 8) + 8))(v35 + v38, v39);
LABEL_25:
  v60 = sub_100011630(&unk_1009861E0, &qword_1009861D8, &qword_10080D3C8, &protocol conformance descriptor for SFXPCAsyncSequence<A>.AsyncIterator);
  v61 = swift_task_alloc();
  *(v0 + 408) = v61;
  *v61 = v0;
  v61[1] = sub_1005DF8BC;
  v62 = *(v0 + 344);
  v63 = *(v0 + 352);

  return dispatch thunk of AsyncIteratorProtocol.next()(v62, v63, v60);
}

uint64_t sub_1005E024C()
{
  *(v0 + 80) = *(v0 + 416);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1005E02E0, 0, 0);
}

uint64_t sub_1005E02E0()
{
  (*(v0[45] + 8))(v0[46], v0[44]);
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100986090);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Transfer failed {error: %@}", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  sub_1005E1EA8(10, 0.0);

  v7 = swift_task_alloc();
  v0[53] = v7;
  *v7 = v0;
  v7[1] = sub_1005E04E8;
  v8 = v0[47];
  v9 = v0[41];

  return SFXPCProgressTask.finalValue.getter(v9, v8);
}

uint64_t sub_1005E04E8()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1005E0E38;
  }

  else
  {
    v2 = sub_1005E05FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005E05FC(uint64_t a1)
{
  v3 = v1[36];
  v2 = v1[37];
  v4 = v1[35];
  v5 = v1[27];
  SFAirDropSend.Transfer.state.getter();
  SFAirDropSend.Transfer.State.metrics.getter();
  (*(v3 + 8))(v2, v4);
  v6 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = v1[30];
  v10 = v1[27];
  if (v8 == 1)
  {
    sub_100005508(v1[27], &qword_1009861D0, &qword_10080D3C0);
    v11 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  else
  {
    SFAirDropSend.Transfer.Metrics.result.getter();
    (*(v7 + 8))(v10, v6);
    v11 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) != 1)
    {
      v16 = v1[31];
      (*(v12 + 32))(v16, v1[30], v11);
      (*(v12 + 56))(v16, 0, 1, v11);
      goto LABEL_7;
    }
  }

  v14 = v1[30];
  v13 = v1[31];
  type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v15 = *(v11 - 8);
  (*(v15 + 56))(v13, 1, 1, v11);
  if ((*(v15 + 48))(v14, 1, v11) != 1)
  {
    sub_100005508(v1[30], &qword_10097B1B0, &unk_10080DD40);
  }

LABEL_7:
  v17 = v1[29];
  sub_10000FF90(v1[31], v17, &qword_10097B1B0, &unk_10080DD40);
  type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v18 = *(v11 - 8);
  if ((*(v18 + 48))(v17, 1, v11) == 1)
  {
    v19 = 0.0;
    v20 = 10;
  }

  else
  {
    v21 = v1[28];
    sub_10000FF90(v1[29], v21, &qword_10097B1B0, &unk_10080DD40);
    v22 = (*(v18 + 88))(v21, v11);
    if (v22 == enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:))
    {
      v23 = v1[28];
      v25 = v1[25];
      v24 = v1[26];
      v26 = v1[24];
      (*(v18 + 96))(v23, v11);
      (*(v25 + 32))(v24, v23, v26);
      sub_1005E1FE4(v24);
      (*(v25 + 8))(v24, v26);
      goto LABEL_12;
    }

    if (v22 != enum case for SFAirDropSend.Transfer.Metrics.TransferResult.success(_:))
    {
      (*(v18 + 8))(v1[28], v11);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v19 = 100.0;
    v20 = 9;
  }

  sub_1005E1EA8(v20, v19);
LABEL_12:
  v28 = v1[40];
  v27 = v1[41];
  v29 = v1[39];
  v30 = v1[29];
  sub_100005508(v1[31], &qword_10097B1B0, &unk_10080DD40);
  (*(v28 + 8))(v27, v29);
  sub_100005508(v30, &qword_10097B1B0, &unk_10080DD40);
  v31 = v1[23];
  v32 = v1[14];
  v33 = v1[15];
  v34 = v1[12];
  v35 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
  v36 = OBJC_IVAR___SDShareSheetAirDropController_currentTransferID;
  swift_beginAccess();
  sub_10000C788(v31, v34 + v36, &unk_100977BE0, &unk_1007FAE40);
  swift_endAccess();
  v37 = OBJC_IVAR___SDShareSheetAirDropController_currentNearbySharingInteraction;
  swift_beginAccess();
  if (!(*(v33 + 48))(v34 + v37, 1, v32))
  {
    v39 = v1[21];
    v38 = v1[22];
    v53 = v1[20];
    v54 = v1[19];
    v40 = v1[17];
    v41 = v1[18];
    v43 = v1[15];
    v42 = v1[16];
    v44 = v1[14];
    v52 = v1[13];
    v55 = v1[12];
    (*(v43 + 16))(v42, v34 + v37, v44);
    SFAirDrop.NearbySharingInteraction.id.getter();
    (*(v43 + 8))(v42, v44);
    v45 = *(v41 + 32);
    v45(v38, v39, v40);
    v46 = type metadata accessor for TaskPriority();
    (*(*(v46 - 8) + 56))(v52, 1, 1, v46);
    (*(v41 + 16))(v53, v38, v40);
    v47 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    v45(v48 + v47, v53, v40);
    *(v48 + ((v54 + v47 + 7) & 0xFFFFFFFFFFFFFFF8)) = v55;
    v49 = v55;
    sub_1002B281C(0, 0, v52, &unk_10080D3D8, v48);

    (*(v41 + 8))(v38, v40);
  }

  v50 = v1[1];

  return v50();
}

uint64_t sub_1005E0E38()
{

  v1 = v0[23];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = OBJC_IVAR___SDShareSheetAirDropController_currentTransferID;
  swift_beginAccess();
  sub_10000C788(v1, v4 + v6, &unk_100977BE0, &unk_1007FAE40);
  swift_endAccess();
  v7 = OBJC_IVAR___SDShareSheetAirDropController_currentNearbySharingInteraction;
  swift_beginAccess();
  if (!(*(v3 + 48))(v4 + v7, 1, v2))
  {
    v9 = v0[21];
    v8 = v0[22];
    v23 = v0[20];
    v24 = v0[19];
    v10 = v0[17];
    v11 = v0[18];
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];
    v22 = v0[13];
    v25 = v0[12];
    (*(v13 + 16))(v12, v4 + v7, v14);
    SFAirDrop.NearbySharingInteraction.id.getter();
    (*(v13 + 8))(v12, v14);
    v15 = *(v11 + 32);
    v15(v8, v9, v10);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v22, 1, 1, v16);
    (*(v11 + 16))(v23, v8, v10);
    v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    v15(v18 + v17, v23, v10);
    *(v18 + ((v24 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
    v19 = v25;
    sub_1002B281C(0, 0, v22, &unk_10080D3D8, v18);

    (*(v11 + 8))(v8, v10);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1005E1518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005E1628, 0, 0);
}

uint64_t sub_1005E1628()
{
  v33 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR___SDShareSheetAirDropController_currentTransferID;
  v0[15] = OBJC_IVAR___SDShareSheetAirDropController_currentTransferID;
  swift_beginAccess();
  sub_10000FF90(v4 + v5, v3, &unk_100977BE0, &unk_1007FAE40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005508(v0[10], &unk_100977BE0, &unk_1007FAE40);
    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100986090);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to cancel but no transfer found.", v9, 2u);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v0[12] + 32))(v0[14], v0[10], v0[11]);
    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[11];
    v15 = v0[12];
    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_100986090);
    (*(v15 + 16))(v12, v13, v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[11];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v23 = 136315138;
      sub_1005E6290(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v27 = *(v21 + 8);
      v27(v20, v22);
      v28 = sub_10000C4E4(v24, v26, &v32);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "Canceling transfer with ID: %s", v23, 0xCu);
      sub_10000C60C(v31);
    }

    else
    {

      v27 = *(v21 + 8);
      v27(v20, v22);
    }

    v0[16] = v27;
    v0[17] = *(v0[8] + OBJC_IVAR___SDShareSheetAirDropController_airDropClient);

    v29 = swift_task_alloc();
    v0[18] = v29;
    *v29 = v0;
    v29[1] = sub_1005E1A78;
    v30 = v0[14];

    return SFAirDropClient.cancelTransfer(_:)(v30);
  }
}

uint64_t sub_1005E1A78()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1005E1CB4;
  }

  else
  {
    v2 = sub_1005E1BA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005E1BA8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  (*(v0 + 128))(*(v0 + 112), v2);
  (*(v3 + 56))(v4, 1, 1, v2);
  swift_beginAccess();
  sub_10000C788(v4, v5 + v1, &unk_100977BE0, &unk_1007FAE40);
  swift_endAccess();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1005E1CB4()
{
  (*(v0 + 128))(*(v0 + 112), *(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1005E1EA8(uint64_t a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_realName + 8);
  if (v3)
  {
    v6 = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_realName);
    v8 = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_sessionID);
    v7 = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_sessionID + 8);
    v9 = type metadata accessor for ShareSheetAirDropTransferUpdate();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state] = 1;
    *&v10[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress] = 0;
    v11 = &v10[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_sessionID];
    *v11 = v8;
    *(v11 + 1) = v7;
    v12 = &v10[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_realName];
    *v12 = v6;
    *(v12 + 1) = v3;
    v16.receiver = v10;
    v16.super_class = v9;

    v13 = objc_msgSendSuper2(&v16, "init");
    *&v13[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state] = a1;
    *&v13[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress] = a2;
    v14 = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler);
    if (v14)
    {
      v15 = *(v2 + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler + 8);

      v14(v13);
      sub_100015D04(v14, v15);
    }
  }
}

void sub_1005E1FE4(uint64_t a1)
{
  v3 = type metadata accessor for SFAirDropSend.Failure();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for SFAirDropSend.Failure.receiverDeclined(_:) || v7 == enum case for SFAirDropSend.Failure.cancelled(_:))
  {
    v9 = 4;
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    v9 = 10;
  }

  v10 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_realName + 8);
  if (v10)
  {
    v11 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_realName);
    v13 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_sessionID);
    v12 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_sessionID + 8);
    v14 = type metadata accessor for ShareSheetAirDropTransferUpdate();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state] = 1;
    *&v15[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress] = 0;
    v16 = &v15[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_sessionID];
    *v16 = v13;
    *(v16 + 1) = v12;
    v17 = &v15[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_realName];
    *v17 = v11;
    *(v17 + 1) = v10;
    v21.receiver = v15;
    v21.super_class = v14;

    v18 = objc_msgSendSuper2(&v21, "init");
    *&v18[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_state] = v9;
    *&v18[OBJC_IVAR___SDShareSheetAirDropTransferUpdate_progress] = 0;
    v19 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler);
    if (v19)
    {
      v20 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_transferUpdateChangedHandler + 8);

      v19(v18);
      sub_100015D04(v19, v20);
    }
  }
}

uint64_t sub_1005E2210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1005E2338, 0, 0);
}

uint64_t sub_1005E2338()
{
  v23 = v0;
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[11] = sub_10000C4AC(v5, qword_100986090);
  v6 = *(v3 + 16);
  v0[12] = v6;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136315138;
    sub_1005E6290(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000C4E4(v14, v16, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "will end currentNearbySharingInteraction:%s", v13, 0xCu);
    sub_10000C60C(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[14] = v17;
  static Clock<>.continuous.getter();
  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_1005E25F4;

  return sub_10002ED10(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1005E25F4()
{
  v2 = *v1;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1005E73F8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1005E278C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005E278C()
{
  v0[16] = *(v0[3] + OBJC_IVAR___SDShareSheetAirDropController_airDropClient);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1005E2844;
  v2 = v0[2];

  return SFAirDropClient.endNearbySharingInteraction(_:)(v2);
}

uint64_t sub_1005E2844()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1005E2B64;
  }

  else
  {

    v2 = sub_1005E2960;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005E2960()
{
  v17 = v0;
  (*(v0 + 96))(*(v0 + 72), *(v0 + 16), *(v0 + 56));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 112);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v15 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_1005E6290(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v15(v5, v6);
    v12 = sub_10000C4E4(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "did end currentNearbySharingInteraction:%s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1005E2B64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005E2BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.PollingType();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1005E2D0C, 0, 0);
}

uint64_t sub_1005E2D0C()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for SFAirDrop.NearbySharingDiscovery.PollingType.automatic(_:), v0[3]);
  SFAirDrop.NearbySharingDiscovery.Request.init(pollingType:applicationLabel:)();
  v0[9] = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_airDropClient);

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1005E2E18;
  v3 = v0[8];

  return SFAirDropClient.startNearbySharingDiscovery(request:)(v3);
}

uint64_t sub_1005E2E18()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1005E2FD0;
  }

  else
  {
    v2 = sub_1005E2F48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005E2F48()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1005E2FD0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

void sub_1005E3058()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  sub_10039D0AC();
  v5 = static NSUserDefaults.airdrop.getter();
  v6 = SFAirDropUserDefaults.boopToAirDropEnabled.getter();

  if (v6)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = *(v1 + OBJC_IVAR___SDShareSheetAirDropController_airDropClient);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v8;
    v11[5] = v9;

    *(v1 + OBJC_IVAR___SDShareSheetAirDropController_updateNearbySharingInteractionsTask) = sub_1002B3098(0, 0, v4, &unk_10080D358, v11);
  }
}

uint64_t sub_1005E3220()
{
  v0[3] = *(v0[2] + OBJC_IVAR___SDShareSheetAirDropController_airDropClient);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1005E32EC;

  return SFAirDropClient.stopNearbySharingDiscovery(applicationLabel:)(0x6568736572616873, 0xEA00000000007465);
}

uint64_t sub_1005E32EC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005E3428, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1005E3428()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005E348C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  v6 = sub_10028088C(&unk_1009861B0, &unk_10080D360);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[12] = v7;
  v5[13] = type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_1005E35BC;

  return SFAirDropClient.nearbySharingInteractions()(v7);
}

uint64_t sub_1005E35BC()
{
  v2 = *v1;
  v2[16] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v4;
  v2[18] = v3;
  if (v0)
  {
    v5 = sub_1005E3E8C;
  }

  else
  {
    v5 = sub_1005E371C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005E371C()
{
  v0[6] = SFXPCResilientAsyncSequence.makeAsyncIterator()();
  swift_beginAccess();
  v0[19] = static MainActor.shared.getter();
  v1 = sub_10028088C(&qword_1009861C0, &qword_10080D370);
  v2 = sub_100011630(&qword_1009861C8, &qword_1009861C0, &qword_10080D370, &protocol conformance descriptor for SFXPCResilientAsyncSequence<A>.AsyncIterator);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1005E3848;

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 7, v1, v2);
}

uint64_t sub_1005E3848()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
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

    v7 = sub_1005E3BEC;
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

    v7 = sub_1005E39E0;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1005E39E0()
{

  v0[22] = v0[7];
  v1 = v0[17];
  v2 = v0[18];

  return _swift_task_switch(sub_1005E3A4C, v1, v2);
}

uint64_t sub_1005E3A4C()
{
  v1 = v0[22];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1005E4068(v1);
    }

    v0[19] = static MainActor.shared.getter();
    v4 = sub_10028088C(&qword_1009861C0, &qword_10080D370);
    v5 = sub_100011630(&qword_1009861C8, &qword_1009861C0, &qword_10080D370, &protocol conformance descriptor for SFXPCResilientAsyncSequence<A>.AsyncIterator);
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_1005E3848;

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 7, v4, v5);
  }

  else
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];

    (*(v8 + 8))(v7, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1005E3BEC()
{
  v0[8] = v0[21];
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_willThrowTypedImpl();

  v1 = v0[17];
  v2 = v0[18];

  return _swift_task_switch(sub_1005E3C88, v1, v2);
}

uint64_t sub_1005E3C88()
{
  v16 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  v4 = v0[21];
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100986090);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v0[5] = v4;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v10 = String.init<A>(reflecting:)();
    v12 = sub_10000C4E4(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error registering for updates to nearby sharing interactions: %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005E3E8C()
{
  v13 = v0;

  v1 = v0[16];
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100986090);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v0[5] = v1;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v7 = String.init<A>(reflecting:)();
    v9 = sub_10000C4E4(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error registering for updates to nearby sharing interactions: %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

void sub_1005E4068(uint64_t a1)
{
  v2 = type metadata accessor for DeviceLockState();
  v3 = *(v2 - 8);
  v62 = v2;
  v63 = v3;
  v4 = __chkstk_darwin(v2);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v60 - v6;
  v69 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v67 = *(v69 - 8);
  v7 = __chkstk_darwin(v69);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v60 - v9;
  v10 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v10 - 8);
  v12 = &v60 - v11;
  v13 = type metadata accessor for UUID();
  v75 = *(v13 - 8);
  __chkstk_darwin(v13);
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v74 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v77 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  __chkstk_darwin(v21 - 8);
  v73 = &v60 - v22;
  if (qword_100973B38 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_100986090);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v71 = v19;
  v72 = v18;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v80[0] = v28;
    *v27 = 136315138;
    type metadata accessor for SFAirDrop.NearbySharingInteraction();
    v29 = Array.description.getter();
    v61 = v13;
    v31 = v16;
    v32 = v15;
    v33 = v12;
    v34 = a1;
    v35 = sub_10000C4E4(v29, v30, v80);
    v13 = v61;

    *(v27 + 4) = v35;
    a1 = v34;
    v12 = v33;
    v15 = v32;
    v16 = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Boop2ShareSheet: Nearby sharing interactions changed: %s", v27, 0xCu);
    sub_10000C60C(v28);
  }

  v36 = v77;
  if (*(a1 + 16))
  {
    v37 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
    v38 = *(v37 - 8);
    v39 = v73;
    (*(v38 + 16))(v73, a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v37);
    (*(v38 + 56))(v39, 0, 1, v37);
    v40 = OBJC_IVAR___SDShareSheetAirDropController_currentNearbySharingInteraction;
    v41 = v76;
    swift_beginAccess();
    sub_10000C788(v39, v41 + v40, &unk_100975F60, &unk_1007F91B0);
    swift_endAccess();
    v42 = v74;
    SFAirDrop.NearbySharingInteraction.state.getter();
    if ((*(v16 + 88))(v42, v15) != enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:))
    {
      (*(v16 + 8))(v42, v15);
      return;
    }

    (*(v16 + 96))(v42, v15);
    v43 = v71;
    v44 = v42;
    v45 = v72;
    (*(v71 + 32))(v36, v44, v72);
    SFAirDrop.NearbySharingInteraction.ConnectionContext.endpointIdentifier.getter();
    if ((*(v75 + 48))(v12, 1, v13) == 1)
    {
      (*(v43 + 8))(v36, v45);
      sub_100005508(v12, &unk_100976120, &qword_1007F9260);
      return;
    }

    (*(v75 + 32))(v70, v12, v13);
    SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
    (*(v67 + 104))(v66, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:), v69);
    sub_1005E6290(&qword_100976260, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v80[0] == v78 && v80[1] == v79)
    {
      v46 = *(v67 + 8);
      v47 = v69;
      v46(v66, v69);
      v46(v68, v47);
    }

    else
    {
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v49 = *(v67 + 8);
      v50 = v69;
      v49(v66, v69);
      v49(v68, v50);

      if ((v48 & 1) == 0)
      {
        (*(v75 + 8))(v70, v13);
        (*(v71 + 8))(v36, v72);
        return;
      }
    }

    v51 = v64;
    dispatch thunk of SFLockStateMonitor.lockState.getter();
    v52 = v62;
    v53 = v63;
    v54 = v65;
    (*(v63 + 104))(v65, enum case for DeviceLockState.unlocked(_:), v62);
    v55 = static DeviceLockState.== infix(_:_:)();
    v56 = *(v53 + 8);
    v56(v54, v52);
    v56(v51, v52);
    if (v55)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v58 = Strong;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        [v58 didConnectNearbySharingInteractionWithEndpointUUID:isa];
        swift_unknownObjectRelease();
      }
    }

    (*(v75 + 8))(v70, v13);
    (*(v71 + 8))(v77, v72);
  }
}

void sub_1005E4B7C(uint64_t a1)
{
  sub_1005E6014(319, &qword_10097F178, &type metadata accessor for SFAirDrop.TransferIdentifier);
  if (v1 <= 0x3F)
  {
    sub_1005E6014(319, &qword_100986120, &type metadata accessor for SFAirDrop.NearbySharingInteraction);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005E4CE0(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for DeviceLockState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for DeviceLockState.unlocked(_:), v5);
  v9 = static DeviceLockState.== infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v1;
    v12 = v1;
    sub_1002B281C(0, 0, v4, &unk_10080D348, v11);

    sub_1005E3058();
  }

  else
  {
    sub_1005DE220();
  }
}

id sub_1005E5378(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1005E53F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

id sub_1005E5590(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t sub_1005E5B7C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v15 = v13;
  v16 = v14;
  v6._object = 0x8000000100798870;
  v6._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v6);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_endpointUUID;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  sub_1005E6290(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  (*(v3 + 8))(v5, v2);
  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayName);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return v15;
}

void sub_1005E5EE0(uint64_t a1)
{
  sub_1005E6014(319, &qword_100975F70, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005E6014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005E6068(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005E2BF0(a1, v4, v5, v6);
}

uint64_t sub_1005E611C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1005E348C(a1, v4, v5, v7, v6);
}

uint64_t sub_1005E61DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005E3200(a1, v4, v5, v6);
}

uint64_t sub_1005E6290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005E62D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1005E1518(a1, v4, v5, v6);
}

uint64_t sub_1005E638C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v14 = v1[2];
  v8 = v1[4];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100005C00;

  return sub_1005DE3C0(a1, v14, v7, v8, v1 + v4, v9, v10, v11);
}

uint64_t sub_1005E64F8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1005E2210(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1005E6618(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1005DE01C(a1, v4, v5, v6);
}

uint64_t sub_1005E66CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1005DC774(a1, v4, v5, v6, v7, v8);
}